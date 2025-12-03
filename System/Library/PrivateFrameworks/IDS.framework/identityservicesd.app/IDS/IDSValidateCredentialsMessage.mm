@interface IDSValidateCredentialsMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)dictionary;
@end

@implementation IDSValidateCredentialsMessage

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = IDSValidateCredentialsMessage;
  v4 = [(IDSValidateCredentialsMessage *)&v13 copyWithZone:zone];
  authenticationDataSig = [(IDSValidateCredentialsMessage *)self authenticationDataSig];
  [v4 setAuthenticationDataSig:authenticationDataSig];

  authenticationDataAuthToken = [(IDSValidateCredentialsMessage *)self authenticationDataAuthToken];
  [v4 setAuthenticationDataAuthToken:authenticationDataAuthToken];

  authenticationDataUserID = [(IDSValidateCredentialsMessage *)self authenticationDataUserID];
  [v4 setAuthenticationDataUserID:authenticationDataUserID];

  responseMessage = [(IDSValidateCredentialsMessage *)self responseMessage];
  [v4 setResponseMessage:responseMessage];

  responseUserID = [(IDSValidateCredentialsMessage *)self responseUserID];
  [v4 setResponseUserID:responseUserID];

  responseStatus = [(IDSValidateCredentialsMessage *)self responseStatus];
  [v4 setResponseStatus:responseStatus];

  responseOrigin = [(IDSValidateCredentialsMessage *)self responseOrigin];
  [v4 setResponseOrigin:responseOrigin];

  return v4;
}

- (id)additionalMessageHeaders
{
  v8.receiver = self;
  v8.super_class = IDSValidateCredentialsMessage;
  additionalMessageHeaders = [(IDSValidateCredentialsMessage *)&v8 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  pushCertificate = [(IDSValidateCredentialsMessage *)self pushCertificate];
  _FTStringFromBaseData = [pushCertificate _FTStringFromBaseData];

  if (_FTStringFromBaseData)
  {
    CFDictionarySetValue(Mutable, @"x-push-cert", _FTStringFromBaseData);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091D244();
  }

  return Mutable;
}

- (id)messageBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  authenticationDataUserID = [(IDSValidateCredentialsMessage *)self authenticationDataUserID];
  if (authenticationDataUserID)
  {
    CFDictionarySetValue(v3, @"user-id", authenticationDataUserID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091D2E0();
  }

  authenticationDataSig = [(IDSValidateCredentialsMessage *)self authenticationDataSig];
  if (authenticationDataSig)
  {
    CFDictionarySetValue(v3, @"sig", authenticationDataSig);
  }

  authenticationDataAuthToken = [(IDSValidateCredentialsMessage *)self authenticationDataAuthToken];
  if (authenticationDataAuthToken)
  {
    CFDictionarySetValue(v3, @"auth-token", authenticationDataAuthToken);
  }

  v7 = [[NSDictionary alloc] initWithObjectsAndKeys:{v3, @"authentication-data", 0}];

  return v7;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);

  return v2;
}

- (void)handleResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy _stringForKey:@"message"];
  [(IDSValidateCredentialsMessage *)self setResponseMessage:v5];

  v6 = [dictionaryCopy _stringForKey:@"user-id"];
  [(IDSValidateCredentialsMessage *)self setResponseUserID:v6];

  v7 = [dictionaryCopy _numberForKey:@"status"];
  [(IDSValidateCredentialsMessage *)self setResponseStatus:v7];

  v8 = [dictionaryCopy _numberForKey:@"origin"];

  [(IDSValidateCredentialsMessage *)self setResponseOrigin:v8];
}

@end