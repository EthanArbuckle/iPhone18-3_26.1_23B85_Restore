@interface CertUIPrompt
+ (id)promptQueue;
+ (id)stringForResponse:(int)response;
- (BOOL)_isRootCertificateFromTrust:(__SecTrust *)trust;
- (CertUIPrompt)init;
- (NSString)connectionDisplayName;
- (id)_copyPropertiesFromTrust:(__SecTrust *)trust;
- (id)_digestFromTrust:(__SecTrust *)trust;
- (id)_expirationFromTrust:(__SecTrust *)trust;
- (id)_issuerFromTrust:(__SecTrust *)trust;
- (id)_newUserInfoWithHostname:(id)hostname trust:(__SecTrust *)trust options:(id)options;
- (id)_propertyNamed:(id)named ofType:(id)type inProperties:(id)properties;
- (id)_purposeFromTrustProperties:(id)properties;
- (id)_sendablePropertiesFromProperties:(id)properties;
- (id)_sendablePropertiesFromTrust:(__SecTrust *)trust;
- (id)_sendablePropertyFromProperty:(id)property;
- (id)_subtitleFromTrust:(__SecTrust *)trust;
- (id)_titleFromTrust:(__SecTrust *)trust;
- (id)description;
- (int)_responseFromReplyDict:(id)dict;
- (int)_sendRemoteMessageWithPromptOptions:(id)options;
- (int)showAndWaitForResponse;
- (void)_informConsumerOfResponse:(int)response;
- (void)dealloc;
- (void)setTrust:(__SecTrust *)trust;
- (void)showPromptWithOptions:(id)options responseBlock:(id)block;
@end

@implementation CertUIPrompt

+ (id)stringForResponse:(int)response
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = xmmword_278DB2810;
  v9 = @"CertUIResponseAllowPermanently";
  if (response > 2)
  {
    v3 = @"Unknown";
  }

  else
  {
    v3 = *(&v8 + response);
  }

  v4 = v3;
  for (i = 16; i != -8; i -= 8)
  {
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (CertUIPrompt)init
{
  v4.receiver = self;
  v4.super_class = CertUIPrompt;
  v2 = [(CertUIPrompt *)&v4 init];
  if (v2)
  {
    CertUILoggingInitialize();
  }

  return v2;
}

- (void)dealloc
{
  trust = self->_trust;
  if (trust)
  {
    CFRelease(trust);
    self->_trust = 0;
  }

  v4.receiver = self;
  v4.super_class = CertUIPrompt;
  [(CertUIPrompt *)&v4 dealloc];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CertUIPrompt;
  v3 = [(CertUIPrompt *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@": host: %@ service: %@", self->_host, self->_service];

  return v4;
}

- (void)setTrust:(__SecTrust *)trust
{
  trust = self->_trust;
  if (trust != trust)
  {
    if (trust)
    {
      CFRelease(trust);
      self->_trust = 0;
    }

    if (trust)
    {
      v6 = CFRetain(trust);
    }

    else
    {
      v6 = 0;
    }

    self->_trust = v6;
  }
}

- (NSString)connectionDisplayName
{
  connectionDisplayName = self->_connectionDisplayName;
  if (connectionDisplayName)
  {
    processName = connectionDisplayName;
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [mainBundle objectForInfoDictionaryKey:@"CFBundleDisplayName"];

    if (v5)
    {
      processName = v5;
    }

    else
    {
      processInfo = [MEMORY[0x277CCAC38] processInfo];
      processName = [processInfo processName];
    }
  }

  return processName;
}

+ (id)promptQueue
{
  if (promptQueue_sQueueOnce != -1)
  {
    +[CertUIPrompt promptQueue];
  }

  v3 = promptQueue_sPromptQueue;

  return v3;
}

uint64_t __27__CertUIPrompt_promptQueue__block_invoke()
{
  promptQueue_sPromptQueue = dispatch_queue_create("com.apple.CertUIPromptQueue", 0);

  return MEMORY[0x2821F96F8]();
}

- (id)_sendablePropertyFromProperty:(id)property
{
  propertyCopy = property;
  v5 = [propertyCopy objectForKey:*MEMORY[0x277CDC508]];
  if ([v5 isEqualToString:*MEMORY[0x277CDC538]])
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:propertyCopy];

    v7 = *MEMORY[0x277CDC510];
    v8 = [propertyCopy objectForKey:*MEMORY[0x277CDC510]];
    absoluteString = [v8 absoluteString];
  }

  else
  {
    v6 = propertyCopy;
    if (![v5 isEqualToString:*MEMORY[0x277CDC528]])
    {
      goto LABEL_6;
    }

    v6 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:propertyCopy];

    v7 = *MEMORY[0x277CDC510];
    v8 = [propertyCopy objectForKey:*MEMORY[0x277CDC510]];
    absoluteString = [(CertUIPrompt *)self _sendablePropertiesFromProperties:v8];
  }

  v10 = absoluteString;
  [v6 setObject:absoluteString forKey:v7];

LABEL_6:

  return v6;
}

- (id)_sendablePropertiesFromProperties:(id)properties
{
  v19 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(propertiesCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = propertiesCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CertUIPrompt *)self _sendablePropertyFromProperty:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_copyPropertiesFromTrust:(__SecTrust *)trust
{
  if (!trust)
  {
    return 0;
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  CertificateCount = SecTrustGetCertificateCount(trust);
  if (CertificateCount >= 1)
  {
    v6 = 0;
    v7 = CertificateCount & 0x7FFFFFFF;
    do
    {
      SecTrustGetCertificateAtIndex(trust, v6);
      v8 = SecCertificateCopyProperties();
      if (v8)
      {
        v9 = v8;
        [v4 addObject:v8];
        CFRelease(v9);
      }

      ++v6;
    }

    while (v7 != v6);
  }

  return v4;
}

- (id)_sendablePropertiesFromTrust:(__SecTrust *)trust
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = [(CertUIPrompt *)self _copyPropertiesFromTrust:trust];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(CertUIPrompt *)self _sendablePropertiesFromProperties:*(*(&v14 + 1) + 8 * i), v14];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_titleFromTrust:(__SecTrust *)trust
{
  if (SecTrustGetCertificateCount(trust) < 1)
  {
    v5 = 0;
  }

  else
  {
    CertificateAtIndex = SecTrustGetCertificateAtIndex(trust, 0);
    v5 = SecCertificateCopySubjectSummary(CertificateAtIndex);
  }

  return v5;
}

- (id)_issuerFromTrust:(__SecTrust *)trust
{
  if (SecTrustGetCertificateCount(trust) < 1)
  {
    v4 = 0;
  }

  else
  {
    SecTrustGetCertificateAtIndex(trust, 0);
    v4 = SecCertificateCopyIssuerSummary();
  }

  return v4;
}

- (id)_subtitleFromTrust:(__SecTrust *)trust
{
  CertificateCount = SecTrustGetCertificateCount(trust);
  if (CertificateCount < 2)
  {
    v6 = 0;
  }

  else
  {
    CertificateAtIndex = SecTrustGetCertificateAtIndex(trust, CertificateCount - 1);
    v6 = SecCertificateCopySubjectSummary(CertificateAtIndex);
  }

  return v6;
}

- (id)_propertyNamed:(id)named ofType:(id)type inProperties:(id)properties
{
  v28 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  typeCopy = type;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = properties;
  v8 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    v11 = *MEMORY[0x277CDC4F8];
    v12 = *MEMORY[0x277CDC508];
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [v14 objectForKey:{v11, typeCopy}];
        if ([v15 isEqualToString:namedCopy])
        {
          v16 = [v14 objectForKey:v12];
          v17 = [v16 isEqualToString:typeCopy];

          if (v17)
          {
            v18 = [v14 objectForKey:*MEMORY[0x277CDC510]];
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  v18 = 0;
LABEL_13:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_purposeFromTrustProperties:(id)properties
{
  propertiesCopy = properties;
  if ([propertiesCopy count])
  {
    v5 = [propertiesCopy objectAtIndex:0];
    v6 = [(CertUIPrompt *)self _propertyNamed:@"2.5.29.37" ofType:*MEMORY[0x277CDC528] inProperties:v5];
    if (v6)
    {
      v7 = [(CertUIPrompt *)self _propertyNamed:@"Purpose" ofType:*MEMORY[0x277CDC530] inProperties:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_expirationFromTrust:(__SecTrust *)trust
{
  CertificateCount = SecTrustGetCertificateCount(trust);
  if (CertificateCount < 1)
  {
    goto LABEL_10;
  }

  v5 = CertificateCount;
  v6 = 0;
  v7 = 0;
  v8 = *MEMORY[0x277CBECC8];
  do
  {
    if (SecTrustGetCertificateAtIndex(trust, v7))
    {
      SecCertificateNotValidAfter();
      if ((v6 & (v9 >= v8)) == 0)
      {
        v8 = v9;
      }

      v6 = 1;
    }

    ++v7;
  }

  while (v5 != v7);
  if (v6)
  {
    v10 = CFDateCreate(*MEMORY[0x277CBECE8], v8);
  }

  else
  {
LABEL_10:
    v10 = 0;
  }

  return v10;
}

- (BOOL)_isRootCertificateFromTrust:(__SecTrust *)trust
{
  if (SecTrustGetCertificateCount(self->_trust) < 1)
  {
    return 0;
  }

  CertificateAtIndex = SecTrustGetCertificateAtIndex(self->_trust, 0);

  return MEMORY[0x28212B290](CertificateAtIndex);
}

- (id)_digestFromTrust:(__SecTrust *)trust
{
  if (SecTrustGetCertificateCount(trust) < 1)
  {
    v4 = 0;
  }

  else
  {
    SecTrustGetCertificateAtIndex(trust, 0);
    v4 = [SecCertificateGetSHA1Digest() copy];
  }

  return v4;
}

- (id)_newUserInfoWithHostname:(id)hostname trust:(__SecTrust *)trust options:(id)options
{
  hostnameCopy = hostname;
  optionsCopy = options;
  v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:12];
  v11 = v10;
  if (hostnameCopy)
  {
    [v10 setObject:hostnameCopy forKey:@"kCertUITrustHostnameKey"];
  }

  v12 = [(CertUIPrompt *)self _sendablePropertiesFromTrust:trust];
  if (v12)
  {
    [v11 setObject:v12 forKey:@"kCertUITrustPropertiesKey"];
  }

  v13 = [(CertUIPrompt *)self _titleFromTrust:trust];
  if (v13)
  {
    [v11 setObject:v13 forKey:@"kCertUITrustTitleKey"];
  }

  v14 = [(CertUIPrompt *)self _issuerFromTrust:trust];
  if (v14)
  {
    [v11 setObject:v14 forKey:@"kCertUITrustIssuerKey"];
  }

  v15 = [(CertUIPrompt *)self _subtitleFromTrust:trust];
  if (v15)
  {
    [v11 setObject:v15 forKey:@"kCertUITrustSubtitleKey"];
  }

  v35 = v12;
  v16 = [(CertUIPrompt *)self _purposeFromTrustProperties:v12];
  if (v16)
  {
    [v11 setObject:v16 forKey:@"kCertUITrustPurposeKey"];
  }

  v33 = v14;
  v17 = [(CertUIPrompt *)self _expirationFromTrust:trust];
  if (v17)
  {
    [v11 setObject:v17 forKey:@"kCertUITrustExpirationKey"];
  }

  v31 = v17;
  v34 = v13;
  v18 = [(CertUIPrompt *)self _isRootCertificateFromTrust:trust];
  v19 = [MEMORY[0x277CCABB0] numberWithBool:v18];
  [v11 setObject:v19 forKey:@"kCertUITrustIsRootCertificateKey"];

  v20 = [(CertUIPrompt *)self _digestFromTrust:trust];
  if (v20)
  {
    [v11 setObject:v20 forKey:@"kCertUITrustDigestKey"];
  }

  v21 = hostnameCopy;
  v22 = [optionsCopy objectForKey:@"allowCertificateTrust"];
  v32 = v16;
  if (v22)
  {
    [v11 setObject:v22 forKey:@"kCertUITrustAllowCertificateTrust"];
    v23 = [v22 BOOLValue] ^ 1;
  }

  else
  {
    v23 = 0;
  }

  v24 = v15;
  v25 = [optionsCopy objectForKey:@"showCertificateDetails"];
  if (v25)
  {
    [v11 setObject:v25 forKey:@"kCertUITrustShowCertificateDetailsKey"];
    v26 = [v25 BOOLValue] ^ 1;
  }

  else
  {
    v26 = 0;
  }

  v27 = optionsCopy;
  v28 = [optionsCopy objectForKey:@"showContinue"];
  v29 = v28;
  if ((v23 | v26))
  {

    v29 = MEMORY[0x277CBEC28];
LABEL_26:
    [v11 setObject:v29 forKey:@"kCertUITrustShowContinueKey"];

    goto LABEL_27;
  }

  if (v28)
  {
    goto LABEL_26;
  }

LABEL_27:

  return v11;
}

- (int)_responseFromReplyDict:(id)dict
{
  v15 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  v4 = [dictCopy objectForKey:@"kCertUITrustResponseKey"];

  if (!v4)
  {
    v11 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14[0]) = 0;
      v8 = "Can't find value for trust response key";
      v9 = v11;
      v10 = 2;
      goto LABEL_7;
    }

LABEL_8:
    intValue = 0;
    goto LABEL_9;
  }

  v5 = [dictCopy objectForKey:@"kCertUITrustResponseKey"];
  intValue = [v5 intValue];

  if (intValue >= 3)
  {
    v7 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      v14[0] = 67109120;
      v14[1] = intValue;
      v8 = "Invalid value for response %d";
      v9 = v7;
      v10 = 8;
LABEL_7:
      _os_log_impl(&dword_2433D3000, v9, OS_LOG_TYPE_ERROR, v8, v14, v10);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:

  v12 = *MEMORY[0x277D85DE8];
  return intValue;
}

- (int)_sendRemoteMessageWithPromptOptions:(id)options
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [(CertUIPrompt *)self _newUserInfoWithHostname:self->_host trust:self->_trust options:options];
  _messagingCenter = [(CertUIPrompt *)self _messagingCenter];
  v12 = 0;
  v6 = [_messagingCenter sendMessageAndReceiveReplyName:@"kCertUIPresentTrustInfoMessage" userInfo:v4 error:&v12];
  v7 = v12;

  if (v7)
  {
    v8 = _CertUILogObjects;
    if (os_log_type_enabled(_CertUILogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_2433D3000, v8, OS_LOG_TYPE_ERROR, "Error receiving blocking reply from ui app %@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    v9 = [(CertUIPrompt *)self _responseFromReplyDict:v6];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)showPromptWithOptions:(id)options responseBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  v8 = +[CertUIPrompt promptQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__CertUIPrompt_showPromptWithOptions_responseBlock___block_invoke;
  block[3] = &unk_278DB2830;
  block[4] = self;
  v12 = optionsCopy;
  v13 = blockCopy;
  v9 = blockCopy;
  v10 = optionsCopy;
  dispatch_async(v8, block);
}

uint64_t __52__CertUIPrompt_showPromptWithOptions_responseBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _sendRemoteMessageWithPromptOptions:*(a1 + 40)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)_informConsumerOfResponse:(int)response
{
  (*(self->_responseBlock + 2))();
  responseBlock = self->_responseBlock;
  self->_responseBlock = 0;
}

- (int)showAndWaitForResponse
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = +[CertUIPrompt promptQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__CertUIPrompt_showAndWaitForResponse__block_invoke;
  v5[3] = &unk_278DB2858;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LODWORD(self) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return self;
}

uint64_t __38__CertUIPrompt_showAndWaitForResponse__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _sendRemoteMessage];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end