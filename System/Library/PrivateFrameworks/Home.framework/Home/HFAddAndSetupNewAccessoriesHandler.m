@interface HFAddAndSetupNewAccessoriesHandler
+ (id)addAndSetupNewAccessoriesForHome:(id)a3 room:(id)a4;
+ (id)sharedHandler;
- (HFAddAndSetupNewAccessoriesHandler)init;
@end

@implementation HFAddAndSetupNewAccessoriesHandler

+ (id)sharedHandler
{
  if (qword_280E02ED8 != -1)
  {
    dispatch_once(&qword_280E02ED8, &__block_literal_global_79);
  }

  v3 = _MergedGlobals_245;

  return v3;
}

void __51__HFAddAndSetupNewAccessoriesHandler_sharedHandler__block_invoke()
{
  v0 = objc_alloc_init(HFAddAndSetupNewAccessoriesHandler);
  v1 = _MergedGlobals_245;
  _MergedGlobals_245 = v0;
}

- (HFAddAndSetupNewAccessoriesHandler)init
{
  v3.receiver = self;
  v3.super_class = HFAddAndSetupNewAccessoriesHandler;
  result = [(HFAddAndSetupNewAccessoriesHandler *)&v3 init];
  if (result)
  {
    result->_isAccessorySetupActive = 0;
  }

  return result;
}

+ (id)addAndSetupNewAccessoriesForHome:(id)a3 room:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = MEMORY[0x277D2C900];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __76__HFAddAndSetupNewAccessoriesHandler_addAndSetupNewAccessoriesForHome_room___block_invoke;
  v16 = &unk_277DF28D8;
  v17 = v5;
  v18 = v6;
  v8 = v6;
  v9 = v5;
  v10 = [v7 futureWithBlock:&v13];
  v11 = [v10 addCompletionBlock:{&__block_literal_global_8_2, v13, v14, v15, v16}];

  return v10;
}

void __76__HFAddAndSetupNewAccessoriesHandler_addAndSetupNewAccessoriesForHome_room___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[HFAddAndSetupNewAccessoriesHandler sharedHandler];
  [v4 setIsAccessorySetupActive:1];

  v5 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 138412546;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Calling [HMHome addAndSetUpNewAccessoriesWithSuggestedRoomName:completionHandler:] on home: %@ room: %@", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) name];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__HFAddAndSetupNewAccessoriesHandler_addAndSetupNewAccessoriesForHome_room___block_invoke_2;
  v12[3] = &unk_277DF9878;
  v13 = v3;
  v10 = v3;
  [v8 addAndSetUpNewAccessoriesWithSuggestedRoomName:v9 completionHandler:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __76__HFAddAndSetupNewAccessoriesHandler_addAndSetupNewAccessoriesForHome_room___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 hf_prettyDescription];
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "[HMHome addAndSetUpNewAccessoriesWithSuggestedRoomName:completionHandler:] finished with error: %@, addedAccessories: %@", &v11, 0x16u);
  }

  v9 = +[HFAddAndSetupNewAccessoriesHandler sharedHandler];
  [v9 setIsAccessorySetupActive:0];

  [*(a1 + 32) finishWithResult:v6 error:v5];
  v10 = *MEMORY[0x277D85DE8];
}

void __76__HFAddAndSetupNewAccessoriesHandler_addAndSetupNewAccessoriesForHome_room___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = [a3 userInfo];
    v4 = [v3 objectForKey:*MEMORY[0x277CCA7E8]];

    if ([v4 hf_isHFErrorWithCode:46])
    {
      v5 = [v4 userInfo];
      v6 = [v5 objectForKey:@"HFErrorUserInfoOptionsKey"];

      v7 = [v6 objectForKey:HFAppPunchoutRequestEncodedKey];
      v16 = 0;
      v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v16];
      v9 = v16;
      v10 = HFLogForCategory(0x3FuLL);
      v11 = v10;
      if (v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v18 = v9;
          _os_log_error_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_ERROR, "Received HomeUIService HFErrorCodeSetupAccessoryOwnershipProofPunchoutRequired, but failed to unarchive request with error %@", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v18 = v8;
          _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Received HomeUIService HFErrorCodeSetupAccessoryOwnershipProofPunchoutRequired with request %@", buf, 0xCu);
        }

        v11 = [HFAppPunchoutRequest handleRequest:v8];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __76__HFAddAndSetupNewAccessoriesHandler_addAndSetupNewAccessoriesForHome_room___block_invoke_11;
        v14[3] = &unk_277DF2D08;
        v15 = v8;
        v12 = [v11 addFailureBlock:v14];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __76__HFAddAndSetupNewAccessoriesHandler_addAndSetupNewAccessoriesForHome_room___block_invoke_11(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x3FuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138412546;
    v8 = v6;
    v9 = 2112;
    v10 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to handle request %@ with error %@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end