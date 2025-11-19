@interface ENChaffTestResultSession
+ (id)sessionWithConfiguration:(id)a3 URLSession:(id)a4 queue:(id)a5 error:(id *)a6;
- (id)_initWithAgencyAPIKey:(id)a3 certificateURL:(id)a4 queue:(id)a5 region:(id)a6 uploadURL:(id)a7 URLSession:(id)a8 verifyURL:(id)a9;
- (void)_callCompletionIfNecessaryWithError:(id)a3;
- (void)_invalidate;
- (void)_sendCertificateChaffRequest;
- (void)_sendChaffRequestWithURL:(id)a3 useAPIKey:(BOOL)a4 successHandler:(id)a5;
- (void)_sendUploadChaffRequest;
- (void)_sendVerificationChaffRequest;
- (void)dealloc;
- (void)sendChaffMessagesWithCompletion:(id)a3;
@end

@implementation ENChaffTestResultSession

- (id)_initWithAgencyAPIKey:(id)a3 certificateURL:(id)a4 queue:(id)a5 region:(id)a6 uploadURL:(id)a7 URLSession:(id)a8 verifyURL:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v34.receiver = self;
  v34.super_class = ENChaffTestResultSession;
  v22 = [(ENChaffTestResultSession *)&v34 init];
  if (v22)
  {
    v23 = [v15 copy];
    agencyAPIKey = v22->_agencyAPIKey;
    v22->_agencyAPIKey = v23;

    objc_storeStrong(&v22->_queue, a5);
    v25 = [v18 copy];
    region = v22->_region;
    v22->_region = v25;

    objc_storeStrong(&v22->_URLSession, a8);
    v27 = [v16 copy];
    certificateURL = v22->_certificateURL;
    v22->_certificateURL = v27;

    v29 = [v19 copy];
    uploadURL = v22->_uploadURL;
    v22->_uploadURL = v29;

    v31 = [v21 copy];
    verificationURL = v22->_verificationURL;
    v22->_verificationURL = v31;
  }

  return v22;
}

- (void)dealloc
{
  [(ENChaffTestResultSession *)self _invalidate];
  v3.receiver = self;
  v3.super_class = ENChaffTestResultSession;
  [(ENChaffTestResultSession *)&v3 dealloc];
}

+ (id)sessionWithConfiguration:(id)a3 URLSession:(id)a4 queue:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 testVerificationAPIKey];
  if (v13)
  {
    v14 = [v10 testVerificationCertificateURL];
    if (v14)
    {
      v15 = [v10 testVerificationURL];
      if (v15)
      {
        v16 = [v10 tekUploadURL];
        if (v16)
        {
          v17 = [a1 alloc];
          v18 = [v10 region];
          v19 = [v17 _initWithAgencyAPIKey:v13 certificateURL:v14 queue:v12 region:v18 uploadURL:v16 URLSession:v11 verifyURL:v15];
        }

        else if (a6)
        {
          ENTestResultErrorF(10);
          *a6 = v19 = 0;
        }

        else
        {
          v19 = 0;
        }
      }

      else if (a6)
      {
        ENTestResultErrorF(10);
        *a6 = v19 = 0;
      }

      else
      {
        v19 = 0;
      }
    }

    else if (a6)
    {
      ENTestResultErrorF(10);
      *a6 = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

  else if (a6)
  {
    ENTestResultErrorF(10);
    *a6 = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)sendChaffMessagesWithCompletion:(id)a3
{
  v4 = a3;
  state = self->_state;
  v9 = v4;
  if (state)
  {
    v8 = ENErrorF();
    v9[2](v9, v8);
  }

  else
  {
    v6 = [v4 copy];
    completion = self->_completion;
    self->_completion = v6;

    [(ENChaffTestResultSession *)self _sendVerificationChaffRequest];
  }
}

void __57__ENChaffTestResultSession__sendVerificationChaffRequest__block_invoke(uint64_t a1)
{
  v2 = (arc4random_uniform(0x78u) + 60);
  CFPrefs_GetDouble();
  if (v3 != 0.0)
  {
    v2 = v3;
  }

  v4 = [MEMORY[0x277CCAC40] processInfo];
  v5 = [v4 environment];
  v6 = [v5 objectForKey:@"XCTestSessionIdentifier"];

  if (v6)
  {
    v7 = 100000000;
  }

  else
  {
    v7 = (v2 * 1000000000.0);
  }

  v8 = dispatch_time(0, v7);
  v9 = *(a1 + 32);
  v10 = *(v9 + 24);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ENChaffTestResultSession__sendVerificationChaffRequest__block_invoke_2;
  block[3] = &unk_278FD0F90;
  block[4] = v9;
  dispatch_after(v8, v10, block);
}

- (void)_sendChaffRequestWithURL:(id)a3 useAPIKey:(BOOL)a4 successHandler:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [(ENTestResultNetworkRequest *)[ENTestResultChaffRequest alloc] initWithRequestURL:v9 URLSession:self->_URLSession queue:self->_queue];

  [(ENTestResultNetworkRequest *)v10 setPaddedRequestSize:3072];
  if (v5)
  {
    agencyAPIKey = self->_agencyAPIKey;
  }

  else
  {
    agencyAPIKey = 0;
  }

  [(ENTestResultNetworkRequest *)v10 setAPIKey:agencyAPIKey];
  networkRequest = self->_networkRequest;
  self->_networkRequest = &v10->super;
  v13 = v10;

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__ENChaffTestResultSession__sendChaffRequestWithURL_useAPIKey_successHandler___block_invoke;
  v15[3] = &unk_278FD0FB8;
  v15[4] = self;
  v16 = v8;
  v14 = v8;
  [(ENTestResultNetworkRequest *)v13 resumeWithCompletionHandler:v15];
}

void __78__ENChaffTestResultSession__sendChaffRequestWithURL_useAPIKey_successHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;

  if (v6)
  {
    [*(a1 + 32) _callCompletionIfNecessaryWithError:v6];
    [*(a1 + 32) invalidate];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)_callCompletionIfNecessaryWithError:(id)a3
{
  v6 = a3;
  v4 = MEMORY[0x24C214430](self->_completion);
  if (v4)
  {
    completion = self->_completion;
    self->_completion = 0;

    (v4)[2](v4, v6);
  }
}

- (void)_invalidate
{
  if (self->_state <= 4)
  {
    self->_state = 5;
    [(ENTestResultNetworkRequest *)self->_networkRequest invalidate];
    networkRequest = self->_networkRequest;
    self->_networkRequest = 0;

    v5 = ENTestResultErrorF(5);
    [(ENChaffTestResultSession *)self _callCompletionIfNecessaryWithError:v5];
  }
}

- (void)_sendVerificationChaffRequest
{
  if (self->_state <= 0)
  {
    self->_state = 1;
    [(ENChaffTestResultSession *)self verificationURL];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_0_0();
    [OUTLINED_FUNCTION_1() _sendChaffRequestWithURL:? useAPIKey:? successHandler:?];
  }
}

- (void)_sendCertificateChaffRequest
{
  if (self->_state <= 1)
  {
    self->_state = 2;
    [(ENChaffTestResultSession *)self certificateURL];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_0_0();
    [OUTLINED_FUNCTION_1() _sendChaffRequestWithURL:? useAPIKey:? successHandler:?];
  }
}

- (void)_sendUploadChaffRequest
{
  if (self->_state <= 2)
  {
    self->_state = 3;
    [(ENChaffTestResultSession *)self uploadURL];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_0_0();
    [OUTLINED_FUNCTION_1() _sendChaffRequestWithURL:? useAPIKey:? successHandler:?];
  }
}

@end