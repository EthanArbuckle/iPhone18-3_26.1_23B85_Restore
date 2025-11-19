@interface CPSURLValidator
- (CPSURLValidator)initWithRequest:(id)a3;
- (void)_validateURL:(id)a3 forBundleID:(id)a4 policy:(id)a5 completion:(id)a6;
- (void)validateWithCompletion:(id)a3;
@end

@implementation CPSURLValidator

- (CPSURLValidator)initWithRequest:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CPSURLValidator;
  v6 = [(CPSURLValidator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
    v8 = v7;
  }

  return v7;
}

- (void)validateWithCompletion:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    request = self->_request;
    v7 = v5;
    v8 = [(CPSValidationRequest *)request urls];
    v9 = [(CPSValidationRequest *)self->_request bundleIdentifiers];
    *buf = 138478083;
    v15 = v8;
    v16 = 2113;
    v17 = v9;
    _os_log_impl(&dword_2436ED000, v7, OS_LOG_TYPE_INFO, "Client requests validation for URLs: %{private}@, bundleIDs: %{private}@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__CPSURLValidator_validateWithCompletion___block_invoke;
  v12[3] = &unk_278DCE4F8;
  v12[4] = self;
  v13 = v4;
  v10 = v4;
  [CPSClipInvocationPolicy requestAccountPolicyForClipMetadata:0 withCompletion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __42__CPSURLValidator_validateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEligible] & 1) != 0 || (objc_msgSend(v3, "isRecoverable"))
  {
    v4 = dispatch_group_create();
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = [*(*(a1 + 32) + 8) urls];
    v7 = [v6 count];

    if (v7)
    {
      v8 = 0;
      do
      {
        v9 = [*(*(a1 + 32) + 8) urls];
        v10 = [v9 objectAtIndexedSubscript:v8];

        v11 = [*(*(a1 + 32) + 8) bundleIdentifiers];
        v12 = [v11 objectAtIndexedSubscript:v8];

        dispatch_group_enter(v4);
        v13 = *(a1 + 32);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __42__CPSURLValidator_validateWithCompletion___block_invoke_2;
        v21[3] = &unk_278DCE4D0;
        v22 = v10;
        v23 = v12;
        v24 = v5;
        v25 = v4;
        v14 = v12;
        v15 = v10;
        [v13 _validateURL:v15 forBundleID:v14 policy:v3 completion:v21];

        ++v8;
        v16 = [*(*(a1 + 32) + 8) urls];
        v17 = [v16 count];
      }

      while (v8 < v17);
    }

    v18 = dispatch_time(0, 5000000000);
    dispatch_group_wait(v4, v18);
    v19 = [[CPSValidationResult alloc] initWithRequest:*(*(a1 + 32) + 8) response:v5];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v20 = [CPSValidationResult alloc];
    v4 = [(CPSValidationResult *)v20 initWithRequest:*(*(a1 + 32) + 8) response:MEMORY[0x277CBEC10]];
    (*(*(a1 + 40) + 16))();
  }
}

void __42__CPSURLValidator_validateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 invocationPolicy];
  if ([v4 isEligible])
  {

LABEL_4:
    v7 = [v3 clipBundleID];
    [*(a1 + 48) setObject:v7 forKeyedSubscript:*(a1 + 32)];

    goto LABEL_5;
  }

  v5 = [v3 invocationPolicy];
  v6 = [v5 isRecoverable];

  if (v6)
  {
    goto LABEL_4;
  }

  v9 = CPS_LOG_CHANNEL_PREFIXClipServices();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = 138478083;
    v13 = v10;
    v14 = 2113;
    v15 = v11;
    _os_log_impl(&dword_2436ED000, v9, OS_LOG_TYPE_INFO, "Failed validation for URL: %{private}@, bundleID: %{private}@", &v12, 0x16u);
  }

LABEL_5:
  dispatch_group_leave(*(a1 + 56));

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_validateURL:(id)a3 forBundleID:(id)a4 policy:(id)a5 completion:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(CPSClipMetadata);
  [(CPSClipMetadata *)v13 setClipRequestURL:v12];

  [(CPSClipMetadata *)v13 setClipBundleID:v11];
  [(CPSClipMetadata *)v13 setInvocationPolicy:v10];

  v14 = +[CPSSessionManager sharedManager];
  v15 = [v14 appInfoFetcher];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __62__CPSURLValidator__validateURL_forBundleID_policy_completion___block_invoke;
  v18[3] = &unk_278DCE520;
  v19 = v13;
  v20 = v9;
  v16 = v13;
  v17 = v9;
  [v15 lookUpClipMetadataByBundleID:v11 sourceBundleID:0 downloadIconIfNeeded:0 skipCaching:0 completionHandler:v18];
}

uint64_t __62__CPSURLValidator__validateURL_forBundleID_policy_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && !a3)
  {
    [*(a1 + 32) _updateWithAMSMetadata:a2];
    v4 = [*(a1 + 32) invocationPolicy];
    if ([v4 isEligible])
    {

LABEL_6:
      v7 = *(a1 + 32);
      v8 = *(*(a1 + 40) + 16);
      goto LABEL_8;
    }

    v5 = [*(a1 + 32) invocationPolicy];
    v6 = [v5 isRecoverable];

    if (v6)
    {
      goto LABEL_6;
    }
  }

  v8 = *(*(a1 + 40) + 16);
LABEL_8:

  return v8();
}

@end