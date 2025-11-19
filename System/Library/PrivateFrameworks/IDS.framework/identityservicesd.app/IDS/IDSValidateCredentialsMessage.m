@interface IDSValidateCredentialsMessage
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation IDSValidateCredentialsMessage

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = IDSValidateCredentialsMessage;
  v4 = [(IDSValidateCredentialsMessage *)&v13 copyWithZone:a3];
  v5 = [(IDSValidateCredentialsMessage *)self authenticationDataSig];
  [v4 setAuthenticationDataSig:v5];

  v6 = [(IDSValidateCredentialsMessage *)self authenticationDataAuthToken];
  [v4 setAuthenticationDataAuthToken:v6];

  v7 = [(IDSValidateCredentialsMessage *)self authenticationDataUserID];
  [v4 setAuthenticationDataUserID:v7];

  v8 = [(IDSValidateCredentialsMessage *)self responseMessage];
  [v4 setResponseMessage:v8];

  v9 = [(IDSValidateCredentialsMessage *)self responseUserID];
  [v4 setResponseUserID:v9];

  v10 = [(IDSValidateCredentialsMessage *)self responseStatus];
  [v4 setResponseStatus:v10];

  v11 = [(IDSValidateCredentialsMessage *)self responseOrigin];
  [v4 setResponseOrigin:v11];

  return v4;
}

- (id)additionalMessageHeaders
{
  v8.receiver = self;
  v8.super_class = IDSValidateCredentialsMessage;
  v3 = [(IDSValidateCredentialsMessage *)&v8 additionalMessageHeaders];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSValidateCredentialsMessage *)self pushCertificate];
  v6 = [v5 _FTStringFromBaseData];

  if (v6)
  {
    CFDictionarySetValue(Mutable, @"x-push-cert", v6);
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
  v4 = [(IDSValidateCredentialsMessage *)self authenticationDataUserID];
  if (v4)
  {
    CFDictionarySetValue(v3, @"user-id", v4);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091D2E0();
  }

  v5 = [(IDSValidateCredentialsMessage *)self authenticationDataSig];
  if (v5)
  {
    CFDictionarySetValue(v3, @"sig", v5);
  }

  v6 = [(IDSValidateCredentialsMessage *)self authenticationDataAuthToken];
  if (v6)
  {
    CFDictionarySetValue(v3, @"auth-token", v6);
  }

  v7 = [[NSDictionary alloc] initWithObjectsAndKeys:{v3, @"authentication-data", 0}];

  return v7;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);

  return v2;
}

- (void)handleResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 _stringForKey:@"message"];
  [(IDSValidateCredentialsMessage *)self setResponseMessage:v5];

  v6 = [v4 _stringForKey:@"user-id"];
  [(IDSValidateCredentialsMessage *)self setResponseUserID:v6];

  v7 = [v4 _numberForKey:@"status"];
  [(IDSValidateCredentialsMessage *)self setResponseStatus:v7];

  v8 = [v4 _numberForKey:@"origin"];

  [(IDSValidateCredentialsMessage *)self setResponseOrigin:v8];
}

@end