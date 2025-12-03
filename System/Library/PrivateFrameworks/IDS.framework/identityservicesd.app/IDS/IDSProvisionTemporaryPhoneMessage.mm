@interface IDSProvisionTemporaryPhoneMessage
- (IDSProvisionTemporaryPhoneMessage)init;
- (id)additionalMessageHeaders;
- (id)copyWithZone:(_NSZone *)zone;
- (id)messageBody;
- (id)requiredKeys;
- (void)addPhoneAuthenticationCertificate:(id)certificate withUserID:(id)d;
- (void)handleResponseDictionary:(id)dictionary;
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
    lastObject = [v3 lastObject];
    [(IDSProvisionTemporaryPhoneMessage *)v2 setTopic:lastObject];

    [(IDSProvisionTemporaryPhoneMessage *)v2 setWantsResponse:1];
  }

  return v2;
}

- (void)addPhoneAuthenticationCertificate:(id)certificate withUserID:(id)d
{
  dCopy = d;
  certificateCopy = certificate;
  v8 = +[IDSRegistrationKeyManager sharedInstance];
  -[IDSProvisionTemporaryPhoneMessage addAuthUserID:certificate:privateKey:publicKey:](self, "addAuthUserID:certificate:privateKey:publicKey:", dCopy, certificateCopy, [v8 identityPrivateKey], objc_msgSend(v8, "identityPublicKey"));
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = IDSProvisionTemporaryPhoneMessage;
  v4 = [(IDSProvisionTemporaryPhoneMessage *)&v13 copyWithZone:zone];
  profileID = [(IDSProvisionTemporaryPhoneMessage *)self profileID];
  [v4 setProfileID:profileID];

  authToken = [(IDSProvisionTemporaryPhoneMessage *)self authToken];
  [v4 setAuthToken:authToken];

  countryCode = [(IDSProvisionTemporaryPhoneMessage *)self countryCode];
  [v4 setCountryCode:countryCode];

  networkCode = [(IDSProvisionTemporaryPhoneMessage *)self networkCode];
  [v4 setNetworkCode:networkCode];

  responseStatus = [(IDSProvisionTemporaryPhoneMessage *)self responseStatus];
  [v4 setResponseStatus:responseStatus];

  responseCertificate = [(IDSProvisionTemporaryPhoneMessage *)self responseCertificate];
  [v4 setResponseCertificate:responseCertificate];

  responseCertificateExpiration = [(IDSProvisionTemporaryPhoneMessage *)self responseCertificateExpiration];
  [v4 setResponseCertificateExpiration:responseCertificateExpiration];

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
  messageBody = [(IDSProvisionTemporaryPhoneMessage *)&v10 messageBody];
  Mutable = [messageBody mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  profileID = [(IDSProvisionTemporaryPhoneMessage *)self profileID];
  if (profileID)
  {
    CFDictionarySetValue(Mutable, @"vc-profile-id", profileID);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091F698();
  }

  authToken = [(IDSProvisionTemporaryPhoneMessage *)self authToken];
  if (authToken)
  {
    CFDictionarySetValue(Mutable, @"vc-auth-token", authToken);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091F720();
  }

  countryCode = [(IDSProvisionTemporaryPhoneMessage *)self countryCode];
  if (countryCode)
  {
    CFDictionarySetValue(Mutable, @"sim-mcc", countryCode);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091F7A8();
  }

  networkCode = [(IDSProvisionTemporaryPhoneMessage *)self networkCode];
  if (networkCode)
  {
    CFDictionarySetValue(Mutable, @"sim-mnc", networkCode);
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
  additionalMessageHeaders = [(IDSProvisionTemporaryPhoneMessage *)&v10 additionalMessageHeaders];
  Mutable = [additionalMessageHeaders mutableCopy];

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  pushCertificate = [(IDSProvisionTemporaryPhoneMessage *)self pushCertificate];
  _FTStringFromBaseData = [pushCertificate _FTStringFromBaseData];

  if (_FTStringFromBaseData)
  {
    CFDictionarySetValue(Mutable, @"x-push-cert", _FTStringFromBaseData);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1009150CC();
  }

  pushToken = [(IDSProvisionTemporaryPhoneMessage *)self pushToken];
  _FTStringFromBaseData2 = [pushToken _FTStringFromBaseData];

  if (_FTStringFromBaseData2)
  {
    CFDictionarySetValue(Mutable, @"x-push-token", _FTStringFromBaseData2);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10091F8B8();
  }

  return Mutable;
}

- (void)handleResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = +[IMRGLog registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = dictionaryCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDS Provision Temporary Phone response: %@", &v18, 0xCu);
  }

  v6 = [dictionaryCopy _numberForKey:@"status"];
  [(IDSProvisionTemporaryPhoneMessage *)self setResponseStatus:v6];

  responseStatus = [(IDSProvisionTemporaryPhoneMessage *)self responseStatus];
  if (responseStatus)
  {
    v8 = responseStatus;
    responseStatus2 = [(IDSProvisionTemporaryPhoneMessage *)self responseStatus];
    integerValue = [responseStatus2 integerValue];

    if (!integerValue)
    {
      v11 = [dictionaryCopy objectForKeyedSubscript:@"temporary-credential"];
      [(IDSProvisionTemporaryPhoneMessage *)self setResponseCertificate:v11];

      v12 = [dictionaryCopy _stringForKey:@"expiry"];
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