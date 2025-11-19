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
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)failuresOfType:(unint64_t)a3;
- (id)failuresOfType:(unint64_t)a3 withDifferingResponseCode:(int64_t)a4;
- (id)messageBody;
- (id)requiredKeys;
- (id)successfulResponsesOfType:(unint64_t)a3;
- (void)addClearInfo:(id)a3;
- (void)addCompanionDeviceUDIDs:(id)a3;
- (void)addCompanionPhoneNumbers:(id)a3;
- (void)addMessage:(id)a3;
- (void)addPhoneNumberInfos:(id)a3;
- (void)addPhoneSigsForPublicKey:(__SecKey *)a3 privateKey:(__SecKey *)a4;
- (void)addSMSConfig:(id)a3;
- (void)addSessionKeyInfos:(id)a3;
- (void)addToCorrectResponseDictionaryForRequest:(id)a3 overallResponseCode:(int64_t)a4 overallFailureMessage:(id)a5 requestSpecificError:(id)a6 forceIntoFailures:(BOOL)a7;
- (void)handleResponseDictionary:(id)a3;
- (void)removePhoneNumberInfos:(id)a3;
- (void)removeSessionKeyInfos:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v17.receiver = self;
  v17.super_class = IDSStewieProvisionMessage;
  v4 = [(IDSStewieProvisionMessage *)&v17 copyWithZone:a3];
  v5 = [(IDSStewieProvisionMessage *)self loggingGUID];
  [v4 setLoggingGUID:v5];

  v6 = [(IDSStewieProvisionMessage *)self deviceInfo];
  [v4 setDeviceInfo:v6];

  [v4 setPhoneNumberInfosAdded:{-[IDSStewieProvisionMessage phoneNumberInfosAdded](self, "phoneNumberInfosAdded")}];
  v7 = [(IDSStewieProvisionMessage *)self phoneNumberInfos];
  [v4 setPhoneNumberInfos:v7];

  v8 = [(IDSStewieProvisionMessage *)self sessionKeyInfos];
  [v4 setSessionKeyInfos:v8];

  v9 = [(IDSStewieProvisionMessage *)self retiredSessionKeys];
  [v4 setRetiredSessionKeys:v9];

  v10 = [(IDSStewieProvisionMessage *)self clearInfo];
  [v4 setClearInfo:v10];

  v11 = [(IDSStewieProvisionMessage *)self successes];
  [v4 setSuccesses:v11];

  v12 = [(IDSStewieProvisionMessage *)self failures];
  [v4 setFailures:v12];

  v13 = [(IDSStewieProvisionMessage *)self smsConfig];
  [v4 setSmsConfig:v13];

  v14 = [(IDSStewieProvisionMessage *)self companionPhoneNumbers];
  [v4 setCompanionPhoneNumbers:v14];

  v15 = [(IDSStewieProvisionMessage *)self companionDeviceUDIDs];
  [v4 setCompanionDeviceUDIDs:v15];

  [v4 setCompanionPhoneNumbersAdded:{-[IDSStewieProvisionMessage companionPhoneNumbersAdded](self, "companionPhoneNumbersAdded")}];
  [v4 setCompanionDeviceUDIDsAdded:{-[IDSStewieProvisionMessage companionDeviceUDIDsAdded](self, "companionDeviceUDIDsAdded")}];
  return v4;
}

- (BOOL)needsPushIdentity
{
  v2 = [(IDSStewieProvisionMessage *)self deviceInfo];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)needsPhoneSigs
{
  v2 = [(IDSStewieProvisionMessage *)self phoneNumberInfos];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)needsDeviceInfo
{
  v3 = [(IDSStewieProvisionMessage *)self deviceInfo];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(IDSStewieProvisionMessage *)self clearInfo];
    if (v5)
    {
      v6 = [(IDSStewieProvisionMessage *)self clearInfo];
      v4 = [v6 clearType] != 0;
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

  v4 = [(IDSStewieProvisionMessage *)self phoneNumberInfos];
  if ([v4 count])
  {
    v3 = 0;
  }

  else
  {
    v5 = [(IDSStewieProvisionMessage *)self clearInfo];
    if (v5)
    {
      v6 = [(IDSStewieProvisionMessage *)self clearInfo];
      v3 = [v6 clearType] != 0;
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

  v4 = [(IDSStewieProvisionMessage *)self companionPhoneNumbers];
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    v5 = [(IDSStewieProvisionMessage *)self clearInfo];
    if (v5)
    {
      v6 = [(IDSStewieProvisionMessage *)self clearInfo];
      v3 = [v6 clearType] != 0;
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

  v4 = [(IDSStewieProvisionMessage *)self companionDeviceUDIDs];
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    v5 = [(IDSStewieProvisionMessage *)self clearInfo];
    if (v5)
    {
      v6 = [(IDSStewieProvisionMessage *)self clearInfo];
      v3 = [v6 clearType] != 0;
    }

    else
    {
      v3 = 1;
    }
  }

  return v3;
}

- (void)addPhoneSigsForPublicKey:(__SecKey *)a3 privateKey:(__SecKey *)a4
{
  obj = [(IDSStewieProvisionMessage *)self phoneNumberInfos];
  v6 = [obj count];
  if (a3 && v6)
  {

    if (a4)
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
            v14 = [(IDSStewieProvisionMessage *)self serverTimestamp];
            _FTGenerateNonceAndSignatureFromPayload();
            v15 = 0;
            v16 = 0;

            v17 = [IDSAuthenticationCertificateSignature alloc];
            v18 = [v13 authenticationCertificate];
            v19 = [v17 initWithSubscriptionIdentifier:&stru_100C06028 authenticationCertificate:v18 signature:v16 nonce:v15];

            v20 = [v19 serverVerifiableEncoding];
            v21 = +[IDSFoundationLog stewieProvisioning];
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v24;
              v33 = v13;
              v34 = 2112;
              v35 = v20;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Created sig for info { info: %@, certSig: %@ }", buf, 0x16u);
            }

            if (v20)
            {
              v22 = [(IDSStewieProvisionMessage *)self phoneSigs];
              v23 = [v13 index];
              [v22 setObject:v20 forKeyedSubscript:v23];
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

- (void)addMessage:(id)a3
{
  v19 = a3;
  if (v19)
  {
    v4 = [v19 clearInfo];

    if (v4)
    {
      v5 = [v19 clearInfo];
      [(IDSStewieProvisionMessage *)self addClearInfo:v5];
    }

    v6 = [v19 deviceInfo];

    if (v6)
    {
      v7 = [v19 deviceInfo];
      [(IDSStewieProvisionMessage *)self addDeviceInfo:v7];
    }

    if (([v19 wantsPhoneInfo] & 1) == 0)
    {
      v8 = [v19 phoneNumberInfos];
      [(IDSStewieProvisionMessage *)self addPhoneNumberInfos:v8];
    }

    v9 = [v19 sessionKeyInfos];

    if (v9)
    {
      v10 = [v19 sessionKeyInfos];
      v11 = [v10 allObjects];
      [(IDSStewieProvisionMessage *)self addSessionKeyInfos:v11];
    }

    v12 = [v19 loggingGUID];

    if (v12)
    {
      v13 = [v19 loggingGUID];
      [(IDSStewieProvisionMessage *)self addLoggingGUID:v13];
    }

    v14 = [v19 smsConfig];
    [(IDSStewieProvisionMessage *)self addSMSConfig:v14];

    v15 = [v19 companionPhoneNumbers];

    if (v15)
    {
      v16 = [v19 companionPhoneNumbers];
      [(IDSStewieProvisionMessage *)self addCompanionPhoneNumbers:v16];
    }

    v17 = [v19 companionDeviceUDIDs];

    if (v17)
    {
      v18 = [v19 companionDeviceUDIDs];
      [(IDSStewieProvisionMessage *)self addCompanionDeviceUDIDs:v18];
    }
  }
}

- (void)addPhoneNumberInfos:(id)a3
{
  v4 = a3;
  [(IDSStewieProvisionMessage *)self setPhoneNumberInfosAdded:1];
  [(IDSStewieProvisionMessage *)self setPhoneNumberInfos:v4];
  v5 = [(IDSStewieProvisionMessage *)self phoneNumberInfos];
  v6 = [v5 sortedArrayUsingComparator:&stru_100BDC438];

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

- (void)addCompanionPhoneNumbers:(id)a3
{
  v4 = a3;
  [(IDSStewieProvisionMessage *)self setCompanionPhoneNumbersAdded:1];
  [(IDSStewieProvisionMessage *)self setCompanionPhoneNumbers:v4];
}

- (void)addCompanionDeviceUDIDs:(id)a3
{
  v4 = a3;
  [(IDSStewieProvisionMessage *)self setCompanionDeviceUDIDsAdded:1];
  [(IDSStewieProvisionMessage *)self setCompanionDeviceUDIDs:v4];
}

- (void)addSessionKeyInfos:(id)a3
{
  v4 = a3;
  v5 = [NSMutableSet setWithArray:v4];
  if ([v5 count] == 30)
  {
    v6 = [[IDSStewieClearInfo alloc] initWithClearType:1];
    [(IDSStewieProvisionMessage *)self addClearInfo:v6];
  }

  [(IDSStewieProvisionMessage *)self setSessionKeyInfos:v5];
  v7 = [(IDSStewieProvisionMessage *)self retiredSessionKeys];

  if (!v7)
  {
    v8 = objc_alloc_init(NSMutableSet);
    [(IDSStewieProvisionMessage *)self setRetiredSessionKeys:v8];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v4;
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
        v15 = [v14 retiredEPKI];

        if (v15)
        {
          v16 = [v14 retiredEPKI];
          v17 = [v16 __imHexString];
          v18 = [v17 lowercaseString];

          v19 = [(IDSStewieProvisionMessage *)self retiredSessionKeys];
          [v19 addObject:v18];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }
}

- (void)addClearInfo:(id)a3
{
  v8 = a3;
  v4 = [(IDSStewieProvisionMessage *)self clearInfo];

  if (v4)
  {
    v5 = [(IDSStewieProvisionMessage *)self clearInfo];
    [v5 unionWithClearInfo:v8];
  }

  else
  {
    [(IDSStewieProvisionMessage *)self setClearInfo:v8];
  }

  v6 = [(IDSStewieProvisionMessage *)self clearInfo];
  v7 = [v6 clearType];

  if (v7 != 1)
  {
    if (v7)
    {
      goto LABEL_8;
    }

    [(IDSStewieProvisionMessage *)self setDeviceInfo:0];
    [(IDSStewieProvisionMessage *)self setPhoneNumberInfos:0];
  }

  [(IDSStewieProvisionMessage *)self setSessionKeyInfos:0];
LABEL_8:
}

- (void)addSMSConfig:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8 = v4;
    v4 = [v4 config];
    v5 = v8;
    if (v4)
    {
      v6 = v4;
      v7 = [v8 configID];

      v5 = v8;
      if (v7)
      {
        v4 = [(IDSStewieProvisionMessage *)self setSmsConfig:v8];
        v5 = v8;
      }
    }
  }

  _objc_release_x1(v4, v5);
}

- (void)removePhoneNumberInfos:(id)a3
{
  v6 = a3;
  v4 = [(IDSStewieProvisionMessage *)self phoneNumberInfos];
  v5 = [v4 mutableCopy];

  if ([v6 count])
  {
    [v5 removeObjectsInArray:v6];
  }

  [(IDSStewieProvisionMessage *)self setPhoneNumberInfos:v5];
}

- (void)removeSessionKeyInfos:(id)a3
{
  v7 = a3;
  v4 = [(IDSStewieProvisionMessage *)self sessionKeyInfos];
  v5 = [v4 mutableCopy];

  if ([v7 count])
  {
    v6 = [NSSet setWithArray:v7];
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
  v4 = [(IDSStewieProvisionMessage *)self deviceInfo];

  if (!v4)
  {
    goto LABEL_29;
  }

  v5 = [(IDSStewieProvisionMessage *)self pushCertificate];
  if (v5)
  {
  }

  else
  {
    v6 = [(IDSStewieProvisionMessage *)self pushCerts];

    if (!v6)
    {
      goto LABEL_13;
    }
  }

  v7 = [(IDSStewieProvisionMessage *)self pushNonce];
  if (!v7 || (v8 = v7, [(IDSStewieProvisionMessage *)self pushSig], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, !v9))
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
  v11 = [(IDSStewieProvisionMessage *)self deviceInfo];
  v12 = [v11 locale];

  if (v12)
  {
    CFDictionarySetValue(v10, @"deviceLocale", v12);
  }

  v13 = [(IDSStewieProvisionMessage *)self deviceInfo];
  v14 = [v13 pushToken];
  v15 = [v14 __imHexString];

  if (v15)
  {
    CFDictionarySetValue(v10, @"pushToken", v15);
  }

  v16 = [(IDSStewieProvisionMessage *)self pushCerts];

  if (v16)
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

  v18 = [(IDSStewieProvisionMessage *)self pushNonce];
  if (v18)
  {
    CFDictionarySetValue(v10, @"pushNonce", v18);
  }

  v19 = [(IDSStewieProvisionMessage *)self pushSig];
  if (v19)
  {
    CFDictionarySetValue(v10, @"pushSignature", v19);
  }

  v20 = [(IDSStewieProvisionMessage *)self deviceInfo];
  v21 = [v20 dsid];

  if (v21)
  {
    CFDictionarySetValue(v10, @"dsid", v21);
  }

  v22 = [(IDSStewieProvisionMessage *)self loggingGUID];
  if (v22)
  {
    CFDictionarySetValue(v10, @"sdid", v22);
  }

  [v3 setObject:v10 forKeyedSubscript:@"deviceInfo"];
LABEL_27:

  v23 = [(IDSStewieProvisionMessage *)self deviceInfo];
  v24 = [v23 accessTokens];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [(IDSStewieProvisionMessage *)self deviceInfo];
    v27 = [v26 accessTokens];
    [v3 setObject:v27 forKeyedSubscript:@"featureAccessTokens"];
  }

LABEL_29:
  v28 = [(IDSStewieProvisionMessage *)self phoneSigs];
  v29 = [v28 count];

  if (v29)
  {
    v30 = [(IDSStewieProvisionMessage *)self phoneSigs];
    v31 = [v30 copy];
    [v3 setObject:v31 forKeyedSubscript:@"phoneNumbers"];
  }

  v32 = [(IDSStewieProvisionMessage *)self sessionKeyInfos];

  if (v32)
  {
    v59 = v3;
    v33 = objc_alloc_init(NSMutableArray);
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v34 = [(IDSStewieProvisionMessage *)self sessionKeyInfos];
    v35 = [v34 countByEnumeratingWithState:&v60 objects:v66 count:16];
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
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v60 + 1) + 8 * i);
          v40 = [v39 sessionKey];

          if (v40)
          {
            v64[0] = @"key";
            v41 = [v39 sessionKey];
            v64[1] = @"lastResort";
            v65[0] = v41;
            v42 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v39 lastResort]);
            v65[1] = v42;
            v43 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:2];
            [v33 addObject:v43];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v60 objects:v66 count:16];
      }

      while (v36);
    }

    v3 = v59;
    [v59 setObject:v33 forKeyedSubscript:@"addSessionKeys"];
    v44 = [(IDSStewieProvisionMessage *)self retiredSessionKeys];
    v45 = [v44 count];

    if (v45)
    {
      v46 = [(IDSStewieProvisionMessage *)self retiredSessionKeys];
      v47 = [v46 allObjects];
      [v59 setObject:v47 forKeyedSubscript:@"removeSessionKeys"];
    }
  }

  v48 = [(IDSStewieProvisionMessage *)self clearInfo];

  if (v48)
  {
    v49 = [(IDSStewieProvisionMessage *)self clearInfo];
    v50 = [v49 clearType];

    if (v50)
    {
      if (v50 != 1)
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
  v52 = [(IDSStewieProvisionMessage *)self smsConfig];

  if (v52)
  {
    v53 = [(IDSStewieProvisionMessage *)self smsConfig];
    v54 = [v53 config];
    [v3 setObject:v54 forKeyedSubscript:@"smsConfigBlob"];
  }

  v55 = [(IDSStewieProvisionMessage *)self companionDeviceUDIDs];

  if (v55 && _os_feature_enabled_impl())
  {
    v56 = [(IDSStewieProvisionMessage *)self companionDeviceUDIDs];
    v57 = [v56 allValues];
    [v3 setObject:v57 forKeyedSubscript:@"linkedDeviceUDIDs"];
  }

  return v3;
}

- (void)handleResponseDictionary:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog stewieProvisioning];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v57 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stewie provision response %@", buf, 0xCu);
  }

  v6 = [v4 objectForKeyedSubscript:@"status"];
  v45 = [v6 integerValue];

  v7 = [v4 objectForKeyedSubscript:@"message"];
  v8 = [(IDSStewieProvisionMessage *)self successes];

  if (!v8)
  {
    v9 = objc_alloc_init(NSMutableDictionary);
    [(IDSStewieProvisionMessage *)self setSuccesses:v9];
  }

  v10 = [(IDSStewieProvisionMessage *)self failures];

  if (!v10)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    [(IDSStewieProvisionMessage *)self setFailures:v11];
  }

  v12 = [(IDSStewieProvisionMessage *)self deviceInfo];

  if (v12)
  {
    v13 = [(IDSStewieProvisionMessage *)self deviceInfo];
    [(IDSStewieProvisionMessage *)self addToCorrectResponseDictionaryForRequest:v13 overallResponseCode:v45 overallFailureMessage:v7 requestSpecificError:0];
  }

  v14 = [(IDSStewieProvisionMessage *)self phoneNumberInfos];

  v15 = self;
  v40 = v4;
  if (v14)
  {
    v16 = v7;
    v17 = [v4 objectForKeyedSubscript:@"phoneNumbers"];
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
          v23 = [v22 index];
          v24 = [v17 objectForKeyedSubscript:v23];

          [(IDSStewieProvisionMessage *)v15 addToCorrectResponseDictionaryForRequest:v22 overallResponseCode:v45 overallFailureMessage:v16 requestSpecificError:v24 forceIntoFailures:v17 != 0];
        }

        v19 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v19);
    }

    v4 = v40;
    self = v15;
    v7 = v16;
  }

  v25 = [(IDSStewieProvisionMessage *)self sessionKeyInfos];

  if (v25)
  {
    obja = [v4 objectForKeyedSubscript:@"addSessionKeys"];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v42 = [(IDSStewieProvisionMessage *)self sessionKeyInfos];
    v26 = [v42 countByEnumeratingWithState:&v46 objects:v54 count:16];
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
            objc_enumerationMutation(v42);
          }

          v30 = *(*(&v46 + 1) + 8 * j);
          v31 = [v30 keyEPKI];
          if (v31)
          {
            v32 = [v30 keyEPKI];
            v33 = [v32 __imHexString];
            v34 = [obja objectForKeyedSubscript:v33];

            self = v15;
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

          [(IDSStewieProvisionMessage *)self addToCorrectResponseDictionaryForRequest:v35 overallResponseCode:v45 overallFailureMessage:v7 requestSpecificError:v34 forceIntoFailures:v36 == 0];
        }

        v27 = [v42 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v27);
    }

    v4 = v41;
  }

  v38 = [(IDSStewieProvisionMessage *)self clearInfo];

  if (v38)
  {
    v39 = [(IDSStewieProvisionMessage *)self clearInfo];
    [(IDSStewieProvisionMessage *)self addToCorrectResponseDictionaryForRequest:v39 overallResponseCode:v45 overallFailureMessage:v7 requestSpecificError:0];
  }
}

- (id)successfulResponsesOfType:(unint64_t)a3
{
  v4 = [(IDSStewieProvisionMessage *)self successes];
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (id)failuresOfType:(unint64_t)a3
{
  v4 = [(IDSStewieProvisionMessage *)self failures];
  v5 = [NSNumber numberWithUnsignedInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  return v6;
}

- (id)failuresOfType:(unint64_t)a3 withDifferingResponseCode:(int64_t)a4
{
  v6 = [(IDSStewieProvisionMessage *)self failures];
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  v8 = [v6 objectForKeyedSubscript:v7];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10043E7C4;
  v11[3] = &unk_100BDC458;
  v11[4] = a4;
  v9 = [v8 __imArrayByFilteringWithBlock:v11];

  return v9;
}

- (void)addToCorrectResponseDictionaryForRequest:(id)a3 overallResponseCode:(int64_t)a4 overallFailureMessage:(id)a5 requestSpecificError:(id)a6 forceIntoFailures:(BOOL)a7
{
  v7 = a7;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = v13;
  v16 = [v14 objectForKeyedSubscript:@"status"];

  v17 = v15;
  if (v16)
  {
    v18 = [v14 objectForKeyedSubscript:@"status"];
    a4 = [v18 integerValue];

    v17 = [v14 objectForKeyedSubscript:@"message"];

    if (v17)
    {
      v19 = +[IDSFoundationLog stewieProvisioning];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 138543874;
        v30 = v17;
        v31 = 2048;
        v32 = a4;
        v33 = 2112;
        v34 = v12;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Provisioning sub error found { serverErrorDetail: %{public}@, code: %ld, request: %@ }", &v29, 0x20u);
      }
    }
  }

  if (a4 || v7)
  {
    v20 = [(IDSStewieProvisionMessage *)self failures];
  }

  else
  {
    v20 = [(IDSStewieProvisionMessage *)self successes];
  }

  v21 = v20;
  v22 = [[IDSStewieProvisionInfoResponse alloc] initWithRequest:v12 responseCode:a4 failureMessage:v17 additionalInfo:v14];
  v23 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 type]);
  v24 = [v21 objectForKeyedSubscript:v23];

  if (!v24)
  {
    v25 = objc_alloc_init(NSMutableArray);
    v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 type]);
    [v21 setObject:v25 forKeyedSubscript:v26];
  }

  v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 type]);
  v28 = [v21 objectForKeyedSubscript:v27];
  [v28 addObject:v22];
}

- (id)description
{
  v14 = objc_opt_class();
  v3 = [(IDSStewieProvisionMessage *)self loggingGUID];
  v4 = [(IDSStewieProvisionMessage *)self deviceInfo];
  v5 = [(IDSStewieProvisionMessage *)self phoneNumberInfos];
  v6 = [(IDSStewieProvisionMessage *)self sessionKeyInfos];
  v7 = [v6 count];
  v8 = [(IDSStewieProvisionMessage *)self smsConfig];
  v9 = [(IDSStewieProvisionMessage *)self companionPhoneNumbers];
  v10 = [(IDSStewieProvisionMessage *)self companionDeviceUDIDs];
  v11 = [(IDSStewieProvisionMessage *)self clearInfo];
  v12 = [NSString stringWithFormat:@"<%@: %p { GUID: %@, deviceInfo: %@, phoneInfos: %@, sessionKeyCount: %ld, smsConfig: %@, companionPhoneNumbers: %@, companionDeviceUDIDs: %@, clear: %@ }>", v14, self, v3, v4, v5, v7, v8, v9, v10, v11];

  return v12;
}

@end