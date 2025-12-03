@interface IDSStewieProvisionMessage
- (BOOL)needsDeviceInfo;
- (BOOL)needsPhoneSigs;
- (BOOL)needsPushIdentity;
- (BOOL)wantsCompanionDeviceUDIDs;
- (BOOL)wantsCompanionPhoneNumbers;
- (BOOL)wantsIDSServer;
- (BOOL)wantsPhoneInfo;
- (IDSStewieProvisionMessage)init;
- (id)URLOverride;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)failuresOfType:(unint64_t)type;
- (id)failuresOfType:(unint64_t)type withDifferingResponseCode:(int64_t)code;
- (id)messageBody;
- (id)requiredKeys;
- (id)successfulResponsesOfType:(unint64_t)type;
- (void)addClearInfo:(id)info;
- (void)addCompanionDeviceUDIDs:(id)ds;
- (void)addCompanionPhoneNumbers:(id)numbers;
- (void)addMessage:(id)message;
- (void)addPhoneNumberInfos:(id)infos;
- (void)addPhoneSigsForPublicKey:(__SecKey *)key privateKey:(__SecKey *)privateKey;
- (void)addSMSConfig:(id)config;
- (void)addSessionKeyInfos:(id)infos;
- (void)addToCorrectResponseDictionaryForRequest:(id)request overallResponseCode:(int64_t)code overallFailureMessage:(id)message requestSpecificError:(id)error forceIntoFailures:(BOOL)failures;
- (void)handleResponseDictionary:(id)dictionary;
- (void)removePhoneNumberInfos:(id)infos;
- (void)removeSessionKeyInfos:(id)infos;
@end

@implementation IDSStewieProvisionMessage

- (IDSStewieProvisionMessage)init
{
  v5.receiver = self;
  v5.super_class = IDSStewieProvisionMessage;
  v2 = [(IDSStewieProvisionMessage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(IDSStewieProvisionMessage *)v2 setTimeout:180.0];
    [(IDSStewieProvisionMessage *)v3 setPhoneNumberInfosAdded:0];
    [(IDSStewieProvisionMessage *)v3 setUnderlyingService:@"com.apple.private.alloy.sps.webtunnel"];
    [(IDSStewieProvisionMessage *)v3 setImportanceLevel:2];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17.receiver = self;
  v17.super_class = IDSStewieProvisionMessage;
  v4 = [(IDSStewieProvisionMessage *)&v17 copyWithZone:zone];
  loggingGUID = [(IDSStewieProvisionMessage *)self loggingGUID];
  [v4 setLoggingGUID:loggingGUID];

  deviceInfo = [(IDSStewieProvisionMessage *)self deviceInfo];
  [v4 setDeviceInfo:deviceInfo];

  [v4 setPhoneNumberInfosAdded:{-[IDSStewieProvisionMessage phoneNumberInfosAdded](self, "phoneNumberInfosAdded")}];
  phoneNumberInfos = [(IDSStewieProvisionMessage *)self phoneNumberInfos];
  [v4 setPhoneNumberInfos:phoneNumberInfos];

  sessionKeyInfos = [(IDSStewieProvisionMessage *)self sessionKeyInfos];
  [v4 setSessionKeyInfos:sessionKeyInfos];

  retiredSessionKeys = [(IDSStewieProvisionMessage *)self retiredSessionKeys];
  [v4 setRetiredSessionKeys:retiredSessionKeys];

  clearInfo = [(IDSStewieProvisionMessage *)self clearInfo];
  [v4 setClearInfo:clearInfo];

  successes = [(IDSStewieProvisionMessage *)self successes];
  [v4 setSuccesses:successes];

  failures = [(IDSStewieProvisionMessage *)self failures];
  [v4 setFailures:failures];

  smsConfig = [(IDSStewieProvisionMessage *)self smsConfig];
  [v4 setSmsConfig:smsConfig];

  companionPhoneNumbers = [(IDSStewieProvisionMessage *)self companionPhoneNumbers];
  [v4 setCompanionPhoneNumbers:companionPhoneNumbers];

  companionDeviceUDIDs = [(IDSStewieProvisionMessage *)self companionDeviceUDIDs];
  [v4 setCompanionDeviceUDIDs:companionDeviceUDIDs];

  [v4 setCompanionPhoneNumbersAdded:{-[IDSStewieProvisionMessage companionPhoneNumbersAdded](self, "companionPhoneNumbersAdded")}];
  [v4 setCompanionDeviceUDIDsAdded:{-[IDSStewieProvisionMessage companionDeviceUDIDsAdded](self, "companionDeviceUDIDsAdded")}];
  return v4;
}

- (BOOL)needsPushIdentity
{
  deviceInfo = [(IDSStewieProvisionMessage *)self deviceInfo];
  v3 = deviceInfo != 0;

  return v3;
}

- (BOOL)needsPhoneSigs
{
  phoneNumberInfos = [(IDSStewieProvisionMessage *)self phoneNumberInfos];
  v3 = [phoneNumberInfos count] != 0;

  return v3;
}

- (BOOL)needsDeviceInfo
{
  deviceInfo = [(IDSStewieProvisionMessage *)self deviceInfo];
  if (deviceInfo)
  {
    v4 = 0;
  }

  else
  {
    clearInfo = [(IDSStewieProvisionMessage *)self clearInfo];
    if (clearInfo)
    {
      clearInfo2 = [(IDSStewieProvisionMessage *)self clearInfo];
      v4 = [clearInfo2 clearType] != 0;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (BOOL)wantsPhoneInfo
{
  if ([(IDSStewieProvisionMessage *)self phoneNumberInfosAdded])
  {
    return 0;
  }

  phoneNumberInfos = [(IDSStewieProvisionMessage *)self phoneNumberInfos];
  if ([phoneNumberInfos count])
  {
    v3 = 0;
  }

  else
  {
    clearInfo = [(IDSStewieProvisionMessage *)self clearInfo];
    if (clearInfo)
    {
      clearInfo2 = [(IDSStewieProvisionMessage *)self clearInfo];
      v3 = [clearInfo2 clearType] != 0;
    }

    else
    {
      v3 = 1;
    }
  }

  return v3;
}

- (BOOL)wantsCompanionPhoneNumbers
{
  if ([(IDSStewieProvisionMessage *)self companionPhoneNumbersAdded])
  {
    return 0;
  }

  companionPhoneNumbers = [(IDSStewieProvisionMessage *)self companionPhoneNumbers];
  if (companionPhoneNumbers)
  {
    v3 = 0;
  }

  else
  {
    clearInfo = [(IDSStewieProvisionMessage *)self clearInfo];
    if (clearInfo)
    {
      clearInfo2 = [(IDSStewieProvisionMessage *)self clearInfo];
      v3 = [clearInfo2 clearType] != 0;
    }

    else
    {
      v3 = 1;
    }
  }

  return v3;
}

- (BOOL)wantsCompanionDeviceUDIDs
{
  if ([(IDSStewieProvisionMessage *)self companionDeviceUDIDsAdded])
  {
    return 0;
  }

  companionDeviceUDIDs = [(IDSStewieProvisionMessage *)self companionDeviceUDIDs];
  if (companionDeviceUDIDs)
  {
    v3 = 0;
  }

  else
  {
    clearInfo = [(IDSStewieProvisionMessage *)self clearInfo];
    if (clearInfo)
    {
      clearInfo2 = [(IDSStewieProvisionMessage *)self clearInfo];
      v3 = [clearInfo2 clearType] != 0;
    }

    else
    {
      v3 = 1;
    }
  }

  return v3;
}

- (void)addPhoneSigsForPublicKey:(__SecKey *)key privateKey:(__SecKey *)privateKey
{
  obj = [(IDSStewieProvisionMessage *)self phoneNumberInfos];
  v6 = [obj count];
  if (key && v6)
  {

    if (privateKey)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      [(IDSStewieProvisionMessage *)self setPhoneSigs:v7];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      obja = [(IDSStewieProvisionMessage *)self phoneNumberInfos];
      v8 = [obja countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v8)
      {
        v10 = v8;
        v11 = *v29;
        *&v9 = 138412546;
        v24 = v9;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v29 != v11)
            {
              objc_enumerationMutation(obja);
            }

            v13 = *(*(&v28 + 1) + 8 * i);
            serverTimestamp = [(IDSStewieProvisionMessage *)self serverTimestamp];
            _FTGenerateNonceAndSignatureFromPayload();
            v15 = 0;
            v16 = 0;

            v17 = [IDSAuthenticationCertificateSignature alloc];
            authenticationCertificate = [v13 authenticationCertificate];
            v19 = [v17 initWithSubscriptionIdentifier:&stru_100C06028 authenticationCertificate:authenticationCertificate signature:v16 nonce:v15];

            serverVerifiableEncoding = [v19 serverVerifiableEncoding];
            v21 = +[IDSFoundationLog stewieProvisioning];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v24;
              v33 = v13;
              v34 = 2112;
              v35 = serverVerifiableEncoding;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Created sig for info { info: %@, certSig: %@ }", buf, 0x16u);
            }

            if (serverVerifiableEncoding)
            {
              phoneSigs = [(IDSStewieProvisionMessage *)self phoneSigs];
              index = [v13 index];
              [phoneSigs setObject:serverVerifiableEncoding forKeyedSubscript:index];
            }
          }

          v10 = [obja countByEnumeratingWithState:&v28 objects:v36 count:16];
        }

        while (v10);
      }
    }
  }

  else
  {
  }
}

- (void)addMessage:(id)message
{
  messageCopy = message;
  if (messageCopy)
  {
    clearInfo = [messageCopy clearInfo];

    if (clearInfo)
    {
      clearInfo2 = [messageCopy clearInfo];
      [(IDSStewieProvisionMessage *)self addClearInfo:clearInfo2];
    }

    deviceInfo = [messageCopy deviceInfo];

    if (deviceInfo)
    {
      deviceInfo2 = [messageCopy deviceInfo];
      [(IDSStewieProvisionMessage *)self addDeviceInfo:deviceInfo2];
    }

    if (([messageCopy wantsPhoneInfo] & 1) == 0)
    {
      phoneNumberInfos = [messageCopy phoneNumberInfos];
      [(IDSStewieProvisionMessage *)self addPhoneNumberInfos:phoneNumberInfos];
    }

    sessionKeyInfos = [messageCopy sessionKeyInfos];

    if (sessionKeyInfos)
    {
      sessionKeyInfos2 = [messageCopy sessionKeyInfos];
      allObjects = [sessionKeyInfos2 allObjects];
      [(IDSStewieProvisionMessage *)self addSessionKeyInfos:allObjects];
    }

    loggingGUID = [messageCopy loggingGUID];

    if (loggingGUID)
    {
      loggingGUID2 = [messageCopy loggingGUID];
      [(IDSStewieProvisionMessage *)self addLoggingGUID:loggingGUID2];
    }

    smsConfig = [messageCopy smsConfig];
    [(IDSStewieProvisionMessage *)self addSMSConfig:smsConfig];

    companionPhoneNumbers = [messageCopy companionPhoneNumbers];

    if (companionPhoneNumbers)
    {
      companionPhoneNumbers2 = [messageCopy companionPhoneNumbers];
      [(IDSStewieProvisionMessage *)self addCompanionPhoneNumbers:companionPhoneNumbers2];
    }

    companionDeviceUDIDs = [messageCopy companionDeviceUDIDs];

    if (companionDeviceUDIDs)
    {
      companionDeviceUDIDs2 = [messageCopy companionDeviceUDIDs];
      [(IDSStewieProvisionMessage *)self addCompanionDeviceUDIDs:companionDeviceUDIDs2];
    }
  }
}

- (void)addPhoneNumberInfos:(id)infos
{
  infosCopy = infos;
  [(IDSStewieProvisionMessage *)self setPhoneNumberInfosAdded:1];
  [(IDSStewieProvisionMessage *)self setPhoneNumberInfos:infosCopy];
  phoneNumberInfos = [(IDSStewieProvisionMessage *)self phoneNumberInfos];
  v6 = [phoneNumberInfos sortedArrayUsingComparator:&stru_100BDC438];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        v14 = [NSString stringWithFormat:@"%i", v10];
        [v13 setIndex:v14];
        v10 = (v10 + 1);

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)addCompanionPhoneNumbers:(id)numbers
{
  numbersCopy = numbers;
  [(IDSStewieProvisionMessage *)self setCompanionPhoneNumbersAdded:1];
  [(IDSStewieProvisionMessage *)self setCompanionPhoneNumbers:numbersCopy];
}

- (void)addCompanionDeviceUDIDs:(id)ds
{
  dsCopy = ds;
  [(IDSStewieProvisionMessage *)self setCompanionDeviceUDIDsAdded:1];
  [(IDSStewieProvisionMessage *)self setCompanionDeviceUDIDs:dsCopy];
}

- (void)addSessionKeyInfos:(id)infos
{
  infosCopy = infos;
  v5 = [NSMutableSet setWithArray:infosCopy];
  if ([v5 count] == 30)
  {
    v6 = [[IDSStewieClearInfo alloc] initWithClearType:1];
    [(IDSStewieProvisionMessage *)self addClearInfo:v6];
  }

  [(IDSStewieProvisionMessage *)self setSessionKeyInfos:v5];
  retiredSessionKeys = [(IDSStewieProvisionMessage *)self retiredSessionKeys];

  if (!retiredSessionKeys)
  {
    v8 = objc_alloc_init(NSMutableSet);
    [(IDSStewieProvisionMessage *)self setRetiredSessionKeys:v8];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = infosCopy;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        retiredEPKI = [v14 retiredEPKI];

        if (retiredEPKI)
        {
          retiredEPKI2 = [v14 retiredEPKI];
          __imHexString = [retiredEPKI2 __imHexString];
          lowercaseString = [__imHexString lowercaseString];

          retiredSessionKeys2 = [(IDSStewieProvisionMessage *)self retiredSessionKeys];
          [retiredSessionKeys2 addObject:lowercaseString];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }
}

- (void)addClearInfo:(id)info
{
  infoCopy = info;
  clearInfo = [(IDSStewieProvisionMessage *)self clearInfo];

  if (clearInfo)
  {
    clearInfo2 = [(IDSStewieProvisionMessage *)self clearInfo];
    [clearInfo2 unionWithClearInfo:infoCopy];
  }

  else
  {
    [(IDSStewieProvisionMessage *)self setClearInfo:infoCopy];
  }

  clearInfo3 = [(IDSStewieProvisionMessage *)self clearInfo];
  clearType = [clearInfo3 clearType];

  if (clearType != 1)
  {
    if (clearType)
    {
      goto LABEL_8;
    }

    [(IDSStewieProvisionMessage *)self setDeviceInfo:0];
    [(IDSStewieProvisionMessage *)self setPhoneNumberInfos:0];
  }

  [(IDSStewieProvisionMessage *)self setSessionKeyInfos:0];
LABEL_8:
}

- (void)addSMSConfig:(id)config
{
  configCopy = config;
  v5 = configCopy;
  if (configCopy)
  {
    v8 = configCopy;
    configCopy = [configCopy config];
    v5 = v8;
    if (configCopy)
    {
      v6 = configCopy;
      configID = [v8 configID];

      v5 = v8;
      if (configID)
      {
        configCopy = [(IDSStewieProvisionMessage *)self setSmsConfig:v8];
        v5 = v8;
      }
    }
  }

  _objc_release_x1(configCopy, v5);
}

- (void)removePhoneNumberInfos:(id)infos
{
  infosCopy = infos;
  phoneNumberInfos = [(IDSStewieProvisionMessage *)self phoneNumberInfos];
  v5 = [phoneNumberInfos mutableCopy];

  if ([infosCopy count])
  {
    [v5 removeObjectsInArray:infosCopy];
  }

  [(IDSStewieProvisionMessage *)self setPhoneNumberInfos:v5];
}

- (void)removeSessionKeyInfos:(id)infos
{
  infosCopy = infos;
  sessionKeyInfos = [(IDSStewieProvisionMessage *)self sessionKeyInfos];
  v5 = [sessionKeyInfos mutableCopy];

  if ([infosCopy count])
  {
    v6 = [NSSet setWithArray:infosCopy];
    [v5 minusSet:v6];
  }

  [(IDSStewieProvisionMessage *)self setSessionKeyInfos:v5];
}

- (id)URLOverride
{
  if (!CUTIsInternalInstall())
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (+[IMUserDefaults forceStewieQA2])
  {
    v2 = @"https://provision-qa2.ess.apple.com/provision";
LABEL_7:
    v3 = [NSURL URLWithString:v2];
    goto LABEL_13;
  }

  if (+[IMUserDefaults forceStewieQA1])
  {
    v2 = @"https://provision-qa1.ess.apple.com/provision";
    goto LABEL_7;
  }

  v4 = +[IMUserDefaults stewieProvisionURLOverride];

  if (v4)
  {
    v5 = +[IMUserDefaults stewieProvisionURLOverride];
  }

  else
  {
    v3 = IMGetSPSCustomURL();

    if (!v3)
    {
      goto LABEL_13;
    }

    v5 = IMGetSPSCustomURL();
  }

  v6 = v5;
  v3 = [NSURL URLWithString:v5];

LABEL_13:

  return v3;
}

- (BOOL)wantsIDSServer
{
  if (+[IMUserDefaults forceStewieQA2])
  {
    return 0;
  }

  else
  {
    return !+[IMUserDefaults forceStewieQA1];
  }
}

- (id)requiredKeys
{
  v2 = objc_alloc_init(NSMutableArray);

  return v2;
}

- (id)messageBody
{
  v3 = objc_alloc_init(NSMutableDictionary);
  deviceInfo = [(IDSStewieProvisionMessage *)self deviceInfo];

  if (!deviceInfo)
  {
    goto LABEL_29;
  }

  pushCertificate = [(IDSStewieProvisionMessage *)self pushCertificate];
  if (pushCertificate)
  {
  }

  else
  {
    pushCerts = [(IDSStewieProvisionMessage *)self pushCerts];

    if (!pushCerts)
    {
      goto LABEL_13;
    }
  }

  pushNonce = [(IDSStewieProvisionMessage *)self pushNonce];
  if (!pushNonce || (v8 = pushNonce, [(IDSStewieProvisionMessage *)self pushSig], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
  {
LABEL_13:
    v10 = +[IDSFoundationLog stewieProvisioning];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_10091EE78(self, v10);
    }

    goto LABEL_27;
  }

  v10 = objc_alloc_init(NSMutableDictionary);
  deviceInfo2 = [(IDSStewieProvisionMessage *)self deviceInfo];
  locale = [deviceInfo2 locale];

  if (locale)
  {
    CFDictionarySetValue(v10, @"deviceLocale", locale);
  }

  deviceInfo3 = [(IDSStewieProvisionMessage *)self deviceInfo];
  pushToken = [deviceInfo3 pushToken];
  __imHexString = [pushToken __imHexString];

  if (__imHexString)
  {
    CFDictionarySetValue(v10, @"pushToken", __imHexString);
  }

  pushCerts2 = [(IDSStewieProvisionMessage *)self pushCerts];

  if (pushCerts2)
  {
    [(IDSStewieProvisionMessage *)self pushCerts];
  }

  else
  {
    [(IDSStewieProvisionMessage *)self pushCertificate];
  }
  v17 = ;
  if (v17)
  {
    CFDictionarySetValue(v10, @"pushCert", v17);
  }

  pushNonce2 = [(IDSStewieProvisionMessage *)self pushNonce];
  if (pushNonce2)
  {
    CFDictionarySetValue(v10, @"pushNonce", pushNonce2);
  }

  pushSig = [(IDSStewieProvisionMessage *)self pushSig];
  if (pushSig)
  {
    CFDictionarySetValue(v10, @"pushSignature", pushSig);
  }

  deviceInfo4 = [(IDSStewieProvisionMessage *)self deviceInfo];
  dsid = [deviceInfo4 dsid];

  if (dsid)
  {
    CFDictionarySetValue(v10, @"dsid", dsid);
  }

  loggingGUID = [(IDSStewieProvisionMessage *)self loggingGUID];
  if (loggingGUID)
  {
    CFDictionarySetValue(v10, @"sdid", loggingGUID);
  }

  [v3 setObject:v10 forKeyedSubscript:@"deviceInfo"];
LABEL_27:

  deviceInfo5 = [(IDSStewieProvisionMessage *)self deviceInfo];
  accessTokens = [deviceInfo5 accessTokens];
  v25 = [accessTokens count];

  if (v25)
  {
    deviceInfo6 = [(IDSStewieProvisionMessage *)self deviceInfo];
    accessTokens2 = [deviceInfo6 accessTokens];
    [v3 setObject:accessTokens2 forKeyedSubscript:@"featureAccessTokens"];
  }

LABEL_29:
  phoneSigs = [(IDSStewieProvisionMessage *)self phoneSigs];
  v29 = [phoneSigs count];

  if (v29)
  {
    phoneSigs2 = [(IDSStewieProvisionMessage *)self phoneSigs];
    v31 = [phoneSigs2 copy];
    [v3 setObject:v31 forKeyedSubscript:@"phoneNumbers"];
  }

  sessionKeyInfos = [(IDSStewieProvisionMessage *)self sessionKeyInfos];

  if (sessionKeyInfos)
  {
    v59 = v3;
    v33 = objc_alloc_init(NSMutableArray);
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    sessionKeyInfos2 = [(IDSStewieProvisionMessage *)self sessionKeyInfos];
    v35 = [sessionKeyInfos2 countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v61;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v61 != v37)
          {
            objc_enumerationMutation(sessionKeyInfos2);
          }

          v39 = *(*(&v60 + 1) + 8 * i);
          sessionKey = [v39 sessionKey];

          if (sessionKey)
          {
            v64[0] = @"key";
            sessionKey2 = [v39 sessionKey];
            v64[1] = @"lastResort";
            v65[0] = sessionKey2;
            v42 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v39 lastResort]);
            v65[1] = v42;
            v43 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:2];
            [v33 addObject:v43];
          }
        }

        v36 = [sessionKeyInfos2 countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v36);
    }

    v3 = v59;
    [v59 setObject:v33 forKeyedSubscript:@"addSessionKeys"];
    retiredSessionKeys = [(IDSStewieProvisionMessage *)self retiredSessionKeys];
    v45 = [retiredSessionKeys count];

    if (v45)
    {
      retiredSessionKeys2 = [(IDSStewieProvisionMessage *)self retiredSessionKeys];
      allObjects = [retiredSessionKeys2 allObjects];
      [v59 setObject:allObjects forKeyedSubscript:@"removeSessionKeys"];
    }
  }

  clearInfo = [(IDSStewieProvisionMessage *)self clearInfo];

  if (clearInfo)
  {
    clearInfo2 = [(IDSStewieProvisionMessage *)self clearInfo];
    clearType = [clearInfo2 clearType];

    if (clearType)
    {
      if (clearType != 1)
      {
        goto LABEL_50;
      }

      v51 = &off_100C3DBE0;
    }

    else
    {
      v51 = &off_100C3DBC8;
    }

    [v3 setObject:v51 forKeyedSubscript:@"clear"];
  }

LABEL_50:
  smsConfig = [(IDSStewieProvisionMessage *)self smsConfig];

  if (smsConfig)
  {
    smsConfig2 = [(IDSStewieProvisionMessage *)self smsConfig];
    config = [smsConfig2 config];
    [v3 setObject:config forKeyedSubscript:@"smsConfigBlob"];
  }

  companionDeviceUDIDs = [(IDSStewieProvisionMessage *)self companionDeviceUDIDs];

  if (companionDeviceUDIDs && _os_feature_enabled_impl())
  {
    companionDeviceUDIDs2 = [(IDSStewieProvisionMessage *)self companionDeviceUDIDs];
    allValues = [companionDeviceUDIDs2 allValues];
    [v3 setObject:allValues forKeyedSubscript:@"linkedDeviceUDIDs"];
  }

  return v3;
}

- (void)handleResponseDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v57 = dictionaryCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stewie provision response %@", buf, 0xCu);
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"status"];
  integerValue = [v6 integerValue];

  v7 = [dictionaryCopy objectForKeyedSubscript:@"message"];
  successes = [(IDSStewieProvisionMessage *)self successes];

  if (!successes)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    [(IDSStewieProvisionMessage *)self setSuccesses:v9];
  }

  failures = [(IDSStewieProvisionMessage *)self failures];

  if (!failures)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [(IDSStewieProvisionMessage *)self setFailures:v11];
  }

  deviceInfo = [(IDSStewieProvisionMessage *)self deviceInfo];

  if (deviceInfo)
  {
    deviceInfo2 = [(IDSStewieProvisionMessage *)self deviceInfo];
    [(IDSStewieProvisionMessage *)self addToCorrectResponseDictionaryForRequest:deviceInfo2 overallResponseCode:integerValue overallFailureMessage:v7 requestSpecificError:0];
  }

  phoneNumberInfos = [(IDSStewieProvisionMessage *)self phoneNumberInfos];

  selfCopy = self;
  v40 = dictionaryCopy;
  if (phoneNumberInfos)
  {
    v16 = v7;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"phoneNumbers"];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [(IDSStewieProvisionMessage *)self phoneNumberInfos];
    v18 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v51;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v51 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v50 + 1) + 8 * i);
          index = [v22 index];
          v24 = [v17 objectForKeyedSubscript:index];

          [(IDSStewieProvisionMessage *)selfCopy addToCorrectResponseDictionaryForRequest:v22 overallResponseCode:integerValue overallFailureMessage:v16 requestSpecificError:v24 forceIntoFailures:v17 != 0];
        }

        v19 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v19);
    }

    dictionaryCopy = v40;
    self = selfCopy;
    v7 = v16;
  }

  sessionKeyInfos = [(IDSStewieProvisionMessage *)self sessionKeyInfos];

  if (sessionKeyInfos)
  {
    obja = [dictionaryCopy objectForKeyedSubscript:@"addSessionKeys"];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    sessionKeyInfos2 = [(IDSStewieProvisionMessage *)self sessionKeyInfos];
    v26 = [sessionKeyInfos2 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v47;
      do
      {
        for (j = 0; j != v27; j = j + 1)
        {
          if (*v47 != v28)
          {
            objc_enumerationMutation(sessionKeyInfos2);
          }

          v30 = *(*(&v46 + 1) + 8 * j);
          keyEPKI = [v30 keyEPKI];
          if (keyEPKI)
          {
            keyEPKI2 = [v30 keyEPKI];
            __imHexString = [keyEPKI2 __imHexString];
            v34 = [obja objectForKeyedSubscript:__imHexString];

            self = selfCopy;
          }

          else
          {
            v34 = 0;
          }

          v35 = v30;
          v36 = [v34 objectForKeyedSubscript:@"serverPublicKey"];
          if (v36)
          {
            v37 = [v35 copyWithServerPublicKey:v36];

            v35 = v37;
          }

          [(IDSStewieProvisionMessage *)self addToCorrectResponseDictionaryForRequest:v35 overallResponseCode:integerValue overallFailureMessage:v7 requestSpecificError:v34 forceIntoFailures:v36 == 0];
        }

        v27 = [sessionKeyInfos2 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v27);
    }

    dictionaryCopy = v41;
  }

  clearInfo = [(IDSStewieProvisionMessage *)self clearInfo];

  if (clearInfo)
  {
    clearInfo2 = [(IDSStewieProvisionMessage *)self clearInfo];
    [(IDSStewieProvisionMessage *)self addToCorrectResponseDictionaryForRequest:clearInfo2 overallResponseCode:integerValue overallFailureMessage:v7 requestSpecificError:0];
  }
}

- (id)successfulResponsesOfType:(unint64_t)type
{
  successes = [(IDSStewieProvisionMessage *)self successes];
  v5 = [NSNumber numberWithUnsignedInteger:type];
  v6 = [successes objectForKeyedSubscript:v5];

  return v6;
}

- (id)failuresOfType:(unint64_t)type
{
  failures = [(IDSStewieProvisionMessage *)self failures];
  v5 = [NSNumber numberWithUnsignedInteger:type];
  v6 = [failures objectForKeyedSubscript:v5];

  return v6;
}

- (id)failuresOfType:(unint64_t)type withDifferingResponseCode:(int64_t)code
{
  failures = [(IDSStewieProvisionMessage *)self failures];
  v7 = [NSNumber numberWithUnsignedInteger:type];
  v8 = [failures objectForKeyedSubscript:v7];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10043E7C4;
  v11[3] = &unk_100BDC458;
  v11[4] = code;
  v9 = [v8 __imArrayByFilteringWithBlock:v11];

  return v9;
}

- (void)addToCorrectResponseDictionaryForRequest:(id)request overallResponseCode:(int64_t)code overallFailureMessage:(id)message requestSpecificError:(id)error forceIntoFailures:(BOOL)failures
{
  failuresCopy = failures;
  requestCopy = request;
  messageCopy = message;
  errorCopy = error;
  v15 = messageCopy;
  v16 = [errorCopy objectForKeyedSubscript:@"status"];

  v17 = v15;
  if (v16)
  {
    v18 = [errorCopy objectForKeyedSubscript:@"status"];
    code = [v18 integerValue];

    v17 = [errorCopy objectForKeyedSubscript:@"message"];

    if (v17)
    {
      v19 = +[IDSFoundationLog stewieProvisioning];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138543874;
        v30 = v17;
        v31 = 2048;
        codeCopy = code;
        v33 = 2112;
        v34 = requestCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Provisioning sub error found { serverErrorDetail: %{public}@, code: %ld, request: %@ }", &v29, 0x20u);
      }
    }
  }

  if (code || failuresCopy)
  {
    failures = [(IDSStewieProvisionMessage *)self failures];
  }

  else
  {
    failures = [(IDSStewieProvisionMessage *)self successes];
  }

  v21 = failures;
  v22 = [[IDSStewieProvisionInfoResponse alloc] initWithRequest:requestCopy responseCode:code failureMessage:v17 additionalInfo:errorCopy];
  v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [requestCopy type]);
  v24 = [v21 objectForKeyedSubscript:v23];

  if (!v24)
  {
    v25 = objc_alloc_init(NSMutableArray);
    v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [requestCopy type]);
    [v21 setObject:v25 forKeyedSubscript:v26];
  }

  v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [requestCopy type]);
  v28 = [v21 objectForKeyedSubscript:v27];
  [v28 addObject:v22];
}

- (id)description
{
  v14 = objc_opt_class();
  loggingGUID = [(IDSStewieProvisionMessage *)self loggingGUID];
  deviceInfo = [(IDSStewieProvisionMessage *)self deviceInfo];
  phoneNumberInfos = [(IDSStewieProvisionMessage *)self phoneNumberInfos];
  sessionKeyInfos = [(IDSStewieProvisionMessage *)self sessionKeyInfos];
  v7 = [sessionKeyInfos count];
  smsConfig = [(IDSStewieProvisionMessage *)self smsConfig];
  companionPhoneNumbers = [(IDSStewieProvisionMessage *)self companionPhoneNumbers];
  companionDeviceUDIDs = [(IDSStewieProvisionMessage *)self companionDeviceUDIDs];
  clearInfo = [(IDSStewieProvisionMessage *)self clearInfo];
  v12 = [NSString stringWithFormat:@"<%@: %p { GUID: %@, deviceInfo: %@, phoneInfos: %@, sessionKeyCount: %ld, smsConfig: %@, companionPhoneNumbers: %@, companionDeviceUDIDs: %@, clear: %@ }>", v14, self, loggingGUID, deviceInfo, phoneNumberInfos, v7, smsConfig, companionPhoneNumbers, companionDeviceUDIDs, clearInfo];

  return v12;
}

@end