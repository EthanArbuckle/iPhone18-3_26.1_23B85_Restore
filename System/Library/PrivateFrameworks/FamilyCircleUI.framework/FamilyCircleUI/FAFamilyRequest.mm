@interface FAFamilyRequest
- (FAFamilyRequest)initWithGrandSlamSigner:(id)a3;
- (id)urlRequest;
- (void)URLRequestWithCompletion:(id)a3;
- (void)_baseURLForEndpoint:(id)a3 withCompletion:(id)a4;
- (void)_configureRequest:(id)a3 includePayload:(BOOL)a4;
- (void)_decoratedURLWithCompletion:(id)a3;
@end

@implementation FAFamilyRequest

- (FAFamilyRequest)initWithGrandSlamSigner:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FAFamilyRequest;
  v5 = [(AAFamilyRequest *)&v11 initWithGrandSlamSigner:v4];
  if (v5)
  {
    v6 = [v4 accountStore];
    v7 = [v4 grandSlamAccount];
    v8 = [v6 aida_iCloudAccountMatchingAppleIDAuthAccount:v7];
    appleAccount = v5->_appleAccount;
    v5->_appleAccount = v8;
  }

  return v5;
}

- (void)_configureRequest:(id)a3 includePayload:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = objc_alloc(MEMORY[0x277D082E8]);
  v7 = [(FAFamilyRequest *)self appleAccount];
  v8 = [v6 initWithAccount:v7];

  [v8 setAttachSetupHeader:0];
  [v8 addFresnoHeadersToRequest:v9];
  if (v4)
  {
    [v8 addFresnoPayloadToRequest:v9 additionalPayload:0];
  }
}

- (void)_baseURLForEndpoint:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__FAFamilyRequest__baseURLForEndpoint_withCompletion___block_invoke;
  v10[3] = &unk_2782F43D8;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 URLForEndpoint:v9 withCompletion:v10];
}

void __54__FAFamilyRequest__baseURLForEndpoint_withCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = _FALogSystem();
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_21BB35000, v8, OS_LOG_TYPE_DEFAULT, "Recieved url for endpoint %@", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __54__FAFamilyRequest__baseURLForEndpoint_withCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_decoratedURLWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(FAFamilyRequest *)self _endpoint];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__FAFamilyRequest__decoratedURLWithCompletion___block_invoke;
  v7[3] = &unk_2782F4400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [(FAFamilyRequest *)self _baseURLForEndpoint:v5 withCompletion:v7];
}

void __47__FAFamilyRequest__decoratedURLWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v12 = _FALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __47__FAFamilyRequest__decoratedURLWithCompletion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = [MEMORY[0x277CCACE0] componentsWithURL:v5 resolvingAgainstBaseURL:0];
    v9 = [*(a1 + 32) _queryString];
    [v8 setQuery:v9];

    v10 = *(a1 + 40);
    v11 = [v8 URL];
    (*(v10 + 16))(v10, v11, 0);
  }
}

- (void)URLRequestWithCompletion:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = FAFamilyRequest;
  v5 = [(AAFamilyRequest *)&v13 urlRequest];
  v6 = [v5 mutableCopy];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__FAFamilyRequest_URLRequestWithCompletion___block_invoke;
  v9[3] = &unk_2782F4428;
  v10 = v6;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v6;
  [(FAFamilyRequest *)self _decoratedURLWithCompletion:v9];
}

void __44__FAFamilyRequest_URLRequestWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v7 = a3;
  [v5 setURL:a2];
  [*(a1 + 40) _configureRequest:*(a1 + 32) includePayload:0];
  [*(a1 + 32) setHTTPMethod:@"GET"];
  v6 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
}

- (id)urlRequest
{
  v3 = _FALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(FAFamilyRequest *)v3 urlRequest];
  }

  v4 = dispatch_semaphore_create(0);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__FAFamilyRequest_urlRequest__block_invoke;
  v8[3] = &unk_2782F4450;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [(FAFamilyRequest *)self URLRequestWithCompletion:v8];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __29__FAFamilyRequest_urlRequest__block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

void __54__FAFamilyRequest__baseURLForEndpoint_withCompletion___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_21BB35000, v0, OS_LOG_TYPE_ERROR, "No url received %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __47__FAFamilyRequest__decoratedURLWithCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_21BB35000, v1, OS_LOG_TYPE_ERROR, "Unable to decorate URL %@ error %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end