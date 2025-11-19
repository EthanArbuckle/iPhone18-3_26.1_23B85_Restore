@interface IDSServer
- (IDSServer)initWithQueue:(id)a3;
- (IDSServer)initWithQueue:(id)a3 messageDelivery:(id)a4;
- (id)_DSAuthIDForPushToken:(id)a3;
- (id)_authenticateMessageForRequest:(id)a3;
- (id)_stringRepresentationForRealm:(int64_t)a3;
- (id)authenticatePhoneUserWithRequest:(id)a3;
@end

@implementation IDSServer

- (IDSServer)initWithQueue:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(+[FTMessageDelivery HTTPMessageDeliveryClass]);
  [v5 setUserAgent:@"com.apple.invitation-registration"];
  [v5 setRetryInAirplaneMode:1];
  [v5 setLogToRegistration:1];
  v6 = +[IDSRegistrationRequestTracker sharedInstance];
  [v5 addRequestObserver:v6];

  v7 = [(IDSServer *)self initWithQueue:v4 messageDelivery:v5];
  return v7;
}

- (IDSServer)initWithQueue:(id)a3 messageDelivery:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSServer;
  v9 = [(IDSServer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    objc_storeStrong(&v10->_messageDelivery, a4);
  }

  return v10;
}

- (id)authenticatePhoneUserWithRequest:(id)a3
{
  v4 = [(IDSServer *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [CUTPromiseSeal alloc];
  v6 = [(IDSServer *)self queue];
  v7 = [v5 initWithQueue:v6];

  v8 = [v7 promise];

  return v8;
}

- (id)_stringRepresentationForRealm:(int64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return off_100BE6058[a3];
  }
}

- (id)_DSAuthIDForPushToken:(id)a3
{
  v3 = a3;
  v4 = sub_10001F670();
  if (![v4 length])
  {
    v5 = [v3 SHA1HexString];
    v6 = [v5 uppercaseString];
    v7 = [NSString stringWithFormat:@"t:%@", v6];

    v4 = v7;
  }

  return v4;
}

- (id)_authenticateMessageForRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(IDSAuthenticateMessage);
  v6 = [v4 user];
  v7 = [v6 realmPrefixedIdentifier];
  [(IDSAuthenticateMessage *)v5 setUserID:v7];

  v8 = [v4 user];
  v9 = -[IDSServer _stringRepresentationForRealm:](self, "_stringRepresentationForRealm:", [v8 realm]);
  [(IDSAuthenticateMessage *)v5 setRealm:v9];

  v10 = [v4 certificateSigningRequest];
  [(IDSAuthenticateMessage *)v5 setCsr:v10];

  v19[0] = @"push-token";
  v11 = [v4 pushToken];
  v19[1] = @"sigs";
  v20[0] = v11;
  v12 = [v4 phoneSignature];
  v18 = v12;
  v13 = [NSArray arrayWithObjects:&v18 count:1];
  v20[1] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  [(IDSAuthenticateMessage *)v5 setAuthenticationInfo:v14];

  v15 = [v4 pushToken];

  v16 = [(IDSServer *)self _DSAuthIDForPushToken:v15];
  [(IDSAuthenticateMessage *)v5 setDSAuthID:v16];

  return v5;
}

@end