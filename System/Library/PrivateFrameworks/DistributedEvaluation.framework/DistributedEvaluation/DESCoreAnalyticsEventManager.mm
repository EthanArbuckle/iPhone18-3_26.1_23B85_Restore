@interface DESCoreAnalyticsEventManager
+ (void)sendEventActivityShouldDeferWithActivityID:(id)a3 connectionDuration:(float)a4;
+ (void)sendEventAttachmentDownloadsBundleID:(id)a3 duration:(float)a4 success:(BOOL)a5 downloadedAttachmentCount:(unint64_t)a6;
+ (void)sendEventDeferForBundleID:(id)a3 deadlineStr:(id)a4;
+ (void)sendEventDeleteRecordForBundleID:(id)a3 removedCount:(unint64_t)a4;
+ (void)sendEventErrorForBundleID:(id)a3 error:(id)a4;
+ (void)sendEventEvaluationCompletedForBundleID:(id)a3 duration:(float)a4 deferralTime:(float)a5 wasDeferred:(BOOL)a6 success:(BOOL)a7 error:(id)a8;
+ (void)sendEventEvaluationForBundleID:(id)a3 evaluationID:(id)a4 duration:(float)a5 deferred:(BOOL)a6 success:(BOOL)a7 error:(id)a8 downloadedAttachmentCount:(unint64_t)a9;
+ (void)sendEventEvaluationSessionFinishForBundleID:(id)a3 success:(BOOL)a4;
+ (void)sendEventEvaluationSessionStartForBundleID:(id)a3;
+ (void)sendEventFetchPolicyForBundleID:(id)a3 success:(BOOL)a4;
+ (void)sendEventMaintenanceWithActivityID:(id)a3 intervalSincePostedEvent:(double)a4 shouldSkip:(BOOL)a5 lockState:(int)a6;
+ (void)sendEventRecipeExpiredForBundleID:(id)a3 deferralTime:(float)a4;
+ (void)sendEventRecipeFetchedForBundleID:(id)a3 evaluationID:(id)a4 error:(id)a5;
+ (void)sendEventRecordsMatchedForBundleID:(id)a3;
+ (void)sendEventWriteRecordForBundleID:(id)a3;
@end

@implementation DESCoreAnalyticsEventManager

+ (void)sendEventDeleteRecordForBundleID:(id)a3 removedCount:(unint64_t)a4
{
  v6 = a3;
  v7 = [a1 allowEventForBundleID:v6];
  if (a4 && v7)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __78__DESCoreAnalyticsEventManager_sendEventDeleteRecordForBundleID_removedCount___block_invoke;
    v8[3] = &unk_278F84030;
    v9 = v6;
    v10 = a4;
    [a1 _sendCoreAnalyticsEvent:@"com.apple.des.DeleteRecord" eventPayloadBuilder:v8];
  }
}

id __78__DESCoreAnalyticsEventManager_sendEventDeleteRecordForBundleID_removedCount___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v7[0] = @"type";
  v7[1] = @"removedCount";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v1];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)sendEventWriteRecordForBundleID:(id)a3
{
  v4 = a3;
  if ([a1 allowEventForBundleID:v4])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __64__DESCoreAnalyticsEventManager_sendEventWriteRecordForBundleID___block_invoke;
    v5[3] = &unk_278F84058;
    v6 = v4;
    [a1 _sendCoreAnalyticsEvent:@"com.apple.des.WriteRecord" eventPayloadBuilder:v5];
  }
}

id __64__DESCoreAnalyticsEventManager_sendEventWriteRecordForBundleID___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"type";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)sendEventMaintenanceWithActivityID:(id)a3 intervalSincePostedEvent:(double)a4 shouldSkip:(BOOL)a5 lockState:(int)a6
{
  v10 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __113__DESCoreAnalyticsEventManager_sendEventMaintenanceWithActivityID_intervalSincePostedEvent_shouldSkip_lockState___block_invoke;
  v12[3] = &unk_278F84080;
  v13 = v10;
  v16 = a5;
  v14 = a4;
  v15 = a6;
  v11 = v10;
  [a1 _sendCoreAnalyticsEvent:@"com.apple.des.MaintenanceActivity" eventPayloadBuilder:v12];
}

id __113__DESCoreAnalyticsEventManager_sendEventMaintenanceWithActivityID_intervalSincePostedEvent_shouldSkip_lockState___block_invoke(uint64_t a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v9[0] = *(a1 + 32);
  v8[0] = @"activity";
  v8[1] = @"dnuskip";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 52)];
  v9[1] = v2;
  v8[2] = @"intervalSincePostedEvent";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v9[2] = v3;
  v8[3] = @"lockState";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v9[3] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (void)sendEventActivityShouldDeferWithActivityID:(id)a3 connectionDuration:(float)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __94__DESCoreAnalyticsEventManager_sendEventActivityShouldDeferWithActivityID_connectionDuration___block_invoke;
  v8[3] = &unk_278F840A8;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [a1 _sendCoreAnalyticsEvent:@"com.apple.des.ActivityShouldDefer" eventPayloadBuilder:v8];
}

id __94__DESCoreAnalyticsEventManager_sendEventActivityShouldDeferWithActivityID_connectionDuration___block_invoke(uint64_t a1, double a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v7[1] = @"connectionDuration";
  v8[0] = v2;
  v7[0] = @"activity";
  LODWORD(a2) = *(a1 + 40);
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:a2];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)sendEventFetchPolicyForBundleID:(id)a3 success:(BOOL)a4
{
  v6 = a3;
  if ([a1 allowEventForBundleID:v6])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__DESCoreAnalyticsEventManager_sendEventFetchPolicyForBundleID_success___block_invoke;
    v7[3] = &unk_278F840D0;
    v8 = v6;
    v9 = a4;
    [a1 _sendCoreAnalyticsEvent:@"com.apple.des.PolicyFetched" eventPayloadBuilder:v7];
  }
}

id __72__DESCoreAnalyticsEventManager_sendEventFetchPolicyForBundleID_success___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v6[1] = @"success";
  v7[0] = v1;
  v6[0] = @"type";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v7[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (void)sendEventErrorForBundleID:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7 && [a1 allowEventForBundleID:v6])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__DESCoreAnalyticsEventManager_sendEventErrorForBundleID_error___block_invoke;
    v8[3] = &unk_278F840F8;
    v9 = v6;
    v10 = v7;
    [a1 _sendCoreAnalyticsEvent:@"com.apple.des.Error" eventPayloadBuilder:v8];
  }
}

id __64__DESCoreAnalyticsEventManager_sendEventErrorForBundleID_error___block_invoke(uint64_t a1)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB38];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v22[0] = v4;
  v21[0] = @"type";
  v21[1] = @"domain";
  v5 = [v3 domain];
  v22[1] = v5;
  v21[2] = @"code";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "code")}];
  v22[2] = v6;
  v21[3] = @"domain_code";
  v7 = MEMORY[0x277CCACA8];
  v8 = [*(a1 + 40) domain];
  v9 = [v7 stringWithFormat:@"%@_%ld", v8, objc_msgSend(*(a1 + 40), "code")];
  v22[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v11 = [v2 dictionaryWithDictionary:v10];

  v12 = [*(a1 + 40) userInfo];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  if (v13)
  {
    v14 = [v13 domain];
    [v11 setObject:v14 forKeyedSubscript:@"underlying_domain"];

    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v13, "code")}];
    [v11 setObject:v15 forKeyedSubscript:@"underlying_code"];

    v16 = MEMORY[0x277CCACA8];
    v17 = [v13 domain];
    v18 = [v16 stringWithFormat:@"%@_%ld", v17, objc_msgSend(v13, "code")];
    [v11 setObject:v18 forKeyedSubscript:@"underlying_domain_code"];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (void)sendEventEvaluationSessionStartForBundleID:(id)a3
{
  v4 = a3;
  if ([a1 allowEventForBundleID:v4])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __75__DESCoreAnalyticsEventManager_sendEventEvaluationSessionStartForBundleID___block_invoke;
    v5[3] = &unk_278F84058;
    v6 = v4;
    [a1 _sendCoreAnalyticsEvent:@"com.apple.des.EvaluationSessionStart" eventPayloadBuilder:v5];
  }
}

id __75__DESCoreAnalyticsEventManager_sendEventEvaluationSessionStartForBundleID___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"type";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)sendEventEvaluationSessionFinishForBundleID:(id)a3 success:(BOOL)a4
{
  v6 = a3;
  if ([a1 allowEventForBundleID:v6])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __84__DESCoreAnalyticsEventManager_sendEventEvaluationSessionFinishForBundleID_success___block_invoke;
    v7[3] = &unk_278F840D0;
    v8 = v6;
    v9 = a4;
    [a1 _sendCoreAnalyticsEvent:@"com.apple.des.EvaluationSessionFinish" eventPayloadBuilder:v7];
  }
}

id __84__DESCoreAnalyticsEventManager_sendEventEvaluationSessionFinishForBundleID_success___block_invoke(uint64_t a1)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v6[1] = @"success";
  v7[0] = v1;
  v6[0] = @"type";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v7[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (void)sendEventRecipeExpiredForBundleID:(id)a3 deferralTime:(float)a4
{
  if ([a1 allowEventForBundleID:a3])
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __79__DESCoreAnalyticsEventManager_sendEventRecipeExpiredForBundleID_deferralTime___block_invoke;
    v6[3] = &__block_descriptor_36_e19___NSDictionary_8__0l;
    v7 = a4;
    [a1 _sendCoreAnalyticsEvent:@"com.apple.des.RecipeExpired" eventPayloadBuilder:v6];
  }
}

id __79__DESCoreAnalyticsEventManager_sendEventRecipeExpiredForBundleID_deferralTime___block_invoke(uint64_t a1, double a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"deferralTime";
  LODWORD(a2) = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithFloat:a2];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (void)sendEventDeferForBundleID:(id)a3 deadlineStr:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 allowEventForBundleID:v6])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__DESCoreAnalyticsEventManager_sendEventDeferForBundleID_deadlineStr___block_invoke;
    v8[3] = &unk_278F840F8;
    v9 = v6;
    v10 = v7;
    [a1 _sendCoreAnalyticsEvent:@"com.apple.des.DeferredWithDeadline" eventPayloadBuilder:v8];
  }
}

id __70__DESCoreAnalyticsEventManager_sendEventDeferForBundleID_deadlineStr___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"type";
  v5[1] = @"deadline";
  v1 = *(a1 + 40);
  v6[0] = *(a1 + 32);
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)sendEventEvaluationCompletedForBundleID:(id)a3 duration:(float)a4 deferralTime:(float)a5 wasDeferred:(BOOL)a6 success:(BOOL)a7 error:(id)a8
{
  v9 = a7;
  v14 = a3;
  v15 = a8;
  v16 = @"com.apple.des.EvaluationCompletedWithError";
  if (v9)
  {
    v16 = @"com.apple.des.EvaluationCompletedSuccessfully";
  }

  v17 = v16;
  if ([a1 allowEventForBundleID:v14])
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __120__DESCoreAnalyticsEventManager_sendEventEvaluationCompletedForBundleID_duration_deferralTime_wasDeferred_success_error___block_invoke;
    v18[3] = &unk_278F84140;
    v19 = v14;
    v21 = a4;
    v22 = a5;
    v23 = a6;
    v24 = v9;
    v20 = v15;
    [a1 _sendCoreAnalyticsEvent:v17 eventPayloadBuilder:v18];
  }
}

id __120__DESCoreAnalyticsEventManager_sendEventEvaluationCompletedForBundleID_duration_deferralTime_wasDeferred_success_error___block_invoke(uint64_t a1, double a2)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v22[0] = *(a1 + 32);
  v21[0] = @"type";
  v21[1] = @"duration";
  LODWORD(a2) = *(a1 + 48);
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:a2];
  v22[1] = v4;
  v21[2] = @"deferralTime";
  LODWORD(v5) = *(a1 + 52);
  v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v22[2] = v6;
  v21[3] = @"wasDeferred";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v22[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v9 = [v3 dictionaryWithDictionary:v8];

  if ((*(a1 + 57) & 1) == 0)
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [v10 domain];
      v13 = [v11 stringWithFormat:@"%@_%ld", v12, objc_msgSend(*(a1 + 40), "code")];
      [v9 setObject:v13 forKeyedSubscript:@"domain_code"];

      v14 = [*(a1 + 40) userInfo];
      v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      if (v15)
      {
        v16 = MEMORY[0x277CCACA8];
        v17 = [v15 domain];
        v18 = [v16 stringWithFormat:@"%@_%ld", v17, objc_msgSend(v15, "code")];
        [v9 setObject:v18 forKeyedSubscript:@"underlying_domain_code"];
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (void)sendEventRecordsMatchedForBundleID:(id)a3
{
  v4 = a3;
  if ([a1 allowEventForBundleID:v4])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __67__DESCoreAnalyticsEventManager_sendEventRecordsMatchedForBundleID___block_invoke;
    v5[3] = &unk_278F84058;
    v6 = v4;
    [a1 _sendCoreAnalyticsEvent:@"com.apple.des.RecordsMatched" eventPayloadBuilder:v5];
  }
}

id __67__DESCoreAnalyticsEventManager_sendEventRecordsMatchedForBundleID___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"type";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (void)sendEventRecipeFetchedForBundleID:(id)a3 evaluationID:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([a1 allowEventForBundleID:v8])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __85__DESCoreAnalyticsEventManager_sendEventRecipeFetchedForBundleID_evaluationID_error___block_invoke;
    v11[3] = &unk_278F84168;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    [a1 _sendCoreAnalyticsEvent:@"com.apple.des.RecipeFetched" eventPayloadBuilder:v11];
  }
}

id __85__DESCoreAnalyticsEventManager_sendEventRecipeFetchedForBundleID_evaluationID_error___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"type";
  v7[1] = @"evaluation_id";
  v1 = *(a1 + 40);
  v8[0] = *(a1 + 32);
  v8[1] = v1;
  v7[2] = @"error";
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = [*(a1 + 48) description];
  }

  else
  {
    v3 = @"none";
  }

  v8[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  if (v2)
  {
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (void)sendEventAttachmentDownloadsBundleID:(id)a3 duration:(float)a4 success:(BOOL)a5 downloadedAttachmentCount:(unint64_t)a6
{
  v10 = a3;
  if ([a1 allowEventForBundleID:v10])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __112__DESCoreAnalyticsEventManager_sendEventAttachmentDownloadsBundleID_duration_success_downloadedAttachmentCount___block_invoke;
    v11[3] = &unk_278F84080;
    v14 = a4;
    v15 = a5;
    v12 = v10;
    v13 = a6;
    [a1 _sendCoreAnalyticsEvent:@"com.apple.des.AttachmentDownloads" eventPayloadBuilder:v11];
  }
}

id __112__DESCoreAnalyticsEventManager_sendEventAttachmentDownloadsBundleID_duration_success_downloadedAttachmentCount___block_invoke(uint64_t a1, double a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v10[0] = *(a1 + 32);
  v9[0] = @"type";
  v9[1] = @"duration";
  LODWORD(a2) = *(a1 + 48);
  v3 = [MEMORY[0x277CCABB0] numberWithFloat:a2];
  v10[1] = v3;
  v9[2] = @"success";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 52)];
  v10[2] = v4;
  v9[3] = @"downloadedAttachmentCount";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)sendEventEvaluationForBundleID:(id)a3 evaluationID:(id)a4 duration:(float)a5 deferred:(BOOL)a6 success:(BOOL)a7 error:(id)a8 downloadedAttachmentCount:(unint64_t)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a8;
  if ([a1 allowEventForBundleID:v16])
  {
    if (v18)
    {
      v30 = a9;
      v19 = MEMORY[0x277CCACA8];
      v20 = [v18 domain];
      v21 = [v19 stringWithFormat:@"%@_%ld", v20, objc_msgSend(v18, "code")];

      v22 = [v18 userInfo];
      v23 = [v22 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      if (v23)
      {
        v24 = MEMORY[0x277CCACA8];
        v25 = [v23 domain];
        v26 = [v24 stringWithFormat:@"%@_%ld", v25, objc_msgSend(v23, "code")];
      }

      else
      {
        v26 = 0;
      }

      a9 = v30;
    }

    else
    {
      v26 = 0;
      v21 = 0;
    }

    v27 = DESHourOfDayInUTC();
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __134__DESCoreAnalyticsEventManager_sendEventEvaluationForBundleID_evaluationID_duration_deferred_success_error_downloadedAttachmentCount___block_invoke;
    v31[3] = &unk_278F84190;
    v32 = v16;
    v38 = a5;
    v39 = a6;
    v40 = a7;
    v36 = v27;
    v37 = a9;
    v33 = v17;
    v34 = v21;
    v35 = v26;
    v28 = v26;
    v29 = v21;
    [a1 _sendCoreAnalyticsEvent:@"com.apple.des.Evaluation" eventPayloadBuilder:v31];
  }
}

id __134__DESCoreAnalyticsEventManager_sendEventEvaluationForBundleID_evaluationID_duration_deferred_success_error_downloadedAttachmentCount___block_invoke(uint64_t a1, double a2)
{
  v17[7] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v16[0] = @"type";
  v16[1] = @"evaluation_id";
  v4 = *(a1 + 40);
  v17[0] = *(a1 + 32);
  v17[1] = v4;
  v16[2] = @"duration";
  LODWORD(a2) = *(a1 + 80);
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:a2];
  v17[2] = v5;
  v16[3] = @"deferred";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 84)];
  v17[3] = v6;
  v16[4] = @"hour";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
  v17[4] = v7;
  v16[5] = @"success";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 85)];
  v17[5] = v8;
  v16[6] = @"downloadedAttachmentCount";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 72)];
  v17[6] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:7];
  v11 = [v3 dictionaryWithDictionary:v10];

  v12 = *(a1 + 48);
  if (v12)
  {
    [v11 setObject:v12 forKeyedSubscript:@"domain_code"];
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    [v11 setObject:v13 forKeyedSubscript:@"underlying_domain_code"];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

@end