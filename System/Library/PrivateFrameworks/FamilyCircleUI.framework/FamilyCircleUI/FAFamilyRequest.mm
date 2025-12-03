@interface FAFamilyRequest
- (FAFamilyRequest)initWithGrandSlamSigner:(id)signer;
- (id)urlRequest;
- (void)URLRequestWithCompletion:(id)completion;
- (void)_baseURLForEndpoint:(id)endpoint withCompletion:(id)completion;
- (void)_configureRequest:(id)request includePayload:(BOOL)payload;
- (void)_decoratedURLWithCompletion:(id)completion;
@end

@implementation FAFamilyRequest

- (FAFamilyRequest)initWithGrandSlamSigner:(id)signer
{
  signerCopy = signer;
  v11.receiver = self;
  v11.super_class = FAFamilyRequest;
  v5 = [(AAFamilyRequest *)&v11 initWithGrandSlamSigner:signerCopy];
  if (v5)
  {
    accountStore = [signerCopy accountStore];
    grandSlamAccount = [signerCopy grandSlamAccount];
    v8 = [accountStore aida_iCloudAccountMatchingAppleIDAuthAccount:grandSlamAccount];
    appleAccount = v5->_appleAccount;
    v5->_appleAccount = v8;
  }

  return v5;
}

- (void)_configureRequest:(id)request includePayload:(BOOL)payload
{
  payloadCopy = payload;
  requestCopy = request;
  v6 = objc_alloc(MEMORY[0x277D082E8]);
  appleAccount = [(FAFamilyRequest *)self appleAccount];
  v8 = [v6 initWithAccount:appleAccount];

  [v8 setAttachSetupHeader:0];
  [v8 addFresnoHeadersToRequest:requestCopy];
  if (payloadCopy)
  {
    [v8 addFresnoPayloadToRequest:requestCopy additionalPayload:0];
  }
}

- (void)_baseURLForEndpoint:(id)endpoint withCompletion:(id)completion
{
  endpointCopy = endpoint;
  completionCopy = completion;
  v7 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__FAFamilyRequest__baseURLForEndpoint_withCompletion___block_invoke;
  v10[3] = &unk_2782F43D8;
  v11 = endpointCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = endpointCopy;
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

- (void)_decoratedURLWithCompletion:(id)completion
{
  completionCopy = completion;
  _endpoint = [(FAFamilyRequest *)self _endpoint];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__FAFamilyRequest__decoratedURLWithCompletion___block_invoke;
  v7[3] = &unk_2782F4400;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [(FAFamilyRequest *)self _baseURLForEndpoint:_endpoint withCompletion:v7];
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

- (void)URLRequestWithCompletion:(id)completion
{
  completionCopy = completion;
  v13.receiver = self;
  v13.super_class = FAFamilyRequest;
  urlRequest = [(AAFamilyRequest *)&v13 urlRequest];
  v6 = [urlRequest mutableCopy];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__FAFamilyRequest_URLRequestWithCompletion___block_invoke;
  v9[3] = &unk_2782F4428;
  v10 = v6;
  selfCopy = self;
  v12 = completionCopy;
  v7 = completionCopy;
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