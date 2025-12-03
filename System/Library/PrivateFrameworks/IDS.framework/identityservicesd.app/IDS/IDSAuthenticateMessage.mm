@interface IDSAuthenticateMessage
- (BOOL)allowsServerProvidedLenientAnisetteTimeout;
- (IDSAuthenticateMessage)init;
- (id)additionalMessageHeaders;
- (id)bagKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
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
    lastObject = [v3 lastObject];
    [(IDSAuthenticateMessage *)v2 setTopic:lastObject];

    [(IDSAuthenticateMessage *)v2 setWantsResponse:1];
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = IDSAuthenticateMessage;
  v4 = [(IDSAuthenticateMessage *)&v12 copyWithZone:zone];
  realm = [(IDSAuthenticateMessage *)self realm];
  [v4 setRealm:realm];

  v6 = [(IDSAuthenticateMessage *)self csr];
  [v4 setCsr:v6];

  userID = [(IDSAuthenticateMessage *)self userID];
  [v4 setUserID:userID];

  authenticationInfo = [(IDSAuthenticateMessage *)self authenticationInfo];
  [v4 setAuthenticationInfo:authenticationInfo];

  responseUserID = [(IDSAuthenticateMessage *)self responseUserID];
  [v4 setResponseUserID:responseUserID];

  responseCertificate = [(IDSAuthenticateMessage *)self responseCertificate];
  [v4 setResponseCertificate:responseCertificate];

  return v4;
}

- (id)bagKey
{
  realm = [(IDSAuthenticateMessage *)self realm];
  v3 = [NSString stringWithFormat:@"id-authenticate-%@", realm];

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
  messageBody = [(IDSAuthenticateMessage *)&v9 messageBody];
  Mutable = [messageBody mutableCopy];

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

  userID = [(IDSAuthenticateMessage *)self userID];
  if (userID)
  {
    CFDictionarySetValue(Mutable, @"realm-user-id", userID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100917C38();
  }

  authenticationInfo = [(IDSAuthenticateMessage *)self authenticationInfo];
  if (authenticationInfo)
  {
    CFDictionarySetValue(Mutable, @"authentication-data", authenticationInfo);
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
  additionalMessageHeaders = [(IDSAuthenticateMessage *)&v11 additionalMessageHeaders];
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
    sub_100917D48();
  }

  dsAuthID = [(IDSAuthenticateMessage *)self dsAuthID];
  if (dsAuthID)
  {
    CFDictionarySetValue(Mutable, @"x-ds-client-id", dsAuthID);
  }

  pushToken = [(IDSAuthenticateMessage *)self pushToken];
  _FTStringFromBaseData = [pushToken _FTStringFromBaseData];

  if (_FTStringFromBaseData)
  {
    CFDictionarySetValue(Mutable, @"x-push-token", _FTStringFromBaseData);
  }

  return Mutable;
}

- (BOOL)allowsServerProvidedLenientAnisetteTimeout
{
  realm = [(IDSAuthenticateMessage *)self realm];
  v3 = [realm isEqualToString:@"phone-number"];

  return v3;
}

- (void)handleResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:@"cert"];
  [(IDSAuthenticateMessage *)self setResponseCertificate:v5];

  v6 = [dictionaryCopy objectForKey:@"user-id"];
  [(IDSAuthenticateMessage *)self setResponseUserID:v6];

  v7 = [dictionaryCopy objectForKey:@"alert"];

  [(IDSAuthenticateMessage *)self setResponseAlertInfo:v7];
}

@end