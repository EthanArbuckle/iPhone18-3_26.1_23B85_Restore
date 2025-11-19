@interface IDSAuthenticateUsersMessage
- (IDSAuthenticateUsersMessage)init;
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)_addRequestWithID:(id)a3 cert:(id)a4 sig:(id)a5 csr:(id)a6 tag:(id)a7;
- (void)handleResponseDictionary:(id)a3;
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
    v4 = [v3 lastObject];
    [(IDSAuthenticateUsersMessage *)v2 setTopic:v4];

    [(IDSAuthenticateUsersMessage *)v2 setWantsResponse:1];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = IDSAuthenticateUsersMessage;
  v4 = [(IDSAuthenticateUsersMessage *)&v11 copyWithZone:a3];
  v5 = [(IDSAuthenticateUsersMessage *)self realm];
  [v4 setRealm:v5];

  v6 = [(IDSAuthenticateUsersMessage *)self requests];
  v7 = [v6 copy];
  [v4 setRequests:v7];

  v8 = [(IDSAuthenticateUsersMessage *)self authenticationResponses];
  v9 = [v8 copy];
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
  v3 = [(IDSAuthenticateUsersMessage *)&v8 messageBody];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSAuthenticateUsersMessage *)self requests];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"authentication-requests", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100927EE4();
  }

  v6 = [(IDSAuthenticateUsersMessage *)self pushToken];
  if (v6)
  {
    CFDictionarySetValue(Mutable, @"push-token", v6);
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
  v3 = [(IDSAuthenticateUsersMessage *)&v10 additionalMessageHeaders];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = _IDSIDProtocolVersionNumber();
  v6 = [v5 stringValue];

  if (v6)
  {
    CFDictionarySetValue(Mutable, @"x-protocol-version", v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100927FF4();
  }

  v7 = [(IDSAuthenticateUsersMessage *)self pushToken];
  v8 = [v7 _FTStringFromBaseData];

  if (v8)
  {
    CFDictionarySetValue(Mutable, @"x-push-token", v8);
  }

  return Mutable;
}

- (void)_addRequestWithID:(id)a3 cert:(id)a4 sig:(id)a5 csr:(id)a6 tag:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!self->_requests)
  {
    v17 = objc_alloc_init(NSMutableArray);
    requests = self->_requests;
    self->_requests = v17;
  }

  v19 = objc_alloc_init(NSMutableDictionary);
  v20 = v12;
  if (v20)
  {
    CFDictionarySetValue(v19, @"user-id", v20);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092807C();
  }

  v21 = v15;
  if (v21)
  {
    CFDictionarySetValue(v19, @"csr", v21);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100928104();
  }

  if (v14)
  {
    CFDictionarySetValue(v19, @"sig", v14);
  }

  if (v13)
  {
    CFDictionarySetValue(v19, @"auth-cert", v13);
  }

  if (v16)
  {
    CFDictionarySetValue(v19, @"tag", v16);
  }

  [(NSMutableArray *)self->_requests addObject:v19];
}

- (void)handleResponseDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v15 = v3;
  obj = [v3 _arrayForKey:@"authentication-responses"];
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