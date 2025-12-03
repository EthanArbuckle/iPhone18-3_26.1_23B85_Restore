@interface IDSAuthenticateUsersMessage
- (IDSAuthenticateUsersMessage)init;
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)_addRequestWithID:(id)d cert:(id)cert sig:(id)sig csr:(id)csr tag:(id)tag;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation IDSAuthenticateUsersMessage

- (IDSAuthenticateUsersMessage)init
{
  v6.receiver = self;
  v6.super_class = IDSAuthenticateUsersMessage;
  v2 = [(IDSAuthenticateUsersMessage *)&v6 init];
  if (v2)
  {
    IMGetConferenceSettings();
    v3 = 0;
    lastObject = [v3 lastObject];
    [(IDSAuthenticateUsersMessage *)v2 setTopic:lastObject];

    [(IDSAuthenticateUsersMessage *)v2 setWantsResponse:1];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = IDSAuthenticateUsersMessage;
  v4 = [(IDSAuthenticateUsersMessage *)&v11 copyWithZone:zone];
  realm = [(IDSAuthenticateUsersMessage *)self realm];
  [v4 setRealm:realm];

  requests = [(IDSAuthenticateUsersMessage *)self requests];
  v7 = [requests copy];
  [v4 setRequests:v7];

  authenticationResponses = [(IDSAuthenticateUsersMessage *)self authenticationResponses];
  v9 = [authenticationResponses copy];
  [v4 setAuthenticationResponses:v9];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:@"authentication-requests"];
  [v2 addObject:@"push-token"];

  return v2;
}

- (id)messageBody
{
  v8.receiver = self;
  v8.super_class = IDSAuthenticateUsersMessage;
  messageBody = [(IDSAuthenticateUsersMessage *)&v8 messageBody];
  Mutable = [messageBody mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  requests = [(IDSAuthenticateUsersMessage *)self requests];
  if (requests)
  {
    CFDictionarySetValue(Mutable, @"authentication-requests", requests);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100927EE4();
  }

  pushToken = [(IDSAuthenticateUsersMessage *)self pushToken];
  if (pushToken)
  {
    CFDictionarySetValue(Mutable, @"push-token", pushToken);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100927F6C();
  }

  return Mutable;
}

- (id)additionalMessageHeaders
{
  v10.receiver = self;
  v10.super_class = IDSAuthenticateUsersMessage;
  additionalMessageHeaders = [(IDSAuthenticateUsersMessage *)&v10 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = _IDSIDProtocolVersionNumber();
  stringValue = [v5 stringValue];

  if (stringValue)
  {
    CFDictionarySetValue(Mutable, @"x-protocol-version", stringValue);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100927FF4();
  }

  pushToken = [(IDSAuthenticateUsersMessage *)self pushToken];
  _FTStringFromBaseData = [pushToken _FTStringFromBaseData];

  if (_FTStringFromBaseData)
  {
    CFDictionarySetValue(Mutable, @"x-push-token", _FTStringFromBaseData);
  }

  return Mutable;
}

- (void)_addRequestWithID:(id)d cert:(id)cert sig:(id)sig csr:(id)csr tag:(id)tag
{
  dCopy = d;
  certCopy = cert;
  sigCopy = sig;
  csrCopy = csr;
  tagCopy = tag;
  if (!self->_requests)
  {
    v17 = objc_alloc_init(NSMutableArray);
    requests = self->_requests;
    self->_requests = v17;
  }

  v19 = objc_alloc_init(NSMutableDictionary);
  v20 = dCopy;
  if (v20)
  {
    CFDictionarySetValue(v19, @"user-id", v20);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092807C();
  }

  v21 = csrCopy;
  if (v21)
  {
    CFDictionarySetValue(v19, @"csr", v21);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100928104();
  }

  if (sigCopy)
  {
    CFDictionarySetValue(v19, @"sig", sigCopy);
  }

  if (certCopy)
  {
    CFDictionarySetValue(v19, @"auth-cert", certCopy);
  }

  if (tagCopy)
  {
    CFDictionarySetValue(v19, @"tag", tagCopy);
  }

  [(NSMutableArray *)self->_requests addObject:v19];
}

- (void)handleResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v15 = dictionaryCopy;
  obj = [dictionaryCopy _arrayForKey:@"authentication-responses"];
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = objc_alloc_init(IDSAuthenticateUsersResponse);
        v11 = [v9 _dataForKey:@"cert"];
        [(IDSAuthenticateUsersResponse *)v10 setCert:v11];

        v12 = [v9 _numberForKey:@"status"];
        -[IDSAuthenticateUsersResponse setResponseCode:](v10, "setResponseCode:", [v12 integerValue]);

        v13 = [v9 _stringForKey:@"user-id"];
        [(IDSAuthenticateUsersResponse *)v10 setUserID:v13];

        [v4 addObject:v10];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  [(IDSAuthenticateUsersMessage *)self setAuthenticationResponses:v4];
}

@end