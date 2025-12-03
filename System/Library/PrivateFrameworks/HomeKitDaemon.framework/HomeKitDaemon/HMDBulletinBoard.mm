@interface HMDBulletinBoard
+ (BOOL)isBulletinSupportedForCharacteristicType:(id)type serviceType:(id)serviceType;
+ (BOOL)isBulletinSupportedForMatterPath:(id)path accessory:(id)accessory;
+ (BOOL)isBulletinSupportedForNonSecureCharacteristicType:(id)type serviceType:(id)serviceType;
+ (BOOL)isCriticalNonSecureServiceType:(id)type;
+ (BOOL)presentationValueOfCharacteristic:(id)characteristic equalTo:(id)to;
+ (id)_supportedNonSecureServices;
+ (id)_supportedSecureServices;
+ (id)attachmentsWithFileURL:(id)l;
+ (id)bulletinSupportedCharacteristicsForService:(id)service;
+ (id)bulletinSupportedMatterPathsForAccessory:(id)accessory endpointID:(id)d;
+ (id)createImageAttachmentByHardLinkingFile:(id)file fileManager:(id)manager;
+ (id)logCategory;
+ (id)messageForDoorLockAlarmEvent:(id)event alarmCode:(unsigned __int8)code;
+ (id)messageForLockOperationEvent:(id)event personName:(id)name lockOperationType:(unsigned __int8)type ecosystemName:(id)ecosystemName;
+ (id)notificationCategories;
+ (id)sharedBulletinBoard;
+ (unint64_t)interruptionLevelForChangedCharacteristic:(id)characteristic;
+ (void)messageAndTitleForLockUserChangeEvent:(id *)event title:(id *)title accessory:(id)accessory lockDataType:(unsigned __int8)type dataOperationType:(unsigned __int8)operationType ecosystemName:(id)name isAffectedUser:(BOOL)user;
- (BOOL)_hasDuplicateBulletinForCharacteristic:(id)characteristic;
- (BOOL)_hasDuplicateBulletinForSnapshotCharacteristic:(id)characteristic;
- (BOOL)_shouldPostBulletinOnCurrentValueChangeForCharacteristic:(id)characteristic includeChangeFromNil:(BOOL)nil;
- (BOOL)_shouldSkipBulletinForChangedCharacteristic:(id)characteristic;
- (BOOL)hasDoorbellPressNotificationToUpdateWithSignificantEventBulletin:(id)bulletin;
- (HMDBulletinBoard)init;
- (HMDBulletinBoard)initWithCoder:(id)coder;
- (HMDBulletinBoard)initWithNotificationCenter:(id)center fileManager:(id)manager workQueue:(id)queue doorbellBulletinUtilities:(id)utilities logEventSubmitter:(id)submitter featuresDataSource:(id)source;
- (HMDHomeManager)homeManager;
- (NSArray)notificationRequestsSortedByDate;
- (NSString)threadIdentifierForGroupingWithUnknownHome;
- (id)_copyItemAtURL:(id)l toDirectory:(id)directory;
- (id)_doorbellPressNotificationsNearDate:(id)date forCameraProfile:(id)profile;
- (id)_insertRequestWithTitle:(id)title snapshotData:(id)data message:(id)message requestIdentifier:(id)identifier date:(id)date bulletinType:(unint64_t)type actionURL:(id)l bulletinContext:(id)self0 actionContext:(id)self1 interruptionLevel:(unint64_t)self2 logEventTopic:(int64_t)self3;
- (id)insertBulletinForIncomingInvitation:(id)invitation;
- (id)insertBulletinForSecureTrigger:(id)trigger;
- (id)messageForChangedCharacteristic:(id)characteristic withSignificantEvents:(id)events;
- (id)messageForGarageDoorCharacteristic:(id)characteristic personName:(id)name;
- (id)messageForLockCharacteristic:(id)characteristic personName:(id)name;
- (id)messageForSecuritySystemCharacteristic:(id)characteristic personName:(id)name;
- (id)messageForWindowCharacteristic:(id)characteristic personName:(id)name;
- (id)notificationRequestsByIdentifierForCameraClipUUIDs:(id)ds;
- (id)removeRedundantSignificantEventNotificationsForSignificantEvents:(id)events;
- (id)threadIdentifierForGroupingWithHomeWithUUIDString:(id)string;
- (id)titleNameForChangedCharacteristic:(id)characteristic;
- (id)updateBulletinForFirmwareUpdateInHome:(id)home;
- (int64_t)bulletinNotificationsGroupTimeInterval;
- (void)_handleDidReceiveNotificationResponse:(id)response completionHandler:(id)handler;
- (void)_insertImageBulletinsForChangedCharacteristics:(id)characteristics attributedUsers:(id)users snapshotData:(id)data completion:(id)completion;
- (void)_submitCameraClipSignificantEventDetailsFromBulletin:(id)bulletin;
- (void)_submitDoorbellEventDetailsFromBulletinWithDate:(id)date significantEvents:(id)events;
- (void)_updateCameraClipSignificantEventBulletinContent:(id)content withPreviewImageFilePathURL:(id)l;
- (void)_updateCharacteristicTupleFor:(id)for withCurrentType:(id)type changedByThisDevice:(BOOL)device;
- (void)_updateDoorbellPressNotificationsWithSignificantEventBulletin:(id)bulletin;
- (void)_updateDoorbellUserInfo:(id)info withSignificantEventUserInfo:(id)userInfo;
- (void)_updateMessageForDoorbellPressNotificationRequestWithIdentifier:(id)identifier usingSignificantEvents:(id)events cameraProfile:(id)profile;
- (void)addNotificationRequest:(id)request forIdentifier:(id)identifier;
- (void)archive;
- (void)bulletinTitle:(id *)title andMessage:(id *)message forAccessory:(id)accessory attributePath:(id)path value:(id)value fields:(id)fields;
- (void)configureWithHomeManager:(id)manager;
- (void)cullBulletinsToCount:(unint64_t)count;
- (void)encodeWithCoder:(id)coder;
- (void)fetchAreUserNotificationsEnabledWithCompletion:(id)completion;
- (void)insertAccessCodeAddedBulletinForHome:(id)home;
- (void)insertAccessCodeChangedBulletinForHome:(id)home;
- (void)insertAccessCodeRemovedBulletinForHome:(id)home;
- (void)insertAudioAnalysisEventNotification:(id)notification;
- (void)insertBulletinForChangedSecureClassCharacteristic:(id)characteristic attributedUser:(id)user;
- (void)insertBulletinForDoorLockAlarm:(id)alarm alarmCode:(unsigned __int8)code flow:(id)flow;
- (void)insertBulletinForIncompatibleInvitationFromInviterName:(id)name homeName:(id)homeName;
- (void)insertBulletinForLockOperation:(id)operation userDisplayName:(id)name lockOperationType:(unsigned __int8)type ecosystemName:(id)ecosystemName flow:(id)flow;
- (void)insertBulletinForLockUserChange:(id)change lockDataType:(unsigned __int8)type dataOperationType:(unsigned __int8)operationType ecosystemName:(id)name isAffectedUser:(BOOL)user flow:(id)flow;
- (void)insertBulletinForMatterAttributeWithAccessory:(id)accessory attributePath:(id)path value:(id)value fields:(id)fields;
- (void)insertBulletinsForChangedCharacteristics:(id)characteristics modifiedCharacteristics:(id)modifiedCharacteristics changedByThisDevice:(BOOL)device changeNotificationFromPrimary:(BOOL)primary completion:(id)completion;
- (void)insertBulletinsForMatterFirmwareUpdateInstalledInHome:(id)home hmdHAPAccessory:(id)accessory;
- (void)insertCameraAccessModeChangedBulletin:(id)bulletin;
- (void)insertCameraClipSignificantEventBulletin:(id)bulletin;
- (void)insertClimateBulletinForAccessory:(id)accessory title:(id)title body:(id)body actionURL:(id)l;
- (void)insertClimateBulletinForHome:(id)home title:(id)title body:(id)body completion:(id)completion;
- (void)insertConnectedCHIPEcosystemsChangedBulletin:(id)bulletin;
- (void)insertHH2AutoMigratedSuccessBulletin;
- (void)insertHH2DuplicateUserModelBulletinForHome:(id)home user:(id)user;
- (void)insertHH2SoftwareUpdateCompleteEventBulletinForAccessory:(id)accessory;
- (void)insertHomeHubReachabilityBulletinForHome:(id)home reachable:(BOOL)reachable hasMultipleResidents:(BOOL)residents;
- (void)insertImageBulletinsForChangedCharacteristics:(id)characteristics snapshotData:(id)data completion:(id)completion;
- (void)insertLockOnboardingBulletinForHome:(id)home serviceType:(id)type;
- (void)insertNewRMVLanguageBulletinForHome:(id)home language:(id)language;
- (void)insertReachabilityEventBulletinForAccessory:(id)accessory reachable:(BOOL)reachable date:(id)date;
- (void)insertUserPreferredHomeHubReachabilityBulletinForHome:(id)home reachable:(BOOL)reachable electedPrimary:(id)primary previousPrimary:(id)previousPrimary;
- (void)insertWalletKeyExpressModeSetUpBulletinForHome:(id)home;
- (void)insertWalletKeySupportAddedBulletinForAccessory:(id)accessory;
- (void)notificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler;
- (void)refreshHomeBadgeNumber;
- (void)removeAllBulletins;
- (void)removeBulletinWithRecordID:(id)d;
- (void)removeBulletinsForAccessory:(id)accessory;
- (void)removeBulletinsForHome:(id)home;
- (void)removeBulletinsForService:(id)service;
- (void)removeBulletinsForTrigger:(id)trigger;
- (void)removeBulletinsUsingPredicate:(id)predicate;
- (void)removeCameraClipBulletinsForCameraProfile:(id)profile;
- (void)removeImageFilesForNotificationRequests:(id)requests;
- (void)removeWalletKeyOnboardingBulletinForHome:(id)home;
- (void)resolveDisplayNameForChangedCharacteristic:(id)characteristic completion:(id)completion;
- (void)updateAudioAnalysisEventNotification:(id)notification;
- (void)updateContent:(id)content forNotificationWithRequestIdentifier:(id)identifier;
- (void)updateDoorbellPressNotificationsWithSignificantEventBulletin:(id)bulletin;
@end

@implementation HMDBulletinBoard

- (NSString)threadIdentifierForGroupingWithUnknownHome
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  return uUIDString;
}

- (id)threadIdentifierForGroupingWithHomeWithUUIDString:(id)string
{
  v44 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  featuresDataSource = [(HMDBulletinBoard *)self featuresDataSource];
  isBulletinNotificationGroupsEnabled = [featuresDataSource isBulletinNotificationGroupsEnabled];

  if (!isBulletinNotificationGroupsEnabled)
  {
    uUIDString = stringCopy;
    goto LABEL_16;
  }

  notificationRequestsSortedByDate = [(HMDBulletinBoard *)self notificationRequestsSortedByDate];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __88__HMDBulletinBoard_ThreadIdentifier__threadIdentifierForGroupingWithHomeWithUUIDString___block_invoke;
  v36[3] = &unk_278672CF8;
  v37 = stringCopy;
  v9 = [notificationRequestsSortedByDate na_firstObjectPassingTest:v36];

  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    content = [v9 content];
    date = [content date];
    *buf = 138543874;
    v39 = v13;
    v40 = 2112;
    v41 = v9;
    v42 = 2112;
    v43 = date;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Found last notification posted for this home: %@ with date: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  bulletinNotificationsGroupTimeInterval = [(HMDBulletinBoard *)selfCopy bulletinNotificationsGroupTimeInterval];
  v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-bulletinNotificationsGroupTimeInterval];
  content2 = [v9 content];
  date2 = [content2 date];

  v20 = [date2 compare:v17];
  if (!bulletinNotificationsGroupTimeInterval || v20 != 1)
  {

LABEL_12:
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v30 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v33;
      v40 = 2112;
      v41 = uUIDString;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Returning a new threadIdentifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v30);
    goto LABEL_15;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = selfCopy;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    content3 = [v9 content];
    threadIdentifier = [content3 threadIdentifier];
    *buf = 138543618;
    v39 = v24;
    v40 = 2112;
    v41 = threadIdentifier;
    _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Returning thread identifier of last notification: %@ because it was posted in allowed window", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  content4 = [v9 content];
  uUIDString = [content4 threadIdentifier];

LABEL_15:
LABEL_16:

  v34 = *MEMORY[0x277D85DE8];

  return uUIDString;
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
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDBulletinNotificationsGroupTimeInterval"];
  numberValue = [v3 numberValue];
  integerValue = [numberValue integerValue];

  return integerValue;
}

- (HMDHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)notificationCenter:(id)center didReceiveNotificationResponse:(id)response withCompletionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__HMDBulletinBoard_notificationCenter_didReceiveNotificationResponse_withCompletionHandler___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v13 = responseCopy;
  v14 = handlerCopy;
  v10 = handlerCopy;
  v11 = responseCopy;
  dispatch_async(workQueue, block);
}

- (void)_handleDidReceiveNotificationResponse:(id)response completionHandler:(id)handler
{
  v60 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  handlerCopy = handler;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notification = [responseCopy notification];
  request = [notification request];
  content = [request content];
  userInfo = [content userInfo];

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543874;
    v55 = v16;
    v56 = 2112;
    v57 = responseCopy;
    v58 = 2112;
    v59 = userInfo;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Did receive notification response: %@ with context: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  notification2 = [responseCopy notification];
  request2 = [notification2 request];
  content2 = [request2 content];
  categoryIdentifier = [content2 categoryIdentifier];

  if ([categoryIdentifier isEqualToString:@"HomeAppBulletinCategory"])
  {
    actionIdentifier = [responseCopy actionIdentifier];
    v22 = [actionIdentifier isEqualToString:*MEMORY[0x277CE20F0]];

    if (v22)
    {
      notification3 = [responseCopy notification];
      request3 = [notification3 request];
      identifier = [request3 identifier];
      v53 = identifier;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v53 count:1];
      [(HMDBulletinBoard *)selfCopy removeNotificationRequestsWithIdentifiers:v26 shouldDeleteAttachments:1];

LABEL_22:
      handlerCopy[2](handlerCopy);
      goto LABEL_23;
    }
  }

  if (![categoryIdentifier isEqualToString:@"HMDBBSecureTrigger"])
  {
    goto LABEL_22;
  }

  v27 = [userInfo objectForKeyedSubscript:@"home.uuid.internal"];
  v28 = [userInfo objectForKeyedSubscript:@"trigger.uuid.internal"];
  actionIdentifier2 = [responseCopy actionIdentifier];
  v30 = actionIdentifier2;
  if (!v27 || !v28 || !actionIdentifier2)
  {
    handlerCopy[2](handlerCopy);

LABEL_17:
    goto LABEL_23;
  }

  v49 = actionIdentifier2;
  v50 = v28;
  homeManager = [(HMDBulletinBoard *)selfCopy homeManager];
  v32 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v27];
  v33 = [homeManager _homeWithUUID:v32];

  if (!v33)
  {
    v39 = objc_autoreleasePoolPush();
    v40 = selfCopy;
    v41 = HMFGetOSLogHandle();
    v28 = v50;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      *buf = 138543618;
      v55 = v42;
      v56 = 2112;
      v57 = v27;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@No home with UUID %@ found", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v39);
    handlerCopy[2](handlerCopy);

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
    v51[3] = &unk_27868A1D8;
    v51[4] = selfCopy;
    v52 = v36;
    [v52 userDidConfirmExecute:v38 completionHandler:v51];
  }

  else
  {
    v43 = objc_autoreleasePoolPush();
    v48 = selfCopy;
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
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@No trigger with UUID %@ found", buf, 0x16u);

      v43 = v47;
    }

    objc_autoreleasePoolPop(v43);
    handlerCopy[2](handlerCopy);
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
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Trigger execution error after user confirms: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    +[HMDBulletinUIManager presentExecutionErrorDialogForTrigger:partialSuccess:](HMDBulletinUIManager, "presentExecutionErrorDialogForTrigger:partialSuccess:", *(a1 + 40), [v3 code] == 64);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_updateDoorbellUserInfo:(id)info withSignificantEventUserInfo:(id)userInfo
{
  v27 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  userInfoCopy = userInfo;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = *MEMORY[0x277CD13D8];
  v11 = [userInfoCopy objectForKeyedSubscript:*MEMORY[0x277CD13D8]];
  [dictionary setObject:v11 forKeyedSubscript:v10];

  v12 = *MEMORY[0x277CCF300];
  v13 = [userInfoCopy objectForKeyedSubscript:*MEMORY[0x277CCF300]];
  [dictionary setObject:v13 forKeyedSubscript:v12];

  v14 = *MEMORY[0x277CCF310];
  v15 = [userInfoCopy objectForKeyedSubscript:*MEMORY[0x277CCF310]];
  [dictionary setObject:v15 forKeyedSubscript:v14];

  v16 = *MEMORY[0x277CCF2F8];
  v17 = [userInfoCopy objectForKeyedSubscript:*MEMORY[0x277CCF2F8]];
  [dictionary setObject:v17 forKeyedSubscript:v16];

  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v21;
    v25 = 2112;
    v26 = dictionary;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Merging user info: %@ from significant event notification into doorbell notification", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  [infoCopy addEntriesFromDictionary:dictionary];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_submitCameraClipSignificantEventDetailsFromBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  significantEvents = [bulletinCopy significantEvents];

  v15 = [significantEvents na_map:&__block_literal_global_624];

  allObjects = [v15 allObjects];
  v8 = [allObjects na_map:&__block_literal_global_626];

  v9 = [v15 count] != 0;
  v10 = [v8 count];
  v11 = [v15 count] - v10;
  logEventSubmitter = [(HMDBulletinBoard *)self logEventSubmitter];
  v13 = [HMDFamiliarFacesBulletinLogEvent alloc];
  v14 = [(HMDFamiliarFacesBulletinLogEvent *)v13 initWithContainsFaceClassification:v9 numberOfKnownPersons:v10 numberOfUnknownPersons:v11 bulletinReason:*MEMORY[0x277CCF370] doorbellPressed:0 secondsFromDoorbellToFaceClassification:0.0];
  [logEventSubmitter submitLogEvent:v14];
}

id __73__HMDBulletinBoard__submitCameraClipSignificantEventDetailsFromBulletin___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 person];
  v3 = [v2 name];

  return v3;
}

- (void)_submitDoorbellEventDetailsFromBulletinWithDate:(id)date significantEvents:(id)events
{
  dateCopy = date;
  eventsCopy = events;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = [eventsCopy na_filter:&__block_literal_global_612];

  v9 = [v8 na_map:&__block_literal_global_615];
  allObjects = [v8 allObjects];
  v11 = [allObjects sortedArrayUsingComparator:&__block_literal_global_618];
  firstObject = [v11 firstObject];
  dateOfOccurrence = [firstObject dateOfOccurrence];

  if (dateOfOccurrence)
  {
    [dateOfOccurrence timeIntervalSinceDate:dateCopy];
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  allObjects2 = [v9 allObjects];
  v17 = [allObjects2 na_map:&__block_literal_global_621];

  v18 = [v9 count] != 0;
  v19 = [v17 count];
  v20 = [v9 count] - v19;
  logEventSubmitter = [(HMDBulletinBoard *)self logEventSubmitter];
  v22 = [HMDFamiliarFacesBulletinLogEvent alloc];
  v23 = [(HMDFamiliarFacesBulletinLogEvent *)v22 initWithContainsFaceClassification:v18 numberOfKnownPersons:v19 numberOfUnknownPersons:v20 bulletinReason:*MEMORY[0x277CCF358] doorbellPressed:1 secondsFromDoorbellToFaceClassification:v15];
  [logEventSubmitter submitLogEvent:v23];
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

- (void)_updateCameraClipSignificantEventBulletinContent:(id)content withPreviewImageFilePathURL:(id)l
{
  lCopy = l;
  contentCopy = content;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (lCopy)
  {
    fileManager = [(HMDBulletinBoard *)self fileManager];
    heroFrameStoreDirectoryURL = [fileManager heroFrameStoreDirectoryURL];
    v10 = [(HMDBulletinBoard *)self _copyItemAtURL:lCopy toDirectory:heroFrameStoreDirectoryURL];
  }

  else
  {
    v10 = 0;
  }

  filePathURL = [v10 filePathURL];
  fileManager2 = [(HMDBulletinBoard *)self fileManager];
  v13 = [HMDBulletinBoard createImageAttachmentByHardLinkingFile:filePathURL fileManager:fileManager2];

  [contentCopy setAttachments:v13];
  userInfo = [contentCopy userInfo];
  v15 = [userInfo mutableCopy];

  filePathURL2 = [v10 filePathURL];
  path = [filePathURL2 path];
  [v15 setObject:path forKeyedSubscript:*MEMORY[0x277CD26B8]];

  [contentCopy setUserInfo:v15];
}

- (id)_copyItemAtURL:(id)l toDirectory:(id)directory
{
  v40 = *MEMORY[0x277D85DE8];
  lCopy = l;
  directoryCopy = directory;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  fileManager = [(HMDBulletinBoard *)self fileManager];
  v31 = 0;
  v10 = [fileManager createDirectoryAtURL:directoryCopy withIntermediateDirectories:1 attributes:0 error:&v31];
  v11 = v31;

  if (v10)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v14 = [uUIDString stringByAppendingPathExtension:@"jpg"];

    v15 = [directoryCopy URLByAppendingPathComponent:v14];
    fileManager2 = [(HMDBulletinBoard *)self fileManager];
    v30 = v11;
    v17 = [fileManager2 copyItemAtURL:lCopy toURL:v15 error:&v30];
    v18 = v30;

    if (v17)
    {
      v19 = v15;
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      selfCopy = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138544130;
        v33 = v27;
        v34 = 2112;
        v35 = lCopy;
        v36 = 2112;
        v37 = v15;
        v38 = 2112;
        v39 = v18;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to item from %@ to %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v24);
      v19 = 0;
    }

    v11 = v18;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v23;
      v34 = 2112;
      v35 = directoryCopy;
      v36 = 2112;
      v37 = v11;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to create directory at URL %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)_doorbellPressNotificationsNearDate:(id)date forCameraProfile:(id)profile
{
  dateCopy = date;
  profileCopy = profile;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationRequestsByIdentifier = [(HMDBulletinBoard *)self notificationRequestsByIdentifier];
  allValues = [notificationRequestsByIdentifier allValues];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__HMDBulletinBoard__doorbellPressNotificationsNearDate_forCameraProfile___block_invoke;
  v15[3] = &unk_278672D70;
  v16 = dateCopy;
  v17 = profileCopy;
  v11 = profileCopy;
  v12 = dateCopy;
  v13 = [allValues na_filter:v15];

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

- (id)notificationRequestsByIdentifierForCameraClipUUIDs:(id)ds
{
  dsCopy = ds;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationRequestsByIdentifier = [(HMDBulletinBoard *)self notificationRequestsByIdentifier];
  v7 = [notificationRequestsByIdentifier copy];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__HMDBulletinBoard_notificationRequestsByIdentifierForCameraClipUUIDs___block_invoke;
  v11[3] = &unk_278672D48;
  v12 = v7;
  v8 = v7;
  v9 = [dsCopy na_map:v11];

  return v9;
}

id __71__HMDBulletinBoard_notificationRequestsByIdentifierForCameraClipUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 UUIDString];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

- (void)_updateMessageForDoorbellPressNotificationRequestWithIdentifier:(id)identifier usingSignificantEvents:(id)events cameraProfile:(id)profile
{
  v54 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  eventsCopy = events;
  profileCopy = profile;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationRequestsByIdentifier = [(HMDBulletinBoard *)self notificationRequestsByIdentifier];
  v13 = [notificationRequestsByIdentifier objectForKeyedSubscript:identifierCopy];

  if (v13)
  {
    content = [v13 content];
    v15 = [content mutableCopy];

    date = [v15 date];
    [(HMDBulletinBoard *)self _submitDoorbellEventDetailsFromBulletinWithDate:date significantEvents:eventsCopy];

    doorbellBulletinUtilities = [(HMDBulletinBoard *)self doorbellBulletinUtilities];
    v18 = [doorbellBulletinUtilities localizedDoorbellMessageForSignificantEvents:eventsCopy];
    [v15 setBody:v18];

    userInfo = [v15 userInfo];
    v20 = *MEMORY[0x277CD26B8];
    v21 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CD26B8]];

    if (v21)
    {
      v22 = MEMORY[0x277CBEBC0];
      userInfo2 = [v15 userInfo];
      v24 = [userInfo2 objectForKeyedSubscript:v20];
      v25 = [v22 fileURLWithPath:v24];

      fileManager = [(HMDBulletinBoard *)self fileManager];
      v27 = [HMDBulletinBoard createImageAttachmentByHardLinkingFile:v25 fileManager:fileManager];
      [v15 setAttachments:v27];
    }

    v28 = objc_autoreleasePoolPush();
    selfCopy = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      body = [v15 body];
      [v15 userInfo];
      v33 = v43 = profileCopy;
      [v15 attachments];
      v42 = v28;
      v34 = identifierCopy;
      v36 = v35 = eventsCopy;
      *buf = 138544386;
      v45 = v31;
      v46 = 2112;
      v47 = v13;
      v48 = 2112;
      v49 = body;
      v50 = 2112;
      v51 = v33;
      v52 = 2112;
      v53 = v36;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Updating doorbell press notification %@ with body: %@, userInfo: %@, attachments: %@", buf, 0x34u);

      eventsCopy = v35;
      identifierCopy = v34;
      v28 = v42;

      profileCopy = v43;
    }

    objc_autoreleasePoolPop(v28);
    [(HMDBulletinBoard *)selfCopy updateContent:v15 forNotificationWithRequestIdentifier:identifierCopy];
  }

  else
  {
    v37 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v40;
      v46 = 2112;
      v47 = identifierCopy;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Did not find request with identifier: %@, so doing nothing", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_updateDoorbellPressNotificationsWithSignificantEventBulletin:(id)bulletin
{
  v75 = *MEMORY[0x277D85DE8];
  bulletinCopy = bulletin;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dateOfOccurrence = [bulletinCopy dateOfOccurrence];
  camera = [bulletinCopy camera];
  v8 = [(HMDBulletinBoard *)self _doorbellPressNotificationsNearDate:dateOfOccurrence forCameraProfile:camera];

  if (([v8 hmf_isEmpty] & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v65 = v12;
      v66 = 2112;
      v67 = v8;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Found recent doorbell press notifications to update: %@", buf, 0x16u);
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
      v55 = bulletinCopy;
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v61 != v54)
          {
            objc_enumerationMutation(obj);
          }

          v58 = *(*(&v60 + 1) + 8 * i);
          content = [v58 content];
          v15 = [content mutableCopy];

          previewImageFilePathURL = [bulletinCopy previewImageFilePathURL];

          userInfo = [v15 userInfo];
          v18 = [userInfo objectForKeyedSubscript:v57];
          v19 = v18;
          if (previewImageFilePathURL)
          {

            if (v19)
            {
              v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v19];
              fileManager = [(HMDBulletinBoard *)selfCopy fileManager];
              v59 = 0;
              v22 = [fileManager removeItemAtURL:v20 error:&v59];
              v23 = v59;

              if ((v22 & 1) == 0)
              {
                v24 = objc_autoreleasePoolPush();
                v25 = selfCopy;
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
                  _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to remove old notification image: %@ with error: %@", buf, 0x20u);

                  v24 = v52;
                }

                objc_autoreleasePoolPop(v24);
              }
            }

            previewImageFilePathURL2 = [bulletinCopy previewImageFilePathURL];
            [(HMDBulletinBoard *)selfCopy _updateCameraClipSignificantEventBulletinContent:v15 withPreviewImageFilePathURL:previewImageFilePathURL2];
          }

          else
          {

            if (!v19)
            {
              goto LABEL_20;
            }

            v29 = MEMORY[0x277CBEBC0];
            userInfo2 = [v15 userInfo];
            v31 = [userInfo2 objectForKeyedSubscript:v57];
            v19 = [v29 fileURLWithPath:v31];

            previewImageFilePathURL2 = [(HMDBulletinBoard *)selfCopy fileManager];
            v32 = [HMDBulletinBoard createImageAttachmentByHardLinkingFile:v19 fileManager:previewImageFilePathURL2];
            [v15 setAttachments:v32];
          }

LABEL_20:
          date = [v15 date];
          significantEvents = [bulletinCopy significantEvents];
          [(HMDBulletinBoard *)selfCopy _submitDoorbellEventDetailsFromBulletinWithDate:date significantEvents:significantEvents];

          significantEvents2 = [bulletinCopy significantEvents];
          LODWORD(significantEvents) = [significantEvents2 na_any:&__block_literal_global_606];

          if (significantEvents)
          {
            userInfo3 = [v15 userInfo];
            v37 = [userInfo3 mutableCopy];

            userInfo4 = [bulletinCopy userInfo];
            [(HMDBulletinBoard *)selfCopy _updateDoorbellUserInfo:v37 withSignificantEventUserInfo:userInfo4];

            [v15 setUserInfo:v37];
          }

          doorbellBulletinUtilities = [(HMDBulletinBoard *)selfCopy doorbellBulletinUtilities];
          significantEvents3 = [bulletinCopy significantEvents];
          v41 = [doorbellBulletinUtilities localizedDoorbellMessageForSignificantEvents:significantEvents3];
          [v15 setBody:v41];

          v42 = objc_autoreleasePoolPush();
          v43 = selfCopy;
          v44 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            v45 = HMFGetLogIdentifier();
            body = [v15 body];
            userInfo5 = [v15 userInfo];
            attachments = [v15 attachments];
            *buf = 138544386;
            v65 = v45;
            v66 = 2112;
            v67 = v58;
            v68 = 2112;
            v69 = body;
            v70 = 2112;
            v71 = userInfo5;
            v72 = 2112;
            v73 = attachments;
            _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Updating doorbell press notification %@ with body: %@, userInfo: %@, attachments: %@", buf, 0x34u);
          }

          objc_autoreleasePoolPop(v42);
          identifier = [v58 identifier];
          [(HMDBulletinBoard *)v43 updateContent:v15 forNotificationWithRequestIdentifier:identifier];

          bulletinCopy = v55;
        }

        v56 = [obj countByEnumeratingWithState:&v60 objects:v74 count:16];
      }

      while (v56);
    }

    v8 = v51;
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldPostBulletinOnCurrentValueChangeForCharacteristic:(id)characteristic includeChangeFromNil:(BOOL)nil
{
  v99 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDBulletinBoard *)self _shouldSkipBulletinForChangedCharacteristic:characteristicCopy])
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v82 = v11;
      v83 = 2112;
      v84 = characteristicCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Skipping bulletin for characteristic: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_9;
  }

  if (nil)
  {
    v12 = 0;
  }

  else
  {
    previousValue = [(__CFString *)characteristicCopy previousValue];
    v12 = previousValue == 0;
  }

  v14 = +[HMDBulletinCategory targetCurrentCharacteristicTypeMap];
  type = [(__CFString *)characteristicCopy type];
  v16 = [v14 objectForKeyedSubscript:type];

  if (!v16)
  {
    value = HMDBulletinBoard;
    service = [(__CFString *)characteristicCopy service];
    contextID = [service contextID];
    type2 = [(__CFString *)characteristicCopy type];
    v24 = [HMDBulletinBoard characteristicTupleKeyFromServiceContextID:contextID currentType:type2];

    type3 = [(__CFString *)characteristicCopy type];
    v26 = [type3 isEqualToString:*MEMORY[0x277CFE608]];
    if (v26)
    {
      value = [(__CFString *)characteristicCopy value];
      if ([(__objc2_class *)value isEqual:&unk_283E71FF0])
      {

LABEL_32:
        v45 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          v48 = HMFGetLogIdentifier();
          instanceID = [(__CFString *)characteristicCopy instanceID];
          value2 = [(__CFString *)characteristicCopy value];
          *buf = 138543874;
          v82 = v48;
          v83 = 2112;
          v84 = instanceID;
          v85 = 2112;
          v86 = value2;
          _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@Should post bulletin for characteristic instanceId: %@ value:%@ because this is lock jammed or security system triggered", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v45);
        characteristicTuplesByKey = [(HMDBulletinBoard *)selfCopy2 characteristicTuplesByKey];
        [characteristicTuplesByKey removeObjectForKey:v24];
        LOBYTE(changedByThisDevice2) = 1;
LABEL_60:

        goto LABEL_10;
      }
    }

    type4 = [(__CFString *)characteristicCopy type];
    v80 = v24;
    if ([type4 isEqualToString:*MEMORY[0x277CFE620]])
    {
      value3 = [(__CFString *)characteristicCopy value];
      v29 = [value3 isEqual:&unk_283E72008];

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

    characteristicTuplesByKey2 = [(HMDBulletinBoard *)self characteristicTuplesByKey];
    characteristicTuplesByKey = [characteristicTuplesByKey2 objectForKeyedSubscript:v24];

    if (!characteristicTuplesByKey)
    {
      v36 = objc_autoreleasePoolPush();
      selfCopy3 = self;
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

        instanceID2 = [(__CFString *)characteristicCopy instanceID];
        value4 = [(__CFString *)characteristicCopy value];
        v43 = HMFBooleanToString();
        v44 = HMFBooleanToString();
        *buf = 138544642;
        v82 = v39;
        v83 = 2112;
        v84 = v40;
        v85 = 2112;
        v86 = instanceID2;
        v87 = 2112;
        v88 = value4;
        v89 = 2112;
        v90 = v43;
        v91 = 2112;
        v92 = v44;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Should %@ bulletin for characteristic instanceId: %@ value:%@ includeChangeFromNil: %@ because tuple not present and initial update is %@", buf, 0x3Eu);

        v24 = v80;
        v36 = v77;
      }

      objc_autoreleasePoolPop(v36);
      characteristicTuplesByKey = 0;
      LOBYTE(changedByThisDevice2) = !v12;
      goto LABEL_60;
    }

    targetStateNumber = [characteristicTuplesByKey targetStateNumber];
    stateNumber = [(__CFString *)characteristicCopy stateNumber];
    v34 = HAPCompareStateNumberWithRollover();

    if (v34 == 1)
    {
      v35 = 1;
      goto LABEL_24;
    }

    targetValue = [characteristicTuplesByKey targetValue];
    v52 = [HMDBulletinBoard presentationValueOfCharacteristic:characteristicCopy equalTo:targetValue];

    if (v52)
    {
      LOBYTE(changedByThisDevice2) = ([characteristicTuplesByKey changedByThisDevice] | v12) ^ 1;
      type5 = [(__CFString *)characteristicCopy type];
      if ([type5 isEqualToString:*MEMORY[0x277CFE5E8]])
      {
        value5 = [(__CFString *)characteristicCopy value];
        if ([value5 integerValue] == 2)
        {
          v35 = v34;
          targetValue2 = [characteristicTuplesByKey targetValue];
          integerValue = [targetValue2 integerValue];

          if (!integerValue)
          {
            goto LABEL_55;
          }

LABEL_50:
          v24 = v80;
LABEL_54:
          characteristicTuplesByKey3 = [(HMDBulletinBoard *)self characteristicTuplesByKey];
          [characteristicTuplesByKey3 removeObjectForKey:v24];

          goto LABEL_55;
        }

        v24 = v80;
      }

      v35 = v34;

      goto LABEL_54;
    }

    targetStateNumber2 = [characteristicTuplesByKey targetStateNumber];
    if (targetStateNumber2)
    {
      v58 = targetStateNumber2;
      stateNumber2 = [(__CFString *)characteristicCopy stateNumber];
      v60 = stateNumber2;
      if (!stateNumber2 || v34)
      {
      }

      else
      {
        changedByThisDevice = [characteristicTuplesByKey changedByThisDevice];

        if (!changedByThisDevice)
        {
          v35 = 0;
          LOBYTE(changedByThisDevice2) = 0;
          goto LABEL_55;
        }
      }
    }

    v35 = v34;
    targetValue3 = [characteristicTuplesByKey targetValue];
    if (targetValue3)
    {
      v63 = targetValue3;
      changedByThisDevice2 = [characteristicTuplesByKey changedByThisDevice];

      if (!changedByThisDevice2)
      {
        goto LABEL_55;
      }
    }

    if ([characteristicTuplesByKey changedByThisDevice])
    {
LABEL_24:
      LOBYTE(changedByThisDevice2) = 0;
LABEL_55:
      v65 = objc_autoreleasePoolPush();
      selfCopy4 = self;
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
        targetValue4 = [characteristicTuplesByKey targetValue];
        targetStateNumber3 = [characteristicTuplesByKey targetStateNumber];
        v76 = HMFBooleanToString();
        [characteristicTuplesByKey changedByThisDevice];
        v69 = HMFBooleanToString();
        HMFBooleanToString();
        v70 = v79 = selfCopy4;
        v71 = HMFBooleanToString();
        v72 = HMFBooleanToString();
        *buf = 138545410;
        v82 = v78;
        v83 = 2112;
        v84 = v75;
        v85 = 2112;
        v86 = targetValue4;
        v87 = 2112;
        v88 = targetStateNumber3;
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
        _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_INFO, "%{public}@Should post bulletin: Target/Current - Current is: %@, Cached Target Value: %@ Cached Target State: %@ waitForTargetMatch: %@ changedByThisDevice: %@ initialUpdate: %@, shouldPostBulletin: %@, includeChangeFromNil: %@", buf, 0x5Cu);

        selfCopy4 = v79;
      }

      objc_autoreleasePoolPop(v65);
      v24 = v80;
      goto LABEL_60;
    }

    LOBYTE(changedByThisDevice2) = 1;
    goto LABEL_50;
  }

LABEL_9:
  LOBYTE(changedByThisDevice2) = 0;
LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
  return changedByThisDevice2 & 1;
}

- (BOOL)_shouldSkipBulletinForChangedCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  service = [characteristicCopy service];
  type = [characteristicCopy type];
  if ([type isEqualToString:*MEMORY[0x277CFE678]])
  {
    bulletinBoardNotification = [service bulletinBoardNotification];
    notificationServiceGroup = [bulletinBoardNotification notificationServiceGroup];
    cameraProfiles = [notificationServiceGroup cameraProfiles];
    v9 = [cameraProfiles count];

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

  type2 = [characteristicCopy type];
  if (![type2 isEqualToString:*MEMORY[0x277CFE660]])
  {
LABEL_10:

    goto LABEL_11;
  }

  type3 = [service type];
  if (([type3 isEqualToString:*MEMORY[0x277CFE840]] & 1) == 0)
  {

    goto LABEL_10;
  }

  bulletinBoardNotification2 = [service bulletinBoardNotification];
  notificationServiceGroup2 = [bulletinBoardNotification2 notificationServiceGroup];
  cameraProfiles2 = [notificationServiceGroup2 cameraProfiles];
  v15 = [cameraProfiles2 count];

  if (v15)
  {
    goto LABEL_19;
  }

LABEL_11:
  type4 = [characteristicCopy type];
  if (![type4 isEqualToString:*MEMORY[0x277CFE5B0]])
  {
LABEL_16:

    goto LABEL_17;
  }

  type5 = [service type];
  if (([type5 isEqualToString:@"00000260-0000-1000-8000-0026BB765291"] & 1) == 0)
  {

    goto LABEL_16;
  }

  value = [characteristicCopy value];
  intValue = [value intValue];

  if (intValue)
  {
    goto LABEL_19;
  }

LABEL_17:
  type6 = [characteristicCopy type];
  if ([type6 isEqualToString:*MEMORY[0x277CFE5E8]])
  {
    value2 = [characteristicCopy value];
    integerValue = [value2 integerValue];

    if (integerValue == 3)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  type7 = [characteristicCopy type];
  if ([type7 isEqualToString:*MEMORY[0x277CFE608]])
  {
    value3 = [characteristicCopy value];
    if ([value3 integerValue])
    {
      value4 = [characteristicCopy value];
      if ([value4 integerValue] == 1)
      {
        v23 = 0;
      }

      else
      {
        value5 = [characteristicCopy value];
        v23 = [value5 integerValue] != 2;
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

- (void)_updateCharacteristicTupleFor:(id)for withCurrentType:(id)type changedByThisDevice:(BOOL)device
{
  v45 = *MEMORY[0x277D85DE8];
  forCopy = for;
  typeCopy = type;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  service = [forCopy service];
  v11 = [service findCharacteristicWithType:typeCopy];
  stateNumber = [forCopy stateNumber];
  if (!stateNumber)
  {
    goto LABEL_7;
  }

  v13 = stateNumber;
  stateNumber2 = [v11 stateNumber];

  if (!stateNumber2)
  {
    goto LABEL_7;
  }

  stateNumber3 = [v11 stateNumber];
  stateNumber4 = [forCopy stateNumber];
  v17 = HAPCompareStateNumberWithRollover();

  if (v17 == 1)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      stateNumber5 = [forCopy stateNumber];
      stateNumber6 = [v11 stateNumber];
      *buf = 138543874;
      v40 = v21;
      v41 = 2112;
      v42 = stateNumber5;
      v43 = 2112;
      v44 = stateNumber6;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Not creating tuple because target state number is stale: %@:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
  }

  else
  {
LABEL_7:
    v38 = v11;
    contextID = [service contextID];
    v25 = [HMDBulletinBoard characteristicTupleKeyFromServiceContextID:contextID currentType:typeCopy];

    characteristicTuplesByKey = [(HMDBulletinBoard *)self characteristicTuplesByKey];
    v27 = [characteristicTuplesByKey objectForKeyedSubscript:v25];

    if (v27)
    {
      targetValue = [v27 targetValue];
      v29 = [HMDBulletinBoard presentationValueOfCharacteristic:forCopy equalTo:targetValue];

      if (v29)
      {
        [v27 changedByThisDevice];
      }
    }

    value = [forCopy value];
    type = [forCopy type];
    value2 = [HMDBulletinCategory presentationValueForValue:value type:type];

    if (!value2)
    {
      value2 = [forCopy value];
    }

    contextID2 = [service contextID];
    stateNumber7 = [forCopy stateNumber];
    v35 = [HMDBulletinCharacteristicTuple tupleWithServiceContextID:"tupleWithServiceContextID:currentType:targetValue:targetStateNumber:changedByThisDevice:" currentType:contextID2 targetValue:? targetStateNumber:? changedByThisDevice:?];
    characteristicTuplesByKey2 = [(HMDBulletinBoard *)self characteristicTuplesByKey];
    [characteristicTuplesByKey2 setObject:v35 forKeyedSubscript:v25];

    v11 = v38;
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (BOOL)_hasDuplicateBulletinForSnapshotCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationRequestsSortedByDate = [(HMDBulletinBoard *)self notificationRequestsSortedByDate];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__HMDBulletinBoard__hasDuplicateBulletinForSnapshotCharacteristic___block_invoke;
  v20[3] = &unk_278672CF8;
  v7 = characteristicCopy;
  v21 = v7;
  v8 = [notificationRequestsSortedByDate na_firstObjectPassingTest:v20];

  if (!v8)
  {
    goto LABEL_8;
  }

  type = [v7 type];
  if (![type isEqualToString:*MEMORY[0x277CFE660]])
  {
    goto LABEL_7;
  }

  service = [v7 service];
  type2 = [service type];
  v12 = [type2 isEqualToString:*MEMORY[0x277CFE840]];

  if (!v12)
  {
    goto LABEL_8;
  }

  content = [v8 content];
  userInfo = [content userInfo];
  type = [userInfo objectForKeyedSubscript:@"characteristicValueUpdatedTime"];

  if (!type)
  {
    goto LABEL_8;
  }

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  if ([type isEqualToDate:distantPast])
  {

LABEL_7:
    goto LABEL_8;
  }

  lastKnownValueUpdateTime = [v7 lastKnownValueUpdateTime];
  v19 = [type isEqualToDate:lastKnownValueUpdateTime];

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

- (BOOL)_hasDuplicateBulletinForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationRequestsSortedByDate = [(HMDBulletinBoard *)self notificationRequestsSortedByDate];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __59__HMDBulletinBoard__hasDuplicateBulletinForCharacteristic___block_invoke;
  v40[3] = &unk_278672CF8;
  v7 = characteristicCopy;
  v41 = v7;
  v8 = [notificationRequestsSortedByDate na_firstObjectPassingTest:v40];

  if (v8)
  {
    value = [v7 value];
    type = [v7 type];
    v11 = [HMDBulletinCategory presentationValueForValue:value type:type];

    content = [v8 content];
    userInfo = [content userInfo];
    v14 = [userInfo objectForKeyedSubscript:@"characteristicValue"];
    content2 = [v8 content];
    userInfo2 = [content2 userInfo];
    v17 = [userInfo2 objectForKeyedSubscript:@"characteristicType"];
    v18 = [HMDBulletinCategory presentationValueForValue:v14 type:v17];

    metadata = [v7 metadata];
    stepValue = [metadata stepValue];
    if (!compareCharacteristicValue(v11, v18, 4, stepValue))
    {
      v29 = 0;
LABEL_13:

      goto LABEL_14;
    }

    stateNumber = [v7 stateNumber];
    content3 = [v8 content];
    userInfo3 = [content3 userInfo];
    v24 = [userInfo3 objectForKeyedSubscript:@"stateNumber"];

    if (stateNumber | v24)
    {
      if (!HMFEqualObjects())
      {
        goto LABEL_11;
      }

      date = [MEMORY[0x277CBEAA8] date];
      content4 = [v8 content];
      date2 = [content4 date];
      [date timeIntervalSinceDate:date2];
      v28 = v27;
    }

    else
    {
      date3 = [MEMORY[0x277CBEAA8] date];
      content5 = [v8 content];
      [content5 date];
      v39 = v18;
      v32 = v24;
      v33 = stateNumber;
      v35 = v34 = v11;
      [date3 timeIntervalSinceDate:v35];
      v28 = v36;

      v11 = v34;
      stateNumber = v33;
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

- (id)_insertRequestWithTitle:(id)title snapshotData:(id)data message:(id)message requestIdentifier:(id)identifier date:(id)date bulletinType:(unint64_t)type actionURL:(id)l bulletinContext:(id)self0 actionContext:(id)self1 interruptionLevel:(unint64_t)self2 logEventTopic:(int64_t)self3
{
  v76 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  dataCopy = data;
  messageCopy = message;
  identifierCopy = identifier;
  dateCopy = date;
  lCopy = l;
  contextCopy = context;
  actionContextCopy = actionContext;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v70 = contextCopy;
  v24 = [contextCopy mutableCopy];
  v69 = actionContextCopy;
  if (!dataCopy)
  {
    v68 = 0;
    if (!lCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  v25 = *MEMORY[0x277CD26B8];
  v26 = [dataCopy objectForKeyedSubscript:*MEMORY[0x277CD26B8]];
  [v24 setValue:v26 forKey:v25];

  v27 = [dataCopy objectForKeyedSubscript:@"kCameraSessionID"];
  [v24 setValue:v27 forKey:@"kCameraSessionID"];

  v28 = *MEMORY[0x277CD26B0];
  v29 = [dataCopy objectForKeyedSubscript:*MEMORY[0x277CD26B0]];
  [v24 setValue:v29 forKey:v28];

  v30 = [dataCopy objectForKeyedSubscript:v25];
  if (v30)
  {
    v31 = [MEMORY[0x277CBEBC0] fileURLWithPath:v30];
    fileManager = [(HMDBulletinBoard *)self fileManager];
    v68 = [HMDBulletinBoard createImageAttachmentByHardLinkingFile:v31 fileManager:fileManager];

    v33 = objc_autoreleasePoolPush();
    selfCopy = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v73 = v36;
      v74 = 2112;
      v75 = v68;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Adding attachments: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    actionContextCopy = v69;
  }

  else
  {
    v68 = 0;
  }

  if (lCopy)
  {
LABEL_10:
    v37 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v73 = v40;
      v74 = 2112;
      v75 = lCopy;
      _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Setting default action with URL: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    absoluteString = [lCopy absoluteString];
    [v24 setObject:absoluteString forKey:*MEMORY[0x277CD13D8]];
  }

LABEL_13:
  v42 = 0;
  v64 = lCopy;
  if (!type)
  {
    v55 = &HMDBulletinCategoryNormalType;
    goto LABEL_23;
  }

  if (type != 2)
  {
    if (type == 1)
    {
      v43 = [actionContextCopy objectForKeyedSubscript:@"categoryID"];

      if (v43)
      {
        v44 = [actionContextCopy objectForKeyedSubscript:@"categoryID"];
        v45 = [actionContextCopy objectForKeyedSubscript:@"bulletinActionButtonDescription"];
        [v24 setObject:v45 forKeyedSubscript:@"bulletinActionButtonDescription"];

        v46 = *MEMORY[0x277CCF308];
        v47 = [actionContextCopy objectForKeyedSubscript:*MEMORY[0x277CCF308]];
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

  v48 = [actionContextCopy objectForKeyedSubscript:@"buttonCategory"];
  v49 = [v48 isEqualToNumber:&unk_283E71FD8];

  if (!v49)
  {
    v42 = 0;
LABEL_25:
    v50 = 0;
    goto LABEL_26;
  }

  v50 = [actionContextCopy objectForKeyedSubscript:@"buttonCategory"];
  if (!v50)
  {
LABEL_35:
    v42 = 1;
    goto LABEL_26;
  }

  v51 = v50;
  v52 = [actionContextCopy objectForKeyedSubscript:@"bulletinActionButtonDescription"];

  if (!v52)
  {
    v50 = 0;
    goto LABEL_35;
  }

  v53 = [actionContextCopy objectForKeyedSubscript:@"bulletinActionButtonDescription"];
  [v24 setValue:v53 forKey:@"bulletinActionButtonDescription"];

  v54 = [actionContextCopy objectForKeyedSubscript:@"buttonCategory"];
  [v24 setValue:v54 forKey:@"buttonCategory"];

  v42 = 1;
  v55 = HMDBulletinCategorySecureTrigger;
LABEL_23:
  v50 = *v55;
LABEL_26:
  v44 = v50;
  if (legacyWatchOSCategoryMap_onceToken != -1)
  {
    dispatch_once(&legacyWatchOSCategoryMap_onceToken, &__block_literal_global_895);
  }

  [v24 addEntriesFromDictionary:legacyWatchOSCategoryMap_legacyWatchOSCategoryMap];
LABEL_31:
  v56 = [v70 hmf_stringForKey:@"home"];
  v57 = [(HMDBulletinBoard *)self threadIdentifierForGroupingWithHomeWithUUIDString:v56];
  notificationCenter = [(HMDBulletinBoard *)self notificationCenter];
  LOBYTE(v63) = v42;
  selfCopy3 = self;
  v60 = [notificationCenter showNotificationWithTitle:titleCopy body:messageCopy threadIdentifier:v57 categoryIdentifier:v44 requestIdentifier:identifierCopy date:dateCopy attachments:v68 userInfo:v24 shouldIgnoreDoNotDisturb:v63 interruptionLevel:level logEventTopic:topic];

  [(HMDBulletinBoard *)selfCopy3 addNotificationRequest:v60 forIdentifier:identifierCopy];
  v61 = *MEMORY[0x277D85DE8];

  return v60;
}

- (void)removeImageFilesForNotificationRequests:(id)requests
{
  v40 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = requestsCopy;
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

        content = [*(*(&v29 + 1) + 8 * v11) content];
        userInfo = [content userInfo];
        v14 = [userInfo objectForKeyedSubscript:v10];

        if (v14)
        {
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v28 = 0;
          [defaultManager removeItemAtPath:v14 error:&v28];
          v16 = v28;

          v17 = objc_autoreleasePoolPush();
          selfCopy = self;
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
            _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Removed the bulletin snapshot file at %@ with result %@", buf, 0x20u);

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
  workQueue = [(HMDBulletinBoard *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDBulletinBoard_insertHH2AutoMigratedSuccessBulletin__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
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
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Inserting new bulletin with title: %@, message: %@", buf, 0x20u);
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

- (void)bulletinTitle:(id *)title andMessage:(id *)message forAccessory:(id)accessory attributePath:(id)path value:(id)value fields:(id)fields
{
  v330 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  pathCopy = path;
  valueCopy = value;
  fieldsCopy = fields;
  home = [accessoryCopy home];
  clusterID = [pathCopy clusterID];
  unsignedIntValue = [clusterID unsignedIntValue];

  if (unsignedIntValue == 97)
  {
    attributeID = [pathCopy attributeID];
    unsignedIntValue2 = [attributeID unsignedIntValue];

    if (unsignedIntValue2 == 4)
    {
      v22 = valueCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v24 = v23;

      if (!v24)
      {
        goto LABEL_215;
      }

      unsignedIntValue3 = [v24 unsignedIntValue];
      if (unsignedIntValue3 <= 63)
      {
        if (unsignedIntValue3 != 1)
        {
          if (unsignedIntValue3 != 2)
          {
            if (unsignedIntValue3 == 3)
            {
              v26 = [fieldsCopy hmf_numberForKey:@"HMDAttributePreviousValueMessageKey"];
              v27 = [fieldsCopy hmf_numberForKey:@"HMDRVCOperationalStateErrorStateAttributeMessageKey"];
              v28 = v27;
              if (!v26 || !v27)
              {
                goto LABEL_214;
              }

              unsignedIntValue4 = [v26 unsignedIntValue];
              if (unsignedIntValue4 != 64 && unsignedIntValue4 != 1)
              {
                unsignedIntValue5 = [v28 unsignedIntValue];
                if (unsignedIntValue5 > 68)
                {
                  switch(unsignedIntValue5)
                  {
                    case 'E':
                      context = v28;
                      v264 = v26;
                      v269 = v24;
                      messageCopy8 = message;
                      *title = HMDLocalizedStringForKey(@"RVC_INSERT_WATER_TANK_TITLE");
                      v281 = home;
                      v224 = MEMORY[0x277CCACA8];
                      v225 = HMDLocalizedStringForKey(@"RVC_INSERT_WATER_TANK_BODY");
                      v305 = 0;
                      name = [accessoryCopy name];
                      v227 = v224;
                      home = v281;
                      v226 = [v227 localizedStringWithValidatedFormat:v225 validFormatSpecifiers:@"%@" error:&v305, name];
                      v35 = v305;

                      v36 = v226;
                      if (!v226)
                      {
                        v228 = objc_autoreleasePoolPush();
                        v229 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v229, OS_LOG_TYPE_ERROR))
                        {
                          v230 = HMFGetLogIdentifier();
                          *buf = 138544130;
                          v323 = v230;
                          v324 = 2112;
                          v325 = @"RVC_INSERT_WATER_TANK_BODY";
                          v326 = 2112;
                          v327 = @"%@";
                          v328 = 2112;
                          v329 = v35;
                          _os_log_impl(&dword_229538000, v229, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

                          home = v281;
                        }

                        objc_autoreleasePoolPop(v228);
                        v36 = @"RVC_INSERT_WATER_TANK_BODY";
                      }

                      goto LABEL_20;
                    case 'F':
                      context = v28;
                      v264 = v26;
                      v269 = v24;
                      v278 = home;
                      messageCopy8 = message;
                      *title = HMDLocalizedStringForKey(@"RVC_CLOSE_WATER_TANK_TITLE");
                      v237 = MEMORY[0x277CCACA8];
                      v238 = HMDLocalizedStringForKey(@"RVC_CLOSE_WATER_TANK_BODY");
                      v304 = 0;
                      name2 = [accessoryCopy name];
                      v239 = [v237 localizedStringWithValidatedFormat:v238 validFormatSpecifiers:@"%@" error:&v304, name2];
                      v148 = v304;

                      v36 = v239;
                      if (!v239)
                      {
                        v240 = objc_autoreleasePoolPush();
                        v241 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v241, OS_LOG_TYPE_ERROR))
                        {
                          v242 = HMFGetLogIdentifier();
                          *buf = 138544130;
                          v323 = v242;
                          v324 = 2112;
                          v325 = @"RVC_CLOSE_WATER_TANK_BODY";
                          v326 = 2112;
                          v327 = @"%@";
                          v328 = 2112;
                          v329 = v148;
                          _os_log_impl(&dword_229538000, v241, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
                        }

                        objc_autoreleasePoolPop(v240);
                        v36 = @"RVC_CLOSE_WATER_TANK_BODY";
                      }

                      break;
                    case 'G':
                      context = v28;
                      v264 = v26;
                      v269 = v24;
                      v278 = home;
                      messageCopy8 = message;
                      *title = HMDLocalizedStringForKey(@"RVC_INSERT_CLEANING_PAD_TITLE");
                      v179 = MEMORY[0x277CCACA8];
                      v180 = HMDLocalizedStringForKey(@"RVC_INSERT_CLEANING_PAD_BODY");
                      v303 = 0;
                      name3 = [accessoryCopy name];
                      v239 = [v179 localizedStringWithValidatedFormat:v180 validFormatSpecifiers:@"%@" error:&v303, name3];
                      v148 = v303;

                      v36 = v239;
                      if (!v239)
                      {
                        v182 = objc_autoreleasePoolPush();
                        v183 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
                        {
                          v184 = HMFGetLogIdentifier();
                          *buf = 138544130;
                          v323 = v184;
                          v324 = 2112;
                          v325 = @"RVC_INSERT_CLEANING_PAD_BODY";
                          v326 = 2112;
                          v327 = @"%@";
                          v328 = 2112;
                          v329 = v148;
                          _os_log_impl(&dword_229538000, v183, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
                        }

                        objc_autoreleasePoolPop(v182);
                        v36 = @"RVC_INSERT_CLEANING_PAD_BODY";
                      }

                      break;
                    default:
                      goto LABEL_214;
                  }
                }

                else
                {
                  switch(unsignedIntValue5)
                  {
                    case 'B':
                      context = v28;
                      v264 = v26;
                      v269 = v24;
                      messageCopy8 = message;
                      *title = HMDLocalizedStringForKey(@"RVC_INSERT_DUST_BIN_TITLE");
                      v280 = home;
                      v217 = MEMORY[0x277CCACA8];
                      v218 = HMDLocalizedStringForKey(@"RVC_INSERT_DUST_BIN_BODY");
                      v308 = 0;
                      name4 = [accessoryCopy name];
                      v220 = v217;
                      home = v280;
                      v226 = [v220 localizedStringWithValidatedFormat:v218 validFormatSpecifiers:@"%@" error:&v308, name4];
                      v35 = v308;

                      v36 = v226;
                      if (!v226)
                      {
                        v221 = objc_autoreleasePoolPush();
                        v222 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v222, OS_LOG_TYPE_ERROR))
                        {
                          v223 = HMFGetLogIdentifier();
                          *buf = 138544130;
                          v323 = v223;
                          v324 = 2112;
                          v325 = @"RVC_INSERT_DUST_BIN_BODY";
                          v326 = 2112;
                          v327 = @"%@";
                          v328 = 2112;
                          v329 = v35;
                          _os_log_impl(&dword_229538000, v222, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

                          home = v280;
                        }

                        objc_autoreleasePoolPop(v221);
                        v36 = @"RVC_INSERT_DUST_BIN_BODY";
                      }

                      goto LABEL_20;
                    case 'C':
                      context = v28;
                      v264 = v26;
                      v269 = v24;
                      v278 = home;
                      messageCopy8 = message;
                      *title = HMDLocalizedStringForKey(@"RVC_EMPTY_DUST_BIN_TITLE");
                      v231 = MEMORY[0x277CCACA8];
                      v232 = HMDLocalizedStringForKey(@"RVC_EMPTY_DUST_BIN_BODY");
                      v307 = 0;
                      name5 = [accessoryCopy name];
                      v239 = [v231 localizedStringWithValidatedFormat:v232 validFormatSpecifiers:@"%@" error:&v307, name5];
                      v148 = v307;

                      v36 = v239;
                      if (!v239)
                      {
                        v234 = objc_autoreleasePoolPush();
                        v235 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
                        {
                          v236 = HMFGetLogIdentifier();
                          *buf = 138544130;
                          v323 = v236;
                          v324 = 2112;
                          v325 = @"RVC_EMPTY_DUST_BIN_BODY";
                          v326 = 2112;
                          v327 = @"%@";
                          v328 = 2112;
                          v329 = v148;
                          _os_log_impl(&dword_229538000, v235, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
                        }

                        objc_autoreleasePoolPop(v234);
                        v36 = @"RVC_EMPTY_DUST_BIN_BODY";
                      }

                      break;
                    case 'D':
                      context = v28;
                      v264 = v26;
                      v269 = v24;
                      v278 = home;
                      messageCopy8 = message;
                      *title = HMDLocalizedStringForKey(@"RVC_REFILL_WATER_TANK_TITLE");
                      v144 = MEMORY[0x277CCACA8];
                      v145 = HMDLocalizedStringForKey(@"RVC_REFILL_WATER_TANK_BODY");
                      v306 = 0;
                      name6 = [accessoryCopy name];
                      v239 = [v144 localizedStringWithValidatedFormat:v145 validFormatSpecifiers:@"%@" error:&v306, name6];
                      v148 = v306;

                      v36 = v239;
                      if (!v239)
                      {
                        v149 = objc_autoreleasePoolPush();
                        v150 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
                        {
                          v151 = HMFGetLogIdentifier();
                          *buf = 138544130;
                          v323 = v151;
                          v324 = 2112;
                          v325 = @"RVC_REFILL_WATER_TANK_BODY";
                          v326 = 2112;
                          v327 = @"%@";
                          v328 = 2112;
                          v329 = v148;
                          _os_log_impl(&dword_229538000, v150, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
                        }

                        objc_autoreleasePoolPop(v149);
                        v36 = @"RVC_REFILL_WATER_TANK_BODY";
                      }

                      break;
                    default:
                      goto LABEL_214;
                  }
                }

                v243 = v36;

LABEL_188:
                home = v278;
                goto LABEL_189;
              }

              if ([v28 unsignedIntValue] == 65)
              {
                context = v28;
                v264 = v26;
                v269 = v24;
                messageCopy8 = message;
                *title = HMDLocalizedStringForKey(@"RVC_MOVE_VACUUM");
                v274 = home;
                v30 = MEMORY[0x277CCACA8];
                v31 = HMDLocalizedStringForKey(@"RVC_STUCK");
                v311 = 0;
                name7 = [accessoryCopy name];
                v33 = v30;
                home = v274;
                v226 = [v33 localizedStringWithValidatedFormat:v31 validFormatSpecifiers:@"%@" error:&v311, name7];
                v35 = v311;

                v36 = v226;
                if (!v226)
                {
                  v37 = objc_autoreleasePoolPush();
                  v38 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                  {
                    v39 = HMFGetLogIdentifier();
                    *buf = 138544130;
                    v323 = v39;
                    v324 = 2112;
                    v325 = @"RVC_STUCK";
                    v326 = 2112;
                    v327 = @"%@";
                    v328 = 2112;
                    v329 = v35;
                    _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

                    home = v274;
                  }

                  objc_autoreleasePoolPop(v37);
                  v36 = @"RVC_STUCK";
                }

LABEL_20:
                v40 = v36;

LABEL_189:
                v244 = messageCopy8;
                v26 = v264;
                v24 = v269;
                v28 = context;
LABEL_190:
                *v244 = v36;
                goto LABEL_214;
              }

              if ([v28 unsignedIntValue] == 67)
              {
                context = v28;
                v264 = v26;
                v269 = v24;
                v278 = home;
                messageCopy8 = message;
                *title = HMDLocalizedStringForKey(@"RVC_RETURNING_TO_DOCK_TITLE");
                v133 = MEMORY[0x277CCACA8];
                v134 = HMDLocalizedStringForKey(@"RVC_EMPTYING_BUCKET");
                v310 = 0;
                name8 = [accessoryCopy name];
                v135 = [v133 localizedStringWithValidatedFormat:v134 validFormatSpecifiers:@"%@" error:&v310, name8];
                v137 = v310;

                v36 = v135;
                if (!v135)
                {
                  v138 = objc_autoreleasePoolPush();
                  v139 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
                  {
                    HMFGetLogIdentifier();
                    v141 = v140 = v137;
                    *buf = 138544130;
                    v323 = v141;
                    v324 = 2112;
                    v325 = @"RVC_EMPTYING_BUCKET";
                    v326 = 2112;
                    v327 = @"%@";
                    v328 = 2112;
                    v329 = v140;
                    _os_log_impl(&dword_229538000, v139, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

                    v137 = v140;
                  }

                  objc_autoreleasePoolPop(v138);
                  v36 = @"RVC_EMPTYING_BUCKET";
                }

                v142 = v36;

                goto LABEL_188;
              }

              if ([v28 unsignedIntValue] == 64)
              {
                contextd = v28;
                v268 = v26;
                v273 = v24;
                v279 = home;
                messageCopy9 = message;
                *title = HMDLocalizedStringForKey(@"RVC_UNABLE_TO_FIND_DOCK_TITLE");
                v171 = MEMORY[0x277CCACA8];
                v172 = localizedWiFiStringKey();
                v173 = HMDLocalizedStringForKey(v172);
                v309 = 0;
                name9 = [accessoryCopy name];
                v174 = [v171 localizedStringWithValidatedFormat:v173 validFormatSpecifiers:@"%@" error:&v309, name9];
                v176 = v309;

                v177 = v174;
                if (v174)
                {
                  v178 = v176;
                  v36 = v174;
                  home = v279;
                  v28 = contextd;
                }

                else
                {
                  v245 = objc_autoreleasePoolPush();
                  v246 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v246, OS_LOG_TYPE_ERROR))
                  {
                    v247 = HMFGetLogIdentifier();
                    v248 = localizedWiFiStringKey();
                    *buf = 138544130;
                    v323 = v247;
                    v324 = 2112;
                    v325 = v248;
                    v326 = 2112;
                    v327 = @"%@";
                    v328 = 2112;
                    v329 = v176;
                    _os_log_impl(&dword_229538000, v246, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
                  }

                  v178 = v176;

                  objc_autoreleasePoolPop(v245);
                  v36 = localizedWiFiStringKey();
                  home = v279;
                  v177 = 0;
                  v28 = contextd;
                }

                v249 = v36;
                v244 = messageCopy9;
                v26 = v268;
                v24 = v273;
                goto LABEL_190;
              }

LABEL_214:
            }

LABEL_215:

            goto LABEL_216;
          }

          v79 = [fieldsCopy hmf_arrayForKey:@"HMDRVCCleanModeCurrentModeModeTagsMessageKey"];
          if ([v79 containsObject:&unk_283E71FA8] && (objc_msgSend(v79, "containsObject:", &unk_283E71FC0) & 1) != 0 || !objc_msgSend(v79, "count"))
          {
            v80 = @"RVC_CLEANING_PAUSED";
          }

          else if ([v79 containsObject:&unk_283E71FA8])
          {
            v80 = @"RVC_VACUUMING_PAUSED";
          }

          else
          {
            if (![v79 containsObject:&unk_283E71FC0])
            {
              goto LABEL_66;
            }

            v80 = @"RVC_MOPPING_PAUSED";
          }

          *title = HMDLocalizedStringForKey(v80);
LABEL_66:
          v267 = v79;
          v92 = MEMORY[0x277CCACA8];
          HMDLocalizedStringForKey(@"RVC_PAUSED");
          v93 = valueCopy;
          v94 = fieldsCopy;
          v96 = v95 = v24;
          v312 = 0;
          [accessoryCopy name];
          v97 = v277 = home;
          v98 = [v92 localizedStringWithValidatedFormat:v96 validFormatSpecifiers:@"%@" error:&v312, v97];
          v99 = v312;

          home = v277;
          v24 = v95;
          fieldsCopy = v94;
          valueCopy = v93;
          v100 = v99;
          v101 = v98;
          if (!v98)
          {
            contextc = objc_autoreleasePoolPush();
            v102 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
            {
              v103 = HMFGetLogIdentifier();
              *buf = 138544130;
              v323 = v103;
              v324 = 2112;
              v325 = @"RVC_PAUSED";
              v326 = 2112;
              v327 = @"%@";
              v328 = 2112;
              v329 = v100;
              _os_log_impl(&dword_229538000, v102, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

              home = v277;
            }

            objc_autoreleasePoolPop(contextc);
            v101 = @"RVC_PAUSED";
          }

          v104 = v101;

          *message = v101;
          goto LABEL_215;
        }

        v26 = [fieldsCopy hmf_arrayForKey:@"HMDRVCCleanModeCurrentModeModeTagsMessageKey"];
        v28 = [fieldsCopy hmf_arrayForKey:@"HMDRVCSelectedServiceAreasMessageKey"];
        if ([v26 containsObject:&unk_283E71FA8] && (objc_msgSend(v26, "containsObject:", &unk_283E71FC0) & 1) != 0 || !objc_msgSend(v26, "count"))
        {
          contextb = v26;
          v272 = v24;
          *title = HMDLocalizedStringForKey(@"RVC_CLEANING");
          messageCopy12 = message;
          v258 = v28;
          if ([v28 count] < 2)
          {
            v112 = [v28 count];
            v113 = MEMORY[0x277CCACA8];
            HMDLocalizedStringForKey(@"RVC_CLEANING_ROOM");
            v115 = v114 = v28;
            if (v112 == 1)
            {
              v320 = 0;
              name10 = [accessoryCopy name];
              firstObject = [v114 firstObject];
              v117 = [v113 localizedStringWithValidatedFormat:v115 validFormatSpecifiers:@"%@ %@" error:&v320, name10, firstObject];
              v266 = v320;

              if (v117)
              {
                goto LABEL_170;
              }

              v75 = home;
              v76 = objc_autoreleasePoolPush();
              v77 = HMFGetOSLogHandle();
              v117 = @"RVC_CLEANING_ROOM";
              if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_212;
              }

              v91 = HMFGetLogIdentifier();
              *buf = 138544130;
              v323 = v91;
              v324 = 2112;
              v325 = @"RVC_CLEANING_ROOM";
              v326 = 2112;
              v327 = @"%@ %@";
              v328 = 2112;
              v329 = v266;
            }

            else
            {
              v319 = 0;
              name11 = [accessoryCopy name];
              name12 = [home name];
              v117 = [v113 localizedStringWithValidatedFormat:v115 validFormatSpecifiers:@"%@ %@" error:&v319, name11, name12];
              v266 = v319;

              if (v117)
              {
                goto LABEL_170;
              }

              v75 = home;
              v76 = objc_autoreleasePoolPush();
              v77 = HMFGetOSLogHandle();
              v117 = @"RVC_CLEANING_ROOM";
              if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_212;
              }

              v91 = HMFGetLogIdentifier();
              *buf = 138544130;
              v323 = v91;
              v324 = 2112;
              v325 = @"RVC_CLEANING_ROOM";
              v326 = 2112;
              v327 = @"%@ %@";
              v328 = 2112;
              v329 = v266;
            }
          }

          else
          {
            v87 = MEMORY[0x277CCACA8];
            HMDLocalizedStringForKey(@"RVC_CLEANING_ROOMS");
            v89 = v88 = v28;
            v321 = 0;
            name13 = [accessoryCopy name];
            v117 = [v87 localizedStringWithValidatedFormat:v89 validFormatSpecifiers:@"%@ %lu" error:&v321, name13, objc_msgSend(v88, "count")];
            v266 = v321;

            if (v117)
            {
              goto LABEL_170;
            }

            v75 = home;
            v76 = objc_autoreleasePoolPush();
            v77 = HMFGetOSLogHandle();
            v117 = @"RVC_CLEANING_ROOMS";
            if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_212;
            }

            v91 = HMFGetLogIdentifier();
            *buf = 138544130;
            v323 = v91;
            v324 = 2112;
            v325 = @"RVC_CLEANING_ROOMS";
            v326 = 2112;
            v327 = @"%@ %lu";
            v328 = 2112;
            v329 = v266;
          }
        }

        else if ([v26 containsObject:&unk_283E71FA8])
        {
          contextb = v26;
          v272 = v24;
          *title = HMDLocalizedStringForKey(@"RVC_VACUUMING");
          messageCopy12 = message;
          v258 = v28;
          if ([v28 count] >= 2)
          {
            v69 = MEMORY[0x277CCACA8];
            v70 = HMDLocalizedStringForKey(@"RVC_VACUUMING_ROOMS");
            v318 = 0;
            name14 = [accessoryCopy name];
            v72 = v28;
            v73 = name14;
            v117 = [v69 localizedStringWithValidatedFormat:v70 validFormatSpecifiers:@"%@ %lu" error:&v318, name14, objc_msgSend(v72, "count")];
            v266 = v318;

            if (!v117)
            {
              v75 = home;
              v76 = objc_autoreleasePoolPush();
              v77 = HMFGetOSLogHandle();
              v117 = @"RVC_VACUUMING_ROOMS";
              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                v78 = HMFGetLogIdentifier();
                *buf = 138544130;
                v323 = v78;
                v324 = 2112;
                v325 = @"RVC_VACUUMING_ROOMS";
                v326 = 2112;
                v327 = @"%@ %lu";
                v328 = 2112;
                v329 = v266;
LABEL_93:
                _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

                goto LABEL_212;
              }

              goto LABEL_212;
            }

            goto LABEL_170;
          }

          v159 = [v28 count];
          v160 = MEMORY[0x277CCACA8];
          HMDLocalizedStringForKey(@"RVC_VACUUMING_ROOM");
          v162 = v161 = v28;
          if (v159 == 1)
          {
            v317 = 0;
            name15 = [accessoryCopy name];
            firstObject2 = [v161 firstObject];
            v117 = [v160 localizedStringWithValidatedFormat:v162 validFormatSpecifiers:@"%@ %@" error:&v317, name15, firstObject2];
            v266 = v317;

            if (v117)
            {
              goto LABEL_170;
            }

            v75 = home;
            v76 = objc_autoreleasePoolPush();
            v77 = HMFGetOSLogHandle();
            v117 = @"RVC_VACUUMING_ROOM";
            if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_212;
            }

            v91 = HMFGetLogIdentifier();
            *buf = 138544130;
            v323 = v91;
            v324 = 2112;
            v325 = @"RVC_VACUUMING_ROOM";
            v326 = 2112;
            v327 = @"%@ %@";
            v328 = 2112;
            v329 = v266;
          }

          else
          {
            v316 = 0;
            name16 = [accessoryCopy name];
            name17 = [home name];
            v117 = [v160 localizedStringWithValidatedFormat:v162 validFormatSpecifiers:@"%@ %@" error:&v316, name16, name17];
            v266 = v316;

            if (v117)
            {
              goto LABEL_170;
            }

            v75 = home;
            v76 = objc_autoreleasePoolPush();
            v77 = HMFGetOSLogHandle();
            v117 = @"RVC_VACUUMING_ROOM";
            if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_212;
            }

            v91 = HMFGetLogIdentifier();
            *buf = 138544130;
            v323 = v91;
            v324 = 2112;
            v325 = @"RVC_VACUUMING_ROOM";
            v326 = 2112;
            v327 = @"%@ %@";
            v328 = 2112;
            v329 = v266;
          }
        }

        else
        {
          if (![v26 containsObject:&unk_283E71FC0])
          {
            goto LABEL_214;
          }

          contextb = v26;
          v272 = v24;
          *title = HMDLocalizedStringForKey(@"RVC_MOPPING");
          messageCopy12 = message;
          v258 = v28;
          if ([v28 count] >= 2)
          {
            v123 = MEMORY[0x277CCACA8];
            v124 = HMDLocalizedStringForKey(@"RVC_MOPPING_ROOMS");
            v315 = 0;
            name18 = [accessoryCopy name];
            v126 = v28;
            v127 = name18;
            v117 = [v123 localizedStringWithValidatedFormat:v124 validFormatSpecifiers:@"%@ %lu" error:&v315, name18, objc_msgSend(v126, "count")];
            v266 = v315;

            if (!v117)
            {
              v75 = home;
              v76 = objc_autoreleasePoolPush();
              v77 = HMFGetOSLogHandle();
              v117 = @"RVC_MOPPING_ROOMS";
              if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
              {
                v78 = HMFGetLogIdentifier();
                *buf = 138544130;
                v323 = v78;
                v324 = 2112;
                v325 = @"RVC_MOPPING_ROOMS";
                v326 = 2112;
                v327 = @"%@ %lu";
                v328 = 2112;
                v329 = v266;
                goto LABEL_93;
              }

LABEL_212:
              v24 = v272;
              v251 = v77;
              v28 = v258;
              v26 = contextb;

              objc_autoreleasePoolPop(v76);
              v216 = 0;
              goto LABEL_213;
            }

LABEL_170:
            v75 = home;
            v216 = v117;
            v24 = v272;
            v28 = v258;
            v26 = contextb;
LABEL_213:
            v252 = v117;

            *messageCopy12 = v117;
            home = v75;
            goto LABEL_214;
          }

          v192 = [v28 count];
          v193 = MEMORY[0x277CCACA8];
          HMDLocalizedStringForKey(@"RVC_MOPPING_ROOM");
          v195 = v194 = v28;
          if (v192 == 1)
          {
            v314 = 0;
            name19 = [accessoryCopy name];
            firstObject3 = [v194 firstObject];
            v117 = [v193 localizedStringWithValidatedFormat:v195 validFormatSpecifiers:@"%@ %@" error:&v314, name19, firstObject3];
            v266 = v314;

            if (v117)
            {
              goto LABEL_170;
            }

            v75 = home;
            v76 = objc_autoreleasePoolPush();
            v77 = HMFGetOSLogHandle();
            v117 = @"RVC_MOPPING_ROOM";
            if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_212;
            }

            v91 = HMFGetLogIdentifier();
            *buf = 138544130;
            v323 = v91;
            v324 = 2112;
            v325 = @"RVC_MOPPING_ROOM";
            v326 = 2112;
            v327 = @"%@ %@";
            v328 = 2112;
            v329 = v266;
          }

          else
          {
            v313 = 0;
            name20 = [accessoryCopy name];
            name21 = [home name];
            v117 = [v193 localizedStringWithValidatedFormat:v195 validFormatSpecifiers:@"%@ %@" error:&v313, name20, name21];
            v266 = v313;

            if (v117)
            {
              goto LABEL_170;
            }

            v75 = home;
            v76 = objc_autoreleasePoolPush();
            v77 = HMFGetOSLogHandle();
            v117 = @"RVC_MOPPING_ROOM";
            if (!os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_212;
            }

            v91 = HMFGetLogIdentifier();
            *buf = 138544130;
            v323 = v91;
            v324 = 2112;
            v325 = @"RVC_MOPPING_ROOM";
            v326 = 2112;
            v327 = @"%@ %@";
            v328 = 2112;
            v329 = v266;
          }
        }

        _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

        goto LABEL_212;
      }

      if ((unsignedIntValue3 - 65) >= 2)
      {
        if (unsignedIntValue3 == 64)
        {
          v271 = v24;
          v276 = home;
          messageCopy13 = message;
          *title = HMDLocalizedStringForKey(@"RVC_RETURNING_TO_DOCK_TITLE");
          v55 = MEMORY[0x277CCACA8];
          v56 = HMDLocalizedStringForKey(@"RVC_RETURNING_TO_DOCK_BODY");
          v302 = 0;
          name22 = [accessoryCopy name];
          v58 = [v55 localizedStringWithValidatedFormat:v56 validFormatSpecifiers:@"%@" error:&v302, name22];
          v59 = v302;

          v60 = v58;
          if (!v58)
          {
            v61 = objc_autoreleasePoolPush();
            v62 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
            {
              v63 = HMFGetLogIdentifier();
              *buf = 138544130;
              v323 = v63;
              v324 = 2112;
              v325 = @"RVC_RETURNING_TO_DOCK_BODY";
              v326 = 2112;
              v327 = @"%@";
              v328 = 2112;
              v329 = v59;
              _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v61);
            v60 = @"RVC_RETURNING_TO_DOCK_BODY";
          }

          v64 = v60;

          home = v276;
          *messageCopy13 = v60;
          v24 = v271;
        }

        goto LABEL_215;
      }

      messageCopy14 = message;
      v41 = [fieldsCopy hmf_arrayForKey:@"HMDRVCCleanModeCurrentModeModeTagsMessageKey"];
      v42 = [fieldsCopy hmf_BOOLForKey:@"HMDRVCAllServiceAreasCleanedMessageKey"];
      v43 = [fieldsCopy hmf_arrayForKey:@"HMDRVCCompletedServiceAreasMessageKey"];
      v44 = v43;
      if ((v42 & 1) != 0 || !v43 || [v43 count])
      {
        v45 = @"RVC_CLEANING_COMPLETE";
      }

      else
      {
        v45 = @"RVC_CLEANING_CANCELED";
      }

      *title = HMDLocalizedStringForKey(v45);
      if ([v41 containsObject:&unk_283E71FA8] && objc_msgSend(v41, "containsObject:", &unk_283E71FC0))
      {
        v270 = v24;
        v275 = home;
        v265 = v44;
        if (v42)
        {
          v46 = MEMORY[0x277CCACA8];
          v47 = HMDLocalizedStringForKey(@"RVC_ALL_ROOMS_VACUUMED_AND_MOPPED");
          v301 = 0;
          name23 = [accessoryCopy name];
          v167 = [v46 localizedStringWithValidatedFormat:v47 validFormatSpecifiers:@"%@" error:&v301, name23];
          v50 = v301;

          if (!v167)
          {
            v51 = objc_autoreleasePoolPush();
            v52 = HMFGetOSLogHandle();
            v257 = @"RVC_ALL_ROOMS_VACUUMED_AND_MOPPED";
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v254 = v51;
              v54 = v53 = v52;
              *buf = 138544130;
              v323 = v54;
              v324 = 2112;
              v325 = @"RVC_ALL_ROOMS_VACUUMED_AND_MOPPED";
              v326 = 2112;
              v327 = @"%@";
              v328 = 2112;
              v329 = v50;
LABEL_204:
              _os_log_impl(&dword_229538000, v53, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

              v52 = v53;
              v51 = v254;
              goto LABEL_205;
            }

            goto LABEL_205;
          }

          goto LABEL_159;
        }

        if (!v44)
        {
          v165 = MEMORY[0x277CCACA8];
          v166 = HMDLocalizedStringForKey(@"RVC_FINISHED_VACUUMING_AND_MOPPING");
          v300 = 0;
          name24 = [accessoryCopy name];
          v167 = [v165 localizedStringWithValidatedFormat:v166 validFormatSpecifiers:@"%@" error:&v300, name24];
          v50 = v300;

          if (!v167)
          {
            v51 = objc_autoreleasePoolPush();
            v52 = HMFGetOSLogHandle();
            v257 = @"RVC_FINISHED_VACUUMING_AND_MOPPING";
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v254 = v51;
              v54 = v53 = v52;
              *buf = 138544130;
              v323 = v54;
              v324 = 2112;
              v325 = @"RVC_FINISHED_VACUUMING_AND_MOPPING";
              v326 = 2112;
              v327 = @"%@";
              v328 = 2112;
              v329 = v50;
              goto LABEL_204;
            }

LABEL_205:
            v24 = v270;
            goto LABEL_206;
          }

          goto LABEL_159;
        }

        if (![v44 count])
        {
          v200 = MEMORY[0x277CCACA8];
          v201 = HMDLocalizedStringForKey(@"RVC_NO_ROOMS_VACUUMED_OR_MOPPED");
          v299 = 0;
          name25 = [accessoryCopy name];
          v167 = [v200 localizedStringWithValidatedFormat:v201 validFormatSpecifiers:@"%@" error:&v299, name25];
          v50 = v299;

          if (!v167)
          {
            v51 = objc_autoreleasePoolPush();
            v52 = HMFGetOSLogHandle();
            v257 = @"RVC_NO_ROOMS_VACUUMED_OR_MOPPED";
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v254 = v51;
              v54 = v53 = v52;
              *buf = 138544130;
              v323 = v54;
              v324 = 2112;
              v325 = @"RVC_NO_ROOMS_VACUUMED_OR_MOPPED";
              v326 = 2112;
              v327 = @"%@";
              v328 = 2112;
              v329 = v50;
              goto LABEL_204;
            }

            goto LABEL_205;
          }

LABEL_159:
          v122 = v167;
LABEL_168:
          v44 = v265;
          v24 = v270;
          goto LABEL_207;
        }

        v118 = [v44 count];
        v119 = MEMORY[0x277CCACA8];
        if (v118 == 1)
        {
          v120 = HMDLocalizedStringForKey(@"RVC_ROOM_VACUUMED_AND_MOPPED");
          v298 = 0;
          name26 = [accessoryCopy name];
          firstObject4 = [v44 firstObject];
          v122 = [v119 localizedStringWithValidatedFormat:v120 validFormatSpecifiers:@"%@ %@" error:&v298, name26, firstObject4];
          v50 = v298;

          if (!v122)
          {
            v51 = objc_autoreleasePoolPush();
            v52 = HMFGetOSLogHandle();
            v257 = @"RVC_ROOM_VACUUMED_AND_MOPPED";
            if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_205;
            }

            HMFGetLogIdentifier();
            v111 = v110 = v52;
            *buf = 138544130;
            v323 = v111;
            v324 = 2112;
            v325 = @"RVC_ROOM_VACUUMED_AND_MOPPED";
            v326 = 2112;
            v327 = @"%@ %@";
            v328 = 2112;
            v329 = v50;
            goto LABEL_102;
          }
        }

        else
        {
          v203 = HMDLocalizedStringForKey(@"RVC_ROOMS_VACUUMED_AND_MOPPED");
          v297 = 0;
          name27 = [accessoryCopy name];
          v205 = v44;
          v206 = name27;
          v122 = [v119 localizedStringWithValidatedFormat:v203 validFormatSpecifiers:@"%@ %lu" error:&v297, name27, objc_msgSend(v205, "count")];
          v50 = v297;

          if (!v122)
          {
            v51 = objc_autoreleasePoolPush();
            v52 = HMFGetOSLogHandle();
            v257 = @"RVC_ROOMS_VACUUMED_AND_MOPPED";
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v254 = v51;
              v54 = v53 = v52;
              *buf = 138544130;
              v323 = v54;
              v324 = 2112;
              v325 = @"RVC_ROOMS_VACUUMED_AND_MOPPED";
              v326 = 2112;
              v327 = @"%@ %lu";
              v328 = 2112;
              v329 = v50;
              goto LABEL_204;
            }

            goto LABEL_205;
          }
        }

        goto LABEL_167;
      }

      if ([v41 containsObject:&unk_283E71FA8])
      {
        v275 = home;
        v265 = v44;
        if (v42)
        {
          contexta = v41;
          v65 = MEMORY[0x277CCACA8];
          v66 = HMDLocalizedStringForKey(@"RVC_ALL_ROOMS_VACUUMED");
          v296 = 0;
          name28 = [accessoryCopy name];
          v167 = [v65 localizedStringWithValidatedFormat:v66 validFormatSpecifiers:@"%@" error:&v296, name28];
          v50 = v296;

          if (v167)
          {
            v122 = v167;
LABEL_165:
            v41 = contexta;
            v44 = v265;
LABEL_207:
            v250 = v167;

            *messageCopy14 = v167;
            home = v275;
            goto LABEL_208;
          }

          v51 = objc_autoreleasePoolPush();
          v52 = HMFGetOSLogHandle();
          v257 = @"RVC_ALL_ROOMS_VACUUMED";
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v256 = v51;
            v153 = v152 = v52;
            *buf = 138544130;
            v323 = v153;
            v324 = 2112;
            v325 = @"RVC_ALL_ROOMS_VACUUMED";
            v326 = 2112;
            v327 = @"%@";
            v328 = 2112;
            v329 = v50;
            _os_log_impl(&dword_229538000, v152, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

            v52 = v152;
            v51 = v256;
          }

LABEL_197:
          v41 = contexta;
LABEL_206:
          v44 = v265;

          objc_autoreleasePoolPop(v51);
          v122 = 0;
          v167 = v257;
          goto LABEL_207;
        }

        if (v44)
        {
          if ([v44 count])
          {
            v270 = v24;
            v105 = [v44 count];
            v106 = MEMORY[0x277CCACA8];
            if (v105 == 1)
            {
              v107 = HMDLocalizedStringForKey(@"RVC_ROOM_VACUUMED");
              v293 = 0;
              name29 = [accessoryCopy name];
              firstObject5 = [v44 firstObject];
              v122 = [v106 localizedStringWithValidatedFormat:v107 validFormatSpecifiers:@"%@ %@" error:&v293, name29, firstObject5];
              v50 = v293;

              if (!v122)
              {
                v51 = objc_autoreleasePoolPush();
                v52 = HMFGetOSLogHandle();
                v257 = @"RVC_ROOM_VACUUMED";
                if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_205;
                }

                HMFGetLogIdentifier();
                v111 = v110 = v52;
                *buf = 138544130;
                v323 = v111;
                v324 = 2112;
                v325 = @"RVC_ROOM_VACUUMED";
                v326 = 2112;
                v327 = @"%@ %@";
                v328 = 2112;
                v329 = v50;
LABEL_102:
                _os_log_impl(&dword_229538000, v110, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

                v52 = v110;
                goto LABEL_205;
              }
            }

            else
            {
              v185 = HMDLocalizedStringForKey(@"RVC_ROOMS_VACUUMED");
              v292 = 0;
              name30 = [accessoryCopy name];
              v187 = v44;
              v188 = name30;
              v122 = [v106 localizedStringWithValidatedFormat:v185 validFormatSpecifiers:@"%@ %lu" error:&v292, name30, objc_msgSend(v187, "count")];
              v50 = v292;

              if (!v122)
              {
                v51 = objc_autoreleasePoolPush();
                v52 = HMFGetOSLogHandle();
                v257 = @"RVC_ROOMS_VACUUMED";
                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  HMFGetLogIdentifier();
                  v254 = v51;
                  v54 = v53 = v52;
                  *buf = 138544130;
                  v323 = v54;
                  v324 = 2112;
                  v325 = @"RVC_ROOMS_VACUUMED";
                  v326 = 2112;
                  v327 = @"%@ %lu";
                  v328 = 2112;
                  v329 = v50;
                  goto LABEL_204;
                }

                goto LABEL_205;
              }
            }

LABEL_167:
            v167 = v122;
            goto LABEL_168;
          }

          contexta = v41;
          v81 = v24;
          v168 = MEMORY[0x277CCACA8];
          v169 = HMDLocalizedStringForKey(@"RVC_NO_ROOMS_VACUUMED");
          v294 = 0;
          name31 = [accessoryCopy name];
          v167 = [v168 localizedStringWithValidatedFormat:v169 validFormatSpecifiers:@"%@" error:&v294, name31];
          v50 = v294;

          if (!v167)
          {
            v51 = objc_autoreleasePoolPush();
            v52 = HMFGetOSLogHandle();
            v257 = @"RVC_NO_ROOMS_VACUUMED";
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              HMFGetLogIdentifier();
              v255 = v51;
              v86 = v85 = v52;
              *buf = 138544130;
              v323 = v86;
              v324 = 2112;
              v325 = @"RVC_NO_ROOMS_VACUUMED";
              v326 = 2112;
              v327 = @"%@";
              v328 = 2112;
              v329 = v50;
              goto LABEL_195;
            }

LABEL_196:
            v24 = v81;
            goto LABEL_197;
          }

          goto LABEL_164;
        }

        contexta = v41;
        v81 = v24;
        v154 = MEMORY[0x277CCACA8];
        v155 = HMDLocalizedStringForKey(@"RVC_FINISHED_VACUUMING");
        v295 = 0;
        name32 = [accessoryCopy name];
        v167 = [v154 localizedStringWithValidatedFormat:v155 validFormatSpecifiers:@"%@" error:&v295, name32];
        v50 = v295;

        if (v167)
        {
          goto LABEL_164;
        }

        v51 = objc_autoreleasePoolPush();
        v52 = HMFGetOSLogHandle();
        v257 = @"RVC_FINISHED_VACUUMING";
        if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_196;
        }

        HMFGetLogIdentifier();
        v255 = v51;
        v86 = v85 = v52;
        *buf = 138544130;
        v323 = v86;
        v324 = 2112;
        v325 = @"RVC_FINISHED_VACUUMING";
        v326 = 2112;
        v327 = @"%@";
        v328 = 2112;
        v329 = v50;
      }

      else
      {
        if (![v41 containsObject:&unk_283E71FC0])
        {
LABEL_208:

          goto LABEL_215;
        }

        v275 = home;
        v265 = v44;
        if (!v42)
        {
          if (v44)
          {
            if ([v44 count])
            {
              v270 = v24;
              v128 = [v44 count];
              v129 = MEMORY[0x277CCACA8];
              if (v128 == 1)
              {
                v130 = HMDLocalizedStringForKey(@"RVC_ROOM_MOPPED");
                v288 = 0;
                name33 = [accessoryCopy name];
                firstObject6 = [v44 firstObject];
                v122 = [v129 localizedStringWithValidatedFormat:v130 validFormatSpecifiers:@"%@ %@" error:&v288, name33, firstObject6];
                v50 = v288;

                if (!v122)
                {
                  v51 = objc_autoreleasePoolPush();
                  v52 = HMFGetOSLogHandle();
                  v257 = @"RVC_ROOM_MOPPED";
                  if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_205;
                  }

                  HMFGetLogIdentifier();
                  v111 = v110 = v52;
                  *buf = 138544130;
                  v323 = v111;
                  v324 = 2112;
                  v325 = @"RVC_ROOM_MOPPED";
                  v326 = 2112;
                  v327 = @"%@ %@";
                  v328 = 2112;
                  v329 = v50;
                  goto LABEL_102;
                }
              }

              else
              {
                v210 = HMDLocalizedStringForKey(@"RVC_ROOMS_MOPPED");
                v287 = 0;
                name34 = [accessoryCopy name];
                v212 = v44;
                v213 = name34;
                v122 = [v129 localizedStringWithValidatedFormat:v210 validFormatSpecifiers:@"%@ %lu" error:&v287, name34, objc_msgSend(v212, "count")];
                v50 = v287;

                if (!v122)
                {
                  v51 = objc_autoreleasePoolPush();
                  v52 = HMFGetOSLogHandle();
                  v257 = @"RVC_ROOMS_MOPPED";
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    HMFGetLogIdentifier();
                    v254 = v51;
                    v54 = v53 = v52;
                    *buf = 138544130;
                    v323 = v54;
                    v324 = 2112;
                    v325 = @"RVC_ROOMS_MOPPED";
                    v326 = 2112;
                    v327 = @"%@ %lu";
                    v328 = 2112;
                    v329 = v50;
                    goto LABEL_204;
                  }

                  goto LABEL_205;
                }
              }

              goto LABEL_167;
            }

            contexta = v41;
            v81 = v24;
            v207 = MEMORY[0x277CCACA8];
            v208 = HMDLocalizedStringForKey(@"RVC_NO_ROOMS_MOPPED");
            v289 = 0;
            name35 = [accessoryCopy name];
            v167 = [v207 localizedStringWithValidatedFormat:v208 validFormatSpecifiers:@"%@" error:&v289, name35];
            v50 = v289;

            if (!v167)
            {
              v51 = objc_autoreleasePoolPush();
              v52 = HMFGetOSLogHandle();
              v257 = @"RVC_NO_ROOMS_MOPPED";
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v255 = v51;
                v86 = v85 = v52;
                *buf = 138544130;
                v323 = v86;
                v324 = 2112;
                v325 = @"RVC_NO_ROOMS_MOPPED";
                v326 = 2112;
                v327 = @"%@";
                v328 = 2112;
                v329 = v50;
                goto LABEL_195;
              }

              goto LABEL_196;
            }
          }

          else
          {
            contexta = v41;
            v81 = v24;
            v189 = MEMORY[0x277CCACA8];
            v190 = HMDLocalizedStringForKey(@"RVC_FINISHED_MOPPING");
            v290 = 0;
            name36 = [accessoryCopy name];
            v167 = [v189 localizedStringWithValidatedFormat:v190 validFormatSpecifiers:@"%@" error:&v290, name36];
            v50 = v290;

            if (!v167)
            {
              v51 = objc_autoreleasePoolPush();
              v52 = HMFGetOSLogHandle();
              v257 = @"RVC_FINISHED_MOPPING";
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v255 = v51;
                v86 = v85 = v52;
                *buf = 138544130;
                v323 = v86;
                v324 = 2112;
                v325 = @"RVC_FINISHED_MOPPING";
                v326 = 2112;
                v327 = @"%@";
                v328 = 2112;
                v329 = v50;
                goto LABEL_195;
              }

              goto LABEL_196;
            }
          }

LABEL_164:
          v122 = v167;
          v24 = v81;
          goto LABEL_165;
        }

        contexta = v41;
        v81 = v24;
        v82 = MEMORY[0x277CCACA8];
        v83 = HMDLocalizedStringForKey(@"RVC_ALL_ROOMS_MOPPED");
        v291 = 0;
        name37 = [accessoryCopy name];
        v167 = [v82 localizedStringWithValidatedFormat:v83 validFormatSpecifiers:@"%@" error:&v291, name37];
        v50 = v291;

        if (v167)
        {
          goto LABEL_164;
        }

        v51 = objc_autoreleasePoolPush();
        v52 = HMFGetOSLogHandle();
        v257 = @"RVC_ALL_ROOMS_MOPPED";
        if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_196;
        }

        HMFGetLogIdentifier();
        v255 = v51;
        v86 = v85 = v52;
        *buf = 138544130;
        v323 = v86;
        v324 = 2112;
        v325 = @"RVC_ALL_ROOMS_MOPPED";
        v326 = 2112;
        v327 = @"%@";
        v328 = 2112;
        v329 = v50;
      }

LABEL_195:
      _os_log_impl(&dword_229538000, v85, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

      v52 = v85;
      v51 = v255;
      goto LABEL_196;
    }
  }

LABEL_216:

  v253 = *MEMORY[0x277D85DE8];
}

- (void)insertBulletinForMatterAttributeWithAccessory:(id)accessory attributePath:(id)path value:(id)value fields:(id)fields
{
  accessoryCopy = accessory;
  pathCopy = path;
  valueCopy = value;
  fieldsCopy = fields;
  if (!accessoryCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!pathCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v14 = fieldsCopy;
  clusterID = [pathCopy clusterID];

  if (!clusterID)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  attributeID = [pathCopy attributeID];

  if (!attributeID)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (valueCopy)
  {
    workQueue = [(HMDBulletinBoard *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __93__HMDBulletinBoard_insertBulletinForMatterAttributeWithAccessory_attributePath_value_fields___block_invoke;
    block[3] = &unk_278689550;
    v24 = accessoryCopy;
    selfCopy = self;
    v26 = pathCopy;
    v27 = valueCopy;
    v28 = v14;
    v18 = v14;
    v19 = valueCopy;
    v20 = pathCopy;
    v21 = accessoryCopy;
    dispatch_async(workQueue, block);

    return;
  }

LABEL_11:
  v22 = _HMFPreconditionFailure();
  __93__HMDBulletinBoard_insertBulletinForMatterAttributeWithAccessory_attributePath_value_fields___block_invoke(v22);
}

void __93__HMDBulletinBoard_insertBulletinForMatterAttributeWithAccessory_attributePath_value_fields___block_invoke(uint64_t a1)
{
  v64[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  if ([v2 shouldPostBulletin])
  {
    v3 = [*(a1 + 32) accessoryBulletinContext];
    v4 = [v3 mutableCopy];

    v5 = [v2 contextID];
    [v4 setObject:v5 forKeyedSubscript:@"home"];

    v6 = [MEMORY[0x277CCAD78] UUID];
    v53 = [v6 UUIDString];

    v7 = MEMORY[0x277CD1878];
    v8 = [*(a1 + 32) contextSPIUniqueIdentifier];
    v9 = [v8 UUIDString];
    v10 = [v7 tupleWithQueryType:1 uuidString:v9];

    v11 = MEMORY[0x277CD1878];
    v12 = [v2 contextSPIUniqueIdentifier];
    v13 = [v12 UUIDString];
    v14 = [v11 tupleWithQueryType:0 uuidString:v13];

    v15 = MEMORY[0x277CBEB98];
    v50 = v14;
    v64[0] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:1];
    v17 = [v15 setWithArray:v16];
    v51 = v10;
    v18 = generateURLForHomeKitObject();

    if (v18)
    {
      v19 = [v18 absoluteString];
      [v4 setObject:v19 forKey:*MEMORY[0x277CD13D8]];
    }

    v52 = v4;
    v54 = 0;
    v55 = 0;
    [*(a1 + 40) bulletinTitle:&v55 andMessage:&v54 forAccessory:*(a1 + 32) attributePath:*(a1 + 48) value:*(a1 + 56) fields:*(a1 + 64)];
    v20 = v55;
    v21 = v54;
    if (v21)
    {
      v49 = v18;
      v22 = *(a1 + 40);
      v23 = [v2 uuid];
      v24 = [v23 UUIDString];
      v25 = [v22 threadIdentifierForGroupingWithHomeWithUUIDString:v24];

      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 40);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543874;
        v57 = v29;
        v58 = 2112;
        v59 = v21;
        v60 = 2112;
        v61 = v53;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Inserting new bulletin with message=%@, requestIdentifier=%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v26);
      v30 = [*(a1 + 40) notificationCenter];
      v31 = [MEMORY[0x277CBEAA8] date];
      LOBYTE(v48) = 0;
      v33 = v52;
      v32 = v53;
      v34 = [v30 showNotificationWithTitle:v20 body:v21 threadIdentifier:v25 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v53 date:v31 attachments:0 userInfo:v52 shouldIgnoreDoNotDisturb:v48 interruptionLevel:1 logEventTopic:8];

      [*(a1 + 40) addNotificationRequest:v34 forIdentifier:v53];
      v18 = v49;
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      v41 = *(a1 + 40);
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = HMFGetLogIdentifier();
        v44 = *(a1 + 32);
        v45 = *(a1 + 48);
        v46 = *(a1 + 56);
        *buf = 138544130;
        v57 = v43;
        v58 = 2112;
        v59 = v44;
        v60 = 2112;
        v61 = v45;
        v62 = 2112;
        v63 = v46;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Message for Matter attribute bulletin is nil. Not posting bulletin. accessory=%@ attributePath=%@ value=%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v40);
      v33 = v52;
      v32 = v53;
    }
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = *(a1 + 40);
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      v39 = *(a1 + 32);
      *buf = 138543618;
      v57 = v38;
      v58 = 2112;
      v59 = v39;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Not allowed to post bulletin for Matter Attribute : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (void)insertClimateBulletinForHome:(id)home title:(id)title body:(id)body completion:(id)completion
{
  homeCopy = home;
  titleCopy = title;
  bodyCopy = body;
  completionCopy = completion;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDBulletinBoard_insertClimateBulletinForHome_title_body_completion___block_invoke;
  block[3] = &unk_278688978;
  v23 = bodyCopy;
  v24 = completionCopy;
  v20 = homeCopy;
  selfCopy = self;
  v22 = titleCopy;
  v15 = bodyCopy;
  v16 = titleCopy;
  v17 = completionCopy;
  v18 = homeCopy;
  dispatch_async(workQueue, block);
}

void __71__HMDBulletinBoard_insertClimateBulletinForHome_title_body_completion___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) shouldPostBulletin])
  {
    v2 = [MEMORY[0x277CCAD78] UUID];
    v3 = [v2 UUIDString];

    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) uuid];
    v6 = [v5 UUIDString];
    v7 = [v4 threadIdentifierForGroupingWithHomeWithUUIDString:v6];

    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = [MEMORY[0x277CCAD78] UUID];
    v10 = [v9 UUIDString];
    [v8 setObject:v10 forKey:@"home"];

    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 48);
      v16 = *(a1 + 56);
      *buf = 138544130;
      v28 = v14;
      v29 = 2112;
      v30 = v15;
      v31 = 2112;
      v32 = v16;
      v33 = 2112;
      v34 = v3;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Inserting climate bulletin - title: %@, body: %@, requestIdentifier: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    v17 = [*(a1 + 40) notificationCenter];
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = [MEMORY[0x277CBEAA8] date];
    LOBYTE(v25) = 0;
    v21 = [v17 showNotificationWithTitle:v18 body:v19 threadIdentifier:v7 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v3 date:v20 attachments:0 userInfo:v8 shouldIgnoreDoNotDisturb:v25 interruptionLevel:1 logEventTopic:8];

    [*(a1 + 40) addNotificationRequest:v21 forIdentifier:v3];
    (*(*(a1 + 64) + 16))();

    v22 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v23 = *(a1 + 64);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(v23 + 16))(v23);
    v24 = *MEMORY[0x277D85DE8];
  }
}

- (void)insertClimateBulletinForAccessory:(id)accessory title:(id)title body:(id)body actionURL:(id)l
{
  accessoryCopy = accessory;
  titleCopy = title;
  bodyCopy = body;
  lCopy = l;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDBulletinBoard_insertClimateBulletinForAccessory_title_body_actionURL___block_invoke;
  block[3] = &unk_278689550;
  v20 = accessoryCopy;
  v21 = lCopy;
  selfCopy = self;
  v23 = titleCopy;
  v24 = bodyCopy;
  v15 = bodyCopy;
  v16 = titleCopy;
  v17 = lCopy;
  v18 = accessoryCopy;
  dispatch_async(workQueue, block);
}

void __75__HMDBulletinBoard_insertClimateBulletinForAccessory_title_body_actionURL___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  if ([v2 shouldPostBulletin])
  {
    v3 = [*(a1 + 32) accessoryBulletinContext];
    v4 = [v3 mutableCopy];

    v5 = [v2 contextID];
    [v4 setObject:v5 forKey:@"home"];

    v6 = [*(a1 + 40) absoluteString];
    [v4 setObject:v6 forKey:*MEMORY[0x277CD13D8]];

    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = [v7 UUIDString];

    v9 = *(a1 + 48);
    v10 = [v2 uuid];
    v11 = [v10 UUIDString];
    v12 = [v9 threadIdentifierForGroupingWithHomeWithUUIDString:v11];

    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 48);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(a1 + 56);
      v18 = *(a1 + 64);
      v19 = *(a1 + 40);
      *buf = 138544386;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      v33 = 2112;
      v34 = v19;
      v35 = 2112;
      v36 = v8;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Inserting climate bulletin - title: %@, body: %@, actionURL: %@, requestIdentifier: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v13);
    v20 = [*(a1 + 48) notificationCenter];
    v21 = *(a1 + 56);
    v22 = *(a1 + 64);
    v23 = [MEMORY[0x277CBEAA8] date];
    LOBYTE(v26) = 0;
    v24 = [v20 showNotificationWithTitle:v21 body:v22 threadIdentifier:v12 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v8 date:v23 attachments:0 userInfo:v4 shouldIgnoreDoNotDisturb:v26 interruptionLevel:1 logEventTopic:8];

    [*(a1 + 48) addNotificationRequest:v24 forIdentifier:v8];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)insertUserPreferredHomeHubReachabilityBulletinForHome:(id)home reachable:(BOOL)reachable electedPrimary:(id)primary previousPrimary:(id)previousPrimary
{
  v28 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  primaryCopy = primary;
  previousPrimaryCopy = previousPrimary;
  if ([homeCopy shouldPostBulletin])
  {
    workQueue = [(HMDBulletinBoard *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __115__HMDBulletinBoard_insertUserPreferredHomeHubReachabilityBulletinForHome_reachable_electedPrimary_previousPrimary___block_invoke;
    block[3] = &unk_2786899C8;
    block[4] = self;
    v20 = homeCopy;
    reachableCopy = reachable;
    v21 = primaryCopy;
    v22 = previousPrimaryCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v17;
      v26 = 2112;
      v27 = homeCopy;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Not allowed to post bulletin for preferred home hub reachability : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __115__HMDBulletinBoard_insertUserPreferredHomeHubReachabilityBulletinForHome_reachable_electedPrimary_previousPrimary___block_invoke(uint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];

  if (v2)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = HMDLocalizedStringForKey(@"HOME_USER_PREFERRED_HUB_REACHABLE_TITLE");
    v56 = 0;
    v5 = [*(a1 + 40) name];
    v6 = [v3 localizedStringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:&v56, v5];
    v7 = v56;

    v8 = v6;
    if (!v6)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138544130;
        v58 = v11;
        v59 = 2112;
        v60 = @"HOME_USER_PREFERRED_HUB_REACHABLE_TITLE";
        v61 = 2112;
        v62 = @"%@";
        v63 = 2112;
        v64 = v7;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v9);
      v8 = @"HOME_USER_PREFERRED_HUB_REACHABLE_TITLE";
    }

    v53 = v8;

    v12 = MEMORY[0x277CCACA8];
    if (*(a1 + 64) == 1)
    {
      v13 = HMDLocalizedStringForKey(@"HOME_USER_PREFERRED_HUB_REACHABLE_MESSAGE");
      v55 = 0;
      v14 = [v12 localizedStringWithValidatedFormat:v13 validFormatSpecifiers:@"%@" error:&v55, *(a1 + 48)];
      v15 = v55;

      if (!v14)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = HMFGetOSLogHandle();
        v14 = @"HOME_USER_PREFERRED_HUB_REACHABLE_MESSAGE";
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138544130;
          v58 = v18;
          v59 = 2112;
          v60 = @"HOME_USER_PREFERRED_HUB_REACHABLE_MESSAGE";
          v61 = 2112;
          v62 = @"%@";
          v63 = 2112;
          v64 = v15;
LABEL_17:
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

          goto LABEL_18;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v23 = HMDLocalizedStringForKey(@"HOME_USER_PREFERRED_HUB_NOT_REACHABLE_MESSAGE");
      v54 = 0;
      v14 = [v12 localizedStringWithValidatedFormat:v23 validFormatSpecifiers:@"%@ %@" error:&v54, *(a1 + 56), *(a1 + 48)];
      v15 = v54;

      if (!v14)
      {
        v16 = objc_autoreleasePoolPush();
        v17 = HMFGetOSLogHandle();
        v14 = @"HOME_USER_PREFERRED_HUB_NOT_REACHABLE_MESSAGE";
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138544130;
          v58 = v18;
          v59 = 2112;
          v60 = @"HOME_USER_PREFERRED_HUB_NOT_REACHABLE_MESSAGE";
          v61 = 2112;
          v62 = @"%@ %@";
          v63 = 2112;
          v64 = v15;
          goto LABEL_17;
        }

LABEL_18:

        objc_autoreleasePoolPop(v16);
        v24 = 0;
        goto LABEL_19;
      }
    }

    v24 = v14;
LABEL_19:
    v25 = v14;

    v26 = MEMORY[0x277CD1878];
    v27 = [*(a1 + 40) contextSPIUniqueIdentifier];
    v28 = [v27 UUIDString];
    v29 = [v26 tupleWithQueryType:0 uuidString:v28];

    v30 = [*(a1 + 40) homeBulletinContext];
    v31 = [v30 mutableCopy];

    v52 = v29;
    v32 = generateURLForHomeKitObject();
    v33 = [MEMORY[0x277CCAD78] UUID];
    v34 = [v33 UUIDString];

    v51 = v32;
    v35 = [v32 absoluteString];
    [v31 setObject:v35 forKeyedSubscript:*MEMORY[0x277CD13D8]];

    v36 = [*(a1 + 40) contextID];
    [v31 setObject:v36 forKeyedSubscript:@"home"];

    v37 = *(a1 + 32);
    v38 = [*(a1 + 40) uuid];
    v39 = [v38 UUIDString];
    v40 = [v37 threadIdentifierForGroupingWithHomeWithUUIDString:v39];

    v41 = objc_autoreleasePoolPush();
    v42 = *(a1 + 32);
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543874;
      v58 = v44;
      v59 = 2112;
      v60 = v53;
      v61 = 2112;
      v62 = v25;
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Inserting new bulletin with title: %@, message: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v41);
    v45 = [*(a1 + 32) notificationCenter];
    v46 = [MEMORY[0x277CBEAA8] date];
    v47 = [v31 copy];
    LOBYTE(v50) = 0;
    v48 = [v45 showNotificationWithTitle:v53 body:v25 threadIdentifier:v40 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v34 date:v46 attachments:0 userInfo:v47 shouldIgnoreDoNotDisturb:v50 interruptionLevel:1 logEventTopic:10];

    [*(a1 + 32) addNotificationRequest:v48 forIdentifier:v34];
    goto LABEL_22;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = *(a1 + 32);
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v58 = v22;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, bailing insertHomeResidentSelectionUserPreferredReachable", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
LABEL_22:
  v49 = *MEMORY[0x277D85DE8];
}

- (void)insertBulletinForLockUserChange:(id)change lockDataType:(unsigned __int8)type dataOperationType:(unsigned __int8)operationType ecosystemName:(id)name isAffectedUser:(BOOL)user flow:(id)flow
{
  changeCopy = change;
  nameCopy = name;
  flowCopy = flow;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__HMDBulletinBoard_insertBulletinForLockUserChange_lockDataType_dataOperationType_ecosystemName_isAffectedUser_flow___block_invoke;
  block[3] = &unk_278672D20;
  v22 = changeCopy;
  v23 = flowCopy;
  typeCopy = type;
  operationTypeCopy = operationType;
  selfCopy = self;
  v25 = nameCopy;
  userCopy = user;
  v18 = nameCopy;
  v19 = flowCopy;
  v20 = changeCopy;
  dispatch_async(workQueue, block);
}

void __117__HMDBulletinBoard_insertBulletinForLockUserChange_lockDataType_dataOperationType_ecosystemName_isAffectedUser_flow___block_invoke(uint64_t a1)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [*(a1 + 32) accessoryBulletinContext];
  v4 = [v3 mutableCopy];

  v5 = [*(a1 + 40) UUID];
  v43 = [v5 UUIDString];

  v6 = MEMORY[0x277CD1878];
  v7 = [*(a1 + 32) contextSPIUniqueIdentifier];
  v8 = [v7 UUIDString];
  v9 = [v6 tupleWithQueryType:1 uuidString:v8];

  v10 = MEMORY[0x277CD1878];
  v11 = [v2 contextSPIUniqueIdentifier];
  v12 = [v11 UUIDString];
  v13 = [v10 tupleWithQueryType:0 uuidString:v12];

  v14 = MEMORY[0x277CBEB98];
  v54[0] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:1];
  v16 = [v14 setWithArray:v15];
  v42 = v9;
  v17 = generateURLForHomeKitObject();

  if (v17)
  {
    v18 = [v17 absoluteString];
    [v4 setObject:v18 forKey:*MEMORY[0x277CD13D8]];
  }

  v19 = *(a1 + 48);
  v20 = objc_opt_class();
  v44 = 0;
  v45 = 0;
  LOBYTE(v37) = *(a1 + 66);
  [v20 messageAndTitleForLockUserChangeEvent:&v45 title:&v44 accessory:*(a1 + 32) lockDataType:*(a1 + 64) dataOperationType:*(a1 + 65) ecosystemName:*(a1 + 56) isAffectedUser:v37];
  v21 = v45;
  v22 = v44;
  if (v21)
  {
    v39 = v13;
    v23 = [v2 contextID];
    v40 = v4;
    [v4 setObject:v23 forKeyedSubscript:@"home"];

    v24 = *(a1 + 48);
    v41 = v2;
    v25 = [v2 uuid];
    v26 = [v25 UUIDString];
    v27 = [v24 threadIdentifierForGroupingWithHomeWithUUIDString:v26];

    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 48);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      v32 = [*(a1 + 40) UUID];
      *buf = 138544130;
      v47 = v31;
      v48 = 2112;
      v49 = v32;
      v50 = 2112;
      v51 = v21;
      v52 = 2112;
      v53 = v43;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Inserting new bulletin with message=%@, requestIdentifier=%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v28);
    v33 = [*(a1 + 48) notificationCenter];
    v34 = [MEMORY[0x277CBEAA8] date];
    LOBYTE(v38) = 0;
    v35 = [v33 showNotificationWithTitle:v22 body:v21 threadIdentifier:v27 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v43 date:v34 attachments:0 userInfo:v40 shouldIgnoreDoNotDisturb:v38 interruptionLevel:1 logEventTopic:8];

    [*(a1 + 48) addNotificationRequest:v35 forIdentifier:v43];
    v4 = v40;
    v2 = v41;
    v13 = v39;
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)insertBulletinForLockOperation:(id)operation userDisplayName:(id)name lockOperationType:(unsigned __int8)type ecosystemName:(id)ecosystemName flow:(id)flow
{
  operationCopy = operation;
  nameCopy = name;
  ecosystemNameCopy = ecosystemName;
  flowCopy = flow;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __104__HMDBulletinBoard_insertBulletinForLockOperation_userDisplayName_lockOperationType_ecosystemName_flow___block_invoke;
  v21[3] = &unk_2786801A0;
  v22 = operationCopy;
  selfCopy = self;
  v24 = flowCopy;
  v25 = nameCopy;
  typeCopy = type;
  v26 = ecosystemNameCopy;
  v17 = ecosystemNameCopy;
  v18 = nameCopy;
  v19 = flowCopy;
  v20 = operationCopy;
  dispatch_async(workQueue, v21);
}

void __104__HMDBulletinBoard_insertBulletinForLockOperation_userDisplayName_lockOperationType_ecosystemName_flow___block_invoke(uint64_t a1)
{
  v70[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  if ([v2 shouldPostBulletin])
  {
    v3 = [*(a1 + 32) name];
    v4 = [*(a1 + 32) room];
    v5 = [v4 name];

    v58 = [v2 name];
    v6 = [*(a1 + 32) accessoryBulletinContext];
    v7 = [v6 mutableCopy];

    v8 = [*(a1 + 48) UUID];
    v59 = [v8 UUIDString];

    v9 = MEMORY[0x277CD1878];
    v10 = [*(a1 + 32) contextSPIUniqueIdentifier];
    v11 = [v10 UUIDString];
    v12 = [v9 tupleWithQueryType:1 uuidString:v11];

    v13 = MEMORY[0x277CD1878];
    v14 = [v2 contextSPIUniqueIdentifier];
    v15 = [v14 UUIDString];
    v16 = [v13 tupleWithQueryType:0 uuidString:v15];

    v17 = v7;
    v18 = MEMORY[0x277CBEB98];
    v70[0] = v16;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:1];
    v20 = [v18 setWithArray:v19];
    v57 = v12;
    v21 = generateURLForHomeKitObject();

    if (v21)
    {
      v22 = [v21 absoluteString];
      [v7 setObject:v22 forKey:*MEMORY[0x277CD13D8]];
    }

    v23 = *(a1 + 56);
    v24 = v58;
    if (v23)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"user=%@ room=%@ accessory=%@ operationType=%hhu", v23, v5, v3, *(a1 + 72)];
    }

    else
    {
      v30 = *(a1 + 64);
      if (v30)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"room=%@ accessory=%@ operationType=%hhu ecosystemName=%@", v5, v3, *(a1 + 72), v30];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"room=%@ accessory=%@ operationType=%hhu", v5, v3, *(a1 + 72), v50];
      }
    }
    v31 = ;
    v32 = *(a1 + 40);
    v33 = [objc_opt_class() messageForLockOperationEvent:*(a1 + 32) personName:*(a1 + 56) lockOperationType:*(a1 + 72) ecosystemName:*(a1 + 64)];
    if (v33)
    {
      v52 = v21;
      v53 = v16;
      v55 = v5;
      v56 = v3;
      v34 = [v2 contextID];
      [v17 setObject:v34 forKeyedSubscript:@"home"];

      v35 = [&unk_283E71F90 stringValue];
      v54 = v17;
      [v17 setObject:v35 forKeyedSubscript:@"characteristic"];

      v36 = *(a1 + 40);
      v51 = v2;
      v37 = [v2 uuid];
      v38 = [v37 UUIDString];
      v39 = [v36 threadIdentifierForGroupingWithHomeWithUUIDString:v38];

      v40 = objc_autoreleasePoolPush();
      v41 = *(a1 + 40);
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        v44 = [*(a1 + 48) UUID];
        *buf = 138544386;
        v61 = v43;
        v62 = 2112;
        v63 = v44;
        v64 = 2112;
        v65 = v33;
        v66 = 2112;
        v67 = v31;
        v68 = 2112;
        v69 = v59;
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Inserting new bulletin with message=%@, reason=%@, requestIdentifier=%@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v40);
      v45 = [*(a1 + 40) notificationCenter];
      v46 = [MEMORY[0x277CBEAA8] date];
      LOBYTE(v49) = 0;
      v47 = [v45 showNotificationWithTitle:v58 body:v33 threadIdentifier:v39 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v59 date:v46 attachments:0 userInfo:v54 shouldIgnoreDoNotDisturb:v49 interruptionLevel:1 logEventTopic:8];

      v17 = v54;
      [*(a1 + 40) addNotificationRequest:v47 forIdentifier:v59];

      v24 = v58;
      v5 = v55;
      v3 = v56;
      v21 = v52;
      v16 = v53;
      v2 = v51;
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = *(a1 + 40);
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      v29 = *(a1 + 32);
      *buf = 138543618;
      v61 = v28;
      v62 = 2112;
      v63 = v29;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Not allowed to post bulletin for Door lock operation : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (void)insertBulletinForDoorLockAlarm:(id)alarm alarmCode:(unsigned __int8)code flow:(id)flow
{
  alarmCopy = alarm;
  flowCopy = flow;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__HMDBulletinBoard_insertBulletinForDoorLockAlarm_alarmCode_flow___block_invoke;
  v13[3] = &unk_278685AA8;
  v14 = alarmCopy;
  selfCopy = self;
  v16 = flowCopy;
  codeCopy = code;
  v11 = flowCopy;
  v12 = alarmCopy;
  dispatch_async(workQueue, v13);
}

void __66__HMDBulletinBoard_insertBulletinForDoorLockAlarm_alarmCode_flow___block_invoke(uint64_t a1)
{
  v76[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  if ([v2 shouldPostBulletin])
  {
    v3 = [v2 name];
    v4 = [*(a1 + 32) accessoryBulletinContext];
    v5 = [v4 mutableCopy];

    v6 = [*(a1 + 40) notificationRequestsSortedByDate];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __66__HMDBulletinBoard_insertBulletinForDoorLockAlarm_alarmCode_flow___block_invoke_385;
    v66[3] = &unk_278672CF8;
    v67 = *(a1 + 32);
    v7 = [v6 na_firstObjectPassingTest:v66];

    v8 = [v7 identifier];
    v9 = v8;
    if (v8)
    {
      v65 = v8;
    }

    else
    {
      v15 = [*(a1 + 48) UUID];
      v65 = [v15 UUIDString];
    }

    v16 = MEMORY[0x277CD1878];
    v17 = [*(a1 + 32) contextSPIUniqueIdentifier];
    v18 = [v17 UUIDString];
    v19 = [v16 tupleWithQueryType:1 uuidString:v18];

    v20 = MEMORY[0x277CD1878];
    v21 = [v2 contextSPIUniqueIdentifier];
    v22 = [v21 UUIDString];
    v23 = [v20 tupleWithQueryType:0 uuidString:v22];

    v24 = MEMORY[0x277CBEB98];
    v63 = v23;
    v76[0] = v23;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:1];
    v26 = [v24 setWithArray:v25];
    v64 = v19;
    v27 = generateURLForHomeKitObject();

    if (v27)
    {
      v28 = [v27 absoluteString];
      [v5 setObject:v28 forKey:*MEMORY[0x277CD13D8]];
    }

    v29 = *(a1 + 40);
    v30 = [objc_opt_class() messageForDoorLockAlarmEvent:*(a1 + 32) alarmCode:*(a1 + 56)];
    v31 = v65;
    if (v30)
    {
      v61 = v27;
      v32 = [v2 contextID];
      [v5 setObject:v32 forKeyedSubscript:@"home"];

      v33 = *(a1 + 40);
      v34 = [v2 uuid];
      v35 = [v34 UUIDString];
      v62 = [v33 threadIdentifierForGroupingWithHomeWithUUIDString:v35];

      v36 = objc_autoreleasePoolPush();
      v37 = *(a1 + 40);
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v59 = v7;
        v40 = v39 = v5;
        [*(a1 + 48) UUID];
        v42 = v41 = v3;
        *buf = 138544130;
        v69 = v40;
        v70 = 2112;
        v71 = v42;
        v72 = 2112;
        v73 = v30;
        v74 = 2112;
        v75 = v65;
        _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Inserting new bulletin with message=%@, requestIdentifier=%@", buf, 0x2Au);

        v3 = v41;
        v31 = v65;

        v5 = v39;
        v7 = v59;
      }

      objc_autoreleasePoolPop(v36);
      v43 = [*(a1 + 40) notificationCenter];
      v44 = [MEMORY[0x277CBEAA8] date];
      LOBYTE(v56) = 0;
      v45 = [v43 showNotificationWithTitle:v3 body:v30 threadIdentifier:v62 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v31 date:v44 attachments:0 userInfo:v5 shouldIgnoreDoNotDisturb:v56 interruptionLevel:1 logEventTopic:8];

      if (v7)
      {
        v60 = v5;
        v46 = objc_autoreleasePoolPush();
        v47 = *(a1 + 40);
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v49 = v58 = v3;
          v50 = [*(a1 + 48) UUID];
          [v7 identifier];
          v51 = v57 = v46;
          *buf = 138543874;
          v69 = v49;
          v70 = 2112;
          v71 = v50;
          v72 = 2112;
          v73 = v51;
          _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Event is replacing last lock operation event with requestIdentifier=%@", buf, 0x20u);

          v46 = v57;
          v3 = v58;
        }

        objc_autoreleasePoolPop(v46);
        v52 = *(a1 + 40);
        v53 = [v45 content];
        v54 = [v7 identifier];
        [v52 updateContent:v53 forNotificationWithRequestIdentifier:v54];

        v5 = v60;
        v31 = v65;
      }

      else
      {
        [*(a1 + 40) addNotificationRequest:v45 forIdentifier:v31];
      }

      v27 = v61;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 32);
      *buf = 138543618;
      v69 = v13;
      v70 = 2112;
      v71 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Not allowed to post bulletin for Door Lock Alarm : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v55 = *MEMORY[0x277D85DE8];
}

uint64_t __66__HMDBulletinBoard_insertBulletinForDoorLockAlarm_alarmCode_flow___block_invoke_385(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 content];
  v5 = [v4 userInfo];
  v6 = [v5 hmf_stringForKey:@"accessory"];

  v7 = [v3 content];

  v8 = [v7 userInfo];
  v9 = [v8 hmf_stringForKey:@"characteristic"];

  v10 = [*(a1 + 32) contextID];
  if ([v6 isEqualToString:v10])
  {
    v11 = [&unk_283E71F90 stringValue];
    v12 = [v9 isEqualToString:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)messageForWindowCharacteristic:(id)characteristic personName:(id)name
{
  v61 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  nameCopy = name;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  service = [characteristicCopy service];
  name = [service name];
  accessory = [characteristicCopy accessory];
  room = [accessory room];
  name2 = [room name];
  v14 = HMDLocalizedStringForKey(@"BULLETIN_ACTION_ROOM_SERVICE");
  v15 = [HMDServiceNameComponents componentsWithRawServiceName:name rawRoomName:name2 localizedFormat:v14];

  value = [characteristicCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = value;
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
  if (nameCopy)
  {
    v20 = [(__CFString *)v19 stringByAppendingString:@"_WITH_PERSON"];
    v21 = MEMORY[0x277CCACA8];
    v49 = v20;
    v22 = HMDLocalizedStringForKey(v20);
    v52 = 0;
    composedName = [v15 composedName];
    nameCopy = [v21 localizedStringWithValidatedFormat:v22 validFormatSpecifiers:@"%@ %@" error:&v52, composedName, nameCopy];
    v25 = v52;

    if (!nameCopy)
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
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

LABEL_20:
        objc_autoreleasePoolPop(v26);
        v35 = 0;
        v49 = v29;
        nameCopy = v29;
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
    composedName2 = [v15 composedName];
    nameCopy = [v32 localizedStringWithValidatedFormat:v33 validFormatSpecifiers:@"%@" error:&v51, composedName2];
    v25 = v51;

    if (!nameCopy)
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

  v35 = nameCopy;
LABEL_21:
  v36 = nameCopy;

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
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

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

- (id)messageForSecuritySystemCharacteristic:(id)characteristic personName:(id)name
{
  v58 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  nameCopy = name;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  service = [characteristicCopy service];
  name = [service name];
  accessory = [characteristicCopy accessory];
  room = [accessory room];
  name2 = [room name];
  v14 = HMDLocalizedStringForKey(@"BULLETIN_ACTION_ROOM_SERVICE");
  v15 = [HMDServiceNameComponents componentsWithRawServiceName:name rawRoomName:name2 localizedFormat:v14];

  value = [characteristicCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = value;
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
  if (nameCopy)
  {
    v20 = [(__CFString *)v19 stringByAppendingString:@"_WITH_PERSON"];
    v21 = MEMORY[0x277CCACA8];
    v46 = v20;
    v22 = HMDLocalizedStringForKey(v20);
    v49 = 0;
    composedName = [v15 composedName];
    nameCopy = [v21 localizedStringWithValidatedFormat:v22 validFormatSpecifiers:@"%@ %@" error:&v49, composedName, nameCopy];
    v25 = v49;

    if (!nameCopy)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138544130;
        v51 = v28;
        v52 = 2112;
        nameCopy = v46;
        v53 = v46;
        v54 = 2112;
        v55 = @"%@ %@";
        v56 = 2112;
        v57 = v25;
LABEL_24:
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

LABEL_26:
        objc_autoreleasePoolPop(v26);
        v34 = 0;
        v46 = nameCopy;
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
    composedName2 = [v15 composedName];
    nameCopy = [v31 localizedStringWithValidatedFormat:v32 validFormatSpecifiers:@"%@" error:&v48, composedName2];
    v25 = v48;

    if (!nameCopy)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138544130;
        v51 = v28;
        v52 = 2112;
        nameCopy = v46;
        v53 = v46;
        v54 = 2112;
        v55 = @"%@";
        v56 = 2112;
        v57 = v25;
        goto LABEL_24;
      }

LABEL_25:
      nameCopy = v46;
      goto LABEL_26;
    }
  }

  v34 = nameCopy;
LABEL_27:
  v35 = nameCopy;

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
      _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v41);
    v40 = @"BULLETIN_SECURITY_SYSTEM_MESSAGE";
  }

  v29 = v40;

LABEL_32:
  v44 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)messageForGarageDoorCharacteristic:(id)characteristic personName:(id)name
{
  v61 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  nameCopy = name;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  service = [characteristicCopy service];
  name = [service name];
  accessory = [characteristicCopy accessory];
  room = [accessory room];
  name2 = [room name];
  v14 = HMDLocalizedStringForKey(@"BULLETIN_ACTION_ROOM_SERVICE");
  v15 = [HMDServiceNameComponents componentsWithRawServiceName:name rawRoomName:name2 localizedFormat:v14];

  value = [characteristicCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = value;
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
  if (nameCopy)
  {
    v21 = [(__CFString *)v19 stringByAppendingString:@"_WITH_PERSON"];
    v22 = MEMORY[0x277CCACA8];
    v49 = v21;
    v23 = HMDLocalizedStringForKey(v21);
    v52 = 0;
    composedName = [v15 composedName];
    nameCopy = [v22 localizedStringWithValidatedFormat:v23 validFormatSpecifiers:@"%@ %@" error:&v52, composedName, nameCopy];
    v26 = v52;

    if (!nameCopy)
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
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

LABEL_20:
        objc_autoreleasePoolPop(v27);
        v35 = 0;
        v49 = v30;
        nameCopy = v30;
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
    composedName2 = [v15 composedName];
    nameCopy = [v32 localizedStringWithValidatedFormat:v33 validFormatSpecifiers:@"%@" error:&v51, composedName2];
    v26 = v51;

    if (!nameCopy)
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

  v35 = nameCopy;
LABEL_21:
  v36 = nameCopy;

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
      _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

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

- (void)resolveDisplayNameForChangedCharacteristic:(id)characteristic completion:(id)completion
{
  characteristicCopy = characteristic;
  completionCopy = completion;
  accessory = [characteristicCopy accessory];
  home = [accessory home];
  lockNotificationManager = [home lockNotificationManager];
  if ([lockNotificationManager shouldResolveNotificationContextForCharacteristic:characteristicCopy])
  {
    notificationContext = [characteristicCopy notificationContext];
    uuid = [accessory uuid];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__HMDBulletinBoard_resolveDisplayNameForChangedCharacteristic_completion___block_invoke;
    v13[3] = &unk_278672CD0;
    v13[4] = self;
    v16 = completionCopy;
    v14 = accessory;
    v15 = lockNotificationManager;
    [v15 resolveEncodedCharacteristicNotificationContext:notificationContext accessoryUUID:uuid completion:v13];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Resolved notification context to result: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [v5 userUUID];

    if (v12)
    {
      v13 = [*(a1 + 40) home];
      v14 = [v13 users];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __74__HMDBulletinBoard_resolveDisplayNameForChangedCharacteristic_completion___block_invoke_341;
      v19[3] = &unk_278688680;
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
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to resolve notification context with error: %@, creating bulletin without display name", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 56) + 16))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __74__HMDBulletinBoard_resolveDisplayNameForChangedCharacteristic_completion___block_invoke_341(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) userUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)insertBulletinForChangedSecureClassCharacteristic:(id)characteristic attributedUser:(id)user
{
  v68 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  userCopy = user;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  accessory = [characteristicCopy accessory];
  home = [accessory home];
  if (home)
  {
    bulletinContext = [characteristicCopy bulletinContext];
    v10 = [bulletinContext mutableCopy];

    v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCF328]];
    v12 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCF340]];
    v13 = [v10 objectForKeyedSubscript:*MEMORY[0x277CCF320]];
    v14 = v13;
    if (v11)
    {
      v15 = v12 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15 || v13 == 0)
    {
      v35 = v13;
      v36 = v12;
      v37 = v11;
      context = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138544130;
        v61 = v19;
        v62 = 2112;
        v63 = v37;
        v64 = 2112;
        v65 = v36;
        v66 = 2112;
        v67 = v35;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot generate action URL with homeUUID: %@ serviceUUID: %@ characteristicUUID: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(context);
    }

    else
    {
      contexta = [MEMORY[0x277CD1878] tupleWithQueryType:0 uuidString:v11];
      v43 = [MEMORY[0x277CD1878] tupleWithQueryType:2 uuidString:v12];
      v45 = [MEMORY[0x277CD1878] tupleWithQueryType:3 uuidString:v14];
      v24 = MEMORY[0x277CBEB98];
      v59[0] = contexta;
      v59[1] = v45;
      [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
      v25 = v44 = v11;
      [v24 setWithArray:v25];
      v26 = v42 = v12;
      v39 = generateURLForHomeKitObject();

      name = [home name];
      date = [MEMORY[0x277CBEAA8] date];
      [MEMORY[0x277CCAD78] UUID];
      v29 = v41 = v14;
      uUIDString = [v29 UUIDString];

      v31 = [HMDBulletinBoard interruptionLevelForChangedCharacteristic:characteristicCopy];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __85__HMDBulletinBoard_insertBulletinForChangedSecureClassCharacteristic_attributedUser___block_invoke;
      v50[3] = &unk_278672CA8;
      v50[4] = self;
      v51 = userCopy;
      v52 = characteristicCopy;
      v53 = v10;
      v54 = name;
      v55 = uUIDString;
      v56 = date;
      v57 = v39;
      v58 = v31;
      v40 = v39;
      v32 = date;
      v33 = uUIDString;
      v34 = name;
      v35 = v41;
      v36 = v42;
      [(HMDBulletinBoard *)self resolveDisplayNameForChangedCharacteristic:v52 completion:v50];

      v37 = v44;
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v61 = v23;
      v62 = 2112;
      v63 = characteristicCopy;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Not creating a bulletin for characteristic because home is nil: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __85__HMDBulletinBoard_insertBulletinForChangedSecureClassCharacteristic_attributedUser___block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HMDBulletinBoard_insertBulletinForChangedSecureClassCharacteristic_attributedUser___block_invoke_2;
  block[3] = &unk_278680218;
  v20 = v5;
  v26 = a3;
  *&v7 = *(a1 + 40);
  *(&v7 + 1) = *(a1 + 32);
  v18 = v7;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v21 = v18;
  v22 = v10;
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  *&v16 = v11;
  *(&v16 + 1) = v12;
  v23 = v16;
  v24 = v15;
  v25 = *(a1 + 96);
  v17 = v5;
  dispatch_async(v6, block);
}

void __85__HMDBulletinBoard_insertBulletinForChangedSecureClassCharacteristic_attributedUser___block_invoke_2(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 || (v7 = *(a1 + 40)) == 0)
  {
    if (!*(a1 + 112))
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = [v7 displayName];
    if (([*(a1 + 40) isCurrentUser] & 1) == 0)
    {
LABEL_8:
      v8 = [*(a1 + 56) type];
      v9 = [v8 isEqualToString:*MEMORY[0x277CCF838]];

      if (v9)
      {
        v10 = [*(a1 + 48) messageForLockCharacteristic:*(a1 + 56) personName:v2];
        v11 = v10;
        if (v2)
        {
          v12 = [*(a1 + 48) messageForLockCharacteristic:*(a1 + 56) personName:@"<redacted>"];
          v13 = 12;
          if (!v11)
          {
            goto LABEL_30;
          }

LABEL_26:
          v22 = objc_autoreleasePoolPush();
          v23 = *(a1 + 48);
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = HMFGetLogIdentifier();
            v26 = *(a1 + 64);
            *buf = 138543874;
            v35 = v25;
            v36 = 2112;
            v37 = v12;
            v38 = 2112;
            v39 = v26;
            _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Inserting new bulletin with message: %@, userInfo: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v22);
          v27 = [*(a1 + 48) _insertRequestWithTitle:*(a1 + 72) snapshotData:0 message:v11 requestIdentifier:*(a1 + 80) date:*(a1 + 88) bulletinType:0 actionURL:*(a1 + 96) bulletinContext:*(a1 + 64) actionContext:0 interruptionLevel:*(a1 + 104) logEventTopic:v13];
          goto LABEL_33;
        }

        v19 = v10;
        v12 = v19;
        v13 = 12;
        goto LABEL_25;
      }

      v14 = [*(a1 + 56) type];
      v15 = [v14 isEqualToString:*MEMORY[0x277CCF800]];

      if (v15)
      {
        v11 = [*(a1 + 48) messageForGarageDoorCharacteristic:*(a1 + 56) personName:v2];
        if (v2)
        {
          v16 = [*(a1 + 48) messageForGarageDoorCharacteristic:*(a1 + 56) personName:@"<redacted>"];
          goto LABEL_22;
        }

LABEL_24:
        v19 = v11;
        v12 = v19;
        v13 = 8;
LABEL_25:
        v11 = v19;
        if (v19)
        {
          goto LABEL_26;
        }

LABEL_30:
        v28 = objc_autoreleasePoolPush();
        v29 = *(a1 + 48);
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = HMFGetLogIdentifier();
          v32 = *(a1 + 56);
          *buf = 138543618;
          v35 = v31;
          v36 = 2112;
          v37 = v32;
          _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_DEBUG, "%{public}@Characteristic value does not require bulletin: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
        v11 = 0;
LABEL_33:

        goto LABEL_34;
      }

      v17 = [*(a1 + 56) type];
      v18 = [v17 isEqualToString:*MEMORY[0x277CCF858]];

      if (v18)
      {
        v11 = [*(a1 + 48) messageForSecuritySystemCharacteristic:*(a1 + 56) personName:v2];
        if (!v2)
        {
          goto LABEL_24;
        }

        v16 = [*(a1 + 48) messageForSecuritySystemCharacteristic:*(a1 + 56) personName:@"<redacted>"];
      }

      else
      {
        v20 = [*(a1 + 56) type];
        v21 = [v20 isEqualToString:*MEMORY[0x277CCF848]];

        if (!v21)
        {
          v12 = 0;
          goto LABEL_30;
        }

        v11 = [*(a1 + 48) messageForWindowCharacteristic:*(a1 + 56) personName:v2];
        if (!v2)
        {
          goto LABEL_24;
        }

        v16 = [*(a1 + 48) messageForWindowCharacteristic:*(a1 + 56) personName:@"<redacted>"];
      }

LABEL_22:
      v12 = v16;
      v13 = 8;
      if (!v11)
      {
        goto LABEL_30;
      }

      goto LABEL_26;
    }
  }

  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 48);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v35 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Resolved notification context to current user, skipping bulletin", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
LABEL_34:

  v33 = *MEMORY[0x277D85DE8];
}

- (void)_insertImageBulletinsForChangedCharacteristics:(id)characteristics attributedUsers:(id)users snapshotData:(id)data completion:(id)completion
{
  v182 = *MEMORY[0x277D85DE8];
  characteristicsCopy = characteristics;
  usersCopy = users;
  dataCopy = data;
  completionCopy = completion;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  array = [MEMORY[0x277CBEB18] array];
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v13 = characteristicsCopy;
  v161 = [v13 countByEnumeratingWithState:&v166 objects:v181 count:16];
  if (v161)
  {
    v159 = *MEMORY[0x277CFE660];
    v160 = *v167;
    v144 = *MEMORY[0x277CD26B8];
    v142 = *MEMORY[0x277CCF360];
    v147 = *MEMORY[0x277CCF308];
    v141 = *MEMORY[0x277CCF328];
    v132 = *MEMORY[0x277CCF340];
    v131 = *MEMORY[0x277CCF320];
    v128 = *MEMORY[0x277CFE840];
    v133 = *MEMORY[0x277CCF358];
    v143 = usersCopy;
    selfCopy = self;
    v152 = v13;
    do
    {
      v14 = 0;
      do
      {
        if (*v167 != v160)
        {
          objc_enumerationMutation(v13);
        }

        v15 = *(*(&v166 + 1) + 8 * v14);
        value = [v15 value];
        if (value)
        {

LABEL_9:
          service = [v15 service];
          v20 = service;
          if (!service || ([service name], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
          {
            v23 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v25 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = HMFGetLogIdentifier();
              *buf = 138543618;
              v174 = v26;
              v175 = 2112;
              v176 = v15;
              _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Bulletin board changed characteristic's service or service name is nil: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v23);
            goto LABEL_16;
          }

          if ([HMDBulletinUserAttributionManager currentStateCharacteristicSupportsUserAttribution:v15])
          {
            v22 = [usersCopy objectForKey:v15];
            [usersCopy removeObjectForKey:v15];
            [(HMDBulletinBoard *)self insertBulletinForChangedSecureClassCharacteristic:v15 attributedUser:v22];

LABEL_16:
            goto LABEL_17;
          }

          bulletinBoardNotification = [v20 bulletinBoardNotification];
          isEnabled = [bulletinBoardNotification isEnabled];

          v33 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v35 = HMFGetOSLogHandle();
          v36 = os_log_type_enabled(v35, OS_LOG_TYPE_INFO);
          if (!isEnabled)
          {
            if (v36)
            {
              v53 = HMFGetLogIdentifier();
              service2 = [v15 service];
              bulletinBoardNotification2 = [service2 bulletinBoardNotification];
              *buf = 138543874;
              v174 = v53;
              v175 = 2112;
              v176 = v15;
              v177 = 2112;
              v178 = bulletinBoardNotification2;
              _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Not posting bulletin for %@ as it is not enabled: %@", buf, 0x20u);

              self = selfCopy;
            }

            objc_autoreleasePoolPop(v33);
            v56 = [dataCopy objectForKeyedSubscript:v144];

            if (v56)
            {
              defaultManager = [MEMORY[0x277CCAA00] defaultManager];
              v58 = [dataCopy objectForKeyedSubscript:v144];
              v162 = 0;
              [defaultManager removeItemAtPath:v58 error:&v162];
              v59 = v162;

              v60 = objc_autoreleasePoolPush();
              v61 = selfCopy3;
              v62 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
              {
                v63 = HMFGetLogIdentifier();
                *buf = 138543874;
                v174 = v63;
                v175 = 2112;
                v176 = dataCopy;
                v177 = 2112;
                v178 = v59;
                _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_INFO, "%{public}@Removed the bulletin snapshot file at %@ as it not being posted with result %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v60);
            }

            v13 = v152;
            goto LABEL_16;
          }

          if (v36)
          {
            v37 = HMFGetLogIdentifier();
            *buf = 138543618;
            v174 = v37;
            v175 = 2112;
            v176 = v15;
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Posting bulletin for changed characteristic: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v33);
          date = [MEMORY[0x277CBEAA8] date];
          bulletinBoardNotification3 = [v20 bulletinBoardNotification];
          notificationServiceGroup = [bulletinBoardNotification3 notificationServiceGroup];

          v151 = notificationServiceGroup;
          cameraProfiles = [notificationServiceGroup cameraProfiles];
          firstObject = [cameraProfiles firstObject];

          bulletinContext = [v15 bulletinContext];
          v43 = [bulletinContext mutableCopy];

          v155 = [HMDBulletinCategory bulletinReasonForChangedCharacteristic:v15];
          [v43 setObject:? forKeyedSubscript:?];
          contextSPIUniqueIdentifier = [firstObject contextSPIUniqueIdentifier];
          uUIDString = [contextSPIUniqueIdentifier UUIDString];
          [v43 setObject:uUIDString forKeyedSubscript:v147];

          v150 = [(HMDBulletinBoard *)selfCopy3 titleNameForChangedCharacteristic:v15];
          bulletinBoardNotification4 = [v20 bulletinBoardNotification];
          notificationServiceGroup2 = [bulletinBoardNotification4 notificationServiceGroup];
          v153 = firstObject;
          uniqueIdentifier = [firstObject uniqueIdentifier];
          v49 = [notificationServiceGroup2 actionContextForCameraProfileID:uniqueIdentifier];

          v50 = [v49 objectForKey:@"categoryID"];

          v156 = v43;
          if (v50)
          {
            if (dataCopy)
            {
              productInfo = [MEMORY[0x277D0F8E8] productInfo];
              v52 = [productInfo productPlatform] != 1;
            }

            else
            {
              v52 = 0;
            }

            v69 = [v43 hmf_stringForKey:v141];
            if (!v69)
            {
              v96 = v49;
              v97 = objc_autoreleasePoolPush();
              v98 = selfCopy3;
              v99 = HMFGetOSLogHandle();
              v100 = v156;
              if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
              {
                v101 = HMFGetLogIdentifier();
                *buf = 138543618;
                v174 = v101;
                v175 = 2112;
                v176 = v156;
                _os_log_impl(&dword_229538000, v99, OS_LOG_TYPE_ERROR, "%{public}@Home UUID is absent in bulletin context: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v97);
              v102 = date;
              v103 = v150;
              goto LABEL_78;
            }

            v64 = v69;
            v148 = v49;
            v70 = [v49 hmf_stringForKey:v147];
            if (v70)
            {
              v65 = v70;
              v139 = [HMDCameraClipSignificantEventBulletin actionURLForHomeUUID:v64 cameraUUID:v70];
LABEL_43:
              v138 = v52;

              uUID = [MEMORY[0x277CCAD78] UUID];
              uUIDString2 = [uUID UUIDString];

              v72 = [MEMORY[0x277CBEB98] set];
              type = [v15 type];
              if (![type isEqualToString:v159])
              {
                v92 = dataCopy;
                goto LABEL_71;
              }

              type2 = [v20 type];
              v75 = [type2 isEqualToString:v128];

              if (v75)
              {
                doorbellBulletinUtilities = [(HMDBulletinBoard *)selfCopy3 doorbellBulletinUtilities];
                v77 = date;
                v78 = [doorbellBulletinUtilities significantEventsRelevantToDoorbellPressAtDate:date forCameraProfile:v153];

                if ([v78 hmf_isEmpty])
                {
                  v79 = objc_autoreleasePoolPush();
                  v80 = selfCopy3;
                  v81 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
                  {
                    v82 = HMFGetLogIdentifier();
                    *buf = 138543362;
                    v174 = v82;
                    _os_log_impl(&dword_229538000, v81, OS_LOG_TYPE_INFO, "%{public}@Did not find significant events for doorbell press so fetching from the cloud", buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v79);
                  doorbellBulletinUtilities2 = [(HMDBulletinBoard *)v80 doorbellBulletinUtilities];
                  v163[0] = MEMORY[0x277D85DD0];
                  v163[1] = 3221225472;
                  v163[2] = __107__HMDBulletinBoard__insertImageBulletinsForChangedCharacteristics_attributedUsers_snapshotData_completion___block_invoke;
                  v163[3] = &unk_278674EB0;
                  v163[4] = v80;
                  v164 = uUIDString2;
                  v165 = v153;
                  v77 = date;
                  [doorbellBulletinUtilities2 fetchSignificantEventsRelevantToDoorbellPressAtDate:date forCameraProfile:v165 completion:v163];
                }

                [(HMDBulletinBoard *)selfCopy3 _submitDoorbellEventDetailsFromBulletinWithDate:v77 significantEvents:v78];
                type = [(HMDBulletinBoard *)selfCopy3 removeRedundantSignificantEventNotificationsForSignificantEvents:v78];
                v84 = [type mutableCopy];
                v85 = [type sortedArrayUsingComparator:&__block_literal_global_332];
                v86 = [v85 na_firstObjectPassingTest:&__block_literal_global_336];

                if (v86)
                {
                  v136 = v78;
                  content = [v86 content];
                  userInfo = [content userInfo];
                  [(HMDBulletinBoard *)selfCopy3 _updateDoorbellUserInfo:v156 withSignificantEventUserInfo:userInfo];

                  content2 = [v86 content];
                  userInfo2 = [content2 userInfo];
                  v91 = [userInfo2 objectForKeyedSubscript:v144];

                  v92 = dataCopy;
                  if (dataCopy)
                  {
                    v78 = v136;
                  }

                  else
                  {
                    v78 = v136;
                    if (v91)
                    {
                      v130 = v84;
                      v93 = objc_autoreleasePoolPush();
                      v158 = selfCopy3;
                      v94 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
                      {
                        HMFGetLogIdentifier();
                        v95 = v126 = v93;
                        *buf = 138543362;
                        v174 = v95;
                        _os_log_impl(&dword_229538000, v94, OS_LOG_TYPE_INFO, "%{public}@No snapshotData was provided, so using whatever we had in the mostRecentCoalescedPersonNotification", buf, 0xCu);

                        v93 = v126;
                      }

                      objc_autoreleasePoolPop(v93);
                      v170 = v144;
                      v171 = v91;
                      v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v171 forKeys:&v170 count:1];
                      v84 = v130;
                      [v130 removeObject:v86];
                    }
                  }
                }

                else
                {
                  v92 = dataCopy;
                }

                [(HMDBulletinBoard *)selfCopy3 removeImageFilesForNotificationRequests:v84];

                v72 = v78;
LABEL_71:
                v112 = v148;
              }

              else
              {
                v92 = dataCopy;
                v112 = v148;
              }

              if ([v155 isEqualToString:v133])
              {
                v113 = 9;
              }

              else
              {
                v113 = 8;
              }

              v149 = v72;
              v114 = [(HMDBulletinBoard *)selfCopy3 messageForChangedCharacteristic:v15 withSignificantEvents:v72];
              v115 = [HMDBulletinBoard interruptionLevelForChangedCharacteristic:v15];
              v116 = objc_autoreleasePoolPush();
              v117 = selfCopy3;
              v118 = HMFGetOSLogHandle();
              dataCopy = v92;
              if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
              {
                v119 = HMFGetLogIdentifier();
                *buf = 138544130;
                v174 = v119;
                v175 = 2112;
                v176 = v114;
                v177 = 2112;
                v178 = v156;
                v179 = 2112;
                v180 = dataCopy;
                _os_log_impl(&dword_229538000, v118, OS_LOG_TYPE_INFO, "%{public}@Inserting new bulletin with message: %@, userInfo: %@, snapshotData: %@", buf, 0x2Au);

                v92 = dataCopy;
              }

              objc_autoreleasePoolPop(v116);
              v125 = v115;
              v100 = v156;
              v124 = v112;
              v96 = v112;
              v103 = v150;
              v102 = date;
              v120 = [(HMDBulletinBoard *)v117 _insertRequestWithTitle:v150 snapshotData:v92 message:v114 requestIdentifier:uUIDString2 date:date bulletinType:v138 actionURL:v139 bulletinContext:v156 actionContext:v124 interruptionLevel:v125 logEventTopic:v113];
              identifier = [v120 identifier];
              [array addObject:identifier];

              self = selfCopy;
LABEL_78:

              v13 = v152;
              usersCopy = v143;
              goto LABEL_16;
            }

            v108 = objc_autoreleasePoolPush();
            v109 = selfCopy3;
            v110 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
            {
              v111 = HMFGetLogIdentifier();
              *buf = 138543618;
              v174 = v111;
              v175 = 2112;
              v176 = v49;
              _os_log_impl(&dword_229538000, v110, OS_LOG_TYPE_ERROR, "%{public}@Camera UUID is absent in action context: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v108);
          }

          else
          {
            v148 = v49;
            v64 = [v43 objectForKeyedSubscript:v141];
            v65 = [v43 objectForKeyedSubscript:v132];
            v145 = [v43 objectForKeyedSubscript:v131];
            if (v64 && v65 && v145)
            {
              v137 = [MEMORY[0x277CD1878] tupleWithQueryType:0 uuidString:v64];
              v129 = [MEMORY[0x277CD1878] tupleWithQueryType:2 uuidString:v65];
              v135 = [MEMORY[0x277CD1878] tupleWithQueryType:3 uuidString:v145];
              v66 = MEMORY[0x277CBEB98];
              v172[0] = v137;
              v172[1] = v135;
              v67 = [MEMORY[0x277CBEA60] arrayWithObjects:v172 count:2];
              v68 = [v66 setWithArray:v67];
              v139 = generateURLForHomeKitObject();

              v52 = 0;
              goto LABEL_43;
            }

            v104 = objc_autoreleasePoolPush();
            v105 = selfCopy3;
            v106 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              v107 = HMFGetLogIdentifier();
              *buf = 138544130;
              v174 = v107;
              v175 = 2112;
              v176 = v64;
              v177 = 2112;
              v178 = v65;
              v179 = 2112;
              v180 = v145;
              _os_log_impl(&dword_229538000, v106, OS_LOG_TYPE_ERROR, "%{public}@Cannot generate action URL with homeUUID: %@ serviceUUID: %@ characteristicUUID: %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v104);
          }

          v102 = date;
          v100 = v156;
          v96 = v148;
          v103 = v150;
          goto LABEL_78;
        }

        type3 = [v15 type];
        v18 = [type3 isEqualToString:v159];

        if (v18)
        {
          goto LABEL_9;
        }

        v27 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543618;
          v174 = v30;
          v175 = 2112;
          v176 = v15;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Bulletin board changed characteristic value is nil: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v27);
LABEL_17:
        ++v14;
      }

      while (v161 != v14);
      v122 = [v13 countByEnumeratingWithState:&v166 objects:v181 count:16];
      v161 = v122;
    }

    while (v122);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, array);
  }

  v123 = *MEMORY[0x277D85DE8];
}

void __107__HMDBulletinBoard__insertImageBulletinsForChangedCharacteristics_attributedUsers_snapshotData_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __107__HMDBulletinBoard__insertImageBulletinsForChangedCharacteristics_attributedUsers_snapshotData_completion___block_invoke_2;
  v7[3] = &unk_2786891E0;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v10 = *(a1 + 48);
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __107__HMDBulletinBoard__insertImageBulletinsForChangedCharacteristics_attributedUsers_snapshotData_completion___block_invoke_2_333(uint64_t a1, void *a2)
{
  v2 = [a2 content];
  v3 = [v2 userInfo];
  v4 = [v3 hmf_numberForKey:@"HMDBulletinContextDidDetectedPerson"];
  v5 = [v4 BOOLValue];

  return v5;
}

uint64_t __107__HMDBulletinBoard__insertImageBulletinsForChangedCharacteristics_attributedUsers_snapshotData_completion___block_invoke_329(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 content];
  v6 = [v5 date];
  v7 = [v4 content];

  v8 = [v7 date];
  v9 = [v6 compare:v8];

  return v9;
}

uint64_t __107__HMDBulletinBoard__insertImageBulletinsForChangedCharacteristics_attributedUsers_snapshotData_completion___block_invoke_2(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Updating message for doorbell press notification after fetching significant events from the cloud", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _updateMessageForDoorbellPressNotificationRequestWithIdentifier:*(a1 + 40) usingSignificantEvents:*(a1 + 48) cameraProfile:*(a1 + 56)];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)removeRedundantSignificantEventNotificationsForSignificantEvents:(id)events
{
  v22 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  doorbellBulletinUtilities = [(HMDBulletinBoard *)self doorbellBulletinUtilities];
  v7 = [doorbellBulletinUtilities clipUUIDsForCoalesceableSignificantEvents:eventsCopy];

  v8 = [(HMDBulletinBoard *)self notificationRequestsByIdentifierForCameraClipUUIDs:v7];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Removing significant event notifications (due to doorbell notification): %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  allObjects = [v8 allObjects];
  v14 = [allObjects na_map:&__block_literal_global_325];

  [(HMDBulletinBoard *)selfCopy removeNotificationRequestsWithIdentifiers:v14 shouldDeleteAttachments:0];
  allObjects2 = [v8 allObjects];

  v16 = *MEMORY[0x277D85DE8];

  return allObjects2;
}

- (id)titleNameForChangedCharacteristic:(id)characteristic
{
  v31 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  accessory = [characteristicCopy accessory];
  type = [characteristicCopy type];
  if (([type isEqualToString:*MEMORY[0x277CFE5B0]] & 1) == 0)
  {

    goto LABEL_9;
  }

  service = [characteristicCopy service];
  type2 = [service type];
  v8 = [type2 isEqualToString:@"00000260-0000-1000-8000-0026BB765291"];

  if (!v8)
  {
LABEL_9:
    home = [accessory home];
    name = [home name];

    goto LABEL_10;
  }

  v9 = MEMORY[0x277CCACA8];
  v10 = HMDLocalizedStringForKey(@"BULLETIN_KEYPAD_DISABLED_TITLE");
  v22 = 0;
  name2 = [accessory name];
  v12 = [v9 localizedStringWithValidatedFormat:v10 validFormatSpecifiers:@"%@" error:&v22, name2];
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
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    v14 = @"BULLETIN_KEYPAD_DISABLED_TITLE";
  }

  name = v14;

LABEL_10:
  v20 = *MEMORY[0x277D85DE8];

  return name;
}

- (id)messageForLockCharacteristic:(id)characteristic personName:(id)name
{
  v55 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  nameCopy = name;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  service = [characteristicCopy service];
  name = [service name];
  accessory = [characteristicCopy accessory];
  room = [accessory room];
  name2 = [room name];
  v14 = HMDLocalizedStringForKey(@"BULLETIN_ACTION_ROOM_SERVICE");
  v15 = [HMDServiceNameComponents componentsWithRawServiceName:name rawRoomName:name2 localizedFormat:v14];

  value = [characteristicCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = value;
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
  composedName = [v15 composedName];
  v23 = [v20 localizedStringWithValidatedFormat:v21 validFormatSpecifiers:@"%@" error:&v46, composedName];
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
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

      v26 = v42;
    }

    objc_autoreleasePoolPop(v26);
    v25 = v19;
  }

  v29 = v25;

  v30 = MEMORY[0x277CCACA8];
  if (nameCopy)
  {
    v31 = HMDLocalizedStringForKey(@"BULLETIN_LOCK_MESSAGE_WITH_PERSON");
    v45 = 0;
    nameCopy = [v30 localizedStringWithValidatedFormat:v31 validFormatSpecifiers:@"%@ %@" error:&v45, v29, nameCopy];
    v33 = v45;

    if (!nameCopy)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = HMFGetOSLogHandle();
      nameCopy = @"BULLETIN_LOCK_MESSAGE_WITH_PERSON";
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
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

        goto LABEL_25;
      }

      goto LABEL_25;
    }
  }

  else
  {
    v38 = HMDLocalizedStringForKey(@"BULLETIN_LOCK_MESSAGE_WITHOUT_PERSON");
    v44 = 0;
    nameCopy = [v30 localizedStringWithValidatedFormat:v38 validFormatSpecifiers:@"%@" error:&v44, v29];
    v33 = v44;

    if (!nameCopy)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = HMFGetOSLogHandle();
      nameCopy = @"BULLETIN_LOCK_MESSAGE_WITHOUT_PERSON";
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

  v39 = nameCopy;
  v15 = v43;
LABEL_26:
  v37 = nameCopy;

LABEL_27:
  v40 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)messageForChangedCharacteristic:(id)characteristic withSignificantEvents:(id)events
{
  characteristicCopy = characteristic;
  eventsCopy = events;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  service = [characteristicCopy service];
  bulletinBoardNotification = [service bulletinBoardNotification];
  notificationServiceGroup = [bulletinBoardNotification notificationServiceGroup];

  cameraProfiles = [notificationServiceGroup cameraProfiles];
  firstObject = [cameraProfiles firstObject];

  if (!firstObject)
  {
    goto LABEL_8;
  }

  type = [characteristicCopy type];
  v15 = [type isEqualToString:*MEMORY[0x277CFE678]];

  if (v15)
  {
    cameraProfiles2 = [notificationServiceGroup cameraProfiles];
    firstObject2 = [cameraProfiles2 firstObject];

    v18 = objc_alloc(MEMORY[0x277CD1930]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    [MEMORY[0x277CBEAA8] date];
    v20 = v31 = eventsCopy;
    uniqueIdentifier = [firstObject2 uniqueIdentifier];
    v22 = [v18 initWithUniqueIdentifier:uUID reason:1 dateOfOccurrence:v20 confidenceLevel:100 cameraProfileUUID:uniqueIdentifier faceClassification:0];

    v23 = [MEMORY[0x277CBEB98] setWithObject:v22];
    hapAccessory = [firstObject2 hapAccessory];
    v25 = [HMDCameraClipSignificantEventBulletin localizedMessageForSignificantEvents:v23 cameraAccessory:hapAccessory];

    eventsCopy = v31;
    goto LABEL_10;
  }

  type2 = [characteristicCopy type];
  if (([type2 isEqualToString:*MEMORY[0x277CFE660]] & 1) == 0)
  {

    goto LABEL_8;
  }

  type3 = [service type];
  v28 = [type3 isEqualToString:*MEMORY[0x277CFE840]];

  if (!v28)
  {
LABEL_8:
    firstObject2 = [(HMDBulletinBoard *)self doorbellBulletinUtilities];
    v29 = [HMDBulletinCategory localizedStateForCharacteristic:characteristicCopy doorbellBulletinUtilities:firstObject2];
    goto LABEL_9;
  }

  firstObject2 = [(HMDBulletinBoard *)self doorbellBulletinUtilities];
  v29 = [firstObject2 localizedDoorbellMessageForSignificantEvents:eventsCopy];
LABEL_9:
  v25 = v29;
LABEL_10:

  return v25;
}

- (void)addNotificationRequest:(id)request forIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  identifierCopy = identifier;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138543874;
    v16 = v12;
    v17 = 2112;
    v18 = requestCopy;
    v19 = 2112;
    v20 = identifierCopy;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Adding Notification Request: %@ requestIdentifier:%@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  notificationRequestsByIdentifier = [(HMDBulletinBoard *)selfCopy notificationRequestsByIdentifier];
  [notificationRequestsByIdentifier setObject:requestCopy forKeyedSubscript:identifierCopy];

  [(HMDBulletinBoard *)selfCopy cullBulletinsToCount:20];
  [(HMDBulletinBoard *)selfCopy archive];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeBulletinsUsingPredicate:(id)predicate
{
  predicateCopy = predicate;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationRequestsByIdentifier = [(HMDBulletinBoard *)self notificationRequestsByIdentifier];
  allValues = [notificationRequestsByIdentifier allValues];
  v9 = [allValues filteredArrayUsingPredicate:predicateCopy];

  v8 = [v9 na_map:&__block_literal_global_262];
  [(HMDBulletinBoard *)self removeNotificationRequestsWithIdentifiers:v8 shouldDeleteAttachments:1];
}

- (void)cullBulletinsToCount:(unint64_t)count
{
  v33 = *MEMORY[0x277D85DE8];
  notificationRequestsByIdentifier = [(HMDBulletinBoard *)self notificationRequestsByIdentifier];
  v6 = [notificationRequestsByIdentifier count];

  v7 = v6 > count;
  v8 = v6 - count;
  if (v7)
  {
    notificationRequestsSortedByDate = [(HMDBulletinBoard *)self notificationRequestsSortedByDate];
    v10 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{count, v8}];
    v11 = [notificationRequestsSortedByDate objectsAtIndexes:v10];
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

          identifier = [*(*(&v24 + 1) + 8 * v17) identifier];
          [v12 addObject:identifier];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v15);
    }

    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v22;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Culling bulletin with identifiers: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    [(HMDBulletinBoard *)selfCopy removeNotificationRequestsWithIdentifiers:v12 shouldDeleteAttachments:1];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)updateContent:(id)content forNotificationWithRequestIdentifier:(id)identifier
{
  v28 = *MEMORY[0x277D85DE8];
  contentCopy = content;
  identifierCopy = identifier;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v22 = 138543874;
    v23 = v11;
    v24 = 2112;
    v25 = identifierCopy;
    v26 = 2112;
    v27 = contentCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating notification with request identifier %@ with content: %@", &v22, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  notificationRequestsByIdentifier = [(HMDBulletinBoard *)selfCopy notificationRequestsByIdentifier];
  v13 = [notificationRequestsByIdentifier objectForKeyedSubscript:identifierCopy];

  v14 = MEMORY[0x277CE1FC0];
  identifier = [v13 identifier];
  trigger = [v13 trigger];
  v17 = [v14 requestWithIdentifier:identifier content:contentCopy trigger:trigger];
  notificationRequestsByIdentifier2 = [(HMDBulletinBoard *)selfCopy notificationRequestsByIdentifier];
  [notificationRequestsByIdentifier2 setObject:v17 forKeyedSubscript:identifierCopy];

  notificationCenter = [(HMDBulletinBoard *)selfCopy notificationCenter];
  identifier2 = [v13 identifier];
  [notificationCenter updateContent:contentCopy forNotificationWithRequestIdentifier:identifier2];

  v21 = *MEMORY[0x277D85DE8];
}

- (NSArray)notificationRequestsSortedByDate
{
  v9[1] = *MEMORY[0x277D85DE8];
  notificationRequestsByIdentifier = [(HMDBulletinBoard *)self notificationRequestsByIdentifier];
  allValues = [notificationRequestsByIdentifier allValues];
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"content.date" ascending:0];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [allValues sortedArrayUsingDescriptors:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)removeAllBulletins
{
  workQueue = [(HMDBulletinBoard *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HMDBulletinBoard_removeAllBulletins__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)removeBulletinWithRecordID:(id)d
{
  dCopy = d;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDBulletinBoard_removeBulletinWithRecordID___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_async(workQueue, v7);
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

- (void)removeCameraClipBulletinsForCameraProfile:(id)profile
{
  profileCopy = profile;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HMDBulletinBoard_removeCameraClipBulletinsForCameraProfile___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = profileCopy;
  selfCopy = self;
  v6 = profileCopy;
  dispatch_async(workQueue, v7);
}

void __62__HMDBulletinBoard_removeCameraClipBulletinsForCameraProfile___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCAC30];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__HMDBulletinBoard_removeCameraClipBulletinsForCameraProfile___block_invoke_2;
  v4[3] = &unk_278672C20;
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

- (void)removeBulletinsForTrigger:(id)trigger
{
  triggerCopy = trigger;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDBulletinBoard_removeBulletinsForTrigger___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = triggerCopy;
  selfCopy = self;
  v6 = triggerCopy;
  dispatch_async(workQueue, v7);
}

void __46__HMDBulletinBoard_removeBulletinsForTrigger___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCAC30];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__HMDBulletinBoard_removeBulletinsForTrigger___block_invoke_2;
  v4[3] = &unk_278672C20;
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

- (void)removeBulletinsForService:(id)service
{
  serviceCopy = service;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDBulletinBoard_removeBulletinsForService___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = serviceCopy;
  selfCopy = self;
  v6 = serviceCopy;
  dispatch_async(workQueue, v7);
}

void __46__HMDBulletinBoard_removeBulletinsForService___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCAC30];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__HMDBulletinBoard_removeBulletinsForService___block_invoke_2;
  v4[3] = &unk_278672C20;
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

- (void)removeBulletinsForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDBulletinBoard_removeBulletinsForAccessory___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = accessoryCopy;
  selfCopy = self;
  v6 = accessoryCopy;
  dispatch_async(workQueue, v7);
}

void __48__HMDBulletinBoard_removeBulletinsForAccessory___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCAC30];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __48__HMDBulletinBoard_removeBulletinsForAccessory___block_invoke_2;
  v4[3] = &unk_278672C20;
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

- (void)removeBulletinsForHome:(id)home
{
  homeCopy = home;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMDBulletinBoard_removeBulletinsForHome___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = homeCopy;
  selfCopy = self;
  v6 = homeCopy;
  dispatch_async(workQueue, v7);
}

void __43__HMDBulletinBoard_removeBulletinsForHome___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCAC30];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__HMDBulletinBoard_removeBulletinsForHome___block_invoke_2;
  v4[3] = &unk_278672C20;
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
  isConfiguredFuture = [(HMDBulletinBoard *)self isConfiguredFuture];
  v4 = MEMORY[0x277D2C938];
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v6 = [v4 schedulerWithDispatchQueue:workQueue];
  v7 = [isConfiguredFuture reschedule:v6];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__HMDBulletinBoard_refreshHomeBadgeNumber__block_invoke;
  v9[3] = &unk_278687CC0;
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
    v12 = v11 + v10;
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
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Refreshing home badge number to %lu (invitation) + %lu (firmware update).", buf, 0x20u);
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
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Home manager is not yet configured, bailing refreshHomeBadgeNumber.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)insertNewRMVLanguageBulletinForHome:(id)home language:(id)language
{
  homeCopy = home;
  languageCopy = language;
  isConfiguredFuture = [(HMDBulletinBoard *)self isConfiguredFuture];
  v9 = MEMORY[0x277D2C938];
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v11 = [v9 schedulerWithDispatchQueue:workQueue];
  v12 = [isConfiguredFuture reschedule:v11];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__HMDBulletinBoard_insertNewRMVLanguageBulletinForHome_language___block_invoke;
  v16[3] = &unk_2786879C0;
  v16[4] = self;
  v17 = homeCopy;
  v18 = languageCopy;
  v13 = languageCopy;
  v14 = homeCopy;
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
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
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
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
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
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Inserting new RMV language bulletin with message: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, can not insert new RMV language bulletin", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v50);
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (void)fetchAreUserNotificationsEnabledWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HMDBulletinBoard_fetchAreUserNotificationsEnabledWithCompletion___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

void __67__HMDBulletinBoard_fetchAreUserNotificationsEnabledWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) notificationCenter];
  [v2 fetchAreUserNotificationsEnabledWithCompletion:*(a1 + 40)];
}

- (void)updateDoorbellPressNotificationsWithSignificantEventBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HMDBulletinBoard_updateDoorbellPressNotificationsWithSignificantEventBulletin___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = bulletinCopy;
  v6 = bulletinCopy;
  dispatch_async(workQueue, v7);
}

- (BOOL)hasDoorbellPressNotificationToUpdateWithSignificantEventBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HMDBulletinBoard_hasDoorbellPressNotificationToUpdateWithSignificantEventBulletin___block_invoke;
  block[3] = &unk_27868A4D8;
  block[4] = self;
  v9 = bulletinCopy;
  v10 = &v11;
  v6 = bulletinCopy;
  dispatch_sync(workQueue, block);

  LOBYTE(bulletinCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return bulletinCopy;
}

void __85__HMDBulletinBoard_hasDoorbellPressNotificationToUpdateWithSignificantEventBulletin___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) dateOfOccurrence];
  v4 = [*(a1 + 40) camera];
  v5 = [v2 _doorbellPressNotificationsNearDate:v3 forCameraProfile:v4];

  *(*(*(a1 + 48) + 8) + 24) = [v5 hmf_isEmpty] ^ 1;
}

- (void)insertBulletinsForMatterFirmwareUpdateInstalledInHome:(id)home hmdHAPAccessory:(id)accessory
{
  v36 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  accessoryCopy = accessory;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    name = [accessoryCopy name];
    softwareUpdate = [accessoryCopy softwareUpdate];
    displayableVersion = [softwareUpdate displayableVersion];
    *buf = 138543874;
    v31 = v11;
    v32 = 2112;
    v33 = name;
    v34 = 2112;
    v35 = displayableVersion;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Firmware update UI notification is invoked for accessory = %@ displayeversion = %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if ([homeCopy shouldPostBulletin])
  {
    objc_initWeak(buf, homeCopy);
    isConfiguredFuture = [(HMDBulletinBoard *)selfCopy isConfiguredFuture];
    v16 = MEMORY[0x277D2C938];
    workQueue = [(HMDBulletinBoard *)selfCopy workQueue];
    v18 = [v16 schedulerWithDispatchQueue:workQueue];
    v19 = [isConfiguredFuture reschedule:v18];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __90__HMDBulletinBoard_insertBulletinsForMatterFirmwareUpdateInstalledInHome_hmdHAPAccessory___block_invoke;
    v27[3] = &unk_278672BF8;
    objc_copyWeak(&v29, buf);
    v27[4] = selfCopy;
    v28 = accessoryCopy;
    v20 = [v19 addCompletionBlock:v27];

    objc_destroyWeak(&v29);
    objc_destroyWeak(buf);
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      name2 = [homeCopy name];
      *buf = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = name2;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Not allowed to post bulletin for matter firmware update for home: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Update bulletin for stale home object; returning early.", buf, 0xCu);
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
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating bulletin for firmware update installed in home: %@ with displableFirmwareVersion = %@", buf, 0x20u);
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
      _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Home manager is not yet configured, bailing updateBulletinForFirmwareUpdateInHome.", buf, 0xCu);
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
      _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
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

- (id)updateBulletinForFirmwareUpdateInHome:(id)home
{
  v30 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  if ([homeCopy shouldPostBulletin])
  {
    uuid = [homeCopy uuid];
    uUIDString = [uuid UUIDString];
    v7 = [uUIDString stringByAppendingPathComponent:@"firmware"];

    objc_initWeak(location, homeCopy);
    isConfiguredFuture = [(HMDBulletinBoard *)self isConfiguredFuture];
    v9 = MEMORY[0x277D2C938];
    workQueue = [(HMDBulletinBoard *)self workQueue];
    v11 = [v9 schedulerWithDispatchQueue:workQueue];
    v12 = [isConfiguredFuture reschedule:v11];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __58__HMDBulletinBoard_updateBulletinForFirmwareUpdateInHome___block_invoke;
    v24[3] = &unk_278672BF8;
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
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      name = [homeCopy name];
      *location = 138543618;
      *&location[4] = v20;
      v28 = 2112;
      v29 = name;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Not allowed to post bulletin for firmware update for home: %@", location, 0x16u);
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
            _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

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
            _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@No accessory in home %@ has firmware update. Cleaning the bulletin.", buf, 0x16u);
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
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Bulletin with recordID (%@) already exists. Updating bulletin.", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, v23, buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v19);
LABEL_30:

  v55 = *MEMORY[0x277D85DE8];
}

- (void)insertHH2DuplicateUserModelBulletinForHome:(id)home user:(id)user
{
  homeCopy = home;
  userCopy = user;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDBulletinBoard_insertHH2DuplicateUserModelBulletinForHome_user___block_invoke;
  block[3] = &unk_27868A010;
  v12 = homeCopy;
  v13 = userCopy;
  selfCopy = self;
  v9 = userCopy;
  v10 = homeCopy;
  dispatch_async(workQueue, block);
}

void __68__HMDBulletinBoard_insertHH2DuplicateUserModelBulletinForHome_user___block_invoke(id *a1)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v2 = [a1[4] uuid];
  v3 = [v2 UUIDString];
  v4 = [a1[5] mergeIdentifier];
  v5 = [v3 stringByAppendingPathComponent:v4];

  v6 = [a1[6] notificationRequestsByIdentifier];
  v7 = [v6 objectForKey:v5];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[6];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v42 = v11;
      v43 = 2112;
      v44 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@HH2 duplicate user bulletin with requestID (%@) already exists, resending", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = a1[6];
    v49[0] = v5;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:1];
    [v12 removeNotificationRequestsWithIdentifiers:v13 shouldDeleteAttachments:1];
  }

  v38 = a1[6];
  v14 = MEMORY[0x277CCACA8];
  v15 = HMDLocalizedStringForKey(@"HH2_DUPLICATE_USER_MODELS_TITLE");
  v40 = 0;
  v16 = [a1[4] name];
  v17 = [v14 localizedStringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:&v40, v16];
  v18 = v40;

  v19 = v17;
  if (!v17)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138544130;
      v42 = v22;
      v43 = 2112;
      v44 = @"HH2_DUPLICATE_USER_MODELS_TITLE";
      v45 = 2112;
      v46 = @"%@";
      v47 = 2112;
      v48 = v18;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v20);
    v19 = @"HH2_DUPLICATE_USER_MODELS_TITLE";
  }

  v23 = v19;

  v24 = MEMORY[0x277CCACA8];
  v25 = HMDLocalizedStringForKey(@"HH2_DUPLICATE_USER_MODELS_MESSAGE");
  v39 = 0;
  v26 = [a1[5] displayName];
  v27 = [v24 localizedStringWithValidatedFormat:v25 validFormatSpecifiers:@"%@" error:&v39, v26];
  v28 = v39;

  v29 = v27;
  if (!v27)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138544130;
      v42 = v32;
      v43 = 2112;
      v44 = @"HH2_DUPLICATE_USER_MODELS_MESSAGE";
      v45 = 2112;
      v46 = @"%@";
      v47 = 2112;
      v48 = v28;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v30);
    v29 = @"HH2_DUPLICATE_USER_MODELS_MESSAGE";
  }

  v33 = v29;

  v34 = [MEMORY[0x277CBEAA8] date];
  v35 = [a1[4] homeBulletinContext];
  v36 = [v38 _insertRequestWithTitle:v23 snapshotData:0 message:v33 requestIdentifier:v5 date:v34 bulletinType:0 actionURL:0 bulletinContext:v35 actionContext:0 interruptionLevel:1 logEventTopic:20];

  v37 = *MEMORY[0x277D85DE8];
}

- (void)insertHH2SoftwareUpdateCompleteEventBulletinForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMDBulletinBoard_insertHH2SoftwareUpdateCompleteEventBulletinForAccessory___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = accessoryCopy;
  selfCopy = self;
  v6 = accessoryCopy;
  dispatch_async(workQueue, v7);
}

void __77__HMDBulletinBoard_insertHH2SoftwareUpdateCompleteEventBulletinForAccessory___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  if (v2)
  {
    v3 = [*(a1 + 32) uuid];
    v4 = [v3 UUIDString];
    v5 = [v4 stringByAppendingPathComponent:@"hh2Update"];

    v6 = [*(a1 + 32) name];
    v7 = [*(a1 + 40) notificationRequestsByIdentifier];
    v8 = [v7 objectForKey:v5];

    if (v8)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 40);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v34 = v12;
        v35 = 2112;
        v36 = v5;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@HH2 update completed bulletin with recordID (%@) already exists, ignoring bulletin.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      v17 = *(a1 + 40);
      v18 = HMDLocalizedStringForKey(@"HOMEPOD_HH2_FIRMWARE_UPDATE_COMPLETE_TITLE");
      v19 = MEMORY[0x277CCACA8];
      v20 = HMDLocalizedStringForKey(@"HOMEPOD_HH2_FIRMWARE_UPDATE_COMPLETE_BODY");
      v32 = 0;
      v21 = [v19 localizedStringWithValidatedFormat:v20 validFormatSpecifiers:@"%@" error:&v32, v6];
      v22 = v32;

      v23 = v21;
      if (!v21)
      {
        context = objc_autoreleasePoolPush();
        v24 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138544130;
          v34 = v30;
          v35 = 2112;
          v36 = @"HOMEPOD_HH2_FIRMWARE_UPDATE_COMPLETE_BODY";
          v37 = 2112;
          v38 = @"%@";
          v39 = 2112;
          v40 = v22;
          _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(context);
        v23 = @"HOMEPOD_HH2_FIRMWARE_UPDATE_COMPLETE_BODY";
      }

      v25 = v23;

      v26 = [MEMORY[0x277CBEAA8] date];
      v27 = [v2 homeBulletinContext];
      v28 = [v17 _insertRequestWithTitle:v18 snapshotData:0 message:v25 requestIdentifier:v5 date:v26 bulletinType:0 actionURL:0 bulletinContext:v27 actionContext:0 interruptionLevel:1 logEventTopic:18];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 40);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Cannot post notification as accessory has no home", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)updateAudioAnalysisEventNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDBulletinBoard_updateAudioAnalysisEventNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __57__HMDBulletinBoard_updateAudioAnalysisEventNotification___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) notificationRequestsByIdentifier];
  v3 = [*(a1 + 40) notificationUUID];
  v4 = [v3 UUIDString];
  v5 = [v2 objectForKey:v4];

  if (v5)
  {
    v6 = [v5 content];
    v7 = [v6 mutableCopy];

    v8 = [*(a1 + 40) localizedKeyForBody];
    [v7 setBody:v8];

    v9 = *(a1 + 32);
    v10 = [v5 identifier];
    [v9 updateContent:v7 forNotificationWithRequestIdentifier:v10];

    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 40) notificationUUID];
      v22 = 138543618;
      v23 = v14;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Request for identifier %@ found, updating the notification", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 40) notificationUUID];
      v22 = 138543618;
      v23 = v19;
      v24 = 2112;
      v25 = v20;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@No request for identifier %@ found, skipping the notification", &v22, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)insertAudioAnalysisEventNotification:(id)notification
{
  notificationCopy = notification;
  [notificationCopy reason];
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDBulletinBoard_insertAudioAnalysisEventNotification___block_invoke;
  v7[3] = &unk_278681640;
  v8 = notificationCopy;
  selfCopy = self;
  v11 = 1;
  v10 = 3;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

void __57__HMDBulletinBoard_insertAudioAnalysisEventNotification___block_invoke(uint64_t a1)
{
  v32[3] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) context];
  v3 = [v2 home];

  v4 = [v3 contextSPIUniqueIdentifier];
  v30 = [v4 UUIDString];

  v5 = [*(a1 + 32) context];
  v6 = [v5 spiClientIdentifier];
  v29 = [v6 UUIDString];

  v7 = *MEMORY[0x277CCF318];
  v31[0] = *MEMORY[0x277CCF328];
  v31[1] = v7;
  v32[0] = v30;
  v32[1] = v29;
  v31[2] = @"home";
  v28 = v3;
  v8 = [v3 contextID];
  v32[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
  v10 = [v9 mutableCopy];

  v11 = *(a1 + 40);
  v12 = [v3 uuid];
  v13 = [v12 UUIDString];
  v14 = [v11 threadIdentifierForGroupingWithHomeWithUUIDString:v13];

  v15 = [*(a1 + 40) notificationCenter];
  v16 = [*(a1 + 32) localizedKeyForTitle];
  v17 = [*(a1 + 32) localizedKeyForBody];
  v18 = [*(a1 + 32) notificationUUID];
  v19 = [v18 UUIDString];
  v20 = [*(a1 + 32) dateOfOccurrence];
  LOBYTE(v27) = *(a1 + 56);
  v21 = v10;
  v22 = [v15 showNotificationWithTitle:v16 body:v17 threadIdentifier:v14 categoryIdentifier:@"HomeAppBulletinAudioNotificationCategory" requestIdentifier:v19 date:v20 attachments:0 userInfo:v10 shouldIgnoreDoNotDisturb:v27 interruptionLevel:*(a1 + 48) logEventTopic:3];

  v23 = *(a1 + 40);
  v24 = [*(a1 + 32) notificationUUID];
  v25 = [v24 UUIDString];
  [v23 addNotificationRequest:v22 forIdentifier:v25];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)insertConnectedCHIPEcosystemsChangedBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDBulletinBoard_insertConnectedCHIPEcosystemsChangedBulletin___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = bulletinCopy;
  selfCopy = self;
  v6 = bulletinCopy;
  dispatch_async(workQueue, v7);
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

- (void)insertCameraAccessModeChangedBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__HMDBulletinBoard_insertCameraAccessModeChangedBulletin___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = bulletinCopy;
  selfCopy = self;
  v6 = bulletinCopy;
  dispatch_async(workQueue, v7);
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

- (void)insertCameraClipSignificantEventBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDBulletinBoard_insertCameraClipSignificantEventBulletin___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = bulletinCopy;
  selfCopy = self;
  v6 = bulletinCopy;
  dispatch_async(workQueue, v7);
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
      _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Not inserting camera clip significant event bulletin because a bulletin already exists with the same body and an attachment: %@", buf, 0x16u);
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
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Silently updating existing significant event bulletin with new preview image file instead of re-notifying", buf, 0xCu);
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
        _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Showing new significant event bulletin: %@, with user info: %@", buf, 0x20u);
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

- (void)removeWalletKeyOnboardingBulletinForHome:(id)home
{
  homeCopy = home;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HMDBulletinBoard_removeWalletKeyOnboardingBulletinForHome___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = homeCopy;
  v6 = homeCopy;
  dispatch_async(workQueue, v7);
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
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Did not find any existing lock onboarding bulletin.", buf, 0xCu);
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
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Lock onboarding bulletin already exists, updating bulletin actionURL: %@ to %@.", buf, 0x20u);

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
    _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, can not remove wallet key onboarding bulletin", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v31);
LABEL_18:
  v40 = *MEMORY[0x277D85DE8];
}

- (void)insertWalletKeyExpressModeSetUpBulletinForHome:(id)home
{
  homeCopy = home;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HMDBulletinBoard_insertWalletKeyExpressModeSetUpBulletinForHome___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = homeCopy;
  v6 = homeCopy;
  dispatch_async(workQueue, v7);
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
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
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
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Inserting wallet key express mode setup bulletin with message: %@ actionURL:%@", buf, 0x20u);
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
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, can not insert wallet key express mode setup bulletin", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)insertWalletKeySupportAddedBulletinForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDBulletinBoard_insertWalletKeySupportAddedBulletinForAccessory___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(workQueue, v7);
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
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
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
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Inserting wallet key support added bulletin with message: %@ actionURL:%@", buf, 0x20u);
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
      _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, can not insert wallet key support added bulletin", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v43);
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (void)insertLockOnboardingBulletinForHome:(id)home serviceType:(id)type
{
  homeCopy = home;
  typeCopy = type;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__HMDBulletinBoard_insertLockOnboardingBulletinForHome_serviceType___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = homeCopy;
  v13 = typeCopy;
  v9 = typeCopy;
  v10 = homeCopy;
  dispatch_async(workQueue, block);
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
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Lock onboarding bulletin already exists, updating bulletin actionURL: %@ to %@.", buf, 0x20u);

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
        _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Inserting lock onboarding bulletin with message: %@ actionURL:%@ for service: %@", buf, 0x2Au);
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
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, can not insert access code onboarding bulletin", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
  }

  v53 = *MEMORY[0x277D85DE8];
}

- (void)insertAccessCodeRemovedBulletinForHome:(id)home
{
  homeCopy = home;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDBulletinBoard_insertAccessCodeRemovedBulletinForHome___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = homeCopy;
  v6 = homeCopy;
  dispatch_async(workQueue, v7);
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
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
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
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Inserting access code removed bulletin with message: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, can not insert access code removed bulletin", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)insertAccessCodeChangedBulletinForHome:(id)home
{
  homeCopy = home;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDBulletinBoard_insertAccessCodeChangedBulletinForHome___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = homeCopy;
  v6 = homeCopy;
  dispatch_async(workQueue, v7);
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
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
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
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Inserting access code changed bulletin with message: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, can not insert access code changed bulletin", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)insertAccessCodeAddedBulletinForHome:(id)home
{
  homeCopy = home;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMDBulletinBoard_insertAccessCodeAddedBulletinForHome___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = homeCopy;
  v6 = homeCopy;
  dispatch_async(workQueue, v7);
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
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
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
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Inserting access code added bulletin with message: %@", buf, 0x16u);
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
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, can not insert access code added bulletin", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (void)insertHomeHubReachabilityBulletinForHome:(id)home reachable:(BOOL)reachable hasMultipleResidents:(BOOL)residents
{
  homeCopy = home;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__HMDBulletinBoard_insertHomeHubReachabilityBulletinForHome_reachable_hasMultipleResidents___block_invoke;
  block[3] = &unk_278681260;
  block[4] = self;
  v12 = homeCopy;
  reachableCopy = reachable;
  residentsCopy = residents;
  v10 = homeCopy;
  dispatch_async(workQueue, block);
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
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, bailing insertBulletinsForUnreachableRecordingCamera", buf, 0xCu);
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not allowed to post home hub reachability bulletin for home: %@", buf, 0x16u);
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
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Posting %{public}@ Home Bulletin", buf, 0x16u);
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

- (void)insertReachabilityEventBulletinForAccessory:(id)accessory reachable:(BOOL)reachable date:(id)date
{
  accessoryCopy = accessory;
  dateCopy = date;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__HMDBulletinBoard_insertReachabilityEventBulletinForAccessory_reachable_date___block_invoke;
  v13[3] = &unk_278685AA8;
  v13[4] = self;
  v14 = accessoryCopy;
  reachableCopy = reachable;
  v15 = dateCopy;
  v11 = dateCopy;
  v12 = accessoryCopy;
  dispatch_async(workQueue, v13);
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
            _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

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
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, v18, buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v14);
LABEL_20:
  v46 = *MEMORY[0x277D85DE8];
}

- (id)insertBulletinForSecureTrigger:(id)trigger
{
  triggerCopy = trigger;
  uuid = [triggerCopy uuid];
  uUIDString = [uuid UUIDString];

  workQueue = [(HMDBulletinBoard *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDBulletinBoard_insertBulletinForSecureTrigger___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v14 = triggerCopy;
  v8 = uUIDString;
  v15 = v8;
  v9 = triggerCopy;
  dispatch_async(workQueue, block);

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
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
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
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, bailing insertBulletinForSecureTrigger.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v33);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)insertBulletinForIncompatibleInvitationFromInviterName:(id)name homeName:(id)homeName
{
  nameCopy = name;
  homeNameCopy = homeName;
  workQueue = [(HMDBulletinBoard *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__HMDBulletinBoard_insertBulletinForIncompatibleInvitationFromInviterName_homeName___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = homeNameCopy;
  v13 = nameCopy;
  v9 = nameCopy;
  v10 = homeNameCopy;
  dispatch_async(workQueue, block);
}

void __84__HMDBulletinBoard_insertBulletinForIncompatibleInvitationFromInviterName_homeName___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];

  if (v2)
  {
    v3 = HMDLocalizedStringForKey(@"INVITE_REQUEST_TITLE");
    v4 = MEMORY[0x277CCACA8];
    if (*(a1 + 40))
    {
      v5 = HMDLocalizedStringForKey(@"INVITE_INCOMPATIBLE_HH2_BODY");
      v31 = 0;
      v6 = [v4 localizedStringWithValidatedFormat:v5 validFormatSpecifiers:@"%@ %@" error:&v31, *(a1 + 48), *(a1 + 40)];
      v7 = v31;

      if (!v6)
      {
        v8 = objc_autoreleasePoolPush();
        v9 = HMFGetOSLogHandle();
        v6 = @"INVITE_INCOMPATIBLE_HH2_BODY";
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138544130;
          v33 = v10;
          v34 = 2112;
          v35 = @"INVITE_INCOMPATIBLE_HH2_BODY";
          v36 = 2112;
          v37 = @"%@ %@";
          v38 = 2112;
          v39 = v7;
LABEL_13:
          _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v15 = HMDLocalizedStringForKey(@"INVITE_INCOMPATIBLE_HH2_NO_HOME_NAME_BODY");
      v30 = 0;
      v6 = [v4 localizedStringWithValidatedFormat:v15 validFormatSpecifiers:@"%@" error:&v30, *(a1 + 48)];
      v7 = v30;

      if (!v6)
      {
        v8 = objc_autoreleasePoolPush();
        v9 = HMFGetOSLogHandle();
        v6 = @"INVITE_INCOMPATIBLE_HH2_NO_HOME_NAME_BODY";
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = HMFGetLogIdentifier();
          *buf = 138544130;
          v33 = v10;
          v34 = 2112;
          v35 = @"INVITE_INCOMPATIBLE_HH2_NO_HOME_NAME_BODY";
          v36 = 2112;
          v37 = @"%@";
          v38 = 2112;
          v39 = v7;
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

    v21 = [*(a1 + 32) threadIdentifierForGroupingWithUnknownHome];
    v22 = [MEMORY[0x277CCAD78] UUID];
    v23 = [v22 UUIDString];

    v24 = [*(a1 + 32) notificationCenter];
    v25 = [MEMORY[0x277CBEAA8] date];
    v26 = [v18 copy];
    LOBYTE(v29) = 0;
    v27 = [v24 showNotificationWithTitle:v3 body:v17 threadIdentifier:v21 categoryIdentifier:@"HMDBBNormalType" requestIdentifier:v23 date:v25 attachments:0 userInfo:v26 shouldIgnoreDoNotDisturb:v29 interruptionLevel:1 logEventTopic:21];

    [*(a1 + 32) addNotificationRequest:v27 forIdentifier:v23];
    goto LABEL_16;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 32);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v33 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Home manager is not yet configured, bailing insertBulletinForIncomingInvitation.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
LABEL_16:
  v28 = *MEMORY[0x277D85DE8];
}

- (id)insertBulletinForIncomingInvitation:(id)invitation
{
  v23 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  identifier = [invitationCopy identifier];
  uUIDString = [identifier UUIDString];

  bulletinContext = [invitationCopy bulletinContext];
  if (!bulletinContext)
  {
    goto LABEL_4;
  }

  v8 = bulletinContext;
  bulletinContext2 = [invitationCopy bulletinContext];
  v10 = [bulletinContext2 objectForKeyedSubscript:@"homeIncomingInvitation"];

  if (v10)
  {
    workQueue = [(HMDBulletinBoard *)self workQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__HMDBulletinBoard_insertBulletinForIncomingInvitation___block_invoke;
    v19[3] = &unk_27868A750;
    v19[4] = self;
    v20 = invitationCopy;
    dispatch_async(workQueue, v19);

    v12 = uUIDString;
  }

  else
  {
LABEL_4:
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v22 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Invalid incoming invitation bulletinContext!", buf, 0xCu);
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
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
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
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Home manager is not yet configured, bailing insertBulletinForIncomingInvitation.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v31);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)insertBulletinsForChangedCharacteristics:(id)characteristics modifiedCharacteristics:(id)modifiedCharacteristics changedByThisDevice:(BOOL)device changeNotificationFromPrimary:(BOOL)primary completion:(id)completion
{
  modifiedCharacteristicsCopy = modifiedCharacteristics;
  completionCopy = completion;
  v14 = [HMDHome filterAllowedToPostBulletinFromCharacteristics:characteristics];
  if ([v14 count])
  {
    workQueue = [(HMDBulletinBoard *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __146__HMDBulletinBoard_insertBulletinsForChangedCharacteristics_modifiedCharacteristics_changedByThisDevice_changeNotificationFromPrimary_completion___block_invoke;
    block[3] = &unk_278672BD0;
    block[4] = self;
    v19 = completionCopy;
    v17 = v14;
    deviceCopy = device;
    primaryCopy = primary;
    v18 = modifiedCharacteristicsCopy;
    dispatch_async(workQueue, block);
  }
}

void __146__HMDBulletinBoard_insertBulletinsForChangedCharacteristics_modifiedCharacteristics_changedByThisDevice_changeNotificationFromPrimary_completion___block_invoke(uint64_t a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) homeManager];

  if (v2)
  {
    v55 = [MEMORY[0x277CBEB18] array];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v3 = *(a1 + 40);
    v4 = [v3 countByEnumeratingWithState:&v72 objects:v83 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v73;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v73 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v72 + 1) + 8 * i);
          v9 = +[HMDBulletinCategory targetCurrentCharacteristicTypeMap];
          v10 = [v8 type];
          v11 = [v9 objectForKeyedSubscript:v10];

          if (v11)
          {
            [*(a1 + 32) _updateCharacteristicTupleFor:v8 withCurrentType:v11 changedByThisDevice:*(a1 + 64)];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v72 objects:v83 count:16];
      }

      while (v5);
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = *(a1 + 40);
    v12 = [obj countByEnumeratingWithState:&v68 objects:v82 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v69;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v69 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v68 + 1) + 8 * j);
          v17 = [v16 type];
          v18 = [v16 service];
          v19 = [v18 type];
          if ([HMDBulletinBoard isBulletinSupportedForCharacteristicType:v17 serviceType:v19])
          {
            v20 = [*(a1 + 32) _shouldPostBulletinOnCurrentValueChangeForCharacteristic:v16 includeChangeFromNil:*(a1 + 65)];

            if (v20)
            {
              [v55 addObject:v16];
            }
          }

          else
          {
          }
        }

        v13 = [obj countByEnumeratingWithState:&v68 objects:v82 count:16];
      }

      while (v13);
    }

    v21 = [MEMORY[0x277CBEB18] array];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v56 = v55;
    v22 = [v56 countByEnumeratingWithState:&v64 objects:v81 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v65;
      do
      {
        v25 = 0;
        do
        {
          if (*v65 != v24)
          {
            objc_enumerationMutation(v56);
          }

          v26 = *(*(&v64 + 1) + 8 * v25);
          if ([HMDBulletinCategory isSensorDetectedCharacteristic:v26])
          {
            v27 = [v26 value];
            v28 = [v27 intValue];

            if (!v28)
            {
              goto LABEL_30;
            }

LABEL_29:
            [v21 addObject:v26];
            goto LABEL_30;
          }

          if (([*(a1 + 32) _hasDuplicateBulletinForCharacteristic:v26] & 1) == 0)
          {
            goto LABEL_29;
          }

LABEL_30:
          ++v25;
        }

        while (v23 != v25);
        v29 = [v56 countByEnumeratingWithState:&v64 objects:v81 count:16];
        v23 = v29;
      }

      while (v29);
    }

    v53 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v30 = v21;
    v31 = [v30 countByEnumeratingWithState:&v60 objects:v80 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v61;
      v54 = v30;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v61 != v33)
          {
            objc_enumerationMutation(v54);
          }

          v35 = *(*(&v60 + 1) + 8 * k);
          v36 = [*(a1 + 48) objectForKey:v35];
          v37 = [v36 attributedUserUUID];

          if (v37)
          {
            v38 = [v35 accessory];
            v39 = [v38 home];
            v40 = [v39 users];
            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = __146__HMDBulletinBoard_insertBulletinsForChangedCharacteristics_modifiedCharacteristics_changedByThisDevice_changeNotificationFromPrimary_completion___block_invoke_116;
            v58[3] = &unk_278688680;
            v59 = v37;
            v41 = [v40 na_firstObjectPassingTest:v58];

            if (v41)
            {
              [v53 setObject:v41 forKey:v35];
            }
          }
        }

        v30 = v54;
        v32 = [v54 countByEnumeratingWithState:&v60 objects:v80 count:16];
      }

      while (v32);
    }

    v42 = objc_autoreleasePoolPush();
    v43 = *(a1 + 32);
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = HMFGetLogIdentifier();
      *buf = 138543618;
      v77 = v45;
      v78 = 2112;
      v79 = v30;
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@After filtering, actually posting notifications for characteristics: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v42);
    if ([v30 count])
    {
      [*(a1 + 32) _insertImageBulletinsForChangedCharacteristics:v30 attributedUsers:v53 snapshotData:0 completion:0];
      v46 = *(a1 + 56);
      if (v46)
      {
        (*(v46 + 16))();
      }
    }
  }

  else
  {
    v47 = objc_autoreleasePoolPush();
    v48 = *(a1 + 32);
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = HMFGetLogIdentifier();
      *buf = 138543362;
      v77 = v50;
      _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, bailing insertBulletinsForChangedCharacteristics.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v47);
    v51 = *(a1 + 56);
    if (v51)
    {
      (*(v51 + 16))();
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

uint64_t __146__HMDBulletinBoard_insertBulletinsForChangedCharacteristics_modifiedCharacteristics_changedByThisDevice_changeNotificationFromPrimary_completion___block_invoke_116(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (void)insertImageBulletinsForChangedCharacteristics:(id)characteristics snapshotData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v10 = [HMDHome filterAllowedToPostBulletinFromCharacteristics:characteristics];
  if ([v10 count])
  {
    workQueue = [(HMDBulletinBoard *)self workQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __90__HMDBulletinBoard_insertImageBulletinsForChangedCharacteristics_snapshotData_completion___block_invoke;
    v12[3] = &unk_278689AB8;
    v12[4] = self;
    v15 = completionCopy;
    v13 = v10;
    v14 = dataCopy;
    dispatch_async(workQueue, v12);
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
              _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Not creating bulletin because it already exists with the same characteristic update: %@", buf, 0x16u);

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

    [*(v1 + 32) _insertImageBulletinsForChangedCharacteristics:v3 attributedUsers:0 snapshotData:*(v1 + 48) completion:*(v1 + 56)];
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
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Home manager is not yet configured, bailing insertImageBulletinsForChangedCharacteristics.", buf, 0xCu);
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
  persistentStoreClass = [(HMDBulletinBoard *)self persistentStoreClass];

  [(objc_class *)persistentStoreClass archiveBulletinBoard:self];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  notificationRequestsByIdentifier = [(HMDBulletinBoard *)self notificationRequestsByIdentifier];
  [coderCopy encodeObject:notificationRequestsByIdentifier forKey:@"HMD.bulletinRequests"];
}

- (HMDBulletinBoard)initWithCoder:(id)coder
{
  v13[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(HMDBulletinBoard *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v13[2] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"HMD.bulletinRequests"];

    if (v9)
    {
      notificationRequestsByIdentifier = [(HMDBulletinBoard *)v5 notificationRequestsByIdentifier];
      [notificationRequestsByIdentifier setDictionary:v9];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)configureWithHomeManager:(id)manager
{
  v18 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v15 = v8;
    v16 = 2112;
    v17 = managerCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Configuring with home manager: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDBulletinBoard *)selfCopy workQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__HMDBulletinBoard_configureWithHomeManager___block_invoke;
  v12[3] = &unk_27868A750;
  v12[4] = selfCopy;
  v13 = managerCopy;
  v10 = managerCopy;
  dispatch_async(workQueue, v12);

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
  v8[3] = &unk_278687CC0;
  v8[4] = *(a1 + 32);
  v7 = [v6 addCompletionBlock:v8];
}

void __45__HMDBulletinBoard_configureWithHomeManager___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) isConfiguredFuture];
  [v1 finishWithNoResult];
}

- (HMDBulletinBoard)initWithNotificationCenter:(id)center fileManager:(id)manager workQueue:(id)queue doorbellBulletinUtilities:(id)utilities logEventSubmitter:(id)submitter featuresDataSource:(id)source
{
  centerCopy = center;
  managerCopy = manager;
  queueCopy = queue;
  utilitiesCopy = utilities;
  submitterCopy = submitter;
  sourceCopy = source;
  v32.receiver = self;
  v32.super_class = HMDBulletinBoard;
  v18 = [(HMDBulletinBoard *)&v32 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_notificationCenter, center);
    objc_storeStrong(&v19->_fileManager, manager);
    objc_storeStrong(&v19->_workQueue, queue);
    objc_storeStrong(&v19->_doorbellBulletinUtilities, utilities);
    objc_storeStrong(&v19->_logEventSubmitter, submitter);
    objc_storeStrong(&v19->_featuresDataSource, source);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    notificationRequestsByIdentifier = v19->_notificationRequestsByIdentifier;
    v19->_notificationRequestsByIdentifier = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    characteristicTuplesByKey = v19->_characteristicTuplesByKey;
    v19->_characteristicTuplesByKey = dictionary2;

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
  uTF8String = [v3 UTF8String];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create(uTF8String, v5);

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
  if (logCategory__hmf_once_t218 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t218, &__block_literal_global_630);
  }

  v3 = logCategory__hmf_once_v219;

  return v3;
}

void __31__HMDBulletinBoard_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v219;
  logCategory__hmf_once_v219 = v1;
}

+ (void)messageAndTitleForLockUserChangeEvent:(id *)event title:(id *)title accessory:(id)accessory lockDataType:(unsigned __int8)type dataOperationType:(unsigned __int8)operationType ecosystemName:(id)name isAffectedUser:(BOOL)user
{
  operationTypeCopy = operationType;
  typeCopy = type;
  v79 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  nameCopy = name;
  primaryService = [accessoryCopy primaryService];
  name = [primaryService name];
  v61 = accessoryCopy;
  room = [accessoryCopy room];
  name2 = [room name];
  v19 = HMDLocalizedStringForKey(@"BULLETIN_ACTION_ROOM_SERVICE");
  v20 = [HMDServiceNameComponents componentsWithRawServiceName:name rawRoomName:name2 localizedFormat:v19];

  composedName = [v20 composedName];
  if (operationTypeCopy)
  {
    if (operationTypeCopy == 1)
    {
      if (typeCopy != 7)
      {
        if (typeCopy == 6)
        {
          if (user)
          {
            *title = HMDLocalizedStringForKey(@"BULLETIN_PIN_REMOVED_TITLE");
            v22 = MEMORY[0x277CCACA8];
            v23 = v61;
            v24 = nameCopy;
            if (nameCopy)
            {
              v25 = HMDLocalizedStringForKey(@"BULLETIN_PIN_REMOVED_THRU_SERVICE");
              v70 = 0;
              v26 = HMDLocalizedStringForKey(nameCopy);
              v27 = [v22 localizedStringWithValidatedFormat:v25 validFormatSpecifiers:@"%@ %@" error:&v70, composedName, v26];
              v28 = v70;

              if (!v27)
              {
                v29 = objc_autoreleasePoolPush();
                v30 = HMFGetOSLogHandle();
                v27 = @"BULLETIN_PIN_REMOVED_THRU_SERVICE";
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  v31 = HMFGetLogIdentifier();
                  *buf = 138544130;
                  v72 = v31;
                  v73 = 2112;
                  v74 = @"BULLETIN_PIN_REMOVED_THRU_SERVICE";
                  v75 = 2112;
                  v76 = @"%@ %@";
                  v77 = 2112;
                  v78 = v28;
LABEL_47:
                  _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

                  goto LABEL_48;
                }

                goto LABEL_48;
              }

              goto LABEL_25;
            }

            v56 = HMDLocalizedStringForKey(@"BULLETIN_PIN_REMOVED");
            v69 = 0;
            v27 = [v22 localizedStringWithValidatedFormat:v56 validFormatSpecifiers:@"%@" error:&v69, composedName];
            v28 = v69;

            eventCopy6 = event;
            if (!v27)
            {
              v29 = objc_autoreleasePoolPush();
              v30 = HMFGetOSLogHandle();
              v27 = @"BULLETIN_PIN_REMOVED";
              if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_57;
              }

              v54 = HMFGetLogIdentifier();
              *buf = 138544130;
              v72 = v54;
              v73 = 2112;
              v74 = @"BULLETIN_PIN_REMOVED";
              v75 = 2112;
              v76 = @"%@";
              v77 = 2112;
              v78 = v28;
LABEL_56:
              _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

              goto LABEL_57;
            }

            goto LABEL_53;
          }

          v35 = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v37 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_37;
          }

          v38 = HMFGetLogIdentifier();
          *buf = 138543362;
          v72 = v38;
          v39 = "%{public}@Not affected user for pin clear operation, and did not expect to create bulletin";
          goto LABEL_35;
        }

        v35 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v51 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }

      if (user)
      {
        *title = HMDLocalizedStringForKey(@"BULLETIN_USER_HOME_KEY_REMOVED_TITLE");
        v42 = MEMORY[0x277CCACA8];
        v23 = v61;
        v24 = nameCopy;
        if (!nameCopy)
        {
          v57 = HMDLocalizedStringForKey(@"BULLETIN_USER_HOME_KEY_REMOVED");
          v67 = 0;
          v27 = [v42 localizedStringWithValidatedFormat:v57 validFormatSpecifiers:@"%@" error:&v67, composedName];
          v28 = v67;

          eventCopy6 = event;
          if (!v27)
          {
            v29 = objc_autoreleasePoolPush();
            v30 = HMFGetOSLogHandle();
            v27 = @"BULLETIN_USER_HOME_KEY_REMOVED";
            if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_57;
            }

            v54 = HMFGetLogIdentifier();
            *buf = 138544130;
            v72 = v54;
            v73 = 2112;
            v74 = @"BULLETIN_USER_HOME_KEY_REMOVED";
            v75 = 2112;
            v76 = @"%@";
            v77 = 2112;
            v78 = v28;
            goto LABEL_56;
          }

LABEL_53:
          v48 = v27;
          goto LABEL_58;
        }

        v43 = HMDLocalizedStringForKey(@"BULLETIN_USER_HOME_KEY_REMOVED_THRU_SERVICE");
        v68 = 0;
        v44 = HMDLocalizedStringForKey(nameCopy);
        v27 = [v42 localizedStringWithValidatedFormat:v43 validFormatSpecifiers:@"%@ %@" error:&v68, composedName, v44];
        v28 = v68;

        if (!v27)
        {
          v29 = objc_autoreleasePoolPush();
          v30 = HMFGetOSLogHandle();
          v27 = @"BULLETIN_USER_HOME_KEY_REMOVED_THRU_SERVICE";
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = HMFGetLogIdentifier();
            *buf = 138544130;
            v72 = v31;
            v73 = 2112;
            v74 = @"BULLETIN_USER_HOME_KEY_REMOVED_THRU_SERVICE";
            v75 = 2112;
            v76 = @"%@ %@";
            v77 = 2112;
            v78 = v28;
            goto LABEL_47;
          }

          goto LABEL_48;
        }

LABEL_25:
        v48 = v27;
        eventCopy6 = event;
LABEL_58:
        v58 = v27;

        *eventCopy6 = v27;
        goto LABEL_59;
      }

      v35 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543362;
        v72 = v38;
        v39 = "%{public}@Not affected user for RFID clear operation, and did not expect to create bulletin";
LABEL_35:
        v40 = v37;
        v41 = 12;
        goto LABEL_36;
      }
    }

    else
    {
      v35 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        *buf = 138543618;
        v72 = v38;
        v73 = 1024;
        LODWORD(v74) = operationTypeCopy;
        v39 = "%{public}@DataOperationType is invalid value, did not expect to create bulletin for this value=%hhu";
        v40 = v37;
        v41 = 18;
LABEL_36:
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, v39, buf, v41);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (typeCopy == 7)
  {
    *title = HMDLocalizedStringForKey(@"BULLETIN_RFID_ADDED_TITLE");
    v45 = MEMORY[0x277CCACA8];
    v23 = v61;
    v24 = nameCopy;
    if (nameCopy)
    {
      v46 = HMDLocalizedStringForKey(@"BULLETIN_RFID_ADDED_THRU_SERVICE");
      v64 = 0;
      v47 = HMDLocalizedStringForKey(nameCopy);
      v27 = [v45 localizedStringWithValidatedFormat:v46 validFormatSpecifiers:@"%@ %@" error:&v64, v47, composedName];
      v28 = v64;

      if (!v27)
      {
        v29 = objc_autoreleasePoolPush();
        v30 = HMFGetOSLogHandle();
        v27 = @"BULLETIN_RFID_ADDED_THRU_SERVICE";
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138544130;
          v72 = v31;
          v73 = 2112;
          v74 = @"BULLETIN_RFID_ADDED_THRU_SERVICE";
          v75 = 2112;
          v76 = @"%@ %@";
          v77 = 2112;
          v78 = v28;
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      goto LABEL_25;
    }

    v55 = HMDLocalizedStringForKey(@"BULLETIN_RFID_ADDED");
    v63 = 0;
    v27 = [v45 localizedStringWithValidatedFormat:v55 validFormatSpecifiers:@"%@" error:&v63, composedName];
    v28 = v63;

    eventCopy6 = event;
    if (v27)
    {
      goto LABEL_53;
    }

    v29 = objc_autoreleasePoolPush();
    v30 = HMFGetOSLogHandle();
    v27 = @"BULLETIN_RFID_ADDED";
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v54 = HMFGetLogIdentifier();
      *buf = 138544130;
      v72 = v54;
      v73 = 2112;
      v74 = @"BULLETIN_RFID_ADDED";
      v75 = 2112;
      v76 = @"%@";
      v77 = 2112;
      v78 = v28;
      goto LABEL_56;
    }

LABEL_57:

    objc_autoreleasePoolPop(v29);
    v48 = 0;
    v24 = nameCopy;
    goto LABEL_58;
  }

  if (typeCopy == 6)
  {
    *title = HMDLocalizedStringForKey(@"BULLETIN_PIN_ADDED_TITLE");
    v32 = MEMORY[0x277CCACA8];
    v23 = v61;
    v24 = nameCopy;
    if (nameCopy)
    {
      v33 = HMDLocalizedStringForKey(@"BULLETIN_PIN_ADDED_THRU_SERVICE");
      v66 = 0;
      v34 = HMDLocalizedStringForKey(nameCopy);
      v27 = [v32 localizedStringWithValidatedFormat:v33 validFormatSpecifiers:@"%@ %@" error:&v66, composedName, v34];
      v28 = v66;

      if (!v27)
      {
        v29 = objc_autoreleasePoolPush();
        v30 = HMFGetOSLogHandle();
        v27 = @"BULLETIN_PIN_ADDED_THRU_SERVICE";
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138544130;
          v72 = v31;
          v73 = 2112;
          v74 = @"BULLETIN_PIN_ADDED_THRU_SERVICE";
          v75 = 2112;
          v76 = @"%@ %@";
          v77 = 2112;
          v78 = v28;
          goto LABEL_47;
        }

LABEL_48:
        eventCopy6 = event;
        goto LABEL_57;
      }

      goto LABEL_25;
    }

    v53 = HMDLocalizedStringForKey(@"BULLETIN_PIN_ADDED");
    v65 = 0;
    v27 = [v32 localizedStringWithValidatedFormat:v53 validFormatSpecifiers:@"%@" error:&v65, composedName];
    v28 = v65;

    eventCopy6 = event;
    if (v27)
    {
      goto LABEL_53;
    }

    v29 = objc_autoreleasePoolPush();
    v30 = HMFGetOSLogHandle();
    v27 = @"BULLETIN_PIN_ADDED";
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v54 = HMFGetLogIdentifier();
      *buf = 138544130;
      v72 = v54;
      v73 = 2112;
      v74 = @"BULLETIN_PIN_ADDED";
      v75 = 2112;
      v76 = @"%@";
      v77 = 2112;
      v78 = v28;
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  v35 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v51 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
  {
LABEL_29:
    v52 = HMFGetLogIdentifier();
    *buf = 138543618;
    v72 = v52;
    v73 = 1024;
    LODWORD(v74) = typeCopy;
    _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, "%{public}@Lock Data type is invalid value, did not expect to create bulletin for this value=%hhu", buf, 0x12u);
  }

LABEL_30:

LABEL_38:
  objc_autoreleasePoolPop(v35);
  v23 = v61;
  v24 = nameCopy;
LABEL_59:

  v59 = *MEMORY[0x277D85DE8];
}

+ (id)messageForLockOperationEvent:(id)event personName:(id)name lockOperationType:(unsigned __int8)type ecosystemName:(id)ecosystemName
{
  typeCopy = type;
  v62 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  nameCopy = name;
  ecosystemNameCopy = ecosystemName;
  primaryService = [eventCopy primaryService];
  name = [primaryService name];
  room = [eventCopy room];
  name2 = [room name];
  v16 = HMDLocalizedStringForKey(@"BULLETIN_ACTION_ROOM_SERVICE");
  v49 = [HMDServiceNameComponents componentsWithRawServiceName:name rawRoomName:name2 localizedFormat:v16];

  if (!typeCopy)
  {
    v17 = @"BULLETIN_LOCK_ACTION_LOCKED";
LABEL_5:
    v18 = MEMORY[0x277CCACA8];
    v19 = HMDLocalizedStringForKey(v17);
    v53 = 0;
    composedName = [v49 composedName];
    v21 = [v18 localizedStringWithValidatedFormat:v19 validFormatSpecifiers:@"%@" error:&v53, composedName];
    v22 = v53;

    v23 = v21;
    if (!v21)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138544130;
        v55 = v26;
        v56 = 2112;
        v57 = v17;
        v58 = 2112;
        v59 = @"%@";
        v60 = 2112;
        v61 = v22;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v24);
      v23 = v17;
    }

    v27 = v23;

    v28 = nameCopy;
    if (nameCopy)
    {
      v29 = MEMORY[0x277CCACA8];
      v30 = HMDLocalizedStringForKey(@"BULLETIN_LOCK_MESSAGE_WITH_PERSON");
      v52 = 0;
      nameCopy = [v29 localizedStringWithValidatedFormat:v30 validFormatSpecifiers:@"%@ %@" error:&v52, v27, nameCopy];
      v32 = v52;

      if (!nameCopy)
      {
        v33 = objc_autoreleasePoolPush();
        v34 = HMFGetOSLogHandle();
        nameCopy = @"BULLETIN_LOCK_MESSAGE_WITH_PERSON";
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138544130;
          v55 = v35;
          v56 = 2112;
          v57 = @"BULLETIN_LOCK_MESSAGE_WITH_PERSON";
          v58 = 2112;
          v59 = @"%@ %@";
          v60 = 2112;
          v61 = v32;
LABEL_24:
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v41 = MEMORY[0x277CCACA8];
      if (ecosystemNameCopy)
      {
        v42 = HMDLocalizedStringForKey(@"BULLETIN_LOCK_MESSAGE_WITH_PERSON");
        v51 = 0;
        v43 = HMDLocalizedStringForKey(ecosystemNameCopy);
        nameCopy = [v41 localizedStringWithValidatedFormat:v42 validFormatSpecifiers:@"%@ %@" error:&v51, v27, v43];
        v32 = v51;

        if (!nameCopy)
        {
          v33 = objc_autoreleasePoolPush();
          v34 = HMFGetOSLogHandle();
          nameCopy = @"BULLETIN_LOCK_MESSAGE_WITH_PERSON";
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138544130;
            v55 = v35;
            v56 = 2112;
            v57 = @"BULLETIN_LOCK_MESSAGE_WITH_PERSON";
            v58 = 2112;
            v59 = @"%@ %@";
            v60 = 2112;
            v61 = v32;
            goto LABEL_24;
          }

LABEL_25:

          objc_autoreleasePoolPop(v33);
          v45 = 0;
          v28 = nameCopy;
          goto LABEL_26;
        }
      }

      else
      {
        v44 = HMDLocalizedStringForKey(@"BULLETIN_LOCK_MESSAGE_WITHOUT_PERSON");
        v50 = 0;
        nameCopy = [v41 localizedStringWithValidatedFormat:v44 validFormatSpecifiers:@"%@" error:&v50, v27];
        v32 = v50;

        if (!nameCopy)
        {
          v33 = objc_autoreleasePoolPush();
          v34 = HMFGetOSLogHandle();
          nameCopy = @"BULLETIN_LOCK_MESSAGE_WITHOUT_PERSON";
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138544130;
            v55 = v35;
            v56 = 2112;
            v57 = @"BULLETIN_LOCK_MESSAGE_WITHOUT_PERSON";
            v58 = 2112;
            v59 = @"%@";
            v60 = 2112;
            v61 = v32;
            goto LABEL_24;
          }

          goto LABEL_25;
        }
      }
    }

    v45 = nameCopy;
LABEL_26:
    v40 = nameCopy;

    goto LABEL_27;
  }

  if (typeCopy == 1)
  {
    v17 = @"BULLETIN_LOCK_ACTION_UNLOCKED";
    goto LABEL_5;
  }

  v36 = objc_autoreleasePoolPush();
  selfCopy = self;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v39 = HMFGetLogIdentifier();
    *buf = 138543618;
    v55 = v39;
    v56 = 1024;
    LODWORD(v57) = typeCopy;
    _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@LockOperationType is invalid value, did not expect to create bulletin for this value=%hhu", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v36);
  v40 = 0;
  v28 = nameCopy;
LABEL_27:

  v46 = *MEMORY[0x277D85DE8];

  return v40;
}

+ (id)messageForDoorLockAlarmEvent:(id)event alarmCode:(unsigned __int8)code
{
  codeCopy = code;
  v48 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  primaryService = [eventCopy primaryService];
  name = [primaryService name];
  room = [eventCopy room];
  name2 = [room name];
  v11 = HMDLocalizedStringForKey(@"BULLETIN_ACTION_ROOM_SERVICE");
  v12 = [HMDServiceNameComponents componentsWithRawServiceName:name rawRoomName:name2 localizedFormat:v11];

  if (codeCopy)
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v16;
      v42 = 1024;
      LODWORD(v43) = codeCopy;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@AlarmCode is invalid value, did not expect to create bulletin for this value=%hhu", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = 0;
  }

  else
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = HMDLocalizedStringForKey(@"BULLETIN_LOCK_ACTION_JAMMED");
    v39 = 0;
    composedName = [v12 composedName];
    v21 = [v18 localizedStringWithValidatedFormat:v19 validFormatSpecifiers:@"%@" error:&v39, composedName];
    v22 = v39;

    v23 = v21;
    if (!v21)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138544130;
        v41 = v26;
        v42 = 2112;
        v43 = @"BULLETIN_LOCK_ACTION_JAMMED";
        v44 = 2112;
        v45 = @"%@";
        v46 = 2112;
        v47 = v22;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v24);
      v23 = @"BULLETIN_LOCK_ACTION_JAMMED";
    }

    v27 = v23;

    v28 = MEMORY[0x277CCACA8];
    v29 = HMDLocalizedStringForKey(@"BULLETIN_LOCK_MESSAGE_WITHOUT_PERSON");
    v38 = 0;
    v30 = [v28 localizedStringWithValidatedFormat:v29 validFormatSpecifiers:@"%@" error:&v38, v27];
    v31 = v38;

    v32 = v30;
    if (!v30)
    {
      v33 = objc_autoreleasePoolPush();
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138544130;
        v41 = v35;
        v42 = 2112;
        v43 = @"BULLETIN_LOCK_MESSAGE_WITHOUT_PERSON";
        v44 = 2112;
        v45 = @"%@";
        v46 = 2112;
        v47 = v31;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v33);
      v32 = @"BULLETIN_LOCK_MESSAGE_WITHOUT_PERSON";
    }

    v17 = v32;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (BOOL)presentationValueOfCharacteristic:(id)characteristic equalTo:(id)to
{
  characteristicCopy = characteristic;
  toCopy = to;
  metadata = [characteristicCopy metadata];
  stepValue = [metadata stepValue];
  value = [characteristicCopy value];
  type = [characteristicCopy type];
  value2 = [HMDBulletinCategory presentationValueForValue:value type:type];

  if (!value2)
  {
    value2 = [characteristicCopy value];
  }

  v12 = compareCharacteristicValue(value2, toCopy, 4, stepValue);

  return v12;
}

+ (unint64_t)interruptionLevelForChangedCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  if (interruptionLevelForChangedCharacteristic__onceToken != -1)
  {
    dispatch_once(&interruptionLevelForChangedCharacteristic__onceToken, &__block_literal_global_108);
  }

  service = [characteristicCopy service];
  v5 = interruptionLevelForChangedCharacteristic__criticalCharacteristicsByService;
  type = [service type];
  v7 = [v5 objectForKeyedSubscript:type];

  v8 = interruptionLevelForChangedCharacteristic__timeSensitiveCharacteristicsByService;
  type2 = [service type];
  v10 = [v8 objectForKeyedSubscript:type2];

  if (v7 && ([characteristicCopy type], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v7, "containsObject:", v11), v11, v12))
  {
    type3 = [characteristicCopy type];
    v14 = [type3 isEqualToString:*MEMORY[0x277CFE620]];

    if (v14)
    {
      value = [characteristicCopy value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = value;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      intValue = [v17 intValue];
      if (intValue == 4)
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
    type4 = [characteristicCopy type];
    v21 = [v10 containsObject:type4];

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

+ (id)createImageAttachmentByHardLinkingFile:(id)file fileManager:(id)manager
{
  v46 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  managerCopy = manager;
  v8 = managerCopy;
  if (fileCopy)
  {
    heroFrameStoreDirectoryURL = [managerCopy heroFrameStoreDirectoryURL];
    v37 = 0;
    v10 = [v8 createDirectoryAtURL:heroFrameStoreDirectoryURL withIntermediateDirectories:1 attributes:0 error:&v37];
    v11 = v37;
    if (v10)
    {
      uRLByDeletingPathExtension = [fileCopy URLByDeletingPathExtension];
      lastPathComponent = [uRLByDeletingPathExtension lastPathComponent];

      v14 = MEMORY[0x277CCACA8];
      uUID = [MEMORY[0x277CCAD78] UUID];
      v16 = [v14 stringWithFormat:@"link_%@_%@.%@", uUID, lastPathComponent, @"jpg"];

      v17 = [heroFrameStoreDirectoryURL URLByAppendingPathComponent:v16];
      v36 = v11;
      v18 = [v8 linkItemAtURL:fileCopy toURL:v17 error:&v36];
      v19 = v36;

      if (v18)
      {
        v20 = [HMDBulletinBoard attachmentsWithFileURL:v17];
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        selfCopy = self;
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
          v43 = fileCopy;
          v44 = 2112;
          v45 = v19;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to create hard link: %@ to file: %@ with error %@", buf, 0x2Au);

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
      selfCopy2 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138544130;
        v39 = v28;
        v40 = 2112;
        v41 = fileCopy;
        v42 = 2112;
        v43 = heroFrameStoreDirectoryURL;
        v44 = 2112;
        v45 = v11;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to create attachment for file: %@, because failed to create directory at URL %@: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v25);
      v20 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Returning empty attachments because nil fileURL was passed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v20 = MEMORY[0x277CBEBF8];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (id)attachmentsWithFileURL:(id)l
{
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v5 = MEMORY[0x277CE1F90];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v17 = 0;
    v8 = [v5 attachmentWithIdentifier:uUIDString URL:lCopy options:0 error:&v17];
    v9 = v17;

    if (v8)
    {
      v18 = v8;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543874;
        v20 = v14;
        v21 = 2112;
        v22 = lCopy;
        v23 = 2112;
        v24 = v9;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to create attachment with URL %@: %@", buf, 0x20u);
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

+ (BOOL)isBulletinSupportedForMatterPath:(id)path accessory:(id)accessory
{
  accessoryCopy = accessory;
  pathCopy = path;
  endpointID = [pathCopy endpointID];
  v8 = [HMDBulletinBoard bulletinSupportedMatterPathsForAccessory:accessoryCopy endpointID:endpointID];

  LOBYTE(accessoryCopy) = [v8 containsObject:pathCopy];
  return accessoryCopy;
}

+ (id)bulletinSupportedMatterPathsForAccessory:(id)accessory endpointID:(id)d
{
  accessoryCopy = accessory;
  dCopy = d;
  if (([accessoryCopy isNativeMatter] & 1) != 0 || !objc_msgSend(accessoryCopy, "supportsCHIP"))
  {
    v9 = [MEMORY[0x277CBEB58] set];
    matterAdapter = [accessoryCopy matterAdapter];
    matterAdapter2 = [matterAdapter deviceTypesForEndpoint:dCopy];

    if ([matterAdapter2 containsObject:&unk_283E71F30])
    {
      v13 = [HMDMatterPath PathWithAttributeID:&unk_283E71F48 endpointID:dCopy clusterID:&unk_283E71F60 accessory:accessoryCopy];
      [v9 addObject:v13];
      v14 = [HMDMatterPath PathWithAttributeID:&unk_283E71F78 endpointID:dCopy clusterID:&unk_283E71F60 accessory:accessoryCopy];
      [v9 addObject:v14];
    }

    v11 = [v9 copy];
    goto LABEL_11;
  }

  v7 = accessoryCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if ([v9 supportsClimateAutomations])
  {
    matterAdapter2 = [v7 matterAdapter];
    v11 = [matterAdapter2 climateBulletinSupportedMatterEventPathsForEndpointID:dCopy];
LABEL_11:
    v15 = v11;

    goto LABEL_12;
  }

  v15 = 0;
LABEL_12:

  return v15;
}

+ (id)bulletinSupportedCharacteristicsForService:(id)service
{
  v28 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v4 = +[HMDBulletinBoard _supportedSecureServices];
  type = [serviceCopy type];
  v6 = [v4 objectForKeyedSubscript:type];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = +[HMDBulletinBoard _supportedNonSecureServices];
    type2 = [serviceCopy type];
    v8 = [v9 objectForKeyedSubscript:type2];
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
  characteristics = [serviceCopy characteristics];
  v12 = [characteristics countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v12)
  {

LABEL_20:
    v14 = [MEMORY[0x277CBEB98] set];
    goto LABEL_21;
  }

  v13 = v12;
  v22 = serviceCopy;
  v14 = 0;
  v15 = *v24;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v24 != v15)
      {
        objc_enumerationMutation(characteristics);
      }

      v17 = *(*(&v23 + 1) + 8 * i);
      type3 = [v17 type];
      v19 = [v8 containsObject:type3];

      if (v19)
      {
        if (!v14)
        {
          v14 = [MEMORY[0x277CBEB58] set];
        }

        [v14 addObject:v17];
      }
    }

    v13 = [characteristics countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v13);

  serviceCopy = v22;
  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_21:

  v20 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (BOOL)isCriticalNonSecureServiceType:(id)type
{
  v3 = isCriticalNonSecureServiceType__onceToken;
  typeCopy = type;
  if (v3 != -1)
  {
    dispatch_once(&isCriticalNonSecureServiceType__onceToken, &__block_literal_global_91);
  }

  v5 = [isCriticalNonSecureServiceType__criticalServices containsObject:typeCopy];

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

+ (BOOL)isBulletinSupportedForNonSecureCharacteristicType:(id)type serviceType:(id)serviceType
{
  typeCopy = type;
  serviceTypeCopy = serviceType;
  v7 = +[HMDBulletinBoard _supportedNonSecureServices];
  v8 = [v7 objectForKeyedSubscript:serviceTypeCopy];

  if (v8)
  {
    if (typeCopy)
    {
      v9 = [v8 containsObject:typeCopy];
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

+ (BOOL)isBulletinSupportedForCharacteristicType:(id)type serviceType:(id)serviceType
{
  typeCopy = type;
  serviceTypeCopy = serviceType;
  v7 = +[HMDBulletinBoard _supportedSecureServices];
  v8 = [v7 objectForKeyedSubscript:serviceTypeCopy];

  v9 = v8 && (!typeCopy || ([v8 containsObject:typeCopy] & 1) != 0) || +[HMDBulletinBoard isBulletinSupportedForNonSecureCharacteristicType:serviceType:](HMDBulletinBoard, "isBulletinSupportedForNonSecureCharacteristicType:serviceType:", typeCopy, serviceTypeCopy);
  return v9;
}

+ (id)_supportedNonSecureServices
{
  if (_supportedNonSecureServices_onceToken != -1)
  {
    dispatch_once(&_supportedNonSecureServices_onceToken, &__block_literal_global_89_41540);
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
    dispatch_once(&_supportedSecureServices_onceToken, &__block_literal_global_86);
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
  v48[2] = *MEMORY[0x277D85DE8];
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

  v37 = v5;
  v39 = v4;
  v6 = MEMORY[0x277CE1F80];
  v7 = HMDLocalizedStringForKey(@"CONFIRM_EXECUTE_SECURE_TRIGGER_ACTION_YES");
  v45 = [v6 actionWithIdentifier:@"trigger_execute" title:v7 options:0 icon:v3];

  v8 = MEMORY[0x277CE1F80];
  v9 = HMDLocalizedStringForKey(@"CONFIRM_EXECUTE_SECURE_TRIGGER_ACTION_NO");
  v44 = [v8 actionWithIdentifier:@"trigger_doNotExecute" title:v9 options:0 icon:v4];

  v10 = MEMORY[0x277CE1F98];
  v48[0] = v45;
  v48[1] = v44;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:2];
  v12 = MEMORY[0x277CBEBF8];
  v43 = [v10 categoryWithIdentifier:@"HMDBBSecureTrigger" actions:v11 intentIdentifiers:MEMORY[0x277CBEBF8] options:0x20000000];

  [v2 addObject:v43];
  v42 = [MEMORY[0x277CE1F98] categoryWithIdentifier:@"HMDBBNormalType" actions:v12 intentIdentifiers:v12 options:0x20000000];
  [v2 addObject:v42];
  v13 = MEMORY[0x277CE1F80];
  v14 = HMDLocalizedStringForKey(@"CAMERA_PROVIDE_RECORDING_FEEDBACK");
  v41 = [v13 actionWithIdentifier:@"provide_cameraRecordingFeedback" title:v14 options:0 icon:v5];

  v15 = MEMORY[0x277CE1F98];
  v47 = v41;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
  v40 = [v15 categoryWithIdentifier:@"HMDBulletinCategoryProvideCameraRecordingFeedback" actions:v16 intentIdentifiers:v12 options:0x20000000];

  [v2 addObject:v40];
  v38 = [MEMORY[0x277CE1F98] categoryWithIdentifier:@"HomeAppBulletinCategory" actions:v12 intentIdentifiers:v12 options:536870913];
  [v2 addObject:v38];
  v36 = [MEMORY[0x277CE1F98] categoryWithIdentifier:@"HomeAppBulletinAudioNotificationCategory" actions:v12 intentIdentifiers:v12 options:536870913];
  [v2 addObject:v36];
  v17 = [MEMORY[0x277CE1F98] categoryWithIdentifier:@"HMDBulletinCategorySuppressNotificationOnWatch" actions:v12 intentIdentifiers:v12 options:0x20000000];
  [v2 addObject:v17];
  array = [MEMORY[0x277CBEB18] array];
  v19 = [MEMORY[0x277CCAD18] queryItemWithName:@"Title" value:@"[LiveOn][Unexpected HAS Change]"];
  [array addObject:v19];

  v20 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentID" value:@"1363982"];
  [array addObject:v20];

  v21 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentName" value:@"HomeKit"];
  [array addObject:v21];

  v22 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentVersion" value:@"Accessory - Thermostats"];
  [array addObject:v22];

  v23 = [MEMORY[0x277CCAD18] queryItemWithName:@"Classification" value:@"Other Bug"];
  [array addObject:v23];

  v24 = [MEMORY[0x277CCAD18] queryItemWithName:@"Description" value:{@"** What home activity state did you expect and why? **\ne.g. I expected Sleep state because it was past midnight but it said Away\n\nLog Instructions:\n1. Also include logs from tvOS devices\n2. We recommend attaching Full Logs for iPhone, Watch, and Primary Resident device (check on TTR Add Devices > My Home > Device that's marked 'Primary Hub')\nTo do this, select on TTR Device Diagnostics > Log Archive (Full)"}];
  [array addObject:v24];

  v25 = [MEMORY[0x277CCACE0] componentsWithString:@"tap-to-radar://new"];
  [v25 setQueryItems:array];
  v26 = [MEMORY[0x277CE1F88] iconWithSystemImageName:@"checkmark.circle"];
  v27 = MEMORY[0x277CE1F80];
  v28 = [v25 URL];
  v29 = [v27 actionWithIdentifier:@"tapToRadarActionIdentifier" title:@"File a radar" url:v28 options:4 icon:v26];

  v30 = MEMORY[0x277CE1F98];
  v46 = v29;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  v32 = [v30 categoryWithIdentifier:@"HMDBulletinCategoryHomeActivityStateFeedback" actions:v31 intentIdentifiers:v12 options:0x20000000];

  [v2 addObject:v32];
  v33 = [v2 copy];

  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (id)sharedBulletinBoard
{
  if (sharedBulletinBoard_onceToken != -1)
  {
    dispatch_once(&sharedBulletinBoard_onceToken, &__block_literal_global_41602);
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
        _os_log_impl(&dword_229538000, v3, OS_LOG_TYPE_INFO, "%{public}@Failed to unarchive HMDBulletinBoard", &v8, 0xCu);
      }

      objc_autoreleasePoolPop(v2);
      v5 = objc_alloc_init(HMDBulletinBoard);
      v6 = sharedBulletinBoard__bulletinBoard;
      sharedBulletinBoard__bulletinBoard = v5;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end