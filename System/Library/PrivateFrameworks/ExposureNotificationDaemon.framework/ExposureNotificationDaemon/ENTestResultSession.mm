@interface ENTestResultSession
+ (id)sessionWithVerificationCode:(id)a3 configuration:(id)a4 maxRetryTime:(unint64_t)a5 nonce:(id)a6 URLSession:(id)a7 queue:(id)a8 error:(id *)a9;
- (BOOL)_checkInvalidatedAndReturnError:(id *)a3;
- (BOOL)_performVerificationRequestWithError:(id *)a3;
- (id)_initWithAgencyAPIKey:(id)a3 certificateURL:(id)a4 acceptedReportTypes:(id)a5 healthAuthorityID:(id)a6 maxRetryTime:(unint64_t)a7 nonce:(id)a8 queue:(id)a9 region:(id)a10 uploadURL:(id)a11 URLSession:(id)a12 verificationCode:(id)a13 verifyURL:(id)a14;
- (id)getMetadataAndReturnError:(id *)a3;
- (void)_flushVerificationCompletionsWithError:(id)a3;
- (void)_performCertificateRequestWithToken:(id)a3 temporaryExposureKeys:(id)a4 completionHandler:(id)a5;
- (void)_performUploadRequestWithTemporaryExposureKeys:(id)a3 revisionToken:(id)a4 certificate:(id)a5 HMACKey:(id)a6 userMetadata:(id)a7 completionHandler:(id)a8;
- (void)dealloc;
- (void)invalidate;
- (void)uploadTemporaryExposureKeys:(id)a3 revisionToken:(id)a4 userMetadata:(id)a5 completionHandler:(id)a6;
- (void)verifyCodeWithCompletionHandler:(id)a3;
@end

@implementation ENTestResultSession

- (id)_initWithAgencyAPIKey:(id)a3 certificateURL:(id)a4 acceptedReportTypes:(id)a5 healthAuthorityID:(id)a6 maxRetryTime:(unint64_t)a7 nonce:(id)a8 queue:(id)a9 region:(id)a10 uploadURL:(id)a11 URLSession:(id)a12 verificationCode:(id)a13 verifyURL:(id)a14
{
  v53 = a3;
  v52 = a4;
  v18 = a5;
  v51 = a5;
  v19 = a6;
  v20 = a8;
  v50 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  v54.receiver = self;
  v54.super_class = ENTestResultSession;
  v26 = [(ENTestResultSession *)&v54 init];
  if (v26)
  {
    v27 = [v53 copy];
    agencyAPIKey = v26->_agencyAPIKey;
    v26->_agencyAPIKey = v27;

    v29 = [v52 copy];
    certificateURL = v26->_certificateURL;
    v26->_certificateURL = v29;

    objc_storeStrong(&v26->_acceptedReportTypes, v18);
    v31 = [v19 copy];
    healthAuthorityID = v26->_healthAuthorityID;
    v26->_healthAuthorityID = v31;

    v26->_maxRetryTime = a7;
    if (v20)
    {
      v33 = [v20 copy];
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

    objc_storeStrong(&v26->_queue, a9);
    v37 = [v21 copy];
    region = v26->_region;
    v26->_region = v37;

    v26->_state = 0;
    objc_storeStrong(&v26->_URLSession, a12);
    v39 = [v22 copy];
    uploadURL = v26->_uploadURL;
    v26->_uploadURL = v39;

    v41 = [MEMORY[0x277CCAD70] UUID];
    UUID = v26->_UUID;
    v26->_UUID = v41;

    v43 = [v24 copy];
    verificationCode = v26->_verificationCode;
    v26->_verificationCode = v43;

    v45 = [v25 copy];
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

+ (id)sessionWithVerificationCode:(id)a3 configuration:(id)a4 maxRetryTime:(unint64_t)a5 nonce:(id)a6 URLSession:(id)a7 queue:(id)a8 error:(id *)a9
{
  v31 = a3;
  v15 = a4;
  v28 = a6;
  v30 = a7;
  v29 = a8;
  v16 = [v15 testVerificationAPIKey];
  if (v16)
  {
    v17 = [v15 testVerificationCertificateURL];
    if (v17)
    {
      v18 = [v15 healthAuthorityID];
      if (v18)
      {
        v19 = [v15 testVerificationURL];
        if (v19)
        {
          v20 = [v15 tekUploadURL];
          if (v20)
          {
            v21 = [v15 acceptedReportTypes];
            v22 = [a1 alloc];
            v23 = [v15 region];
            v24 = v22;
            v25 = v28;
            v26 = [v24 _initWithAgencyAPIKey:v16 certificateURL:v17 acceptedReportTypes:v21 healthAuthorityID:v18 maxRetryTime:a5 nonce:v28 queue:v29 region:v23 uploadURL:v20 URLSession:v30 verificationCode:v31 verifyURL:v19];
          }

          else
          {
            if (a9)
            {
              ENTestResultErrorF(10);
              *a9 = v26 = 0;
            }

            else
            {
              v26 = 0;
            }

            v25 = v28;
          }
        }

        else
        {
          if (a9)
          {
            ENTestResultErrorF(10);
            *a9 = v26 = 0;
          }

          else
          {
            v26 = 0;
          }

          v25 = v28;
        }
      }

      else
      {
        v25 = v28;
        if (a9)
        {
          ENTestResultErrorF(10);
          *a9 = v26 = 0;
        }

        else
        {
          v26 = 0;
        }
      }
    }

    else
    {
      if (a9)
      {
        ENTestResultErrorF(10);
        *a9 = v26 = 0;
      }

      else
      {
        v26 = 0;
      }

      v25 = v28;
    }
  }

  else
  {
    if (a9)
    {
      ENTestResultErrorF(10);
      *a9 = v26 = 0;
    }

    else
    {
      v26 = 0;
    }

    v25 = v28;
  }

  return v26;
}

- (void)verifyCodeWithCompletionHandler:(id)a3
{
  v4 = a3;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __55__ENTestResultSession_verifyCodeWithCompletionHandler___block_invoke;
  v20[3] = &unk_278FD2FA0;
  v20[4] = self;
  v21 = v4;
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
        v17 = [(ENTestResultPersistentSession *)self->_persistentSession verificationError];
        (v5)[2](v5, v17 == 0, v17);
LABEL_16:

        goto LABEL_17;
      }

      v10 = +[ENLoggingPrefs sharedENLoggingPrefs];
      v11 = [v10 isSensitiveLoggingAllowed];

      if (v11 && gLogCategory_ENTestResultSession <= 50 && (gLogCategory_ENTestResultSession != -1 || _LogCategory_Initialize()))
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

    v17 = MEMORY[0x24C214430](v5);
    [(NSMutableArray *)verificationCompletions addObject:v17];
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

- (void)uploadTemporaryExposureKeys:(id)a3 revisionToken:(id)a4 userMetadata:(id)a5 completionHandler:(id)a6
{
  v48 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __96__ENTestResultSession_uploadTemporaryExposureKeys_revisionToken_userMetadata_completionHandler___block_invoke;
  v45[3] = &unk_278FD2FC8;
  v45[4] = self;
  v46 = v13;
  v33 = MEMORY[0x24C214430](v45);
  v14 = +[ENLoggingPrefs sharedENLoggingPrefs];
  v15 = [v14 isSensitiveLoggingAllowed];

  if (v15 && gLogCategory_ENTestResultSession <= 50 && (gLogCategory_ENTestResultSession != -1 || _LogCategory_Initialize()))
  {
    [ENTestResultSession uploadTemporaryExposureKeys:v10 revisionToken:? userMetadata:? completionHandler:?];
  }

  v32 = self;
  v34 = v12;
  v35 = v11;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v16 = v10;
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
        v23 = [v22 isRPILoggingAllowed];

        if (v23 && gLogCategory_ENTestResultSession <= 30 && (gLogCategory_ENTestResultSession != -1 || _LogCategory_Initialize()))
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

  v25 = [(ENTestResultPersistentSession *)v32->_persistentSession verificationToken];
  if (v25)
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __96__ENTestResultSession_uploadTemporaryExposureKeys_revisionToken_userMetadata_completionHandler___block_invoke_2;
    v36[3] = &unk_278FD2FF0;
    v36[4] = v32;
    v37 = v16;
    v26 = v35;
    v38 = v35;
    v27 = v34;
    v39 = v34;
    v28 = v33;
    v40 = v33;
    [(ENTestResultSession *)v32 _performCertificateRequestWithToken:v25 temporaryExposureKeys:v37 completionHandler:v36];
  }

  else
  {
    v28 = v33;
    v29 = [(ENTestResultPersistentSession *)v32->_persistentSession verificationError];
    v27 = v34;
    if (v29)
    {
      (v33)[2](v33, 0, 0, v29);
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

- (void)_flushVerificationCompletionsWithError:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  p_verificationCompletions = &self->_verificationCompletions;
  if ([(NSMutableArray *)self->_verificationCompletions count])
  {
    v6 = +[ENLoggingPrefs sharedENLoggingPrefs];
    v7 = [v6 isSensitiveLoggingAllowed];

    if (v7 && gLogCategory_ENTestResultSession <= 30 && (gLogCategory_ENTestResultSession != -1 || _LogCategory_Initialize()))
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

- (void)_performCertificateRequestWithToken:(id)a3 temporaryExposureKeys:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ENTestResultPersistentSession *)self->_persistentSession certificate];
  v12 = [(ENTestResultPersistentSession *)self->_persistentSession HMACKey];
  v13 = [(ENTestResultPersistentSession *)self->_persistentSession teks];
  v14 = v13;
  if (v11)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15 || v13 == 0)
  {
    agencyAPIKey = self->_agencyAPIKey;
    certificateURL = self->_certificateURL;
    URLSession = self->_URLSession;
    queue = self->_queue;
    v29 = 0;
    v21 = [ENTestResultCertificateRequest certificateRequestWithToken:v8 temporaryExposureKeys:v9 APIKey:agencyAPIKey requestURL:certificateURL URLSession:URLSession queue:queue error:&v29];
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
      v27 = v9;
      v28 = v10;
      [(ENTestResultNetworkRequest *)v25 resumeWithCompletionHandler:v26];
      self->_state = 3;
    }

    else
    {
      (*(v10 + 2))(v10, 0, 0, v22);
    }
  }

  else
  {
    (*(v10 + 2))(v10, v11, v12, 0);
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

- (void)_performUploadRequestWithTemporaryExposureKeys:(id)a3 revisionToken:(id)a4 certificate:(id)a5 HMACKey:(id)a6 userMetadata:(id)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = [(ENTestResultPersistentSession *)self->_persistentSession revisionToken];
  if (v20)
  {
    v19[2](v19, 1, v20, 0);
  }

  else
  {
    healthAuthorityID = self->_healthAuthorityID;
    uploadURL = self->_uploadURL;
    URLSession = self->_URLSession;
    queue = self->_queue;
    v32 = 0;
    v25 = [ENTestResultUploadRequest uploadRequestWithCertificate:v16 healthAuthorityID:healthAuthorityID revisionToken:v15 symmetricKey:v17 temporaryExposureKeys:v14 userMetadata:v18 requestURL:uploadURL URLSession:URLSession queue:queue error:&v32];
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
      v31 = v19;
      [(ENTestResultNetworkRequest *)v29 resumeWithCompletionHandler:v30];
      self->_state = 4;
    }

    else
    {
      (v19)[2](v19, 0, 0, v26);
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

- (BOOL)_checkInvalidatedAndReturnError:(id *)a3
{
  state = self->_state;
  if (state >= 6)
  {
    [ENTestResultSession _checkInvalidatedAndReturnError:a3];
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

- (id)getMetadataAndReturnError:(id *)a3
{
  if (![(ENTestResultSession *)self _checkInvalidatedAndReturnError:?])
  {
LABEL_11:
    v6 = 0;
    goto LABEL_6;
  }

  if (self->_state <= 1)
  {
    if (a3)
    {
      ENErrorF();
      *a3 = v6 = 0;
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v5 = [(ENTestResultPersistentSession *)self->_persistentSession fetchedMetadata];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else if (a3)
  {
    *a3 = ENErrorF();
  }

LABEL_6:

  return v6;
}

- (BOOL)_performVerificationRequestWithError:(id *)a3
{
  v4 = [ENTestResultVerificationRequest verificationRequestWithCode:self->_verificationCode acceptedReportTypes:self->_acceptedReportTypes APIKey:self->_agencyAPIKey nonce:self->_nonce requestURL:self->_verificationURL URLSession:self->_URLSession queue:self->_queue error:a3];
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