@interface IDSProvisionTemporaryPhoneMessage
- (IDSProvisionTemporaryPhoneMessage)init;
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)a3;
- (id)messageBody;
- (id)requiredKeys;
- (void)addPhoneAuthenticationCertificate:(id)a3 withUserID:(id)a4;
- (void)handleResponseDictionary:(id)a3;
@end

@implementation IDSProvisionTemporaryPhoneMessage

- (IDSProvisionTemporaryPhoneMessage)init
{
  v6.receiver = self;
  v6.super_class = IDSProvisionTemporaryPhoneMessage;
  v2 = [(IDSProvisionTemporaryPhoneMessage *)&v6 init];
  if (v2)
  {
    IMGetConferenceSettings();
    v3 = 0;
    v4 = [v3 lastObject];
    [(IDSProvisionTemporaryPhoneMessage *)v2 setTopic:v4];

    [(IDSProvisionTemporaryPhoneMessage *)v2 setWantsResponse:1];
  }

  return v2;
}

- (void)addPhoneAuthenticationCertificate:(id)a3 withUserID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[IDSRegistrationKeyManager sharedInstance];
  -[IDSProvisionTemporaryPhoneMessage addAuthUserID:certificate:privateKey:publicKey:](self, "addAuthUserID:certificate:privateKey:publicKey:", v6, v7, [v8 identityPrivateKey], objc_msgSend(v8, "identityPublicKey"));
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = IDSProvisionTemporaryPhoneMessage;
  v4 = [(IDSProvisionTemporaryPhoneMessage *)&v13 copyWithZone:a3];
  v5 = [(IDSProvisionTemporaryPhoneMessage *)self profileID];
  [v4 setProfileID:v5];

  v6 = [(IDSProvisionTemporaryPhoneMessage *)self authToken];
  [v4 setAuthToken:v6];

  v7 = [(IDSProvisionTemporaryPhoneMessage *)self countryCode];
  [v4 setCountryCode:v7];

  v8 = [(IDSProvisionTemporaryPhoneMessage *)self networkCode];
  [v4 setNetworkCode:v8];

  v9 = [(IDSProvisionTemporaryPhoneMessage *)self responseStatus];
  [v4 setResponseStatus:v9];

  v10 = [(IDSProvisionTemporaryPhoneMessage *)self responseCertificate];
  [v4 setResponseCertificate:v10];

  v11 = [(IDSProvisionTemporaryPhoneMessage *)self responseCertificateExpiration];
  [v4 setResponseCertificateExpiration:v11];

  return v4;
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);
  [v2 addObject:@"vc-profile-id"];
  [v2 addObject:@"vc-auth-token"];

  return v2;
}

- (id)messageBody
{
  v10.receiver = self;
  v10.super_class = IDSProvisionTemporaryPhoneMessage;
  v3 = [(IDSProvisionTemporaryPhoneMessage *)&v10 messageBody];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSProvisionTemporaryPhoneMessage *)self profileID];
  if (v5)
  {
    CFDictionarySetValue(Mutable, @"vc-profile-id", v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091F698();
  }

  v6 = [(IDSProvisionTemporaryPhoneMessage *)self authToken];
  if (v6)
  {
    CFDictionarySetValue(Mutable, @"vc-auth-token", v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091F720();
  }

  v7 = [(IDSProvisionTemporaryPhoneMessage *)self countryCode];
  if (v7)
  {
    CFDictionarySetValue(Mutable, @"sim-mcc", v7);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091F7A8();
  }

  v8 = [(IDSProvisionTemporaryPhoneMessage *)self networkCode];
  if (v8)
  {
    CFDictionarySetValue(Mutable, @"sim-mnc", v8);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091F830();
  }

  return Mutable;
}

- (id)additionalMessageHeaders
{
  v10.receiver = self;
  v10.super_class = IDSProvisionTemporaryPhoneMessage;
  v3 = [(IDSProvisionTemporaryPhoneMessage *)&v10 additionalMessageHeaders];
  Mutable = [v3 mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v5 = [(IDSProvisionTemporaryPhoneMessage *)self pushCertificate];
  v6 = [v5 _FTStringFromBaseData];

  if (v6)
  {
    CFDictionarySetValue(Mutable, @"x-push-cert", v6);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009150CC();
  }

  v7 = [(IDSProvisionTemporaryPhoneMessage *)self pushToken];
  v8 = [v7 _FTStringFromBaseData];

  if (v8)
  {
    CFDictionarySetValue(Mutable, @"x-push-token", v8);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091F8B8();
  }

  return Mutable;
}

- (void)handleResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDS Provision Temporary Phone response: %@", &v18, 0xCu);
  }

  v6 = [v4 _numberForKey:@"status"];
  [(IDSProvisionTemporaryPhoneMessage *)self setResponseStatus:v6];

  v7 = [(IDSProvisionTemporaryPhoneMessage *)self responseStatus];
  if (v7)
  {
    v8 = v7;
    v9 = [(IDSProvisionTemporaryPhoneMessage *)self responseStatus];
    v10 = [v9 integerValue];

    if (!v10)
    {
      v11 = [v4 objectForKeyedSubscript:@"temporary-credential"];
      [(IDSProvisionTemporaryPhoneMessage *)self setResponseCertificate:v11];

      v12 = [v4 _stringForKey:@"expiry"];
      v13 = objc_alloc_init(NSNumberFormatter);
      v14 = [v13 numberFromString:v12];
      if (v14)
      {
        v15 = +[IMUserDefaults homeNumberSecondsUntilExpiration];
        if (CUTIsInternalInstall() && v15)
        {
          v16 = [NSDate dateWithTimeIntervalSinceNow:v15];
        }

        else
        {
          v16 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", ([v14 unsignedLongLongValue] / 0x3E8));
        }

        v17 = v16;
        [(IDSProvisionTemporaryPhoneMessage *)self setResponseCertificateExpiration:v16];
      }

      else
      {
        if (!v12)
        {
LABEL_15:

          goto LABEL_16;
        }

        v17 = +[IMRGLog registration];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          sub_10091F940(v12, v17);
        }
      }

      goto LABEL_15;
    }
  }

LABEL_16:
}

@end