@interface HDAnalyticsSubmissionCoordinator
- (BOOL)isEventUsed:(id)a3;
- (HDAnalyticsSubmissionCoordinator)initWithProfile:(id)a3;
- (_HKBehavior)behavior;
- (id)_createHealthStoreForProfileIdentifier:(id)a3;
- (void)_locked_sendDailyAnalyticsWithTimeout:(uint64_t)a1;
- (void)_logFaultForTimedOutObservers:(id)a3 timeoutSeconds:(double)a4;
- (void)_performAnalyticsSubmissionWithCompletion:(uint64_t)a1;
- (void)_sendTinkerSyncEventWithLatency:(void *)a3 timeSinceLastSuccessfullPull:(void *)a4 configuration:(char)a5 success:(void *)a6 error:;
- (void)attachments_reportDailyAnalytics:(id)a3;
- (void)attachments_reportDailyCloudAnalytics:(id)a3;
- (void)authorization_reportAuthRequestPromptedForBundleIdentifer:(id)a3 profileType:(int64_t)a4;
- (void)authorization_reportAuthRequestsFromBundleIdentifier:(id)a3 isExtension:(BOOL)a4 isAppleWatch:(BOOL)a5 shouldPrompt:(BOOL)a6;
- (void)cloudCache_reportCacheDiscrepancyForOperation:(id)a3 reason:(id)a4 containerIdentifier:(id)a5 databaseScope:(id)a6 error:(id)a7;
- (void)cloudCache_reportCacheFetchAndUpdateAnalyticsForPipeline:(id)a3 changedZonesCount:(int64_t)a4 deletedZonesCount:(int64_t)a5 changedRecordsCount:(int64_t)a6 deletedRecordsCount:(int64_t)a7;
- (void)cloudCache_reportCacheSyncAnalyticsForPipeline:(id)a3 operationCount:(int64_t)a4;
- (void)cloudCache_reportWeeklyAnalyticsWithCacheValidation:(id)a3;
- (void)cloudSync_newChildAdded:(BOOL)a3;
- (void)cloudSync_operationFailed:(id)a3 error:(id)a4;
- (void)cloudSync_operationFinished:(id)a3;
- (void)cloudSync_operationStarted:(id)a3;
- (void)cloudSync_reportDailyAnalyticForProfileType:(int64_t)a3 syncEnabled:(BOOL)a4 syncDisabledError:(id)a5 primaryContainer:(id)a6 restoreComplete:(BOOL)a7 timeSinceRestoreStart:(id)a8 journalSize:(id)a9 oldestJournalAge:(id)a10 timeSinceLastSuccessfulPull:(id)a11 timeSinceLastSuccessfulPush:(id)a12 timeSinceLastSuccessfulLitePush:(id)a13 timeSinceLastPushForwardProgress:(id)a14 storeCount:(int64_t)a15 zoneCount:(int64_t)a16 hasUnifiedZone:(BOOL)a17 hasMasterZone:(BOOL)a18 hasMedicalID:(BOOL)a19 errorRequiringUserAction:(id)a20 childSyncIdentityCount:(int64_t)a21 canUpgradeToSyncIdentity:(BOOL)a22 startedUpgradeToSyncIdentity:(BOOL)a23 completedUpgradeToSyncIdentity:(BOOL)a24 iPhoneCount:(id)a25 iPadCount:(id)a26 watchCount:(id)a27 visionProCount:(id)a28 totalSyncsCount:(id)a29 successfulSyncPercentageCount:(id)a30;
- (void)cloudSync_reportFullSyncMetricsWithReason:(id)a3 shard:(id)a4 daysSincePreviousFullSync:(id)a5 totalDuration:(double)a6 activeDuration:(double)a7 numberOfRuns:(id)a8 incomplete:(BOOL)a9;
- (void)cloudSync_reportMissingManateeIdentityDuringFetchInContainer:(id)a3 zoneName:(id)a4 databaseScope:(int64_t)a5;
- (void)cloudSync_reportOwnershipChangeForMissingManateeIdentityDuringPush;
- (void)cloudSync_reportOwnershipChangeForProfile:(id)a3 reason:(id)a4;
- (void)cloudSync_reportPeriodicSyncFailureWithError:(id)a3 duration:(double)a4 type:(int64_t)a5;
- (void)cloudSync_reportPeriodicSyncStartForType:(int64_t)a3;
- (void)cloudSync_reportPeriodicSyncSuccessAfterDuration:(double)a3 type:(int64_t)a4;
- (void)cloudSync_reportPipelineFailed:(id)a3 error:(id)a4;
- (void)cloudSync_reportPipelineFinished:(id)a3;
- (void)cloudSync_reportPipelineStarted:(id)a3;
- (void)cloudSync_reportRebaseTriggeredByDeletionByUser:(BOOL)a3;
- (void)cloudSync_reportRestoreForProfile:(id)a3 startDate:(id)a4 endDate:(id)a5 duration:(double)a6 finishedJournalMerge:(BOOL)a7;
- (void)contextSync_operationSucceeded:(id)a3;
- (void)contextSync_triggerDuration:(double)a3;
- (void)database_reportCachedQueryEvent:(id)a3 cacheHits:(int64_t)a4 cacheMisses:(int64_t)a5 estimatedTotalBuckets:(unint64_t)a6;
- (void)database_reportDatabaseMigrationStatus:(int64_t)a3 database:(id)a4 schemaVersion:(int64_t)a5 error:(id)a6 profileType:(int64_t)a7;
- (void)database_reportJournalEntryInsertedForJournal:(int64_t)a3 entryClass:(id)a4 entrySize:(id)a5;
- (void)database_reportJournalMergeActivityResult:(int64_t)a3 duration:(double)a4 interruptions:(id)a5 error:(id)a6;
- (void)database_reportSQLiteCorruptionWithExtendedErrorCode:(int)a3 type:(int64_t)a4 profile:(id)a5 description:(id)a6 sqlStatement:(id)a7 failedObliterationAttempt:(BOOL)a8;
- (void)database_reportUnprotectedDatabaseIdentifier:(id)a3 doesNotMatchProtectedDatabaseIdentifier:(id)a4;
- (void)healthService_reportCountForAllServices:(id)a3 profileType:(int64_t)a4;
- (void)healthService_reportServiceType:(id)a3 duration:(double)a4 profileType:(int64_t)a5;
- (void)healthService_reportServiceTypeAdded:(id)a3 profileType:(int64_t)a4;
- (void)healthService_reportServiceTypeRemoved:(id)a3 profileType:(int64_t)a4;
- (void)heartDaily_reportHeartDailyAnalytics:(id)a3;
- (void)heartRate_reportDailyRestingHeartRate:(double)a3 sedentaryHeartRateCount:(int)a4 filteredSedentaryHeartRateCount:(int)a5 hasTimeAsleep:(BOOL)a6 hasBGHRSleepMode:(BOOL)a7 unfilteredRestingHeartRate:(double)a8 profileType:(int64_t)a9;
- (void)maintenanceCoordinator_reportCoreAnalyticsWithOperationName:(id)a3 database:(id)a4 pendingOperationsCount:(int64_t)a5 activeOperationsCount:(int64_t)a6 timeUntilStart:(int64_t)a7 canceled:(BOOL)a8 timedOut:(BOOL)a9 elapsedTime:(int64_t)a10 isImmediateRequest:(BOOL)a11 async:(BOOL)a12;
- (void)medicalID_dailyReport:(id)a3 sosContactStatus:(BOOL)a4 profileType:(int64_t)a5;
- (void)medicalID_reportHasBeenDeletedForProfileType:(int64_t)a3;
- (void)medicalID_reportHasBeenSetForProfileType:(int64_t)a3;
- (void)nanoSync_reportResponseStatusCode:(int)a3 profileType:(int64_t)a4;
- (void)nanoSync_reportSyncFailureWithReason:(id)a3 options:(unint64_t)a4 duration:(double)a5 profileType:(int64_t)a6 error:(id)a7;
- (void)nanoSync_reportSyncSuccessWithReason:(id)a3 options:(unint64_t)a4 duration:(double)a5 profileType:(int64_t)a6;
- (void)periodicActivity:(id)a3 configureXPCActivityCriteria:(id)a4;
- (void)profileDidBecomeReady:(id)a3;
- (void)sendDailyAnalyticsWithTimeout:(double)a3 completion:(id)a4;
- (void)sendEvent:(id)a3 block:(id)a4;
- (void)stateSync_operationFailed:(id)a3 error:(id)a4;
- (void)stateSync_operationSucceeded:(id)a3;
- (void)stateSync_recordSize:(unint64_t)a3;
- (void)stateSync_subscriptionTriggeredDomain:(id)a3;
- (void)stateSync_triggerDuration:(double)a3;
- (void)summarySharing_reportDailyAnalytics:(id)a3 activeWatchProductType:(id)a4 age:(int64_t)a5 sex:(id)a6;
- (void)summarySharing_reportSetupOperation:(id)a3 success:(BOOL)a4 error:(id)a5;
- (void)tinker_pairingDidFailWithError:(id)a3 configuration:(id)a4 duration:(double)a5 stage:(int64_t)a6;
- (void)tinker_pairingDidFinishForConfiguration:(id)a3 duration:(double)a4;
- (void)workout_reportEvent:(id)a3 timestamp:(id)a4 sessionID:(id)a5 activityType:(int64_t)a6 sessionDuration:(int64_t)a7 activityCount:(int64_t)a8 extendedMode:(BOOL)a9 totalLocations:(int64_t)a10 routeSmoothingRetryCount:(int64_t)a11 activityID:(id)a12 failure:(BOOL)a13;
- (void)workout_reportGymKitWorkoutWithFitnessMachineType:(id)a3 manufacturer:(id)a4 timeToBeginExperience:(int64_t)a5 workoutEndError:(int64_t)a6;
- (void)workout_reportMirroringEventWithStartDuration:(double)a3 stopDuration:(double)a4 mirroringDuration:(double)a5 numOfSendDataRequests:(int64_t)a6 maxTimeToSendData:(double)a7 minTimeToSendData:(double)a8 avgTimeToSendData:(double)a9 isFirstParty:(BOOL)a10;
- (void)workout_reportWorkoutCondenserCoalescingCompressionRate:(id)a3 numberOfSamplesBeforeCoalescing:(int64_t)a4 numberOfSamplesAfterCoalescing:(int64_t)a5 compressionRate:(double)a6;
- (void)workout_reportWorkoutEventWithHeartBeatFailures:(int64_t)a3 workoutDuration:(double)a4 isFirstParty:(BOOL)a5 sessionID:(id)a6;
@end

@implementation HDAnalyticsSubmissionCoordinator

- (void)maintenanceCoordinator_reportCoreAnalyticsWithOperationName:(id)a3 database:(id)a4 pendingOperationsCount:(int64_t)a5 activeOperationsCount:(int64_t)a6 timeUntilStart:(int64_t)a7 canceled:(BOOL)a8 timedOut:(BOOL)a9 elapsedTime:(int64_t)a10 isImmediateRequest:(BOOL)a11 async:(BOOL)a12
{
  v14 = sub_22911C35C();
  v16 = v15;
  v17 = sub_22911C35C();
  v19 = v18;
  v20 = self;
  v21 = sub_22911C34C();
  v22 = swift_allocObject();
  *(v22 + 16) = v14;
  *(v22 + 24) = v16;
  *(v22 + 32) = v17;
  *(v22 + 40) = v19;
  *(v22 + 48) = a5;
  *(v22 + 56) = a6;
  *(v22 + 64) = a7;
  *(v22 + 72) = a8;
  *(v22 + 73) = a9;
  *(v22 + 80) = a10;
  *(v22 + 88) = a11;
  *(v22 + 89) = a12;
  aBlock[4] = sub_2289B63A8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2289B6004;
  aBlock[3] = &block_descriptor_7;
  v23 = _Block_copy(aBlock);

  [(HDAnalyticsSubmissionCoordinator *)v20 sendEvent:v21 block:v23];

  _Block_release(v23);
}

- (void)tinker_pairingDidFinishForConfiguration:(id)a3 duration:(double)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.tinker.%@", @"pairing"];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __93__HDAnalyticsSubmissionCoordinator_Tinker__tinker_pairingDidFinishForConfiguration_duration___block_invoke;
  v9[3] = &unk_2786139B8;
  v11 = a4;
  v10 = v6;
  v8 = v6;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v7 block:v9];
}

id __93__HDAnalyticsSubmissionCoordinator_Tinker__tinker_pairingDidFinishForConfiguration_duration___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v8[0] = MEMORY[0x277CBEC38];
  v7[0] = @"success";
  v7[1] = @"duration";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v8[1] = v2;
  v7[2] = @"setupType";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "setupType")}];
  v8[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)tinker_pairingDidFailWithError:(id)a3 configuration:(id)a4 duration:(double)a5 stage:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.tinker.%@", @"pairing"];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __104__HDAnalyticsSubmissionCoordinator_Tinker__tinker_pairingDidFailWithError_configuration_duration_stage___block_invoke;
  v14[3] = &unk_2786139E0;
  v17 = a5;
  v15 = v10;
  v16 = v9;
  v12 = v9;
  v13 = v10;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v11 block:v14];
}

id __104__HDAnalyticsSubmissionCoordinator_Tinker__tinker_pairingDidFailWithError_configuration_duration_stage___block_invoke(uint64_t a1)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v12[0] = MEMORY[0x277CBEC28];
  v11[0] = @"success";
  v11[1] = @"duration";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v12[1] = v2;
  v11[2] = @"setupType";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "setupType")}];
  v12[2] = v3;
  v11[3] = @"errorDomain";
  v4 = [*(a1 + 40) domain];
  v5 = v4;
  v6 = @"<null>";
  if (v4)
  {
    v6 = v4;
  }

  v12[3] = v6;
  v11[4] = @"errorCode";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "code")}];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_sendTinkerSyncEventWithLatency:(void *)a3 timeSinceLastSuccessfullPull:(void *)a4 configuration:(char)a5 success:(void *)a6 error:
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (a1)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.tinker.%@", @"sync"];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __133__HDAnalyticsSubmissionCoordinator_Tinker___sendTinkerSyncEventWithLatency_timeSinceLastSuccessfullPull_configuration_success_error___block_invoke;
    v16[3] = &unk_278613A08;
    v17 = v13;
    v21 = a5;
    v18 = v11;
    v19 = v12;
    v20 = v14;
    [a1 sendEvent:v15 block:v16];
  }
}

id __133__HDAnalyticsSubmissionCoordinator_Tinker___sendTinkerSyncEventWithLatency_timeSinceLastSuccessfullPull_configuration_success_error___block_invoke(uint64_t a1)
{
  v30[6] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) repository];
  v3 = [v2 primaryCKContainer];
  v4 = [*(a1 + 32) repository];
  v5 = [v4 profileIdentifier];
  v6 = HDDatabaseForContainer(v3, v5);

  v28 = v6;
  v7 = HDCKDatabaseScopeToString([v6 databaseScope]);
  v29[0] = @"container";
  v26 = [*(a1 + 32) analyticsDictionary];
  v25 = [v26 objectForKeyedSubscript:@"primaryContainer"];
  v30[0] = v25;
  v30[1] = v7;
  v27 = v7;
  v29[1] = @"database";
  v29[2] = @"reason";
  v8 = [*(a1 + 32) analyticsDictionary];
  v9 = [v8 objectForKeyedSubscript:@"reason"];
  v30[2] = v9;
  v29[3] = @"options";
  v10 = [*(a1 + 32) analyticsDictionary];
  v11 = [v10 objectForKeyedSubscript:@"options"];
  v30[3] = v11;
  v29[4] = @"group";
  v12 = [*(a1 + 32) analyticsDictionary];
  v13 = [v12 objectForKeyedSubscript:@"group"];
  v30[4] = v13;
  v29[5] = @"success";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 64)];
  v30[5] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];
  v16 = [v15 mutableCopy];

  v17 = *(a1 + 40);
  if (v17)
  {
    [v16 setObject:v17 forKeyedSubscript:@"latency"];
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    [v16 setObject:v18 forKeyedSubscript:@"timeSinceLastSuccessfullPull"];
  }

  if ((*(a1 + 64) & 1) == 0)
  {
    v19 = [*(a1 + 56) domain];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = @"<null>";
    }

    [v16 setObject:v21 forKeyedSubscript:@"errorDomain"];

    v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 56), "code")}];
    [v16 setObject:v22 forKeyedSubscript:@"errorCode"];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)medicalID_dailyReport:(id)a3 sosContactStatus:(BOOL)a4 profileType:(int64_t)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __98__HDAnalyticsSubmissionCoordinator_MedicalID__medicalID_dailyReport_sosContactStatus_profileType___block_invoke;
  v10[3] = &unk_2786158F8;
  v13 = a4;
  v11 = v8;
  v12 = a5;
  v9 = v8;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.HealthApp.MedicalID.Daily" block:v10];
}

id __98__HDAnalyticsSubmissionCoordinator_MedicalID__medicalID_dailyReport_sosContactStatus_profileType___block_invoke(uint64_t a1)
{
  v50[23] = *MEMORY[0x277D85DE8];
  v49[0] = @"allergyInfo";
  v48 = [*(a1 + 32) allergyInfo];
  if ([v48 length])
  {
    v2 = &unk_283CB0528;
  }

  else
  {
    v2 = &unk_283CB0540;
  }

  v50[0] = v2;
  v49[1] = @"bloodType";
  if ([*(a1 + 32) bloodType])
  {
    v3 = &unk_283CB0528;
  }

  else
  {
    v3 = &unk_283CB0540;
  }

  v50[1] = v3;
  v49[2] = @"clinicalContacts";
  v47 = [*(a1 + 32) clinicalContacts];
  if ([v47 count])
  {
    v4 = &unk_283CB0528;
  }

  else
  {
    v4 = &unk_283CB0540;
  }

  v50[2] = v4;
  v49[3] = @"emergencyContacts";
  v46 = [*(a1 + 32) emergencyContacts];
  if ([v46 count])
  {
    v5 = &unk_283CB0528;
  }

  else
  {
    v5 = &unk_283CB0540;
  }

  v50[3] = v5;
  v49[4] = @"gregorianBirthdate";
  v45 = [*(a1 + 32) gregorianBirthday];
  if (v45)
  {
    v6 = &unk_283CB0528;
  }

  else
  {
    v6 = &unk_283CB0540;
  }

  v50[4] = v6;
  v49[5] = @"height";
  v44 = [*(a1 + 32) height];
  if (v44)
  {
    v7 = &unk_283CB0528;
  }

  else
  {
    v7 = &unk_283CB0540;
  }

  v50[5] = v7;
  v49[6] = @"isShownOnLockScreen";
  if ([*(a1 + 32) isDisabled])
  {
    v8 = &unk_283CB0540;
  }

  else
  {
    v8 = &unk_283CB0528;
  }

  v50[6] = v8;
  v49[7] = @"medicalConditions";
  v43 = [*(a1 + 32) medicalConditions];
  if ([v43 length])
  {
    v9 = &unk_283CB0528;
  }

  else
  {
    v9 = &unk_283CB0540;
  }

  v50[7] = v9;
  v49[8] = @"medicalNotes";
  v42 = [*(a1 + 32) medicalNotes];
  if ([v42 length])
  {
    v10 = &unk_283CB0528;
  }

  else
  {
    v10 = &unk_283CB0540;
  }

  v50[8] = v10;
  v49[9] = @"medicationInfo";
  v41 = [*(a1 + 32) medicationInfo];
  if ([v41 length])
  {
    v11 = &unk_283CB0528;
  }

  else
  {
    v11 = &unk_283CB0540;
  }

  v50[9] = v11;
  v49[10] = @"name";
  v40 = [*(a1 + 32) name];
  if (v40)
  {
    v12 = &unk_283CB0528;
  }

  else
  {
    v12 = &unk_283CB0540;
  }

  v50[10] = v12;
  v49[11] = @"organDonorStatus";
  v39 = [*(a1 + 32) isOrganDonor];
  if (v39)
  {
    v13 = &unk_283CB0528;
  }

  else
  {
    v13 = &unk_283CB0540;
  }

  v50[11] = v13;
  v49[12] = @"picture";
  v38 = [*(a1 + 32) pictureData];
  if (v38)
  {
    v14 = &unk_283CB0528;
  }

  else
  {
    v14 = &unk_283CB0540;
  }

  v50[12] = v14;
  v49[13] = @"primaryLanguageCode";
  v36 = [*(a1 + 32) primaryLanguageCode];
  if (v36)
  {
    v15 = &unk_283CB0528;
  }

  else
  {
    v15 = &unk_283CB0540;
  }

  v50[13] = v15;
  v49[14] = @"shareDuringEmergency";
  if ([*(a1 + 32) shareDuringEmergency])
  {
    v16 = &unk_283CB0528;
  }

  else
  {
    v16 = &unk_283CB0540;
  }

  v50[14] = v16;
  v49[15] = @"weight";
  v17 = [*(a1 + 32) weight];
  if (v17)
  {
    v18 = &unk_283CB0528;
  }

  else
  {
    v18 = &unk_283CB0540;
  }

  if (*(a1 + 48))
  {
    v19 = &unk_283CB0540;
  }

  else
  {
    v19 = &unk_283CB0528;
  }

  v50[15] = v18;
  v50[16] = v19;
  v49[16] = @"sosContactBug";
  v49[17] = @"profileType";
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v50[17] = v20;
  v49[18] = @"medicationsList";
  v21 = [*(a1 + 32) medicationsList];
  if ([v21 count])
  {
    v22 = &unk_283CB0528;
  }

  else
  {
    v22 = &unk_283CB0540;
  }

  v50[18] = v22;
  v49[19] = @"allergiesList";
  v23 = [*(a1 + 32) allergiesList];
  if ([v23 count])
  {
    v24 = &unk_283CB0528;
  }

  else
  {
    v24 = &unk_283CB0540;
  }

  v50[19] = v24;
  v49[20] = @"conditionsList";
  v25 = [*(a1 + 32) conditionsList];
  if ([v25 count])
  {
    v26 = &unk_283CB0528;
  }

  else
  {
    v26 = &unk_283CB0540;
  }

  v50[20] = v26;
  v49[21] = @"pregnancyStartDate";
  v27 = [*(a1 + 32) pregnancyStartDate];
  if (v27)
  {
    v28 = &unk_283CB0528;
  }

  else
  {
    v28 = &unk_283CB0540;
  }

  v50[21] = v28;
  v49[22] = @"pregnancyEstimatedDueDate";
  v29 = [*(a1 + 32) pregnancyEstimatedDueDate];
  if (v29)
  {
    v30 = &unk_283CB0528;
  }

  else
  {
    v30 = &unk_283CB0540;
  }

  v50[22] = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:23];
  v32 = [v31 mutableCopy];

  if (*(a1 + 40) == 3)
  {
    [v32 removeObjectForKey:@"sosContactBug"];
  }

  v33 = [v32 copy];

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

- (void)medicalID_reportHasBeenSetForProfileType:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __88__HDAnalyticsSubmissionCoordinator_MedicalID__medicalID_reportHasBeenSetForProfileType___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.MedicalID.hasBeenSet" block:v3];
}

id __88__HDAnalyticsSubmissionCoordinator_MedicalID__medicalID_reportHasBeenSetForProfileType___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"profileType";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)medicalID_reportHasBeenDeletedForProfileType:(int64_t)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __92__HDAnalyticsSubmissionCoordinator_MedicalID__medicalID_reportHasBeenDeletedForProfileType___block_invoke;
  v3[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v3[4] = a3;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.MedicalID.hasBeenDeleted" block:v3];
}

id __92__HDAnalyticsSubmissionCoordinator_MedicalID__medicalID_reportHasBeenDeletedForProfileType___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"profileType";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)heartDaily_reportHeartDailyAnalytics:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [a3 payload];
  _HKInitializeLogging();
  v5 = HKLogAnalytics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "Submitting CoreAnalytics heart daily analytics: %{public}@", buf, 0xCu);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__HDAnalyticsSubmissionCoordinator_HeartDaily__heartDaily_reportHeartDailyAnalytics___block_invoke;
  v8[3] = &unk_278616398;
  v9 = v4;
  v6 = v4;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.health.HeartRhythm.HeartDailyAnalytics" block:v8];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)healthService_reportServiceTypeAdded:(id)a3 profileType:(int64_t)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __100__HDAnalyticsSubmissionCoordinator_HealthService__healthService_reportServiceTypeAdded_profileType___block_invoke;
  v8[3] = &unk_2786139B8;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.services" block:v8];
}

id __100__HDAnalyticsSubmissionCoordinator_HealthService__healthService_reportServiceTypeAdded_profileType___block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6[0] = @"serviceType";
  v6[1] = @"added";
  v1 = *(a1 + 40);
  v7[0] = *(a1 + 32);
  v7[1] = MEMORY[0x277CBEC38];
  v6[2] = @"profileType";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:v1];
  v7[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)healthService_reportServiceTypeRemoved:(id)a3 profileType:(int64_t)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __102__HDAnalyticsSubmissionCoordinator_HealthService__healthService_reportServiceTypeRemoved_profileType___block_invoke;
  v8[3] = &unk_2786139B8;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.services" block:v8];
}

id __102__HDAnalyticsSubmissionCoordinator_HealthService__healthService_reportServiceTypeRemoved_profileType___block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6[0] = @"serviceType";
  v6[1] = @"removed";
  v1 = *(a1 + 40);
  v7[0] = *(a1 + 32);
  v7[1] = MEMORY[0x277CBEC38];
  v6[2] = @"profileType";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:v1];
  v7[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)healthService_reportCountForAllServices:(id)a3 profileType:(int64_t)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __103__HDAnalyticsSubmissionCoordinator_HealthService__healthService_reportCountForAllServices_profileType___block_invoke;
  v8[3] = &unk_2786139B8;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.services" block:v8];
}

id __103__HDAnalyticsSubmissionCoordinator_HealthService__healthService_reportCountForAllServices_profileType___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v7[0] = @"servicesCount";
  v7[1] = @"profileType";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:v1];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)healthService_reportServiceType:(id)a3 duration:(double)a4 profileType:(int64_t)a5
{
  v8 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __104__HDAnalyticsSubmissionCoordinator_HealthService__healthService_reportServiceType_duration_profileType___block_invoke;
  v10[3] = &unk_278617330;
  v11 = v8;
  v12 = a4;
  v13 = a5;
  v9 = v8;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.services.connection-duration" block:v10];
}

id __104__HDAnalyticsSubmissionCoordinator_HealthService__healthService_reportServiceType_duration_profileType___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v8[0] = *(a1 + 32);
  v7[0] = @"serviceType";
  v7[1] = @"duration";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v8[1] = v2;
  v7[2] = @"profileType";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v8[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)authorization_reportAuthRequestsFromBundleIdentifier:(id)a3 isExtension:(BOOL)a4 isAppleWatch:(BOOL)a5 shouldPrompt:(BOOL)a6
{
  v10 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __142__HDAnalyticsSubmissionCoordinator_Authorization__authorization_reportAuthRequestsFromBundleIdentifier_isExtension_isAppleWatch_shouldPrompt___block_invoke;
  v12[3] = &unk_278618408;
  v13 = v10;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v11 = v10;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.authorization.request" block:v12];
}

id __142__HDAnalyticsSubmissionCoordinator_Authorization__authorization_reportAuthRequestsFromBundleIdentifier_isExtension_isAppleWatch_shouldPrompt___block_invoke(uint64_t a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v2 = @"Unknown";
  }

  v10[0] = v2;
  v9[0] = @"bundleIdentifier";
  v9[1] = @"isExtension";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 40)];
  v10[1] = v3;
  v9[2] = @"isAppleWatch";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 41)];
  v10[2] = v4;
  v9[3] = @"shouldPrompt";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 42)];
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)authorization_reportAuthRequestPromptedForBundleIdentifer:(id)a3 profileType:(int64_t)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __121__HDAnalyticsSubmissionCoordinator_Authorization__authorization_reportAuthRequestPromptedForBundleIdentifer_profileType___block_invoke;
  v8[3] = &unk_2786139B8;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.authorization.prompt" block:v8];
}

id __121__HDAnalyticsSubmissionCoordinator_Authorization__authorization_reportAuthRequestPromptedForBundleIdentifer_profileType___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = *(a1 + 32);
  }

  else
  {
    v2 = @"Unknown";
  }

  v7[0] = @"bundleIdentifier";
  v7[1] = @"profileType";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:v1];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)attachments_reportDailyAnalytics:(id)a3
{
  v4 = a3;
  if ([(HDAnalyticsSubmissionCoordinator *)self isImprovedHealthAndActivityEnabled])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __82__HDAnalyticsSubmissionCoordinator_Attachments__attachments_reportDailyAnalytics___block_invoke;
    v5[3] = &unk_27861ED70;
    v6 = v4;
    [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.health.attachments.daily" block:v5];
  }
}

id __82__HDAnalyticsSubmissionCoordinator_Attachments__attachments_reportDailyAnalytics___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfAttachments")}];
  [v2 setObject:v3 forKeyedSubscript:@"numberOfAttachments"];

  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfReferences")}];
  [v2 setObject:v4 forKeyedSubscript:@"numberOfReferences"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfTombstones")}];
  [v2 setObject:v5 forKeyedSubscript:@"numberOfTombstones"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "totalSizeOfFiles")}];
  [v2 setObject:v6 forKeyedSubscript:@"totalSizeOfFiles"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfUnconfirmedFiles")}];
  [v2 setObject:v7 forKeyedSubscript:@"numberOfUnconfirmedFiles"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfOrphanedAttachments")}];
  [v2 setObject:v8 forKeyedSubscript:@"numberOfOrphanedAttachments"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfOrphanedReferences")}];
  [v2 setObject:v9 forKeyedSubscript:@"numberOfOrphanedReferences"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfReferencesCreatedLast24Hours")}];
  [v2 setObject:v10 forKeyedSubscript:@"numberOfReferencesCreatedLast24Hours"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfAttachmentsCreatedLast24Hours")}];
  [v2 setObject:v11 forKeyedSubscript:@"numberOfAttachmentsCreatedLast24Hours"];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfTombstonesCreatedLast24Hours")}];
  [v2 setObject:v12 forKeyedSubscript:@"numberOfTombstonesCreatedLast24Hours"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfAttachmentsWithMultipleReferences")}];
  [v2 setObject:v13 forKeyedSubscript:@"numberOfAttachmentsWithMultipleReferences"];

  return v2;
}

- (void)attachments_reportDailyCloudAnalytics:(id)a3
{
  v4 = a3;
  if ([(HDAnalyticsSubmissionCoordinator *)self isImprovedHealthAndActivityEnabled])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __87__HDAnalyticsSubmissionCoordinator_Attachments__attachments_reportDailyCloudAnalytics___block_invoke;
    v5[3] = &unk_27861ED70;
    v6 = v4;
    [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.health.sync.cloud.cache.attachments.daily" block:v5];
  }
}

id __87__HDAnalyticsSubmissionCoordinator_Attachments__attachments_reportDailyCloudAnalytics___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfAttachmentRecords")}];
  [v2 setObject:v3 forKeyedSubscript:@"numberOfAttachmentRecords"];

  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfReferenceRecords")}];
  [v2 setObject:v4 forKeyedSubscript:@"numberOfReferenceRecords"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfTombstoneRecords")}];
  [v2 setObject:v5 forKeyedSubscript:@"numberOfTombstoneRecords"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfOrphanedAttachmentRecords")}];
  [v2 setObject:v6 forKeyedSubscript:@"numberOfOrphanedAttachmentRecords"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "numberOfOrphanedReferenceRecords")}];
  [v2 setObject:v7 forKeyedSubscript:@"numberOfOrphanedReferenceRecords"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "percentageOfAttachmentsWithAssetData")}];
  [v2 setObject:v8 forKeyedSubscript:@"percentageOfAttachmentsWithAssetData"];

  return v2;
}

- (void)heartRate_reportDailyRestingHeartRate:(double)a3 sedentaryHeartRateCount:(int)a4 filteredSedentaryHeartRateCount:(int)a5 hasTimeAsleep:(BOOL)a6 hasBGHRSleepMode:(BOOL)a7 unfilteredRestingHeartRate:(double)a8 profileType:(int64_t)a9
{
  if (a4 < 1)
  {
    v11 = -1.0;
  }

  else
  {
    v11 = a5 / a4;
  }

  v18 = v9;
  v19 = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __211__HDAnalyticsSubmissionCoordinator_HeartRate__heartRate_reportDailyRestingHeartRate_sedentaryHeartRateCount_filteredSedentaryHeartRateCount_hasTimeAsleep_hasBGHRSleepMode_unfilteredRestingHeartRate_profileType___block_invoke;
  v12[3] = &unk_278621290;
  v12[4] = self;
  v12[5] = a9;
  v13 = a4;
  v14 = a5;
  v15 = v11;
  v16 = a7;
  v17 = a6;
  *&v12[6] = a3;
  *&v12[7] = a8;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.hid.bghr_rhr_eod" block:v12];
}

id __211__HDAnalyticsSubmissionCoordinator_HeartRate__heartRate_reportDailyRestingHeartRate_sedentaryHeartRateCount_filteredSedentaryHeartRateCount_hasTimeAsleep_hasBGHRSleepMode_unfilteredRestingHeartRate_profileType___block_invoke(uint64_t a1)
{
  v18[9] = *MEMORY[0x277D85DE8];
  v17[0] = @"pop";
  if (*(a1 + 32))
  {
    v2 = *(a1 + 40) == 3;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{v3, v17[0]}];
  v18[0] = v4;
  v17[1] = @"output_value";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v18[1] = v5;
  v17[2] = @"raw_count";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64)];
  v18[2] = v6;
  v17[3] = @"filtered_count";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 68)];
  v18[3] = v7;
  v17[4] = @"filtered_frac";
  LODWORD(v8) = *(a1 + 72);
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v18[4] = v9;
  v17[5] = @"has_bghr_sleep_mode";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 76)];
  v18[5] = v10;
  v17[6] = @"has_time_asleep";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 77)];
  v18[6] = v11;
  v17[7] = @"output_value_with_sleephr";
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v18[7] = v12;
  v17[8] = @"output_value_delta";
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56) - *(a1 + 48)];
  v18[8] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:9];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)nanoSync_reportResponseStatusCode:(int)a3 profileType:(int64_t)a4
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.nano.%@", @"reponse-status"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__HDAnalyticsSubmissionCoordinator_NanoSync__nanoSync_reportResponseStatusCode_profileType___block_invoke;
  v8[3] = &__block_descriptor_44_e19___NSDictionary_8__0l;
  v9 = a3;
  v8[4] = a4;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v7 block:v8];
}

id __92__HDAnalyticsSubmissionCoordinator_NanoSync__nanoSync_reportResponseStatusCode_profileType___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"statusCode";
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v7[1] = @"profileType";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)nanoSync_reportSyncSuccessWithReason:(id)a3 options:(unint64_t)a4 duration:(double)a5 profileType:(int64_t)a6
{
  v10 = a3;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.nano.%@", @"sync.finished"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __112__HDAnalyticsSubmissionCoordinator_NanoSync__nanoSync_reportSyncSuccessWithReason_options_duration_profileType___block_invoke;
  v13[3] = &unk_278623CD8;
  v14 = v10;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v12 = v10;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v11 block:v13];
}

id __112__HDAnalyticsSubmissionCoordinator_NanoSync__nanoSync_reportSyncSuccessWithReason_options_duration_profileType___block_invoke(uint64_t a1)
{
  v16[8] = *MEMORY[0x277D85DE8];
  v16[0] = MEMORY[0x277CBEC38];
  v15[0] = @"success";
  v15[1] = @"reason";
  v2 = *(a1 + 32);
  v3 = [v2 length];
  if (v3 >= 0x400)
  {
    v4 = 1024;
  }

  else
  {
    v4 = v3;
  }

  v5 = [v2 substringToIndex:v4];
  v16[1] = v5;
  v15[2] = @"optionPullRequest";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) & 1];
  v16[2] = v6;
  v15[3] = @"optionsLastChange";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:(*(a1 + 40) >> 1) & 1];
  v16[3] = v7;
  v15[4] = @"optionsActiveOnly";
  v8 = [MEMORY[0x277CCABB0] numberWithInt:(*(a1 + 40) >> 2) & 1];
  v16[4] = v8;
  v15[5] = @"optionsRequestedByRemote";
  v9 = [MEMORY[0x277CCABB0] numberWithInt:(*(a1 + 40) >> 3) & 1];
  v16[5] = v9;
  v15[6] = @"duration";
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
  v16[6] = v10;
  v15[7] = @"profileType";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v16[7] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:8];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)nanoSync_reportSyncFailureWithReason:(id)a3 options:(unint64_t)a4 duration:(double)a5 profileType:(int64_t)a6 error:(id)a7
{
  v9 = a4;
  v12 = a7;
  v13 = MEMORY[0x277CBEB38];
  v14 = a3;
  v15 = objc_alloc_init(v13);
  [v15 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"success"];
  v16 = [v14 length];
  if (v16 >= 0x400)
  {
    v17 = 1024;
  }

  else
  {
    v17 = v16;
  }

  v18 = [v14 substringToIndex:v17];

  [v15 setObject:v18 forKeyedSubscript:@"reason"];
  v19 = [MEMORY[0x277CCABB0] numberWithInt:v9 & 1];
  [v15 setObject:v19 forKeyedSubscript:@"optionPullRequest"];

  v20 = [MEMORY[0x277CCABB0] numberWithInt:(v9 >> 1) & 1];
  [v15 setObject:v20 forKeyedSubscript:@"optionsLastChange"];

  v21 = [MEMORY[0x277CCABB0] numberWithInt:(v9 >> 2) & 1];
  [v15 setObject:v21 forKeyedSubscript:@"optionsActiveOnly"];

  v22 = [MEMORY[0x277CCABB0] numberWithInt:(v9 >> 3) & 1];
  [v15 setObject:v22 forKeyedSubscript:@"optionsRequestedByRemote"];

  v23 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
  [v15 setObject:v23 forKeyedSubscript:@"duration"];

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:a6];
  [v15 setObject:v24 forKeyedSubscript:@"profileType"];

  if (v12)
  {
    v25 = [v12 domain];
    [v15 setObject:v25 forKeyedSubscript:@"errorDomain"];

    v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v12, "code")}];
    [v15 setObject:v26 forKeyedSubscript:@"errorCode"];
  }

  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.nano.%@", @"sync.finished"];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __118__HDAnalyticsSubmissionCoordinator_NanoSync__nanoSync_reportSyncFailureWithReason_options_duration_profileType_error___block_invoke;
  v29[3] = &unk_27861ED70;
  v30 = v15;
  v28 = v15;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v27 block:v29];
}

- (HDAnalyticsSubmissionCoordinator)initWithProfile:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = HDAnalyticsSubmissionCoordinator;
  v5 = [(HDAnalyticsSubmissionCoordinator *)&v19 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_primaryProfile, v4);
    v7 = [v4 daemon];
    v8 = [v7 behavior];
    objc_storeWeak(&v6->_behavior, v8);

    v9 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v9;

    v11 = HKCreateSerialDispatchQueue();
    timeoutQueue = v6->_timeoutQueue;
    v6->_timeoutQueue = v11;

    v13 = objc_alloc(MEMORY[0x277CCD738]);
    v14 = HKLogAnalytics();
    v15 = [v13 initWithName:@"DailyAnalyticEventObservers" loggingCategory:v14];
    observers = v6->_observers;
    v6->_observers = v15;

    v6->_inProgress = 0;
    v6->_dailyAnalyticsObserversLock._os_unfair_lock_opaque = 0;
    WeakRetained = objc_loadWeakRetained(&v6->_primaryProfile);
    [WeakRetained registerProfileReadyObserver:v6 queue:v6->_queue];
  }

  return v6;
}

- (void)profileDidBecomeReady:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_behavior);
  v6 = [WeakRetained features];
  v7 = [v6 analyticsSubmissionOnMaintenanceWorkCoordinator];

  if (v7)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__HDAnalyticsSubmissionCoordinator_profileDidBecomeReady___block_invoke;
    aBlock[3] = &unk_278624EB0;
    objc_copyWeak(&v28, &location);
    v8 = _Block_copy(aBlock);
    v9 = objc_alloc(MEMORY[0x277D10B10]);
    v10 = HKLogAnalytics();
    v11 = [v4 daemon];
    v12 = [v11 systemScheduler];
    v13 = [v9 initWithName:@"com.apple.healthd.daily-report" loggingCategory:v10 scheduler:v12 handler:v8 condition:0];
    repeatingBackgroundTask = self->_repeatingBackgroundTask;
    self->_repeatingBackgroundTask = v13;

    v15 = [(HDRepeatingBackgroundTask *)self->_repeatingBackgroundTask getRequest];
    if (!v15)
    {
      v15 = [objc_alloc(MEMORY[0x277CF07D8]) initWithIdentifier:@"com.apple.healthd.daily-report"];
      [v15 setRequiresProtectionClass:2];
      [v15 setInterval:86400.0];
      [v15 interval];
      [v15 setMinDurationBetweenInstances:v16 * 0.8];
      [v15 setPriority:2];
      [v15 setRequiresNetworkConnectivity:1];
      v17 = self->_repeatingBackgroundTask;
      v26 = 0;
      [(HDRepeatingBackgroundTask *)v17 submitRequest:v15 error:&v26];
      v18 = v26;
      if (v18)
      {
        _HKInitializeLogging();
        v19 = HKLogAnalytics();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v31 = self;
          v32 = 2114;
          v33 = v18;
          _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "%{public}@: Unable to submitRequest: %{public}@", buf, 0x16u);
        }
      }
    }

    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
  }

  else
  {
    v20 = [HDPeriodicActivity alloc];
    v21 = objc_loadWeakRetained(&self->_primaryProfile);
    v22 = HKLogAnalytics();
    v23 = [(HDPeriodicActivity *)v20 initWithProfile:v21 name:@"com.apple.healthd.daily-report" interval:self delegate:v22 loggingCategory:*MEMORY[0x277D86298]];
    periodicActivity = self->_periodicActivity;
    self->_periodicActivity = v23;
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __58__HDAnalyticsSubmissionCoordinator_profileDidBecomeReady___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HDAnalyticsSubmissionCoordinator_profileDidBecomeReady___block_invoke_2;
  v9[3] = &unk_278624E88;
  objc_copyWeak(&v11, (a1 + 32));
  v8 = v6;
  v10 = v8;
  [(HDAnalyticsSubmissionCoordinator *)WeakRetained _performAnalyticsSubmissionWithCompletion:v9];

  objc_destroyWeak(&v11);
}

void __58__HDAnalyticsSubmissionCoordinator_profileDidBecomeReady___block_invoke_2(uint64_t a1, unint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = HDStringFromPeriodicActivityResult(a2);
  _HKInitializeLogging();
  v7 = HKLogAnalytics();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

  if (v8)
  {
    v9 = HKLogAnalytics();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v13 = 138543874;
      v14 = WeakRetained;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "%{public}@: HDRepeatingBackgroundTask performed analytics: %@ : %@", &v13, 0x20u);
    }
  }

  if (a2 <= 3)
  {
    v11 = qword_22916E450[a2];
    (*(*(a1 + 32) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_performAnalyticsSubmissionWithCompletion:(uint64_t)a1
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    v22 = 0;
    v4 = MEMORY[0x277CCACA8];
    v5 = [MEMORY[0x277CCAD78] UUID];
    v6 = [v5 UUIDString];
    v7 = [v4 stringWithFormat:@"dailyAnalytics-%@", v6];

    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v9 = [WeakRetained database];
    v10 = [v9 takeAccessibilityAssertionWithOwnerIdentifier:v7 timeout:&v22 error:300.0];

    if (!v10)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v24 = a1;
        v25 = 2114;
        v26 = v22;
        _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "%{public}@: Daily analytics failed to take database accessibility assertion: %{public}@", buf, 0x16u);
      }
    }

    v12 = v22;
    if (v10)
    {
      v13 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:a1 activityName:@"com.apple.healthd.daily-report"];
      *(a1 + 64) = 1;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __78__HDAnalyticsSubmissionCoordinator__performAnalyticsSubmissionWithCompletion___block_invoke;
      aBlock[3] = &unk_278624EF8;
      v21 = v3;
      v18 = v10;
      v19 = v13;
      v20 = a1;
      v14 = v13;
      v15 = _Block_copy(aBlock);
      [a1 sendDailyAnalyticsWithTimeout:v15 completion:30.0];
    }

    else
    {
      (*(v3 + 2))(v3, 2, v12, 0.0);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)sendEvent:(id)a3 block:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = HKLogAnalytics();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

  if (v9)
  {
    v10 = HKLogAnalytics();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138543618;
      v13 = self;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_INFO, "%{public}@: Event sent: %{public}@", &v12, 0x16u);
    }
  }

  AnalyticsSendEventLazy();

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEventUsed:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogAnalytics();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

  if (v6)
  {
    v7 = HKLogAnalytics();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138543618;
      v12 = self;
      v13 = 2114;
      v14 = v4;
      _os_log_debug_impl(&dword_228986000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: Checked whether event is used: %{public}@", &v11, 0x16u);
    }
  }

  IsEventUsed = AnalyticsIsEventUsed();

  v9 = *MEMORY[0x277D85DE8];
  return IsEventUsed;
}

- (void)_logFaultForTimedOutObservers:(id)a3 timeoutSeconds:(double)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCAB68];
  v7 = a3;
  v8 = [[v6 alloc] initWithString:@"["];
  [v8 hk_appendComponentsJoinedByString:@" container:" componentGenerator:{v7, &__block_literal_global_156}];

  [v8 appendString:@"]"];
  _HKInitializeLogging();
  v9 = HKLogInfrastructure();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    v11 = 138543874;
    v12 = self;
    v13 = 2048;
    v14 = a4;
    v15 = 2114;
    v16 = v8;
    _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "%{public}@: Timeout (%0.1f) waiting for %{public}@", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

id __81__HDAnalyticsSubmissionCoordinator__logFaultForTimedOutObservers_timeoutSeconds___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 initWithFormat:@"%@:%p", v6, v3];

  return v7;
}

uint64_t __78__HDAnalyticsSubmissionCoordinator__performAnalyticsSubmissionWithCompletion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 56) + 16))();
  [*(a1 + 32) invalidate];
  result = [*(a1 + 40) invalidate];
  *(*(a1 + 48) + 64) = 0;
  return result;
}

- (void)_locked_sendDailyAnalyticsWithTimeout:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 68));
    v4 = [*(a1 + 88) anyObject];
    if (v4 && (WeakRetained = objc_loadWeakRetained((a1 + 8)), [WeakRetained database], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isProtectedDataAvailable"), v6, WeakRetained, v7))
    {
      v8 = [@"com.apple.healthd.daily-report" stringByAppendingFormat:@"%@", v4];
      v9 = [(HKDaemonTransaction *)HDDaemonTransaction transactionWithOwner:a1 activityName:v8];
      v10 = [objc_alloc(MEMORY[0x277CCDDB0]) initWithQueue:*(a1 + 48) completion:&__block_literal_global_329_1];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __74__HDAnalyticsSubmissionCoordinator__locked_sendDailyAnalyticsWithTimeout___block_invoke_2;
      v37[3] = &unk_278614E78;
      v37[4] = a1;
      v11 = v4;
      v38 = v11;
      v39 = a2;
      [v10 startWithTimeoutInterval:v37 handler:a2];
      v12 = *(a1 + 56);
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __74__HDAnalyticsSubmissionCoordinator__locked_sendDailyAnalyticsWithTimeout___block_invoke_3;
      v31[3] = &unk_278624F48;
      v31[4] = a1;
      v32 = v8;
      v33 = v10;
      v36 = a2;
      v34 = v11;
      v35 = v9;
      v13 = v9;
      v14 = v10;
      v15 = v8;
      [v12 notifyObserver:v34 handler:v31];
    }

    else
    {
      [*(a1 + 72) timeIntervalSinceNow];
      v17 = -v16;
      v18 = *(a1 + 72);
      *(a1 + 72) = 0;

      v19 = [*(a1 + 80) copy];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __74__HDAnalyticsSubmissionCoordinator__locked_sendDailyAnalyticsWithTimeout___block_invoke_336;
      v29[3] = &unk_278616398;
      v30 = v19;
      v15 = v19;
      [a1 sendEvent:@"com.apple.healthd.daily-report" block:v29];
      v20 = _Block_copy(*(a1 + 96));
      v21 = *(a1 + 96);
      *(a1 + 96) = 0;

      v22 = *(a1 + 80);
      *(a1 + 80) = 0;

      v23 = *(a1 + 88);
      *(a1 + 88) = 0;

      v24 = *(a1 + 40);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __74__HDAnalyticsSubmissionCoordinator__locked_sendDailyAnalyticsWithTimeout___block_invoke_2_338;
      block[3] = &unk_278624F70;
      block[4] = a1;
      v27 = v20;
      v28 = v17;
      v25 = v20;
      dispatch_async(v24, block);

      v14 = v30;
    }
  }
}

void __74__HDAnalyticsSubmissionCoordinator__locked_sendDailyAnalyticsWithTimeout___block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 68));
  v2 = [*(*(a1 + 32) + 88) containsObject:*(a1 + 40)];
  [*(*(a1 + 32) + 88) removeObject:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
  [v3 _logFaultForTimedOutObservers:v4 timeoutSeconds:*(a1 + 48)];

  if (v2)
  {
    [(HDAnalyticsSubmissionCoordinator *)*(a1 + 32) _locked_sendDailyAnalyticsWithTimeout:?];
  }

  v5 = (*(a1 + 32) + 68);

  os_unfair_lock_unlock(v5);
}

void __74__HDAnalyticsSubmissionCoordinator__locked_sendDailyAnalyticsWithTimeout___block_invoke_3(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEAA8] now];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v6 = [WeakRetained isAppleInternalInstall];

  if (v6)
  {
    _HKInitializeLogging();
    v7 = HKLogAnalytics();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);

    if (v8)
    {
      v9 = HKLogAnalytics();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 40);
        *buf = 138543362;
        v26 = v10;
        _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_INFO, "HDAnalyticsSubmissionCoordinator starting daily observer %{public}@", buf, 0xCu);
      }
    }
  }

  v11 = *(a1 + 32);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__HDAnalyticsSubmissionCoordinator__locked_sendDailyAnalyticsWithTimeout___block_invoke_333;
  v19[3] = &unk_278624F20;
  v20 = *(a1 + 48);
  v21 = v4;
  v18 = *(a1 + 32);
  v12 = *(&v18 + 1);
  v13 = *(a1 + 56);
  v24 = *(a1 + 72);
  v14 = *(a1 + 64);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  v22 = v18;
  v23 = v15;
  v16 = v4;
  [v3 reportDailyAnalyticsWithCoordinator:v11 completion:v19];

  v17 = *MEMORY[0x277D85DE8];
}

void __74__HDAnalyticsSubmissionCoordinator__locked_sendDailyAnalyticsWithTimeout___block_invoke_333(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) invalidate];
  [*(a1 + 40) timeIntervalSinceNow];
  v5 = v4;
  WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 16));
  v7 = [WeakRetained isAppleInternalInstall];

  if (v7)
  {
    _HKInitializeLogging();
    v8 = HKLogAnalytics();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);

    if (v9)
    {
      v10 = HKLogAnalytics();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 56);
        v18 = 138543618;
        v19 = v11;
        v20 = 2050;
        v21 = -v5;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_INFO, "HDAnalyticsSubmissionCoordinator daily observer %{public}@ took %{public}f seconds", &v18, 0x16u);
      }
    }
  }

  v12 = *(a1 + 48);
  if ((*(v12 + 64) & 1) == 0)
  {
    _HKInitializeLogging();
    v13 = HKLogAnalytics();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      _os_log_fault_impl(&dword_228986000, v13, OS_LOG_TYPE_FAULT, "%{public}@: observer %@ returned when not in progress. It missed the send.", &v18, 0x16u);
    }

    v12 = *(a1 + 48);
  }

  os_unfair_lock_lock((v12 + 68));
  if (v3)
  {
    [*(*(a1 + 48) + 80) addEntriesFromDictionary:v3];
  }

  v14 = [*(*(a1 + 48) + 88) containsObject:*(a1 + 64)];
  [*(*(a1 + 48) + 88) removeObject:*(a1 + 64)];
  if (v14)
  {
    [(HDAnalyticsSubmissionCoordinator *)*(a1 + 48) _locked_sendDailyAnalyticsWithTimeout:?];
  }

  os_unfair_lock_unlock((*(a1 + 48) + 68));
  [*(a1 + 72) invalidate];

  v15 = *MEMORY[0x277D85DE8];
}

void __74__HDAnalyticsSubmissionCoordinator__locked_sendDailyAnalyticsWithTimeout___block_invoke_2_338(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  (*(a1[5] + 16))(0.0);
  _HKInitializeLogging();
  v2 = HKLogAnalytics();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);

  if (v3)
  {
    v4 = HKLogAnalytics();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = a1[4];
      v6 = a1[6];
      v7 = [*(v5 + 56) count];
      v9 = 138543874;
      v10 = v5;
      v11 = 2050;
      v12 = v6;
      v13 = 2050;
      v14 = v7;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_INFO, "%{public}@: DailyAnalytics took %{public}f seconds with %{public}ld observers", &v9, 0x20u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendDailyAnalyticsWithTimeout:(double)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  os_unfair_lock_lock(&self->_dailyAnalyticsObserversLock);
  v7 = [MEMORY[0x277CBEAA8] date];
  dailyAnalyticsStartTime = self->_dailyAnalyticsStartTime;
  self->_dailyAnalyticsStartTime = v7;

  WeakRetained = objc_loadWeakRetained(&self->_behavior);
  v10 = [WeakRetained isAppleInternalInstall];

  if (v10)
  {
    _HKInitializeLogging();
    v11 = HKLogAnalytics();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);

    if (v12)
    {
      v13 = HKLogAnalytics();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v23 = 138543362;
        v24 = self;
        _os_log_impl(&dword_228986000, v13, OS_LOG_TYPE_INFO, "HDAnalyticsSubmissionCoordinator starting daily %{public}@", &v23, 0xCu);
      }
    }
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  dailyAnalyticsPayload = self->_dailyAnalyticsPayload;
  self->_dailyAnalyticsPayload = v14;

  v16 = objc_alloc(MEMORY[0x277CBEB58]);
  v17 = [(HDAnalyticsSubmissionCoordinatorDelegate *)self->_observers allObservers];
  v18 = [v16 initWithArray:v17];
  dailyAnalyticsPendingObservers = self->_dailyAnalyticsPendingObservers;
  self->_dailyAnalyticsPendingObservers = v18;

  v20 = [v6 copy];
  dailyAnalyticsCompletionHandler = self->_dailyAnalyticsCompletionHandler;
  self->_dailyAnalyticsCompletionHandler = v20;

  [(HDAnalyticsSubmissionCoordinator *)self _locked_sendDailyAnalyticsWithTimeout:a3];
  os_unfair_lock_unlock(&self->_dailyAnalyticsObserversLock);
  v22 = *MEMORY[0x277D85DE8];
}

- (void)periodicActivity:(id)a3 configureXPCActivityCriteria:(id)a4
{
  v4 = *MEMORY[0x277D86340];
  v5 = *MEMORY[0x277D86348];
  xdict = a4;
  xpc_dictionary_set_string(xdict, v4, v5);
  xpc_dictionary_set_int64(xdict, *MEMORY[0x277D86288], *MEMORY[0x277D86298]);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86230], 1);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_BOOL(xdict, *MEMORY[0x277D86370], 1);
}

- (id)_createHealthStoreForProfileIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCD4D8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setProfileIdentifier:v4];

  [v5 resume];

  return v5;
}

- (_HKBehavior)behavior
{
  WeakRetained = objc_loadWeakRetained(&self->_behavior);

  return WeakRetained;
}

- (void)summarySharing_reportSetupOperation:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __102__HDAnalyticsSubmissionCoordinator_SummarySharing__summarySharing_reportSetupOperation_success_error___block_invoke;
  v12[3] = &unk_278625708;
  v15 = a4;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.health.sharing.setup.operational.event" block:v12];
}

id __102__HDAnalyticsSubmissionCoordinator_SummarySharing__summarySharing_reportSetupOperation_success_error___block_invoke(uint64_t a1)
{
  v27[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 32);
    v26[0] = @"operation";
    v26[1] = @"success";
    v27[0] = v2;
    v27[1] = MEMORY[0x277CBEC38];
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  }

  else
  {
    v24[0] = @"operation";
    v24[1] = @"success";
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v25[0] = *(a1 + 32);
    v25[1] = MEMORY[0x277CBEC28];
    v6 = [v4 domain];
    v7 = v6;
    v8 = @"<null>";
    if (v6)
    {
      v8 = v6;
    }

    v25[2] = v8;
    v24[3] = @"errorCode";
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "code")}];
    v25[3] = v9;
    v24[4] = @"errorClass";
    v10 = [*(a1 + 40) userInfo];
    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCBD90]];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = @"<unknown>";
    }

    v25[4] = v13;
    v24[5] = @"errorMethod";
    v14 = [*(a1 + 40) userInfo];
    v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CCBDC0]];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = @"<unknown>";
    }

    v25[5] = v17;
    v24[6] = @"errorParameter";
    v18 = [*(a1 + 40) userInfo];
    v19 = [v18 objectForKeyedSubscript:*MEMORY[0x277CCBDB8]];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = @"<unknown>";
    }

    v25[6] = v21;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:7];
  }

  v22 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)summarySharing_reportDailyAnalytics:(id)a3 activeWatchProductType:(id)a4 age:(int64_t)a5 sex:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(HDAnalyticsSubmissionCoordinator *)self isImprovedHealthAndActivityEnabled];
  v14 = [v10 numberPeopleSharingOut] > 0;
  v15 = [v10 numberPeopleSharingIn];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __119__HDAnalyticsSubmissionCoordinator_SummarySharing__summarySharing_reportDailyAnalytics_activeWatchProductType_age_sex___block_invoke;
  v19[3] = &unk_278625730;
  v25 = v14;
  v26 = v15 > 0;
  v27 = v13;
  v20 = v11;
  v21 = v10;
  v23 = xmmword_22916E4B0;
  v24 = a5;
  v22 = v12;
  v16 = v12;
  v17 = v10;
  v18 = v11;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.health.sharing.daily" block:v19];
}

id __119__HDAnalyticsSubmissionCoordinator_SummarySharing__summarySharing_reportDailyAnalytics_activeWatchProductType_age_sex___block_invoke(uint64_t a1)
{
  v80[4] = *MEMORY[0x277D85DE8];
  v79[0] = @"isSharingOutEnabled";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 80)];
  v80[0] = v2;
  v79[1] = @"isSharingInEnabled";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 81)];
  v80[1] = v3;
  v79[2] = @"isImproveHealthAndActivityAllowed";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 82)];
  v79[3] = @"activeWatchProductType";
  v5 = *(a1 + 32);
  v80[2] = v4;
  v80[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:4];
  v7 = [v6 mutableCopy];

  v8 = [*(a1 + 40) askSomeoneToShareLastSelectedDate];

  if (v8)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v10 = [*(a1 + 40) askSomeoneToShareLastSelectedDate];
    [v10 timeIntervalSinceReferenceDate];
    v12 = Current - v11;

    v13 = v12 < *(a1 + 56);
    v8 = v12 < *(a1 + 64);
  }

  else
  {
    v13 = 0;
  }

  v77[0] = @"hasInvitedToShareInPastMonth";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  v77[1] = @"hasInvitedToShareInPast6Months";
  v78[0] = v14;
  v15 = [MEMORY[0x277CCABB0] numberWithBool:v8];
  v78[1] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
  [v7 addEntriesFromDictionary:v16];

  if (*(a1 + 81) == 1)
  {
    v17 = [*(a1 + 40) numberOfAlertNotificationsEnabled] > 0;
    v18 = [*(a1 + 40) numberOfTrendNotificationsEnabled] > 0;
    v19 = [*(a1 + 40) numberOfUpdateNotificationsEnabled] > 0;
    v75[0] = @"hasAlertsEnabled";
    v20 = [MEMORY[0x277CCABB0] numberWithBool:v17];
    v76[0] = v20;
    v75[1] = @"hasTrendsEnabled";
    v21 = [MEMORY[0x277CCABB0] numberWithBool:v18];
    v76[1] = v21;
    v75[2] = @"hasUpdatesEnabled";
    v22 = [MEMORY[0x277CCABB0] numberWithBool:v19];
    v76[2] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:3];
    [v7 addEntriesFromDictionary:v23];

    v24 = [*(a1 + 40) sharingContactOptionLastSelectedDate];

    if (v24)
    {
      v25 = CFAbsoluteTimeGetCurrent();
      v26 = [*(a1 + 40) sharingContactOptionLastSelectedDate];
      [v26 timeIntervalSinceReferenceDate];
      v28 = v25 - v27;

      v29 = v28 < *(a1 + 56);
      v24 = v28 < *(a1 + 64);
    }

    else
    {
      v29 = 0;
    }

    v73[0] = @"hasClickedToTextOrCallFromSharingInPastMonth";
    v30 = [MEMORY[0x277CCABB0] numberWithBool:v29];
    v73[1] = @"hasClickedToTextOrCallFromSharingInPast6Months";
    v74[0] = v30;
    v31 = [MEMORY[0x277CCABB0] numberWithBool:v24];
    v74[1] = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
    [v7 addEntriesFromDictionary:v32];

    v33 = [*(a1 + 40) mostRecentIncomingTransactionDate];

    if (v33)
    {
      v34 = CFAbsoluteTimeGetCurrent();
      v35 = [*(a1 + 40) mostRecentIncomingTransactionDate];
      [v35 timeIntervalSinceReferenceDate];
      v37 = v34 - v36;

      v38 = v37 < *(a1 + 64);
      v39 = v37 < *(a1 + 56);
      v71[0] = @"hasReceivedNewDataOnSharedAccountInPast6Months";
      v40 = [MEMORY[0x277CCABB0] numberWithBool:v38];
      v71[1] = @"hasReceivedNewDataOnSharedAccountInPastMonth";
      v72[0] = v40;
      v41 = [MEMORY[0x277CCABB0] numberWithBool:v39];
      v72[1] = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
      [v7 addEntriesFromDictionary:v42];
    }

    v43 = [*(a1 + 40) anySharingWithYouLastViewedDate];

    if (v43)
    {
      v44 = CFAbsoluteTimeGetCurrent();
      v45 = [*(a1 + 40) anySharingWithYouLastViewedDate];
      [v45 timeIntervalSinceReferenceDate];
      v47 = v44 - v46;

      v48 = v47 < *(a1 + 56);
      v43 = v47 < *(a1 + 64);
    }

    else
    {
      v48 = 0;
    }

    v69[0] = @"hasClickedSharingInAccountInPastMonth";
    v49 = [MEMORY[0x277CCABB0] numberWithBool:v48];
    v69[1] = @"hasClickedSharingInAccountInPast6Months";
    v70[0] = v49;
    v50 = [MEMORY[0x277CCABB0] numberWithBool:v43];
    v70[1] = v50;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
    [v7 addEntriesFromDictionary:v51];
  }

  if (*(a1 + 80) == 1)
  {
    v67[0] = @"numberAuthorizationsSharingOut";
    v52 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "numberAuthorizationsSharingOut")}];
    v68[0] = v52;
    v67[1] = @"averageNumberAuthorizationsSharedOutPerPerson";
    v53 = MEMORY[0x277CCABB0];
    [*(a1 + 40) averageNumberAuthorizationsSharedOutPerPerson];
    v54 = [v53 numberWithDouble:?];
    v68[1] = v54;
    v67[2] = @"maxAuthorizationsSharedOutPerPerson";
    v55 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "maxAuthorizationsSharedOutPerPerson")}];
    v68[2] = v55;
    v67[3] = @"minAuthorizationsSharedOutPerPerson";
    v56 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "minAuthorizationsSharedOutPerPerson")}];
    v68[3] = v56;
    v67[4] = @"numberPeopleSharingOut";
    v57 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "numberPeopleSharingOut")}];
    v68[4] = v57;
    v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:5];
    [v7 addEntriesFromDictionary:v58];
  }

  if (*(a1 + 82) == 1)
  {
    v59 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "numberPeopleSharingIn", @"numberPeopleSharingIn"}];
    v66[0] = v59;
    v65[1] = @"age";
    v60 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72)];
    v65[2] = @"sex";
    v61 = *(a1 + 48);
    v66[1] = v60;
    v66[2] = v61;
    v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:3];
    [v7 addEntriesFromDictionary:v62];
  }

  v63 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)cloudCache_reportWeeklyAnalyticsWithCacheValidation:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.cache.%@", @"weekly-validation"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __103__HDAnalyticsSubmissionCoordinator_CloudKitCache__cloudCache_reportWeeklyAnalyticsWithCacheValidation___block_invoke;
  v7[3] = &unk_278616398;
  v8 = v4;
  v6 = v4;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v7];
}

id __103__HDAnalyticsSubmissionCoordinator_CloudKitCache__cloudCache_reportWeeklyAnalyticsWithCacheValidation___block_invoke(uint64_t a1)
{
  v54[48] = *MEMORY[0x277D85DE8];
  v53[0] = @"individualSyncZonesInCloud";
  v52 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "individualSyncZonesInCloud")}];
  v54[0] = v52;
  v53[1] = @"masterZonesInCloud";
  v51 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "masterZonesInCloud")}];
  v54[1] = v51;
  v53[2] = @"unifiedZonesInCloud";
  v50 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "unifiedZonesInCloud")}];
  v54[2] = v50;
  v53[3] = @"sharedSummaryZonesInCloud";
  v49 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryZonesInCloud")}];
  v54[3] = v49;
  v53[4] = @"individualSyncZonesInCache";
  v48 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "individualSyncZonesInCache")}];
  v54[4] = v48;
  v53[5] = @"masterZonesInCache";
  v47 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "masterZonesInCache")}];
  v54[5] = v47;
  v53[6] = @"unifiedZonesInCache";
  v46 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "unifiedZonesInCache")}];
  v54[6] = v46;
  v53[7] = @"sharedSummaryZonesInCache";
  v45 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryZonesInCache")}];
  v54[7] = v45;
  v53[8] = @"storeRecordsInCloud";
  v44 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "storeRecordsInCloud")}];
  v54[8] = v44;
  v53[9] = @"sequenceRecordsInCloud";
  v43 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sequenceRecordsInCloud")}];
  v54[9] = v43;
  v53[10] = @"medicalIDRecordsInCloud";
  v42 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "medicalIDRecordsInCloud")}];
  v54[10] = v42;
  v53[11] = @"changeRecordsInCloud";
  v41 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "changeRecordsInCloud")}];
  v54[11] = v41;
  v53[12] = @"registryRecordsInCloud";
  v40 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "registryRecordsInCloud")}];
  v54[12] = v40;
  v53[13] = @"masterRecordsInCloud";
  v39 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "masterRecordsInCloud")}];
  v54[13] = v39;
  v53[14] = @"dataUploadRequestRecordInCloud";
  v38 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "dataUploadRequestRecordInCloud")}];
  v54[14] = v38;
  v53[15] = @"sharedSummaryAuthRecordInCloud";
  v37 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryAuthRecordInCloud")}];
  v54[15] = v37;
  v53[16] = @"sharedSummaryParticipantRecordInCloud";
  v36 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryParticipantRecordInCloud")}];
  v54[16] = v36;
  v53[17] = @"sharedSummaryRelationshipRecordInCloud";
  v35 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryRelationshipRecordInCloud")}];
  v54[17] = v35;
  v53[18] = @"sharedSummaryRecordInCloud";
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryRecordInCloud")}];
  v54[18] = v34;
  v53[19] = @"sharedSummaryTransactionRecordInCloud";
  v33 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryTransactionRecordInCloud")}];
  v54[19] = v33;
  v53[20] = @"storeRecordsInCache";
  v32 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "storeRecordsInCache")}];
  v54[20] = v32;
  v53[21] = @"sequenceRecordsInCache";
  v31 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sequenceRecordsInCache")}];
  v54[21] = v31;
  v53[22] = @"medicalIDRecordsInCache";
  v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "medicalIDRecordsInCache")}];
  v54[22] = v30;
  v53[23] = @"changeRecordsInCache";
  v29 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "changeRecordsInCache")}];
  v54[23] = v29;
  v53[24] = @"registryRecordsInCache";
  v28 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "registryRecordsInCache")}];
  v54[24] = v28;
  v53[25] = @"masterRecordsInCache";
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "masterRecordsInCache")}];
  v54[25] = v27;
  v53[26] = @"dataUploadRequestRecordInCache";
  v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "dataUploadRequestRecordInCache")}];
  v54[26] = v26;
  v53[27] = @"sharedSummaryAuthRecordInCache";
  v25 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryAuthRecordInCache")}];
  v54[27] = v25;
  v53[28] = @"sharedSummaryParticipantRecordInCache";
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryParticipantRecordInCache")}];
  v54[28] = v24;
  v53[29] = @"sharedSummaryRelationshipRecordInCache";
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryRelationshipRecordInCache")}];
  v54[29] = v23;
  v53[30] = @"sharedSummaryRecordInCache";
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryRecordInCache")}];
  v54[30] = v22;
  v53[31] = @"sharedSummaryTransactionRecordInCache";
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryTransactionRecordInCache")}];
  v54[31] = v21;
  v53[32] = @"deltaIndividualSyncZonesInCloudCache";
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "individualSyncZonesInCloud") - objc_msgSend(*(a1 + 32), "individualSyncZonesInCache")}];
  v54[32] = v20;
  v53[33] = @"deltaMasterZonesInCloudCache";
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "masterZonesInCloud") - objc_msgSend(*(a1 + 32), "masterZonesInCache")}];
  v54[33] = v19;
  v53[34] = @"deltaUnifiedZonesInCloudCache";
  v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "unifiedZonesInCloud") - objc_msgSend(*(a1 + 32), "unifiedZonesInCache")}];
  v54[34] = v18;
  v53[35] = @"deltaSharedSummaryZonesInCloudCache";
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryZonesInCloud") - objc_msgSend(*(a1 + 32), "sharedSummaryZonesInCache")}];
  v54[35] = v17;
  v53[36] = @"deltaStoreRecordsInCloudCache";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "storeRecordsInCloud") - objc_msgSend(*(a1 + 32), "storeRecordsInCache")}];
  v54[36] = v16;
  v53[37] = @"deltaSequenceRecordsInCloudCache";
  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sequenceRecordsInCloud") - objc_msgSend(*(a1 + 32), "sequenceRecordsInCache")}];
  v54[37] = v15;
  v53[38] = @"deltaMedicalIDRecordsInCloudCache";
  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "medicalIDRecordsInCloud") - objc_msgSend(*(a1 + 32), "medicalIDRecordsInCache")}];
  v54[38] = v14;
  v53[39] = @"deltaChangeRecordsInCloudCache";
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "changeRecordsInCloud") - objc_msgSend(*(a1 + 32), "changeRecordsInCache")}];
  v54[39] = v13;
  v53[40] = @"deltaRegistryRecordsInCloudCache";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "registryRecordsInCloud") - objc_msgSend(*(a1 + 32), "registryRecordsInCache")}];
  v54[40] = v2;
  v53[41] = @"deltaMasterRecordsInCloudCache";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "masterRecordsInCloud") - objc_msgSend(*(a1 + 32), "masterRecordsInCache")}];
  v54[41] = v3;
  v53[42] = @"deltaDataUploadRequestRecordInCloudCache";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "dataUploadRequestRecordInCloud") - objc_msgSend(*(a1 + 32), "dataUploadRequestRecordInCache")}];
  v54[42] = v4;
  v53[43] = @"deltaSharedSummaryAuthRecordInCloudCache";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryAuthRecordInCloud") - objc_msgSend(*(a1 + 32), "sharedSummaryAuthRecordInCache")}];
  v54[43] = v5;
  v53[44] = @"deltaSharedSummaryParticipantRecordInCloudCache";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryParticipantRecordInCloud") - objc_msgSend(*(a1 + 32), "sharedSummaryParticipantRecordInCache")}];
  v54[44] = v6;
  v53[45] = @"deltaSharedSummaryRelationshipRecordInCloudCache";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryRelationshipRecordInCloud") - objc_msgSend(*(a1 + 32), "sharedSummaryRelationshipRecordInCache")}];
  v54[45] = v7;
  v53[46] = @"deltaSharedSummaryRecordInCloudCache";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryRecordInCloud") - objc_msgSend(*(a1 + 32), "sharedSummaryRecordInCache")}];
  v54[46] = v8;
  v53[47] = @"deltaSharedSummaryTransactionRecordInCloudCache";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "sharedSummaryTransactionRecordInCloud") - objc_msgSend(*(a1 + 32), "sharedSummaryTransactionRecordInCache")}];
  v54[47] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:48];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id __261__HDAnalyticsSubmissionCoordinator_CloudKitCache__cloudCache_reportDailyCacheAnalyticsWithPushTargets_pullTargets_sharedDBSummarySharingZones_privateDBSummarySharingZones_unifiedZoneInSharedDB_unifiedZoneInPrivateDB_deviceContexts_deviceKeys_nilSyncIdentities___block_invoke(uint64_t a1)
{
  v16[9] = *MEMORY[0x277D85DE8];
  v15[0] = @"pushTargets";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v16[0] = v2;
  v15[1] = @"pullTargets";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v16[1] = v3;
  v15[2] = @"sharedDBSummarySharingZones";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v16[2] = v4;
  v15[3] = @"privateDBSummarySharingZones";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v6 = v5;
  if (*(a1 + 88))
  {
    v7 = MEMORY[0x277CBEC38];
  }

  else
  {
    v7 = MEMORY[0x277CBEC28];
  }

  v16[3] = v5;
  v16[4] = v7;
  v15[4] = @"unifiedZoneInSharedDB";
  v15[5] = @"unifiedZoneInPrivateDB";
  if (*(a1 + 89))
  {
    v8 = MEMORY[0x277CBEC38];
  }

  else
  {
    v8 = MEMORY[0x277CBEC28];
  }

  v16[5] = v8;
  v15[6] = @"contextCount";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 64)];
  v16[6] = v9;
  v15[7] = @"keyCount";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 72)];
  v16[7] = v10;
  v15[8] = @"nilSyncIdentities";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 80)];
  v16[8] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:9];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)cloudCache_reportCacheDiscrepancyForOperation:(id)a3 reason:(id)a4 containerIdentifier:(id)a5 databaseScope:(id)a6 error:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.cache.%@", @"discrepancy"];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __144__HDAnalyticsSubmissionCoordinator_CloudKitCache__cloudCache_reportCacheDiscrepancyForOperation_reason_containerIdentifier_databaseScope_error___block_invoke;
  v23[3] = &unk_278625A78;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v12;
  v18 = v12;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v17 block:v23];
}

id __144__HDAnalyticsSubmissionCoordinator_CloudKitCache__cloudCache_reportCacheDiscrepancyForOperation_reason_containerIdentifier_databaseScope_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11[0] = @"discrepancyReason";
  v11[1] = @"container";
  v3 = *(a1 + 48);
  v2 = *(a1 + 56);
  v13 = v3;
  v11[2] = @"database";
  v11[3] = @"errorDomain";
  v12 = *(a1 + 32);
  v4 = [v2 domain];
  v14 = v4;
  v11[4] = @"errorCode";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 56), "code")}];
  v15 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:v11 count:5];
  v7 = [*(a1 + 64) analyticsDictionary];
  v8 = [v6 hk_dictionaryByAddingEntriesFromDictionary:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)cloudCache_reportCacheFetchAndUpdateAnalyticsForPipeline:(id)a3 changedZonesCount:(int64_t)a4 deletedZonesCount:(int64_t)a5 changedRecordsCount:(int64_t)a6 deletedRecordsCount:(int64_t)a7
{
  v12 = a3;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.cache.%@", @"fetch"];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __184__HDAnalyticsSubmissionCoordinator_CloudKitCache__cloudCache_reportCacheFetchAndUpdateAnalyticsForPipeline_changedZonesCount_deletedZonesCount_changedRecordsCount_deletedRecordsCount___block_invoke;
  v15[3] = &unk_278625AA0;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v16 = v12;
  v17 = a4;
  v14 = v12;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v13 block:v15];
}

id __184__HDAnalyticsSubmissionCoordinator_CloudKitCache__cloudCache_reportCacheFetchAndUpdateAnalyticsForPipeline_changedZonesCount_deletedZonesCount_changedRecordsCount_deletedRecordsCount___block_invoke(uint64_t a1)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v11[0] = @"changedZonesCount";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v12[0] = v2;
  v11[1] = @"deletedZonesCount";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v12[1] = v3;
  v11[2] = @"changedRecordsCount";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v12[2] = v4;
  v11[3] = @"deletedRecordsCount";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
  v12[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];
  v7 = [*(a1 + 32) analyticsDictionary];
  v8 = [v6 hk_dictionaryByAddingEntriesFromDictionary:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)cloudCache_reportCacheSyncAnalyticsForPipeline:(id)a3 operationCount:(int64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.cache.%@", @"sync"];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __113__HDAnalyticsSubmissionCoordinator_CloudKitCache__cloudCache_reportCacheSyncAnalyticsForPipeline_operationCount___block_invoke;
  v9[3] = &unk_2786139B8;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v7 block:v9];
}

id __113__HDAnalyticsSubmissionCoordinator_CloudKitCache__cloudCache_reportCacheSyncAnalyticsForPipeline_operationCount___block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"cloudKitOperationsCount";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v9[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v4 = [*(a1 + 32) analyticsDictionary];
  v5 = [v3 hk_dictionaryByAddingEntriesFromDictionary:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)cloudSync_reportDailyAnalyticForProfileType:(int64_t)a3 syncEnabled:(BOOL)a4 syncDisabledError:(id)a5 primaryContainer:(id)a6 restoreComplete:(BOOL)a7 timeSinceRestoreStart:(id)a8 journalSize:(id)a9 oldestJournalAge:(id)a10 timeSinceLastSuccessfulPull:(id)a11 timeSinceLastSuccessfulPush:(id)a12 timeSinceLastSuccessfulLitePush:(id)a13 timeSinceLastPushForwardProgress:(id)a14 storeCount:(int64_t)a15 zoneCount:(int64_t)a16 hasUnifiedZone:(BOOL)a17 hasMasterZone:(BOOL)a18 hasMedicalID:(BOOL)a19 errorRequiringUserAction:(id)a20 childSyncIdentityCount:(int64_t)a21 canUpgradeToSyncIdentity:(BOOL)a22 startedUpgradeToSyncIdentity:(BOOL)a23 completedUpgradeToSyncIdentity:(BOOL)a24 iPhoneCount:(id)a25 iPadCount:(id)a26 watchCount:(id)a27 visionProCount:(id)a28 totalSyncsCount:(id)a29 successfulSyncPercentageCount:(id)a30
{
  v68 = a5;
  v67 = a6;
  v66 = a8;
  v65 = a9;
  v64 = a10;
  v63 = a11;
  v32 = a12;
  v33 = a13;
  v34 = a14;
  v35 = a20;
  v36 = a25;
  v37 = a26;
  v38 = a27;
  v48 = a28;
  v39 = a29;
  v40 = a30;
  v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"daily-report"];
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __616__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportDailyAnalyticForProfileType_syncEnabled_syncDisabledError_primaryContainer_restoreComplete_timeSinceRestoreStart_journalSize_oldestJournalAge_timeSinceLastSuccessfulPull_timeSinceLastSuccessfulPush_timeSinceLastSuccessfulLitePush_timeSinceLastPushForwardProgress_storeCount_zoneCount_hasUnifiedZone_hasMasterZone_hasMedicalID_errorRequiringUserAction_childSyncIdentityCount_canUpgradeToSyncIdentity_startedUpgradeToSyncIdentity_completedUpgradeToSyncIdentity_iPhoneCount_iPadCount_watchCount_visionProCount_totalSyncsCount_successfulSyncPercentageCount___block_invoke;
  v69[3] = &unk_278628AD8;
  v90 = a4;
  v70 = v68;
  v71 = v67;
  v91 = a7;
  v72 = v66;
  v73 = v65;
  v74 = v64;
  v75 = v63;
  v76 = v32;
  v77 = v33;
  v86 = a3;
  v87 = a15;
  v78 = v34;
  v79 = v35;
  v88 = a16;
  v89 = a21;
  v92 = a22;
  v93 = a23;
  v94 = a24;
  v80 = v36;
  v81 = v37;
  v82 = v38;
  v83 = v48;
  v84 = v39;
  v85 = v40;
  v61 = v40;
  v60 = v39;
  v59 = v48;
  v58 = v38;
  v56 = v37;
  v55 = v36;
  v53 = v35;
  v52 = v34;
  v51 = v33;
  v41 = v32;
  v42 = v63;
  v43 = v64;
  v44 = v65;
  v45 = v66;
  v46 = v67;
  v47 = v68;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v49 block:v69];
}

id __616__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportDailyAnalyticForProfileType_syncEnabled_syncDisabledError_primaryContainer_restoreComplete_timeSinceRestoreStart_journalSize_oldestJournalAge_timeSinceLastSuccessfulPull_timeSinceLastSuccessfulPush_timeSinceLastSuccessfulLitePush_timeSinceLastPushForwardProgress_storeCount_zoneCount_hasUnifiedZone_hasMasterZone_hasMedicalID_errorRequiringUserAction_childSyncIdentityCount_canUpgradeToSyncIdentity_startedUpgradeToSyncIdentity_completedUpgradeToSyncIdentity_iPhoneCount_iPadCount_watchCount_visionProCount_totalSyncsCount_successfulSyncPercentageCount___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 160)];
  [v2 setObject:v3 forKeyedSubscript:@"profileType"];

  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 192)];
  [v2 setObject:v4 forKeyedSubscript:@"syncEnabled"];

  if ((*(a1 + 192) & 1) == 0)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = [v5 domain];
      [v2 setObject:v6 forKeyedSubscript:@"syncDisabledErrorDomain"];

      v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
      [v2 setObject:v7 forKeyedSubscript:@"syncDisabledErrorCode"];
    }
  }

  [v2 setObject:*(a1 + 40) forKeyedSubscript:@"primaryContainer"];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 193)];
  [v2 setObject:v8 forKeyedSubscript:@"restoreComplete"];

  [v2 setObject:*(a1 + 48) forKeyedSubscript:@"timeSinceRestoreStart"];
  [v2 setObject:*(a1 + 56) forKeyedSubscript:@"journalSize"];
  [v2 setObject:*(a1 + 64) forKeyedSubscript:@"oldestJournalAge"];
  [v2 setObject:*(a1 + 72) forKeyedSubscript:@"timeSinceLastSuccessfulPull"];
  [v2 setObject:*(a1 + 80) forKeyedSubscript:@"timeSinceLastSuccessfulPush"];
  [v2 setObject:*(a1 + 88) forKeyedSubscript:@"timeSinceLastSuccessfulLitePush"];
  [v2 setObject:*(a1 + 96) forKeyedSubscript:@"timeSinceLastPushForwardProgress"];
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 168)];
  [v2 setObject:v9 forKeyedSubscript:@"storeCount"];

  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 176)];
  [v2 setObject:v10 forKeyedSubscript:@"zoneCount"];

  v11 = *(a1 + 104);
  if (v11)
  {
    v12 = [v11 domain];
    [v2 setObject:v12 forKeyedSubscript:@"errorRequiringUserActionDomain"];

    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 104), "code")}];
    [v2 setObject:v13 forKeyedSubscript:@"errorRequiringUserActionCode"];
  }

  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 184)];
  [v2 setObject:v14 forKeyedSubscript:@"childSyncIdentities"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 194)];
  [v2 setObject:v15 forKeyedSubscript:@"canUpgradeToSyncIdentity"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 195)];
  [v2 setObject:v16 forKeyedSubscript:@"startedUpgradeToSyncIdentity"];

  v17 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 196)];
  [v2 setObject:v17 forKeyedSubscript:@"completedUpgradeToSyncIdentity"];

  [v2 setObject:*(a1 + 112) forKeyedSubscript:@"countPairediPhone"];
  [v2 setObject:*(a1 + 120) forKeyedSubscript:@"countPairediPad"];
  [v2 setObject:*(a1 + 128) forKeyedSubscript:@"countPairedWatch"];
  [v2 setObject:*(a1 + 136) forKeyedSubscript:@"countPairedVisionPro"];
  [v2 setObject:*(a1 + 144) forKeyedSubscript:@"numberOfSyncs"];
  [v2 setObject:*(a1 + 152) forKeyedSubscript:@"percentOfSuccessfulSyncs"];

  return v2;
}

- (void)cloudSync_reportMissingManateeIdentityDuringFetchInContainer:(id)a3 zoneName:(id)a4 databaseScope:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"FetchMissingManateeIdentity"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __131__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportMissingManateeIdentityDuringFetchInContainer_zoneName_databaseScope___block_invoke;
  v13[3] = &unk_2786139E0;
  v14 = v8;
  v15 = v9;
  v16 = a5;
  v11 = v9;
  v12 = v8;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v10 block:v13];
}

id __131__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportMissingManateeIdentityDuringFetchInContainer_zoneName_databaseScope___block_invoke(void *a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v6[0] = @"container";
  v6[1] = @"zone";
  v1 = a1[5];
  v7[0] = a1[4];
  v7[1] = v1;
  v6[2] = @"scope";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  v7[2] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)cloudSync_reportOwnershipChangeForMissingManateeIdentityDuringPush
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"OwnershipChangePushMissingManateeIdentity"];
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v3 block:&__block_literal_global_191];
}

- (void)cloudSync_reportOwnershipChangeForProfile:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"ownership-change"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportOwnershipChangeForProfile_reason___block_invoke;
  v11[3] = &unk_278628B00;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v8 block:v11];
}

id __96__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportOwnershipChangeForProfile_reason___block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"profileType";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "profileType")}];
  v10[1] = @"reason";
  v11[0] = v2;
  v3 = *(a1 + 40);
  v4 = [v3 length];
  if (v4 >= 0x400)
  {
    v5 = 1024;
  }

  else
  {
    v5 = v4;
  }

  v6 = [v3 substringToIndex:v5];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)cloudSync_reportPeriodicSyncStartForType:(int64_t)a3
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"periodic.start"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __88__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPeriodicSyncStartForType___block_invoke;
  v6[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v6[4] = a3;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v6];
}

id __88__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPeriodicSyncStartForType___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"type";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)cloudSync_reportPeriodicSyncSuccessAfterDuration:(double)a3 type:(int64_t)a4
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"periodic.success"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __101__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPeriodicSyncSuccessAfterDuration_type___block_invoke;
  v8[3] = &__block_descriptor_48_e19___NSDictionary_8__0l;
  *&v8[4] = a3;
  v8[5] = a4;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v7 block:v8];
}

id __101__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPeriodicSyncSuccessAfterDuration_type___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"duration";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v7[1] = @"type";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)cloudSync_reportPeriodicSyncFailureWithError:(id)a3 duration:(double)a4 type:(int64_t)a5
{
  v8 = a3;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"periodic.failure"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __106__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPeriodicSyncFailureWithError_duration_type___block_invoke;
  v11[3] = &unk_278617330;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v9 block:v11];
}

id __106__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPeriodicSyncFailureWithError_duration_type___block_invoke(uint64_t a1)
{
  v22[7] = *MEMORY[0x277D85DE8];
  v21[0] = @"errorDomain";
  v20 = [*(a1 + 32) domain];
  v22[0] = v20;
  v21[1] = @"errorCode";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
  v22[1] = v2;
  v21[2] = @"errorClass";
  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBD90]];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"<unknown>";
  }

  v22[2] = v6;
  v21[3] = @"errorMethod";
  v7 = [*(a1 + 32) userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCBDC0]];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"<unknown>";
  }

  v22[3] = v10;
  v21[4] = @"errorParameter";
  v11 = [*(a1 + 32) userInfo];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCBDB8]];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"<unknown>";
  }

  v22[4] = v14;
  v21[5] = @"duration";
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v22[5] = v15;
  v21[6] = @"type";
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v22[6] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:7];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)cloudSync_reportRebaseTriggeredByDeletionByUser:(BOOL)a3
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"rebase-trigger.deletion"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __95__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportRebaseTriggeredByDeletionByUser___block_invoke;
  v6[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v7 = a3;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v6];
}

id __95__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportRebaseTriggeredByDeletionByUser___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"byUser";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)cloudSync_reportRestoreForProfile:(id)a3 startDate:(id)a4 endDate:(id)a5 duration:(double)a6 finishedJournalMerge:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"restore.complete"];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __129__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportRestoreForProfile_startDate_endDate_duration_finishedJournalMerge___block_invoke;
  v19[3] = &unk_278628B68;
  v20 = v14;
  v21 = v13;
  v23 = a6;
  v24 = a7;
  v22 = v12;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v15 block:v19];
}

id __129__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportRestoreForProfile_startDate_endDate_duration_finishedJournalMerge___block_invoke(uint64_t a1)
{
  v18[6] = *MEMORY[0x277D85DE8];
  v17[0] = @"pullCompleteDate";
  v2 = MEMORY[0x277CCABB0];
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v3 = [v2 numberWithDouble:?];
  v18[0] = v3;
  v17[1] = @"pullStartDate";
  v4 = MEMORY[0x277CCABB0];
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  v5 = [v4 numberWithDouble:?];
  v18[1] = v5;
  v17[2] = @"duration";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v18[2] = v6;
  v17[3] = @"finishedJournalMerge";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 64)];
  v18[3] = v7;
  v17[4] = @"dbSize";
  v8 = MEMORY[0x277CCABB0];
  v9 = HDDatabaseSizeInMB(*(a1 + 48));
  v10 = [v8 numberWithInteger:HDBucketedDatabaseSizeInMB(v9)];
  v18[4] = v10;
  v17[5] = @"journalCount";
  v11 = MEMORY[0x277CCABB0];
  v12 = [*(a1 + 48) database];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "journalChapterCountForType:", 2)}];
  v18[5] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:6];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)cloudSync_reportPipelineStarted:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"pipeline.started"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPipelineStarted___block_invoke;
  v7[3] = &unk_278616398;
  v8 = v4;
  v6 = v4;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v7];
}

- (void)cloudSync_reportPipelineFinished:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"pipeline.finished"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPipelineFinished___block_invoke;
  v7[3] = &unk_278616398;
  v8 = v4;
  v6 = v4;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v7];
}

id __80__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPipelineFinished___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) analyticsDictionary];
  v2 = [&unk_283CB46F8 hk_dictionaryByAddingEntriesFromDictionary:v1];

  return v2;
}

- (void)cloudSync_reportPipelineFailed:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"pipeline.finished"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPipelineFailed_error___block_invoke;
  v11[3] = &unk_278628B00;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v8 block:v11];
}

id __84__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportPipelineFailed_error___block_invoke(uint64_t a1)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v22[0] = MEMORY[0x277CBEC28];
  v21[0] = @"success";
  v21[1] = @"errorCode";
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
  v22[1] = v20;
  v21[2] = @"errorDomain";
  v2 = [*(a1 + 32) domain];
  v22[2] = v2;
  v21[3] = @"errorClass";
  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBD90]];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"<unknown>";
  }

  v22[3] = v6;
  v21[4] = @"errorMethod";
  v7 = [*(a1 + 32) userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCBDC0]];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"<unknown>";
  }

  v22[4] = v10;
  v21[5] = @"errorParameter";
  v11 = [*(a1 + 32) userInfo];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCBDB8]];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"<unknown>";
  }

  v22[5] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:6];
  v16 = [*(a1 + 40) analyticsDictionary];
  v17 = [v15 hk_dictionaryByAddingEntriesFromDictionary:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)cloudSync_operationStarted:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"operation.started"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_operationStarted___block_invoke;
  v7[3] = &unk_278616398;
  v8 = v4;
  v6 = v4;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v7];
}

- (void)cloudSync_operationFinished:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"operation.finished"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_operationFinished___block_invoke;
  v7[3] = &unk_278616398;
  v8 = v4;
  v6 = v4;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v7];
}

id __75__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_operationFinished___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) analyticsDictionary];
  v2 = [&unk_283CB4720 hk_dictionaryByAddingEntriesFromDictionary:v1];

  return v2;
}

- (void)cloudSync_operationFailed:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"operation.finished"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_operationFailed_error___block_invoke;
  v11[3] = &unk_278628B00;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v8 block:v11];
}

id __79__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_operationFailed_error___block_invoke(uint64_t a1)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v22[0] = MEMORY[0x277CBEC28];
  v21[0] = @"success";
  v21[1] = @"errorCode";
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
  v22[1] = v20;
  v21[2] = @"errorDomain";
  v2 = [*(a1 + 32) domain];
  v22[2] = v2;
  v21[3] = @"errorClass";
  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBD90]];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"<unknown>";
  }

  v22[3] = v6;
  v21[4] = @"errorMethod";
  v7 = [*(a1 + 32) userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCBDC0]];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"<unknown>";
  }

  v22[4] = v10;
  v21[5] = @"errorParameter";
  v11 = [*(a1 + 32) userInfo];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCBDB8]];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"<unknown>";
  }

  v22[5] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:6];
  v16 = [*(a1 + 40) analyticsDictionary];
  v17 = [v15 hk_dictionaryByAddingEntriesFromDictionary:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)cloudSync_newChildAdded:(BOOL)a3
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"newChildAdded"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_newChildAdded___block_invoke;
  v6[3] = &__block_descriptor_33_e19___NSDictionary_8__0l;
  v7 = a3;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v6];
}

id __71__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_newChildAdded___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"newChildAdded";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)cloudSync_reportFullSyncMetricsWithReason:(id)a3 shard:(id)a4 daysSincePreviousFullSync:(id)a5 totalDuration:(double)a6 activeDuration:(double)a7 numberOfRuns:(id)a8 incomplete:(BOOL)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"fullsync-metrics"];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __174__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportFullSyncMetricsWithReason_shard_daysSincePreviousFullSync_totalDuration_activeDuration_numberOfRuns_incomplete___block_invoke;
  v25[3] = &unk_278628B90;
  v26 = v16;
  v27 = v17;
  v30 = a6;
  v31 = a7;
  v28 = v18;
  v29 = v19;
  v32 = a9;
  v21 = v19;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v20 block:v25];
}

id __174__HDAnalyticsSubmissionCoordinator_CloudSync__cloudSync_reportFullSyncMetricsWithReason_shard_daysSincePreviousFullSync_totalDuration_activeDuration_numberOfRuns_incomplete___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v10[0] = @"reason";
  v10[1] = @"shard";
  v12 = *(a1 + 48);
  v11 = v2;
  v10[2] = @"daysSincePreviousFullSync";
  v10[3] = @"totalDuration";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
  v13 = v3;
  v10[4] = @"activeDuration";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
  v5 = *(a1 + 56);
  v14 = v4;
  v15 = v5;
  v10[5] = @"numberOfRuns";
  v10[6] = @"incomplete";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 80)];
  v16 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:v10 count:7];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)stateSync_recordSize:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"state.push"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_recordSize___block_invoke;
  v6[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  v6[4] = a3;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v6];
}

id __68__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_recordSize___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"recordSize";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)stateSync_operationSucceeded:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"state.push"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_operationSucceeded___block_invoke;
  v7[3] = &unk_278616398;
  v8 = v4;
  v6 = v4;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v7];
}

id __76__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_operationSucceeded___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) analyticsDictionary];
  v2 = [&unk_283CB4748 hk_dictionaryByAddingEntriesFromDictionary:v1];

  return v2;
}

- (void)stateSync_operationFailed:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"state.push"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_operationFailed_error___block_invoke;
  v11[3] = &unk_278628B00;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v8 block:v11];
}

id __79__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_operationFailed_error___block_invoke(uint64_t a1)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v22[0] = MEMORY[0x277CBEC28];
  v21[0] = @"success";
  v21[1] = @"errorCode";
  v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "code")}];
  v22[1] = v20;
  v21[2] = @"errorDomain";
  v2 = [*(a1 + 32) domain];
  v22[2] = v2;
  v21[3] = @"errorClass";
  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBD90]];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"<unknown>";
  }

  v22[3] = v6;
  v21[4] = @"errorMethod";
  v7 = [*(a1 + 32) userInfo];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCBDC0]];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"<unknown>";
  }

  v22[4] = v10;
  v21[5] = @"errorParameter";
  v11 = [*(a1 + 32) userInfo];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CCBDB8]];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"<unknown>";
  }

  v22[5] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:6];
  v16 = [*(a1 + 40) analyticsDictionary];
  v17 = [v15 hk_dictionaryByAddingEntriesFromDictionary:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)stateSync_subscriptionTriggeredDomain:(id)a3
{
  v4 = a3;
  if ([(HDAnalyticsSubmissionCoordinator *)self isImprovedHealthAndActivityEnabled])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"state.subscription"];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __85__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_subscriptionTriggeredDomain___block_invoke;
    v6[3] = &unk_278616398;
    v7 = v4;
    [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v6];
  }
}

id __85__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_subscriptionTriggeredDomain___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"domain";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)stateSync_triggerDuration:(double)a3
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"state.trigger-gated"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_triggerDuration___block_invoke;
  v6[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  *&v6[4] = a3;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v6];
}

id __73__HDAnalyticsSubmissionCoordinator_CloudSync__stateSync_triggerDuration___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"duration";
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)contextSync_operationSucceeded:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"context.push"];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__HDAnalyticsSubmissionCoordinator_CloudSync__contextSync_operationSucceeded___block_invoke;
  v7[3] = &unk_278616398;
  v8 = v4;
  v6 = v4;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v7];
}

id __78__HDAnalyticsSubmissionCoordinator_CloudSync__contextSync_operationSucceeded___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) analyticsDictionary];
  v2 = [&unk_283CB4770 hk_dictionaryByAddingEntriesFromDictionary:v1];

  return v2;
}

- (void)contextSync_triggerDuration:(double)a3
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.sync.cloud.%@", @"context.trigger-gated"];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __75__HDAnalyticsSubmissionCoordinator_CloudSync__contextSync_triggerDuration___block_invoke;
  v6[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
  *&v6[4] = a3;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v5 block:v6];
}

id __75__HDAnalyticsSubmissionCoordinator_CloudSync__contextSync_triggerDuration___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"duration";
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id __244__HDAnalyticsSubmissionCoordinator_Workout__workout_reportWorkoutCondenserEventWithReason_batchSize_hasWatchSource_duration_success_error_workoutsToCondense_workoutsToRecondense_condensedWorkouts_processedWorkouts_createdSeries_deletedSamples___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v23[0] = @"reason";
  v22 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v31[0] = v22;
  v23[1] = @"batchSize";
  v21 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v31[1] = v21;
  v23[2] = @"hasWatchSource";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 112)];
  v31[2] = v20;
  v23[3] = @"duration";
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v31[3] = v19;
  v23[4] = @"success";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 113)];
  v31[4] = v2;
  v23[5] = @"errorDomain";
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [*(a1 + 32) domain];
    v5 = *(a1 + 32);
    v16 = v4;
    v32 = v4;
    v24 = @"errorCode";
    if (v5)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "code", v4)}];
      v18 = 0;
    }

    else
    {
      v6 = &unk_283CB3E10;
      v18 = 1;
    }
  }

  else
  {
    v6 = &unk_283CB3E10;
    v32 = &unk_283CB3E10;
    v24 = @"errorCode";
    v18 = 1;
  }

  v33 = v6;
  v25 = @"workoutsToCondense";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{*(a1 + 64), v16}];
  v34 = v7;
  v26 = @"workoutsToRecondense";
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72)];
  v35 = v8;
  v27 = @"condensedWorkouts";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 80)];
  v36 = v9;
  v28 = @"processedWorkouts";
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 88)];
  v37 = v10;
  v29 = @"createdSeries";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 96)];
  v38 = v11;
  v30 = @"deletedSamples";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 104)];
  v39 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v23 count:13];

  if ((v18 & 1) == 0)
  {
  }

  if (v3)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)workout_reportWorkoutCondenserCoalescingCompressionRate:(id)a3 numberOfSamplesBeforeCoalescing:(int64_t)a4 numberOfSamplesAfterCoalescing:(int64_t)a5 compressionRate:(double)a6
{
  v10 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __180__HDAnalyticsSubmissionCoordinator_Workout__workout_reportWorkoutCondenserCoalescingCompressionRate_numberOfSamplesBeforeCoalescing_numberOfSamplesAfterCoalescing_compressionRate___block_invoke;
  v12[3] = &unk_278623CD8;
  v13 = v10;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v11 = v10;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.condenser.coalescing" block:v12];
}

id __180__HDAnalyticsSubmissionCoordinator_Workout__workout_reportWorkoutCondenserCoalescingCompressionRate_numberOfSamplesBeforeCoalescing_numberOfSamplesAfterCoalescing_compressionRate___block_invoke(uint64_t a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v10[0] = *(a1 + 32);
  v9[0] = @"quantityType";
  v9[1] = @"numberOfSamplesBeforeCoalescing";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
  v10[1] = v3;
  v9[2] = @"numberOfSamplesAfterCoalescing";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v10[2] = v4;
  v9[3] = @"compressionRate";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)workout_reportGymKitWorkoutWithFitnessMachineType:(id)a3 manufacturer:(id)a4 timeToBeginExperience:(int64_t)a5 workoutEndError:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.workout.%@", @"gymkit-workout"];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __146__HDAnalyticsSubmissionCoordinator_Workout__workout_reportGymKitWorkoutWithFitnessMachineType_manufacturer_timeToBeginExperience_workoutEndError___block_invoke;
  v15[3] = &unk_278629098;
  v16 = v10;
  v17 = v11;
  v18 = a5;
  v19 = a6;
  v13 = v11;
  v14 = v10;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v12 block:v15];
}

id __146__HDAnalyticsSubmissionCoordinator_Workout__workout_reportGymKitWorkoutWithFitnessMachineType_manufacturer_timeToBeginExperience_workoutEndError___block_invoke(void *a1)
{
  v9[4] = *MEMORY[0x277D85DE8];
  v8[0] = @"fitnessMachineType";
  v8[1] = @"manufacturer";
  v2 = a1[5];
  v9[0] = a1[4];
  v9[1] = v2;
  v8[2] = @"timeToBeginExperience";
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a1[6]];
  v9[2] = v3;
  v8[3] = @"errorReason";
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a1[7]];
  v9[3] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)workout_reportMirroringEventWithStartDuration:(double)a3 stopDuration:(double)a4 mirroringDuration:(double)a5 numOfSendDataRequests:(int64_t)a6 maxTimeToSendData:(double)a7 minTimeToSendData:(double)a8 avgTimeToSendData:(double)a9 isFirstParty:(BOOL)a10
{
  v19 = [(HDAnalyticsSubmissionCoordinator *)self isImprovedHealthAndActivityEnabled];
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.workout.%@", @"mirroring"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __211__HDAnalyticsSubmissionCoordinator_Workout__workout_reportMirroringEventWithStartDuration_stopDuration_mirroringDuration_numOfSendDataRequests_maxTimeToSendData_minTimeToSendData_avgTimeToSendData_isFirstParty___block_invoke;
  v21[3] = &__block_descriptor_90_e26___NSMutableDictionary_8__0l;
  *&v21[4] = a3;
  *&v21[5] = a4;
  v21[6] = a6;
  *&v21[7] = a7;
  *&v21[8] = a8;
  v22 = a10;
  v23 = v19;
  *&v21[9] = a9;
  *&v21[10] = a5;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v20 block:v21];
}

id __211__HDAnalyticsSubmissionCoordinator_Workout__workout_reportMirroringEventWithStartDuration_stopDuration_mirroringDuration_numOfSendDataRequests_maxTimeToSendData_minTimeToSendData_avgTimeToSendData_isFirstParty___block_invoke(uint64_t a1)
{
  v18[7] = *MEMORY[0x277D85DE8];
  v17[0] = @"timeToStartMirroring";
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 32)];
  v18[0] = v14;
  v17[1] = @"timeToStopMirroring";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  v18[1] = v2;
  v17[2] = @"countArbitraryDataRequests";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v18[2] = v3;
  v17[3] = @"timeToSendArbitraryDataMax";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  v18[3] = v4;
  v17[4] = @"timeToSendArbitraryDataMin";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
  v18[4] = v5;
  v17[5] = @"timeToSendArbitraryDataMean";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 72)];
  v18[5] = v6;
  v17[6] = @"isFirstParty";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 88)];
  v18[6] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:7];
  v9 = [v8 mutableCopy];

  if (*(a1 + 89) == 1)
  {
    v15 = @"mirroringSessionDuration";
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 80)];
    v16 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v9 addEntriesFromDictionary:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)workout_reportWorkoutEventWithHeartBeatFailures:(int64_t)a3 workoutDuration:(double)a4 isFirstParty:(BOOL)a5 sessionID:(id)a6
{
  v10 = a6;
  v11 = [(HDAnalyticsSubmissionCoordinator *)self isImprovedHealthAndActivityEnabled];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __132__HDAnalyticsSubmissionCoordinator_Workout__workout_reportWorkoutEventWithHeartBeatFailures_workoutDuration_isFirstParty_sessionID___block_invoke;
  v13[3] = &unk_2786290E0;
  v17 = a5;
  v18 = v11;
  v16 = a4;
  v14 = v10;
  v15 = a3;
  v12 = v10;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.workout" block:v13];
}

id __132__HDAnalyticsSubmissionCoordinator_Workout__workout_reportWorkoutEventWithHeartBeatFailures_workoutDuration_isFirstParty_sessionID___block_invoke(uint64_t a1)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"countDataLinkFailures";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  v12[1] = @"isFirstParty";
  v13[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
  v13[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v5 = [v4 mutableCopy];

  if (*(a1 + 57) == 1)
  {
    v10[0] = @"workoutDuration";
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 48)];
    v10[1] = @"sessionId";
    v11[0] = v6;
    v11[1] = *(a1 + 32);
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
    [v5 addEntriesFromDictionary:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)workout_reportEvent:(id)a3 timestamp:(id)a4 sessionID:(id)a5 activityType:(int64_t)a6 sessionDuration:(int64_t)a7 activityCount:(int64_t)a8 extendedMode:(BOOL)a9 totalLocations:(int64_t)a10 routeSmoothingRetryCount:(int64_t)a11 activityID:(id)a12 failure:(BOOL)a13
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a12;
  if ([(HDAnalyticsSubmissionCoordinator *)self isImprovedHealthAndActivityEnabled])
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __200__HDAnalyticsSubmissionCoordinator_Workout__workout_reportEvent_timestamp_sessionID_activityType_sessionDuration_activityCount_extendedMode_totalLocations_routeSmoothingRetryCount_activityID_failure___block_invoke;
    v23[3] = &unk_278629108;
    v24 = v20;
    v25 = v19;
    v26 = v21;
    v28 = a6;
    v29 = a7;
    v30 = a8;
    v31 = a10;
    v33 = a9;
    v32 = a11;
    v27 = v22;
    v34 = a13;
    [(HDAnalyticsSubmissionCoordinator *)self sendEvent:@"com.apple.healthd.workout.performance" block:v23];
  }
}

id __200__HDAnalyticsSubmissionCoordinator_Workout__workout_reportEvent_timestamp_sessionID_activityType_sessionDuration_activityCount_extendedMode_totalLocations_routeSmoothingRetryCount_activityID_failure___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v14 = *(a1 + 32);
  v13[0] = @"timestamp";
  v13[1] = @"performanceEvent";
  v15 = *(a1 + 48);
  v13[2] = @"sessionId";
  v13[3] = @"activityType";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
  v16 = v2;
  v13[4] = @"workoutSessionDuration";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72)];
  v17 = v3;
  v13[5] = @"routeSmoothingActivityCount";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 80)];
  v18 = v4;
  v13[6] = @"extendedMode";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 104)];
  v19 = v5;
  v13[7] = @"totalLocations";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 88)];
  v20 = v6;
  v13[8] = @"routeSmoothingRetryCount";
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 96)];
  v8 = *(a1 + 56);
  v21 = v7;
  v22 = v8;
  v13[9] = @"activityID";
  v13[10] = @"failure";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 105)];
  v23 = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:v13 count:11];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)database_reportSQLiteCorruptionWithExtendedErrorCode:(int)a3 type:(int64_t)a4 profile:(id)a5 description:(id)a6 sqlStatement:(id)a7 failedObliterationAttempt:(BOOL)a8
{
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.database.%@", @"corruption.sqlite"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __163__HDAnalyticsSubmissionCoordinator_Database__database_reportSQLiteCorruptionWithExtendedErrorCode_type_profile_description_sqlStatement_failedObliterationAttempt___block_invoke;
  v21[3] = &unk_27862D9F0;
  v26 = a3;
  v22 = v15;
  v23 = v14;
  v24 = v16;
  v25 = a4;
  v27 = a8;
  v18 = v16;
  v19 = v14;
  v20 = v15;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v17 block:v21];
}

id __163__HDAnalyticsSubmissionCoordinator_Database__database_reportSQLiteCorruptionWithExtendedErrorCode_type_profile_description_sqlStatement_failedObliterationAttempt___block_invoke(uint64_t a1)
{
  v14[6] = *MEMORY[0x277D85DE8];
  v13[0] = @"code";
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64)];
  v14[0] = v2;
  v13[1] = @"databaseType";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v14[1] = v3;
  v13[2] = @"description";
  v4 = [*(a1 + 32) length];
  v5 = *(a1 + 32);
  if (v4 >= 0x401)
  {
    v5 = [*(a1 + 32) substringToIndex:1024];
  }

  v14[2] = v5;
  v13[3] = @"profileType";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 40), "profileType")}];
  v14[3] = v6;
  v13[4] = @"sqlStatement";
  v7 = [*(a1 + 48) length];
  v8 = *(a1 + 48);
  if (v7 >= 0x401)
  {
    v8 = [*(a1 + 48) substringToIndex:1024];
  }

  v14[4] = v8;
  v13[5] = @"failedObliteration";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 68)];
  v14[5] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:6];

  if (v7 >= 0x401)
  {
  }

  if (v4 >= 0x401)
  {
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)database_reportUnprotectedDatabaseIdentifier:(id)a3 doesNotMatchProtectedDatabaseIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.database.%@", @"identifier-mismatch"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __131__HDAnalyticsSubmissionCoordinator_Database__database_reportUnprotectedDatabaseIdentifier_doesNotMatchProtectedDatabaseIdentifier___block_invoke;
  v11[3] = &unk_278628B00;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v8 block:v11];
}

id __131__HDAnalyticsSubmissionCoordinator_Database__database_reportUnprotectedDatabaseIdentifier_doesNotMatchProtectedDatabaseIdentifier___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"has-unprotected-identifier";
  v2 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32) != 0];
  v7[1] = @"has-protected-identifier";
  v8[0] = v2;
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) != 0];
  v8[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)database_reportJournalEntryInsertedForJournal:(int64_t)a3 entryClass:(id)a4 entrySize:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.database.%@", @"journal-inserted"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __113__HDAnalyticsSubmissionCoordinator_Database__database_reportJournalEntryInsertedForJournal_entryClass_entrySize___block_invoke;
  v13[3] = &unk_2786139E0;
  v15 = v9;
  v16 = a3;
  v14 = v8;
  v11 = v9;
  v12 = v8;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v10 block:v13];
}

id __113__HDAnalyticsSubmissionCoordinator_Database__database_reportJournalEntryInsertedForJournal_entryClass_entrySize___block_invoke(void *a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"type";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  v3 = a1[4];
  v4 = a1[5];
  v9[0] = v2;
  v9[1] = v3;
  v8[1] = @"class";
  v8[2] = @"size";
  v9[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)database_reportDatabaseMigrationStatus:(int64_t)a3 database:(id)a4 schemaVersion:(int64_t)a5 error:(id)a6 profileType:(int64_t)a7
{
  v12 = a6;
  v13 = MEMORY[0x277CBEB38];
  v14 = a4;
  v15 = objc_alloc_init(v13);
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v15 setObject:v16 forKeyedSubscript:@"databaseStatus"];

  [v15 setObject:v14 forKeyedSubscript:@"databaseName"];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
  [v15 setObject:v17 forKeyedSubscript:@"schemaVersion"];

  v18 = [MEMORY[0x277CCABB0] numberWithInteger:a7];
  [v15 setObject:v18 forKeyedSubscript:@"profileType"];

  if (v12)
  {
    v19 = [v12 hd_errorForAnalytics];

    v20 = [v19 domain];
    [v15 setObject:v20 forKeyedSubscript:@"errorDomain"];

    v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "code")}];
    [v15 setObject:v21 forKeyedSubscript:@"errorCode"];

    v22 = [v19 localizedDescription];
    [v15 setObject:v22 forKeyedSubscript:@"errorDescription"];
  }

  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.database.%@", @"migration-status"];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __126__HDAnalyticsSubmissionCoordinator_Database__database_reportDatabaseMigrationStatus_database_schemaVersion_error_profileType___block_invoke;
  v25[3] = &unk_27861ED70;
  v26 = v15;
  v24 = v15;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v23 block:v25];
}

- (void)database_reportCachedQueryEvent:(id)a3 cacheHits:(int64_t)a4 cacheMisses:(int64_t)a5 estimatedTotalBuckets:(unint64_t)a6
{
  v10 = a3;
  if ([(HDAnalyticsSubmissionCoordinator *)self isImprovedHealthAndActivityEnabled])
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.database.%@", @"resumable-query"];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __122__HDAnalyticsSubmissionCoordinator_Database__database_reportCachedQueryEvent_cacheHits_cacheMisses_estimatedTotalBuckets___block_invoke;
    v12[3] = &unk_278623CD8;
    v13 = v10;
    v14 = a4;
    v15 = a5;
    v16 = a6;
    [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v11 block:v12];
  }
}

id __122__HDAnalyticsSubmissionCoordinator_Database__database_reportCachedQueryEvent_cacheHits_cacheMisses_estimatedTotalBuckets___block_invoke(void *a1)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  v10[0] = a1[4];
  v9[0] = @"identifier";
  v9[1] = @"cacheHits";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
  v10[1] = v3;
  v9[2] = @"cacheMisses";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  v10[2] = v4;
  v9[3] = @"totalBuckets";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[7]];
  v10[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)database_reportJournalMergeActivityResult:(int64_t)a3 duration:(double)a4 interruptions:(id)a5 error:(id)a6
{
  v10 = a5;
  v11 = a6;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__190;
  v16[4] = __Block_byref_object_dispose__190;
  v17 = @"nil";
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v15[3] = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __117__HDAnalyticsSubmissionCoordinator_Database__database_reportJournalMergeActivityResult_duration_interruptions_error___block_invoke;
  v14[3] = &unk_27862DA18;
  v14[4] = v18;
  v14[5] = v15;
  v14[6] = v16;
  [v10 enumerateKeysAndObjectsUsingBlock:v14];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.healthd.database.%@", @"secondary-journal-merge-activity"];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __117__HDAnalyticsSubmissionCoordinator_Database__database_reportJournalMergeActivityResult_duration_interruptions_error___block_invoke_2;
  v13[3] = &unk_27862DA40;
  *&v13[8] = a4;
  v13[4] = v18;
  v13[5] = v16;
  v13[6] = v15;
  v13[7] = a3;
  [(HDAnalyticsSubmissionCoordinator *)self sendEvent:v12 block:v13];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v16, 8);

  _Block_object_dispose(v18, 8);
}

void __117__HDAnalyticsSubmissionCoordinator_Database__database_reportJournalMergeActivityResult_duration_interruptions_error___block_invoke(void *a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  *(*(a1[4] + 8) + 24) += [v6 unsignedIntValue];
  if (*(*(a1[5] + 8) + 24) < [v6 unsignedIntValue])
  {
    *(*(a1[5] + 8) + 24) = [v6 unsignedIntValue];
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }
}

id __117__HDAnalyticsSubmissionCoordinator_Database__database_reportJournalMergeActivityResult_duration_interruptions_error___block_invoke_2(uint64_t a1)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10[0] = @"result";
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  v11[0] = v2;
  v10[1] = @"duration";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
  v11[1] = v3;
  v10[2] = @"totalInterruptionCount";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(*(a1 + 32) + 8) + 24)];
  v11[2] = v4;
  v10[3] = @"topInterruptor";
  v5 = *(a1 + 48);
  v11[3] = *(*(*(a1 + 40) + 8) + 40);
  v10[4] = @"topInterruptionCount";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*(v5 + 8) + 24)];
  v11[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:5];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

@end