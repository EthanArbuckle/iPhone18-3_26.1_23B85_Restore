@interface HFCameraClipFeedbackManager
+ (void)donateAllCameraClipsForCameraProfile:(id)a3 completion:(id)a4;
+ (void)donateCameraClip:(id)a3 forCameraProfile:(id)a4 completion:(id)a5;
+ (void)donateCameraClip:(id)a3 forCameraProfile:(id)a4 processName:(id)a5 completion:(id)a6;
@end

@implementation HFCameraClipFeedbackManager

+ (void)donateCameraClip:(id)a3 forCameraProfile:(id)a4 completion:(id)a5
{
  v8 = MEMORY[0x277CCAC38];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 processInfo];
  v13 = [v12 processName];

  [a1 donateCameraClip:v11 forCameraProfile:v10 processName:v13 completion:v9];
}

+ (void)donateCameraClip:(id)a3 forCameraProfile:(id)a4 processName:(id)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [a3 uniqueIdentifier];
  v13 = [v12 copy];

  v14 = [MEMORY[0x277CBEB98] setWithObject:v13];
  v15 = dispatch_get_global_queue(-32768, 0);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __88__HFCameraClipFeedbackManager_donateCameraClip_forCameraProfile_processName_completion___block_invoke;
  v20[3] = &unk_277DF67D0;
  v21 = v9;
  v22 = v14;
  v23 = v10;
  v24 = v11;
  v16 = v11;
  v17 = v10;
  v18 = v14;
  v19 = v9;
  dispatch_async(v15, v20);
}

void __88__HFCameraClipFeedbackManager_donateCameraClip_forCameraProfile_processName_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) clipManager];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __88__HFCameraClipFeedbackManager_donateCameraClip_forCameraProfile_processName_completion___block_invoke_2;
  v4[3] = &unk_277DF67A8;
  v5 = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 donateClipsWithUUIDs:v5 completion:v4];
}

void __88__HFCameraClipFeedbackManager_donateCameraClip_forCameraProfile_processName_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[HFCameraAnalyticsEventHandler sendDonationEventWithCameraClipCount:processName:error:](HFCameraAnalyticsEventHandler, "sendDonationEventWithCameraClipCount:processName:error:", [*(a1 + 32) count], *(a1 + 40), v3);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __88__HFCameraClipFeedbackManager_donateCameraClip_forCameraProfile_processName_completion___block_invoke_3;
  v7[3] = &unk_277DF2AD8;
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

+ (void)donateAllCameraClipsForCameraProfile:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_get_global_queue(-32768, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__HFCameraClipFeedbackManager_donateAllCameraClipsForCameraProfile_completion___block_invoke;
  v10[3] = &unk_277DF34D0;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __79__HFCameraClipFeedbackManager_donateAllCameraClipsForCameraProfile_completion___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CCA970]);
  v3 = [MEMORY[0x277CBEAA8] distantPast];
  v4 = [MEMORY[0x277CBEAA8] distantFuture];
  v5 = [v2 initWithStartDate:v3 endDate:v4];

  v6 = [*(a1 + 32) clipManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HFCameraClipFeedbackManager_donateAllCameraClipsForCameraProfile_completion___block_invoke_2;
  v7[3] = &unk_277DF6848;
  v9 = *(a1 + 40);
  v8 = *(a1 + 32);
  [v6 fetchClipsWithDateInterval:v5 quality:0 limit:500 shouldOrderAscending:1 completion:v7];
}

void __79__HFCameraClipFeedbackManager_donateAllCameraClipsForCameraProfile_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = HFLogForCategory(0x14uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Unable to donate all clips because there was a problem fetching all clips:%@", buf, 0xCu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__HFCameraClipFeedbackManager_donateAllCameraClipsForCameraProfile_completion___block_invoke_7;
    block[3] = &unk_277DF2AD8;
    v23 = *(a1 + 40);
    v22 = v6;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v8 = v23;
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __79__HFCameraClipFeedbackManager_donateAllCameraClipsForCameraProfile_completion___block_invoke_2_9;
    v19[3] = &unk_277DF67F8;
    v10 = v9;
    v20 = v10;
    [v5 enumerateObjectsUsingBlock:v19];
    v11 = HFLogForCategory(0x14uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v10 count];
      v13 = *(a1 + 32);
      *buf = 134218242;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Donating all clips:%lu for profile:%@", buf, 0x16u);
    }

    v14 = [*(a1 + 32) clipManager];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __79__HFCameraClipFeedbackManager_donateAllCameraClipsForCameraProfile_completion___block_invoke_11;
    v16[3] = &unk_277DF6820;
    v17 = v10;
    v18 = *(a1 + 40);
    v8 = v10;
    [v14 donateClipsWithUUIDs:v8 completion:v16];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __79__HFCameraClipFeedbackManager_donateAllCameraClipsForCameraProfile_completion___block_invoke_2_9(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isDonated] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [v5 uniqueIdentifier];
    [v3 addObject:v4];
  }
}

void __79__HFCameraClipFeedbackManager_donateAllCameraClipsForCameraProfile_completion___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCAC38] processInfo];
  v5 = [v4 processName];

  v6 = +[HFCameraAnalyticsEventHandler sendDonationEventWithCameraClipCount:processName:error:](HFCameraAnalyticsEventHandler, "sendDonationEventWithCameraClipCount:processName:error:", [*(a1 + 32) count], v5, v3);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__HFCameraClipFeedbackManager_donateAllCameraClipsForCameraProfile_completion___block_invoke_2_12;
  v9[3] = &unk_277DF2AD8;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

@end