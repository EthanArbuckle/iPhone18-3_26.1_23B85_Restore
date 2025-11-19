@interface HMDBulletinBoard
+ (BOOL)isBulletinSupportedForCharacteristicType:(id)a3 serviceType:(id)a4;
+ (BOOL)isBulletinSupportedForNonSecureCharacteristicType:(id)a3 serviceType:(id)a4;
+ (BOOL)isCriticalNonSecureServiceType:(id)a3;
+ (BOOL)presentationValueOfCharacteristic:(id)a3 equalTo:(id)a4;
+ (id)_supportedNonSecureServices;
+ (id)_supportedSecureServices;
+ (id)attachmentsWithFileURL:(id)a3;
+ (id)bulletinSupportedCharacteristicsForService:(id)a3;
+ (id)createImageAttachmentByHardLinkingFile:(id)a3 fileManager:(id)a4;
+ (id)logCategory;
+ (id)notificationCategories;
+ (id)sharedBulletinBoard;
+ (unint64_t)interruptionLevelForChangedCharacteristic:(id)a3;
- (BOOL)_hasDuplicateBulletinForCharacteristic:(id)a3;
- (BOOL)_hasDuplicateBulletinForSnapshotCharacteristic:(id)a3;
- (BOOL)_shouldPostBulletinOnCurrentValueChangeForCharacteristic:(id)a3 includeChangeFromNil:(BOOL)a4;
- (BOOL)_shouldSkipBulletinForChangedCharacteristic:(id)a3;
- (BOOL)hasDoorbellPressNotificationToUpdateWithSignificantEventBulletin:(id)a3;
- (HMDBulletinBoard)init;
- (HMDBulletinBoard)initWithCoder:(id)a3;
- (HMDBulletinBoard)initWithNotificationCenter:(id)a3 fileManager:(id)a4 workQueue:(id)a5 doorbellBulletinUtilities:(id)a6 logEventSubmitter:(id)a7 featuresDataSource:(id)a8;
- (HMDHomeManager)homeManager;
- (NSArray)notificationRequestsSortedByDate;
- (NSString)threadIdentifierForGroupingWithUnknownHome;
- (id)_copyItemAtURL:(id)a3 toDirectory:(id)a4;
- (id)_doorbellPressNotificationsNearDate:(id)a3 forCameraProfile:(id)a4;
- (id)_insertRequestWithTitle:(id)a3 snapshotData:(id)a4 message:(id)a5 requestIdentifier:(id)a6 date:(id)a7 bulletinType:(unint64_t)a8 actionURL:(id)a9 bulletinContext:(id)a10 actionContext:(id)a11 interruptionLevel:(unint64_t)a12 logEventTopic:(int64_t)a13;
- (id)insertBulletinForIncomingInvitation:(id)a3;
- (id)insertBulletinForSecureTrigger:(id)a3;
- (id)messageForChangedCharacteristic:(id)a3 withSignificantEvents:(id)a4;
- (id)messageForGarageDoorCharacteristic:(id)a3 personName:(id)a4;
- (id)messageForLockCharacteristic:(id)a3 personName:(id)a4;
- (id)messageForSecuritySystemCharacteristic:(id)a3 personName:(id)a4;
- (id)messageForWindowCharacteristic:(id)a3 personName:(id)a4;
- (id)notificationRequestsByIdentifierForCameraClipUUIDs:(id)a3;
- (id)removeRedundantSignificantEventNotificationsForSignificantEvents:(id)a3;
- (id)threadIdentifierForGroupingWithHomeWithUUIDString:(id)a3;
- (id)titleNameForChangedCharacteristic:(id)a3;
- (id)updateBulletinForFirmwareUpdateInHome:(id)a3;
- (int64_t)bulletinNotificationsGroupTimeInterval;
- (void)_handleDidReceiveNotificationResponse:(id)a3 completionHandler:(id)a4;
- (void)_insertImageBulletinsForChangedCharacteristics:(id)a3 snapshotData:(id)a4 completion:(id)a5;
- (void)_submitCameraClipSignificantEventDetailsFromBulletin:(id)a3;
- (void)_submitDoorbellEventDetailsFromBulletinWithDate:(id)a3 significantEvents:(id)a4;
- (void)_updateCameraClipSignificantEventBulletinContent:(id)a3 withPreviewImageFilePathURL:(id)a4;
- (void)_updateCharacteristicTupleFor:(id)a3 withCurrentType:(id)a4 changedByThisDevice:(BOOL)a5;
- (void)_updateDoorbellPressNotificationsWithSignificantEventBulletin:(id)a3;
- (void)_updateDoorbellUserInfo:(id)a3 withSignificantEventUserInfo:(id)a4;
- (void)_updateMessageForDoorbellPressNotificationRequestWithIdentifier:(id)a3 usingSignificantEvents:(id)a4 cameraProfile:(id)a5;
- (void)addNotificationRequest:(id)a3 forIdentifier:(id)a4;
- (void)archive;
- (void)configureWithHomeManager:(id)a3;
- (void)cullBulletinsToCount:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)fetchAreUserNotificationsEnabledWithCompletion:(id)a3;
- (void)insertAccessCodeAddedBulletinForHome:(id)a3;
- (void)insertAccessCodeChangedBulletinForHome:(id)a3;
- (void)insertAccessCodeRemovedBulletinForHome:(id)a3;
- (void)insertBulletinForChangedSecureClassCharacteristic:(id)a3;
- (void)insertBulletinForIncompatibleInvitationFromInviterName:(id)a3 homeName:(id)a4 ownedHomeIdentifier:(id)a5;
- (void)insertBulletinsForChangedCharacteristics:(id)a3 modifiedCharacteristics:(id)a4 changedByThisDevice:(BOOL)a5 changeNotificationFromPrimary:(BOOL)a6 completion:(id)a7;
- (void)insertBulletinsForMatterFirmwareUpdateInstalledInHome:(id)a3 hmdHAPAccessory:(id)a4;
- (void)insertCameraAccessModeChangedBulletin:(id)a3;
- (void)insertCameraClipSignificantEventBulletin:(id)a3;
- (void)insertConnectedCHIPEcosystemsChangedBulletin:(id)a3;
- (void)insertHH2AutoMigratedSuccessBulletin;
- (void)insertHH2UpgradeRecommendationBulletin:(unint64_t)a3;
- (void)insertHomeHubReachabilityBulletinForHome:(id)a3 reachable:(BOOL)a4 hasMultipleResidents:(BOOL)a5;
- (void)insertImageBulletinsForChangedCharacteristics:(id)a3 snapshotData:(id)a4 completion:(id)a5;
- (void)insertLockOnboardingBulletinForHome:(id)a3 serviceType:(id)a4;
- (void)insertNewRMVLanguageBulletinForHome:(id)a3 language:(id)a4;
- (void)insertReachabilityEventBulletinForAccessory:(id)a3 reachable:(BOOL)a4 date:(id)a5;
- (void)insertWalletKeyExpressModeSetUpBulletinForHome:(id)a3;
- (void)insertWalletKeySupportAddedBulletinForAccessory:(id)a3;
- (void)notificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5;
- (void)refreshHomeBadgeNumber;
- (void)removeAllBulletins;
- (void)removeBulletinWithRecordID:(id)a3;
- (void)removeBulletinsForAccessory:(id)a3;
- (void)removeBulletinsForHome:(id)a3;
- (void)removeBulletinsForService:(id)a3;
- (void)removeBulletinsForTrigger:(id)a3;
- (void)removeBulletinsUsingPredicate:(id)a3;
- (void)removeCameraClipBulletinsForCameraProfile:(id)a3;
- (void)removeImageFilesForNotificationRequests:(id)a3;
- (void)removeWalletKeyOnboardingBulletinForHome:(id)a3;
- (void)resolveDisplayNameForChangedCharacteristic:(id)a3 completion:(id)a4;
- (void)updateContent:(id)a3 forNotificationWithRequestIdentifier:(id)a4;
- (void)updateDoorbellPressNotificationsWithSignificantEventBulletin:(id)a3;
@end

@implementation HMDBulletinBoard

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)notificationCenter:(id)a3 didReceiveNotificationResponse:(id)a4 withCompletionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(HMDBulletinBoard *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__HMDBulletinBoard_notificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

- (void)_handleDidReceiveNotificationResponse:(id)a3 completionHandler:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 notification];
  v10 = [v9 request];
  v11 = [v10 content];
  v12 = [v11 userInfo];

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543874;
    v55 = v16;
    v56 = 2112;
    v57 = v6;
    v58 = 2112;
    v59 = v12;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Did receive notification response: %@ with context: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v17 = [v6 notification];
  v18 = [v17 request];
  v19 = [v18 content];
  v20 = [v19 categoryIdentifier];

  if ([v20 isEqualToString:@"HomeAppBulletinCategory"])
  {
    v21 = [v6 actionIdentifier];
    v22 = [v21 isEqualToString:*MEMORY[0x277CE20F0]];

    if (v22)
    {
      v23 = [v6 notification];
      v24 = [v23 request];
      v25 = [v24 identifier];
      v53 = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
      [(HMDBulletinBoard *)v14 removeNotificationRequestsWithIdentifiers:v26 shouldDeleteAttachments:1];

LABEL_22:
      v7[2](v7);
      goto LABEL_23;
    }
  }

  if (![v20 isEqualToString:@"HMDBBSecureTrigger"])
  {
    goto LABEL_22;
  }

  v27 = [v12 objectForKeyedSubscript:@"home.uuid.internal"];
  v28 = [v12 objectForKeyedSubscript:@"trigger.uuid.internal"];
  v29 = [v6 actionIdentifier];
  v30 = v29;
  if (!v27 || !v28 || !v29)
  {
    v7[2](v7);

LABEL_17:
    goto LABEL_23;
  }

  v49 = v29;
  v50 = v28;
  v31 = [(HMDBulletinBoard *)v14 homeManager];
  v32 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v27];
  v33 = [v31 _homeWithUUID:v32];

  if (!v33)
  {
    v39 = objc_autoreleasePoolPush();
    v40 = v14;
    v41 = HMFGetOSLogHandle();
    v28 = v50;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543618;
      v55 = v42;
      v56 = 2112;
      v57 = v27;
      _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "%{public}@No home with UUID %@ found", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
    v7[2](v7);

    goto LABEL_17;
  }

  v34 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v50];
  v35 = v33;
  v36 = [v33 triggerWithUUID:v34];

  if (v36)
  {
    v37 = v49;
    v38 = [v49 isEqualToString:@"trigger_execute"];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __76__HMDBulletinBoard__handleDidReceiveNotificationResponse_completionHandler___block_invoke;
    v51[3] = &unk_2797358C8;
    v51[4] = v14;
    v52 = v36;
    [v52 userDidConfirmExecute:v38 completionHandler:v51];
  }

  else
  {
    v43 = objc_autoreleasePoolPush();
    v48 = v14;
    v44 = HMFGetOSLogHandle();
    v37 = v49;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v45 = v47 = v43;
      *buf = 138543618;
      v55 = v45;
      v56 = 2112;
      v57 = v50;
      _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@No trigger with UUID %@ found", buf, 0x16u);

      v43 = v47;
    }

    objc_autoreleasePoolPop(v43);
    v7[2](v7);
  }

  if (v36)
  {
    goto LABEL_22;
  }

LABEL_23:

  v46 = *MEMORY[0x277D85DE8];
}

void __76__HMDBulletinBoard__handleDidReceiveNotificationResponse_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Trigger execution error after user confirms: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    +[HMDBulletinUIManager presentExecutionErrorDialogForTrigger:partialSuccess:](HMDBulletinUIManager, "presentExecutionErrorDialogForTrigger:partialSuccess:", *(a1 + 40), [v3 code] == 64);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateDoorbellUserInfo:(id)a3 withSignificantEventUserInfo:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [MEMORY[0x277CBEB38] dictionary];
  v10 = *MEMORY[0x277CD13D8];
  v11 = [v7 objectForKeyedSubscript:*MEMORY[0x277CD13D8]];
  [v9 setObject:v11 forKeyedSubscript:v10];

  v12 = *MEMORY[0x277CCF300];
  v13 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCF300]];
  [v9 setObject:v13 forKeyedSubscript:v12];

  v14 = *MEMORY[0x277CCF310];
  v15 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCF310]];
  [v9 setObject:v15 forKeyedSubscript:v14];

  v16 = *MEMORY[0x277CCF2F8];
  v17 = [v7 objectForKeyedSubscript:*MEMORY[0x277CCF2F8]];
  [v9 setObject:v17 forKeyedSubscript:v16];

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v21;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Merging user info: %@ from significant event notification into doorbell notification", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  [v6 addEntriesFromDictionary:v9];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_submitCameraClipSignificantEventDetailsFromBulletin:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 significantEvents];

  v15 = [v6 na_map:&__block_literal_global_341];

  v7 = [v15 allObjects];
  v8 = [v7 na_map:&__block_literal_global_343];

  v9 = [v15 count] != 0;
  v10 = [v8 count];
  v11 = [v15 count] - v10;
  v12 = [(HMDBulletinBoard *)self logEventSubmitter];
  v13 = [HMDFamiliarFacesBulletinLogEvent alloc];
  v14 = [(HMDFamiliarFacesBulletinLogEvent *)v13 initWithContainsFaceClassification:v9 numberOfKnownPersons:v10 numberOfUnknownPersons:v11 bulletinReason:*MEMORY[0x277CCF370] doorbellPressed:0 secondsFromDoorbellToFaceClassification:0.0];
  [v12 submitLogEvent:v14];
}

id __73__HMDBulletinBoard__submitCameraClipSignificantEventDetailsFromBulletin___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 person];
  v3 = [v2 name];

  return v3;
}

- (void)_submitDoorbellEventDetailsFromBulletinWithDate:(id)a3 significantEvents:(id)a4
{
  v24 = a3;
  v6 = a4;
  v7 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v7);

  v8 = [v6 na_filter:&__block_literal_global_329];

  v9 = [v8 na_map:&__block_literal_global_332];
  v10 = [v8 allObjects];
  v11 = [v10 sortedArrayUsingComparator:&__block_literal_global_335];
  v12 = [v11 firstObject];
  v13 = [v12 dateOfOccurrence];

  if (v13)
  {
    [v13 timeIntervalSinceDate:v24];
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  v16 = [v9 allObjects];
  v17 = [v16 na_map:&__block_literal_global_338];

  v18 = [v9 count] != 0;
  v19 = [v17 count];
  v20 = [v9 count] - v19;
  v21 = [(HMDBulletinBoard *)self logEventSubmitter];
  v22 = [HMDFamiliarFacesBulletinLogEvent alloc];
  v23 = [(HMDFamiliarFacesBulletinLogEvent *)v22 initWithContainsFaceClassification:v18 numberOfKnownPersons:v19 numberOfUnknownPersons:v20 bulletinReason:*MEMORY[0x277CCF358] doorbellPressed:1 secondsFromDoorbellToFaceClassification:v15];
  [v21 submitLogEvent:v23];
}

id __86__HMDBulletinBoard__submitDoorbellEventDetailsFromBulletinWithDate_significantEvents___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 person];
  v3 = [v2 name];

  return v3;
}

uint64_t __86__HMDBulletinBoard__submitDoorbellEventDetailsFromBulletinWithDate_significantEvents___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateOfOccurrence];
  v6 = [v4 dateOfOccurrence];

  v7 = [v5 compare:v6];
  return v7;
}

BOOL __86__HMDBulletinBoard__submitDoorbellEventDetailsFromBulletinWithDate_significantEvents___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 faceClassification];
  v3 = v2 != 0;

  return v3;
}

- (void)_updateCameraClipSignificantEventBulletinContent:(id)a3 withPreviewImageFilePathURL:(id)a4
{
  v18 = a4;
  v6 = a3;
  v7 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v7);

  if (v18)
  {
    v8 = [(HMDBulletinBoard *)self fileManager];
    v9 = [v8 heroFrameStoreDirectoryURL];
    v10 = [(HMDBulletinBoard *)self _copyItemAtURL:v18 toDirectory:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v10 filePathURL];
  v12 = [(HMDBulletinBoard *)self fileManager];
  v13 = [HMDBulletinBoard createImageAttachmentByHardLinkingFile:v11 fileManager:v12];

  [v6 setAttachments:v13];
  v14 = [v6 userInfo];
  v15 = [v14 mutableCopy];

  v16 = [v10 filePathURL];
  v17 = [v16 path];
  [v15 setObject:v17 forKeyedSubscript:*MEMORY[0x277CD26B8]];

  [v6 setUserInfo:v15];
}

- (id)_copyItemAtURL:(id)a3 toDirectory:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDBulletinBoard *)self fileManager];
  v31 = 0;
  v10 = [v9 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:0 error:&v31];
  v11 = v31;

  if (v10)
  {
    v12 = [MEMORY[0x277CCAD78] UUID];
    v13 = [v12 UUIDString];
    v14 = [v13 stringByAppendingPathExtension:@"jpg"];

    v15 = [v7 URLByAppendingPathComponent:v14];
    v16 = [(HMDBulletinBoard *)self fileManager];
    v30 = v11;
    v17 = [v16 copyItemAtURL:v6 toURL:v15 error:&v30];
    v18 = v30;

    if (v17)
    {
      v19 = v15;
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138544130;
        v33 = v27;
        v34 = 2112;
        v35 = v6;
        v36 = 2112;
        v37 = v15;
        v38 = 2112;
        v39 = v18;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to item from %@ to %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v24);
      v19 = 0;
    }

    v11 = v18;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v23;
      v34 = 2112;
      v35 = v7;
      v36 = 2112;
      v37 = v11;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to create directory at URL %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)_doorbellPressNotificationsNearDate:(id)a3 forCameraProfile:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [(HMDBulletinBoard *)self notificationRequestsByIdentifier];
  v10 = [v9 allValues];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__HMDBulletinBoard__doorbellPressNotificationsNearDate_forCameraProfile___block_invoke;
  v15[3] = &unk_279724650;
  v16 = v6;
  v17 = v7;
  v11 = v7;
  v12 = v6;
  v13 = [v10 na_filter:v15];

  return v13;
}

uint64_t __73__HMDBulletinBoard__doorbellPressNotificationsNearDate_forCameraProfile___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 content];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCF360]];

  v7 = [v6 isEqualToString:*MEMORY[0x277CCF358]];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:*(a1 + 32) sinceDate:-30.0];
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:*(a1 + 32) sinceDate:30.0];
  v10 = [v3 content];
  v11 = [v10 date];
  if ([v11 compare:v8] == 1)
  {
    v12 = [v3 content];
    [v12 date];
    v25 = v3;
    v13 = a1;
    v14 = v8;
    v15 = v6;
    v17 = v16 = v7;
    v18 = [v17 compare:v9] == -1;

    v7 = v16;
    v6 = v15;
    v8 = v14;
    a1 = v13;
    v3 = v25;
  }

  else
  {
    v18 = 0;
  }

  v19 = [v3 content];
  v20 = [v19 userInfo];
  v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277CCF308]];

  v22 = [*(a1 + 40) contextSPIUniqueIdentifier];
  v23 = [v22 UUIDString];
  LODWORD(v20) = [v23 isEqualToString:v21];

  return v7 & v20 & v18;
}

- (id)notificationRequestsByIdentifierForCameraClipUUIDs:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDBulletinBoard *)self notificationRequestsByIdentifier];
  v7 = [v6 copy];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__HMDBulletinBoard_notificationRequestsByIdentifierForCameraClipUUIDs___block_invoke;
  v11[3] = &unk_279724628;
  v12 = v7;
  v8 = v7;
  v9 = [v4 na_map:v11];

  return v9;
}

id __71__HMDBulletinBoard_notificationRequestsByIdentifierForCameraClipUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUIDString];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

- (void)_updateMessageForDoorbellPressNotificationRequestWithIdentifier:(id)a3 usingSignificantEvents:(id)a4 cameraProfile:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v11);

  v12 = [(HMDBulletinBoard *)self notificationRequestsByIdentifier];
  v13 = [v12 objectForKeyedSubscript:v8];

  if (v13)
  {
    v14 = [v13 content];
    v15 = [v14 mutableCopy];

    v16 = [v15 date];
    [(HMDBulletinBoard *)self _submitDoorbellEventDetailsFromBulletinWithDate:v16 significantEvents:v9];

    v17 = [(HMDBulletinBoard *)self doorbellBulletinUtilities];
    v18 = [v17 localizedDoorbellMessageForSignificantEvents:v9];
    [v15 setBody:v18];

    v19 = [v15 userInfo];
    v20 = *MEMORY[0x277CD26B8];
    v21 = [v19 objectForKeyedSubscript:*MEMORY[0x277CD26B8]];

    if (v21)
    {
      v22 = MEMORY[0x277CBEBC0];
      v23 = [v15 userInfo];
      v24 = [v23 objectForKeyedSubscript:v20];
      v25 = [v22 fileURLWithPath:v24];

      v26 = [(HMDBulletinBoard *)self fileManager];
      v27 = [HMDBulletinBoard createImageAttachmentByHardLinkingFile:v25 fileManager:v26];
      [v15 setAttachments:v27];
    }

    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      v32 = [v15 body];
      [v15 userInfo];
      v33 = v43 = v10;
      [v15 attachments];
      v42 = v28;
      v34 = v8;
      v36 = v35 = v9;
      *buf = 138544386;
      v45 = v31;
      v46 = 2112;
      v47 = v13;
      v48 = 2112;
      v49 = v32;
      v50 = 2112;
      v51 = v33;
      v52 = 2112;
      v53 = v36;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Updating doorbell press notification %@ with body: %@, userInfo: %@, attachments: %@", buf, 0x34u);

      v9 = v35;
      v8 = v34;
      v28 = v42;

      v10 = v43;
    }

    objc_autoreleasePoolPop(v28);
    [(HMDBulletinBoard *)v29 updateContent:v15 forNotificationWithRequestIdentifier:v8];
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    v38 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v40;
      v46 = 2112;
      v47 = v8;
      _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Did not find request with identifier: %@, so doing nothing", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_updateDoorbellPressNotificationsWithSignificantEventBulletin:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [v4 dateOfOccurrence];
  v7 = [v4 camera];
  v8 = [(HMDBulletinBoard *)self _doorbellPressNotificationsNearDate:v6 forCameraProfile:v7];

  if (([v8 hmf_isEmpty] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v65 = v12;
      v66 = 2112;
      v67 = v8;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Found recent doorbell press notifications to update: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v51 = v8;
    obj = v8;
    v56 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
    if (v56)
    {
      v54 = *v61;
      v57 = *MEMORY[0x277CD26B8];
      v55 = v4;
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v61 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v58 = *(*(&v60 + 1) + 8 * i);
          v14 = [v58 content];
          v15 = [v14 mutableCopy];

          v16 = [v4 previewImageFilePathURL];

          v17 = [v15 userInfo];
          v18 = [v17 objectForKeyedSubscript:v57];
          v19 = v18;
          if (v16)
          {

            if (v19)
            {
              v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v19];
              v21 = [(HMDBulletinBoard *)v10 fileManager];
              v59 = 0;
              v22 = [v21 removeItemAtURL:v20 error:&v59];
              v23 = v59;

              if ((v22 & 1) == 0)
              {
                v24 = objc_autoreleasePoolPush();
                v25 = v10;
                v26 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  HMFGetLogIdentifier();
                  v27 = v52 = v24;
                  *buf = 138543874;
                  v65 = v27;
                  v66 = 2112;
                  v67 = v20;
                  v68 = 2112;
                  v69 = v23;
                  _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove old notification image: %@ with error: %@", buf, 0x20u);

                  v24 = v52;
                }

                objc_autoreleasePoolPop(v24);
              }
            }

            v28 = [v4 previewImageFilePathURL];
            [(HMDBulletinBoard *)v10 _updateCameraClipSignificantEventBulletinContent:v15 withPreviewImageFilePathURL:v28];
          }

          else
          {

            if (!v19)
            {
              goto LABEL_20;
            }

            v29 = MEMORY[0x277CBEBC0];
            v30 = [v15 userInfo];
            v31 = [v30 objectForKeyedSubscript:v57];
            v19 = [v29 fileURLWithPath:v31];

            v28 = [(HMDBulletinBoard *)v10 fileManager];
            v32 = [HMDBulletinBoard createImageAttachmentByHardLinkingFile:v19 fileManager:v28];
            [v15 setAttachments:v32];
          }

LABEL_20:
          v33 = [v15 date];
          v34 = [v4 significantEvents];
          [(HMDBulletinBoard *)v10 _submitDoorbellEventDetailsFromBulletinWithDate:v33 significantEvents:v34];

          v35 = [v4 significantEvents];
          LODWORD(v34) = [v35 na_any:&__block_literal_global_323];

          if (v34)
          {
            v36 = [v15 userInfo];
            v37 = [v36 mutableCopy];

            v38 = [v4 userInfo];
            [(HMDBulletinBoard *)v10 _updateDoorbellUserInfo:v37 withSignificantEventUserInfo:v38];

            [v15 setUserInfo:v37];
          }

          v39 = [(HMDBulletinBoard *)v10 doorbellBulletinUtilities];
          v40 = [v4 significantEvents];
          v41 = [v39 localizedDoorbellMessageForSignificantEvents:v40];
          [v15 setBody:v41];

          v42 = objc_autoreleasePoolPush();
          v43 = v10;
          v44 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = HMFGetLogIdentifier();
            v46 = [v15 body];
            v47 = [v15 userInfo];
            v48 = [v15 attachments];
            *buf = 138544386;
            v65 = v45;
            v66 = 2112;
            v67 = v58;
            v68 = 2112;
            v69 = v46;
            v70 = 2112;
            v71 = v47;
            v72 = 2112;
            v73 = v48;
            _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Updating doorbell press notification %@ with body: %@, userInfo: %@, attachments: %@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(v42);
          v49 = [v58 identifier];
          [(HMDBulletinBoard *)v43 updateContent:v15 forNotificationWithRequestIdentifier:v49];

          v4 = v55;
        }

        v56 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
      }

      while (v56);
    }

    v8 = v51;
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldPostBulletinOnCurrentValueChangeForCharacteristic:(id)a3 includeChangeFromNil:(BOOL)a4
{
  v99 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v7);

  if ([(HMDBulletinBoard *)self _shouldSkipBulletinForChangedCharacteristic:v6])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v82 = v11;
      v83 = 2112;
      v84 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Skipping bulletin for characteristic: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_9;
  }

  if (a4)
  {
    v12 = 0;
  }

  else
  {
    v13 = [(__CFString *)v6 previousValue];
    v12 = v13 == 0;
  }

  v14 = +[HMDBulletinCategory targetCurrentCharacteristicTypeMap];
  v15 = [(__CFString *)v6 type];
  v16 = [v14 objectForKeyedSubscript:v15];

  if (!v16)
  {
    v20 = HMDBulletinBoard;
    v21 = [(__CFString *)v6 service];
    v22 = [v21 contextID];
    v23 = [(__CFString *)v6 type];
    v24 = [HMDBulletinBoard characteristicTupleKeyFromServiceContextID:v22 currentType:v23];

    v25 = [(__CFString *)v6 type];
    v26 = [v25 isEqualToString:*MEMORY[0x277CFE608]];
    if (v26)
    {
      v20 = [(__CFString *)v6 value];
      if ([(__objc2_class *)v20 isEqual:&unk_286627B50])
      {

LABEL_32:
        v45 = objc_autoreleasePoolPush();
        v46 = self;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v48 = HMFGetLogIdentifier();
          v49 = [(__CFString *)v6 instanceID];
          v50 = [(__CFString *)v6 value];
          *buf = 138543874;
          v82 = v48;
          v83 = 2112;
          v84 = v49;
          v85 = 2112;
          v86 = v50;
          _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Should post bulletin for characteristic instanceId: %@ value:%@ because this is lock jammed or security system triggered", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v45);
        v31 = [(HMDBulletinBoard *)v46 characteristicTuplesByKey];
        [v31 removeObjectForKey:v24];
        LOBYTE(v17) = 1;
LABEL_60:

        goto LABEL_10;
      }
    }

    v27 = [(__CFString *)v6 type];
    v80 = v24;
    if ([v27 isEqualToString:*MEMORY[0x277CFE620]])
    {
      v28 = [(__CFString *)v6 value];
      v29 = [v28 isEqual:&unk_286627B68];

      if (v26)
      {

        v24 = v80;
        if (v29)
        {
          goto LABEL_32;
        }
      }

      else
      {

        v24 = v80;
        if (v29)
        {
          goto LABEL_32;
        }
      }
    }

    else
    {

      if (v26)
      {
      }
    }

    v30 = [(HMDBulletinBoard *)self characteristicTuplesByKey];
    v31 = [v30 objectForKeyedSubscript:v24];

    if (!v31)
    {
      v36 = objc_autoreleasePoolPush();
      v37 = self;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v39 = v77 = v36;
        if (v12)
        {
          v40 = @"not post";
        }

        else
        {
          v40 = @"post";
        }

        v41 = [(__CFString *)v6 instanceID];
        v42 = [(__CFString *)v6 value];
        v43 = HMFBooleanToString();
        v44 = HMFBooleanToString();
        *buf = 138544642;
        v82 = v39;
        v83 = 2112;
        v84 = v40;
        v85 = 2112;
        v86 = v41;
        v87 = 2112;
        v88 = v42;
        v89 = 2112;
        v90 = v43;
        v91 = 2112;
        v92 = v44;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Should %@ bulletin for characteristic instanceId: %@ value:%@ includeChangeFromNil: %@ because tuple not present and initial update is %@", buf, 0x3Eu);

        v24 = v80;
        v36 = v77;
      }

      objc_autoreleasePoolPop(v36);
      v31 = 0;
      LOBYTE(v17) = !v12;
      goto LABEL_60;
    }

    v32 = [v31 targetStateNumber];
    v33 = [(__CFString *)v6 stateNumber];
    v34 = HAPCompareStateNumberWithRollover();

    if (v34 == 1)
    {
      v35 = 1;
      goto LABEL_24;
    }

    v51 = [v31 targetValue];
    v52 = [HMDBulletinBoard presentationValueOfCharacteristic:v6 equalTo:v51];

    if (v52)
    {
      LOBYTE(v17) = ([v31 changedByThisDevice] | v12) ^ 1;
      v53 = [(__CFString *)v6 type];
      if ([v53 isEqualToString:*MEMORY[0x277CFE5E8]])
      {
        v54 = [(__CFString *)v6 value];
        if ([v54 integerValue] == 2)
        {
          v35 = v34;
          v55 = [v31 targetValue];
          v56 = [v55 integerValue];

          if (!v56)
          {
            goto LABEL_55;
          }

LABEL_50:
          v24 = v80;
LABEL_54:
          v64 = [(HMDBulletinBoard *)self characteristicTuplesByKey];
          [v64 removeObjectForKey:v24];

          goto LABEL_55;
        }

        v24 = v80;
      }

      v35 = v34;

      goto LABEL_54;
    }

    v57 = [v31 targetStateNumber];
    if (v57)
    {
      v58 = v57;
      v59 = [(__CFString *)v6 stateNumber];
      v60 = v59;
      if (!v59 || v34)
      {
      }

      else
      {
        v61 = [v31 changedByThisDevice];

        if (!v61)
        {
          v35 = 0;
          LOBYTE(v17) = 0;
          goto LABEL_55;
        }
      }
    }

    v35 = v34;
    v62 = [v31 targetValue];
    if (v62)
    {
      v63 = v62;
      v17 = [v31 changedByThisDevice];

      if (!v17)
      {
        goto LABEL_55;
      }
    }

    if ([v31 changedByThisDevice])
    {
LABEL_24:
      LOBYTE(v17) = 0;
LABEL_55:
      v65 = objc_autoreleasePoolPush();
      v66 = self;
      v67 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v78 = HMFGetLogIdentifier();
        v68 = @"same/newer";
        if (v35 == 1)
        {
          v68 = @"older";
        }

        v75 = v68;
        v73 = [v31 targetValue];
        v74 = [v31 targetStateNumber];
        v76 = HMFBooleanToString();
        [v31 changedByThisDevice];
        v69 = HMFBooleanToString();
        HMFBooleanToString();
        v70 = v79 = v66;
        v71 = HMFBooleanToString();
        v72 = HMFBooleanToString();
        *buf = 138545410;
        v82 = v78;
        v83 = 2112;
        v84 = v75;
        v85 = 2112;
        v86 = v73;
        v87 = 2112;
        v88 = v74;
        v89 = 2112;
        v90 = v76;
        v91 = 2112;
        v92 = v69;
        v93 = 2112;
        v94 = v70;
        v95 = 2112;
        v96 = v71;
        v97 = 2112;
        v98 = v72;
        _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@Should post bulletin: Target/Current - Current is: %@, Cached Target Value: %@ Cached Target State: %@ waitForTargetMatch: %@ changedByThisDevice: %@ initialUpdate: %@, shouldPostBulletin: %@, includeChangeFromNil: %@", buf, 0x5Cu);

        v66 = v79;
      }

      objc_autoreleasePoolPop(v65);
      v24 = v80;
      goto LABEL_60;
    }

    LOBYTE(v17) = 1;
    goto LABEL_50;
  }

LABEL_9:
  LOBYTE(v17) = 0;
LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

- (BOOL)_shouldSkipBulletinForChangedCharacteristic:(id)a3
{
  v3 = a3;
  v4 = [v3 service];
  v5 = [v3 type];
  if ([v5 isEqualToString:*MEMORY[0x277CFE678]])
  {
    v6 = [v4 bulletinBoardNotification];
    v7 = [v6 notificationServiceGroup];
    v8 = [v7 cameraProfiles];
    v9 = [v8 count];

    if (v9)
    {
LABEL_19:
      v23 = 1;
      goto LABEL_31;
    }
  }

  else
  {
  }

  v10 = [v3 type];
  if (![v10 isEqualToString:*MEMORY[0x277CFE660]])
  {
LABEL_10:

    goto LABEL_11;
  }

  v11 = [v4 type];
  if (([v11 isEqualToString:*MEMORY[0x277CFE840]] & 1) == 0)
  {

    goto LABEL_10;
  }

  v12 = [v4 bulletinBoardNotification];
  v13 = [v12 notificationServiceGroup];
  v14 = [v13 cameraProfiles];
  v15 = [v14 count];

  if (v15)
  {
    goto LABEL_19;
  }

LABEL_11:
  v16 = [v3 type];
  if (![v16 isEqualToString:*MEMORY[0x277CFE5B0]])
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [v4 type];
  if (([v17 isEqualToString:@"00000260-0000-1000-8000-0026BB765291"] & 1) == 0)
  {

    goto LABEL_16;
  }

  v18 = [v3 value];
  v19 = [v18 intValue];

  if (v19)
  {
    goto LABEL_19;
  }

LABEL_17:
  v20 = [v3 type];
  if ([v20 isEqualToString:*MEMORY[0x277CFE5E8]])
  {
    v21 = [v3 value];
    v22 = [v21 integerValue];

    if (v22 == 3)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v24 = [v3 type];
  if ([v24 isEqualToString:*MEMORY[0x277CFE608]])
  {
    v25 = [v3 value];
    if ([v25 integerValue])
    {
      v26 = [v3 value];
      if ([v26 integerValue] == 1)
      {
        v23 = 0;
      }

      else
      {
        v27 = [v3 value];
        v23 = [v27 integerValue] != 2;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

LABEL_31:
  return v23;
}

- (void)_updateCharacteristicTupleFor:(id)a3 withCurrentType:(id)a4 changedByThisDevice:(BOOL)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v9);

  v10 = [v7 service];
  v11 = [v10 findCharacteristicWithType:v8];
  v12 = [v7 stateNumber];
  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = v12;
  v14 = [v11 stateNumber];

  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = [v11 stateNumber];
  v16 = [v7 stateNumber];
  v17 = HAPCompareStateNumberWithRollover();

  if (v17 == 1)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v7 stateNumber];
      v23 = [v11 stateNumber];
      *buf = 138543874;
      v40 = v21;
      v41 = 2112;
      v42 = v22;
      v43 = 2112;
      v44 = v23;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Not creating tuple because target state number is stale: %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
  }

  else
  {
LABEL_7:
    v38 = v11;
    v24 = [v10 contextID];
    v25 = [HMDBulletinBoard characteristicTupleKeyFromServiceContextID:v24 currentType:v8];

    v26 = [(HMDBulletinBoard *)self characteristicTuplesByKey];
    v27 = [v26 objectForKeyedSubscript:v25];

    if (v27)
    {
      v28 = [v27 targetValue];
      v29 = [HMDBulletinBoard presentationValueOfCharacteristic:v7 equalTo:v28];

      if (v29)
      {
        [v27 changedByThisDevice];
      }
    }

    v30 = [v7 value];
    v31 = [v7 type];
    v32 = [HMDBulletinCategory presentationValueForValue:v30 type:v31];

    if (!v32)
    {
      v32 = [v7 value];
    }

    v33 = [v10 contextID];
    v34 = [v7 stateNumber];
    v35 = [HMDBulletinCharacteristicTuple tupleWithServiceContextID:"tupleWithServiceContextID:currentType:targetValue:targetStateNumber:changedByThisDevice:" currentType:v33 targetValue:? targetStateNumber:? changedByThisDevice:?];
    v36 = [(HMDBulletinBoard *)self characteristicTuplesByKey];
    [v36 setObject:v35 forKeyedSubscript:v25];

    v11 = v38;
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasDuplicateBulletinForSnapshotCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDBulletinBoard *)self notificationRequestsSortedByDate];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__HMDBulletinBoard__hasDuplicateBulletinForSnapshotCharacteristic___block_invoke;
  v20[3] = &unk_279733388;
  v7 = v4;
  v21 = v7;
  v8 = [v6 na_firstObjectPassingTest:v20];

  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = [v7 type];
  if (![v9 isEqualToString:*MEMORY[0x277CFE660]])
  {
    goto LABEL_7;
  }

  v10 = [v7 service];
  v11 = [v10 type];
  v12 = [v11 isEqualToString:*MEMORY[0x277CFE840]];

  if (!v12)
  {
    goto LABEL_8;
  }

  v13 = [v8 content];
  v14 = [v13 userInfo];
  v9 = [v14 objectForKeyedSubscript:@"characteristicValueUpdatedTime"];

  if (!v9)
  {
    goto LABEL_8;
  }

  v15 = [MEMORY[0x277CBEAA8] distantPast];
  if ([v9 isEqualToDate:v15])
  {

LABEL_7:
    goto LABEL_8;
  }

  v18 = [v7 lastKnownValueUpdateTime];
  v19 = [v9 isEqualToDate:v18];

  if (v19)
  {
    v16 = 1;
    goto LABEL_9;
  }

LABEL_8:
  v16 = 0;
LABEL_9:

  return v16;
}

uint64_t __67__HMDBulletinBoard__hasDuplicateBulletinForSnapshotCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 content];
  v4 = [v3 userInfo];
  v5 = [v4 hmf_stringForKey:@"characteristic"];

  v6 = [*(a1 + 32) contextID];
  v7 = [v5 isEqualToString:v6];

  return v7;
}

- (BOOL)_hasDuplicateBulletinForCharacteristic:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDBulletinBoard *)self notificationRequestsSortedByDate];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __59__HMDBulletinBoard__hasDuplicateBulletinForCharacteristic___block_invoke;
  v40[3] = &unk_279733388;
  v7 = v4;
  v41 = v7;
  v8 = [v6 na_firstObjectPassingTest:v40];

  if (v8)
  {
    v9 = [v7 value];
    v10 = [v7 type];
    v11 = [HMDBulletinCategory presentationValueForValue:v9 type:v10];

    v12 = [v8 content];
    v13 = [v12 userInfo];
    v14 = [v13 objectForKeyedSubscript:@"characteristicValue"];
    v15 = [v8 content];
    v16 = [v15 userInfo];
    v17 = [v16 objectForKeyedSubscript:@"characteristicType"];
    v18 = [HMDBulletinCategory presentationValueForValue:v14 type:v17];

    v19 = [v7 metadata];
    v20 = [v19 stepValue];
    if (!compareCharacteristicValue(v11, v18, 4, v20))
    {
      v29 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v21 = [v7 stateNumber];
    v22 = [v8 content];
    v23 = [v22 userInfo];
    v24 = [v23 objectForKeyedSubscript:@"stateNumber"];

    if (v21 | v24)
    {
      if (!HMFEqualObjects())
      {
        goto LABEL_11;
      }

      v25 = [MEMORY[0x277CBEAA8] date];
      v38 = [v8 content];
      v26 = [v38 date];
      [v25 timeIntervalSinceDate:v26];
      v28 = v27;
    }

    else
    {
      v30 = [MEMORY[0x277CBEAA8] date];
      v31 = [v8 content];
      [v31 date];
      v39 = v18;
      v32 = v24;
      v33 = v21;
      v35 = v34 = v11;
      [v30 timeIntervalSinceDate:v35];
      v28 = v36;

      v11 = v34;
      v21 = v33;
      v24 = v32;
      v18 = v39;
    }

    if (v28 < 60.0)
    {
      v29 = 1;
LABEL_12:

      goto LABEL_13;
    }

LABEL_11:
    v29 = 0;
    goto LABEL_12;
  }

  v29 = 0;
LABEL_14:

  return v29;
}

uint64_t __59__HMDBulletinBoard__hasDuplicateBulletinForCharacteristic___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 content];
  v4 = [v3 userInfo];
  v5 = [v4 hmf_stringForKey:@"characteristic"];

  v6 = [*(a1 + 32) contextID];
  v7 = [v5 isEqualToString:v6];

  return v7;
}

- (id)_insertRequestWithTitle:(id)a3 snapshotData:(id)a4 message:(id)a5 requestIdentifier:(id)a6 date:(id)a7 bulletinType:(unint64_t)a8 actionURL:(id)a9 bulletinContext:(id)a10 actionContext:(id)a11 interruptionLevel:(unint64_t)a12 logEventTopic:(int64_t)a13
{
  v76 = *MEMORY[0x277D85DE8];
  v71 = a3;
  v19 = a4;
  v67 = a5;
  v66 = a6;
  v65 = a7;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v23);

  v70 = v21;
  v24 = [v21 mutableCopy];
  v69 = v22;
  if (!v19)
  {
    v68 = 0;
    if (!v20)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v25 = *MEMORY[0x277CD26B8];
  v26 = [v19 objectForKeyedSubscript:*MEMORY[0x277CD26B8]];
  [v24 setValue:v26 forKey:v25];

  v27 = [v19 objectForKeyedSubscript:@"kCameraSessionID"];
  [v24 setValue:v27 forKey:@"kCameraSessionID"];

  v28 = *MEMORY[0x277CD26B0];
  v29 = [v19 objectForKeyedSubscript:*MEMORY[0x277CD26B0]];
  [v24 setValue:v29 forKey:v28];

  v30 = [v19 objectForKeyedSubscript:v25];
  if (v30)
  {
    v31 = [MEMORY[0x277CBEBC0] fileURLWithPath:v30];
    v32 = [(HMDBulletinBoard *)self fileManager];
    v68 = [HMDBulletinBoard createImageAttachmentByHardLinkingFile:v31 fileManager:v32];

    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v73 = v36;
      v74 = 2112;
      v75 = v68;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Adding attachments: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v22 = v69;
  }

  else
  {
    v68 = 0;
  }

  if (v20)
  {
LABEL_10:
    v37 = objc_autoreleasePoolPush();
    v38 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v73 = v40;
      v74 = 2112;
      v75 = v20;
      _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@Setting default action with URL: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    v41 = [v20 absoluteString];
    [v24 setObject:v41 forKey:*MEMORY[0x277CD13D8]];
  }

LABEL_13:
  v42 = 0;
  v64 = v20;
  if (!a8)
  {
    v55 = &HMDBulletinCategoryNormalType;
    goto LABEL_23;
  }

  if (a8 != 2)
  {
    if (a8 == 1)
    {
      v43 = [v22 objectForKeyedSubscript:@"categoryID"];

      if (v43)
      {
        v44 = [v22 objectForKeyedSubscript:@"categoryID"];
        v45 = [v22 objectForKeyedSubscript:@"bulletinActionButtonDescription"];
        [v24 setObject:v45 forKeyedSubscript:@"bulletinActionButtonDescription"];

        v46 = *MEMORY[0x277CCF308];
        v47 = [v22 objectForKeyedSubscript:*MEMORY[0x277CCF308]];
        [v24 setObject:v47 forKeyedSubscript:v46];
      }

      else
      {
        v44 = 0;
      }

      v42 = 0;
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v48 = [v22 objectForKeyedSubscript:@"buttonCategory"];
  v49 = [v48 isEqualToNumber:&unk_286627B38];

  if (!v49)
  {
    v42 = 0;
LABEL_25:
    v50 = 0;
    goto LABEL_26;
  }

  v50 = [v22 objectForKeyedSubscript:@"buttonCategory"];
  if (!v50)
  {
LABEL_35:
    v42 = 1;
    goto LABEL_26;
  }

  v51 = v50;
  v52 = [v22 objectForKeyedSubscript:@"bulletinActionButtonDescription"];

  if (!v52)
  {
    v50 = 0;
    goto LABEL_35;
  }

  v53 = [v22 objectForKeyedSubscript:@"bulletinActionButtonDescription"];
  [v24 setValue:v53 forKey:@"bulletinActionButtonDescription"];

  v54 = [v22 objectForKeyedSubscript:@"buttonCategory"];
  [v24 setValue:v54 forKey:@"buttonCategory"];

  v42 = 1;
  v55 = HMDBulletinCategorySecureTrigger;
LABEL_23:
  v50 = *v55;
LABEL_26:
  v44 = v50;
  if (legacyWatchOSCategoryMap_onceToken != -1)
  {
    dispatch_once(&legacyWatchOSCategoryMap_onceToken, &__block_literal_global_584);
  }

  [v24 addEntriesFromDictionary:legacyWatchOSCategoryMap_legacyWatchOSCategoryMap];
LABEL_31:
  v56 = [v70 hmf_stringForKey:@"home"];
  v57 = [(HMDBulletinBoard *)self threadIdentifierForGroupingWithHomeWithUUIDString:v56];
  v58 = [(HMDBulletinBoard *)self notificationCenter];
  LOBYTE(v63) = v42;
  v59 = self;
  v60 = [v58 showNotificationWithTitle:v71 body:v67 threadIdentifier:v57 categoryIdentifier:v44 requestIdentifier:v66 date:v65 attachments:v68 userInfo:v24 shouldIgnoreDoNotDisturb:v63 interruptionLevel:a12 logEventTopic:a13];

  [(HMDBulletinBoard *)v59 addNotificationRequest:v60 forIdentifier:v66];
  v61 = *MEMORY[0x277D85DE8];

  return v60;
}

- (void)removeImageFilesForNotificationRequests:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v30;
    v10 = *MEMORY[0x277CD26B8];
    *&v7 = 138543874;
    v25 = v7;
    do
    {
      v11 = 0;
      v26 = v8;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v29 + 1) + 8 * v11) content];
        v13 = [v12 userInfo];
        v14 = [v13 objectForKeyedSubscript:v10];

        if (v14)
        {
          v15 = [MEMORY[0x277CCAA00] defaultManager];
          v28 = 0;
          [v15 removeItemAtPath:v14 error:&v28];
          v16 = v28;

          v17 = objc_autoreleasePoolPush();
          v18 = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v20 = v10;
            v21 = v9;
            v23 = v22 = self;
            *buf = v25;
            v34 = v23;
            v35 = 2112;
            v36 = v14;
            v37 = 2112;
            v38 = v16;
            _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Removed the bulletin snapshot file at %@ with result %@", buf, 0x20u);

            self = v22;
            v9 = v21;
            v10 = v20;
            v8 = v26;
          }

          objc_autoreleasePoolPop(v17);
        }

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v8);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)insertHH2AutoMigratedSuccessBulletin
{
  v3 = [(HMDBulletinBoard *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDBulletinBoard_insertHH2AutoMigratedSuccessBulletin__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

void __56__HMDBulletinBoard_insertHH2AutoMigratedSuccessBulletin__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v23 = HMDLocalizedStringForKey(@"HH2_AUTO_MIGRATED_SUCCESS_TITLE");
  v2 = HMDLocalizedStringForKey(@"HH2_AUTO_MIGRATED_SUCCESS_BODY");
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [v3 UUIDString];

  v22 = [MEMORY[0x277CD1878] tupleWithQueryType:7 uuidString:0];
  v5 = generateURLForHomeKitObject();
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v21 = v5;
  v7 = [v5 absoluteString];
  [v6 setObject:v7 forKey:*MEMORY[0x277CD13D8]];

  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [v8 UUIDString];
  [v6 setObject:v9 forKey:@"home"];

  v10 = [*(a1 + 32) threadIdentifierForGroupingWithUnknownHome];
  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v25 = v14;
    v26 = 2112;
    v27 = v23;
    v28 = 2112;
    v29 = v2;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Inserting new bulletin with title: %@, message: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [*(a1 + 32) notificationCenter];
  v16 = [MEMORY[0x277CBEAA8] date];
  v17 = [v6 copy];
  LOBYTE(v20) = 0;
  v18 = [v15 showNotificationWithTitle:v23 body:v2 threadIdentifier:v10 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v4 date:v16 attachments:0 userInfo:v17 shouldIgnoreDoNotDisturb:v20 interruptionLevel:1 logEventTopic:23];

  [*(a1 + 32) addNotificationRequest:v18 forIdentifier:v4];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)insertHH2UpgradeRecommendationBulletin:(unint64_t)a3
{
  v5 = [(HMDBulletinBoard *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HMDBulletinBoard_insertHH2UpgradeRecommendationBulletin___block_invoke;
  v6[3] = &unk_279734BB8;
  v6[4] = self;
  v6[5] = a3;
  dispatch_async(v5, v6);
}

void __59__HMDBulletinBoard_insertHH2UpgradeRecommendationBulletin___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v22 = HMDLocalizedStringForKey(@"HH2_UPGRADE_REQUIRED_TITLE");
  v2 = *(a1 + 40);
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = HMDLocalizedStringForKey(off_2797246A8[v2]);
  }

  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];

  v6 = [MEMORY[0x277CBEBC0] URLWithString:@"com.apple.Home-private://homeHubUpdate"];
  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [v6 absoluteString];
  [v7 setObject:v8 forKey:*MEMORY[0x277CD13D8]];

  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [v9 UUIDString];
  [v7 setObject:v10 forKey:@"home"];

  v11 = [*(a1 + 32) threadIdentifierForGroupingWithUnknownHome];
  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    *buf = 138543874;
    v24 = v15;
    v25 = 2112;
    v26 = v22;
    v27 = 2112;
    v28 = v3;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Inserting new bulletin with title: %@, message: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v16 = [*(a1 + 32) notificationCenter];
  v17 = [MEMORY[0x277CBEAA8] date];
  v18 = [v7 copy];
  LOBYTE(v21) = 0;
  v19 = [v16 showNotificationWithTitle:v22 body:v3 threadIdentifier:v11 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v5 date:v17 attachments:0 userInfo:v18 shouldIgnoreDoNotDisturb:v21 interruptionLevel:1 logEventTopic:23];

  [*(a1 + 32) addNotificationRequest:v19 forIdentifier:v5];
  v20 = *MEMORY[0x277D85DE8];
}

- (id)messageForWindowCharacteristic:(id)a3 personName:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 service];
  v10 = [v9 name];
  v11 = [v6 accessory];
  v12 = [v11 room];
  v13 = [v12 name];
  v14 = HMDLocalizedStringForKey(@"BULLETIN_ACTION_ROOM_SERVICE");
  v15 = [HMDServiceNameComponents componentsWithRawServiceName:v10 rawRoomName:v13 localizedFormat:v14];

  v16 = [v6 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (!v18)
  {
    goto LABEL_12;
  }

  if ([v18 integerValue] > 0)
  {
    v19 = @"BULLETIN_WINDOW_ACTION_OPENED";
    goto LABEL_7;
  }

  if ([v18 integerValue])
  {
LABEL_12:
    v30 = 0;
    goto LABEL_26;
  }

  v19 = @"BULLETIN_WINDOW_ACTION_CLOSED";
LABEL_7:
  v48 = v15;
  if (v7)
  {
    v20 = [(__CFString *)v19 stringByAppendingString:@"_WITH_PERSON"];
    v21 = MEMORY[0x277CCACA8];
    v49 = v20;
    v22 = HMDLocalizedStringForKey(v20);
    v52 = 0;
    v23 = [v15 composedName];
    v24 = [v21 localizedStringWithValidatedFormat:v22 validFormatSpecifiers:@"%@ %@" error:&v52, v23, v7];
    v25 = v52;

    if (!v24)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138544130;
        v54 = v28;
        v55 = 2112;
        v29 = v49;
        v56 = v49;
        v57 = 2112;
        v58 = @"%@ %@";
        v59 = 2112;
        v60 = v25;
LABEL_18:
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

LABEL_20:
        objc_autoreleasePoolPop(v26);
        v35 = 0;
        v49 = v29;
        v24 = v29;
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v31 = [(__CFString *)v19 stringByAppendingString:@"_WITHOUT_PERSON"];
    v32 = MEMORY[0x277CCACA8];
    v49 = v31;
    v33 = HMDLocalizedStringForKey(v31);
    v51 = 0;
    v34 = [v15 composedName];
    v24 = [v32 localizedStringWithValidatedFormat:v33 validFormatSpecifiers:@"%@" error:&v51, v34];
    v25 = v51;

    if (!v24)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138544130;
        v54 = v28;
        v55 = 2112;
        v29 = v49;
        v56 = v49;
        v57 = 2112;
        v58 = @"%@";
        v59 = 2112;
        v60 = v25;
        goto LABEL_18;
      }

LABEL_19:
      v29 = v49;
      goto LABEL_20;
    }
  }

  v35 = v24;
LABEL_21:
  v36 = v24;

  v37 = MEMORY[0x277CCACA8];
  v38 = HMDLocalizedStringForKey(@"BULLETIN_WINDOW_MESSAGE");
  v50 = 0;
  v39 = [v37 localizedStringWithValidatedFormat:v38 validFormatSpecifiers:@"%@" error:&v50, v36];
  v40 = v50;

  v41 = v39;
  if (!v39)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v44 = v47 = v42;
      *buf = 138544130;
      v54 = v44;
      v55 = 2112;
      v56 = @"BULLETIN_WINDOW_MESSAGE";
      v57 = 2112;
      v58 = @"%@";
      v59 = 2112;
      v60 = v40;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

      v42 = v47;
    }

    objc_autoreleasePoolPop(v42);
    v41 = @"BULLETIN_WINDOW_MESSAGE";
  }

  v30 = v41;

  v15 = v48;
LABEL_26:

  v45 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)messageForSecuritySystemCharacteristic:(id)a3 personName:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 service];
  v10 = [v9 name];
  v11 = [v6 accessory];
  v12 = [v11 room];
  v13 = [v12 name];
  v14 = HMDLocalizedStringForKey(@"BULLETIN_ACTION_ROOM_SERVICE");
  v15 = [HMDServiceNameComponents componentsWithRawServiceName:v10 rawRoomName:v13 localizedFormat:v14];

  v16 = [v6 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (!v18)
  {
    goto LABEL_19;
  }

  if (![v18 integerValue])
  {
    v19 = @"BULLETIN_SECURITY_SYSTEM_ACTION_ARMED_STAY";
    goto LABEL_15;
  }

  if ([v18 integerValue] == 1)
  {
    v19 = @"BULLETIN_SECURITY_SYSTEM_ACTION_ARMED_AWAY";
    goto LABEL_15;
  }

  if ([v18 integerValue] == 2)
  {
    v19 = @"BULLETIN_SECURITY_SYSTEM_ACTION_ARMED_NIGHT";
    goto LABEL_15;
  }

  if ([v18 integerValue] == 3)
  {
    v19 = @"BULLETIN_SECURITY_SYSTEM_ACTION_DISARMED";
    goto LABEL_15;
  }

  if ([v18 integerValue] != 4)
  {
LABEL_19:
    v29 = 0;
    goto LABEL_32;
  }

  v19 = @"BULLETIN_SECURITY_SYSTEM_ACTION_TRIGGERED";
LABEL_15:
  if (v7)
  {
    v20 = [(__CFString *)v19 stringByAppendingString:@"_WITH_PERSON"];
    v21 = MEMORY[0x277CCACA8];
    v46 = v20;
    v22 = HMDLocalizedStringForKey(v20);
    v49 = 0;
    v23 = [v15 composedName];
    v24 = [v21 localizedStringWithValidatedFormat:v22 validFormatSpecifiers:@"%@ %@" error:&v49, v23, v7];
    v25 = v49;

    if (!v24)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138544130;
        v51 = v28;
        v52 = 2112;
        v24 = v46;
        v53 = v46;
        v54 = 2112;
        v55 = @"%@ %@";
        v56 = 2112;
        v57 = v25;
LABEL_24:
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

LABEL_26:
        objc_autoreleasePoolPop(v26);
        v34 = 0;
        v46 = v24;
        goto LABEL_27;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v30 = [(__CFString *)v19 stringByAppendingString:@"_WITHOUT_PERSON"];
    v31 = MEMORY[0x277CCACA8];
    v46 = v30;
    v32 = HMDLocalizedStringForKey(v30);
    v48 = 0;
    v33 = [v15 composedName];
    v24 = [v31 localizedStringWithValidatedFormat:v32 validFormatSpecifiers:@"%@" error:&v48, v33];
    v25 = v48;

    if (!v24)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138544130;
        v51 = v28;
        v52 = 2112;
        v24 = v46;
        v53 = v46;
        v54 = 2112;
        v55 = @"%@";
        v56 = 2112;
        v57 = v25;
        goto LABEL_24;
      }

LABEL_25:
      v24 = v46;
      goto LABEL_26;
    }
  }

  v34 = v24;
LABEL_27:
  v35 = v24;

  v36 = MEMORY[0x277CCACA8];
  v37 = HMDLocalizedStringForKey(@"BULLETIN_SECURITY_SYSTEM_MESSAGE");
  v47 = 0;
  v38 = [v36 localizedStringWithValidatedFormat:v37 validFormatSpecifiers:@"%@" error:&v47, v35];
  v39 = v47;

  v40 = v38;
  if (!v38)
  {
    v41 = objc_autoreleasePoolPush();
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138544130;
      v51 = v43;
      v52 = 2112;
      v53 = @"BULLETIN_SECURITY_SYSTEM_MESSAGE";
      v54 = 2112;
      v55 = @"%@";
      v56 = 2112;
      v57 = v39;
      _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v41);
    v40 = @"BULLETIN_SECURITY_SYSTEM_MESSAGE";
  }

  v29 = v40;

LABEL_32:
  v44 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)messageForGarageDoorCharacteristic:(id)a3 personName:(id)a4
{
  v61 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 service];
  v10 = [v9 name];
  v11 = [v6 accessory];
  v12 = [v11 room];
  v13 = [v12 name];
  v14 = HMDLocalizedStringForKey(@"BULLETIN_ACTION_ROOM_SERVICE");
  v15 = [HMDServiceNameComponents componentsWithRawServiceName:v10 rawRoomName:v13 localizedFormat:v14];

  v16 = [v6 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (!v18)
  {
    goto LABEL_8;
  }

  if ([v18 integerValue])
  {
    if ([v18 integerValue] == 1)
    {
      v19 = @"BULLETIN_DOOR_ACTION_CLOSED";
      goto LABEL_10;
    }

LABEL_8:
    v20 = 0;
    goto LABEL_26;
  }

  v19 = @"BULLETIN_DOOR_ACTION_OPENED";
LABEL_10:
  v48 = v15;
  if (v7)
  {
    v21 = [(__CFString *)v19 stringByAppendingString:@"_WITH_PERSON"];
    v22 = MEMORY[0x277CCACA8];
    v49 = v21;
    v23 = HMDLocalizedStringForKey(v21);
    v52 = 0;
    v24 = [v15 composedName];
    v25 = [v22 localizedStringWithValidatedFormat:v23 validFormatSpecifiers:@"%@ %@" error:&v52, v24, v7];
    v26 = v52;

    if (!v25)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138544130;
        v54 = v29;
        v55 = 2112;
        v30 = v49;
        v56 = v49;
        v57 = 2112;
        v58 = @"%@ %@";
        v59 = 2112;
        v60 = v26;
LABEL_18:
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

LABEL_20:
        objc_autoreleasePoolPop(v27);
        v35 = 0;
        v49 = v30;
        v25 = v30;
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v31 = [(__CFString *)v19 stringByAppendingString:@"_WITHOUT_PERSON"];
    v32 = MEMORY[0x277CCACA8];
    v49 = v31;
    v33 = HMDLocalizedStringForKey(v31);
    v51 = 0;
    v34 = [v15 composedName];
    v25 = [v32 localizedStringWithValidatedFormat:v33 validFormatSpecifiers:@"%@" error:&v51, v34];
    v26 = v51;

    if (!v25)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138544130;
        v54 = v29;
        v55 = 2112;
        v30 = v49;
        v56 = v49;
        v57 = 2112;
        v58 = @"%@";
        v59 = 2112;
        v60 = v26;
        goto LABEL_18;
      }

LABEL_19:
      v30 = v49;
      goto LABEL_20;
    }
  }

  v35 = v25;
LABEL_21:
  v36 = v25;

  v37 = MEMORY[0x277CCACA8];
  v38 = HMDLocalizedStringForKey(@"BULLETIN_DOOR_MESSAGE");
  v50 = 0;
  v39 = [v37 localizedStringWithValidatedFormat:v38 validFormatSpecifiers:@"%@" error:&v50, v36];
  v40 = v50;

  v41 = v39;
  if (!v39)
  {
    v42 = objc_autoreleasePoolPush();
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v44 = v47 = v42;
      *buf = 138544130;
      v54 = v44;
      v55 = 2112;
      v56 = @"BULLETIN_DOOR_MESSAGE";
      v57 = 2112;
      v58 = @"%@";
      v59 = 2112;
      v60 = v40;
      _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

      v42 = v47;
    }

    objc_autoreleasePoolPop(v42);
    v41 = @"BULLETIN_DOOR_MESSAGE";
  }

  v20 = v41;

  v15 = v48;
LABEL_26:

  v45 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)resolveDisplayNameForChangedCharacteristic:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 accessory];
  v9 = [v8 home];
  v10 = [v9 lockNotificationManager];
  if ([v10 shouldResolveNotificationContextForCharacteristic:v6])
  {
    v11 = [v6 notificationContext];
    v12 = [v8 uuid];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__HMDBulletinBoard_resolveDisplayNameForChangedCharacteristic_completion___block_invoke;
    v13[3] = &unk_279724600;
    v13[4] = self;
    v16 = v7;
    v14 = v8;
    v15 = v10;
    [v15 resolveEncodedCharacteristicNotificationContext:v11 accessoryUUID:v12 completion:v13];
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

void __74__HMDBulletinBoard_resolveDisplayNameForChangedCharacteristic_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v11;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Resolved notification context to result: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [v5 userUUID];

    if (v12)
    {
      v13 = [*(a1 + 40) home];
      v14 = [v13 users];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __74__HMDBulletinBoard_resolveDisplayNameForChangedCharacteristic_completion___block_invoke_239;
      v19[3] = &unk_27972E540;
      v20 = v5;
      v15 = [v14 na_firstObjectPassingTest:v19];

      [v15 isCurrentUser];
    }

    v17 = [*(a1 + 48) displayNameForNotificationContextResolutionResult:v5];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (v10)
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to resolve notification context with error: %@, creating bulletin without display name", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 56) + 16))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __74__HMDBulletinBoard_resolveDisplayNameForChangedCharacteristic_completion___block_invoke_239(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) userUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)insertBulletinForChangedSecureClassCharacteristic:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v43 = [v4 accessory];
  v6 = [v43 home];
  if (v6)
  {
    v7 = [v4 bulletinContext];
    v8 = [v7 mutableCopy];

    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCF328]];
    v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCF340]];
    v11 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCF320]];
    v12 = v11;
    if (v9)
    {
      v13 = v10 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v11 == 0)
    {
      v33 = v11;
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138544130;
        v54 = v18;
        v55 = 2112;
        v56 = v9;
        v57 = 2112;
        v58 = v10;
        v59 = 2112;
        v60 = v33;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot generate action URL with homeUUID: %@ serviceUUID: %@ characteristicUUID: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v15);
    }

    else
    {
      v41 = [MEMORY[0x277CD1878] tupleWithQueryType:0 uuidString:v9];
      v39 = [MEMORY[0x277CD1878] tupleWithQueryType:2 uuidString:v10];
      v40 = [MEMORY[0x277CD1878] tupleWithQueryType:3 uuidString:v12];
      v23 = MEMORY[0x277CBEB98];
      v52[0] = v41;
      v52[1] = v40;
      [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
      v24 = v38 = v12;
      v25 = [v23 setWithArray:v24];
      v36 = generateURLForHomeKitObject();

      v35 = [v6 name];
      v26 = [MEMORY[0x277CBEAA8] date];
      [MEMORY[0x277CCAD78] UUID];
      v27 = v42 = v9;
      v28 = [v27 UUIDString];

      v29 = [HMDBulletinBoard interruptionLevelForChangedCharacteristic:v4];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __70__HMDBulletinBoard_insertBulletinForChangedSecureClassCharacteristic___block_invoke;
      v44[3] = &unk_2797245D8;
      v44[4] = self;
      v45 = v4;
      v46 = v8;
      v47 = v35;
      v48 = v28;
      v49 = v26;
      v50 = v36;
      v51 = v29;
      v37 = v36;
      v30 = v26;
      v31 = v28;
      v32 = v35;
      v33 = v38;
      [(HMDBulletinBoard *)self resolveDisplayNameForChangedCharacteristic:v45 completion:v44];

      v9 = v42;
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v54 = v22;
      v55 = 2112;
      v56 = v4;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Not creating a bulletin for characteristic because home is nil: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __70__HMDBulletinBoard_insertBulletinForChangedSecureClassCharacteristic___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDBulletinBoard_insertBulletinForChangedSecureClassCharacteristic___block_invoke_2;
  block[3] = &unk_2797245B0;
  v16 = v5;
  v23 = a3;
  v14 = *(a1 + 32);
  v7 = *(&v14 + 1);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v17 = v14;
  v18 = v10;
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  v11 = *(a1 + 80);
  v12 = *(a1 + 88);
  v21 = v11;
  v22 = v12;
  v13 = v5;
  dispatch_async(v6, block);
}

void __70__HMDBulletinBoard_insertBulletinForChangedSecureClassCharacteristic___block_invoke_2(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (*(a1 + 104) != 1)
  {
    v7 = [*(a1 + 48) type];
    v8 = [v7 isEqualToString:*MEMORY[0x277CCF838]];

    if (v8)
    {
      v9 = [*(a1 + 40) messageForLockCharacteristic:*(a1 + 48) personName:v2];
      v10 = v9;
      if (v2)
      {
        v11 = [*(a1 + 40) messageForLockCharacteristic:*(a1 + 48) personName:@"<redacted>"];
        v12 = 12;
        if (!v10)
        {
          goto LABEL_27;
        }

LABEL_23:
        v21 = objc_autoreleasePoolPush();
        v22 = *(a1 + 40);
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          v25 = *(a1 + 56);
          *buf = 138543874;
          v34 = v24;
          v35 = 2112;
          v36 = v11;
          v37 = 2112;
          v38 = v25;
          _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Inserting new bulletin with message: %@, userInfo: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v21);
        v26 = [*(a1 + 40) _insertRequestWithTitle:*(a1 + 64) snapshotData:0 message:v10 requestIdentifier:*(a1 + 72) date:*(a1 + 80) bulletinType:0 actionURL:*(a1 + 88) bulletinContext:*(a1 + 56) actionContext:0 interruptionLevel:*(a1 + 96) logEventTopic:v12];
        goto LABEL_30;
      }

      v18 = v9;
      v11 = v18;
      v12 = 12;
      goto LABEL_22;
    }

    v13 = [*(a1 + 48) type];
    v14 = [v13 isEqualToString:*MEMORY[0x277CCF800]];

    if (v14)
    {
      v10 = [*(a1 + 40) messageForGarageDoorCharacteristic:*(a1 + 48) personName:v2];
      if (v2)
      {
        v15 = [*(a1 + 40) messageForGarageDoorCharacteristic:*(a1 + 48) personName:@"<redacted>"];
        goto LABEL_19;
      }

LABEL_21:
      v18 = v10;
      v11 = v18;
      v12 = 8;
LABEL_22:
      v10 = v18;
      if (v18)
      {
        goto LABEL_23;
      }

LABEL_27:
      v27 = objc_autoreleasePoolPush();
      v28 = *(a1 + 40);
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = HMFGetLogIdentifier();
        v31 = *(a1 + 48);
        *buf = 138543618;
        v34 = v30;
        v35 = 2112;
        v36 = v31;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_DEBUG, "%{public}@Characteristic value does not require bulletin: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v10 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v16 = [*(a1 + 48) type];
    v17 = [v16 isEqualToString:*MEMORY[0x277CCF858]];

    if (v17)
    {
      v10 = [*(a1 + 40) messageForSecuritySystemCharacteristic:*(a1 + 48) personName:v2];
      if (!v2)
      {
        goto LABEL_21;
      }

      v15 = [*(a1 + 40) messageForSecuritySystemCharacteristic:*(a1 + 48) personName:@"<redacted>"];
    }

    else
    {
      v19 = [*(a1 + 48) type];
      v20 = [v19 isEqualToString:*MEMORY[0x277CCF848]];

      if (!v20)
      {
        v11 = 0;
        goto LABEL_27;
      }

      v10 = [*(a1 + 40) messageForWindowCharacteristic:*(a1 + 48) personName:v2];
      if (!v2)
      {
        goto LABEL_21;
      }

      v15 = [*(a1 + 40) messageForWindowCharacteristic:*(a1 + 48) personName:@"<redacted>"];
    }

LABEL_19:
    v11 = v15;
    v12 = 8;
    if (!v10)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resolved notification context to current user, skipping bulletin", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
LABEL_31:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_insertImageBulletinsForChangedCharacteristics:(id)a3 snapshotData:(id)a4 completion:(id)a5
{
  v186 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v161 = a4;
  v130 = a5;
  v9 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v9);

  v135 = [MEMORY[0x277CBEB18] array];
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v170 objects:v185 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v171;
    v164 = *MEMORY[0x277CFE660];
    v163 = *MEMORY[0x277CFE880];
    v149 = *MEMORY[0x277CD26B8];
    v147 = *MEMORY[0x277CCF360];
    v148 = *MEMORY[0x277CCF308];
    v146 = *MEMORY[0x277CCF328];
    v133 = *MEMORY[0x277CCF340];
    v132 = *MEMORY[0x277CCF320];
    v131 = *MEMORY[0x277CFE840];
    v134 = *MEMORY[0x277CCF358];
    v136 = self;
    v153 = v10;
    v165 = *v171;
    do
    {
      v14 = 0;
      v158 = v12;
      do
      {
        if (*v171 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v170 + 1) + 8 * v14);
        v16 = [v15 value];
        if (v16)
        {

LABEL_9:
          v19 = [v15 service];
          v20 = v19;
          if (!v19 || ([v19 name], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
          {
            v24 = objc_autoreleasePoolPush();
            v25 = self;
            v26 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = HMFGetLogIdentifier();
              *buf = 138543618;
              v178 = v27;
              v179 = 2112;
              v180 = v15;
              _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Bulletin board changed characteristic's service or service name is nil: %@", buf, 0x16u);

              v13 = v165;
            }

            objc_autoreleasePoolPop(v24);
            goto LABEL_16;
          }

          v22 = [v20 type];
          v23 = [v22 isEqual:v163];

          if (v23)
          {
            [(HMDBulletinBoard *)self insertBulletinForChangedSecureClassCharacteristic:v15];
LABEL_16:

            goto LABEL_17;
          }

          v32 = [v20 bulletinBoardNotification];
          v33 = [v32 isEnabled];

          v34 = objc_autoreleasePoolPush();
          v35 = self;
          v36 = HMFGetOSLogHandle();
          v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
          if (!v33)
          {
            if (v37)
            {
              v55 = HMFGetLogIdentifier();
              v56 = [v15 service];
              v57 = [v56 bulletinBoardNotification];
              *buf = 138543874;
              v178 = v55;
              v179 = 2112;
              v180 = v15;
              v181 = 2112;
              v182 = v57;
              _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Not posting bulletin for %@ as it is not enabled: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v34);
            v58 = [v161 objectForKeyedSubscript:v149];

            if (v58)
            {
              v59 = [MEMORY[0x277CCAA00] defaultManager];
              v60 = [v161 objectForKeyedSubscript:v149];
              v166 = 0;
              [v59 removeItemAtPath:v60 error:&v166];
              v61 = v166;

              v62 = objc_autoreleasePoolPush();
              v63 = v35;
              v64 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
              {
                v65 = HMFGetLogIdentifier();
                *buf = 138543874;
                v178 = v65;
                v179 = 2112;
                v180 = v161;
                v181 = 2112;
                v182 = v61;
                _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_INFO, "%{public}@Removed the bulletin snapshot file at %@ as it not being posted with result %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v62);
            }

            v10 = v153;
            v12 = v158;
            v13 = v165;
            goto LABEL_16;
          }

          if (v37)
          {
            v38 = HMFGetLogIdentifier();
            *buf = 138543618;
            v178 = v38;
            v179 = 2112;
            v180 = v15;
            _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Posting bulletin for changed characteristic: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v34);
          v156 = [MEMORY[0x277CBEAA8] date];
          v39 = [v20 bulletinBoardNotification];
          v40 = [v39 notificationServiceGroup];

          v152 = v40;
          v41 = [v40 cameraProfiles];
          v42 = [v41 firstObject];

          v43 = [v15 bulletinContext];
          v44 = [v43 mutableCopy];

          v159 = [HMDBulletinCategory bulletinReasonForChangedCharacteristic:v15];
          [v44 setObject:? forKeyedSubscript:?];
          v45 = [v42 contextSPIUniqueIdentifier];
          v46 = [v45 UUIDString];
          [v44 setObject:v46 forKeyedSubscript:v148];

          v150 = v35;
          v157 = [(HMDBulletinBoard *)v35 titleNameForChangedCharacteristic:v15];
          v47 = [v20 bulletinBoardNotification];
          v48 = [v47 notificationServiceGroup];
          v155 = v42;
          v49 = [v42 uniqueIdentifier];
          v50 = [v48 actionContextForCameraProfileID:v49];

          v51 = v50;
          v52 = [v50 objectForKey:@"categoryID"];

          v160 = v44;
          v154 = v50;
          if (v52)
          {
            if (v161)
            {
              v53 = [MEMORY[0x277D0F8E8] productInfo];
              v54 = [v53 productPlatform] != 1;
            }

            else
            {
              v54 = 0;
            }

            v75 = v157;
            v74 = v150;
            v76 = [v160 hmf_stringForKey:v146];
            if (v76)
            {
              v66 = v76;
              v77 = [v51 hmf_stringForKey:v148];
              if (v77)
              {
                v67 = v77;
                context = [HMDCameraClipSignificantEventBulletin actionURLForHomeUUID:v66 cameraUUID:v77];
LABEL_43:

                v78 = [MEMORY[0x277CCAD78] UUID];
                v151 = [v78 UUIDString];

                v79 = [MEMORY[0x277CBEB98] set];
                v80 = [v15 type];
                v143 = v54;
                if (![v80 isEqualToString:v164])
                {
                  v99 = v161;
                  goto LABEL_72;
                }

                v81 = [v20 type];
                v82 = [v81 isEqualToString:v131];

                if (v82)
                {
                  v83 = [(HMDBulletinBoard *)v74 doorbellBulletinUtilities];
                  v84 = v156;
                  v85 = [v83 significantEventsRelevantToDoorbellPressAtDate:v156 forCameraProfile:v155];

                  if ([v85 hmf_isEmpty])
                  {
                    v86 = objc_autoreleasePoolPush();
                    v87 = v74;
                    v88 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
                    {
                      v89 = HMFGetLogIdentifier();
                      *buf = 138543362;
                      v178 = v89;
                      _os_log_impl(&dword_2531F8000, v88, OS_LOG_TYPE_INFO, "%{public}@Did not find significant events for doorbell press so fetching from the cloud", buf, 0xCu);
                    }

                    objc_autoreleasePoolPop(v86);
                    v90 = [(HMDBulletinBoard *)v87 doorbellBulletinUtilities];
                    v167[0] = MEMORY[0x277D85DD0];
                    v167[1] = 3221225472;
                    v167[2] = __91__HMDBulletinBoard__insertImageBulletinsForChangedCharacteristics_snapshotData_completion___block_invoke;
                    v167[3] = &unk_27972F318;
                    v167[4] = v87;
                    v168 = v151;
                    v169 = v155;
                    v84 = v156;
                    [v90 fetchSignificantEventsRelevantToDoorbellPressAtDate:v156 forCameraProfile:v169 completion:v167];
                  }

                  [(HMDBulletinBoard *)v74 _submitDoorbellEventDetailsFromBulletinWithDate:v84 significantEvents:v85];
                  v80 = [(HMDBulletinBoard *)v74 removeRedundantSignificantEventNotificationsForSignificantEvents:v85];
                  v91 = [v80 mutableCopy];
                  v92 = [v80 sortedArrayUsingComparator:&__block_literal_global_230];
                  v93 = [v92 na_firstObjectPassingTest:&__block_literal_global_234];

                  if (v93)
                  {
                    v138 = v85;
                    v140 = v91;
                    v94 = [v93 content];
                    v95 = [v94 userInfo];
                    [(HMDBulletinBoard *)v74 _updateDoorbellUserInfo:v160 withSignificantEventUserInfo:v95];

                    v96 = [v93 content];
                    v97 = [v96 userInfo];
                    v98 = [v97 objectForKeyedSubscript:v149];

                    v99 = v161;
                    if (v161)
                    {
                      v91 = v140;
                    }

                    else
                    {
                      v91 = v140;
                      if (v98)
                      {
                        v100 = objc_autoreleasePoolPush();
                        v162 = v74;
                        v101 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
                        {
                          HMFGetLogIdentifier();
                          v102 = v129 = v100;
                          *buf = 138543362;
                          v178 = v102;
                          _os_log_impl(&dword_2531F8000, v101, OS_LOG_TYPE_INFO, "%{public}@No snapshotData was provided, so using whatever we had in the mostRecentCoalescedPersonNotification", buf, 0xCu);

                          v100 = v129;
                        }

                        objc_autoreleasePoolPop(v100);
                        v174 = v149;
                        v175 = v98;
                        v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v175 forKeys:&v174 count:1];
                        v91 = v140;
                        [v140 removeObject:v93];
                      }
                    }

                    v85 = v138;
                  }

                  else
                  {
                    v99 = v161;
                  }

                  [(HMDBulletinBoard *)v74 removeImageFilesForNotificationRequests:v91];

                  v79 = v85;
LABEL_72:
                }

                else
                {
                  v99 = v161;
                }

                if ([v159 isEqualToString:v134])
                {
                  v117 = 9;
                }

                else
                {
                  v117 = 8;
                }

                v141 = v79;
                v118 = [(HMDBulletinBoard *)v74 messageForChangedCharacteristic:v15 withSignificantEvents:v79];
                v119 = [HMDBulletinBoard interruptionLevelForChangedCharacteristic:v15];
                v120 = objc_autoreleasePoolPush();
                v121 = v74;
                v122 = HMFGetOSLogHandle();
                v161 = v99;
                if (os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
                {
                  v123 = HMFGetLogIdentifier();
                  *buf = 138544130;
                  v178 = v123;
                  v179 = 2112;
                  v180 = v118;
                  v181 = 2112;
                  v182 = v160;
                  v183 = 2112;
                  v184 = v161;
                  _os_log_impl(&dword_2531F8000, v122, OS_LOG_TYPE_INFO, "%{public}@Inserting new bulletin with message: %@, userInfo: %@, snapshotData: %@", buf, 0x2Au);

                  v99 = v161;
                }

                objc_autoreleasePoolPop(v120);
                v128 = v119;
                v116 = v154;
                v111 = v156;
                v124 = [(HMDBulletinBoard *)v121 _insertRequestWithTitle:v157 snapshotData:v99 message:v118 requestIdentifier:v151 date:v156 bulletinType:v143 actionURL:context bulletinContext:v160 actionContext:v154 interruptionLevel:v128 logEventTopic:v117];
                v125 = [v124 identifier];
                [v135 addObject:v125];

                v70 = v160;
                v75 = v157;

                self = v136;
                v12 = v158;
                v13 = v165;
LABEL_79:

                v10 = v153;
                goto LABEL_16;
              }

              v112 = objc_autoreleasePoolPush();
              v113 = v150;
              v114 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
              {
                v115 = HMFGetLogIdentifier();
                *buf = 138543618;
                v178 = v115;
                v179 = 2112;
                v180 = v154;
                _os_log_impl(&dword_2531F8000, v114, OS_LOG_TYPE_ERROR, "%{public}@Camera UUID is absent in action context: %@", buf, 0x16u);

                self = v136;
              }

              objc_autoreleasePoolPop(v112);
            }

            else
            {
              v103 = objc_autoreleasePoolPush();
              v104 = v150;
              v105 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
              {
                v106 = HMFGetLogIdentifier();
                *buf = 138543618;
                v178 = v106;
                v179 = 2112;
                v180 = v160;
                _os_log_impl(&dword_2531F8000, v105, OS_LOG_TYPE_ERROR, "%{public}@Home UUID is absent in bulletin context: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v103);
            }

            v12 = v158;
            v111 = v156;
            v70 = v160;
          }

          else
          {
            v66 = [v44 objectForKeyedSubscript:v146];
            v67 = [v44 objectForKeyedSubscript:v133];
            v68 = [v44 objectForKeyedSubscript:v132];
            v69 = v68;
            v70 = v44;
            if (v66 && v67 && v68)
            {
              v142 = [MEMORY[0x277CD1878] tupleWithQueryType:0 uuidString:v66];
              v137 = [MEMORY[0x277CD1878] tupleWithQueryType:2 uuidString:v67];
              v139 = [MEMORY[0x277CD1878] tupleWithQueryType:3 uuidString:v69];
              v71 = MEMORY[0x277CBEB98];
              v176[0] = v142;
              v176[1] = v139;
              v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v176 count:2];
              v73 = [v71 setWithArray:v72];
              context = generateURLForHomeKitObject();

              v54 = 0;
              v74 = v150;
              goto LABEL_43;
            }

            v107 = v68;
            contexta = objc_autoreleasePoolPush();
            v108 = v150;
            v109 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
            {
              v110 = HMFGetLogIdentifier();
              *buf = 138544130;
              v178 = v110;
              v179 = 2112;
              v180 = v66;
              v181 = 2112;
              v182 = v67;
              v183 = 2112;
              v184 = v107;
              _os_log_impl(&dword_2531F8000, v109, OS_LOG_TYPE_ERROR, "%{public}@Cannot generate action URL with homeUUID: %@ serviceUUID: %@ characteristicUUID: %@", buf, 0x2Au);

              v70 = v160;
            }

            objc_autoreleasePoolPop(contexta);
            v75 = v157;
            v12 = v158;
            v111 = v156;
          }

          v116 = v154;
          goto LABEL_79;
        }

        v17 = [v15 type];
        v18 = [v17 isEqualToString:v164];

        if (v18)
        {
          goto LABEL_9;
        }

        v28 = objc_autoreleasePoolPush();
        v29 = self;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543618;
          v178 = v31;
          v179 = 2112;
          v180 = v15;
          _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@Bulletin board changed characteristic value is nil: %@", buf, 0x16u);

          v13 = v165;
        }

        objc_autoreleasePoolPop(v28);
LABEL_17:
        ++v14;
      }

      while (v12 != v14);
      v126 = [v10 countByEnumeratingWithState:&v170 objects:v185 count:16];
      v12 = v126;
    }

    while (v126);
  }

  if (v130)
  {
    v130[2](v130, v135);
  }

  v127 = *MEMORY[0x277D85DE8];
}

void __91__HMDBulletinBoard__insertImageBulletinsForChangedCharacteristics_snapshotData_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__HMDBulletinBoard__insertImageBulletinsForChangedCharacteristics_snapshotData_completion___block_invoke_2;
  v7[3] = &unk_279734870;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v10 = *(a1 + 48);
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __91__HMDBulletinBoard__insertImageBulletinsForChangedCharacteristics_snapshotData_completion___block_invoke_2_231(uint64_t a1, void *a2)
{
  v2 = [a2 content];
  v3 = [v2 userInfo];
  v4 = [v3 hmf_numberForKey:@"HMDBulletinContextDidDetectedPerson"];
  v5 = [v4 BOOLValue];

  return v5;
}

uint64_t __91__HMDBulletinBoard__insertImageBulletinsForChangedCharacteristics_snapshotData_completion___block_invoke_227(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 content];
  v6 = [v5 date];
  v7 = [v4 content];

  v8 = [v7 date];
  v9 = [v6 compare:v8];

  return v9;
}

uint64_t __91__HMDBulletinBoard__insertImageBulletinsForChangedCharacteristics_snapshotData_completion___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Updating message for doorbell press notification after fetching significant events from the cloud", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _updateMessageForDoorbellPressNotificationRequestWithIdentifier:*(a1 + 40) usingSignificantEvents:*(a1 + 48) cameraProfile:*(a1 + 56)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)removeRedundantSignificantEventNotificationsForSignificantEvents:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDBulletinBoard *)self doorbellBulletinUtilities];
  v7 = [v6 clipUUIDsForCoalesceableSignificantEvents:v4];

  v8 = [(HMDBulletinBoard *)self notificationRequestsByIdentifierForCameraClipUUIDs:v7];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Removing significant event notifications (due to doorbell notification): %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [v8 allObjects];
  v14 = [v13 na_map:&__block_literal_global_224];

  [(HMDBulletinBoard *)v10 removeNotificationRequestsWithIdentifiers:v14 shouldDeleteAttachments:0];
  v15 = [v8 allObjects];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)titleNameForChangedCharacteristic:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 accessory];
  v5 = [v3 type];
  if (([v5 isEqualToString:*MEMORY[0x277CFE5B0]] & 1) == 0)
  {

    goto LABEL_9;
  }

  v6 = [v3 service];
  v7 = [v6 type];
  v8 = [v7 isEqualToString:@"00000260-0000-1000-8000-0026BB765291"];

  if (!v8)
  {
LABEL_9:
    v19 = [v4 home];
    v18 = [v19 name];

    goto LABEL_10;
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = HMDLocalizedStringForKey(@"BULLETIN_KEYPAD_DISABLED_TITLE");
  v22 = 0;
  v11 = [v4 name];
  v12 = [v9 localizedStringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v22, v11];
  v13 = v22;

  v14 = v12;
  if (!v12)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138544130;
      v24 = v17;
      v25 = 2112;
      v26 = @"BULLETIN_KEYPAD_DISABLED_TITLE";
      v27 = 2112;
      v28 = @"%@";
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    v14 = @"BULLETIN_KEYPAD_DISABLED_TITLE";
  }

  v18 = v14;

LABEL_10:
  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)messageForLockCharacteristic:(id)a3 personName:(id)a4
{
  v55 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 service];
  v10 = [v9 name];
  v11 = [v6 accessory];
  v12 = [v11 room];
  v13 = [v12 name];
  v14 = HMDLocalizedStringForKey(@"BULLETIN_ACTION_ROOM_SERVICE");
  v15 = [HMDServiceNameComponents componentsWithRawServiceName:v10 rawRoomName:v13 localizedFormat:v14];

  v16 = [v6 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  if (!v18)
  {
    goto LABEL_19;
  }

  if (![v18 integerValue])
  {
    v19 = @"BULLETIN_LOCK_ACTION_UNLOCKED";
    goto LABEL_11;
  }

  if ([v18 integerValue] == 1)
  {
    v19 = @"BULLETIN_LOCK_ACTION_LOCKED";
    goto LABEL_11;
  }

  if ([v18 integerValue] != 2)
  {
LABEL_19:
    v37 = 0;
    goto LABEL_27;
  }

  v19 = @"BULLETIN_LOCK_ACTION_JAMMED";
LABEL_11:
  v20 = MEMORY[0x277CCACA8];
  v21 = HMDLocalizedStringForKey(v19);
  v46 = 0;
  v43 = v15;
  v22 = [v15 composedName];
  v23 = [v20 localizedStringWithValidatedFormat:v21 validFormatSpecifiers:@"%@" error:&v46, v22];
  v24 = v46;

  v25 = v23;
  if (!v23)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v28 = v42 = v26;
      *buf = 138544130;
      v48 = v28;
      v49 = 2112;
      v50 = v19;
      v51 = 2112;
      v52 = @"%@";
      v53 = 2112;
      v54 = v24;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

      v26 = v42;
    }

    objc_autoreleasePoolPop(v26);
    v25 = v19;
  }

  v29 = v25;

  v30 = MEMORY[0x277CCACA8];
  if (v7)
  {
    v31 = HMDLocalizedStringForKey(@"BULLETIN_LOCK_MESSAGE_WITH_PERSON");
    v45 = 0;
    v32 = [v30 localizedStringWithValidatedFormat:v31 validFormatSpecifiers:@"%@ %@" error:&v45, v29, v7];
    v33 = v45;

    if (!v32)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = HMFGetOSLogHandle();
      v32 = @"BULLETIN_LOCK_MESSAGE_WITH_PERSON";
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138544130;
        v48 = v36;
        v49 = 2112;
        v50 = @"BULLETIN_LOCK_MESSAGE_WITH_PERSON";
        v51 = 2112;
        v52 = @"%@ %@";
        v53 = 2112;
        v54 = v33;
LABEL_24:
        _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

        goto LABEL_25;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v38 = HMDLocalizedStringForKey(@"BULLETIN_LOCK_MESSAGE_WITHOUT_PERSON");
    v44 = 0;
    v32 = [v30 localizedStringWithValidatedFormat:v38 validFormatSpecifiers:@"%@" error:&v44, v29];
    v33 = v44;

    if (!v32)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = HMFGetOSLogHandle();
      v32 = @"BULLETIN_LOCK_MESSAGE_WITHOUT_PERSON";
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138544130;
        v48 = v36;
        v49 = 2112;
        v50 = @"BULLETIN_LOCK_MESSAGE_WITHOUT_PERSON";
        v51 = 2112;
        v52 = @"%@";
        v53 = 2112;
        v54 = v33;
        goto LABEL_24;
      }

LABEL_25:
      v15 = v43;

      objc_autoreleasePoolPop(v34);
      v39 = 0;
      goto LABEL_26;
    }
  }

  v39 = v32;
  v15 = v43;
LABEL_26:
  v37 = v32;

LABEL_27:
  v40 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)messageForChangedCharacteristic:(id)a3 withSignificantEvents:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 service];
  v10 = [v9 bulletinBoardNotification];
  v11 = [v10 notificationServiceGroup];

  v12 = [v11 cameraProfiles];
  v13 = [v12 firstObject];

  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = [v6 type];
  v15 = [v14 isEqualToString:*MEMORY[0x277CFE678]];

  if (v15)
  {
    v16 = [v11 cameraProfiles];
    v17 = [v16 firstObject];

    v18 = objc_alloc(MEMORY[0x277CD1930]);
    v19 = [MEMORY[0x277CCAD78] UUID];
    [MEMORY[0x277CBEAA8] date];
    v20 = v31 = v7;
    v21 = [v17 uniqueIdentifier];
    v22 = [v18 initWithUniqueIdentifier:v19 reason:1 dateOfOccurrence:v20 confidenceLevel:100 cameraProfileUUID:v21 faceClassification:0];

    v23 = [MEMORY[0x277CBEB98] setWithObject:v22];
    v24 = [v17 hapAccessory];
    v25 = [HMDCameraClipSignificantEventBulletin localizedMessageForSignificantEvents:v23 cameraAccessory:v24];

    v7 = v31;
    goto LABEL_10;
  }

  v26 = [v6 type];
  if (([v26 isEqualToString:*MEMORY[0x277CFE660]] & 1) == 0)
  {

    goto LABEL_8;
  }

  v27 = [v9 type];
  v28 = [v27 isEqualToString:*MEMORY[0x277CFE840]];

  if (!v28)
  {
LABEL_8:
    v17 = [(HMDBulletinBoard *)self doorbellBulletinUtilities];
    v29 = [HMDBulletinCategory localizedStateForCharacteristic:v6 doorbellBulletinUtilities:v17];
    goto LABEL_9;
  }

  v17 = [(HMDBulletinBoard *)self doorbellBulletinUtilities];
  v29 = [v17 localizedDoorbellMessageForSignificantEvents:v7];
LABEL_9:
  v25 = v29;
LABEL_10:

  return v25;
}

- (void)addNotificationRequest:(id)a3 forIdentifier:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v8);

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v12;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Adding Notification Request: %@ requestIdentifier:%@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [(HMDBulletinBoard *)v10 notificationRequestsByIdentifier];
  [v13 setObject:v6 forKeyedSubscript:v7];

  [(HMDBulletinBoard *)v10 cullBulletinsToCount:20];
  [(HMDBulletinBoard *)v10 archive];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeBulletinsUsingPredicate:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDBulletinBoard *)self notificationRequestsByIdentifier];
  v7 = [v6 allValues];
  v9 = [v7 filteredArrayUsingPredicate:v4];

  v8 = [v9 na_map:&__block_literal_global_197];
  [(HMDBulletinBoard *)self removeNotificationRequestsWithIdentifiers:v8 shouldDeleteAttachments:1];
}

- (void)cullBulletinsToCount:(unint64_t)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [(HMDBulletinBoard *)self notificationRequestsByIdentifier];
  v6 = [v5 count];

  v7 = v6 > a3;
  v8 = v6 - a3;
  if (v7)
  {
    v9 = [(HMDBulletinBoard *)self notificationRequestsSortedByDate];
    v10 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{a3, v8}];
    v11 = [v9 objectsAtIndexes:v10];
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v11, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        v17 = 0;
        do
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v24 + 1) + 8 * v17) identifier];
          [v12 addObject:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v15);
    }

    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v22;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Culling bulletin with identifiers: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    [(HMDBulletinBoard *)v20 removeNotificationRequestsWithIdentifiers:v12 shouldDeleteAttachments:1];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)updateContent:(id)a3 forNotificationWithRequestIdentifier:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v22 = 138543874;
    v23 = v11;
    v24 = 2112;
    v25 = v7;
    v26 = 2112;
    v27 = v6;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating notification with request identifier %@ with content: %@", &v22, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMDBulletinBoard *)v9 notificationRequestsByIdentifier];
  v13 = [v12 objectForKeyedSubscript:v7];

  v14 = MEMORY[0x277CE1FC0];
  v15 = [v13 identifier];
  v16 = [v13 trigger];
  v17 = [v14 requestWithIdentifier:v15 content:v6 trigger:v16];
  v18 = [(HMDBulletinBoard *)v9 notificationRequestsByIdentifier];
  [v18 setObject:v17 forKeyedSubscript:v7];

  v19 = [(HMDBulletinBoard *)v9 notificationCenter];
  v20 = [v13 identifier];
  [v19 updateContent:v6 forNotificationWithRequestIdentifier:v20];

  v21 = *MEMORY[0x277D85DE8];
}

- (NSArray)notificationRequestsSortedByDate
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = [(HMDBulletinBoard *)self notificationRequestsByIdentifier];
  v3 = [v2 allValues];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"content.date" ascending:0];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [v3 sortedArrayUsingDescriptors:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)removeAllBulletins
{
  v3 = [(HMDBulletinBoard *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HMDBulletinBoard_removeAllBulletins__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)removeBulletinWithRecordID:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDBulletinBoard_removeBulletinWithRecordID___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __47__HMDBulletinBoard_removeBulletinWithRecordID___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 40);
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v1 removeNotificationRequestsWithIdentifiers:v2 shouldDeleteAttachments:1];

  v3 = *MEMORY[0x277D85DE8];
}

- (void)removeCameraClipBulletinsForCameraProfile:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMDBulletinBoard_removeCameraClipBulletinsForCameraProfile___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __62__HMDBulletinBoard_removeCameraClipBulletinsForCameraProfile___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCAC30];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__HMDBulletinBoard_removeCameraClipBulletinsForCameraProfile___block_invoke_2;
  v4[3] = &unk_279724528;
  v5 = *(a1 + 32);
  v3 = [v2 predicateWithBlock:v4];
  [*(a1 + 40) removeBulletinsUsingPredicate:v3];
}

uint64_t __62__HMDBulletinBoard_removeCameraClipBulletinsForCameraProfile___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 content];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCF310]];

  v7 = [v3 content];

  v8 = [v7 userInfo];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CCF308]];

  if (v6)
  {
    v10 = [*(a1 + 32) contextSPIUniqueIdentifier];
    v11 = [v10 UUIDString];
    v12 = [v9 isEqualToString:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)removeBulletinsForTrigger:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDBulletinBoard_removeBulletinsForTrigger___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __46__HMDBulletinBoard_removeBulletinsForTrigger___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCAC30];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__HMDBulletinBoard_removeBulletinsForTrigger___block_invoke_2;
  v4[3] = &unk_279724528;
  v5 = *(a1 + 32);
  v3 = [v2 predicateWithBlock:v4];
  [*(a1 + 40) removeBulletinsUsingPredicate:v3];
}

uint64_t __46__HMDBulletinBoard_removeBulletinsForTrigger___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 content];
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"trigger"];

  v6 = [*(a1 + 32) isEqualToString:v5];
  return v6;
}

- (void)removeBulletinsForService:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDBulletinBoard_removeBulletinsForService___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __46__HMDBulletinBoard_removeBulletinsForService___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCAC30];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__HMDBulletinBoard_removeBulletinsForService___block_invoke_2;
  v4[3] = &unk_279724528;
  v5 = *(a1 + 32);
  v3 = [v2 predicateWithBlock:v4];
  [*(a1 + 40) removeBulletinsUsingPredicate:v3];
}

uint64_t __46__HMDBulletinBoard_removeBulletinsForService___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 content];
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"service"];

  v6 = [*(a1 + 32) contextID];
  v7 = [v6 isEqualToString:v5];

  return v7;
}

- (void)removeBulletinsForAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDBulletinBoard_removeBulletinsForAccessory___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __48__HMDBulletinBoard_removeBulletinsForAccessory___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCAC30];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__HMDBulletinBoard_removeBulletinsForAccessory___block_invoke_2;
  v4[3] = &unk_279724528;
  v5 = *(a1 + 32);
  v3 = [v2 predicateWithBlock:v4];
  [*(a1 + 40) removeBulletinsUsingPredicate:v3];
}

uint64_t __48__HMDBulletinBoard_removeBulletinsForAccessory___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 content];
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"accessory"];

  if (v5)
  {
    v6 = [*(a1 + 32) contextID];
    v7 = [v6 isEqualToString:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)removeBulletinsForHome:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMDBulletinBoard_removeBulletinsForHome___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __43__HMDBulletinBoard_removeBulletinsForHome___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCAC30];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__HMDBulletinBoard_removeBulletinsForHome___block_invoke_2;
  v4[3] = &unk_279724528;
  v5 = *(a1 + 32);
  v3 = [v2 predicateWithBlock:v4];
  [*(a1 + 40) removeBulletinsUsingPredicate:v3];
}

uint64_t __43__HMDBulletinBoard_removeBulletinsForHome___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 content];
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"home"];

  if (v5)
  {
    v6 = [*(a1 + 32) contextID];
    v7 = [v6 isEqualToString:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)refreshHomeBadgeNumber
{
  v3 = [(HMDBulletinBoard *)self isConfiguredFuture];
  v4 = MEMORY[0x277D2C938];
  v5 = [(HMDBulletinBoard *)self workQueue];
  v6 = [v4 schedulerWithDispatchQueue:v5];
  v7 = [v3 reschedule:v6];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__HMDBulletinBoard_refreshHomeBadgeNumber__block_invoke;
  v9[3] = &unk_279733BC0;
  v9[4] = self;
  v8 = [v7 addCompletionBlock:v9];
}

void __42__HMDBulletinBoard_refreshHomeBadgeNumber__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) homeManager];
  v8 = v7;
  if (v7)
  {
    v24 = v6;
    v9 = v5;
    v10 = [v7 numberOfPendingIncomingInvitation];
    v11 = [v8 numberOfAccessoryWithNewFirmwareAvailable];
    v12 = v11 + v10 + [v8 needHH2UpgradeRecommendation];
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543874;
      v26 = v16;
      v27 = 2048;
      v28 = v10;
      v29 = 2048;
      v30 = v11;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Refreshing home badge number to %lu (invitation) + %lu (firmware update).", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v5 = v9;
    v6 = v24;
    if ((v12 & 0x8000000000000000) == 0)
    {
      v17 = [*(a1 + 32) notificationCenter];

      if (v17)
      {
        v18 = [*(a1 + 32) notificationCenter];
        [v18 setBadgeNumber:v12];
      }
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Home manager is not yet configured, bailing refreshHomeBadgeNumber.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)insertNewRMVLanguageBulletinForHome:(id)a3 language:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDBulletinBoard *)self isConfiguredFuture];
  v9 = MEMORY[0x277D2C938];
  v10 = [(HMDBulletinBoard *)self workQueue];
  v11 = [v9 schedulerWithDispatchQueue:v10];
  v12 = [v8 reschedule:v11];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__HMDBulletinBoard_insertNewRMVLanguageBulletinForHome_language___block_invoke;
  v16[3] = &unk_279733A98;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v13 = v7;
  v14 = v6;
  v15 = [v12 addCompletionBlock:v16];
}

void __65__HMDBulletinBoard_insertNewRMVLanguageBulletinForHome_language___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) homeManager];

  if (v7)
  {
    v60 = v6;
    v61 = v5;
    v8 = [*(a1 + 40) homeBulletinContext];
    v9 = [v8 hmf_stringForKey:*MEMORY[0x277CCF328]];

    v10 = MEMORY[0x277CCACA8];
    v11 = HMDLocalizedStringForKey(@"BULLETIN_NEW_RMV_LANGUAGE_TITLE");
    v63 = 0;
    v12 = [v10 localizedStringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:&v63, *(a1 + 48)];
    v13 = v63;

    v14 = v12;
    if (!v12)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138544130;
        v65 = v17;
        v66 = 2112;
        v67 = @"BULLETIN_NEW_RMV_LANGUAGE_TITLE";
        v68 = 2112;
        v69 = @"%@";
        v70 = 2112;
        v71 = v13;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v15);
      v14 = @"BULLETIN_NEW_RMV_LANGUAGE_TITLE";
    }

    v58 = v14;

    v18 = MEMORY[0x277CCACA8];
    v19 = HMDLocalizedStringForKey(@"BULLETIN_NEW_RMV_LANGUAGE_MESSAGE");
    v62 = 0;
    v20 = [v18 localizedStringWithValidatedFormat:v19 validFormatSpecifiers:@"%@" error:&v62, *(a1 + 48)];
    v21 = v62;

    v22 = v20;
    if (!v20)
    {
      v23 = v9;
      v24 = objc_autoreleasePoolPush();
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138544130;
        v65 = v26;
        v66 = 2112;
        v67 = @"BULLETIN_NEW_RMV_LANGUAGE_MESSAGE";
        v68 = 2112;
        v69 = @"%@";
        v70 = 2112;
        v71 = v21;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v24);
      v22 = @"BULLETIN_NEW_RMV_LANGUAGE_MESSAGE";
      v9 = v23;
    }

    v27 = v22;

    v28 = objc_alloc_init(MEMORY[0x277CCACE0]);
    [v28 setScheme:@"com.apple.Home-private"];
    [v28 setHost:@"recognizeMyVoiceOptIn"];
    v59 = v9;
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"showEnablementSheet=YES&homeId=%@", v9];
    [v28 setQuery:v29];

    v56 = v28;
    v30 = [v28 URL];
    v31 = [*(a1 + 40) homeBulletinContext];
    v32 = [v31 mutableCopy];

    v57 = v30;
    v33 = [v30 absoluteString];
    [v32 setObject:v33 forKeyedSubscript:*MEMORY[0x277CD13D8]];

    v34 = [*(a1 + 40) contextID];
    [v32 setObject:v34 forKeyedSubscript:@"home"];

    v35 = *(a1 + 32);
    v36 = [*(a1 + 40) uuid];
    v37 = [v36 UUIDString];
    v38 = [v35 threadIdentifierForGroupingWithHomeWithUUIDString:v37];

    v39 = objc_autoreleasePoolPush();
    v40 = *(a1 + 32);
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543618;
      v65 = v42;
      v66 = 2112;
      v67 = v27;
      _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@Inserting new RMV language bulletin with message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
    v43 = [MEMORY[0x277CCAD78] UUID];
    v44 = [v43 UUIDString];

    v45 = [*(a1 + 32) notificationCenter];
    v46 = [MEMORY[0x277CBEAA8] date];
    v47 = [v32 copy];
    LOBYTE(v55) = 0;
    [v45 showNotificationWithTitle:v58 body:v27 threadIdentifier:v38 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v44 date:v46 attachments:0 userInfo:v47 shouldIgnoreDoNotDisturb:v55 interruptionLevel:1 logEventTopic:16];
    v49 = v48 = v27;

    [*(a1 + 32) addNotificationRequest:v49 forIdentifier:v44];
    v6 = v60;
    v5 = v61;
  }

  else
  {
    v50 = objc_autoreleasePoolPush();
    v51 = *(a1 + 32);
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v53;
      _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, can not insert new RMV language bulletin", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v50);
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)fetchAreUserNotificationsEnabledWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HMDBulletinBoard_fetchAreUserNotificationsEnabledWithCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __67__HMDBulletinBoard_fetchAreUserNotificationsEnabledWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationCenter];
  [v2 fetchAreUserNotificationsEnabledWithCompletion:*(a1 + 40)];
}

- (void)updateDoorbellPressNotificationsWithSignificantEventBulletin:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HMDBulletinBoard_updateDoorbellPressNotificationsWithSignificantEventBulletin___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (BOOL)hasDoorbellPressNotificationToUpdateWithSignificantEventBulletin:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(HMDBulletinBoard *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HMDBulletinBoard_hasDoorbellPressNotificationToUpdateWithSignificantEventBulletin___block_invoke;
  block[3] = &unk_279735BC0;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __85__HMDBulletinBoard_hasDoorbellPressNotificationToUpdateWithSignificantEventBulletin___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) dateOfOccurrence];
  v4 = [*(a1 + 40) camera];
  v5 = [v2 _doorbellPressNotificationsNearDate:v3 forCameraProfile:v4];

  *(*(*(a1 + 48) + 8) + 24) = [v5 hmf_isEmpty] ^ 1;
}

- (void)insertBulletinsForMatterFirmwareUpdateInstalledInHome:(id)a3 hmdHAPAccessory:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 name];
    v13 = [v7 softwareUpdate];
    v14 = [v13 displayableVersion];
    *buf = 138543874;
    v31 = v11;
    v32 = 2112;
    v33 = v12;
    v34 = 2112;
    v35 = v14;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Firmware update UI notification is invoked for accessory = %@ displayeversion = %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if ([v6 shouldPostBulletin])
  {
    objc_initWeak(buf, v6);
    v15 = [(HMDBulletinBoard *)v9 isConfiguredFuture];
    v16 = MEMORY[0x277D2C938];
    v17 = [(HMDBulletinBoard *)v9 workQueue];
    v18 = [v16 schedulerWithDispatchQueue:v17];
    v19 = [v15 reschedule:v18];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __90__HMDBulletinBoard_insertBulletinsForMatterFirmwareUpdateInstalledInHome_hmdHAPAccessory___block_invoke;
    v27[3] = &unk_279724500;
    objc_copyWeak(&v29, buf);
    v27[4] = v9;
    v28 = v7;
    v20 = [v19 addCompletionBlock:v27];

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = v9;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v6 name];
      *buf = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = v25;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Not allowed to post bulletin for matter firmware update for home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __90__HMDBulletinBoard_insertBulletinsForMatterFirmwareUpdateInstalledInHome_hmdHAPAccessory___block_invoke(id *a1, void *a2, void *a3)
{
  v71[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = objc_autoreleasePoolPush();
  v9 = a1[4];
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (!WeakRetained)
  {
    if (v11)
    {
      v50 = HMFGetLogIdentifier();
      *buf = 138543362;
      v64 = v50;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Update bulletin for stale home object; returning early.", buf, 0xCu);
    }

    goto LABEL_16;
  }

  if (v11)
  {
    v12 = HMFGetLogIdentifier();
    v13 = [a1[5] softwareUpdate];
    v14 = [v13 displayableVersion];
    *buf = 138543874;
    v64 = v12;
    v65 = 2112;
    v66 = WeakRetained;
    v67 = 2112;
    v68 = v14;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating bulletin for firmware update installed in home: %@ with displableFirmwareVersion = %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v15 = [a1[4] homeManager];

  if (!v15)
  {
    v8 = objc_autoreleasePoolPush();
    v51 = a1[4];
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
    {
      v53 = HMFGetLogIdentifier();
      *buf = 138543362;
      v64 = v53;
      _os_log_impl(&dword_2531F8000, v52, OS_LOG_TYPE_INFO, "%{public}@Home manager is not yet configured, bailing updateBulletinForFirmwareUpdateInHome.", buf, 0xCu);
    }

LABEL_16:
    objc_autoreleasePoolPop(v8);
    goto LABEL_17;
  }

  v59 = v6;
  v60 = v5;
  v16 = [a1[5] softwareUpdate];
  v61 = [v16 displayableVersion];
  v58 = v16;
  v17 = [v16 version];
  v18 = [v17 shortVersionString];

  v19 = [a1[5] name];
  v20 = [a1[5] uuid];
  v21 = [v20 UUIDString];
  v22 = [v21 stringByAppendingPathComponent:@"firmwareInstalled"];
  v56 = v18;
  v57 = [v22 stringByAppendingPathComponent:v18];

  v23 = MEMORY[0x277CD1878];
  v24 = [(__CFString *)WeakRetained contextSPIUniqueIdentifier];
  v25 = [v24 UUIDString];
  v26 = [v23 tupleWithQueryType:0 uuidString:v25];

  v27 = MEMORY[0x277CD1878];
  v28 = [a1[5] contextSPIUniqueIdentifier];
  v29 = [v28 UUIDString];
  v30 = [v27 tupleWithQueryType:1 uuidString:v29];

  v31 = MEMORY[0x277CBEB98];
  v55 = v26;
  v71[0] = v26;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
  v33 = [v31 setWithArray:v32];
  v34 = generateURLForHomeKitObject();

  v35 = MEMORY[0x277CCACA8];
  v36 = HMDLocalizedStringForKey(@"ACCESSORY_FIRMWARE_UPDATE_INSTALLED_BODY_SINGLE");
  v62 = 0;
  v37 = v19;
  v38 = [v35 localizedStringWithValidatedFormat:v36 validFormatSpecifiers:@"%@ %@" error:&v62, v19, v61];
  v39 = v62;

  v40 = v38;
  if (!v38)
  {
    v41 = objc_autoreleasePoolPush();
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138544130;
      v64 = v43;
      v65 = 2112;
      v66 = @"ACCESSORY_FIRMWARE_UPDATE_INSTALLED_BODY_SINGLE";
      v67 = 2112;
      v68 = @"%@ %@";
      v69 = 2112;
      v70 = v39;
      _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v41);
    v40 = @"ACCESSORY_FIRMWARE_UPDATE_INSTALLED_BODY_SINGLE";
    v37 = v19;
  }

  v44 = v40;

  v45 = a1[4];
  v46 = HMDLocalizedStringForKey(@"ACCESSORY_FIRMWARE_UPDATE_INSTALLED_TITLE");
  v47 = [MEMORY[0x277CBEAA8] date];
  v48 = [(__CFString *)WeakRetained homeBulletinContext];
  v49 = [v45 _insertRequestWithTitle:v46 snapshotData:0 message:v44 requestIdentifier:v57 date:v47 bulletinType:0 actionURL:v34 bulletinContext:v48 actionContext:0 interruptionLevel:1 logEventTopic:19];

  v6 = v59;
  v5 = v60;
LABEL_17:

  v54 = *MEMORY[0x277D85DE8];
}

- (id)updateBulletinForFirmwareUpdateInHome:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 shouldPostBulletin])
  {
    v5 = [v4 uuid];
    v6 = [v5 UUIDString];
    v7 = [v6 stringByAppendingPathComponent:@"firmware"];

    objc_initWeak(location, v4);
    v8 = [(HMDBulletinBoard *)self isConfiguredFuture];
    v9 = MEMORY[0x277D2C938];
    v10 = [(HMDBulletinBoard *)self workQueue];
    v11 = [v9 schedulerWithDispatchQueue:v10];
    v12 = [v8 reschedule:v11];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__HMDBulletinBoard_updateBulletinForFirmwareUpdateInHome___block_invoke;
    v24[3] = &unk_279724500;
    objc_copyWeak(&v26, location);
    v24[4] = self;
    v13 = v7;
    v25 = v13;
    v14 = [v12 addCompletionBlock:v24];

    v15 = v25;
    v16 = v13;

    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v4 name];
      *location = 138543618;
      *&location[4] = v20;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Not allowed to post bulletin for firmware update for home: %@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

void __58__HMDBulletinBoard_updateBulletinForFirmwareUpdateInHome___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = [*(a1 + 32) homeManager];

    if (v8)
    {
      v9 = [WeakRetained namesOfServicesWithNewFirmwareAvailableInHome];
      if ([v9 count] == 1)
      {
        v10 = MEMORY[0x277CCACA8];
        v11 = HMDLocalizedStringForKey(@"ACCESSORY_FIRMWARE_UPDATE_AVAILABLE_BODY_SINGLE");
        v60 = 0;
        v12 = [v9 firstObject];
        v13 = [v10 localizedStringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:&v60, v12];
        v14 = v60;

        v58 = v5;
        if (!v13)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = HMFGetOSLogHandle();
          v13 = @"ACCESSORY_FIRMWARE_UPDATE_AVAILABLE_BODY_SINGLE";
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v18 = v17 = v15;
            *buf = 138544130;
            v63 = v18;
            v64 = 2112;
            v65 = @"ACCESSORY_FIRMWARE_UPDATE_AVAILABLE_BODY_SINGLE";
            v66 = 2112;
            v67 = @"%@";
            v68 = 2112;
            v69 = v14;
LABEL_21:
            _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

            v15 = v17;
            goto LABEL_22;
          }

          goto LABEL_22;
        }
      }

      else
      {
        if ([v9 count] < 2)
        {
          v27 = objc_autoreleasePoolPush();
          v28 = *(a1 + 32);
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = HMFGetLogIdentifier();
            v31 = [WeakRetained name];
            *buf = 138543618;
            v63 = v30;
            v64 = 2112;
            v65 = v31;
            _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@No accessory in home %@ has firmware update. Cleaning the bulletin.", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v27);
          v32 = *(a1 + 32);
          v61 = *(a1 + 40);
          v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
          [v32 removeNotificationRequestsWithIdentifiers:v33 shouldDeleteAttachments:1];
          goto LABEL_29;
        }

        v24 = MEMORY[0x277CCACA8];
        v25 = HMDLocalizedStringForKey(@"ACCESSORY_FIRMWARE_UPDATE_AVAILABLE_BODY_MULTIPLE");
        v59 = 0;
        v13 = [v24 localizedStringWithValidatedFormat:v25 validFormatSpecifiers:@"%d" error:&v59, objc_msgSend(v9, "count")];
        v14 = v59;

        v58 = v5;
        if (!v13)
        {
          v15 = objc_autoreleasePoolPush();
          v16 = HMFGetOSLogHandle();
          v13 = @"ACCESSORY_FIRMWARE_UPDATE_AVAILABLE_BODY_MULTIPLE";
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v18 = v17 = v15;
            *buf = 138544130;
            v63 = v18;
            v64 = 2112;
            v65 = @"ACCESSORY_FIRMWARE_UPDATE_AVAILABLE_BODY_MULTIPLE";
            v66 = 2112;
            v67 = @"%d";
            v68 = 2112;
            v69 = v14;
            goto LABEL_21;
          }

LABEL_22:

          objc_autoreleasePoolPop(v15);
          v26 = 0;
          goto LABEL_23;
        }
      }

      v26 = v13;
LABEL_23:
      v33 = v13;

      v34 = [*(a1 + 32) notificationRequestsByIdentifier];
      v35 = [v34 objectForKey:*(a1 + 40)];

      if (v35)
      {
        v36 = objc_autoreleasePoolPush();
        v37 = *(a1 + 32);
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          v39 = HMFGetLogIdentifier();
          v40 = *(a1 + 40);
          *buf = 138543618;
          v63 = v39;
          v64 = 2112;
          v65 = v40;
          _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_INFO, "%{public}@Bulletin with recordID (%@) already exists. Updating bulletin.", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v36);
        v41 = [v35 content];
        v42 = [v41 mutableCopy];

        [v42 setBody:v33];
        v43 = *(a1 + 32);
        v44 = [v35 identifier];
        [v43 updateContent:v42 forNotificationWithRequestIdentifier:v44];
      }

      else
      {
        v42 = [WeakRetained name];
        v45 = MEMORY[0x277CD1878];
        v46 = [WeakRetained contextSPIUniqueIdentifier];
        [v46 UUIDString];
        v47 = v57 = v6;
        v44 = [v45 tupleWithQueryType:8 uuidString:v47];

        v48 = generateURLForHomeKitObject();
        v49 = *(a1 + 32);
        v56 = *(a1 + 40);
        v50 = [MEMORY[0x277CBEAA8] date];
        [WeakRetained homeBulletinContext];
        v52 = v51 = v9;
        v53 = v49;
        v6 = v57;
        v54 = [v53 _insertRequestWithTitle:v42 snapshotData:0 message:v33 requestIdentifier:v56 date:v50 bulletinType:0 actionURL:v48 bulletinContext:v52 actionContext:0 interruptionLevel:1 logEventTopic:2];

        v9 = v51;
      }

      v5 = v58;
LABEL_29:

      goto LABEL_30;
    }

    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v63 = v22;
      v23 = "%{public}@Home manager is not yet configured, bailing updateBulletinForFirmwareUpdateInHome.";
      goto LABEL_11;
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v63 = v22;
      v23 = "%{public}@Update bulletin for stale home object; returning early.";
LABEL_11:
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, v23, buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v19);
LABEL_30:

  v55 = *MEMORY[0x277D85DE8];
}

- (void)insertConnectedCHIPEcosystemsChangedBulletin:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDBulletinBoard_insertConnectedCHIPEcosystemsChangedBulletin___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __65__HMDBulletinBoard_insertConnectedCHIPEcosystemsChangedBulletin___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isTimeSensitive])
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = [*(a1 + 32) userInfo];
  v14 = [v3 hmf_stringForKey:@"home"];

  v4 = [*(a1 + 40) threadIdentifierForGroupingWithHomeWithUUIDString:v14];
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];

  v7 = [*(a1 + 40) notificationCenter];
  v8 = [*(a1 + 32) title];
  v9 = [*(a1 + 32) body];
  v10 = [*(a1 + 32) dateOfOccurrence];
  v11 = [*(a1 + 32) userInfo];
  LOBYTE(v13) = 0;
  v12 = [v7 showNotificationWithTitle:v8 body:v9 threadIdentifier:v4 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v6 date:v10 attachments:0 userInfo:v11 shouldIgnoreDoNotDisturb:v13 interruptionLevel:v2 logEventTopic:14];

  [*(a1 + 40) addNotificationRequest:v12 forIdentifier:v6];
}

- (void)insertCameraAccessModeChangedBulletin:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDBulletinBoard_insertCameraAccessModeChangedBulletin___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __58__HMDBulletinBoard_insertCameraAccessModeChangedBulletin___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isTimeSensitive])
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = [*(a1 + 32) userInfo];
  v14 = [v3 hmf_stringForKey:@"home"];

  v4 = [*(a1 + 40) threadIdentifierForGroupingWithHomeWithUUIDString:v14];
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [v5 UUIDString];

  v7 = [*(a1 + 40) notificationCenter];
  v8 = [*(a1 + 32) title];
  v9 = [*(a1 + 32) body];
  v10 = [*(a1 + 32) dateOfOccurrence];
  v11 = [*(a1 + 32) userInfo];
  LOBYTE(v13) = 0;
  v12 = [v7 showNotificationWithTitle:v8 body:v9 threadIdentifier:v4 categoryIdentifier:0 requestIdentifier:v6 date:v10 attachments:0 userInfo:v11 shouldIgnoreDoNotDisturb:v13 interruptionLevel:v2 logEventTopic:5];

  [*(a1 + 40) addNotificationRequest:v12 forIdentifier:v6];
}

- (void)insertCameraClipSignificantEventBulletin:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDBulletinBoard_insertCameraClipSignificantEventBulletin___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __61__HMDBulletinBoard_insertCameraClipSignificantEventBulletin___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) previewImageFilePathURL];
  v3 = [*(a1 + 40) notificationRequestsByIdentifier];
  v4 = [*(a1 + 32) requestIdentifier];
  v5 = [v3 objectForKey:v4];

  v6 = [v5 content];
  v7 = [v6 body];
  v8 = [*(a1 + 32) body];
  v9 = [v7 isEqualToString:v8];

  v10 = [v5 content];
  v11 = [v10 attachments];
  v12 = [v11 count];

  if (v9 && (v12 || !v2))
  {
    v47 = objc_autoreleasePoolPush();
    v48 = *(a1 + 40);
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
    {
      v50 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v50;
      v60 = 2112;
      v61 = v5;
      _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_INFO, "%{public}@Not inserting camera clip significant event bulletin because a bulletin already exists with the same body and an attachment: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v47);
  }

  else
  {
    v13 = [v5 content];
    v14 = [v13 mutableCopy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x277CE1F60]);
    }

    v17 = v16;

    v18 = [*(a1 + 32) userInfo];
    [v17 setUserInfo:v18];

    [*(a1 + 40) _updateCameraClipSignificantEventBulletinContent:v17 withPreviewImageFilePathURL:v2];
    if (v9)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 40);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v59 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Silently updating existing significant event bulletin with new preview image file instead of re-notifying", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = *(a1 + 40);
      v24 = [v5 identifier];
      [v23 updateContent:v17 forNotificationWithRequestIdentifier:v24];
    }

    else
    {
      v56 = v5;
      v57 = v2;
      v25 = [*(a1 + 32) shouldShowProvideFeedbackButton];
      v26 = @"HomeAppBulletinCategory";
      if (v25)
      {
        v26 = @"HMDBulletinCategoryProvideCameraRecordingFeedback";
      }

      v54 = v26;
      v27 = objc_autoreleasePoolPush();
      v28 = *(a1 + 40);
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        v31 = *(a1 + 32);
        v32 = [v17 userInfo];
        *buf = 138543874;
        v59 = v30;
        v60 = 2112;
        v61 = v31;
        v62 = 2112;
        v63 = v32;
        _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Showing new significant event bulletin: %@, with user info: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v27);
      [*(a1 + 40) _submitCameraClipSignificantEventDetailsFromBulletin:*(a1 + 32)];
      v33 = *(a1 + 40);
      v34 = [*(a1 + 32) home];
      v35 = [v34 uuid];
      v36 = [v35 UUIDString];
      v53 = [v33 threadIdentifierForGroupingWithHomeWithUUIDString:v36];

      v37 = [*(a1 + 40) notificationCenter];
      v38 = [*(a1 + 32) title];
      v39 = [*(a1 + 32) body];
      v40 = [*(a1 + 32) requestIdentifier];
      v41 = [*(a1 + 32) dateOfOccurrence];
      v42 = [v17 attachments];
      v43 = [v17 userInfo];
      LOBYTE(v52) = 0;
      v24 = v54;
      [v37 showNotificationWithTitle:v38 body:v39 threadIdentifier:v53 categoryIdentifier:v54 requestIdentifier:v40 date:v41 attachments:v42 userInfo:v43 shouldIgnoreDoNotDisturb:v52 interruptionLevel:1 logEventTopic:6];
      v44 = v55 = v17;

      v45 = *(a1 + 40);
      v46 = [*(a1 + 32) requestIdentifier];
      [v45 addNotificationRequest:v44 forIdentifier:v46];

      v17 = v55;
      v5 = v56;
      v2 = v57;
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (void)removeWalletKeyOnboardingBulletinForHome:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDBulletinBoard_removeWalletKeyOnboardingBulletinForHome___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __61__HMDBulletinBoard_removeWalletKeyOnboardingBulletinForHome___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];

  if (v2)
  {
    v3 = [*(a1 + 40) uuid];
    v4 = [v3 UUIDString];
    v5 = [v4 stringByAppendingPathComponent:@"lockOnboarding"];

    v6 = [*(a1 + 32) notificationRequestsByIdentifier];
    v7 = [v6 objectForKey:v5];

    if (!v7)
    {
      v35 = objc_autoreleasePoolPush();
      v36 = *(a1 + 32);
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543362;
        v49 = v38;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Did not find any existing lock onboarding bulletin.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v35);
      goto LABEL_17;
    }

    v8 = [v7 content];
    v9 = [v8 mutableCopy];

    v46 = v9;
    v10 = [v9 userInfo];
    v11 = [v10 mutableCopy];

    v44 = *MEMORY[0x277CD13D8];
    v12 = [v11 objectForKeyedSubscript:?];
    v13 = MEMORY[0x277CCACA8];
    v14 = [*(a1 + 40) contextSPIUniqueIdentifier];
    v15 = [v13 stringWithValidatedFormat:@"com.apple.Home-private://locksFirmwareUpdateSetup/%@?type=%@" validFormatSpecifiers:@"%@ %@" error:0, v14, @"all"];

    v16 = MEMORY[0x277CCACA8];
    v17 = [*(a1 + 40) contextSPIUniqueIdentifier];
    v18 = [v16 stringWithValidatedFormat:@"com.apple.Home-private://locksFirmwareUpdateSetup/%@?type=%@" validFormatSpecifiers:@"%@ %@" error:0, v17, @"walletkey"];

    v45 = v15;
    if ([v12 isEqualToString:v15])
    {
      v43 = v18;
      v19 = MEMORY[0x277CCACA8];
      v20 = [*(a1 + 40) contextSPIUniqueIdentifier];
      v21 = [v19 stringWithValidatedFormat:@"com.apple.Home-private://locksFirmwareUpdateSetup/%@?type=%@" validFormatSpecifiers:@"%@ %@" error:0, v20, @"pincode"];

      v42 = [MEMORY[0x277CBEBC0] URLWithString:v21];
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 32);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        [v11 objectForKeyedSubscript:v44];
        v41 = v22;
        v27 = v26 = v12;
        *buf = 138543874;
        v49 = v25;
        v50 = 2112;
        v51 = v27;
        v52 = 2112;
        v53 = v42;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Lock onboarding bulletin already exists, updating bulletin actionURL: %@ to %@.", buf, 0x20u);

        v12 = v26;
        v22 = v41;
      }

      objc_autoreleasePoolPop(v22);
      v28 = [v42 absoluteString];
      [v11 setObject:v28 forKeyedSubscript:v44];

      v9 = v46;
      [v46 setUserInfo:v11];
      v29 = *(a1 + 32);
      v30 = [v7 identifier];
      [v29 updateContent:v46 forNotificationWithRequestIdentifier:v30];
    }

    else
    {
      if (![v12 isEqualToString:v18])
      {
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v43 = v18;
      v39 = *(a1 + 32);
      v47 = v5;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
      [v39 removeNotificationRequestsWithIdentifiers:v21 shouldDeleteAttachments:1];
    }

    v18 = v43;
    goto LABEL_16;
  }

  v31 = objc_autoreleasePoolPush();
  v32 = *(a1 + 32);
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138543362;
    v49 = v34;
    _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, can not remove wallet key onboarding bulletin", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v31);
LABEL_18:
  v40 = *MEMORY[0x277D85DE8];
}

- (void)insertWalletKeyExpressModeSetUpBulletinForHome:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HMDBulletinBoard_insertWalletKeyExpressModeSetUpBulletinForHome___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __67__HMDBulletinBoard_insertWalletKeyExpressModeSetUpBulletinForHome___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];

  if (v2)
  {
    v42 = HMDLocalizedStringForKey(@"BULLETIN_WALLET_KEY_EXPRESS_MODE_TITLE");
    v3 = MEMORY[0x277CCACA8];
    v4 = HMDLocalizedStringForKey(@"BULLETIN_WALLET_KEY_EXPRESS_MODE_MESSAGE");
    v43 = 0;
    v5 = [*(a1 + 40) name];
    v6 = [v3 localizedStringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:&v43, v5];
    v7 = v43;

    v8 = v6;
    if (!v6)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138544130;
        v45 = v11;
        v46 = 2112;
        v47 = @"BULLETIN_WALLET_KEY_EXPRESS_MODE_MESSAGE";
        v48 = 2112;
        v49 = @"%@";
        v50 = 2112;
        v51 = v7;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v9);
      v8 = @"BULLETIN_WALLET_KEY_EXPRESS_MODE_MESSAGE";
    }

    v12 = v8;

    v13 = MEMORY[0x277CCACA8];
    v14 = [*(a1 + 40) contextSPIUniqueIdentifier];
    v15 = [v13 stringWithValidatedFormat:@"com.apple.Home-private://locksOnboarding/%@?type=%@" validFormatSpecifiers:@"%@ %@" error:0, v14, @"walletkey"];

    v41 = v15;
    v16 = [MEMORY[0x277CBEBC0] URLWithString:v15];
    v17 = [*(a1 + 40) homeBulletinContext];
    v18 = [v17 mutableCopy];

    v19 = [(__CFString *)v16 absoluteString];
    [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x277CD13D8]];

    v20 = [*(a1 + 40) contextID];
    [v18 setObject:v20 forKeyedSubscript:@"home"];

    v21 = *(a1 + 32);
    v22 = [*(a1 + 40) uuid];
    v23 = [v22 UUIDString];
    v24 = [v21 threadIdentifierForGroupingWithHomeWithUUIDString:v23];

    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 32);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543874;
      v45 = v28;
      v46 = 2112;
      v47 = v12;
      v48 = 2112;
      v49 = v16;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Inserting wallet key express mode setup bulletin with message: %@ actionURL:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x277CCAD78] UUID];
    v30 = [v29 UUIDString];

    v31 = [*(a1 + 32) notificationCenter];
    v32 = [MEMORY[0x277CBEAA8] date];
    v33 = [v18 copy];
    LOBYTE(v40) = 0;
    v34 = [v31 showNotificationWithTitle:v42 body:v12 threadIdentifier:v24 categoryIdentifier:@"HMDBulletinCategorySuppressNotificationOnWatch" requestIdentifier:v30 date:v32 attachments:0 userInfo:v33 shouldIgnoreDoNotDisturb:v40 interruptionLevel:1 logEventTopic:17];

    [*(a1 + 32) addNotificationRequest:v34 forIdentifier:v30];
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = *(a1 + 32);
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v38;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, can not insert wallet key express mode setup bulletin", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)insertWalletKeySupportAddedBulletinForAccessory:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDBulletinBoard_insertWalletKeySupportAddedBulletinForAccessory___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __68__HMDBulletinBoard_insertWalletKeySupportAddedBulletinForAccessory___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];

  if (v2)
  {
    v3 = [*(a1 + 40) home];
    v51 = [*(a1 + 40) name];
    v4 = MEMORY[0x277CCACA8];
    v5 = HMDLocalizedStringForKey(@"BULLETIN_WALLET_KEY_SUPPORT_ADDED_MESSAGE");
    v53 = 0;
    v6 = [*(a1 + 40) name];
    v7 = [v4 localizedStringWithValidatedFormat:v5 validFormatSpecifiers:@"%@" error:&v53, v6];
    v8 = v53;

    v9 = v7;
    if (!v7)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138544130;
        v56 = v12;
        v57 = 2112;
        v58 = @"BULLETIN_WALLET_KEY_SUPPORT_ADDED_MESSAGE";
        v59 = 2112;
        v60 = @"%@";
        v61 = 2112;
        v62 = v8;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v10);
      v9 = @"BULLETIN_WALLET_KEY_SUPPORT_ADDED_MESSAGE";
    }

    v52 = v9;

    v13 = MEMORY[0x277CD1878];
    v14 = [*(a1 + 40) contextSPIUniqueIdentifier];
    v15 = [v14 UUIDString];
    v16 = [v13 tupleWithQueryType:1 uuidString:v15];

    v17 = MEMORY[0x277CD1878];
    v18 = [v3 contextSPIUniqueIdentifier];
    v19 = [v18 UUIDString];
    v20 = [v17 tupleWithQueryType:0 uuidString:v19];

    v21 = MEMORY[0x277CBEB98];
    v49 = v20;
    v54 = v20;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    v23 = [v21 setWithArray:v22];
    v50 = v16;
    v24 = generateURLForHomeKitObject();

    v25 = [*(a1 + 40) accessoryBulletinContext];
    v26 = [v25 mutableCopy];

    v27 = [(__CFString *)v24 absoluteString];
    [v26 setObject:v27 forKeyedSubscript:*MEMORY[0x277CD13D8]];

    v28 = [v3 contextID];
    [v26 setObject:v28 forKeyedSubscript:@"home"];

    v29 = *(a1 + 32);
    v30 = [v3 uuid];
    v31 = [v30 UUIDString];
    v32 = [v29 threadIdentifierForGroupingWithHomeWithUUIDString:v31];

    v33 = objc_autoreleasePoolPush();
    v34 = *(a1 + 32);
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543874;
      v56 = v36;
      v57 = 2112;
      v58 = v52;
      v59 = 2112;
      v60 = v24;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Inserting wallet key support added bulletin with message: %@ actionURL:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v33);
    v37 = [MEMORY[0x277CCAD78] UUID];
    v38 = [v37 UUIDString];

    v39 = [*(a1 + 32) notificationCenter];
    v40 = [MEMORY[0x277CBEAA8] date];
    v41 = [v26 copy];
    LOBYTE(v48) = 0;
    v42 = [v39 showNotificationWithTitle:v51 body:v52 threadIdentifier:v32 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v38 date:v40 attachments:0 userInfo:v41 shouldIgnoreDoNotDisturb:v48 interruptionLevel:1 logEventTopic:17];

    [*(a1 + 32) addNotificationRequest:v42 forIdentifier:v38];
  }

  else
  {
    v43 = objc_autoreleasePoolPush();
    v44 = *(a1 + 32);
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = HMFGetLogIdentifier();
      *buf = 138543362;
      v56 = v46;
      _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, can not insert wallet key support added bulletin", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v43);
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (void)insertLockOnboardingBulletinForHome:(id)a3 serviceType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDBulletinBoard *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDBulletinBoard_insertLockOnboardingBulletinForHome_serviceType___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __68__HMDBulletinBoard_insertLockOnboardingBulletinForHome_serviceType___block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];

  if (v2)
  {
    v3 = [*(a1 + 40) uuid];
    v4 = [v3 UUIDString];
    v5 = [v4 stringByAppendingPathComponent:@"lockOnboarding"];

    v6 = [*(a1 + 32) notificationRequestsByIdentifier];
    v7 = [v6 objectForKey:v5];

    if (v7)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [*(a1 + 40) contextSPIUniqueIdentifier];
      v10 = [v8 stringWithValidatedFormat:@"com.apple.Home-private://locksFirmwareUpdateSetup/%@?type=%@" validFormatSpecifiers:@"%@ %@" error:0, v9, @"all"];

      v61 = v10;
      v11 = [MEMORY[0x277CBEBC0] URLWithString:v10];
      v12 = [v7 content];
      v13 = [v12 mutableCopy];

      v59 = v13;
      v14 = [(__CFString *)v13 userInfo];
      v15 = [v14 mutableCopy];

      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v19 = v56 = v16;
        v20 = *MEMORY[0x277CD13D8];
        [v15 objectForKeyedSubscript:*MEMORY[0x277CD13D8]];
        v22 = v21 = v5;
        *buf = 138543874;
        v63 = v19;
        v64 = 2112;
        v65 = v22;
        v66 = 2112;
        v67 = v11;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Lock onboarding bulletin already exists, updating bulletin actionURL: %@ to %@.", buf, 0x20u);

        v5 = v21;
        v16 = v56;
      }

      else
      {
        v20 = *MEMORY[0x277CD13D8];
      }

      objc_autoreleasePoolPop(v16);
      v51 = [v11 absoluteString];
      [v15 setObject:v51 forKeyedSubscript:v20];

      v50 = v59;
      [(__CFString *)v59 setUserInfo:v15];
      v52 = *(a1 + 32);
      [v7 identifier];
      v32 = v49 = v15;
      [v52 updateContent:v59 forNotificationWithRequestIdentifier:v32];
    }

    else
    {
      v57 = v5;
      v61 = HMDLocalizedStringForKey(@"BULLETIN_LOCK_ONBOARDING_TITLE");
      v11 = HMDLocalizedStringForKey(@"BULLETIN_LOCK_ONBOARDING_MESSAGE");
      if (*(a1 + 48) == @"00000266-0000-1000-8000-0026BB765291")
      {
        v27 = @"walletkey";
      }

      else
      {
        v27 = @"pincode";
      }

      v28 = v27;
      v29 = MEMORY[0x277CCACA8];
      v30 = [*(a1 + 40) contextSPIUniqueIdentifier];
      v60 = v28;
      v31 = [v29 stringWithValidatedFormat:@"com.apple.Home-private://locksFirmwareUpdateSetup/%@?type=%@" validFormatSpecifiers:@"%@ %@" error:0, v30, v28];

      v58 = v31;
      v32 = [MEMORY[0x277CBEBC0] URLWithString:v31];
      v33 = [*(a1 + 40) homeBulletinContext];
      v34 = [v33 mutableCopy];

      v35 = [v32 absoluteString];
      [v34 setObject:v35 forKeyedSubscript:*MEMORY[0x277CD13D8]];

      v36 = [*(a1 + 40) contextID];
      [v34 setObject:v36 forKeyedSubscript:@"home"];

      v37 = *(a1 + 32);
      v38 = [*(a1 + 40) uuid];
      v39 = [v38 UUIDString];
      v55 = [v37 threadIdentifierForGroupingWithHomeWithUUIDString:v39];

      v40 = objc_autoreleasePoolPush();
      v41 = *(a1 + 32);
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = HMFGetLogIdentifier();
        v44 = *(a1 + 48);
        *buf = 138544130;
        v63 = v43;
        v64 = 2112;
        v65 = v11;
        v66 = 2112;
        v67 = v32;
        v68 = 2112;
        v69 = v44;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Inserting lock onboarding bulletin with message: %@ actionURL:%@ for service: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v40);
      v45 = [*(a1 + 32) notificationCenter];
      v46 = [MEMORY[0x277CBEAA8] date];
      v47 = [v34 copy];
      LOBYTE(v54) = 0;
      v5 = v57;
      v48 = [v45 showNotificationWithTitle:v61 body:v11 threadIdentifier:v55 categoryIdentifier:@"HMDBulletinCategorySuppressNotificationOnWatch" requestIdentifier:v57 date:v46 attachments:0 userInfo:v47 shouldIgnoreDoNotDisturb:v54 interruptionLevel:1 logEventTopic:13];

      [*(a1 + 32) addNotificationRequest:v48 forIdentifier:v57];
      v7 = 0;
      v49 = v58;
      v50 = v60;
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 32);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v63 = v26;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, can not insert access code onboarding bulletin", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)insertAccessCodeRemovedBulletinForHome:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDBulletinBoard_insertAccessCodeRemovedBulletinForHome___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __59__HMDBulletinBoard_insertAccessCodeRemovedBulletinForHome___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];

  if (v2)
  {
    v43 = HMDLocalizedStringForKey(@"BULLETIN_ACCESS_CODE_REMOVED_TITLE");
    v3 = MEMORY[0x277CCACA8];
    v4 = HMDLocalizedStringForKey(@"BULLETIN_ACCESS_CODE_REMOVED_MESSAGE");
    v44 = 0;
    v5 = [*(a1 + 40) name];
    v6 = [v3 localizedStringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:&v44, v5];
    v7 = v44;

    v8 = v6;
    if (!v6)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138544130;
        v46 = v11;
        v47 = 2112;
        v48 = @"BULLETIN_ACCESS_CODE_REMOVED_MESSAGE";
        v49 = 2112;
        v50 = @"%@";
        v51 = 2112;
        v52 = v7;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v9);
      v8 = @"BULLETIN_ACCESS_CODE_REMOVED_MESSAGE";
    }

    v12 = v8;

    v13 = MEMORY[0x277CCACA8];
    v14 = [*(a1 + 40) contextSPIUniqueIdentifier];
    v15 = [v13 stringWithValidatedFormat:@"com.apple.Home-private://userLockSettings/%@" validFormatSpecifiers:@"%@" error:0, v14];

    v42 = v15;
    v16 = [MEMORY[0x277CBEBC0] URLWithString:v15];
    v17 = [*(a1 + 40) homeBulletinContext];
    v18 = [v17 mutableCopy];

    v41 = v16;
    v19 = [v16 absoluteString];
    [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x277CD13D8]];

    v20 = [*(a1 + 40) contextID];
    [v18 setObject:v20 forKeyedSubscript:@"home"];

    v21 = *(a1 + 32);
    v22 = [*(a1 + 40) uuid];
    v23 = [v22 UUIDString];
    v24 = [v21 threadIdentifierForGroupingWithHomeWithUUIDString:v23];

    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 32);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v28;
      v47 = 2112;
      v48 = v12;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Inserting access code removed bulletin with message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x277CCAD78] UUID];
    v30 = [v29 UUIDString];

    v31 = [*(a1 + 32) notificationCenter];
    v32 = [MEMORY[0x277CBEAA8] date];
    v33 = [v18 copy];
    LOBYTE(v40) = 0;
    v34 = [v31 showNotificationWithTitle:v43 body:v12 threadIdentifier:v24 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v30 date:v32 attachments:0 userInfo:v33 shouldIgnoreDoNotDisturb:v40 interruptionLevel:1 logEventTopic:1];

    [*(a1 + 32) addNotificationRequest:v34 forIdentifier:v30];
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = *(a1 + 32);
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v38;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, can not insert access code removed bulletin", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)insertAccessCodeChangedBulletinForHome:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDBulletinBoard_insertAccessCodeChangedBulletinForHome___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __59__HMDBulletinBoard_insertAccessCodeChangedBulletinForHome___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];

  if (v2)
  {
    v43 = HMDLocalizedStringForKey(@"BULLETIN_ACCESS_CODE_CHANGED_TITLE");
    v3 = MEMORY[0x277CCACA8];
    v4 = HMDLocalizedStringForKey(@"BULLETIN_ACCESS_CODE_CHANGED_MESSAGE");
    v44 = 0;
    v5 = [*(a1 + 40) name];
    v6 = [v3 localizedStringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:&v44, v5];
    v7 = v44;

    v8 = v6;
    if (!v6)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138544130;
        v46 = v11;
        v47 = 2112;
        v48 = @"BULLETIN_ACCESS_CODE_CHANGED_MESSAGE";
        v49 = 2112;
        v50 = @"%@";
        v51 = 2112;
        v52 = v7;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v9);
      v8 = @"BULLETIN_ACCESS_CODE_CHANGED_MESSAGE";
    }

    v12 = v8;

    v13 = MEMORY[0x277CCACA8];
    v14 = [*(a1 + 40) contextSPIUniqueIdentifier];
    v15 = [v13 stringWithValidatedFormat:@"com.apple.Home-private://userLockSettings/%@" validFormatSpecifiers:@"%@" error:0, v14];

    v42 = v15;
    v16 = [MEMORY[0x277CBEBC0] URLWithString:v15];
    v17 = [*(a1 + 40) homeBulletinContext];
    v18 = [v17 mutableCopy];

    v41 = v16;
    v19 = [v16 absoluteString];
    [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x277CD13D8]];

    v20 = [*(a1 + 40) contextID];
    [v18 setObject:v20 forKeyedSubscript:@"home"];

    v21 = *(a1 + 32);
    v22 = [*(a1 + 40) uuid];
    v23 = [v22 UUIDString];
    v24 = [v21 threadIdentifierForGroupingWithHomeWithUUIDString:v23];

    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 32);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v28;
      v47 = 2112;
      v48 = v12;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Inserting access code changed bulletin with message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x277CCAD78] UUID];
    v30 = [v29 UUIDString];

    v31 = [*(a1 + 32) notificationCenter];
    v32 = [MEMORY[0x277CBEAA8] date];
    v33 = [v18 copy];
    LOBYTE(v40) = 0;
    v34 = [v31 showNotificationWithTitle:v43 body:v12 threadIdentifier:v24 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v30 date:v32 attachments:0 userInfo:v33 shouldIgnoreDoNotDisturb:v40 interruptionLevel:1 logEventTopic:1];

    [*(a1 + 32) addNotificationRequest:v34 forIdentifier:v30];
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = *(a1 + 32);
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v38;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, can not insert access code changed bulletin", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)insertAccessCodeAddedBulletinForHome:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDBulletinBoard_insertAccessCodeAddedBulletinForHome___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __57__HMDBulletinBoard_insertAccessCodeAddedBulletinForHome___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];

  if (v2)
  {
    v43 = HMDLocalizedStringForKey(@"BULLETIN_ACCESS_CODE_ADDED_TITLE");
    v3 = MEMORY[0x277CCACA8];
    v4 = HMDLocalizedStringForKey(@"BULLETIN_ACCESS_CODE_ADDED_MESSAGE");
    v44 = 0;
    v5 = [*(a1 + 40) name];
    v6 = [v3 localizedStringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:&v44, v5];
    v7 = v44;

    v8 = v6;
    if (!v6)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138544130;
        v46 = v11;
        v47 = 2112;
        v48 = @"BULLETIN_ACCESS_CODE_ADDED_MESSAGE";
        v49 = 2112;
        v50 = @"%@";
        v51 = 2112;
        v52 = v7;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v9);
      v8 = @"BULLETIN_ACCESS_CODE_ADDED_MESSAGE";
    }

    v12 = v8;

    v13 = MEMORY[0x277CCACA8];
    v14 = [*(a1 + 40) contextSPIUniqueIdentifier];
    v15 = [v13 stringWithValidatedFormat:@"com.apple.Home-private://userLockSettings/%@" validFormatSpecifiers:@"%@" error:0, v14];

    v42 = v15;
    v16 = [MEMORY[0x277CBEBC0] URLWithString:v15];
    v17 = [*(a1 + 40) homeBulletinContext];
    v18 = [v17 mutableCopy];

    v41 = v16;
    v19 = [v16 absoluteString];
    [v18 setObject:v19 forKeyedSubscript:*MEMORY[0x277CD13D8]];

    v20 = [*(a1 + 40) contextID];
    [v18 setObject:v20 forKeyedSubscript:@"home"];

    v21 = *(a1 + 32);
    v22 = [*(a1 + 40) uuid];
    v23 = [v22 UUIDString];
    v24 = [v21 threadIdentifierForGroupingWithHomeWithUUIDString:v23];

    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 32);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v28;
      v47 = 2112;
      v48 = v12;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Inserting access code added bulletin with message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x277CCAD78] UUID];
    v30 = [v29 UUIDString];

    v31 = [*(a1 + 32) notificationCenter];
    v32 = [MEMORY[0x277CBEAA8] date];
    v33 = [v18 copy];
    LOBYTE(v40) = 0;
    v34 = [v31 showNotificationWithTitle:v43 body:v12 threadIdentifier:v24 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v30 date:v32 attachments:0 userInfo:v33 shouldIgnoreDoNotDisturb:v40 interruptionLevel:1 logEventTopic:1];

    [*(a1 + 32) addNotificationRequest:v34 forIdentifier:v30];
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = *(a1 + 32);
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v46 = v38;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, can not insert access code added bulletin", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)insertHomeHubReachabilityBulletinForHome:(id)a3 reachable:(BOOL)a4 hasMultipleResidents:(BOOL)a5
{
  v8 = a3;
  v9 = [(HMDBulletinBoard *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__HMDBulletinBoard_insertHomeHubReachabilityBulletinForHome_reachable_hasMultipleResidents___block_invoke;
  block[3] = &unk_27972EBD8;
  block[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
  dispatch_async(v9, block);
}

void __92__HMDBulletinBoard_insertHomeHubReachabilityBulletinForHome_reachable_hasMultipleResidents___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];

  if (!v2)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, bailing insertBulletinsForUnreachableRecordingCamera", buf, 0xCu);
    }

    goto LABEL_11;
  }

  if (([*(a1 + 40) shouldPostBulletin] & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) name];
      *buf = 138543618;
      v45 = v11;
      v46 = 2112;
      v47 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Not allowed to post home hub reachability bulletin for home: %@", buf, 0x16u);
    }

LABEL_11:
    objc_autoreleasePoolPop(v5);
    goto LABEL_20;
  }

  v3 = [*(a1 + 40) name];
  if (*(a1 + 48))
  {
    v4 = @"HOME_REACHABLE_HOME_HUB";
  }

  else if (*(a1 + 49))
  {
    v4 = @"HOME_NO_REACHABLE_HOME_HUBS";
  }

  else
  {
    v4 = @"HOME_NO_REACHABLE_HOME_HUB";
  }

  v43 = HMDLocalizedStringForKey(v4);
  v13 = MEMORY[0x277CD1878];
  v14 = [*(a1 + 40) contextSPIUniqueIdentifier];
  v15 = [v14 UUIDString];
  v16 = [v13 tupleWithQueryType:0 uuidString:v15];

  v42 = v16;
  v17 = generateURLForHomeKitObject();
  v18 = [*(a1 + 40) homeBulletinContext];
  v19 = [v18 mutableCopy];

  v41 = v17;
  v20 = [v17 absoluteString];
  [v19 setObject:v20 forKeyedSubscript:*MEMORY[0x277CD13D8]];

  v21 = [*(a1 + 40) contextID];
  [v19 setObject:v21 forKeyedSubscript:@"home"];

  v22 = *(a1 + 32);
  v23 = [*(a1 + 40) uuid];
  v24 = [v23 UUIDString];
  v25 = [v22 threadIdentifierForGroupingWithHomeWithUUIDString:v24];

  v26 = objc_autoreleasePoolPush();
  v27 = *(a1 + 32);
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = HMFGetLogIdentifier();
    v30 = v29;
    v31 = @"Unreachable";
    if (*(a1 + 48))
    {
      v31 = @"Reachable";
    }

    *buf = 138543618;
    v45 = v29;
    v46 = 2114;
    v47 = v31;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Posting %{public}@ Home Bulletin", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  v32 = [MEMORY[0x277CCAD78] UUID];
  v33 = [v32 UUIDString];

  v34 = [*(a1 + 32) notificationCenter];
  v35 = [MEMORY[0x277CBEAA8] date];
  v36 = [v19 copy];
  LOBYTE(v40) = 0;
  [v34 showNotificationWithTitle:v3 body:v43 threadIdentifier:v25 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v33 date:v35 attachments:0 userInfo:v36 shouldIgnoreDoNotDisturb:v40 interruptionLevel:1 logEventTopic:10];
  v38 = v37 = v3;

  [*(a1 + 32) addNotificationRequest:v38 forIdentifier:v33];
LABEL_20:
  v39 = *MEMORY[0x277D85DE8];
}

- (void)insertReachabilityEventBulletinForAccessory:(id)a3 reachable:(BOOL)a4 date:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HMDBulletinBoard *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__HMDBulletinBoard_insertReachabilityEventBulletinForAccessory_reachable_date___block_invoke;
  v13[3] = &unk_279731C38;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

void __79__HMDBulletinBoard_insertReachabilityEventBulletinForAccessory_reachable_date___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];

  if (v2)
  {
    v3 = [*(a1 + 40) cameraProfiles];
    v4 = [v3 count];

    if (v4)
    {
      v5 = [*(a1 + 40) home];
      v52 = [v5 name];
      v6 = MEMORY[0x277CCACA8];
      if (*(a1 + 56) == 1)
      {
        v7 = HMDLocalizedStringForKey(@"CAMERA_IS_REACHABLE");
        v54 = 0;
        v8 = [*(a1 + 40) name];
        v9 = [v6 localizedStringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:&v54, v8];
        v10 = v54;

        if (!v9)
        {
          v11 = objc_autoreleasePoolPush();
          v12 = HMFGetOSLogHandle();
          v9 = @"CAMERA_IS_REACHABLE";
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = HMFGetLogIdentifier();
            *buf = 138544130;
            v57 = v13;
            v58 = 2112;
            v59 = @"CAMERA_IS_REACHABLE";
            v60 = 2112;
            v61 = @"%@";
            v62 = 2112;
            v63 = v10;
LABEL_17:
            _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

            goto LABEL_18;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v19 = HMDLocalizedStringForKey(@"CAMERA_IS_UNREACHABLE");
        v53 = 0;
        v20 = [*(a1 + 40) name];
        v9 = [v6 localizedStringWithValidatedFormat:v19 validFormatSpecifiers:@"%@" error:&v53, v20];
        v10 = v53;

        if (!v9)
        {
          v11 = objc_autoreleasePoolPush();
          v12 = HMFGetOSLogHandle();
          v9 = @"CAMERA_IS_UNREACHABLE";
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = HMFGetLogIdentifier();
            *buf = 138544130;
            v57 = v13;
            v58 = 2112;
            v59 = @"CAMERA_IS_UNREACHABLE";
            v60 = 2112;
            v61 = @"%@";
            v62 = 2112;
            v63 = v10;
            goto LABEL_17;
          }

LABEL_18:

          objc_autoreleasePoolPop(v11);
          v21 = 0;
          goto LABEL_19;
        }
      }

      v21 = v9;
LABEL_19:
      v51 = v9;

      v22 = MEMORY[0x277CD1878];
      v23 = [*(a1 + 40) contextSPIUniqueIdentifier];
      v24 = [v23 UUIDString];
      v49 = [v22 tupleWithQueryType:1 uuidString:v24];

      v25 = MEMORY[0x277CD1878];
      v26 = [v5 contextSPIUniqueIdentifier];
      v27 = [v26 UUIDString];
      v50 = [v25 tupleWithQueryType:0 uuidString:v27];

      v28 = MEMORY[0x277CBEB98];
      v55 = v50;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
      v30 = [v28 setWithArray:v29];
      v31 = generateURLForHomeKitObject();

      v32 = [*(a1 + 40) accessoryBulletinContext];
      v33 = [v32 mutableCopy];

      v34 = [v31 absoluteString];
      [v33 setObject:v34 forKeyedSubscript:*MEMORY[0x277CD13D8]];

      v35 = [v5 contextID];
      [v33 setObject:v35 forKeyedSubscript:@"home"];

      v36 = *(a1 + 32);
      v37 = [v5 uuid];
      [v37 UUIDString];
      v38 = v48 = v5;
      v39 = [v36 threadIdentifierForGroupingWithHomeWithUUIDString:v38];

      v40 = [MEMORY[0x277CCAD78] UUID];
      v41 = [v40 UUIDString];

      v42 = [*(a1 + 32) notificationCenter];
      v43 = *(a1 + 48);
      v44 = [v33 copy];
      LOBYTE(v47) = 0;
      v45 = [v42 showNotificationWithTitle:v52 body:v51 threadIdentifier:v39 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v41 date:v43 attachments:0 userInfo:v44 shouldIgnoreDoNotDisturb:v47 interruptionLevel:1 logEventTopic:7];

      [*(a1 + 32) addNotificationRequest:v45 forIdentifier:v41];
      goto LABEL_20;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v17;
      v18 = "%{public}@Accessory without cameraProfiles is not supported for reachability event bulletin";
      goto LABEL_11;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v17;
      v18 = "%{public}@Home manager is not yet configured, bailing insertReachabilityEventBulletinForAccessory";
LABEL_11:
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v14);
LABEL_20:
  v46 = *MEMORY[0x277D85DE8];
}

- (id)insertBulletinForSecureTrigger:(id)a3
{
  v4 = a3;
  v5 = [v4 uuid];
  v6 = [v5 UUIDString];

  v7 = [(HMDBulletinBoard *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDBulletinBoard_insertBulletinForSecureTrigger___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v14 = v4;
  v8 = v6;
  v15 = v8;
  v9 = v4;
  dispatch_async(v7, block);

  v10 = v15;
  v11 = v8;

  return v8;
}

void __51__HMDBulletinBoard_insertBulletinForSecureTrigger___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];

  if (v2)
  {
    v3 = [*(a1 + 40) home];
    v38 = HMDLocalizedStringForKey(@"CONFIRM_EXECUTE_SECURE_TRIGGER_TITLE");
    v4 = MEMORY[0x277CCACA8];
    v5 = HMDLocalizedStringForKey(@"CONFIRM_EXECUTE_SECURE_TRIGGER_BODY");
    v39 = 0;
    v6 = [v3 name];
    v7 = [*(a1 + 40) name];
    v8 = [v4 localizedStringWithValidatedFormat:v5 validFormatSpecifiers:@"%@ %@" error:&v39, v6, v7];
    v9 = v39;

    v10 = v8;
    if (!v8)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138544130;
        v42 = v13;
        v43 = 2112;
        v44 = @"CONFIRM_EXECUTE_SECURE_TRIGGER_BODY";
        v45 = 2112;
        v46 = @"%@ %@";
        v47 = 2112;
        v48 = v9;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v11);
      v10 = @"CONFIRM_EXECUTE_SECURE_TRIGGER_BODY";
    }

    v14 = v10;

    v15 = MEMORY[0x277CD1878];
    v16 = [*(a1 + 40) contextSPIUniqueIdentifier];
    v17 = [v16 UUIDString];
    v18 = [v15 tupleWithQueryType:6 uuidString:v17];

    v19 = MEMORY[0x277CD1878];
    v20 = [v3 contextSPIUniqueIdentifier];
    v21 = [v20 UUIDString];
    v22 = [v19 tupleWithQueryType:0 uuidString:v21];

    v23 = MEMORY[0x277CBEB98];
    v40 = v22;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
    v25 = [v23 setWithArray:v24];
    v26 = generateURLForHomeKitObject();

    v27 = *(a1 + 32);
    v28 = *(a1 + 48);
    v29 = [MEMORY[0x277CBEAA8] date];
    v30 = [*(a1 + 40) bulletinContext];
    v31 = [*(a1 + 40) actionContext];
    v32 = [v27 _insertRequestWithTitle:v38 snapshotData:0 message:v14 requestIdentifier:v28 date:v29 bulletinType:2 actionURL:v26 bulletinContext:v30 actionContext:v31 interruptionLevel:2 logEventTopic:4];
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = *(a1 + 32);
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v36;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, bailing insertBulletinForSecureTrigger.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v33);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)insertBulletinForIncompatibleInvitationFromInviterName:(id)a3 homeName:(id)a4 ownedHomeIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDBulletinBoard *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104__HMDBulletinBoard_insertBulletinForIncompatibleInvitationFromInviterName_homeName_ownedHomeIdentifier___block_invoke;
  v15[3] = &unk_279734870;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(v11, v15);
}

void __104__HMDBulletinBoard_insertBulletinForIncompatibleInvitationFromInviterName_homeName_ownedHomeIdentifier___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];

  if (v2)
  {
    v3 = HMDLocalizedStringForKey(@"INVITE_REQUEST_TITLE");
    v4 = MEMORY[0x277CCACA8];
    if (*(a1 + 40))
    {
      v5 = HMDLocalizedStringForKey(@"INVITE_INCOMPATIBLE_HH1_BODY");
      v36 = 0;
      v6 = [v4 localizedStringWithValidatedFormat:v5 validFormatSpecifiers:@"%@ %@" error:&v36, *(a1 + 48), *(a1 + 40)];
      v7 = v36;

      if (!v6)
      {
        v8 = objc_autoreleasePoolPush();
        v9 = HMFGetOSLogHandle();
        v6 = @"INVITE_INCOMPATIBLE_HH1_BODY";
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138544130;
          v38 = v10;
          v39 = 2112;
          v40 = @"INVITE_INCOMPATIBLE_HH1_BODY";
          v41 = 2112;
          v42 = @"%@ %@";
          v43 = 2112;
          v44 = v7;
LABEL_13:
          _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v15 = HMDLocalizedStringForKey(@"INVITE_INCOMPATIBLE_HH1_NO_HOME_NAME_BODY");
      v35 = 0;
      v6 = [v4 localizedStringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:&v35, *(a1 + 48)];
      v7 = v35;

      if (!v6)
      {
        v8 = objc_autoreleasePoolPush();
        v9 = HMFGetOSLogHandle();
        v6 = @"INVITE_INCOMPATIBLE_HH1_NO_HOME_NAME_BODY";
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138544130;
          v38 = v10;
          v39 = 2112;
          v40 = @"INVITE_INCOMPATIBLE_HH1_NO_HOME_NAME_BODY";
          v41 = 2112;
          v42 = @"%@";
          v43 = 2112;
          v44 = v7;
          goto LABEL_13;
        }

LABEL_14:

        objc_autoreleasePoolPop(v8);
        v16 = 0;
        goto LABEL_15;
      }
    }

    v16 = v6;
LABEL_15:
    v17 = v6;

    v18 = [MEMORY[0x277CBEB38] dictionary];
    v19 = [MEMORY[0x277CCAD78] UUID];
    v20 = [v19 UUIDString];
    [v18 setObject:v20 forKey:@"home"];

    if (*(a1 + 56))
    {
      v21 = [MEMORY[0x277CCACE0] componentsWithString:@"com.apple.Home-private://"];
      [v21 setHost:@"homepodSoftwareUpdate"];
      v22 = [*(a1 + 56) UUIDString];
      v23 = [@"homeId=" stringByAppendingString:v22];
      [v21 setQuery:v23];

      v24 = [v21 URL];
      v25 = [v24 absoluteString];
      [v18 setObject:v25 forKey:*MEMORY[0x277CD13D8]];
    }

    v26 = [*(a1 + 32) threadIdentifierForGroupingWithUnknownHome];
    v27 = [MEMORY[0x277CCAD78] UUID];
    v28 = [v27 UUIDString];

    v29 = [*(a1 + 32) notificationCenter];
    v30 = [MEMORY[0x277CBEAA8] date];
    v31 = [v18 copy];
    LOBYTE(v34) = 0;
    v32 = [v29 showNotificationWithTitle:v3 body:v17 threadIdentifier:v26 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v28 date:v30 attachments:0 userInfo:v31 shouldIgnoreDoNotDisturb:v34 interruptionLevel:1 logEventTopic:22];

    [*(a1 + 32) addNotificationRequest:v32 forIdentifier:v28];
    goto LABEL_18;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v38 = v14;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Home manager is not yet configured, bailing insertBulletinForIncomingInvitation.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
LABEL_18:
  v33 = *MEMORY[0x277D85DE8];
}

- (id)insertBulletinForIncomingInvitation:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v5 UUIDString];

  v7 = [v4 bulletinContext];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = v7;
  v9 = [v4 bulletinContext];
  v10 = [v9 objectForKeyedSubscript:@"homeIncomingInvitation"];

  if (v10)
  {
    v11 = [(HMDBulletinBoard *)self workQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__HMDBulletinBoard_insertBulletinForIncomingInvitation___block_invoke;
    v19[3] = &unk_2797359B0;
    v19[4] = self;
    v20 = v4;
    dispatch_async(v11, v19);

    v12 = v6;
  }

  else
  {
LABEL_4:
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Invalid incoming invitation bulletinContext!", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v12;
}

void __56__HMDBulletinBoard_insertBulletinForIncomingInvitation___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];

  if (v2)
  {
    v3 = [*(a1 + 40) invitationData];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    v6 = HMDLocalizedStringForKey(@"INVITE_REQUEST_TITLE");
    v7 = MEMORY[0x277CCACA8];
    v8 = HMDLocalizedStringForKey(@"CONFIRM_INVITE_TO_HOME");
    v41 = 0;
    v9 = [v5 inviterName];
    v10 = [*(a1 + 40) homeName];
    v11 = [v7 localizedStringWithValidatedFormat:v8 validFormatSpecifiers:@"%@ %@" error:&v41, v9, v10];
    v12 = v41;

    v13 = v11;
    if (!v11)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138544130;
        v43 = v16;
        v44 = 2112;
        v45 = @"CONFIRM_INVITE_TO_HOME";
        v46 = 2112;
        v47 = @"%@ %@";
        v48 = 2112;
        v49 = v12;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v14);
      v13 = @"CONFIRM_INVITE_TO_HOME";
    }

    v38 = v5;
    v17 = v13;

    v18 = [*(a1 + 40) bulletinContext];
    v40 = [v18 objectForKeyedSubscript:@"homeIncomingInvitation"];

    v39 = [MEMORY[0x277CD1878] tupleWithQueryType:4 uuidString:v40];
    v37 = generateURLForHomeKitObject();
    v19 = [MEMORY[0x277CBEB38] dictionary];
    v20 = [v37 absoluteString];
    [v19 setObject:v20 forKey:*MEMORY[0x277CD13D8]];

    v21 = [MEMORY[0x277CCAD78] UUID];
    v22 = [v21 UUIDString];
    [v19 setObject:v22 forKey:@"home"];

    v23 = [*(a1 + 32) threadIdentifierForGroupingWithUnknownHome];
    v24 = [MEMORY[0x277CCAD78] UUID];
    v25 = [v24 UUIDString];

    v26 = [*(a1 + 32) notificationCenter];
    [MEMORY[0x277CBEAA8] date];
    v28 = v27 = v6;
    v29 = [v19 copy];
    LOBYTE(v36) = 0;
    v30 = [v26 showNotificationWithTitle:v27 body:v17 threadIdentifier:v23 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v25 date:v28 attachments:0 userInfo:v29 shouldIgnoreDoNotDisturb:v36 interruptionLevel:1 logEventTopic:11];

    [*(a1 + 32) addNotificationRequest:v30 forIdentifier:v25];
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = *(a1 + 32);
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v34;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Home manager is not yet configured, bailing insertBulletinForIncomingInvitation.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v31);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)insertBulletinsForChangedCharacteristics:(id)a3 modifiedCharacteristics:(id)a4 changedByThisDevice:(BOOL)a5 changeNotificationFromPrimary:(BOOL)a6 completion:(id)a7
{
  v11 = a7;
  v12 = [HMDHome filterAllowedToPostBulletinFromCharacteristics:a3];
  if ([v12 count])
  {
    v13 = [(HMDBulletinBoard *)self workQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __146__HMDBulletinBoard_insertBulletinsForChangedCharacteristics_modifiedCharacteristics_changedByThisDevice_changeNotificationFromPrimary_completion___block_invoke;
    v14[3] = &unk_279724F48;
    v14[4] = self;
    v16 = v11;
    v15 = v12;
    v17 = a5;
    v18 = a6;
    dispatch_async(v13, v14);
  }
}

void __146__HMDBulletinBoard_insertBulletinsForChangedCharacteristics_modifiedCharacteristics_changedByThisDevice_changeNotificationFromPrimary_completion___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];

  if (v2)
  {
    v42 = [MEMORY[0x277CBEB18] array];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v3 = *(a1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v52 objects:v62 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v53;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v53 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v52 + 1) + 8 * i);
          v9 = +[HMDBulletinCategory targetCurrentCharacteristicTypeMap];
          v10 = [v8 type];
          v11 = [v9 objectForKeyedSubscript:v10];

          if (v11)
          {
            [*(a1 + 32) _updateCharacteristicTupleFor:v8 withCurrentType:v11 changedByThisDevice:*(a1 + 56)];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v52 objects:v62 count:16];
      }

      while (v5);
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    obj = *(a1 + 40);
    v12 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v49;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v49 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v48 + 1) + 8 * j);
          v17 = [v16 type];
          v18 = [v16 service];
          v19 = [v18 type];
          if ([HMDBulletinBoard isBulletinSupportedForCharacteristicType:v17 serviceType:v19])
          {
            v20 = [*(a1 + 32) _shouldPostBulletinOnCurrentValueChangeForCharacteristic:v16 includeChangeFromNil:*(a1 + 57)];

            if (v20)
            {
              [v42 addObject:v16];
            }
          }

          else
          {
          }
        }

        v13 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
      }

      while (v13);
    }

    v21 = [MEMORY[0x277CBEB18] array];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v22 = v42;
    v23 = [v22 countByEnumeratingWithState:&v44 objects:v60 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v45;
      do
      {
        v26 = 0;
        do
        {
          if (*v45 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v44 + 1) + 8 * v26);
          if ([HMDBulletinCategory isSensorDetectedCharacteristic:v27, v42])
          {
            v28 = [v27 value];
            v29 = [v28 intValue];

            if (!v29)
            {
              goto LABEL_30;
            }

LABEL_29:
            [v21 addObject:v27];
            goto LABEL_30;
          }

          if (([*(a1 + 32) _hasDuplicateBulletinForCharacteristic:v27] & 1) == 0)
          {
            goto LABEL_29;
          }

LABEL_30:
          ++v26;
        }

        while (v24 != v26);
        v30 = [v22 countByEnumeratingWithState:&v44 objects:v60 count:16];
        v24 = v30;
      }

      while (v30);
    }

    v31 = objc_autoreleasePoolPush();
    v32 = *(a1 + 32);
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v57 = v34;
      v58 = 2112;
      v59 = v21;
      _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@After filtering, actually posting notifications for characteristics: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    if ([v21 count])
    {
      [*(a1 + 32) _insertImageBulletinsForChangedCharacteristics:v21 snapshotData:0 completion:0];
      v35 = *(a1 + 48);
      if (v35)
      {
        (*(v35 + 16))();
      }
    }
  }

  else
  {
    v36 = objc_autoreleasePoolPush();
    v37 = *(a1 + 32);
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543362;
      v57 = v39;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, bailing insertBulletinsForChangedCharacteristics.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v36);
    v40 = *(a1 + 48);
    if (v40)
    {
      (*(v40 + 16))();
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)insertImageBulletinsForChangedCharacteristics:(id)a3 snapshotData:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [HMDHome filterAllowedToPostBulletinFromCharacteristics:a3];
  if ([v10 count])
  {
    v11 = [(HMDBulletinBoard *)self workQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __90__HMDBulletinBoard_insertImageBulletinsForChangedCharacteristics_snapshotData_completion___block_invoke;
    v12[3] = &unk_279734578;
    v12[4] = self;
    v15 = v9;
    v13 = v10;
    v14 = v8;
    dispatch_async(v11, v12);
  }
}

void __90__HMDBulletinBoard_insertImageBulletinsForChangedCharacteristics_snapshotData_completion___block_invoke(uint64_t a1)
{
  v1 = a1;
  v36 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];

  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = *(v1 + 40);
    v5 = [v4 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v28;
      *&v6 = 138543618;
      v25 = v6;
      do
      {
        v9 = 0;
        v26 = v7;
        do
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v27 + 1) + 8 * v9);
          if ([*(v1 + 32) _hasDuplicateBulletinForSnapshotCharacteristic:{v10, v25}])
          {
            v11 = objc_autoreleasePoolPush();
            v12 = *(v1 + 32);
            v13 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v14 = v8;
              v15 = v1;
              v16 = v4;
              v18 = v17 = v3;
              *buf = v25;
              v32 = v18;
              v33 = 2112;
              v34 = v10;
              _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Not creating bulletin because it already exists with the same characteristic update: %@", buf, 0x16u);

              v3 = v17;
              v4 = v16;
              v1 = v15;
              v8 = v14;
              v7 = v26;
            }

            objc_autoreleasePoolPop(v11);
          }

          else
          {
            [v3 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v4 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v7);
    }

    [*(v1 + 32) _insertImageBulletinsForChangedCharacteristics:v3 snapshotData:*(v1 + 48) completion:*(v1 + 56)];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = *(v1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, bailing insertImageBulletinsForChangedCharacteristics.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v23 = *(v1 + 56);
    if (v23)
    {
      (*(v23 + 16))(v23, MEMORY[0x277CBEBF8]);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)archive
{
  v3 = [(HMDBulletinBoard *)self persistentStoreClass];

  [(objc_class *)v3 archiveBulletinBoard:self];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self notificationRequestsByIdentifier];
  [v4 encodeObject:v5 forKey:@"HMD.bulletinRequests"];
}

- (HMDBulletinBoard)initWithCoder:(id)a3
{
  v13[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v13[2] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"HMD.bulletinRequests"];

    if (v9)
    {
      v10 = [(HMDBulletinBoard *)v5 notificationRequestsByIdentifier];
      [v10 setDictionary:v9];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)configureWithHomeManager:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring with home manager: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDBulletinBoard *)v6 workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__HMDBulletinBoard_configureWithHomeManager___block_invoke;
  v12[3] = &unk_2797359B0;
  v12[4] = v6;
  v13 = v4;
  v10 = v4;
  dispatch_async(v9, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __45__HMDBulletinBoard_configureWithHomeManager___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHomeManager:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [v2 notificationCenter];
  [v3 setDelegate:v2];

  v4 = [*(a1 + 32) notificationCenter];
  v5 = +[HMDBulletinBoard notificationCategories];
  v6 = [v4 configureWithNotificationCategories:v5];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HMDBulletinBoard_configureWithHomeManager___block_invoke_2;
  v8[3] = &unk_279733BC0;
  v8[4] = *(a1 + 32);
  v7 = [v6 addCompletionBlock:v8];
}

void __45__HMDBulletinBoard_configureWithHomeManager___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) isConfiguredFuture];
  [v1 finishWithNoResult];
}

- (HMDBulletinBoard)initWithNotificationCenter:(id)a3 fileManager:(id)a4 workQueue:(id)a5 doorbellBulletinUtilities:(id)a6 logEventSubmitter:(id)a7 featuresDataSource:(id)a8
{
  v31 = a3;
  v30 = a4;
  v29 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v32.receiver = self;
  v32.super_class = HMDBulletinBoard;
  v18 = [(HMDBulletinBoard *)&v32 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_notificationCenter, a3);
    objc_storeStrong(&v19->_fileManager, a4);
    objc_storeStrong(&v19->_workQueue, a5);
    objc_storeStrong(&v19->_doorbellBulletinUtilities, a6);
    objc_storeStrong(&v19->_logEventSubmitter, a7);
    objc_storeStrong(&v19->_featuresDataSource, a8);
    v20 = [MEMORY[0x277CBEB38] dictionary];
    notificationRequestsByIdentifier = v19->_notificationRequestsByIdentifier;
    v19->_notificationRequestsByIdentifier = v20;

    v22 = [MEMORY[0x277CBEB38] dictionary];
    characteristicTuplesByKey = v19->_characteristicTuplesByKey;
    v19->_characteristicTuplesByKey = v22;

    v24 = objc_alloc_init(MEMORY[0x277D2C900]);
    isConfiguredFuture = v19->_isConfiguredFuture;
    v19->_isConfiguredFuture = v24;

    v26 = objc_opt_class();
    persistentStoreClass = v19->_persistentStoreClass;
    v19->_persistentStoreClass = v26;
  }

  return v19;
}

- (HMDBulletinBoard)init
{
  v3 = HMDispatchQueueNameString();
  v4 = [v3 UTF8String];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create(v4, v5);

  v7 = +[HMDMetricsManager sharedLogEventSubmitter];
  v8 = [HMDUserNotificationCenter alloc];
  v9 = *MEMORY[0x277CCFE40];
  v10 = [(HMDUserNotificationCenter *)v8 initWithBundleIdentifier:v9 logEventSubmitter:v7];

  v11 = objc_alloc_init(HMDFileManager);
  v12 = objc_alloc_init(HMDDoorbellBulletinUtilities);
  v13 = +[HMDFeaturesDataSource defaultDataSource];
  v14 = [(HMDBulletinBoard *)self initWithNotificationCenter:v10 fileManager:v11 workQueue:v6 doorbellBulletinUtilities:v12 logEventSubmitter:v7 featuresDataSource:v13];

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t136[0] != -1)
  {
    dispatch_once(logCategory__hmf_once_t136, &__block_literal_global_347);
  }

  v3 = logCategory__hmf_once_v137;

  return v3;
}

uint64_t __31__HMDBulletinBoard_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v137;
  logCategory__hmf_once_v137 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (BOOL)presentationValueOfCharacteristic:(id)a3 equalTo:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 metadata];
  v8 = [v7 stepValue];
  v9 = [v5 value];
  v10 = [v5 type];
  v11 = [HMDBulletinCategory presentationValueForValue:v9 type:v10];

  if (!v11)
  {
    v11 = [v5 value];
  }

  v12 = compareCharacteristicValue(v11, v6, 4, v8);

  return v12;
}

+ (unint64_t)interruptionLevelForChangedCharacteristic:(id)a3
{
  v3 = a3;
  if (interruptionLevelForChangedCharacteristic__onceToken != -1)
  {
    dispatch_once(&interruptionLevelForChangedCharacteristic__onceToken, &__block_literal_global_50);
  }

  v4 = [v3 service];
  v5 = interruptionLevelForChangedCharacteristic__criticalCharacteristicsByService;
  v6 = [v4 type];
  v7 = [v5 objectForKeyedSubscript:v6];

  v8 = interruptionLevelForChangedCharacteristic__timeSensitiveCharacteristicsByService;
  v9 = [v4 type];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v7 && ([v3 type], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v7, "containsObject:", v11), v11, v12))
  {
    v13 = [v3 type];
    v14 = [v13 isEqualToString:*MEMORY[0x277CFE620]];

    if (v14)
    {
      v15 = [v3 value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      v18 = [v17 intValue];
      if (v18 == 4)
      {
        v19 = 3;
      }

      else
      {
        v19 = 1;
      }
    }

    else
    {
      v19 = 3;
    }
  }

  else if (v10)
  {
    v20 = [v3 type];
    v21 = [v10 containsObject:v20];

    if (v21)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

void __62__HMDBulletinBoard_interruptionLevelForChangedCharacteristic___block_invoke()
{
  v20[4] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277CFE898];
  v18 = *MEMORY[0x277CFE620];
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v20[0] = v0;
  v19[1] = *MEMORY[0x277CFE8B0];
  v17 = *MEMORY[0x277CFE5D0];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v20[1] = v1;
  v19[2] = *MEMORY[0x277CFE8C8];
  v16 = *MEMORY[0x277CFE668];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v20[2] = v2;
  v19[3] = *MEMORY[0x277CFE8E8];
  v15 = *MEMORY[0x277CFE6E8];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v20[3] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v5 = interruptionLevelForChangedCharacteristic__criticalCharacteristicsByService;
  interruptionLevelForChangedCharacteristic__criticalCharacteristicsByService = v4;

  v13[0] = *MEMORY[0x277CFE8A8];
  v12 = *MEMORY[0x277CFE5C8];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  v14[0] = v6;
  v13[1] = *MEMORY[0x277CFE840];
  v11 = *MEMORY[0x277CFE660];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
  v14[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v9 = interruptionLevelForChangedCharacteristic__timeSensitiveCharacteristicsByService;
  interruptionLevelForChangedCharacteristic__timeSensitiveCharacteristicsByService = v8;

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)createImageAttachmentByHardLinkingFile:(id)a3 fileManager:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [v7 heroFrameStoreDirectoryURL];
    v37 = 0;
    v10 = [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v37];
    v11 = v37;
    if (v10)
    {
      v12 = [v6 URLByDeletingPathExtension];
      v13 = [v12 lastPathComponent];

      v14 = MEMORY[0x277CCACA8];
      v15 = [MEMORY[0x277CCAD78] UUID];
      v16 = [v14 stringWithFormat:@"link_%@_%@.%@", v15, v13, @"jpg"];

      v17 = [v9 URLByAppendingPathComponent:v16];
      v36 = v11;
      v18 = [v8 linkItemAtURL:v6 toURL:v17 error:&v36];
      v19 = v36;

      if (v18)
      {
        v20 = [HMDBulletinBoard attachmentsWithFileURL:v17];
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = a1;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v32 = v35 = v29;
          *buf = 138544130;
          v39 = v32;
          v40 = 2112;
          v41 = v17;
          v42 = 2112;
          v43 = v6;
          v44 = 2112;
          v45 = v19;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to create hard link: %@ to file: %@ with error %@", buf, 0x2Au);

          v29 = v35;
        }

        objc_autoreleasePoolPop(v29);
        v20 = MEMORY[0x277CBEBF8];
      }

      v11 = v19;
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = a1;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138544130;
        v39 = v28;
        v40 = 2112;
        v41 = v6;
        v42 = 2112;
        v43 = v9;
        v44 = 2112;
        v45 = v11;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create attachment for file: %@, because failed to create directory at URL %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v25);
      v20 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = a1;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Returning empty attachments because nil fileURL was passed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v20 = MEMORY[0x277CBEBF8];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)attachmentsWithFileURL:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = MEMORY[0x277CE1F90];
    v6 = [MEMORY[0x277CCAD78] UUID];
    v7 = [v6 UUIDString];
    v17 = 0;
    v8 = [v5 attachmentWithIdentifier:v7 URL:v4 options:0 error:&v17];
    v9 = v17;

    if (v8)
    {
      v18 = v8;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = a1;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543874;
        v20 = v14;
        v21 = 2112;
        v22 = v4;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to create attachment with URL %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      v10 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (id)bulletinSupportedCharacteristicsForService:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[HMDBulletinBoard _supportedSecureServices];
  v5 = [v3 type];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = +[HMDBulletinBoard _supportedNonSecureServices];
    v10 = [v3 type];
    v8 = [v9 objectForKeyedSubscript:v10];
  }

  if (!v8)
  {
    v14 = 0;
    goto LABEL_21;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [v3 characteristics];
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v12)
  {

LABEL_20:
    v14 = [MEMORY[0x277CBEB98] set];
    goto LABEL_21;
  }

  v13 = v12;
  v22 = v3;
  v14 = 0;
  v15 = *v24;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v24 != v15)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v23 + 1) + 8 * i);
      v18 = [v17 type];
      v19 = [v8 containsObject:v18];

      if (v19)
      {
        if (!v14)
        {
          v14 = [MEMORY[0x277CBEB58] set];
        }

        [v14 addObject:v17];
      }
    }

    v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v13);

  v3 = v22;
  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_21:

  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (BOOL)isCriticalNonSecureServiceType:(id)a3
{
  v3 = isCriticalNonSecureServiceType__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&isCriticalNonSecureServiceType__onceToken, &__block_literal_global_43_27621);
  }

  v5 = [isCriticalNonSecureServiceType__criticalServices containsObject:v4];

  return v5;
}

void __51__HMDBulletinBoard_isCriticalNonSecureServiceType___block_invoke()
{
  v5[5] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CFE8A8];
  v5[0] = *MEMORY[0x277CFE840];
  v5[1] = v0;
  v1 = *MEMORY[0x277CFE8C8];
  v5[2] = *MEMORY[0x277CFE8B0];
  v5[3] = v1;
  v5[4] = *MEMORY[0x277CFE8E8];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:5];
  v3 = isCriticalNonSecureServiceType__criticalServices;
  isCriticalNonSecureServiceType__criticalServices = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isBulletinSupportedForNonSecureCharacteristicType:(id)a3 serviceType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[HMDBulletinBoard _supportedNonSecureServices];
  v8 = [v7 objectForKeyedSubscript:v6];

  if (v8)
  {
    if (v5)
    {
      v9 = [v8 containsObject:v5];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isBulletinSupportedForCharacteristicType:(id)a3 serviceType:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[HMDBulletinBoard _supportedSecureServices];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = v8 && (!v5 || ([v8 containsObject:v5] & 1) != 0) || +[HMDBulletinBoard isBulletinSupportedForNonSecureCharacteristicType:serviceType:](HMDBulletinBoard, "isBulletinSupportedForNonSecureCharacteristicType:serviceType:", v5, v6);
  return v9;
}

+ (id)_supportedNonSecureServices
{
  if (_supportedNonSecureServices_onceToken != -1)
  {
    dispatch_once(&_supportedNonSecureServices_onceToken, &__block_literal_global_41_27623);
  }

  v3 = _supportedNonSecureServices_supportedNonSecureServices;

  return v3;
}

void __47__HMDBulletinBoard__supportedNonSecureServices__block_invoke()
{
  v23[9] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277CFE840];
  v21 = *MEMORY[0x277CFE660];
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v23[0] = v0;
  v22[1] = *MEMORY[0x277CFE8A8];
  v20 = *MEMORY[0x277CFE5C8];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v23[1] = v1;
  v22[2] = *MEMORY[0x277CFE8B0];
  v19 = *MEMORY[0x277CFE5D0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
  v23[2] = v2;
  v22[3] = *MEMORY[0x277CFE8B8];
  v18 = *MEMORY[0x277CFE5D8];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  v23[3] = v3;
  v22[4] = *MEMORY[0x277CFE8C8];
  v17 = *MEMORY[0x277CFE668];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v23[4] = v4;
  v22[5] = *MEMORY[0x277CFE8D8];
  v16 = *MEMORY[0x277CFE678];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
  v23[5] = v5;
  v22[6] = *MEMORY[0x277CFE8E0];
  v15 = *MEMORY[0x277CFE690];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v23[6] = v6;
  v22[7] = *MEMORY[0x277CFE8E8];
  v14 = *MEMORY[0x277CFE6E8];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
  v23[7] = v7;
  v22[8] = *MEMORY[0x277CFE928];
  v8 = *MEMORY[0x277CFE738];
  v13[0] = *MEMORY[0x277CFE610];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v23[8] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:9];
  v11 = _supportedNonSecureServices_supportedNonSecureServices;
  _supportedNonSecureServices_supportedNonSecureServices = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)_supportedSecureServices
{
  if (_supportedSecureServices_onceToken != -1)
  {
    dispatch_once(&_supportedSecureServices_onceToken, &__block_literal_global_38);
  }

  v3 = _supportedSecureServices_supportedSecureServices;

  return v3;
}

void __44__HMDBulletinBoard__supportedSecureServices__block_invoke()
{
  v20[6] = *MEMORY[0x277D85DE8];
  v19[0] = *MEMORY[0x277CFE838];
  v1 = *MEMORY[0x277CFE738];
  v18[0] = *MEMORY[0x277CFE610];
  v0 = v18[0];
  v18[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v20[0] = v2;
  v19[1] = *MEMORY[0x277CFE858];
  v3 = *MEMORY[0x277CFE608];
  v17[0] = *MEMORY[0x277CFE5E8];
  v17[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v20[1] = v4;
  v19[2] = *MEMORY[0x277CFE880];
  v5 = *MEMORY[0x277CFE730];
  v16[0] = v3;
  v16[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v20[2] = v6;
  v19[3] = *MEMORY[0x277CFE898];
  v15 = *MEMORY[0x277CFE620];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
  v20[3] = v7;
  v19[4] = *MEMORY[0x277CFE920];
  v14[0] = v0;
  v14[1] = v1;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v20[4] = v8;
  v19[5] = @"00000260-0000-1000-8000-0026BB765291";
  v13 = *MEMORY[0x277CFE5B0];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v20[5] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:6];
  v11 = _supportedSecureServices_supportedSecureServices;
  _supportedSecureServices_supportedSecureServices = v10;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)notificationCategories
{
  v32[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  if (_os_feature_enabled_impl())
  {
    v3 = [MEMORY[0x277CE1F88] iconWithSystemImageName:@"checkmark.circle"];
    v4 = [MEMORY[0x277CE1F88] iconWithSystemImageName:@"xmark.circle"];
    v5 = [MEMORY[0x277CE1F88] iconWithSystemImageName:@"apple.bubble.middle.bottom"];
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3 = 0;
  }

  v27 = v5;
  v30 = v3;
  v6 = MEMORY[0x277CE1F80];
  v7 = HMDLocalizedStringForKey(@"CONFIRM_EXECUTE_SECURE_TRIGGER_ACTION_YES");
  v29 = [v6 actionWithIdentifier:@"trigger_execute" title:v7 options:0 icon:v3];

  v8 = MEMORY[0x277CE1F80];
  v9 = HMDLocalizedStringForKey(@"CONFIRM_EXECUTE_SECURE_TRIGGER_ACTION_NO");
  v28 = [v8 actionWithIdentifier:@"trigger_doNotExecute" title:v9 options:0 icon:v4];

  v10 = MEMORY[0x277CE1F98];
  v32[0] = v29;
  v32[1] = v28;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v12 = MEMORY[0x277CBEBF8];
  v13 = [v10 categoryWithIdentifier:@"HMDBBSecureTrigger" actions:v11 intentIdentifiers:MEMORY[0x277CBEBF8] options:0x20000000];

  [v2 addObject:v13];
  v14 = [MEMORY[0x277CE1F98] categoryWithIdentifier:@"HMDBBNormalType" actions:v12 intentIdentifiers:v12 options:0x20000000];
  [v2 addObject:v14];
  v15 = MEMORY[0x277CE1F80];
  v16 = HMDLocalizedStringForKey(@"CAMERA_PROVIDE_RECORDING_FEEDBACK");
  v17 = [v15 actionWithIdentifier:@"provide_cameraRecordingFeedback" title:v16 options:0 icon:v5];

  v18 = MEMORY[0x277CE1F98];
  v31 = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v20 = [v18 categoryWithIdentifier:@"HMDBulletinCategoryProvideCameraRecordingFeedback" actions:v19 intentIdentifiers:v12 options:0x20000000];

  [v2 addObject:v20];
  v21 = [MEMORY[0x277CE1F98] categoryWithIdentifier:@"HomeAppBulletinCategory" actions:v12 intentIdentifiers:v12 options:536870913];
  [v2 addObject:v21];
  v22 = [MEMORY[0x277CE1F98] categoryWithIdentifier:@"HomeAppBulletinAudioNotificationCategory" actions:v12 intentIdentifiers:v12 options:536870913];
  [v2 addObject:v22];
  v23 = [MEMORY[0x277CE1F98] categoryWithIdentifier:@"HMDBulletinCategorySuppressNotificationOnWatch" actions:v12 intentIdentifiers:v12 options:0x20000000];
  [v2 addObject:v23];
  v24 = [v2 copy];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)sharedBulletinBoard
{
  if (sharedBulletinBoard_onceToken != -1)
  {
    dispatch_once(&sharedBulletinBoard_onceToken, &__block_literal_global_27639);
  }

  v3 = sharedBulletinBoard__bulletinBoard;

  return v3;
}

void __39__HMDBulletinBoard_sharedBulletinBoard__block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  if (+[HMDDeviceCapabilities supportsUserNotifications])
  {
    v0 = +[HMDPersistentStore unarchiveBulletinBoard];
    v1 = sharedBulletinBoard__bulletinBoard;
    sharedBulletinBoard__bulletinBoard = v0;

    if (!sharedBulletinBoard__bulletinBoard)
    {
      v2 = objc_autoreleasePoolPush();
      v3 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = HMFGetLogIdentifier();
        v8 = 138543362;
        v9 = v4;
        _os_log_impl(&dword_2531F8000, v3, OS_LOG_TYPE_INFO, "%{public}@Failed to unarchive HMDBulletinBoard", &v8, 0xCu);
      }

      objc_autoreleasePoolPop(v2);
      v5 = objc_alloc_init(HMDBulletinBoard);
      v6 = sharedBulletinBoard__bulletinBoard;
      sharedBulletinBoard__bulletinBoard = v5;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (NSString)threadIdentifierForGroupingWithUnknownHome
{
  v2 = [MEMORY[0x277CCAD78] UUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)threadIdentifierForGroupingWithHomeWithUUIDString:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(HMDBulletinBoard *)self featuresDataSource];
  v7 = [v6 isBulletinNotificationGroupsEnabled];

  if (!v7)
  {
    v28 = v4;
    goto LABEL_16;
  }

  v8 = [(HMDBulletinBoard *)self notificationRequestsSortedByDate];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __88__HMDBulletinBoard_ThreadIdentifier__threadIdentifierForGroupingWithHomeWithUUIDString___block_invoke;
  v36[3] = &unk_279733388;
  v37 = v4;
  v9 = [v8 na_firstObjectPassingTest:v36];

  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 content];
    v15 = [v14 date];
    *buf = 138543874;
    v39 = v13;
    v40 = 2112;
    v41 = v9;
    v42 = 2112;
    v43 = v15;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Found last notification posted for this home: %@ with date: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v16 = [(HMDBulletinBoard *)v11 bulletinNotificationsGroupTimeInterval];
  v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-v16];
  v18 = [v9 content];
  v19 = [v18 date];

  v20 = [v19 compare:v17];
  if (!v16 || v20 != 1)
  {

LABEL_12:
    v29 = [MEMORY[0x277CCAD78] UUID];
    v28 = [v29 UUIDString];

    v30 = objc_autoreleasePoolPush();
    v31 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v33;
      v40 = 2112;
      v41 = v28;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Returning a new threadIdentifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    goto LABEL_15;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = v11;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    v25 = [v9 content];
    v26 = [v25 threadIdentifier];
    *buf = 138543618;
    v39 = v24;
    v40 = 2112;
    v41 = v26;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Returning thread identifier of last notification: %@ because it was posted in allowed window", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v27 = [v9 content];
  v28 = [v27 threadIdentifier];

LABEL_15:
LABEL_16:

  v34 = *MEMORY[0x277D85DE8];

  return v28;
}

uint64_t __88__HMDBulletinBoard_ThreadIdentifier__threadIdentifierForGroupingWithHomeWithUUIDString___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 content];
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"home"];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  return v6;
}

- (int64_t)bulletinNotificationsGroupTimeInterval
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"HMDBulletinNotificationsGroupTimeInterval"];
  v4 = [v3 numberValue];
  v5 = [v4 integerValue];

  return v5;
}

@end