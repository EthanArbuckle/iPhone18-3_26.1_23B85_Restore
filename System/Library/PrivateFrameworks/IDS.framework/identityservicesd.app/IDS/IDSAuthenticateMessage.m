@interface IDSAuthenticateMessage
- (BOOL)allowsServerProvidedLenientAnisetteTimeout;
- (IDSAuthenticateMessage)init;
- (id)additionalMessageHeaders;
- (id)bagKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation IDSAuthenticateMessage

- (IDSAuthenticateMessage)init
{
  v6.receiver = self;
  v6.super_class = IDSAuthenticateMessage;
  v2 = [(IDSAuthenticateMessage *)&v6 init];
  if (v2)
  {
    IMGetConferenceSettings();
    v3 = 0;
    v4 = [v3 lastObject];
    [(IDSAuthenticateMessage *)v2 setTopic:v4];

    [(IDSAuthenticateMessage *)v2 setWantsResponse:1];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = IDSAuthenticateMessage;
  v4 = [(IDSAuthenticateMessage *)&v12 copyWithZone:a3];
  v5 = [(IDSAuthenticateMessage *)self realm];
  [v4 setRealm:v5];

  v6 = [(IDSAuthenticateMessage *)self csr];
  [v4 setCsr:v6];

  v7 = [(IDSAuthenticateMessage *)self userID];
  [v4 setUserID:v7];

  v8 = [(IDSAuthenticateMessage *)self authenticationInfo];
  [v4 setAuthenticationInfo:v8];

  v9 = [(IDSAuthenticateMessage *)self responseUserID];
  [v4 setResponseUserID:v9];

  v10 = [(IDSAuthenticateMessage *)self responseCertificate];
  [v4 setResponseCertificate:v10];

  return v4;
}

- (id)bagKey
{
  v2 = [(IDSAuthenticateMessage *)self realm];
  v3 = [NSString stringWithFormat:@"id-authenticate-%@", v2];

  return v3;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:@"csr"];
  [v2 addObject:@"realm-user-id"];
  [v2 addObject:@"authentication-data"];

  return v2;
}

- (id)messageBody
{
  v9.receiver = self;
  v9.super_class = IDSAuthenticateMessage;
  v3 = [(IDSAuthenticateMessage *)&v9 messageBody];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSAuthenticateMessage *)self csr];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"csr", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917BB0();
  }

  v6 = [(IDSAuthenticateMessage *)self userID];
  if (v6)
  {
    CFDictionarySetValue(Mutable, @"realm-user-id", v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917C38();
  }

  v7 = [(IDSAuthenticateMessage *)self authenticationInfo];
  if (v7)
  {
    CFDictionarySetValue(Mutable, @"authentication-data", v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917CC0();
  }

  return Mutable;
}

- (id)additionalMessageHeaders
{
  v11.receiver = self;
  v11.super_class = IDSAuthenticateMessage;
  v3 = [(IDSAuthenticateMessage *)&v11 additionalMessageHeaders];
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
    sub_100917D48();
  }

  v7 = [(IDSAuthenticateMessage *)self dsAuthID];
  if (v7)
  {
    CFDictionarySetValue(Mutable, @"x-ds-client-id", v7);
  }

  v8 = [(IDSAuthenticateMessage *)self pushToken];
  v9 = [v8 _FTStringFromBaseData];

  if (v9)
  {
    CFDictionarySetValue(Mutable, @"x-push-token", v9);
  }

  return Mutable;
}

- (BOOL)allowsServerProvidedLenientAnisetteTimeout
{
  v2 = [(IDSAuthenticateMessage *)self realm];
  v3 = [v2 isEqualToString:@"phone-number"];

  return v3;
}

- (void)handleResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:@"cert"];
  [(IDSAuthenticateMessage *)self setResponseCertificate:v5];

  v6 = [v4 objectForKey:@"user-id"];
  [(IDSAuthenticateMessage *)self setResponseUserID:v6];

  v7 = [v4 objectForKey:@"alert"];

  [(IDSAuthenticateMessage *)self setResponseAlertInfo:v7];
}

@end