@interface FudPersonalizer
- (BOOL)personalizeWithServer:(id)a3;
- (FudPersonalizer)initWithDelegate:(id)a3;
- (__CFDictionary)createPersonalizationManifestCFDict:(id)a3;
- (__CFDictionary)createPersonalizationObjectCFDict:(id)a3;
- (void)dealloc;
- (void)doPersonalization:(id)a3;
- (void)freePersonalizationData;
- (void)overrideServerURL:(id)a3;
@end

@implementation FudPersonalizer

- (FudPersonalizer)initWithDelegate:(id)a3
{
  if (a3)
  {
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v6 = dispatch_queue_create("com.apple.fud.personalizer", v5);
    self->_personalizationQueue = v6;
    if (v6)
    {
      v9.receiver = self;
      v9.super_class = FudPersonalizer;
      v7 = [(FudPersonalizer *)&v9 init];
      self = v7;
      if (v7)
      {
        v7->_delegate = a3;
        *&v7->_manifestDict = 0u;
        *&v7->_serverRequestDict = 0u;
        *&v7->_responseData = 0u;
        *&v7->_amai = 0u;
        v7->_overrideSecurityDomain = 0;
      }

      else
      {
        sub_10004A9A4();
      }
    }

    else
    {
      sub_10004A9DC();
    }
  }

  else
  {
    sub_10004AA14();
  }

  return self;
}

- (void)freePersonalizationData
{
  manifestDict = self->_manifestDict;
  if (manifestDict)
  {
    CFRelease(manifestDict);
    self->_manifestDict = 0;
  }

  objectsDict = self->_objectsDict;
  if (objectsDict)
  {
    CFRelease(objectsDict);
    self->_objectsDict = 0;
  }

  serverRequestDict = self->_serverRequestDict;
  if (serverRequestDict)
  {
    CFRelease(serverRequestDict);
    self->_serverRequestDict = 0;
  }

  serverResponseDict = self->_serverResponseDict;
  if (serverResponseDict)
  {
    CFRelease(serverResponseDict);
    self->_serverResponseDict = 0;
  }

  responseData = self->_responseData;
  if (responseData)
  {
    CFRelease(responseData);
    self->_responseData = 0;
  }

  amai = self->_amai;
  if (amai)
  {
    CFRelease(amai);
    self->_amai = 0;
  }

  ticketName = self->_ticketName;
  if (ticketName)
  {
    CFRelease(ticketName);
    self->_ticketName = 0;
  }
}

- (void)dealloc
{
  personalizationQueue = self->_personalizationQueue;
  if (personalizationQueue)
  {
    dispatch_release(personalizationQueue);
  }

  [(FudPersonalizer *)self freePersonalizationData];
  serverURL = self->_serverURL;
  if (serverURL)
  {
    CFRelease(serverURL);
    self->_serverURL = 0;
  }

  v5.receiver = self;
  v5.super_class = FudPersonalizer;
  [(FudPersonalizer *)&v5 dealloc];
}

- (void)overrideServerURL:(id)a3
{
  serverURL = self->_serverURL;
  if (serverURL)
  {
    CFRelease(serverURL);
    self->_serverURL = 0;
  }

  if (a3)
  {
    v6 = CFRetain(a3);
  }

  else
  {
    v6 = 0;
  }

  self->_serverURL = v6;
}

- (void)doPersonalization:(id)a3
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = sub_1000121C0;
  v15 = sub_1000121D0;
  v16 = 0;
  if (self->_delegate)
  {
    if (self->_personalizationQueue)
    {
      if (a3)
      {
        if ([a3 responseFormat] > 2)
        {
          v7 = @"Invalid response format";
        }

        else if ([a3 responseFormat] && !objc_msgSend(a3, "payload"))
        {
          v7 = @"Response format requires payload";
        }

        else
        {
          if ([a3 responseFormat] == 1 || !objc_msgSend(a3, "responseAlignment"))
          {
            [(FudPersonalizer *)self freePersonalizationData];
            v5 = a3;
            v12[5] = v5;
            personalizationQueue = self->_personalizationQueue;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_1000121DC;
            block[3] = &unk_100081760;
            block[5] = a3;
            block[6] = &v11;
            block[4] = self;
            dispatch_async(personalizationQueue, block);
            goto LABEL_10;
          }

          v7 = @"Response format doesn't support alignment";
        }
      }

      else
      {
        v7 = @"Personalization request=nil";
      }
    }

    else
    {
      v7 = @"Personalization queue=nil";
    }
  }

  else
  {
    v7 = @"Personalization delegate=nil";
  }

  v8 = FUDError();
  FudLog();
  delegate = self->_delegate;
  if (delegate)
  {
    [(FudPersonalizerDelegate *)delegate personalizationDone:a3 response:0 error:v8, "[FudPersonalizer doPersonalization:]", v7];
  }

LABEL_10:
  _Block_object_dispose(&v11, 8);
}

- (__CFDictionary)createPersonalizationObjectCFDict:(id)a3
{
  if (![a3 objectTag])
  {
    sub_10004AAF4();
    return 0;
  }

  if (![a3 digest])
  {
    sub_10004AABC();
    return 0;
  }

  if (([a3 isEffectiveProductionModeSet] & 1) == 0)
  {
    sub_10004AA4C();
    return 0;
  }

  if (([a3 isEffectiveSecurityModeSet] & 1) == 0)
  {
    v12 = "[FudPersonalizer createPersonalizationObjectCFDict:]";
    FudLog();
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    if ([a3 isEffectiveSecurityModeSet])
    {
      v5 = [a3 effectiveSecurityMode];
      v6 = &kCFBooleanTrue;
      if (!v5)
      {
        v6 = &kCFBooleanFalse;
      }

      CFDictionarySetValue(Mutable, @"ESEC", *v6);
    }

    if ([a3 isEffectiveProductionModeSet])
    {
      v7 = [a3 effectiveProductionMode];
      v8 = &kCFBooleanTrue;
      if (!v7)
      {
        v8 = &kCFBooleanFalse;
      }

      CFDictionarySetValue(Mutable, @"EPRO", *v8);
    }

    if ([a3 isTrustedSet])
    {
      v9 = [a3 trusted];
      v10 = &kCFBooleanTrue;
      if (!v9)
      {
        v10 = &kCFBooleanFalse;
      }

      CFDictionarySetValue(Mutable, @"Trusted", *v10);
    }

    CFDictionarySetValue(Mutable, @"Digest", [a3 digest]);
  }

  else
  {
    sub_10004AA84();
  }

  return Mutable;
}

- (__CFDictionary)createPersonalizationManifestCFDict:(id)a3
{
  if (![a3 requestName] || !objc_msgSend(a3, "chipID") || !objc_msgSend(a3, "ecID") && !objc_msgSend(a3, "extEcID") && !objc_msgSend(a3, "globalSigning") || !objc_msgSend(a3, "isProductionModeSet") || !objc_msgSend(a3, "nonceHash") || !objc_msgSend(a3, "objectList") || (Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks)) == 0)
  {
    sub_10004AB2C();
    return 0;
  }

  v6 = Mutable;
  if ([a3 requestPrefix])
  {
    v7 = CFStringCreateMutable(kCFAllocatorDefault, 0);
    v8 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    sub_100011C90(v8, @"ApBoardID", [a3 requestPrefix], @"BoardID");
    sub_100011C90(v8, @"ApChipID", [a3 requestPrefix], @"ChipID");
    sub_100011C90(v8, @"ApECID", [a3 requestPrefix], @"ECID");
    sub_100011C90(v8, @"ApSecurityDomain", [a3 requestPrefix], @"SecurityDomain");
    sub_100011C90(v8, @"ApProductionMode", [a3 requestPrefix], @"ProductionMode");
    sub_100011C90(v8, @"ApManifestEpoch", [a3 requestPrefix], @"ManifestEpoch");
    if ([a3 isSecurityModeSet])
    {
      sub_100011C90(v8, @"ApSecurityMode", [a3 requestPrefix], @"SecurityMode");
    }

    sub_100011C90(v8, @"ApNonce", [a3 requestPrefix], @"Nonce");
    v9 = CFStringCreateMutable(kCFAllocatorDefault, 0);
    CFStringAppendFormat(v9, 0, @"@%@", @"ApImg4Ticket");
    sub_100011D2C(v8, v9, [a3 requestPrefix], @"Ticket");
    CFRelease(v9);
    CFStringAppendFormat(v7, 0, @"%@,%@", [a3 requestPrefix], @"Ticket");
    self->_ticketName = v7;
    FudLog();
    CFDictionarySetValue(v6, @"APTagOverrides", v8);
    CFRelease(v8);
  }

  else
  {
    self->_ticketName = CFStringCreateCopy(kCFAllocatorDefault, @"ApImg4Ticket");
  }

  v10 = CFStringCreateMutable(kCFAllocatorDefault, 0);
  CFStringAppendFormat(v10, 0, @"@%@", @"ApImg4Ticket");
  CFDictionarySetValue(v6, v10, kCFBooleanTrue);
  CFRelease(v10);
  sub_100011C24(v6, @"ApBoardID", [a3 boardID]);
  sub_100011C24(v6, @"ApChipID", [a3 chipID]);
  if ([a3 globalSigning])
  {
    v11 = @"UseGlobalSigning";
    v12 = v6;
    v13 = kCFBooleanTrue;
  }

  else
  {
    if (![a3 extEcID])
    {
      sub_100011BB8(v6, @"ApECID", [a3 ecID]);
      goto LABEL_20;
    }

    v13 = [a3 extEcID];
    v11 = @"ApECID";
    v12 = v6;
  }

  CFDictionarySetValue(v12, v11, v13);
LABEL_20:
  if (self->_overrideSecurityDomain)
  {
    v14 = 1;
  }

  else
  {
    v14 = [a3 securityDomain];
  }

  sub_100011C24(v6, @"ApSecurityDomain", v14);
  if ([a3 productionMode])
  {
    v15 = kCFBooleanTrue;
  }

  else
  {
    v15 = kCFBooleanFalse;
  }

  CFDictionarySetValue(v6, @"ApProductionMode", v15);
  if ([a3 isSecurityModeSet])
  {
    if ([a3 securityMode])
    {
      v16 = kCFBooleanTrue;
    }

    else
    {
      v16 = kCFBooleanFalse;
    }

    CFDictionarySetValue(v6, @"ApSecurityMode", v16);
  }

  CFDictionarySetValue(v6, @"ApNonce", [a3 nonceHash]);
  if ([a3 isChipEpochSet])
  {
    sub_100011C24(v6, @"ApManifestEpoch", [a3 chipEpoch]);
  }

  if ([a3 enableMixMatch])
  {
    if ([a3 enableMixMatch])
    {
      v17 = kCFBooleanTrue;
    }

    else
    {
      v17 = kCFBooleanFalse;
    }

    CFDictionarySetValue(v6, @"ApAllowMixAndMatch", v17);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = [a3 objectList];
  v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v26 + 1) + 8 * i);
        v24 = [(FudPersonalizer *)self createPersonalizationObjectCFDict:v23];
        if (v24)
        {
          CFDictionarySetValue(v6, [v23 objectTag], v24);
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v20);
  }

  return v6;
}

- (BOOL)personalizeWithServer:(id)a3
{
  v5 = [(FudPersonalizer *)self createPersonalizationManifestCFDict:?];
  self->_manifestDict = v5;
  if (!v5)
  {
    v36 = 2;
    v37 = @"Failed to build manifest dictionary";
    goto LABEL_37;
  }

  v41 = v5;
  FudLog();
  if (!self->_amai)
  {
    v6 = AMAuthInstallCreate();
    self->_amai = v6;
    if (!v6)
    {
      v36 = 1;
      v37 = @"Failed to create Signing Request";
      goto LABEL_37;
    }

    if ([a3 useSSOCredentials])
    {
      if (AMAuthInstallSsoInitialize())
      {
        FudLog();
      }

      else
      {
        amai = self->_amai;
        if (AMAuthInstallSsoEnable())
        {
          v36 = 1;
          v37 = @"Failed to enable SSO";
          goto LABEL_37;
        }

        v10 = self->_amai;
        if (self->_serverURL)
        {
          serverURL = self->_serverURL;
        }

        else
        {
          serverURL = @"https://gs.apple.com:443/";
        }

        CFURLCreateWithString(kCFAllocatorDefault, serverURL, 0);
        if (AMAuthInstallSetSigningServerURL())
        {
          v36 = 1;
          v37 = @"Failed to set Signing Server URL";
          goto LABEL_37;
        }
      }
    }

    else
    {
      v7 = self->_serverURL;
      if (v7)
      {
        v8 = self->_amai;
        CFURLCreateWithString(kCFAllocatorDefault, v7, 0);
        AMAuthInstallSetSigningServerURL();
      }
    }

    AMAuthInstallLogSetHandler();
  }

  v12 = self->_serverURL;
  if (v12)
  {
    CFStringGetCStringPtr(v12, 0x8000100u);
    FudLog();
  }

  v13 = self->_amai;
  manifestDict = self->_manifestDict;
  if (AMAuthInstallApSetParameters())
  {
    v36 = 1;
    v37 = @"Failed to add manifest properties to Signing Request";
    goto LABEL_37;
  }

  Count = CFDictionaryGetCount(self->_manifestDict);
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, Count, self->_manifestDict);
  self->_serverRequestDict = MutableCopy;
  CFDictionaryRemoveValue(MutableCopy, @"APTagOverrides");
  v17 = self->_amai;
  serverRequestDict = self->_serverRequestDict;
  PersonalizedResponse = AMAuthInstallApCreatePersonalizedResponse();
  v20 = PersonalizedResponse;
  v42 = PersonalizedResponse;
  FudLog();
  if (v20 == 3194 && ([a3 useSSOCredentials] & 1) == 0)
  {
    [a3 setUseSSOCredentials:1];
    return 0;
  }

  serverResponseDict = self->_serverResponseDict;
  if (!serverResponseDict)
  {
    v36 = 3;
    v37 = @"Failed to generate signed manifest";
    goto LABEL_37;
  }

  Value = CFDictionaryGetValue(serverResponseDict, self->_ticketName);
  if (!Value)
  {
    v36 = 3;
    v37 = @"Failed to retrieve signed manifest";
    goto LABEL_37;
  }

  v23 = Value;
  v24 = [a3 responseFormat];
  if (v24)
  {
    if (v24 == 2)
    {
      v46 = [a3 responseFormat];
      FudLog();
      CFGetAllocator(self->_amai);
      [a3 payload];
      StitchTicket = AMAuthInstallApImg4CreateStitchTicket();
      self->_responseData = StitchTicket;
      if (!StitchTicket)
      {
        v36 = 4;
        v37 = @"Failed to stitch img4 response";
        goto LABEL_37;
      }
    }

    else
    {
      if (v24 != 1)
      {
        v36 = 2;
        v37 = @"Invalid response format";
        goto LABEL_37;
      }

      v25 = [a3 payload];
      Length = CFDataGetLength(v25);
      v27 = CFDataGetLength(v23);
      v28 = CFDataCreateMutableCopy(kCFAllocatorDefault, 0, v25);
      v43 = [a3 responseFormat];
      FudLog();
      BytePtr = CFDataGetBytePtr(v23);
      CFDataAppendBytes(v28, BytePtr, v27);
      MutableBytePtr = CFDataGetMutableBytePtr(v28);
      *(MutableBytePtr + 4) = Length;
      *(MutableBytePtr + 5) = v27;
      if ([a3 chipID] == 8194)
      {
        *(MutableBytePtr + 1) = 0x1234567898765432;
      }

      if ([a3 responseAlignment])
      {
        v31 = [a3 responseAlignment];
        v32 = [a3 responseAlignment];
        CFDataIncreaseLength(v28, (v31 + (v27 + Length) / v32 * v32 - (v27 + Length)) % [a3 responseAlignment]);
      }

      v33 = CFDataGetBytePtr(v28);
      v34 = CFDataGetLength(v28);
      StitchTicket = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, v33, v34, kCFAllocatorDefault);
      self->_responseData = StitchTicket;
      if (!StitchTicket)
      {
        v36 = 4;
        v37 = @"Failed to stitch ftab response";
LABEL_37:
        sub_10004AB60(v36, v37, self, a3);
        return 1;
      }
    }

    [(FudPersonalizerDelegate *)self->_delegate personalizationDone:a3 response:StitchTicket error:0, v40, v44];
  }

  else
  {
    v45 = [a3 responseFormat];
    FudLog();
    v39 = CFRetain(v23);
    self->_responseData = v39;
    [(FudPersonalizerDelegate *)self->_delegate personalizationDone:a3 response:v39 error:0, "[FudPersonalizer personalizeWithServer:]", v45];
  }

  return 1;
}

@end