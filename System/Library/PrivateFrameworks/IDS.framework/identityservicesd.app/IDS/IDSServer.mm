@interface IDSServer
- (IDSServer)initWithQueue:(id)queue;
- (IDSServer)initWithQueue:(id)queue messageDelivery:(id)delivery;
- (id)_DSAuthIDForPushToken:(id)token;
- (id)_authenticateMessageForRequest:(id)request;
- (id)_stringRepresentationForRealm:(int64_t)realm;
- (id)authenticatePhoneUserWithRequest:(id)request;
@end

@implementation IDSServer

- (IDSServer)initWithQueue:(id)queue
{
  queueCopy = queue;
  v5 = objc_alloc_init(+[FTMessageDelivery HTTPMessageDeliveryClass]);
  [v5 setUserAgent:@"com.apple.invitation-registration"];
  [v5 setRetryInAirplaneMode:1];
  [v5 setLogToRegistration:1];
  v6 = +[IDSRegistrationRequestTracker sharedInstance];
  [v5 addRequestObserver:v6];

  v7 = [(IDSServer *)self initWithQueue:queueCopy messageDelivery:v5];
  return v7;
}

- (IDSServer)initWithQueue:(id)queue messageDelivery:(id)delivery
{
  queueCopy = queue;
  deliveryCopy = delivery;
  v12.receiver = self;
  v12.super_class = IDSServer;
  v9 = [(IDSServer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    objc_storeStrong(&v10->_messageDelivery, delivery);
  }

  return v10;
}

- (id)authenticatePhoneUserWithRequest:(id)request
{
  queue = [(IDSServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = [CUTPromiseSeal alloc];
  queue2 = [(IDSServer *)self queue];
  v7 = [v5 initWithQueue:queue2];

  promise = [v7 promise];

  return promise;
}

- (id)_stringRepresentationForRealm:(int64_t)realm
{
  if (realm > 2)
  {
    return 0;
  }

  else
  {
    return off_100BE6058[realm];
  }
}

- (id)_DSAuthIDForPushToken:(id)token
{
  tokenCopy = token;
  v4 = sub_10001F670();
  if (![v4 length])
  {
    sHA1HexString = [tokenCopy SHA1HexString];
    uppercaseString = [sHA1HexString uppercaseString];
    v7 = [NSString stringWithFormat:@"t:%@", uppercaseString];

    v4 = v7;
  }

  return v4;
}

- (id)_authenticateMessageForRequest:(id)request
{
  requestCopy = request;
  v5 = objc_alloc_init(IDSAuthenticateMessage);
  user = [requestCopy user];
  realmPrefixedIdentifier = [user realmPrefixedIdentifier];
  [(IDSAuthenticateMessage *)v5 setUserID:realmPrefixedIdentifier];

  user2 = [requestCopy user];
  v9 = -[IDSServer _stringRepresentationForRealm:](self, "_stringRepresentationForRealm:", [user2 realm]);
  [(IDSAuthenticateMessage *)v5 setRealm:v9];

  certificateSigningRequest = [requestCopy certificateSigningRequest];
  [(IDSAuthenticateMessage *)v5 setCsr:certificateSigningRequest];

  v19[0] = @"push-token";
  pushToken = [requestCopy pushToken];
  v19[1] = @"sigs";
  v20[0] = pushToken;
  phoneSignature = [requestCopy phoneSignature];
  v18 = phoneSignature;
  v13 = [NSArray arrayWithObjects:&v18 count:1];
  v20[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  [(IDSAuthenticateMessage *)v5 setAuthenticationInfo:v14];

  pushToken2 = [requestCopy pushToken];

  v16 = [(IDSServer *)self _DSAuthIDForPushToken:pushToken2];
  [(IDSAuthenticateMessage *)v5 setDSAuthID:v16];

  return v5;
}

@end