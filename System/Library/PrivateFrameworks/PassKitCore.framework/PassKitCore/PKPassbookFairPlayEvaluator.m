@interface PKPassbookFairPlayEvaluator
+ (void)_getLegacyFairPlayInfoWithAuditToken:(id *)a3 nonce:(id)a4 completion:(id)a5;
+ (void)getFairPlayInfoWithAuditToken:(id *)a3 nonce:(id)a4 completion:(id)a5;
@end

@implementation PKPassbookFairPlayEvaluator

+ (void)getFairPlayInfoWithAuditToken:(id *)a3 nonce:(id)a4 completion:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = os_log_create("com.apple.passkit", "Provisioning.Add");
  v10 = getFairPlayPassbookProvisioningObjCClass[0]();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __78__PKPassbookFairPlayEvaluator_getFairPlayInfoWithAuditToken_nonce_completion___block_invoke;
  v15[3] = &unk_1E79C4C20;
  v16 = v9;
  v17 = v7;
  v11 = *&a3->var0[4];
  v14[0] = *a3->var0;
  v14[1] = v11;
  v12 = v7;
  v13 = v9;
  [(objc_class *)v10 getProvisioningInfoWithAuditToken:v14 nonce:v8 completionHandler:v15];
}

void __78__PKPassbookFairPlayEvaluator_getFairPlayInfoWithAuditToken_nonce_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 length];
  v8 = *(a1 + 32);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5 && v7)
  {
    if (v9)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_INFO, "FairPlay: Returning modern blob", &v11, 2u);
    }

    v10 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (v9)
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1AD337000, v8, OS_LOG_TYPE_INFO, "FairPlay: Failed to get fairPlayInfo: %@", &v11, 0xCu);
    }

    v10 = *(*(a1 + 40) + 16);
  }

  v10();
}

+ (void)_getLegacyFairPlayInfoWithAuditToken:(id *)a3 nonce:(id)a4 completion:(id)a5
{
  v7 = a5;
  v18 = 0;
  v17 = 0;
  v8 = a4;
  v9 = a4;
  v10 = [v9 bytes];
  v11 = [v9 length];

  V0YaM92nP0Xx19HNvczPJ(a3, 32, v10, v11, &v18, &v17);
  v13 = v12;
  v14 = 0;
  v15 = v18;
  if (!v13 && v18 && v17)
  {
    v16 = objc_alloc(MEMORY[0x1E695DEF0]);
    v14 = [v16 initWithBytes:v18 length:v17];
    v15 = v18;
  }

  if (v15)
  {
    jEHf8Xzsv8K(v15);
  }

  v7[2](v7, v14);
}

@end