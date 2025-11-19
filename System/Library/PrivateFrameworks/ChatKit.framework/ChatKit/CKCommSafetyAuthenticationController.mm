@interface CKCommSafetyAuthenticationController
+ (void)_presentAuthenticationUI:(id)a3 completion:(id)a4;
+ (void)presentAuthenticationUI:(id)a3 completion:(id)a4;
@end

@implementation CKCommSafetyAuthenticationController

+ (void)presentAuthenticationUI:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v8 = getSTManagementStateClass_softClass;
  v16 = getSTManagementStateClass_softClass;
  if (!getSTManagementStateClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getSTManagementStateClass_block_invoke;
    v12[3] = &unk_1E72EB968;
    v12[4] = &v13;
    __getSTManagementStateClass_block_invoke(v12);
    v8 = v14[3];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);
  v10 = objc_alloc_init(v8);
  if ([v10 isRestrictionsPasscodeSet])
  {
    [a1 _presentAuthenticationUI:v6 completion:v7];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12[0]) = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "ScreenTime authentication password is not set", v12, 2u);
      }
    }

    v7[2](v7, 1);
  }
}

+ (void)_presentAuthenticationUI:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v7 = getSTCommunicationClientClass_softClass;
  v17 = getSTCommunicationClientClass_softClass;
  if (!getSTCommunicationClientClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getSTCommunicationClientClass_block_invoke;
    v13[3] = &unk_1E72EB968;
    v13[4] = &v14;
    __getSTCommunicationClientClass_block_invoke(v13);
    v7 = v15[3];
  }

  v8 = v7;
  _Block_object_dispose(&v14, 8);
  v9 = objc_alloc_init(v7);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__CKCommSafetyAuthenticationController__presentAuthenticationUI_completion___block_invoke;
  v11[3] = &unk_1E72F8240;
  v12 = v6;
  v10 = v6;
  [v9 authenticateForCommunicationConfigurationOverrideWithCompletionHandler:v11];
}

void __76__CKCommSafetyAuthenticationController__presentAuthenticationUI_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 67109120;
        LODWORD(v10) = [v5 authenticated];
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "ScreenTime authentication correct: %d", &v9, 8u);
      }
    }

    (*(*(a1 + 32) + 16))(*(a1 + 32), [v5 authenticated]);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
    if (v6 && IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "ScreenTime authentication error: %@", &v9, 0xCu);
      }
    }
  }
}

@end