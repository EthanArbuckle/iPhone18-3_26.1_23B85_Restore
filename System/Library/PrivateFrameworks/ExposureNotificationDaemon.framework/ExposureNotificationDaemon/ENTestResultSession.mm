@interface ENTestResultSession
+ (id)sessionWithVerificationCode:(id)code configuration:(id)configuration maxRetryTime:(unint64_t)time nonce:(id)nonce URLSession:(id)session queue:(id)queue error:(id *)error;
- (BOOL)_checkInvalidatedAndReturnError:(id *)error;
- (BOOL)_performVerificationRequestWithError:(id *)error;
- (id)_initWithAgencyAPIKey:(id)key certificateURL:(id)l acceptedReportTypes:(id)types healthAuthorityID:(id)d maxRetryTime:(unint64_t)time nonce:(id)nonce queue:(id)queue region:(id)self0 uploadURL:(id)self1 URLSession:(id)self2 verificationCode:(id)self3 verifyURL:(id)self4;
- (id)getMetadataAndReturnError:(id *)error;
- (void)_flushVerificationCompletionsWithError:(id)error;
- (void)_performCertificateRequestWithToken:(id)token temporaryExposureKeys:(id)keys completionHandler:(id)handler;
- (void)_performUploadRequestWithTemporaryExposureKeys:(id)keys revisionToken:(id)token certificate:(id)certificate HMACKey:(id)key userMetadata:(id)metadata completionHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
- (void)uploadTemporaryExposureKeys:(id)keys revisionToken:(id)token userMetadata:(id)metadata completionHandler:(id)handler;
- (void)verifyCodeWithCompletionHandler:(id)handler;
@end

@implementation ENTestResultSession

- (id)_initWithAgencyAPIKey:(id)key certificateURL:(id)l acceptedReportTypes:(id)types healthAuthorityID:(id)d maxRetryTime:(unint64_t)time nonce:(id)nonce queue:(id)queue region:(id)self0 uploadURL:(id)self1 URLSession:(id)self2 verificationCode:(id)self3 verifyURL:(id)self4
{
  keyCopy = key;
  lCopy = l;
  typesCopy = types;
  typesCopy2 = types;
  dCopy = d;
  nonceCopy = nonce;
  queueCopy = queue;
  regionCopy = region;
  rLCopy = rL;
  sessionCopy = session;
  codeCopy = code;
  uRLCopy = uRL;
  v54.receiver = self;
  v54.super_class = ENTestResultSession;
  v26 = [(ENTestResultSession *)&v54 init];
  if (v26)
  {
    v27 = [keyCopy copy];
    agencyAPIKey = v26->_agencyAPIKey;
    v26->_agencyAPIKey = v27;

    v29 = [lCopy copy];
    certificateURL = v26->_certificateURL;
    v26->_certificateURL = v29;

    objc_storeStrong(&v26->_acceptedReportTypes, typesCopy);
    v31 = [dCopy copy];
    healthAuthorityID = v26->_healthAuthorityID;
    v26->_healthAuthorityID = v31;

    v26->_maxRetryTime = time;
    if (nonceCopy)
    {
      v33 = [nonceCopy copy];
    }

    else
    {
      v33 = 0;
    }

    nonce = v26->_nonce;
    v26->_nonce = v33;

    v35 = objc_alloc_init(ENTestResultPersistentSession);
    persistentSession = v26->_persistentSession;
    v26->_persistentSession = v35;

    objc_storeStrong(&v26->_queue, queue);
    v37 = [regionCopy copy];
    region = v26->_region;
    v26->_region = v37;

    v26->_state = 0;
    objc_storeStrong(&v26->_URLSession, session);
    v39 = [rLCopy copy];
    uploadURL = v26->_uploadURL;
    v26->_uploadURL = v39;

    uUID = [MEMORY[0x277CCAD70] UUID];
    UUID = v26->_UUID;
    v26->_UUID = uUID;

    v43 = [codeCopy copy];
    verificationCode = v26->_verificationCode;
    v26->_verificationCode = v43;

    v45 = [uRLCopy copy];
    verificationURL = v26->_verificationURL;
    v26->_verificationURL = v45;
  }

  return v26;
}

- (void)dealloc
{
  [(ENTestResultSession *)self invalidate];
  v3.receiver = self;
  v3.super_class = ENTestResultSession;
  [(ENTestResultSession *)&v3 dealloc];
}

+ (id)sessionWithVerificationCode:(id)code configuration:(id)configuration maxRetryTime:(unint64_t)time nonce:(id)nonce URLSession:(id)session queue:(id)queue error:(id *)error
{
  codeCopy = code;
  configurationCopy = configuration;
  nonceCopy = nonce;
  sessionCopy = session;
  queueCopy = queue;
  testVerificationAPIKey = [configurationCopy testVerificationAPIKey];
  if (testVerificationAPIKey)
  {
    testVerificationCertificateURL = [configurationCopy testVerificationCertificateURL];
    if (testVerificationCertificateURL)
    {
      healthAuthorityID = [configurationCopy healthAuthorityID];
      if (healthAuthorityID)
      {
        testVerificationURL = [configurationCopy testVerificationURL];
        if (testVerificationURL)
        {
          tekUploadURL = [configurationCopy tekUploadURL];
          if (tekUploadURL)
          {
            acceptedReportTypes = [configurationCopy acceptedReportTypes];
            v22 = [self alloc];
            region = [configurationCopy region];
            v24 = v22;
            v25 = nonceCopy;
            v26 = [v24 _initWithAgencyAPIKey:testVerificationAPIKey certificateURL:testVerificationCertificateURL acceptedReportTypes:acceptedReportTypes healthAuthorityID:healthAuthorityID maxRetryTime:time nonce:nonceCopy queue:queueCopy region:region uploadURL:tekUploadURL URLSession:sessionCopy verificationCode:codeCopy verifyURL:testVerificationURL];
          }

          else
          {
            if (error)
            {
              ENTestResultErrorF(10);
              *error = v26 = 0;
            }

            else
            {
              v26 = 0;
            }

            v25 = nonceCopy;
          }
        }

        else
        {
          if (error)
          {
            ENTestResultErrorF(10);
            *error = v26 = 0;
          }

          else
          {
            v26 = 0;
          }

          v25 = nonceCopy;
        }
      }

      else
      {
        v25 = nonceCopy;
        if (error)
        {
          ENTestResultErrorF(10);
          *error = v26 = 0;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      if (error)
      {
        ENTestResultErrorF(10);
        *error = v26 = 0;
      }

      else
      {
        v26 = 0;
      }

      v25 = nonceCopy;
    }
  }

  else
  {
    if (error)
    {
      ENTestResultErrorF(10);
      *error = v26 = 0;
    }

    else
    {
      v26 = 0;
    }

    v25 = nonceCopy;
  }

  return v26;
}

- (void)verifyCodeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__ENTestResultSession_verifyCodeWithCompletionHandler___block_invoke;
  v20[3] = &unk_278FD2FA0;
  v20[4] = self;
  v21 = handlerCopy;
  v5 = MEMORY[0x24C214430](v20);
  v19 = 0;
  v6 = [(ENTestResultSession *)self _checkInvalidatedAndReturnError:&v19];
  v7 = v19;
  v8 = v7;
  if (v6)
  {
    state = self->_state;
    if (state <= 0)
    {
      v18 = v7;
      v12 = [(ENTestResultSession *)self _performVerificationRequestWithError:&v18];
      v13 = v18;

      if (!v12)
      {
        (v5)[2](v5, 0, v13);
        v8 = v13;
        goto LABEL_17;
      }

      v8 = v13;
    }

    else
    {
      if (state != 1)
      {
        verificationError = [(ENTestResultPersistentSession *)self->_persistentSession verificationError];
        (v5)[2](v5, verificationError == 0, verificationError);
LABEL_16:

        goto LABEL_17;
      }

      v10 = +[ENLoggingPrefs sharedENLoggingPrefs];
      isSensitiveLoggingAllowed = [v10 isSensitiveLoggingAllowed];

      if (isSensitiveLoggingAllowed && gLogCategory_ENTestResultSession <= 50 && (gLogCategory_ENTestResultSession != -1 || _LogCategory_Initialize()))
      {
        [ENTestResultSession verifyCodeWithCompletionHandler:?];
      }
    }

    verificationCompletions = self->_verificationCompletions;
    if (!verificationCompletions)
    {
      v15 = objc_alloc_init(MEMORY[0x277CBEB10]);
      v16 = self->_verificationCompletions;
      self->_verificationCompletions = v15;

      verificationCompletions = self->_verificationCompletions;
    }

    verificationError = MEMORY[0x24C214430](v5);
    [(NSMutableArray *)verificationCompletions addObject:verificationError];
    goto LABEL_16;
  }

  (v5)[2](v5, 0, v7);
LABEL_17:
}

void __55__ENTestResultSession_verifyCodeWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v6 = [v5 isSensitiveLoggingAllowed];

  if (a2)
  {
    if (v6 && gLogCategory_ENTestResultSession <= 30 && (gLogCategory_ENTestResultSession != -1 || _LogCategory_Initialize()))
    {
      __55__ENTestResultSession_verifyCodeWithCompletionHandler___block_invoke_cold_1(a1, &v9);
      v7 = v9;
LABEL_11:
    }
  }

  else if (v6 && gLogCategory_ENTestResultSession <= 90 && (gLogCategory_ENTestResultSession != -1 || _LogCategory_Initialize()))
  {
    v7 = [*(*(a1 + 32) + 72) UUIDString];
    LogPrintF_safe();
    goto LABEL_11;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2);
}

- (void)uploadTemporaryExposureKeys:(id)keys revisionToken:(id)token userMetadata:(id)metadata completionHandler:(id)handler
{
  v48 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  tokenCopy = token;
  metadataCopy = metadata;
  handlerCopy = handler;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __96__ENTestResultSession_uploadTemporaryExposureKeys_revisionToken_userMetadata_completionHandler___block_invoke;
  v45[3] = &unk_278FD2FC8;
  v45[4] = self;
  v46 = handlerCopy;
  v33 = MEMORY[0x24C214430](v45);
  v14 = +[ENLoggingPrefs sharedENLoggingPrefs];
  isSensitiveLoggingAllowed = [v14 isSensitiveLoggingAllowed];

  if (isSensitiveLoggingAllowed && gLogCategory_ENTestResultSession <= 50 && (gLogCategory_ENTestResultSession != -1 || _LogCategory_Initialize()))
  {
    [ENTestResultSession uploadTemporaryExposureKeys:keysCopy revisionToken:? userMetadata:? completionHandler:?];
  }

  selfCopy = self;
  v34 = metadataCopy;
  v35 = tokenCopy;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v16 = keysCopy;
  v17 = [v16 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v42;
    do
    {
      v20 = 0;
      do
      {
        if (*v42 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v41 + 1) + 8 * v20);
        v22 = +[ENLoggingPrefs sharedENLoggingPrefs];
        isRPILoggingAllowed = [v22 isRPILoggingAllowed];

        if (isRPILoggingAllowed && gLogCategory_ENTestResultSession <= 30 && (gLogCategory_ENTestResultSession != -1 || _LogCategory_Initialize()))
        {
          [ENTestResultSession uploadTemporaryExposureKeys:v21 revisionToken:? userMetadata:? completionHandler:?];
        }

        ++v20;
      }

      while (v18 != v20);
      v24 = [v16 countByEnumeratingWithState:&v41 objects:v47 count:16];
      v18 = v24;
    }

    while (v24);
  }

  verificationToken = [(ENTestResultPersistentSession *)selfCopy->_persistentSession verificationToken];
  if (verificationToken)
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __96__ENTestResultSession_uploadTemporaryExposureKeys_revisionToken_userMetadata_completionHandler___block_invoke_2;
    v36[3] = &unk_278FD2FF0;
    v36[4] = selfCopy;
    v37 = v16;
    v26 = v35;
    v38 = v35;
    v27 = v34;
    v39 = v34;
    v28 = v33;
    v40 = v33;
    [(ENTestResultSession *)selfCopy _performCertificateRequestWithToken:verificationToken temporaryExposureKeys:v37 completionHandler:v36];
  }

  else
  {
    v28 = v33;
    verificationError = [(ENTestResultPersistentSession *)selfCopy->_persistentSession verificationError];
    v27 = v34;
    if (verificationError)
    {
      (v33)[2](v33, 0, 0, verificationError);
    }

    else
    {
      v30 = ENTestResultErrorF(1);
      (v33)[2](v33, 0, 0, v30);
    }

    v26 = v35;
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __96__ENTestResultSession_uploadTemporaryExposureKeys_revisionToken_userMetadata_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a3;
  v7 = a4;
  v8 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v9 = [v8 isSensitiveLoggingAllowed];

  if (a2)
  {
    if (v9 && gLogCategory_ENTestResultSession <= 30 && (gLogCategory_ENTestResultSession != -1 || _LogCategory_Initialize()))
    {
LABEL_9:
      v10 = [*(*(a1 + 32) + 72) UUIDString];
      LogPrintF_safe();
    }
  }

  else if (v9 && gLogCategory_ENTestResultSession <= 90 && (gLogCategory_ENTestResultSession != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_9;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2);
}

uint64_t __96__ENTestResultSession_uploadTemporaryExposureKeys_revisionToken_userMetadata_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    return [*(a1 + 32) _performUploadRequestWithTemporaryExposureKeys:*(a1 + 40) revisionToken:*(a1 + 48) certificate:a2 HMACKey:a3 userMetadata:*(a1 + 56) completionHandler:*(a1 + 64)];
  }

  else
  {
    return (*(*(a1 + 64) + 16))();
  }
}

void __60__ENTestResultSession__performVerificationRequestWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  if (!v5)
  {
    v14 = [v18 metadata];
    v12 = a1 + 32;
    [*(*(a1 + 32) + 32) setFetchedMetadata:v14];

    v15 = [v18 token];
    [*(*(a1 + 32) + 32) setVerificationToken:v15];

    v16 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v17 = [v16 isSensitiveLoggingAllowed];

    if (v17 && gLogCategory_ENTestResultSession <= 30 && (gLogCategory_ENTestResultSession != -1 || _LogCategory_Initialize()))
    {
      __60__ENTestResultSession__performVerificationRequestWithError___block_invoke_cold_2(a1 + 32);
    }

    v13 = 2;
    goto LABEL_17;
  }

  v6 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v7 = [v6 isSensitiveLoggingAllowed];

  if (v7 && gLogCategory_ENTestResultSession <= 90 && (gLogCategory_ENTestResultSession != -1 || _LogCategory_Initialize()))
  {
    __60__ENTestResultSession__performVerificationRequestWithError___block_invoke_cold_1(a1);
  }

  v8 = [v5 domain];
  v9 = [v8 isEqualToString:*MEMORY[0x277CC5BF8]];

  if (v9)
  {
    v10 = [v5 code];
    if (v10 <= 0xB && ((1 << v10) & 0x9D6) != 0)
    {
      *(*(a1 + 32) + 16) = 0;
    }
  }

  v12 = a1 + 32;
  v11 = *(a1 + 32);
  if (*(v11 + 16))
  {
    [*(v11 + 32) setVerificationError:v5];
    v13 = 5;
LABEL_17:
    *(*v12 + 16) = v13;
  }

  [*(a1 + 32) _flushVerificationCompletionsWithError:v5];
}

- (void)_flushVerificationCompletionsWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  p_verificationCompletions = &self->_verificationCompletions;
  if ([(NSMutableArray *)self->_verificationCompletions count])
  {
    v6 = +[ENLoggingPrefs sharedENLoggingPrefs];
    isSensitiveLoggingAllowed = [v6 isSensitiveLoggingAllowed];

    if (isSensitiveLoggingAllowed && gLogCategory_ENTestResultSession <= 30 && (gLogCategory_ENTestResultSession != -1 || _LogCategory_Initialize()))
    {
      [(ENTestResultSession *)self _flushVerificationCompletionsWithError:?];
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = *p_verificationCompletions;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v15 + 1) + 8 * i) + 16))(*(*(&v15 + 1) + 8 * i));
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  v13 = *p_verificationCompletions;
  *p_verificationCompletions = 0;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_performCertificateRequestWithToken:(id)token temporaryExposureKeys:(id)keys completionHandler:(id)handler
{
  tokenCopy = token;
  keysCopy = keys;
  handlerCopy = handler;
  certificate = [(ENTestResultPersistentSession *)self->_persistentSession certificate];
  hMACKey = [(ENTestResultPersistentSession *)self->_persistentSession HMACKey];
  teks = [(ENTestResultPersistentSession *)self->_persistentSession teks];
  v14 = teks;
  if (certificate)
  {
    v15 = hMACKey == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15 || teks == 0)
  {
    agencyAPIKey = self->_agencyAPIKey;
    certificateURL = self->_certificateURL;
    URLSession = self->_URLSession;
    queue = self->_queue;
    v29 = 0;
    v21 = [ENTestResultCertificateRequest certificateRequestWithToken:tokenCopy temporaryExposureKeys:keysCopy APIKey:agencyAPIKey requestURL:certificateURL URLSession:URLSession queue:queue error:&v29];
    v22 = v29;
    networkRequest = self->_networkRequest;
    self->_networkRequest = v21;

    v24 = self->_networkRequest;
    if (v24)
    {
      [(ENTestResultNetworkRequest *)v24 setMaxRetryTime:self->_maxRetryTime];
      v25 = self->_networkRequest;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __99__ENTestResultSession__performCertificateRequestWithToken_temporaryExposureKeys_completionHandler___block_invoke;
      v26[3] = &unk_278FD3040;
      v26[4] = self;
      v27 = keysCopy;
      v28 = handlerCopy;
      [(ENTestResultNetworkRequest *)v25 resumeWithCompletionHandler:v26];
      self->_state = 3;
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v22);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, certificate, hMACKey, 0);
  }
}

void __99__ENTestResultSession__performCertificateRequestWithToken_temporaryExposureKeys_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v13 = [v6 certificate];
  v7 = [v6 symmetricKey];

  v8 = v13;
  if (!v5 && v13 && v7)
  {
    [*(a1[4] + 32) setCertificate:v13];
    [*(a1[4] + 32) setHMACKey:v7];
    [*(a1[4] + 32) setTeks:a1[5]];
    v9 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v10 = [v9 isSensitiveLoggingAllowed];

    if (v10 && gLogCategory_ENTestResultSession <= 30 && (gLogCategory_ENTestResultSession != -1 || _LogCategory_Initialize()))
    {
      __99__ENTestResultSession__performCertificateRequestWithToken_temporaryExposureKeys_completionHandler___block_invoke_cold_1((a1 + 4));
    }

    (*(a1[6] + 16))();
  }

  else
  {
    if (!v5)
    {
      v5 = ENTestResultErrorF(1);
    }

    *(a1[4] + 16) = 2;
    v11 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v12 = [v11 isSensitiveLoggingAllowed];

    if (v12 && gLogCategory_ENTestResultSession <= 90 && (gLogCategory_ENTestResultSession != -1 || _LogCategory_Initialize()))
    {
      __99__ENTestResultSession__performCertificateRequestWithToken_temporaryExposureKeys_completionHandler___block_invoke_cold_2((a1 + 4));
    }

    (*(a1[6] + 16))();
  }
}

- (void)_performUploadRequestWithTemporaryExposureKeys:(id)keys revisionToken:(id)token certificate:(id)certificate HMACKey:(id)key userMetadata:(id)metadata completionHandler:(id)handler
{
  keysCopy = keys;
  tokenCopy = token;
  certificateCopy = certificate;
  keyCopy = key;
  metadataCopy = metadata;
  handlerCopy = handler;
  revisionToken = [(ENTestResultPersistentSession *)self->_persistentSession revisionToken];
  if (revisionToken)
  {
    handlerCopy[2](handlerCopy, 1, revisionToken, 0);
  }

  else
  {
    healthAuthorityID = self->_healthAuthorityID;
    uploadURL = self->_uploadURL;
    URLSession = self->_URLSession;
    queue = self->_queue;
    v32 = 0;
    v25 = [ENTestResultUploadRequest uploadRequestWithCertificate:certificateCopy healthAuthorityID:healthAuthorityID revisionToken:tokenCopy symmetricKey:keyCopy temporaryExposureKeys:keysCopy userMetadata:metadataCopy requestURL:uploadURL URLSession:URLSession queue:queue error:&v32];
    v26 = v32;
    networkRequest = self->_networkRequest;
    self->_networkRequest = v25;

    v28 = self->_networkRequest;
    if (v28)
    {
      [(ENTestResultNetworkRequest *)v28 setMaxRetryTime:self->_maxRetryTime];
      v29 = self->_networkRequest;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __135__ENTestResultSession__performUploadRequestWithTemporaryExposureKeys_revisionToken_certificate_HMACKey_userMetadata_completionHandler___block_invoke;
      v30[3] = &unk_278FD3068;
      v30[4] = self;
      v31 = handlerCopy;
      [(ENTestResultNetworkRequest *)v29 resumeWithCompletionHandler:v30];
      self->_state = 4;
    }

    else
    {
      (handlerCopy)[2](handlerCopy, 0, 0, v26);
    }
  }
}

void __135__ENTestResultSession__performUploadRequestWithTemporaryExposureKeys_revisionToken_certificate_HMACKey_userMetadata_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = [a2 responseRevisionToken];
  v6 = *(a1 + 32);
  if (v12 || !v5)
  {
    *(v6 + 16) = 2;
    v10 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v11 = [v10 isSensitiveLoggingAllowed];

    if (v11 && gLogCategory_ENTestResultSession <= 90 && (gLogCategory_ENTestResultSession != -1 || _LogCategory_Initialize()))
    {
      __135__ENTestResultSession__performUploadRequestWithTemporaryExposureKeys_revisionToken_certificate_HMACKey_userMetadata_completionHandler___block_invoke_cold_2(a1 + 32);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    [*(v6 + 32) setRevisionToken:v5];
    *(*(a1 + 32) + 16) = 5;
    v7 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v8 = [v7 isSensitiveLoggingAllowed];

    if (v8 && gLogCategory_ENTestResultSession <= 30 && (gLogCategory_ENTestResultSession != -1 || _LogCategory_Initialize()))
    {
      __135__ENTestResultSession__performUploadRequestWithTemporaryExposureKeys_revisionToken_certificate_HMACKey_userMetadata_completionHandler___block_invoke_cold_1(a1 + 32);
    }

    v9 = *(*(a1 + 40) + 16);
  }

  v9();
}

- (BOOL)_checkInvalidatedAndReturnError:(id *)error
{
  state = self->_state;
  if (state >= 6)
  {
    [ENTestResultSession _checkInvalidatedAndReturnError:error];
  }

  return state < 6;
}

- (void)invalidate
{
  if (self->_state <= 5)
  {
    self->_state = 6;
    [(ENTestResultPersistentSession *)self->_persistentSession setFetchedMetadata:0];
    [(ENTestResultNetworkRequest *)self->_networkRequest invalidate];
    networkRequest = self->_networkRequest;
    self->_networkRequest = 0;

    v5 = ENTestResultErrorF(5);
    [(ENTestResultSession *)self _flushVerificationCompletionsWithError:v5];
  }
}

- (id)getMetadataAndReturnError:(id *)error
{
  if (![(ENTestResultSession *)self _checkInvalidatedAndReturnError:?])
  {
LABEL_11:
    v6 = 0;
    goto LABEL_6;
  }

  if (self->_state <= 1)
  {
    if (error)
    {
      ENErrorF();
      *error = v6 = 0;
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  fetchedMetadata = [(ENTestResultPersistentSession *)self->_persistentSession fetchedMetadata];
  v6 = fetchedMetadata;
  if (fetchedMetadata)
  {
    v7 = fetchedMetadata;
  }

  else if (error)
  {
    *error = ENErrorF();
  }

LABEL_6:

  return v6;
}

- (BOOL)_performVerificationRequestWithError:(id *)error
{
  v4 = [ENTestResultVerificationRequest verificationRequestWithCode:self->_verificationCode acceptedReportTypes:self->_acceptedReportTypes APIKey:self->_agencyAPIKey nonce:self->_nonce requestURL:self->_verificationURL URLSession:self->_URLSession queue:self->_queue error:error];
  networkRequest = self->_networkRequest;
  self->_networkRequest = v4;

  v6 = self->_networkRequest;
  if (v6)
  {
    [(ENTestResultNetworkRequest *)self->_networkRequest setMaxRetryTime:self->_maxRetryTime];
    v7 = self->_networkRequest;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__ENTestResultSession__performVerificationRequestWithError___block_invoke;
    v9[3] = &unk_278FD3018;
    v9[4] = self;
    [(ENTestResultNetworkRequest *)v7 resumeWithCompletionHandler:v9];
    self->_state = 1;
  }

  return v6 != 0;
}

- (void)verifyCodeWithCompletionHandler:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = [*(a1 + 72) UUIDString];
  LogPrintF_safe();
}

uint64_t __55__ENTestResultSession_verifyCodeWithCompletionHandler___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  *a2 = [*(*(a1 + 32) + 72) UUIDString];
  return LogPrintF_safe();
}

- (void)uploadTemporaryExposureKeys:(uint64_t)a1 revisionToken:(void *)a2 userMetadata:completionHandler:.cold.1(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 72) UUIDString];
  [a2 count];
  LogPrintF_safe();
}

- (void)uploadTemporaryExposureKeys:(void *)a1 revisionToken:userMetadata:completionHandler:.cold.2(void *a1)
{
  v2 = [a1 keyData];
  [a1 rollingStartNumber];
  [a1 rollingPeriod];
  LogPrintF_safe();
}

void __60__ENTestResultSession__performVerificationRequestWithError___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 72) UUIDString];
  LogPrintF_safe();
}

void __60__ENTestResultSession__performVerificationRequestWithError___block_invoke_cold_2(uint64_t a1)
{
  v4 = [OUTLINED_FUNCTION_0_10(a1) UUIDString];
  v2 = [v1 token];
  v3 = [v1 metadata];
  LogPrintF_safe();
}

- (void)_flushVerificationCompletionsWithError:(uint64_t)a1 .cold.1(uint64_t a1, id *a2)
{
  v3 = [*(a1 + 72) UUIDString];
  [*a2 count];
  LogPrintF_safe();
}

void __99__ENTestResultSession__performCertificateRequestWithToken_temporaryExposureKeys_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(*a1 + 72) UUIDString];
  LogPrintF_safe();
}

void __99__ENTestResultSession__performCertificateRequestWithToken_temporaryExposureKeys_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_0_10(a1) UUIDString];
  LogPrintF_safe();
}

void __135__ENTestResultSession__performUploadRequestWithTemporaryExposureKeys_revisionToken_certificate_HMACKey_userMetadata_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v1 = [*(*a1 + 72) UUIDString];
  LogPrintF_safe();
}

void __135__ENTestResultSession__performUploadRequestWithTemporaryExposureKeys_revisionToken_certificate_HMACKey_userMetadata_completionHandler___block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_0_10(a1) UUIDString];
  LogPrintF_safe();
}

- (void)_checkInvalidatedAndReturnError:(void *)result .cold.1(void *result)
{
  if (result)
  {
    v1 = result;
    result = ENErrorF();
    *v1 = result;
  }

  return result;
}

@end