@interface HMMTRSyncClusterDoorLock
+ (id)dataOfReadValue:(id)a3;
+ (id)deriveHomePinFromUUID:(id)a3 withNumberOfDigits:(int64_t)a4 flow:(id)a5;
+ (id)doorLockFeatureMapSupportsAliroBLEUWB:(id)a3;
+ (id)doorLockFeatureMapSupportsAliroProvisioning:(id)a3;
+ (id)doorLockFeatureMapSupportsPinCodes:(id)a3;
+ (id)doorLockFeatureMapSupportsWeekDaySchedule:(id)a3;
+ (id)doorLockFeatureMapSupportsYearDaySchedule:(id)a3;
+ (id)logCategory;
+ (id)numberFromAttributeDictionary:(id)a3;
+ (id)numberFromAttributeResponse:(id)a3;
+ (id)validateFutureResults:(id)a3 ofClass:(Class)a4 areNullable:(BOOL)a5 flow:(id)a6;
+ (id)valueFromAttributeResponse:(id)a3;
+ (id)valueFromDictionaryWithData:(id)a3;
- (BOOL)isUserSlotAvailableForUserResponse:(id)a3;
- (HMMTRAccessoryServer)accessoryServer;
- (HMMTRSyncClusterDoorLock)lockWithPin:(id)a3 flow:(id)a4;
- (id)__getUserAtIndex:(int64_t)a3 includeAliroCredentials:(BOOL)a4 temporaryCachedAliroCredentials:(id)a5 flow:(id)a6;
- (id)_addIssuerKeyData:(id)a3 forUserIndex:(int64_t)a4 credentialType:(id)a5 flow:(id)a6;
- (id)_addOrUpdateIssuerKeyData:(id)a3 forUser:(id)a4 isUnifiedAccess:(BOOL)a5 flow:(id)a6;
- (id)_addOrUpdateIssuerKeyData:(id)a3 forUserIndex:(id)a4 isUnifiedAccess:(BOOL)a5 flow:(id)a6;
- (id)_addOrUpdateIssuerKeyData:(id)a3 forUserUniqueID:(id)a4 isUnifiedAccess:(BOOL)a5 flow:(id)a6;
- (id)_findSchedulesToBeAdded:(id)a3 dict:(id)a4;
- (id)_findUserOrAvailableSlotWithUserUniqueID:(id)a3 flow:(id)a4;
- (id)_readReaderConfigWithFlow:(id)a3;
- (id)_removeUserWithUniqueID:(id)a3 flow:(id)a4;
- (id)accessoryHasCOTAEnabledWithFlow:(id)a3;
- (id)addCredentialData:(id)a3 forCredentialType:(id)a4 atIndex:(int64_t)a5 forUserAtUserIndex:(id)a6 flow:(id)a7;
- (id)addDeviceCredentialKeyData:(id)a3 ofType:(int64_t)a4 forUserIndex:(int64_t)a5 flow:(id)a6;
- (id)addIssuerKeyData:(id)a3 forUserIndex:(int64_t)a4 isUnifiedAccess:(BOOL)a5 flow:(id)a6;
- (id)addIssuerKeyData:(id)a3 forUserIndex:(int64_t)a4 isUnifiedAccess:(BOOL)a5 withFlow:(id)a6;
- (id)addNewUsersWithUserUniqueIDs:(id)a3 withCorrespondingIssuerKeys:(id)a4 flow:(id)a5;
- (id)addOrUpdateIssuerKeyData:(id)a3 forUserIndex:(id)a4 isUnifiedAccess:(BOOL)a5 flow:(id)a6;
- (id)addOrUpdateIssuerKeyData:(id)a3 forUserUniqueID:(id)a4 isUnifiedAccess:(BOOL)a5 flow:(id)a6;
- (id)addOrUpdatePinCodeWithValue:(id)a3 forUserIndex:(int64_t)a4 flow:(id)a5;
- (id)addOrUpdateReaderKeyData:(id)a3 flow:(id)a4;
- (id)addPinCodeWithValue:(id)a3 forUserIndex:(int64_t)a4 flow:(id)a5;
- (id)addPinCredentialAtIndex:(int64_t)a3 withValue:(id)a4 forUserAtUserIndex:(int64_t)a5 flow:(id)a6;
- (id)addReaderKeyData:(id)a3 toUserIndex:(int64_t)a4 flow:(id)a5;
- (id)addUserAtUserIndex:(int64_t)a3 withUserUniqueID:(int64_t)a4 userType:(id)a5 flow:(id)a6;
- (id)clearAllUsersWithDeletedCreatorFabricIndexWithFlow:(id)a3;
- (id)clearCredentialAtIndex:(int64_t)a3 withCredentialType:(id)a4 flow:(id)a5;
- (id)clearScheduleOfScheduleType:(int64_t)a3 atScheduleIndex:(int64_t)a4 forUserAtUserIndex:(int64_t)a5 flow:(id)a6;
- (id)clearUserAtIndex:(int64_t)a3 flow:(id)a4;
- (id)deriveHomePinFromUUID:(id)a3 flow:(id)a4;
- (id)ensureAccessoryConnected:(id)a3 flow:(id)a4;
- (id)fetchAccessoryColor_flow:(id)a3;
- (id)fetchAccessorySupportsAliroBLEUWBWithFlow:(id)a3;
- (id)fetchAccessorySupportsAliroProvisioningWithFlow:(id)a3;
- (id)fetchAccessorySupportsPinCodesWithFlow:(id)a3;
- (id)fetchAccessorySupportsTapToUnlock;
- (id)fetchAvailableCredentialSlotsWithLimit:(int64_t)a3 forCredentialType:(int64_t)a4 flow:(id)a5;
- (id)fetchAvailableUserSlotsWithLimit:(int64_t)a3 flow:(id)a4;
- (id)fetchCurrentFabricIndex;
- (id)fetchCurrentFabricIndex_flow:(id)a3;
- (id)fetchFeatureMapForSupportingWeekAndYearDayScheduleWithFlow:(id)a3;
- (id)fetchFeatureMapWithFlow:(id)a3;
- (id)fetchReaderGroupSubIdentifier;
- (id)findAllOccupiedCredentialSlotsForCredentialType:(int64_t)a3 startingAtSlot:(int64_t)a4 assumingTotalNumberOfSlots:(int64_t)a5 occupiedSlots:(id)a6 flow:(id)a7;
- (id)findAllUsersWithCreatorFabricIndex:(id)a3 indexStartingAtSlot:(int64_t)a4 assumingTotalNumberOfSlots:(int64_t)a5 users:(id)a6 flow:(id)a7;
- (id)findAllUsersWithCreatorFabricIndex:(id)a3 indexStartingAtSlot:(int64_t)a4 assumingTotalNumberOfSlots:(int64_t)a5 users:(id)a6 temporaryCachedAliroCredentials:(id)a7 flow:(id)a8;
- (id)findAvailableCredentialIndexStartingAtSlot:(int64_t)a3 forCredentialType:(int64_t)a4 assumingTotalNumberOfSlots:(int64_t)a5 flow:(id)a6;
- (id)findHomeUserWithUniqueID:(id)a3 indexStartingAtSlot:(int64_t)a4 assumingTotalNumberOfSlots:(int64_t)a5 availableSlots:(id)a6 currentFabricIndex:(id)a7 flow:(id)a8;
- (id)findHomeUserWithUniqueID:(id)a3 indexStartingAtSlot:(int64_t)a4 assumingTotalNumberOfSlots:(int64_t)a5 availableSlots:(id)a6 currentFabricIndex:(id)a7 temporaryCachedAliroCredentials:(id)a8 flow:(id)a9;
- (id)findOperationOrderForModifyingWeekDaySchedules:(id)a3 andYearDaySchedules:(id)a4 forUserIndex:(int64_t)a5 flow:(id)a6;
- (id)findOrAddUserWithUniqueID:(id)a3 flow:(id)a4;
- (id)findOrAddUserWithUniqueID:(id)a3 userType:(id)a4 flow:(id)a5;
- (id)findOrAddUserWithUniqueID:(id)a3 withFlow:(id)a4;
- (id)findOrAddUserWithUniqueID:(id)a3 withWeekDaySchedules:(id)a4 andYearDaySchedules:(id)a5 requireFullScheduleAudit:(BOOL)a6 flow:(id)a7;
- (id)findScheduleSlotsToAddAndClearForScheduleType:(int64_t)a3 withRequestedSchedules:(id)a4 forUserAtUserIndex:(int64_t)a5 numberOfSchedulesSupported:(int64_t)a6 flow:(id)a7;
- (id)findUserOrAvailableSlotWithUserUniqueID:(id)a3 flow:(id)a4;
- (id)firstAvailableCredentialSlotForCredentialType:(int64_t)a3 flow:(id)a4;
- (id)getAllCredentialsIndexStartingAtSlot:(int64_t)a3 forCredentialType:(int64_t)a4 credentials:(id)a5 flow:(id)a6;
- (id)getAllPinCodesWithFlow:(id)a3;
- (id)getAllUsers;
- (id)getAllUsersStartingAtSlot:(int64_t)a3 assumingTotalNumberOfSlots:(int64_t)a4 users:(id)a5 flow:(id)a6;
- (id)getAllUsersStartingAtSlot:(int64_t)a3 assumingTotalNumberOfSlots:(int64_t)a4 users:(id)a5 temporaryCachedAliroCredentials:(id)a6 flow:(id)a7;
- (id)getCredentialAtIndex:(int64_t)a3 forCredentialType:(int64_t)a4 flow:(id)a5;
- (id)getMaxPINCodeLengthWithFlow:(id)a3;
- (id)getMinPINCodeLengthWithFlow:(id)a3;
- (id)getScheduleOfScheduleType:(int64_t)a3 atScheduleIndex:(int64_t)a4 forUserAtUserIndex:(int64_t)a5 flow:(id)a6;
- (id)getUserAtIndex:(int64_t)a3 flow:(id)a4;
- (id)getUsersWithUniqueIDs:(id)a3 flow:(id)a4;
- (id)issuerCredentialForUser:(id)a3 flow:(id)a4;
- (id)lock_flow:(id)a3;
- (id)numberOfCredentialsSupportedPerUserWithFlow:(id)a3;
- (id)numberOfWeekDaySchedulesSupportedWithFlow:(id)a3;
- (id)numberOfYearDaySchedulesSupportedWithFlow:(id)a3;
- (id)pinCredentialForUser:(id)a3 flow:(id)a4;
- (id)provisionHomePin:(id)a3 flow:(id)a4;
- (id)readAliroSupportedVersionWithFlow:(id)a3;
- (id)readReaderConfigWithFlow:(id)a3;
- (id)readScheduleForScheduleType:(int64_t)a3 forUserIndex:(int64_t)a4 flow:(id)a5;
- (id)readSchedulesForUserIndex:(int64_t)a3 flow:(id)a4;
- (id)readSchedulesForWritingForScheduleType:(int64_t)a3 forUserIndex:(int64_t)a4 startingAtSlot:(int64_t)a5 assumingTotalNumberOfSlots:(int64_t)a6 schedulesToSlots:(id)a7 availableSlots:(id)a8 flow:(id)a9;
- (id)removeAllUsers;
- (id)removePinCodeForUserIndex:(int64_t)a3 flow:(id)a4;
- (id)removeUserWithUniqueID:(id)a3;
- (id)removeUsersCreatedByOurFabricWithFlow:(id)a3 notInUserUniqueIDs:(id)a4;
- (id)rfidCredentialForUser:(id)a3 flow:(id)a4;
- (id)serialize:(id)a3;
- (id)setOrReadReaderConfig:(id)a3 flow:(id)a4;
- (id)setScheduleOfScheduleType:(int64_t)a3 withSchedule:(id)a4 atScheduleIndex:(int64_t)a5 forUserAtUserIndex:(int64_t)a6 flow:(id)a7;
- (id)totalNumberOfAliroDeviceKeyCredentialsSupportedWithFlow:(id)a3;
- (id)totalNumberOfAliroIssuerKeyCredentialsSupportedWithFlow:(id)a3;
- (id)totalNumberOfCredentialSlotsSupportedForCredentialType:(int64_t)a3 flow:(id)a4;
- (id)totalNumberOfPINCredentialsSupported_flow:(id)a3;
- (id)totalNumberOfRFIDCredentialsSupported_flow:(id)a3;
- (id)totalNumberOfUsersSupported_flow:(id)a3;
- (id)unlockWithPin:(id)a3 flow:(id)a4;
- (id)unlock_flow:(id)a3;
- (id)updateCredentialData:(id)a3 forCredentialType:(id)a4 atIndex:(int64_t)a5 forUserAtUserIndex:(int64_t)a6 flow:(id)a7;
- (id)updatePinCredentialAtIndex:(int64_t)a3 withValue:(id)a4 forUserAtUserIndex:(int64_t)a5 flow:(id)a6;
- (id)updateSchedulesForUserIndex:(int64_t)a3 withWeekDaySchedules:(id)a4 andYearDaySchedules:(id)a5 flow:(id)a6;
- (id)updateSchedulesOfScheduleType:(int64_t)a3 withRequestedSchedules:(id)a4 forUserAtUserIndex:(int64_t)a5 flow:(id)a6;
- (id)updateUserTypeForUserIndex:(int64_t)a3 userType:(id)a4 flow:(id)a5;
- (id)updateUserUniqueIDForUserIndex:(int64_t)a3 userUniqueID:(id)a4 flow:(id)a5;
- (int64_t)totalNumberOfSchedulesSupportedOfScheduleType:(int64_t)a3 withDefaultCapacity:(int64_t)a4 flow:(id)a5;
- (void)cacheUserResponse:(id)a3;
- (void)dealloc;
- (void)lockDoorWithAccessoryUUID:(id)a3 completionHandler:(id)a4;
- (void)readAttributeCurrentFabricIndexWithCompletionHandler:(id)a3;
- (void)unlockDoorWithAccessoryUUID:(id)a3 completionHandler:(id)a4;
@end

@implementation HMMTRSyncClusterDoorLock

- (HMMTRAccessoryServer)accessoryServer
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryServer);

  return WeakRetained;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@dealloc", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v8.receiver = v4;
  v8.super_class = HMMTRSyncClusterDoorLock;
  [(HMMTRSyncClusterDoorLock *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (id)accessoryHasCOTAEnabledWithFlow:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__HMMTRSyncClusterDoorLock_accessoryHasCOTAEnabledWithFlow___block_invoke;
  v5[3] = &unk_2786ECB28;
  v5[4] = self;
  v3 = [(HMMTRSyncClusterDoorLock *)self ensureAccessoryConnected:v5 flow:a3];

  return v3;
}

id __60__HMMTRSyncClusterDoorLock_accessoryHasCOTAEnabledWithFlow___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) readAttributeRequirePINforRemoteOperationWithParams:0];
  v2 = MEMORY[0x277D0F7C0];
  v3 = [v1 objectForKey:*MEMORY[0x277CD51A0]];
  v4 = [v2 futureWithValue:v3];

  return v4;
}

- (void)cacheUserResponse:(id)a3
{
  v7 = a3;
  v4 = [v7 userUniqueID];

  if (v4)
  {
    v5 = [(HMMTRSyncClusterDoorLock *)self userUniqueIdentifierToUser];
    v6 = [v7 userUniqueID];
    [v5 setObject:v7 forKey:v6];
  }
}

- (id)readScheduleForScheduleType:(int64_t)a3 forUserIndex:(int64_t)a4 flow:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 UUID];
    *buf = 138544130;
    v22 = v12;
    v23 = 2112;
    v24 = v13;
    v25 = 2048;
    v26 = a3;
    v27 = 2048;
    v28 = a4;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] readScheduleForScheduleType: %ld, forUserIndex: %ld", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [(HMMTRSyncClusterDoorLock *)v10 totalNumberOfSchedulesSupportedOfScheduleType:a3 withDefaultCapacity:1 flow:v8];
  v15 = [MEMORY[0x277CBEC10] mutableCopy];
  v16 = [MEMORY[0x277CBEBF8] mutableCopy];
  v17 = [(HMMTRSyncClusterDoorLock *)v10 readSchedulesForWritingForScheduleType:a3 forUserIndex:a4 startingAtSlot:1 assumingTotalNumberOfSlots:v14 schedulesToSlots:v15 availableSlots:v16 flow:v8];
  v18 = [v17 then:&__block_literal_global_363];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __74__HMMTRSyncClusterDoorLock_readScheduleForScheduleType_forUserIndex_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 schedulesToSlots];
  [v2 na_flatMap:&__block_literal_global_366];
  objc_claimAutoreleasedReturnValue();

  return 1;
}

id __74__HMMTRSyncClusterDoorLock_readScheduleForScheduleType_forUserIndex_flow___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = MEMORY[0x277CBEA60];
  v6 = [a3 count];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __74__HMMTRSyncClusterDoorLock_readScheduleForScheduleType_forUserIndex_flow___block_invoke_3;
  v10[3] = &unk_2786ED7F0;
  v11 = v4;
  v7 = v4;
  v8 = [v5 na_arrayByRepeatingWithCount:v6 generatorBlock:v10];

  return v8;
}

- (id)getScheduleOfScheduleType:(int64_t)a3 atScheduleIndex:(int64_t)a4 forUserAtUserIndex:(int64_t)a5 flow:(id)a6
{
  v51 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 UUID];
    *buf = 138544386;
    *&buf[4] = v14;
    v43 = 2112;
    v44 = v15;
    v45 = 2048;
    v46 = a3;
    v47 = 2048;
    v48 = a4;
    v49 = 2048;
    v50 = a5;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] getScheduleOfScheduleType: %ld, atScheduleIndex: %ld, and forUserAtUserIndex: %ld", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v11);
  if (a3 == 1)
  {
    v16 = objc_alloc_init(MEMORY[0x277CD53B8]);
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    [v16 setUserIndex:v23];

    v24 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [v16 setYearDayIndex:v24];

    *buf = 0;
    v19 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
    v25 = [*buf resolverBlock];
    [(MTRClusterDoorLock *)v12 getYearDayScheduleWithParams:v16 expectedValues:0 expectedValueInterval:0 completion:v25];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __94__HMMTRSyncClusterDoorLock_getScheduleOfScheduleType_atScheduleIndex_forUserAtUserIndex_flow___block_invoke_2_361;
    v34[3] = &unk_2786ED768;
    v34[4] = v12;
    v35 = v10;
    v36 = a4;
    v37 = a5;
    v21 = [v19 then:&__block_literal_global_359 orRecover:v34];
    v22 = v35;
    goto LABEL_7;
  }

  if (!a3)
  {
    v16 = objc_alloc_init(MEMORY[0x277CD53B0]);
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    [v16 setUserIndex:v17];

    v18 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [v16 setWeekDayIndex:v18];

    *buf = 0;
    v19 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
    v20 = [*buf resolverBlock];
    [(MTRClusterDoorLock *)v12 getWeekDayScheduleWithParams:v16 expectedValues:0 expectedValueInterval:0 completion:v20];

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __94__HMMTRSyncClusterDoorLock_getScheduleOfScheduleType_atScheduleIndex_forUserAtUserIndex_flow___block_invoke_2;
    v38[3] = &unk_2786ED768;
    v38[4] = v12;
    v39 = v10;
    v40 = a4;
    v41 = a5;
    v21 = [v19 then:&__block_literal_global_353 orRecover:v38];
    v22 = v39;
LABEL_7:

    goto LABEL_11;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = v12;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    v30 = [v10 UUID];
    *buf = 138544386;
    *&buf[4] = v29;
    v43 = 2112;
    v44 = v30;
    v45 = 2048;
    v46 = a4;
    v47 = 2048;
    v48 = a5;
    v49 = 2048;
    v50 = a3;
    _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to get schedule at scheduleIndex: %ld and userIndex: %ld since scheduleType was of unknown type: %ld.", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v26);
  v31 = MEMORY[0x277D0F7C0];
  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:3 userInfo:0];
  v21 = [v31 futureWithError:v16];
LABEL_11:

  v32 = *MEMORY[0x277D85DE8];

  return v21;
}

uint64_t __94__HMMTRSyncClusterDoorLock_getScheduleOfScheduleType_atScheduleIndex_forUserAtUserIndex_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v16 = 138544386;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 2048;
    v21 = v9;
    v22 = 2048;
    v23 = v10;
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to get week day schedule at scheduleIndex: %ld and userIndex: %ld with error: %@", &v16, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = v3;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v14 = *MEMORY[0x277D85DE8];
  return 2;
}

uint64_t __94__HMMTRSyncClusterDoorLock_getScheduleOfScheduleType_atScheduleIndex_forUserAtUserIndex_flow___block_invoke_2_361(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v16 = 138544386;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 2048;
    v21 = v9;
    v22 = 2048;
    v23 = v10;
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to get year day schedule at scheduleIndex: %ld and userIndex: %ld with error: %@", &v16, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = v3;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v14 = *MEMORY[0x277D85DE8];
  return 2;
}

uint64_t __94__HMMTRSyncClusterDoorLock_getScheduleOfScheduleType_atScheduleIndex_forUserAtUserIndex_flow___block_invoke_356(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMMTRYearDaySchedule alloc] initWithMTRSchedule:v2];

  v4 = v3;
  return 1;
}

uint64_t __94__HMMTRSyncClusterDoorLock_getScheduleOfScheduleType_atScheduleIndex_forUserAtUserIndex_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[HMMTRWeekDaySchedule alloc] initWithMTRSchedule:v2];

  v4 = v3;
  return 1;
}

- (id)updateUserTypeForUserIndex:(int64_t)a3 userType:(id)a4 flow:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 UUID];
    *buf = 138544130;
    *&buf[4] = v13;
    v26 = 2112;
    v27 = v14;
    v28 = 2048;
    v29 = a3;
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] updateUserTypeForUserIndex: %ld, userType: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  v15 = objc_alloc_init(MEMORY[0x277CD53E8]);
  [v15 setOperationType:&unk_283EE79F8];
  v16 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v15 setUserIndex:v16];

  [v15 setUserType:v8];
  *buf = 0;
  v17 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
  v18 = [*buf errorOnlyResolverBlock];
  [(MTRClusterDoorLock *)v11 setUserWithParams:v15 expectedValues:0 expectedValueInterval:0 completion:v18];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __69__HMMTRSyncClusterDoorLock_updateUserTypeForUserIndex_userType_flow___block_invoke;
  v23[3] = &unk_2786EE848;
  v23[4] = v11;
  v24 = v9;
  v19 = v9;
  v20 = [v17 recover:v23];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __69__HMMTRSyncClusterDoorLock_updateUserTypeForUserIndex_userType_flow___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add user with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)updateUserUniqueIDForUserIndex:(int64_t)a3 userUniqueID:(id)a4 flow:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 UUID];
    *buf = 138544130;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    v29 = 2048;
    v30 = a3;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] updateUserUniqueIDForUserIndex: %ld, userUniqueID: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__HMMTRSyncClusterDoorLock_updateUserUniqueIDForUserIndex_userUniqueID_flow___block_invoke;
  v20[3] = &unk_2786ECEA8;
  v21 = v8;
  v22 = v11;
  v23 = v9;
  v24 = a3;
  v15 = v9;
  v16 = v8;
  v17 = [(HMMTRSyncClusterDoorLock *)v11 ensureAccessoryConnected:v20 flow:v15];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

id __77__HMMTRSyncClusterDoorLock_updateUserUniqueIDForUserIndex_userUniqueID_flow___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD53E8]);
  [v2 setOperationType:&unk_283EE79F8];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  [v2 setUserIndex:v3];

  [v2 setUserUniqueID:*(a1 + 32)];
  v11 = 0;
  v4 = [MEMORY[0x277D0F7C0] futureWithPromise:&v11];
  v5 = [v11 errorOnlyResolverBlock];
  [*(a1 + 40) setUserWithParams:v2 expectedValues:0 expectedValueInterval:0 completion:v5];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__HMMTRSyncClusterDoorLock_updateUserUniqueIDForUserIndex_userUniqueID_flow___block_invoke_2;
  v9[3] = &unk_2786EE848;
  v6 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v6;
  v7 = [v4 recover:v9];

  return v7;
}

uint64_t __77__HMMTRSyncClusterDoorLock_updateUserUniqueIDForUserIndex_userUniqueID_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add user with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)setScheduleOfScheduleType:(int64_t)a3 withSchedule:(id)a4 atScheduleIndex:(int64_t)a5 forUserAtUserIndex:(int64_t)a6 flow:(id)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a7;
  if (a3 == 1)
  {
    *buf = 0;
    v14 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
    v19 = [*buf errorOnlyResolverBlock];
    v20 = [v12 convertToMTRScheduleAtScheduleIndex:a5 forUserAtUserIndex:a6];
    [(MTRClusterDoorLock *)self setYearDayScheduleWithParams:v20 expectedValues:0 expectedValueInterval:0 completion:v19];

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __107__HMMTRSyncClusterDoorLock_setScheduleOfScheduleType_withSchedule_atScheduleIndex_forUserAtUserIndex_flow___block_invoke_349;
    v29[3] = &unk_2786EE848;
    v29[4] = self;
    v30 = v13;
    v17 = [v14 recover:v29];
    v18 = v30;
    goto LABEL_5;
  }

  if (!a3)
  {
    *buf = 0;
    v14 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
    v15 = [*buf errorOnlyResolverBlock];
    v16 = [v12 convertToMTRScheduleAtScheduleIndex:a5 forUserAtUserIndex:a6];
    [(MTRClusterDoorLock *)self setWeekDayScheduleWithParams:v16 expectedValues:0 expectedValueInterval:0 completion:v15];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __107__HMMTRSyncClusterDoorLock_setScheduleOfScheduleType_withSchedule_atScheduleIndex_forUserAtUserIndex_flow___block_invoke;
    v31[3] = &unk_2786EE848;
    v31[4] = self;
    v32 = v13;
    v17 = [v14 recover:v31];
    v18 = v32;
LABEL_5:

    goto LABEL_9;
  }

  v21 = objc_autoreleasePoolPush();
  v22 = self;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    v25 = [v13 UUID];
    *buf = 138543874;
    *&buf[4] = v24;
    v34 = 2112;
    v35 = v25;
    v36 = 2048;
    v37 = a3;
    _os_log_impl(&dword_22AEAE000, v23, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to set schedule with error of unknown HMMTRScheduleType: %ld", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v21);
  v26 = MEMORY[0x277D0F7C0];
  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:3 userInfo:0];
  v17 = [v26 futureWithError:v14];
LABEL_9:

  v27 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __107__HMMTRSyncClusterDoorLock_setScheduleOfScheduleType_withSchedule_atScheduleIndex_forUserAtUserIndex_flow___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to set weekday schedule with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

uint64_t __107__HMMTRSyncClusterDoorLock_setScheduleOfScheduleType_withSchedule_atScheduleIndex_forUserAtUserIndex_flow___block_invoke_349(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to set yearday schedule with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)clearScheduleOfScheduleType:(int64_t)a3 atScheduleIndex:(int64_t)a4 forUserAtUserIndex:(int64_t)a5 flow:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 UUID];
    *buf = 138544386;
    *&buf[4] = v14;
    v39 = 2112;
    v40 = v15;
    v41 = 2048;
    v42 = a3;
    v43 = 2048;
    v44 = a4;
    v45 = 2048;
    v46 = a5;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] clearScheduleOfScheduleType: %ld, atScheduleIndex: %ld, for userIndex: %ld", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v11);
  if (a3 == 1)
  {
    v16 = objc_alloc_init(MEMORY[0x277CD5388]);
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [v16 setYearDayIndex:v23];

    v24 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    [v16 setUserIndex:v24];

    *buf = 0;
    v19 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
    v25 = [*buf errorOnlyResolverBlock];
    [(MTRClusterDoorLock *)v12 clearYearDayScheduleWithParams:v16 expectedValues:0 expectedValueInterval:0 completion:v25];

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __96__HMMTRSyncClusterDoorLock_clearScheduleOfScheduleType_atScheduleIndex_forUserAtUserIndex_flow___block_invoke_348;
    v34[3] = &unk_2786EE848;
    v34[4] = v12;
    v35 = v10;
    v21 = [v19 recover:v34];
    v22 = v35;
    goto LABEL_7;
  }

  if (!a3)
  {
    v16 = objc_alloc_init(MEMORY[0x277CD5380]);
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [v16 setWeekDayIndex:v17];

    v18 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    [v16 setUserIndex:v18];

    *buf = 0;
    v19 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
    v20 = [*buf errorOnlyResolverBlock];
    [(MTRClusterDoorLock *)v12 clearWeekDayScheduleWithParams:v16 expectedValues:0 expectedValueInterval:0 completion:v20];

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __96__HMMTRSyncClusterDoorLock_clearScheduleOfScheduleType_atScheduleIndex_forUserAtUserIndex_flow___block_invoke;
    v36[3] = &unk_2786EE848;
    v36[4] = v12;
    v37 = v10;
    v21 = [v19 recover:v36];
    v22 = v37;
LABEL_7:

    goto LABEL_11;
  }

  v26 = objc_autoreleasePoolPush();
  v27 = v12;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = HMFGetLogIdentifier();
    v30 = [v10 UUID];
    *buf = 138543874;
    *&buf[4] = v29;
    v39 = 2112;
    v40 = v30;
    v41 = 2048;
    v42 = a3;
    _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to clear schedule with error of unknown HMMTRScheduleType: %ld", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v26);
  v31 = MEMORY[0x277D0F7C0];
  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:3 userInfo:0];
  v21 = [v31 futureWithError:v16];
LABEL_11:

  v32 = *MEMORY[0x277D85DE8];

  return v21;
}

uint64_t __96__HMMTRSyncClusterDoorLock_clearScheduleOfScheduleType_atScheduleIndex_forUserAtUserIndex_flow___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to clear weekday schedule with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

uint64_t __96__HMMTRSyncClusterDoorLock_clearScheduleOfScheduleType_atScheduleIndex_forUserAtUserIndex_flow___block_invoke_348(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to clear yearday schedule with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

- (int64_t)totalNumberOfSchedulesSupportedOfScheduleType:(int64_t)a3 withDefaultCapacity:(int64_t)a4 flow:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (a3 == 1)
  {
    v9 = [(MTRClusterDoorLock *)self readAttributeNumberOfYearDaySchedulesSupportedPerUserWithParams:0];
    v10 = [v9 objectForKey:*MEMORY[0x277CD51A0]];
    if (!v10)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [v8 UUID];
        v30 = 138543618;
        v31 = v28;
        v32 = 2112;
        v33 = v29;
        _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Could not determine total number of yearday schedule slots, assuming 1 by default", &v30, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v16 = &unk_283EE79E0;
      goto LABEL_9;
    }

LABEL_8:
    v16 = v10;
LABEL_9:

    v17 = [v16 integerValue];
    goto LABEL_13;
  }

  if (!a3)
  {
    v9 = [(MTRClusterDoorLock *)self readAttributeNumberOfWeekDaySchedulesSupportedPerUserWithParams:0];
    v10 = [v9 objectForKey:*MEMORY[0x277CD51A0]];
    if (!v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v8 UUID];
        v30 = 138543874;
        v31 = v14;
        v32 = 2112;
        v33 = v15;
        v34 = 2048;
        v35 = a4;
        _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Could not determine total number of weekday schedule slots, assuming %ld by default", &v30, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    }

    goto LABEL_8;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [v8 UUID];
    v30 = 138543874;
    v31 = v21;
    v32 = 2112;
    v33 = v22;
    v34 = 2048;
    v35 = a3;
    _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] ScheduleType unknown of type: %ld", &v30, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  v17 = 0;
LABEL_13:

  v23 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)numberOfYearDaySchedulesSupportedWithFlow:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__HMMTRSyncClusterDoorLock_numberOfYearDaySchedulesSupportedWithFlow___block_invoke;
  v8[3] = &unk_2786ECB50;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(HMMTRSyncClusterDoorLock *)self ensureAccessoryConnected:v8 flow:v5];

  return v6;
}

id __70__HMMTRSyncClusterDoorLock_numberOfYearDaySchedulesSupportedWithFlow___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D0F7C0];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "totalNumberOfSchedulesSupportedOfScheduleType:withDefaultCapacity:flow:", 1, 0, *(a1 + 40))}];
  v3 = [v1 futureWithValue:v2];

  return v3;
}

- (id)numberOfWeekDaySchedulesSupportedWithFlow:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__HMMTRSyncClusterDoorLock_numberOfWeekDaySchedulesSupportedWithFlow___block_invoke;
  v8[3] = &unk_2786ECB50;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(HMMTRSyncClusterDoorLock *)self ensureAccessoryConnected:v8 flow:v5];

  return v6;
}

id __70__HMMTRSyncClusterDoorLock_numberOfWeekDaySchedulesSupportedWithFlow___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D0F7C0];
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "totalNumberOfSchedulesSupportedOfScheduleType:withDefaultCapacity:flow:", 0, 0, *(a1 + 40))}];
  v3 = [v1 futureWithValue:v2];

  return v3;
}

- (id)numberOfCredentialsSupportedPerUserWithFlow:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72__HMMTRSyncClusterDoorLock_numberOfCredentialsSupportedPerUserWithFlow___block_invoke;
  v8[3] = &unk_2786ECB50;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(HMMTRSyncClusterDoorLock *)self ensureAccessoryConnected:v8 flow:v5];

  return v6;
}

id __72__HMMTRSyncClusterDoorLock_numberOfCredentialsSupportedPerUserWithFlow___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) readAttributeNumberOfCredentialsSupportedPerUserWithParams:0];
  v3 = [v2 objectForKey:*MEMORY[0x277CD51A0]];
  if (!v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) UUID];
      v12 = 138543874;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = &unk_283EE7B30;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Could not determine number of credentials supported per user, assuming %@ by default", &v12, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v3 = &unk_283EE7B30;
  }

  v9 = [MEMORY[0x277D0F7C0] futureWithValue:v3];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)totalNumberOfAliroDeviceKeyCredentialsSupportedWithFlow:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HMMTRSyncClusterDoorLock_totalNumberOfAliroDeviceKeyCredentialsSupportedWithFlow___block_invoke;
  v8[3] = &unk_2786ECB50;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(HMMTRSyncClusterDoorLock *)self ensureAccessoryConnected:v8 flow:v5];

  return v6;
}

id __84__HMMTRSyncClusterDoorLock_totalNumberOfAliroDeviceKeyCredentialsSupportedWithFlow___block_invoke(uint64_t a1)
{
  v6 = 0;
  v2 = [MEMORY[0x277D0F7C0] futureWithPromise:&v6];
  v3 = [v6 resolverBlock];
  v4 = [*(a1 + 32) apiRouter];
  [v4 numberOfAliroDeviceKeyCredentialsSupportedWithFlow:*(a1 + 40) completion:v3];

  return v2;
}

- (id)totalNumberOfAliroIssuerKeyCredentialsSupportedWithFlow:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HMMTRSyncClusterDoorLock_totalNumberOfAliroIssuerKeyCredentialsSupportedWithFlow___block_invoke;
  v8[3] = &unk_2786ECB50;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(HMMTRSyncClusterDoorLock *)self ensureAccessoryConnected:v8 flow:v5];

  return v6;
}

id __84__HMMTRSyncClusterDoorLock_totalNumberOfAliroIssuerKeyCredentialsSupportedWithFlow___block_invoke(uint64_t a1)
{
  v6 = 0;
  v2 = [MEMORY[0x277D0F7C0] futureWithPromise:&v6];
  v3 = [v6 resolverBlock];
  v4 = [*(a1 + 32) apiRouter];
  [v4 numberOfAliroIssuerKeyCredentialsSupportedWithFlow:*(a1 + 40) completion:v3];

  return v2;
}

- (id)totalNumberOfRFIDCredentialsSupported_flow:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];

  if (v5)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__HMMTRSyncClusterDoorLock_totalNumberOfRFIDCredentialsSupported_flow___block_invoke;
    v14[3] = &unk_2786ECB50;
    v14[4] = self;
    v15 = v4;
    v6 = [(HMMTRSyncClusterDoorLock *)self ensureAccessoryConnected:v14 flow:v15];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 UUID];
      *buf = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] No MTRDevice, assuming 50 slots", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = [MEMORY[0x277D0F7C0] futureWithValue:&unk_283EE7B18];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

id __71__HMMTRSyncClusterDoorLock_totalNumberOfRFIDCredentialsSupported_flow___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) readAttributeNumberOfRFIDUsersSupportedWithParams:0];
  v3 = [v2 objectForKey:*MEMORY[0x277CD51A0]];
  if (!v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) UUID];
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Could not determine total number of RFID credential slots, assuming 50 by default", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v3 = &unk_283EE7B18;
  }

  v9 = [MEMORY[0x277D0F7C0] futureWithValue:v3];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)totalNumberOfPINCredentialsSupported_flow:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];

  if (v5)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__HMMTRSyncClusterDoorLock_totalNumberOfPINCredentialsSupported_flow___block_invoke;
    v14[3] = &unk_2786ECB50;
    v14[4] = self;
    v15 = v4;
    v6 = [(HMMTRSyncClusterDoorLock *)self ensureAccessoryConnected:v14 flow:v15];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 UUID];
      *buf = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] No MTRDevice, assuming 50 slots", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = [MEMORY[0x277D0F7C0] futureWithValue:&unk_283EE7B18];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

id __70__HMMTRSyncClusterDoorLock_totalNumberOfPINCredentialsSupported_flow___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) readAttributeNumberOfPINUsersSupportedWithParams:0];
  v3 = [v2 objectForKey:*MEMORY[0x277CD51A0]];
  if (!v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) UUID];
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Could not determine total number of PIN credential slots, assuming 50 by default", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v3 = &unk_283EE7B18;
  }

  v9 = [MEMORY[0x277D0F7C0] futureWithValue:v3];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)totalNumberOfUsersSupported_flow:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];

  if (v5)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__HMMTRSyncClusterDoorLock_totalNumberOfUsersSupported_flow___block_invoke;
    v14[3] = &unk_2786ECB50;
    v14[4] = self;
    v15 = v4;
    v6 = [(HMMTRSyncClusterDoorLock *)self ensureAccessoryConnected:v14 flow:v15];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 UUID];
      *buf = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] No MTRDevice, assuming 50 slots", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = [MEMORY[0x277D0F7C0] futureWithValue:&unk_283EE7B18];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

id __61__HMMTRSyncClusterDoorLock_totalNumberOfUsersSupported_flow___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) readAttributeNumberOfTotalUsersSupportedWithParams:0];
  v3 = [v2 objectForKey:*MEMORY[0x277CD51A0]];
  if (!v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) UUID];
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Could not determine total number of user slots, assuming 50 by default", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v3 = &unk_283EE7B18;
  }

  v9 = [MEMORY[0x277D0F7C0] futureWithValue:v3];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)fetchCurrentFabricIndex_flow:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MTRGenericCluster *)self device];

  if (v5)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = v4;
    v6 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
    v7 = [(HMMTRSyncClusterDoorLock *)self ensureAccessoryConnected:&v17 flow:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 UUID];
      *buf = 138543618;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] THIS IS A BUG: device is nil, this should not happen.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = MEMORY[0x277D0F7C0];
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:2 userInfo:0];
    v7 = [v13 futureWithError:v14];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

id __57__HMMTRSyncClusterDoorLock_fetchCurrentFabricIndex_flow___block_invoke(uint64_t a1)
{
  v9 = 0;
  v2 = [MEMORY[0x277D0F7C0] futureWithPromise:&v9];
  v3 = [v9 resolverBlock];
  [*(a1 + 32) readAttributeCurrentFabricIndexWithCompletionHandler:v3];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HMMTRSyncClusterDoorLock_fetchCurrentFabricIndex_flow___block_invoke_2;
  v7[3] = &unk_2786EE848;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v4;
  v5 = [v2 recover:v7];

  return v5;
}

uint64_t __57__HMMTRSyncClusterDoorLock_fetchCurrentFabricIndex_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to fetch current fabric index with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

- (void)readAttributeCurrentFabricIndexWithCompletionHandler:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v23 = 138543618;
    v24 = v8;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Getting current fabric index: %@", &v23, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = objc_alloc(MEMORY[0x277CD5280]);
  v10 = [(MTRGenericCluster *)v6 device];
  v11 = [(HMMTRSyncClusterDoorLock *)v6 queue];
  v12 = [v9 initWithDevice:v10 endpointID:&unk_283EE7A40 queue:v11];

  v13 = objc_alloc_init(MEMORY[0x277CD54D8]);
  [v13 setFilterByFabric:0];
  v14 = [v12 readAttributeCurrentFabricIndexWithParams:v13];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 hmf_numberForKey:*MEMORY[0x277CD51A0]];
    if (v16)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = v6;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v23 = 138543618;
        v24 = v20;
        v25 = 2112;
        v26 = v16;
        _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@Current Fabric Index: %@", &v23, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v4[2](v4, v16, 0);
    }

    else
    {
      v21 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
      (v4)[2](v4, 0, v21);
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (v4)[2](v4, 0, v16);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)fetchCurrentFabricIndex
{
  v3 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v4 = [(HMMTRSyncClusterDoorLock *)self fetchCurrentFabricIndex_flow:v3];

  return v4;
}

- (id)getCredentialAtIndex:(int64_t)a3 forCredentialType:(int64_t)a4 flow:(id)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 UUID];
    *buf = 138544130;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    v28 = 2048;
    v29 = a3;
    v30 = 2048;
    v31 = a4;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] getCredentialAtIndex: %ld forCredentialType: %ld", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  v20 = MEMORY[0x277D85DD0];
  v22 = a4;
  v23 = a3;
  v21 = v8;
  v14 = MEMORY[0x277D0F7B8];
  v15 = v8;
  v16 = [v14 untrackedPlaceholderFlow];
  v17 = [(HMMTRSyncClusterDoorLock *)v10 ensureAccessoryConnected:&v20 flow:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

id __72__HMMTRSyncClusterDoorLock_getCredentialAtIndex_forCredentialType_flow___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD5390]);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  [v2 setCredentialType:v3];

  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  [v2 setCredentialIndex:v4];

  v5 = objc_alloc_init(MEMORY[0x277CD53A0]);
  [v5 setCredential:v2];
  v14 = 0;
  v6 = [MEMORY[0x277D0F7C0] futureWithPromise:&v14];
  v7 = [v14 resolverBlock];
  v8 = [*(a1 + 32) apiRouter];
  [v8 getCredentialStatusWithParams:v5 flow:*(a1 + 40) completion:v7];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__HMMTRSyncClusterDoorLock_getCredentialAtIndex_forCredentialType_flow___block_invoke_2;
  v12[3] = &unk_2786EE848;
  v9 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v9;
  v10 = [v6 recover:v12];

  return v10;
}

uint64_t __72__HMMTRSyncClusterDoorLock_getCredentialAtIndex_forCredentialType_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to get credential with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)updateCredentialData:(id)a3 forCredentialType:(id)a4 atIndex:(int64_t)a5 forUserAtUserIndex:(int64_t)a6 flow:(id)a7
{
  v47 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [v14 UUID];
    *buf = 138544642;
    v36 = v18;
    v37 = 2112;
    v38 = v19;
    v39 = 2112;
    v40 = v12;
    v41 = 2112;
    v42 = v13;
    v43 = 2048;
    v44 = a5;
    v45 = 2048;
    v46 = a6;
    _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] updateCredentialData: %@ forCredentialType: %@, atIndex: %ld forUserAtUserIndex: %ld", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v15);
  v28 = MEMORY[0x277D85DD0];
  v33 = a5;
  v34 = a6;
  v29 = v13;
  v30 = v12;
  v31 = v16;
  v32 = v14;
  v20 = MEMORY[0x277D0F7B8];
  v21 = v14;
  v22 = v12;
  v23 = v13;
  v24 = [v20 untrackedPlaceholderFlow];
  v25 = [(HMMTRSyncClusterDoorLock *)v16 ensureAccessoryConnected:&v28 flow:v24];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

id __99__HMMTRSyncClusterDoorLock_updateCredentialData_forCredentialType_atIndex_forUserAtUserIndex_flow___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD5390]);
  [v2 setCredentialType:*(a1 + 32)];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
  [v2 setCredentialIndex:v3];

  v4 = objc_alloc_init(MEMORY[0x277CD53E0]);
  [v4 setOperationType:&unk_283EE79F8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72)];
  [v4 setUserIndex:v5];

  [v4 setCredential:v2];
  [v4 setCredentialData:*(a1 + 40)];
  v23 = 0;
  v6 = [MEMORY[0x277D0F7C0] futureWithPromise:&v23];
  v7 = [v23 resolverBlock];
  v8 = [*(a1 + 48) apiRouter];
  [v8 setCredentialWithParams:v4 flow:*(a1 + 56) completion:v7];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __99__HMMTRSyncClusterDoorLock_updateCredentialData_forCredentialType_atIndex_forUserAtUserIndex_flow___block_invoke_2;
  v19[3] = &unk_2786ED6D0;
  v16 = *(a1 + 48);
  v9 = *(&v16 + 1);
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v20 = v16;
  v21 = v12;
  v22 = *(a1 + 64);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __99__HMMTRSyncClusterDoorLock_updateCredentialData_forCredentialType_atIndex_forUserAtUserIndex_flow___block_invoke_339;
  v17[3] = &unk_2786EE848;
  v13 = *(a1 + 56);
  v17[4] = *(a1 + 48);
  v18 = v13;
  v14 = [v6 then:v19 orRecover:v17];

  return v14;
}

uint64_t __99__HMMTRSyncClusterDoorLock_updateCredentialData_forCredentialType_atIndex_forUserAtUserIndex_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 status];
  v5 = [v4 isEqualToNumber:&unk_283EE7A40];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 40) UUID];
      v11 = *(a1 + 48);
      v12 = *(a1 + 56);
      v13 = *(a1 + 64);
      v14 = *(a1 + 72);
      v34 = 138544642;
      v35 = v9;
      v36 = 2112;
      v37 = v10;
      v38 = 2112;
      v39 = v11;
      v40 = 2112;
      v41 = v12;
      v42 = 2048;
      v43 = v13;
      v44 = 2048;
      v45 = v14;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully updated CredentialData: %@ forCredentialType: %@, atIndex: %ld forUserAtUserIndex: %ld", &v34, 0x3Eu);
    }

    objc_autoreleasePoolPop(v6);
    v3;
    v15 = 1;
  }

  else
  {
    v16 = [v3 status];
    v17 = [v16 isEqualToNumber:&unk_283EE79F8];

    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    v21 = v20;
    if (v17)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [*(a1 + 40) UUID];
        v34 = 138543618;
        v35 = v22;
        v36 = 2112;
        v37 = v23;
        _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Credential is a duplicate", &v34, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v24 = MEMORY[0x277CCA9B8];
      v25 = 8;
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [*(a1 + 40) UUID];
        v28 = [v3 status];
        v34 = 138543874;
        v35 = v26;
        v36 = 2112;
        v37 = v27;
        v38 = 2112;
        v39 = v28;
        _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update credential with status: %@", &v34, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v24 = MEMORY[0x277CCA9B8];
      v25 = 6;
    }

    v29 = [v24 errorWithDomain:@"HMMTROperationErrorDomain" code:v25 userInfo:0];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v15 = 2;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __99__HMMTRSyncClusterDoorLock_updateCredentialData_forCredentialType_atIndex_forUserAtUserIndex_flow___block_invoke_339(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update credential with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)addCredentialData:(id)a3 forCredentialType:(id)a4 atIndex:(int64_t)a5 forUserAtUserIndex:(id)a6 flow:(id)a7
{
  v49 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = [v15 UUID];
    *buf = 138544642;
    v38 = v19;
    v39 = 2112;
    v40 = v20;
    v41 = 2112;
    v42 = v12;
    v43 = 2112;
    v44 = v13;
    v45 = 2048;
    v46 = a5;
    v47 = 2112;
    v48 = v14;
    _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addCredentialData: %@ forCredentialType: %@, atIndex: %ld forUserAtUserIndex: %@", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v16);
  v30 = MEMORY[0x277D85DD0];
  v31 = v13;
  v32 = v14;
  v33 = v12;
  v34 = v17;
  v35 = v15;
  v36 = a5;
  v21 = MEMORY[0x277D0F7B8];
  v22 = v15;
  v23 = v12;
  v24 = v14;
  v25 = v13;
  v26 = [v21 untrackedPlaceholderFlow];
  v27 = [(HMMTRSyncClusterDoorLock *)v17 ensureAccessoryConnected:&v30 flow:v26];

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

id __96__HMMTRSyncClusterDoorLock_addCredentialData_forCredentialType_atIndex_forUserAtUserIndex_flow___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD5390]);
  [v2 setCredentialType:*(a1 + 32)];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72)];
  [v2 setCredentialIndex:v3];

  v4 = objc_alloc_init(MEMORY[0x277CD53E0]);
  [v4 setOperationType:&unk_283EE7A40];
  [v4 setUserIndex:*(a1 + 40)];
  [v4 setCredential:v2];
  [v4 setCredentialData:*(a1 + 48)];
  v25 = 0;
  v5 = [MEMORY[0x277D0F7C0] futureWithPromise:&v25];
  v6 = [v25 resolverBlock];
  v7 = [*(a1 + 56) apiRouter];
  [v7 setCredentialWithParams:v4 flow:*(a1 + 64) completion:v6];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __96__HMMTRSyncClusterDoorLock_addCredentialData_forCredentialType_atIndex_forUserAtUserIndex_flow___block_invoke_2;
  v20[3] = &unk_2786ED680;
  v8 = *(a1 + 40);
  v17 = *(a1 + 56);
  v9 = v17.i64[1];
  v10 = *(a1 + 48);
  v11.i64[0] = v8;
  v11.i64[1] = v10;
  v21 = vzip1q_s64(v11, v17);
  v11.i64[0] = v17.i64[1];
  v22 = v11;
  v12 = *(a1 + 32);
  v14 = *(a1 + 64);
  v13 = *(a1 + 72);
  v23 = v12;
  v24 = v13;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __96__HMMTRSyncClusterDoorLock_addCredentialData_forCredentialType_atIndex_forUserAtUserIndex_flow___block_invoke_338;
  v18[3] = &unk_2786EE848;
  v18[4] = *(a1 + 56);
  v19 = v14;
  v15 = [v5 then:v20 orRecover:v18];

  return v15;
}

uint64_t __96__HMMTRSyncClusterDoorLock_addCredentialData_forCredentialType_atIndex_forUserAtUserIndex_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 status];
  v5 = [v4 isEqualToNumber:&unk_283EE7A40];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 40);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 48) UUID];
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v13 = *(a1 + 72);
      v14 = [*(a1 + 32) integerValue];
      v38 = 138544642;
      v39 = v9;
      v40 = 2112;
      v41 = v10;
      v42 = 2112;
      v43 = v11;
      v44 = 2112;
      v45 = v12;
      v46 = 2048;
      v47 = v13;
      v48 = 2048;
      v49 = v14;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully added CredentialData: %@ forCredentialType: %@, atIndex: %ld forUserAtUserIndex: %ld", &v38, 0x3Eu);
    }

    objc_autoreleasePoolPop(v6);
    v3;
    v15 = 1;
  }

  else
  {
    if (!*(a1 + 32))
    {
      v16 = [v3 userIndex];

      if (v16)
      {
        v17 = *(a1 + 40);
        v18 = [v3 userIndex];
        v19 = [v17 clearUserAtIndex:objc_msgSend(v18 flow:{"integerValue"), *(a1 + 48)}];
      }
    }

    v20 = [v3 status];
    v21 = [v20 isEqualToNumber:&unk_283EE79F8];

    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 40);
    v24 = HMFGetOSLogHandle();
    v25 = v24;
    if (v21)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [*(a1 + 48) UUID];
        v38 = 138543618;
        v39 = v26;
        v40 = 2112;
        v41 = v27;
        _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Credential is a duplicate", &v38, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      v28 = MEMORY[0x277CCA9B8];
      v29 = 8;
    }

    else
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        v31 = [*(a1 + 48) UUID];
        v32 = [v3 status];
        v38 = 138543874;
        v39 = v30;
        v40 = 2112;
        v41 = v31;
        v42 = 2112;
        v43 = v32;
        _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add credential with status: %@", &v38, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      v28 = MEMORY[0x277CCA9B8];
      v29 = 6;
    }

    v33 = [v28 errorWithDomain:@"HMMTROperationErrorDomain" code:v29 userInfo:0];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v15 = 2;
  }

  v36 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __96__HMMTRSyncClusterDoorLock_addCredentialData_forCredentialType_atIndex_forUserAtUserIndex_flow___block_invoke_338(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add credential with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)updatePinCredentialAtIndex:(int64_t)a3 withValue:(id)a4 forUserAtUserIndex:(int64_t)a5 flow:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v11 UUID];
    *buf = 138544386;
    v31 = v15;
    v32 = 2112;
    v33 = v16;
    v34 = 2048;
    v35 = a3;
    v36 = 2112;
    v37 = v10;
    v38 = 2048;
    v39 = a5;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] updatePinCredentialAtIndex: %ld, withValue: %@ forUserAtUserIndex: %ld", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v12);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __89__HMMTRSyncClusterDoorLock_updatePinCredentialAtIndex_withValue_forUserAtUserIndex_flow___block_invoke;
  v24[3] = &unk_2786ED630;
  v28 = a3;
  v29 = a5;
  v25 = v10;
  v26 = v13;
  v27 = v11;
  v17 = MEMORY[0x277D0F7B8];
  v18 = v11;
  v19 = v10;
  v20 = [v17 untrackedPlaceholderFlow];
  v21 = [(HMMTRSyncClusterDoorLock *)v13 ensureAccessoryConnected:v24 flow:v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

id __89__HMMTRSyncClusterDoorLock_updatePinCredentialAtIndex_withValue_forUserAtUserIndex_flow___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD5390]);
  [v2 setCredentialType:&unk_283EE79E0];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  [v2 setCredentialIndex:v3];

  v4 = objc_alloc_init(MEMORY[0x277CD53E0]);
  [v4 setOperationType:&unk_283EE79F8];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
  [v4 setUserIndex:v5];

  [v4 setCredential:v2];
  v6 = [HMMTRSyncClusterDoorLock pinDataWithDigits:*(a1 + 32)];
  [v4 setCredentialData:v6];

  v17 = 0;
  v7 = [MEMORY[0x277D0F7C0] futureWithPromise:&v17];
  v8 = [v17 resolverBlock];
  [*(a1 + 40) setCredentialWithParams:v4 expectedValues:0 expectedValueInterval:0 completionHandler:v8];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __89__HMMTRSyncClusterDoorLock_updatePinCredentialAtIndex_withValue_forUserAtUserIndex_flow___block_invoke_2;
  v15[3] = &unk_2786ED658;
  v9 = *(a1 + 48);
  v15[4] = *(a1 + 40);
  v16 = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __89__HMMTRSyncClusterDoorLock_updatePinCredentialAtIndex_withValue_forUserAtUserIndex_flow___block_invoke_337;
  v13[3] = &unk_2786EE848;
  v10 = *(a1 + 48);
  v13[4] = *(a1 + 40);
  v14 = v10;
  v11 = [v7 then:v15 orRecover:v13];

  return v11;
}

uint64_t __89__HMMTRSyncClusterDoorLock_updatePinCredentialAtIndex_withValue_forUserAtUserIndex_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 status];
  v5 = [v4 isEqualToNumber:&unk_283EE7A40];

  if (v5)
  {
    v3;
    v6 = 1;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v12 = [v3 status];
      v21 = 138543874;
      v22 = v10;
      v23 = 2112;
      v24 = v11;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update pin credential with status: %@", &v21, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [v3 status];
    v14 = [v13 isEqualToNumber:&unk_283EE79F8];

    if (v14)
    {
      v15 = 8;
    }

    else
    {
      v15 = 7;
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:v15 userInfo:0];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v6 = 2;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __89__HMMTRSyncClusterDoorLock_updatePinCredentialAtIndex_withValue_forUserAtUserIndex_flow___block_invoke_337(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update pin credential with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)addPinCredentialAtIndex:(int64_t)a3 withValue:(id)a4 forUserAtUserIndex:(int64_t)a5 flow:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v11 UUID];
    *buf = 138544386;
    v31 = v15;
    v32 = 2112;
    v33 = v16;
    v34 = 2048;
    v35 = a3;
    v36 = 2112;
    v37 = v10;
    v38 = 2048;
    v39 = a5;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addPinCredentialAtIndex: %ld, withValue: %@ forUserAtUserIndex: %ld", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v12);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __86__HMMTRSyncClusterDoorLock_addPinCredentialAtIndex_withValue_forUserAtUserIndex_flow___block_invoke;
  v24[3] = &unk_2786ED630;
  v28 = a3;
  v29 = a5;
  v25 = v10;
  v26 = v13;
  v27 = v11;
  v17 = MEMORY[0x277D0F7B8];
  v18 = v11;
  v19 = v10;
  v20 = [v17 untrackedPlaceholderFlow];
  v21 = [(HMMTRSyncClusterDoorLock *)v13 ensureAccessoryConnected:v24 flow:v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

id __86__HMMTRSyncClusterDoorLock_addPinCredentialAtIndex_withValue_forUserAtUserIndex_flow___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD5390]);
  [v2 setCredentialType:&unk_283EE79E0];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  [v2 setCredentialIndex:v3];

  v4 = objc_alloc_init(MEMORY[0x277CD53E0]);
  [v4 setOperationType:&unk_283EE7A40];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
  [v4 setUserIndex:v5];

  [v4 setCredential:v2];
  v6 = [HMMTRSyncClusterDoorLock pinDataWithDigits:*(a1 + 32)];
  [v4 setCredentialData:v6];

  v17 = 0;
  v7 = [MEMORY[0x277D0F7C0] futureWithPromise:&v17];
  v8 = [v17 resolverBlock];
  [*(a1 + 40) setCredentialWithParams:v4 expectedValues:0 expectedValueInterval:0 completionHandler:v8];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__HMMTRSyncClusterDoorLock_addPinCredentialAtIndex_withValue_forUserAtUserIndex_flow___block_invoke_2;
  v15[3] = &unk_2786ED658;
  v9 = *(a1 + 48);
  v15[4] = *(a1 + 40);
  v16 = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__HMMTRSyncClusterDoorLock_addPinCredentialAtIndex_withValue_forUserAtUserIndex_flow___block_invoke_336;
  v13[3] = &unk_2786EE848;
  v10 = *(a1 + 48);
  v13[4] = *(a1 + 40);
  v14 = v10;
  v11 = [v7 then:v15 orRecover:v13];

  return v11;
}

uint64_t __86__HMMTRSyncClusterDoorLock_addPinCredentialAtIndex_withValue_forUserAtUserIndex_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 status];
  v5 = [v4 isEqualToNumber:&unk_283EE7A40];

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v24 = 138543618;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully added pin credential", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v3;
    v12 = 1;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 40) UUID];
      v15 = [v3 status];
      v24 = 138543874;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add pin credential with status: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v16 = [v3 status];
    v17 = [v16 isEqualToNumber:&unk_283EE79F8];

    if (v17)
    {
      v18 = 8;
    }

    else
    {
      v18 = 6;
    }

    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:v18 userInfo:0];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v12 = 2;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __86__HMMTRSyncClusterDoorLock_addPinCredentialAtIndex_withValue_forUserAtUserIndex_flow___block_invoke_336(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add pin credential with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)addUserAtUserIndex:(int64_t)a3 withUserUniqueID:(int64_t)a4 userType:(id)a5 flow:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v11 UUID];
    *buf = 138544386;
    v31 = v15;
    v32 = 2112;
    v33 = v16;
    v34 = 2048;
    v35 = a3;
    v36 = 2048;
    v37 = a4;
    v38 = 2112;
    v39 = v10;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addUserAtUserIndex: %ld, withUserUniqueID: %ld, userType: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v12);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __78__HMMTRSyncClusterDoorLock_addUserAtUserIndex_withUserUniqueID_userType_flow___block_invoke;
  v24[3] = &unk_2786ED630;
  v28 = a3;
  v29 = a4;
  v25 = v10;
  v26 = v13;
  v27 = v11;
  v17 = MEMORY[0x277D0F7B8];
  v18 = v11;
  v19 = v10;
  v20 = [v17 untrackedPlaceholderFlow];
  v21 = [(HMMTRSyncClusterDoorLock *)v13 ensureAccessoryConnected:v24 flow:v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

id __78__HMMTRSyncClusterDoorLock_addUserAtUserIndex_withUserUniqueID_userType_flow___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD53E8]);
  [v2 setOperationType:&unk_283EE7A40];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  [v2 setUserIndex:v3];

  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
  [v2 setUserUniqueId:v4];

  [v2 setUserType:*(a1 + 32)];
  v12 = 0;
  v5 = [MEMORY[0x277D0F7C0] futureWithPromise:&v12];
  v6 = [v12 errorOnlyResolverBlock];
  [*(a1 + 40) setUserWithParams:v2 expectedValues:0 expectedValueInterval:0 completion:v6];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__HMMTRSyncClusterDoorLock_addUserAtUserIndex_withUserUniqueID_userType_flow___block_invoke_2;
  v10[3] = &unk_2786EE848;
  v7 = *(a1 + 48);
  v10[4] = *(a1 + 40);
  v11 = v7;
  v8 = [v5 recover:v10];

  return v8;
}

uint64_t __78__HMMTRSyncClusterDoorLock_addUserAtUserIndex_withUserUniqueID_userType_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to add user with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)unlock_flow:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 UUID];
    *buf = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Unlocking", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v16 = MEMORY[0x277D85DD0];
  v17 = v4;
  v10 = MEMORY[0x277D0F7B8];
  v11 = v4;
  v12 = [v10 untrackedPlaceholderFlow];
  v13 = [(HMMTRSyncClusterDoorLock *)v6 ensureAccessoryConnected:&v16 flow:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id __40__HMMTRSyncClusterDoorLock_unlock_flow___block_invoke(uint64_t a1)
{
  v8 = 0;
  v2 = [MEMORY[0x277D0F7C0] futureWithPromise:&v8];
  v3 = [v8 errorOnlyResolverBlock];
  [*(a1 + 32) unlockDoorWithParams:0 expectedValues:0 expectedValueInterval:0 completionHandler:v3];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__HMMTRSyncClusterDoorLock_unlock_flow___block_invoke_2;
  v6[3] = &unk_2786EC920;
  v7 = *(a1 + 40);
  v4 = [v2 recover:v6];

  return v4;
}

uint64_t __40__HMMTRSyncClusterDoorLock_unlock_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Unlocked door with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)unlockWithPin:(id)a3 flow:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543874;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Unlocking with pin: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__HMMTRSyncClusterDoorLock_unlockWithPin_flow___block_invoke;
  v20[3] = &unk_2786EC948;
  v21 = v6;
  v22 = v9;
  v23 = v7;
  v13 = MEMORY[0x277D0F7B8];
  v14 = v7;
  v15 = v6;
  v16 = [v13 untrackedPlaceholderFlow];
  v17 = [(HMMTRSyncClusterDoorLock *)v9 ensureAccessoryConnected:v20 flow:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

id __47__HMMTRSyncClusterDoorLock_unlockWithPin_flow___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD5400]);
  v3 = [HMMTRSyncClusterDoorLock pinDataWithDigits:*(a1 + 32)];
  [v2 setPinCode:v3];

  v10 = 0;
  v4 = [MEMORY[0x277D0F7C0] futureWithPromise:&v10];
  v5 = [v10 errorOnlyResolverBlock];
  [*(a1 + 40) unlockDoorWithParams:v2 expectedValues:0 expectedValueInterval:0 completionHandler:v5];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__HMMTRSyncClusterDoorLock_unlockWithPin_flow___block_invoke_2;
  v8[3] = &unk_2786EC920;
  v9 = *(a1 + 48);
  v6 = [v4 recover:v8];

  return v6;
}

uint64_t __47__HMMTRSyncClusterDoorLock_unlockWithPin_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Unlocked door with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)lock_flow:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 UUID];
    *buf = 138543618;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Locking", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v16 = MEMORY[0x277D85DD0];
  v17 = v4;
  v10 = MEMORY[0x277D0F7B8];
  v11 = v4;
  v12 = [v10 untrackedPlaceholderFlow];
  v13 = [(HMMTRSyncClusterDoorLock *)v6 ensureAccessoryConnected:&v16 flow:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id __38__HMMTRSyncClusterDoorLock_lock_flow___block_invoke(uint64_t a1)
{
  v8 = 0;
  v2 = [MEMORY[0x277D0F7C0] futureWithPromise:&v8];
  v3 = [v8 errorOnlyResolverBlock];
  [*(a1 + 32) lockDoorWithParams:0 expectedValues:0 expectedValueInterval:0 completionHandler:v3];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__HMMTRSyncClusterDoorLock_lock_flow___block_invoke_2;
  v6[3] = &unk_2786EC920;
  v7 = *(a1 + 40);
  v4 = [v2 recover:v6];

  return v4;
}

uint64_t __38__HMMTRSyncClusterDoorLock_lock_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Locked door with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

- (HMMTRSyncClusterDoorLock)lockWithPin:(id)a3 flow:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543874;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Locking with pin: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __45__HMMTRSyncClusterDoorLock_lockWithPin_flow___block_invoke;
  v20[3] = &unk_2786EC948;
  v21 = v6;
  v22 = v9;
  v23 = v7;
  v13 = MEMORY[0x277D0F7B8];
  v14 = v7;
  v15 = v6;
  v16 = [v13 untrackedPlaceholderFlow];
  v17 = [(HMMTRSyncClusterDoorLock *)v9 ensureAccessoryConnected:v20 flow:v16];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

id __45__HMMTRSyncClusterDoorLock_lockWithPin_flow___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD53C0]);
  v3 = [HMMTRSyncClusterDoorLock pinDataWithDigits:*(a1 + 32)];
  [v2 setPinCode:v3];

  v10 = 0;
  v4 = [MEMORY[0x277D0F7C0] futureWithPromise:&v10];
  v5 = [v10 errorOnlyResolverBlock];
  [*(a1 + 40) lockDoorWithParams:v2 expectedValues:0 expectedValueInterval:0 completionHandler:v5];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__HMMTRSyncClusterDoorLock_lockWithPin_flow___block_invoke_2;
  v8[3] = &unk_2786EC920;
  v9 = *(a1 + 48);
  v6 = [v4 recover:v8];

  return v6;
}

uint64_t __45__HMMTRSyncClusterDoorLock_lockWithPin_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Locked door with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)addReaderKeyData:(id)a3 toUserIndex:(int64_t)a4 flow:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 UUID];
    *buf = 138544130;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v8;
    v31 = 2048;
    v32 = a4;
    _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addReaderKeyData: %@ to UserIndex %ld", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  v15 = -[HMMTRSyncClusterDoorLock firstAvailableCredentialSlotForCredentialType:flow:](v11, "firstAvailableCredentialSlotForCredentialType:flow:", [&unk_283EE79F8 integerValue], v9);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __62__HMMTRSyncClusterDoorLock_addReaderKeyData_toUserIndex_flow___block_invoke;
  v21[3] = &unk_2786ED608;
  v21[4] = v11;
  v22 = v8;
  v23 = v9;
  v24 = a4;
  v16 = v9;
  v17 = v8;
  v18 = [v15 then:v21];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __62__HMMTRSyncClusterDoorLock_addReaderKeyData_toUserIndex_flow___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = [v3 integerValue];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:a1[7]];
  v8 = [v4 addCredentialData:v5 forCredentialType:&unk_283EE79F8 atIndex:v6 forUserAtUserIndex:v7 flow:a1[6]];
  if (v8)
  {
    v9 = v8;

    return 3;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    return [(HMMTRSyncClusterDoorLock *)v11 addPinCodeWithValue:v12 forUserIndex:v13 flow:v14, v15];
  }
}

- (id)addPinCodeWithValue:(id)a3 forUserIndex:(int64_t)a4 flow:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 UUID];
    *buf = 138544130;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v8;
    v31 = 2048;
    v32 = a4;
    _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addPinCodeWithValue: %@, forUserIndex: %ld", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  v15 = -[HMMTRSyncClusterDoorLock firstAvailableCredentialSlotForCredentialType:flow:](v11, "firstAvailableCredentialSlotForCredentialType:flow:", [&unk_283EE79E0 integerValue], v9);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__HMMTRSyncClusterDoorLock_addPinCodeWithValue_forUserIndex_flow___block_invoke;
  v21[3] = &unk_2786ED608;
  v21[4] = v11;
  v22 = v8;
  v23 = v9;
  v24 = a4;
  v16 = v9;
  v17 = v8;
  v18 = [v15 then:v21];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __66__HMMTRSyncClusterDoorLock_addPinCodeWithValue_forUserIndex_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) addPinCredentialAtIndex:objc_msgSend(v3 withValue:"integerValue") forUserAtUserIndex:*(a1 + 40) flow:{*(a1 + 56), *(a1 + 48)}];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return [(HMMTRSyncClusterDoorLock *)v7 findAllUsersWithCreatorFabricIndex:v8 indexStartingAtSlot:v9 assumingTotalNumberOfSlots:v10 users:v11 temporaryCachedAliroCredentials:v12 flow:v13, v14];
  }
}

- (id)findAllUsersWithCreatorFabricIndex:(id)a3 indexStartingAtSlot:(int64_t)a4 assumingTotalNumberOfSlots:(int64_t)a5 users:(id)a6 temporaryCachedAliroCredentials:(id)a7 flow:(id)a8
{
  v50 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    [v17 UUID];
    v32 = v15;
    v23 = v22 = a5;
    *buf = 138544386;
    v41 = v21;
    v42 = 2112;
    v43 = v23;
    v44 = 2112;
    v45 = v14;
    v46 = 2048;
    v47 = a4;
    v48 = 2048;
    v49 = v22;
    _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] findAllUsersWithCreatorFabricIndex: %@ indexStartingAtSlot: %ld assumingTotalNumberOfSlots: %ld", buf, 0x34u);

    a5 = v22;
    v15 = v32;
  }

  objc_autoreleasePoolPop(v18);
  v24 = [(HMMTRSyncClusterDoorLock *)v19 __getUserAtIndex:a4 includeAliroCredentials:1 temporaryCachedAliroCredentials:v16 flow:v17];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __153__HMMTRSyncClusterDoorLock_findAllUsersWithCreatorFabricIndex_indexStartingAtSlot_assumingTotalNumberOfSlots_users_temporaryCachedAliroCredentials_flow___block_invoke;
  v33[3] = &unk_2786ED5E0;
  v33[4] = v19;
  v34 = v14;
  v38 = a4;
  v39 = a5;
  v35 = v15;
  v36 = v16;
  v37 = v17;
  v25 = v17;
  v26 = v16;
  v27 = v15;
  v28 = v14;
  v29 = [v24 then:v33];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

id __153__HMMTRSyncClusterDoorLock_findAllUsersWithCreatorFabricIndex_indexStartingAtSlot_assumingTotalNumberOfSlots_users_temporaryCachedAliroCredentials_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isUserSlotAvailableForUserResponse:v3] & 1) == 0)
  {
    if (!*(a1 + 40) || ([v3 creatorFabricIndex], v4 = objc_claimAutoreleasedReturnValue(), v5 = *(a1 + 40), v6 = HMFEqualObjects(), v4, v6))
    {
      [*(a1 + 48) addObject:v3];
      if (*(a1 + 40))
      {
        [*(a1 + 32) cacheUserResponse:v3];
      }
    }
  }

  if (*(a1 + 72) >= *(a1 + 80) || ([v3 nextUserIndex], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    [*(a1 + 48) copy];
    v13 = 1;
    goto LABEL_11;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = [v3 nextUserIndex];
  v11 = [v8 findAllUsersWithCreatorFabricIndex:v9 indexStartingAtSlot:objc_msgSend(v10 assumingTotalNumberOfSlots:"integerValue") users:*(a1 + 80) temporaryCachedAliroCredentials:*(a1 + 48) flow:{*(a1 + 56), *(a1 + 64)}];
  if (v11)
  {
    v12 = v11;

    v13 = 3;
LABEL_11:

    return v13;
  }

  v15 = _HMFPreconditionFailure();
  return [(HMMTRSyncClusterDoorLock *)v15 findAllUsersWithCreatorFabricIndex:v16 indexStartingAtSlot:v17 assumingTotalNumberOfSlots:v18 users:v19 flow:v20, v21];
}

- (id)findAllUsersWithCreatorFabricIndex:(id)a3 indexStartingAtSlot:(int64_t)a4 assumingTotalNumberOfSlots:(int64_t)a5 users:(id)a6 flow:(id)a7
{
  v12 = MEMORY[0x277CBEB38];
  v13 = a7;
  v14 = a6;
  v15 = a3;
  v16 = [v12 dictionary];
  v17 = [(HMMTRSyncClusterDoorLock *)self findAllUsersWithCreatorFabricIndex:v15 indexStartingAtSlot:a4 assumingTotalNumberOfSlots:a5 users:v14 temporaryCachedAliroCredentials:v16 flow:v13];

  return v17;
}

- (id)_findSchedulesToBeAdded:(id)a3 dict:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v6 objectForKeyedSubscript:{v13, v19}];

        if (v14)
        {
          v15 = [v6 objectForKeyedSubscript:v13];
          if ([v15 count] == 1)
          {
            [v6 removeObjectForKey:v13];
          }

          else
          {
            v16 = [v15 anyObject];
            [v15 removeObject:v16];
          }
        }

        else
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)readSchedulesForWritingForScheduleType:(int64_t)a3 forUserIndex:(int64_t)a4 startingAtSlot:(int64_t)a5 assumingTotalNumberOfSlots:(int64_t)a6 schedulesToSlots:(id)a7 availableSlots:(id)a8 flow:(id)a9
{
  v53 = *MEMORY[0x277D85DE8];
  v31 = a7;
  v15 = a8;
  v16 = a9;
  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v20 = v29 = v17;
    [v16 UUID];
    v21 = v30 = v15;
    *buf = 138544642;
    v42 = v20;
    v43 = 2112;
    v44 = v21;
    v45 = 2048;
    v46 = a3;
    v47 = 2048;
    v48 = a4;
    v49 = 2048;
    v50 = a5;
    v51 = 2048;
    v52 = a6;
    _os_log_impl(&dword_22AEAE000, v19, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] readSchedulesForWritingForScheduleType: %ld, forUserIndex: %ld, atSlot:%ld assumingTotalNumberOfSlots: %ld", buf, 0x3Eu);

    v15 = v30;
    v17 = v29;
  }

  objc_autoreleasePoolPop(v17);
  v22 = [(HMMTRSyncClusterDoorLock *)v18 getScheduleOfScheduleType:a3 atScheduleIndex:a5 forUserAtUserIndex:a4 flow:v16];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __159__HMMTRSyncClusterDoorLock_readSchedulesForWritingForScheduleType_forUserIndex_startingAtSlot_assumingTotalNumberOfSlots_schedulesToSlots_availableSlots_flow___block_invoke;
  v32[3] = &unk_2786ED5B8;
  v33 = v15;
  v34 = v18;
  v35 = v16;
  v36 = v31;
  v37 = a5;
  v38 = a6;
  v39 = a3;
  v40 = a4;
  v23 = v31;
  v24 = v16;
  v25 = v15;
  v26 = [v22 then:v32];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

uint64_t __159__HMMTRSyncClusterDoorLock_readSchedulesForWritingForScheduleType_forUserIndex_startingAtSlot_assumingTotalNumberOfSlots_schedulesToSlots_availableSlots_flow___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 status];
  v5 = [v4 isEqualToNumber:&unk_283EE7A58];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
    [v6 addObject:v7];
    goto LABEL_11;
  }

  v8 = [v3 status];
  v9 = [v8 isEqualToNumber:&unk_283EE7A40];

  if (v9)
  {
    v10 = [*(a1 + 56) objectForKeyedSubscript:v3];

    if (v10)
    {
      v7 = [*(a1 + 56) objectForKeyedSubscript:v3];
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
      [v7 addObject:v11];
    }

    else
    {
      v7 = [MEMORY[0x277CBEB58] set];
      v21 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 64)];
      [v7 addObject:v21];

      [*(a1 + 56) setObject:v7 forKey:v3];
    }

LABEL_11:

    v22 = *(a1 + 64);
    if (v22 >= *(a1 + 72))
    {
      v28 = objc_opt_new();
      [v28 setAvailableSlots:*(a1 + 32)];
      [v28 setSchedulesToSlots:*(a1 + 56)];
      v27 = 1;
    }

    else
    {
      v23 = *(a1 + 32);
      v24 = *(a1 + 56);
      v25 = [*(a1 + 40) readSchedulesForWritingForScheduleType:*(a1 + 80) forUserIndex:*(a1 + 88) startingAtSlot:v22 + 1 assumingTotalNumberOfSlots:*(a1 + 48) schedulesToSlots:? availableSlots:? flow:?];
      if (!v25)
      {
        _HMFPreconditionFailure();
      }

      v26 = v25;

      v27 = 3;
    }

    goto LABEL_17;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 40);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [*(a1 + 48) UUID];
    v17 = [v3 status];
    *buf = 138543874;
    v32 = v15;
    v33 = 2112;
    v34 = v16;
    v35 = 2112;
    v36 = v17;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Schedule status was an invalid response of %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:9 userInfo:0];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v27 = 2;
LABEL_17:

  v29 = *MEMORY[0x277D85DE8];
  return v27;
}

- (id)findScheduleSlotsToAddAndClearForScheduleType:(int64_t)a3 withRequestedSchedules:(id)a4 forUserAtUserIndex:(int64_t)a5 numberOfSchedulesSupported:(int64_t)a6 flow:(id)a7
{
  v12 = a4;
  v13 = a7;
  v14 = [MEMORY[0x277CBEB38] dictionary];
  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:a6];
  v16 = [(HMMTRSyncClusterDoorLock *)self readSchedulesForWritingForScheduleType:a3 forUserIndex:a5 startingAtSlot:1 assumingTotalNumberOfSlots:a6 schedulesToSlots:v14 availableSlots:v15 flow:v13];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __148__HMMTRSyncClusterDoorLock_findScheduleSlotsToAddAndClearForScheduleType_withRequestedSchedules_forUserAtUserIndex_numberOfSchedulesSupported_flow___block_invoke;
  v21[3] = &unk_2786ED590;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v17 = v13;
  v18 = v12;
  v19 = [v16 then:v21];

  return v19;
}

uint64_t __148__HMMTRSyncClusterDoorLock_findScheduleSlotsToAddAndClearForScheduleType_withRequestedSchedules_forUserAtUserIndex_numberOfSchedulesSupported_flow___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 schedulesToSlots];
  v5 = [v4 mutableCopy];

  v39 = a1;
  v6 = [*(a1 + 32) _findSchedulesToBeAdded:*(a1 + 40) dict:v5];
  v40 = v5;
  v7 = [v5 na_flatMap:&__block_literal_global_326];
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v9 = [v7 objectEnumerator];
  v10 = [v3 availableSlots];
  v11 = [v10 objectEnumerator];

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = v6;
  v13 = [v12 countByEnumeratingWithState:&v42 objects:v50 count:16];
  v41 = v7;
  if (v13)
  {
    v14 = v13;
    v38 = v3;
    v15 = 0;
    v16 = *v43;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v43 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v42 + 1) + 8 * i);
        v19 = [v9 nextObject];

        if (v19)
        {
          v15 = v19;
        }

        else
        {
          v20 = [v11 nextObject];
          if (!v20)
          {
            v28 = objc_autoreleasePoolPush();
            v29 = *(v39 + 32);
            v30 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              v31 = HMFGetLogIdentifier();
              v32 = [*(v39 + 48) UUID];
              *buf = 138543618;
              v47 = v31;
              v48 = 2112;
              v49 = v32;
              _os_log_impl(&dword_22AEAE000, v30, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] There are no more slots to add schedules. Should have errored before reaching here.", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v28);
            v33 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:9 userInfo:0];
            v34 = v33;
            v3 = v38;
            if (v33)
            {
              v35 = v33;
            }

            else
            {
              [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
              objc_claimAutoreleasedReturnValue();
            }

            v27 = v40;

            v26 = 2;
            v21 = v12;
            goto LABEL_23;
          }

          v15 = v20;
        }

        [v8 setObject:v18 forKey:v15];
      }

      v14 = [v12 countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    v3 = v38;
    v7 = v41;
  }

  v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v22 = [v9 nextObject];
  if (v22)
  {
    v23 = v22;
    do
    {
      [v21 addObject:v23];
      v24 = [v9 nextObject];

      v23 = v24;
    }

    while (v24);
  }

  v25 = objc_opt_new();
  [v25 setSlotToHMMTRSchedulesToAdd:v8];
  [v25 setSlotsOfSchedulesToClear:v21];
  v26 = 1;
  v27 = v40;
LABEL_23:

  v36 = *MEMORY[0x277D85DE8];
  return v26;
}

- (id)updateSchedulesOfScheduleType:(int64_t)a3 withRequestedSchedules:(id)a4 forUserAtUserIndex:(int64_t)a5 flow:(id)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v11 UUID];
    *buf = 138544386;
    v34 = v15;
    v35 = 2112;
    v36 = v16;
    v37 = 2048;
    v38 = a3;
    v39 = 2112;
    v40 = v10;
    v41 = 2048;
    v42 = a5;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] updateSchedulesOfScheduleType: %ld, withRequestedSchedules: %@ forUserIndex: %ld", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v12);
  if ([v10 count])
  {
    v17 = [(HMMTRSyncClusterDoorLock *)v13 totalNumberOfSchedulesSupportedOfScheduleType:a3 withDefaultCapacity:1 flow:v11];
    if ([v10 count] <= v17)
    {
      v26 = [(HMMTRSyncClusterDoorLock *)v13 findScheduleSlotsToAddAndClearForScheduleType:a3 withRequestedSchedules:v10 forUserAtUserIndex:a5 numberOfSchedulesSupported:v17 flow:v11];
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __105__HMMTRSyncClusterDoorLock_updateSchedulesOfScheduleType_withRequestedSchedules_forUserAtUserIndex_flow___block_invoke;
      v29[3] = &unk_2786ED548;
      v29[4] = v13;
      v31 = a3;
      v32 = a5;
      v30 = v11;
      v25 = [v26 then:v29];
    }

    else
    {
      v18 = objc_autoreleasePoolPush();
      v19 = v13;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [v11 UUID];
        *buf = 138543618;
        v34 = v21;
        v35 = 2112;
        v36 = v22;
        _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to updateSchedulesOfScheduleType since requested schedules is more than accessory supports", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v23 = MEMORY[0x277D0F7C0];
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:9 userInfo:0];
      v25 = [v23 futureWithError:v24];
    }
  }

  else
  {
    v25 = [(HMMTRSyncClusterDoorLock *)v13 clearScheduleOfScheduleType:a3 atScheduleIndex:254 forUserAtUserIndex:a5 flow:v11];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v25;
}

uint64_t __105__HMMTRSyncClusterDoorLock_updateSchedulesOfScheduleType_withRequestedSchedules_forUserAtUserIndex_flow___block_invoke(uint64_t a1, void *a2)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277D0F7C0];
  v5 = [v3 slotToHMMTRSchedulesToAdd];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __105__HMMTRSyncClusterDoorLock_updateSchedulesOfScheduleType_withRequestedSchedules_forUserAtUserIndex_flow___block_invoke_2;
  v22[3] = &unk_2786ED4F8;
  v6 = *(a1 + 40);
  v22[4] = *(a1 + 32);
  v24 = *(a1 + 48);
  v23 = v6;
  v7 = [v5 na_map:v22];
  v8 = [v4 all:v7];
  v25[0] = v8;
  v9 = MEMORY[0x277D0F7C0];
  v10 = [v3 slotsOfSchedulesToClear];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __105__HMMTRSyncClusterDoorLock_updateSchedulesOfScheduleType_withRequestedSchedules_forUserAtUserIndex_flow___block_invoke_3;
  v19[3] = &unk_2786ED520;
  v11 = *(a1 + 40);
  v19[4] = *(a1 + 32);
  v21 = *(a1 + 48);
  v20 = v11;
  v12 = [v10 na_map:v19];
  v13 = [v9 all:v12];
  v25[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v15 = [v4 all:v14];
  if (!v15)
  {
    _HMFPreconditionFailure();
  }

  v16 = v15;

  v17 = *MEMORY[0x277D85DE8];
  return 3;
}

id __105__HMMTRSyncClusterDoorLock_updateSchedulesOfScheduleType_withRequestedSchedules_forUserAtUserIndex_flow___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[6];
  v7 = a3;
  v8 = [v5 setScheduleOfScheduleType:v6 withSchedule:v7 atScheduleIndex:objc_msgSend(a2 forUserAtUserIndex:"integerValue") flow:{a1[7], a1[5]}];

  return v8;
}

uint64_t __105__HMMTRSyncClusterDoorLock_updateSchedulesOfScheduleType_withRequestedSchedules_forUserAtUserIndex_flow___block_invoke_3(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = [a2 integerValue];
  v6 = a1[7];
  v7 = a1[5];

  return [v3 clearScheduleOfScheduleType:v4 atScheduleIndex:v5 forUserAtUserIndex:v6 flow:v7];
}

- (id)findOperationOrderForModifyingWeekDaySchedules:(id)a3 andYearDaySchedules:(id)a4 forUserIndex:(int64_t)a5 flow:(id)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v12 UUID];
    *buf = 138544386;
    v40 = v16;
    v41 = 2112;
    v42 = v17;
    v43 = 2112;
    v44 = v10;
    v45 = 2112;
    v46 = v11;
    v47 = 2048;
    v48 = a5;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] findOperationOrderForModifyingWeekDaySchedules: %@ andYearDaySchedules: %@ forUserIndex: %ld", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v13);
  if ([v10 hmf_isEmpty] && objc_msgSend(v11, "hmf_isEmpty"))
  {
    v18 = MEMORY[0x277D0F7C0];
    v19 = [(HMMTRSyncClusterDoorLock *)v14 clearScheduleOfScheduleType:0 atScheduleIndex:254 forUserAtUserIndex:a5 flow:v12];
    v38[0] = v19;
    v20 = [(HMMTRSyncClusterDoorLock *)v14 clearScheduleOfScheduleType:1 atScheduleIndex:254 forUserAtUserIndex:a5 flow:v12];
    v38[1] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v22 = [v18 all:v21];

    goto LABEL_14;
  }

  if ([v11 hmf_isEmpty])
  {
    v19 = [(HMMTRSyncClusterDoorLock *)v14 updateSchedulesOfScheduleType:0 withRequestedSchedules:v10 forUserAtUserIndex:a5 flow:v12];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __113__HMMTRSyncClusterDoorLock_findOperationOrderForModifyingWeekDaySchedules_andYearDaySchedules_forUserIndex_flow___block_invoke;
    v35[3] = &unk_2786ED4D0;
    v35[4] = v14;
    v37 = a5;
    v36 = v12;
    v22 = [v19 then:v35];
    v23 = v36;
LABEL_10:

    goto LABEL_14;
  }

  if ([v10 hmf_isEmpty])
  {
    v19 = [(HMMTRSyncClusterDoorLock *)v14 updateSchedulesOfScheduleType:1 withRequestedSchedules:v11 forUserAtUserIndex:a5 flow:v12];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __113__HMMTRSyncClusterDoorLock_findOperationOrderForModifyingWeekDaySchedules_andYearDaySchedules_forUserIndex_flow___block_invoke_2;
    v32[3] = &unk_2786ED4D0;
    v32[4] = v14;
    v34 = a5;
    v33 = v12;
    v22 = [v19 then:v32];
    v23 = v33;
    goto LABEL_10;
  }

  v24 = objc_autoreleasePoolPush();
  v25 = v14;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    v28 = [v12 UUID];
    *buf = 138543618;
    v40 = v27;
    v41 = 2112;
    v42 = v28;
    _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to set schedule since both year day and week day schedule types are set at the same time.", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  v29 = MEMORY[0x277D0F7C0];
  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:9 userInfo:0];
  v22 = [v29 futureWithError:v19];
LABEL_14:

  v30 = *MEMORY[0x277D85DE8];

  return v22;
}

uint64_t __113__HMMTRSyncClusterDoorLock_findOperationOrderForModifyingWeekDaySchedules_andYearDaySchedules_forUserIndex_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clearScheduleOfScheduleType:1 atScheduleIndex:254 forUserAtUserIndex:*(a1 + 48) flow:*(a1 + 40)];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return __113__HMMTRSyncClusterDoorLock_findOperationOrderForModifyingWeekDaySchedules_andYearDaySchedules_forUserIndex_flow___block_invoke_2(v7);
  }
}

uint64_t __113__HMMTRSyncClusterDoorLock_findOperationOrderForModifyingWeekDaySchedules_andYearDaySchedules_forUserIndex_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clearScheduleOfScheduleType:0 atScheduleIndex:254 forUserAtUserIndex:*(a1 + 48) flow:*(a1 + 40)];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return [(HMMTRSyncClusterDoorLock *)v7 getAllUsersStartingAtSlot:v8 assumingTotalNumberOfSlots:v9 users:v10 temporaryCachedAliroCredentials:v11 flow:v12, v13];
  }
}

- (id)getAllUsersStartingAtSlot:(int64_t)a3 assumingTotalNumberOfSlots:(int64_t)a4 users:(id)a5 temporaryCachedAliroCredentials:(id)a6 flow:(id)a7
{
  v39 = *MEMORY[0x277D85DE8];
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [v14 UUID];
    *buf = 138544130;
    v32 = v18;
    v33 = 2112;
    v34 = v19;
    v35 = 2048;
    v36 = a3;
    v37 = 2048;
    v38 = a4;
    _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] getAllUsersStartingAtSlot: %ld assumingTotalNumberOfSlots: %ld", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  v20 = [(HMMTRSyncClusterDoorLock *)v16 __getUserAtIndex:a3 includeAliroCredentials:1 temporaryCachedAliroCredentials:v13 flow:v14];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __124__HMMTRSyncClusterDoorLock_getAllUsersStartingAtSlot_assumingTotalNumberOfSlots_users_temporaryCachedAliroCredentials_flow___block_invoke;
  v26[3] = &unk_2786ED4A8;
  v26[4] = v16;
  v27 = v12;
  v29 = a3;
  v30 = a4;
  v28 = v14;
  v21 = v14;
  v22 = v12;
  v23 = [v20 then:v26];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

uint64_t __124__HMMTRSyncClusterDoorLock_getAllUsersStartingAtSlot_assumingTotalNumberOfSlots_users_temporaryCachedAliroCredentials_flow___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) isUserSlotAvailableForUserResponse:v3] & 1) == 0)
  {
    [*(a1 + 32) cacheUserResponse:v3];
    [*(a1 + 40) addObject:v3];
  }

  if (*(a1 + 56) < *(a1 + 64) && ([v3 nextUserIndex], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    v5 = *(a1 + 32);
    v6 = [v3 nextUserIndex];
    v7 = [v5 getAllUsersStartingAtSlot:objc_msgSend(v6 assumingTotalNumberOfSlots:"integerValue") users:*(a1 + 64) flow:{*(a1 + 40), *(a1 + 48)}];
    if (!v7)
    {
      _HMFPreconditionFailure();
    }

    v8 = v7;

    v9 = 3;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 48) UUID];
      v15 = *(a1 + 40);
      v18 = 138543874;
      v19 = v13;
      v20 = 2112;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Exhausted full occupied user sweep: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 40) copy];
    v9 = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)getAllUsersStartingAtSlot:(int64_t)a3 assumingTotalNumberOfSlots:(int64_t)a4 users:(id)a5 flow:(id)a6
{
  v10 = MEMORY[0x277CBEB38];
  v11 = a6;
  v12 = a5;
  v13 = [v10 dictionary];
  v14 = [(HMMTRSyncClusterDoorLock *)self getAllUsersStartingAtSlot:a3 assumingTotalNumberOfSlots:a4 users:v12 temporaryCachedAliroCredentials:v13 flow:v11];

  return v14;
}

- (id)findAllOccupiedCredentialSlotsForCredentialType:(int64_t)a3 startingAtSlot:(int64_t)a4 assumingTotalNumberOfSlots:(int64_t)a5 occupiedSlots:(id)a6 flow:(id)a7
{
  v41 = *MEMORY[0x277D85DE8];
  v12 = a6;
  v13 = a7;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v13 UUID];
    *buf = 138544386;
    v32 = v17;
    v33 = 2112;
    v34 = v18;
    v35 = 2048;
    v36 = a3;
    v37 = 2048;
    v38 = a4;
    v39 = 2048;
    v40 = a5;
    _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] findAllOccupiedCredentialSlotsForCredentialType: %ld startingAtSlot: %ld assumingTotalNumberOfSlots: %ld", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = [(HMMTRSyncClusterDoorLock *)v15 getCredentialAtIndex:a4 forCredentialType:a3 flow:v13];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __137__HMMTRSyncClusterDoorLock_findAllOccupiedCredentialSlotsForCredentialType_startingAtSlot_assumingTotalNumberOfSlots_occupiedSlots_flow___block_invoke;
  v25[3] = &unk_2786ED480;
  v25[4] = v15;
  v26 = v13;
  v27 = v12;
  v28 = a4;
  v29 = a3;
  v30 = a5;
  v20 = v12;
  v21 = v13;
  v22 = [v19 then:v25];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

uint64_t __137__HMMTRSyncClusterDoorLock_findAllOccupiedCredentialSlotsForCredentialType_startingAtSlot_assumingTotalNumberOfSlots_occupiedSlots_flow___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 credentialExists];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 40) UUID];
      v11 = *(a1 + 56);
      v12 = *(a1 + 64);
      v30 = 138544130;
      v31 = v9;
      v32 = 2112;
      v33 = v10;
      v34 = 2048;
      v35 = v11;
      v36 = 2048;
      v37 = v12;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Credential exists at slot %ld for credentialType %ld", &v30, 0x2Au);
    }

    objc_autoreleasePoolPop(v6);
    v13 = *(a1 + 48);
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
    [v13 addObject:v14];
  }

  if (*(a1 + 56) < *(a1 + 72) && ([v3 nextCredentialIndex], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
  {
    v16 = *(a1 + 32);
    v17 = *(a1 + 64);
    v18 = [v3 nextCredentialIndex];
    v19 = [v16 findAllOccupiedCredentialSlotsForCredentialType:v17 startingAtSlot:objc_msgSend(v18 assumingTotalNumberOfSlots:"integerValue") occupiedSlots:*(a1 + 72) flow:{*(a1 + 48), *(a1 + 40)}];
    if (!v19)
    {
      _HMFPreconditionFailure();
    }

    v20 = v19;

    v21 = 3;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [*(a1 + 40) UUID];
      v27 = *(a1 + 48);
      v30 = 138543874;
      v31 = v25;
      v32 = 2112;
      v33 = v26;
      v34 = 2112;
      v35 = v27;
      _os_log_impl(&dword_22AEAE000, v24, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Exhausted search for occupied credentials with result %@", &v30, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    *(a1 + 48);
    v21 = 1;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)findHomeUserWithUniqueID:(id)a3 indexStartingAtSlot:(int64_t)a4 assumingTotalNumberOfSlots:(int64_t)a5 availableSlots:(id)a6 currentFabricIndex:(id)a7 temporaryCachedAliroCredentials:(id)a8 flow:(id)a9
{
  v58 = *MEMORY[0x277D85DE8];
  v36 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = objc_autoreleasePoolPush();
  v20 = self;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v22 = v16;
    v24 = v23 = a5;
    [v18 UUID];
    v25 = v35 = v19;
    *buf = 138544642;
    v47 = v24;
    v48 = 2112;
    v49 = v25;
    v50 = 2048;
    v51 = a4;
    v52 = 2048;
    v53 = v23;
    v54 = 2112;
    v55 = v15;
    v56 = 2112;
    v57 = v22;
    _os_log_impl(&dword_22AEAE000, v21, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] findHomeUserIndexStartingAtSlot: %ld assumingTotalNumberOfSlots: %ld availableSlots: %@ currentFabricIndex: %@", buf, 0x3Eu);

    v19 = v35;
    a5 = v23;
    v16 = v22;
  }

  objc_autoreleasePoolPop(v19);
  v26 = [(HMMTRSyncClusterDoorLock *)v20 __getUserAtIndex:a4 includeAliroCredentials:1 temporaryCachedAliroCredentials:v17 flow:v18];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __171__HMMTRSyncClusterDoorLock_findHomeUserWithUniqueID_indexStartingAtSlot_assumingTotalNumberOfSlots_availableSlots_currentFabricIndex_temporaryCachedAliroCredentials_flow___block_invoke;
  v37[3] = &unk_2786ED458;
  v38 = v16;
  v39 = v20;
  v40 = v36;
  v41 = v15;
  v44 = a4;
  v45 = a5;
  v42 = v17;
  v43 = v18;
  v27 = v18;
  v28 = v17;
  v29 = v15;
  v30 = v36;
  v31 = v16;
  v32 = [v26 then:v37];

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

id __171__HMMTRSyncClusterDoorLock_findHomeUserWithUniqueID_indexStartingAtSlot_assumingTotalNumberOfSlots_availableSlots_currentFabricIndex_temporaryCachedAliroCredentials_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 creatorFabricIndex];
  v5 = [v4 isEqualToNumber:*(a1 + 32)];

  if (v5)
  {
    [*(a1 + 40) cacheUserResponse:v3];
    v6 = [v3 userUniqueId];
    v7 = [v6 isEqualToNumber:*(a1 + 48)];

    if (v7)
    {
      [objc_opt_new() setUser:v3];
LABEL_14:
      v22 = 1;
      goto LABEL_15;
    }
  }

  if ([*(a1 + 40) isUserSlotAvailableForUserResponse:v3])
  {
    v8 = *(a1 + 56);
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 80)];
    [v8 addObject:v9];
  }

  if (*(a1 + 80) >= *(a1 + 88))
  {
    goto LABEL_13;
  }

  v10 = [v3 nextUserIndex];
  if (!v10 || (v11 = v10, [v3 nextUserIndex], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "integerValue") - *(a1 + 80), v12, v11, v13 >= 2))
  {
    v14 = *(a1 + 56);
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 80) + 1];
    [v14 addObject:v15];
  }

  v16 = [v3 nextUserIndex];

  if (!v16)
  {
LABEL_13:
    [objc_opt_new() setAvailableSlots:*(a1 + 56)];
    goto LABEL_14;
  }

  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = [v3 nextUserIndex];
  v20 = [v17 findHomeUserWithUniqueID:v18 indexStartingAtSlot:objc_msgSend(v19 assumingTotalNumberOfSlots:"integerValue") availableSlots:*(a1 + 88) currentFabricIndex:*(a1 + 56) temporaryCachedAliroCredentials:*(a1 + 32) flow:{*(a1 + 64), *(a1 + 72)}];
  if (v20)
  {
    v21 = v20;

    v22 = 3;
LABEL_15:

    return v22;
  }

  v24 = _HMFPreconditionFailure();
  return [(HMMTRSyncClusterDoorLock *)v24 findHomeUserWithUniqueID:v25 indexStartingAtSlot:v26 assumingTotalNumberOfSlots:v27 availableSlots:v28 currentFabricIndex:v29 flow:v30, v31];
}

- (id)findHomeUserWithUniqueID:(id)a3 indexStartingAtSlot:(int64_t)a4 assumingTotalNumberOfSlots:(int64_t)a5 availableSlots:(id)a6 currentFabricIndex:(id)a7 flow:(id)a8
{
  v14 = MEMORY[0x277CBEB38];
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a3;
  v19 = [v14 dictionary];
  v20 = [(HMMTRSyncClusterDoorLock *)self findHomeUserWithUniqueID:v18 indexStartingAtSlot:a4 assumingTotalNumberOfSlots:a5 availableSlots:v17 currentFabricIndex:v16 temporaryCachedAliroCredentials:v19 flow:v15];

  return v20;
}

- (id)getAllCredentialsIndexStartingAtSlot:(int64_t)a3 forCredentialType:(int64_t)a4 credentials:(id)a5 flow:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v11 UUID];
    *buf = 138544130;
    v29 = v15;
    v30 = 2112;
    v31 = v16;
    v32 = 2048;
    v33 = a3;
    v34 = 2048;
    v35 = a4;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] getAllCredentialsIndexStartingAtSlot: %ld forCredentialType: %ld", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  v17 = [(HMMTRSyncClusterDoorLock *)v13 getCredentialAtIndex:a3 forCredentialType:a4 flow:v11];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __100__HMMTRSyncClusterDoorLock_getAllCredentialsIndexStartingAtSlot_forCredentialType_credentials_flow___block_invoke;
  v23[3] = &unk_2786ED430;
  v24 = v10;
  v25 = v13;
  v26 = v11;
  v27 = a4;
  v18 = v11;
  v19 = v10;
  v20 = [v17 then:v23];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

id __100__HMMTRSyncClusterDoorLock_getAllCredentialsIndexStartingAtSlot_forCredentialType_credentials_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 credentialExists];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    [*(a1 + 32) addObject:v3];
  }

  v6 = [v3 nextCredentialIndex];

  if (!v6)
  {
    *(a1 + 32);
    v11 = 1;
    goto LABEL_7;
  }

  v7 = *(a1 + 40);
  v8 = [v3 nextCredentialIndex];
  v9 = [v7 getAllCredentialsIndexStartingAtSlot:objc_msgSend(v8 forCredentialType:"integerValue") credentials:*(a1 + 56) flow:{*(a1 + 32), *(a1 + 48)}];
  if (v9)
  {
    v10 = v9;

    v11 = 3;
LABEL_7:

    return v11;
  }

  v13 = _HMFPreconditionFailure();
  return [(HMMTRSyncClusterDoorLock *)v13 fetchAvailableUserSlotsWithLimit:v14 flow:v15, v16];
}

- (id)fetchAvailableUserSlotsWithLimit:(int64_t)a3 flow:(id)a4
{
  v6 = a4;
  if (a3)
  {
    v7 = [(HMMTRSyncClusterDoorLock *)self totalNumberOfUsersSupported_flow:v6];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__HMMTRSyncClusterDoorLock_fetchAvailableUserSlotsWithLimit_flow___block_invoke;
    v10[3] = &unk_2786ED340;
    v12 = a3;
    v10[4] = self;
    v11 = v6;
    v8 = [v7 then:v10];
  }

  else
  {
    v8 = [MEMORY[0x277D0F7C0] futureWithValue:MEMORY[0x277CBEBF8]];
  }

  return v8;
}

uint64_t __66__HMMTRSyncClusterDoorLock_fetchAvailableUserSlotsWithLimit_flow___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 integerValue] >= *(a1 + 48))
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "integerValue")}];
    v13 = [*(a1 + 32) getAllUsersStartingAtSlot:1 assumingTotalNumberOfSlots:objc_msgSend(v3 users:"integerValue") flow:{v11, *(a1 + 40)}];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __66__HMMTRSyncClusterDoorLock_fetchAvailableUserSlotsWithLimit_flow___block_invoke_317;
    v21[3] = &unk_2786ED408;
    v25 = *(a1 + 48);
    v14 = v3;
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v22 = v14;
    v23 = v15;
    v24 = v16;
    v17 = [v13 then:v21];
    if (v17)
    {
      v18 = v17;

      v12 = v22;
      goto LABEL_8;
    }

LABEL_9:
    _HMFPreconditionFailure();
  }

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v9 = *(a1 + 48);
    *buf = 138544130;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    v30 = 2048;
    v31 = v9;
    v32 = 2112;
    v33 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Number of users: %ld are more than what the lock supports: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = MEMORY[0x277D0F7C0];
  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:5 userInfo:0];
  v12 = [v10 futureWithError:v11];
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v12;
LABEL_8:

  v19 = *MEMORY[0x277D85DE8];
  return 3;
}

uint64_t __66__HMMTRSyncClusterDoorLock_fetchAvailableUserSlotsWithLimit_flow___block_invoke_317(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __66__HMMTRSyncClusterDoorLock_fetchAvailableUserSlotsWithLimit_flow___block_invoke_2;
  v24[3] = &unk_2786ED3E0;
  v5 = v4;
  v25 = v5;
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 56)];
  if ([*(a1 + 32) integerValue] >= 1)
  {
    v7 = 0;
    do
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:++v7];
      v9 = [v5 containsObject:v8];

      if ((v9 & 1) == 0)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
        [v6 addObject:v10];

        if ([v6 count] == *(a1 + 56))
        {
          break;
        }
      }
    }

    while (v7 < [*(a1 + 32) integerValue]);
  }

  if ([v6 count] >= *(a1 + 56))
  {
    v21 = [MEMORY[0x277D0F7C0] futureWithValue:v6];
    v19 = v21;
    if (v21)
    {
      goto LABEL_12;
    }

LABEL_13:
    _HMFPreconditionFailure();
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *(a1 + 40);
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [*(a1 + 48) UUID];
    v16 = *(a1 + 56);
    v17 = [v6 count];
    *buf = 138544130;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    v30 = 2048;
    v31 = v16;
    v32 = 2048;
    v33 = v17;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Number of users: %ld are more than what the lock supports: %lu", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v18 = MEMORY[0x277D0F7C0];
  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:5 userInfo:0];
  v20 = [v18 futureWithError:v19];
  if (!v20)
  {
    goto LABEL_13;
  }

  v21 = v20;

LABEL_12:
  v22 = *MEMORY[0x277D85DE8];
  return 3;
}

void __66__HMMTRSyncClusterDoorLock_fetchAvailableUserSlotsWithLimit_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 userIndex];
  [v2 na_safeAddObject:v3];
}

- (id)fetchAvailableCredentialSlotsWithLimit:(int64_t)a3 forCredentialType:(int64_t)a4 flow:(id)a5
{
  v8 = a5;
  if (a3)
  {
    v9 = [(HMMTRSyncClusterDoorLock *)self totalNumberOfCredentialSlotsSupportedForCredentialType:a4 flow:v8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __90__HMMTRSyncClusterDoorLock_fetchAvailableCredentialSlotsWithLimit_forCredentialType_flow___block_invoke;
    v12[3] = &unk_2786ED3B8;
    v14 = a3;
    v12[4] = self;
    v13 = v8;
    v15 = a4;
    v10 = [v9 then:v12];
  }

  else
  {
    v10 = [MEMORY[0x277D0F7C0] futureWithValue:MEMORY[0x277CBEBF8]];
  }

  return v10;
}

uint64_t __90__HMMTRSyncClusterDoorLock_fetchAvailableCredentialSlotsWithLimit_forCredentialType_flow___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 integerValue] >= *(a1 + 48))
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v3, "integerValue")}];
    v13 = [*(a1 + 32) findAllOccupiedCredentialSlotsForCredentialType:*(a1 + 56) startingAtSlot:1 assumingTotalNumberOfSlots:objc_msgSend(v3 occupiedSlots:"integerValue") flow:{v11, *(a1 + 40)}];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __90__HMMTRSyncClusterDoorLock_fetchAvailableCredentialSlotsWithLimit_forCredentialType_flow___block_invoke_315;
    v21[3] = &unk_2786ED390;
    v25 = *(a1 + 48);
    v14 = v3;
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v22 = v14;
    v23 = v15;
    v24 = v16;
    v17 = [v13 then:v21];
    if (v17)
    {
      v18 = v17;

      v12 = v22;
      goto LABEL_8;
    }

LABEL_9:
    _HMFPreconditionFailure();
  }

  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v9 = *(a1 + 48);
    *buf = 138544130;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    v30 = 2048;
    v31 = v9;
    v32 = 2112;
    v33 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Number of users with credentials: %ld are more than what the lock supports: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = MEMORY[0x277D0F7C0];
  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:5 userInfo:0];
  v12 = [v10 futureWithError:v11];
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v12;
LABEL_8:

  v19 = *MEMORY[0x277D85DE8];
  return 3;
}

uint64_t __90__HMMTRSyncClusterDoorLock_fetchAvailableCredentialSlotsWithLimit_forCredentialType_flow___block_invoke_315(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(a1 + 56)];
  if ([*(a1 + 32) integerValue] >= 1)
  {
    v5 = 0;
    do
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:++v5];
      v7 = [v3 containsObject:v6];

      if ((v7 & 1) == 0)
      {
        v8 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
        [v4 addObject:v8];

        if ([v4 count] == *(a1 + 56))
        {
          break;
        }
      }
    }

    while (v5 < [*(a1 + 32) integerValue]);
  }

  if ([v4 count] >= *(a1 + 56))
  {
    v19 = [MEMORY[0x277D0F7C0] futureWithValue:v4];
    if (v19)
    {
      v20 = v19;

      goto LABEL_13;
    }

LABEL_14:
    _HMFPreconditionFailure();
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 40);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [*(a1 + 48) UUID];
    v14 = *(a1 + 56);
    v23 = 138544130;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    v27 = 2048;
    v28 = v14;
    v29 = 2048;
    v30 = [v4 count];
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Number of users with credentials: %ld are more than what is available on the lock: %lu", &v23, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  v15 = MEMORY[0x277D0F7C0];
  v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:5 userInfo:0];
  v17 = [v15 futureWithError:v16];
  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = v17;

LABEL_13:
  v21 = *MEMORY[0x277D85DE8];
  return 3;
}

- (id)findAvailableCredentialIndexStartingAtSlot:(int64_t)a3 forCredentialType:(int64_t)a4 assumingTotalNumberOfSlots:(int64_t)a5 flow:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 UUID];
    *buf = 138544386;
    v32 = v14;
    v33 = 2112;
    v34 = v15;
    v35 = 2048;
    v36 = a3;
    v37 = 2048;
    v38 = a4;
    v39 = 2048;
    v40 = a5;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] findAvailableCredentialIndexStartingAtSlot: %ld forCredentialType: %ld assumingTotalNumberOfSlots: %ld", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v11);
  if (a3 <= a5)
  {
    v22 = [(HMMTRSyncClusterDoorLock *)v12 getCredentialAtIndex:a3 forCredentialType:a4 flow:v10];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __121__HMMTRSyncClusterDoorLock_findAvailableCredentialIndexStartingAtSlot_forCredentialType_assumingTotalNumberOfSlots_flow___block_invoke;
    v26[3] = &unk_2786ED368;
    v28 = a3;
    v29 = a5;
    v26[4] = v12;
    v30 = a4;
    v27 = v10;
    v23 = [v22 then:v26];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v12;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v10 UUID];
      *buf = 138543618;
      v32 = v19;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] No more available slots", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v21 = MEMORY[0x277D0F7C0];
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:5 userInfo:0];
    v23 = [v21 futureWithError:v22];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

id __121__HMMTRSyncClusterDoorLock_findAvailableCredentialIndexStartingAtSlot_forCredentialType_assumingTotalNumberOfSlots_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 credentialExists];
  v5 = [v4 BOOLValue];

  if ((v5 & 1) == 0)
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = *(a1 + 48);
    goto LABEL_7;
  }

  if (*(a1 + 48) >= *(a1 + 56))
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:5 userInfo:0];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v12 = 2;
    goto LABEL_14;
  }

  v6 = [v3 nextCredentialIndex];
  if (!v6 || (v7 = v6, [v3 nextCredentialIndex], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "integerValue") - *(a1 + 48), v8, v7, v9 >= 2))
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = *(a1 + 48) + 1;
LABEL_7:
    [v10 numberWithInteger:v11];
    objc_claimAutoreleasedReturnValue();
    v12 = 1;
LABEL_14:

    return v12;
  }

  v16 = [*(a1 + 32) findAvailableCredentialIndexStartingAtSlot:*(a1 + 48) + 2 forCredentialType:*(a1 + 64) assumingTotalNumberOfSlots:*(a1 + 56) flow:*(a1 + 40)];
  if (v16)
  {
    v17 = v16;

    v12 = 3;
    goto LABEL_14;
  }

  v19 = _HMFPreconditionFailure();
  return [(HMMTRSyncClusterDoorLock *)v19 firstAvailableCredentialSlotForCredentialType:v20 flow:v21, v22];
}

- (id)firstAvailableCredentialSlotForCredentialType:(int64_t)a3 flow:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 UUID];
    *buf = 138543874;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    v24 = 2048;
    v25 = a3;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] firstAvailableCredentialSlotForCredentialType: %ld", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(HMMTRSyncClusterDoorLock *)v8 totalNumberOfCredentialSlotsSupportedForCredentialType:a3 flow:v6];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__HMMTRSyncClusterDoorLock_firstAvailableCredentialSlotForCredentialType_flow___block_invoke;
  v17[3] = &unk_2786ED340;
  v18 = v6;
  v19 = a3;
  v17[4] = v8;
  v13 = v6;
  v14 = [v12 then:v17];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

uint64_t __79__HMMTRSyncClusterDoorLock_firstAvailableCredentialSlotForCredentialType_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) findAvailableCredentialIndexStartingAtSlot:1 forCredentialType:*(a1 + 48) assumingTotalNumberOfSlots:objc_msgSend(v3 flow:{"integerValue"), *(a1 + 40)}];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return [(HMMTRSyncClusterDoorLock *)v7 totalNumberOfCredentialSlotsSupportedForCredentialType:v8 flow:v9, v10];
  }
}

- (id)totalNumberOfCredentialSlotsSupportedForCredentialType:(int64_t)a3 flow:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([&unk_283EE79E0 integerValue] == a3)
  {
    v7 = [(HMMTRSyncClusterDoorLock *)self totalNumberOfPINCredentialsSupported_flow:v6];
LABEL_9:
    v8 = v7;
    goto LABEL_10;
  }

  if ([&unk_283EE79F8 integerValue] == a3)
  {
    v7 = [(HMMTRSyncClusterDoorLock *)self totalNumberOfRFIDCredentialsSupported_flow:v6];
    goto LABEL_9;
  }

  if ([&unk_283EE7A10 integerValue] == a3)
  {
    v7 = [(HMMTRSyncClusterDoorLock *)self totalNumberOfAliroIssuerKeyCredentialsSupportedWithFlow:v6];
    goto LABEL_9;
  }

  if ([&unk_283EE7A28 integerValue] == a3)
  {
    v7 = [(HMMTRSyncClusterDoorLock *)self totalNumberOfAliroDeviceKeyCredentialsSupportedWithFlow:v6];
    goto LABEL_9;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v6 UUID];
    v18 = 138543874;
    v19 = v14;
    v20 = 2112;
    v21 = v15;
    v22 = 2048;
    v23 = a3;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Unsupported credential type: %ld", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v16 = MEMORY[0x277D0F7C0];
  v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:5];
  v8 = [v16 futureWithError:v17];

LABEL_10:
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)findOrAddUserWithUniqueID:(id)a3 userType:(id)a4 flow:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 UUID];
    *buf = 138544130;
    v44 = v14;
    v45 = 2112;
    v46 = v15;
    v47 = 2112;
    v48 = v8;
    v49 = 2112;
    v50 = v9;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] findOrAddUserWithUniqueID: %@, userType: %@ if creating new user", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [(HMMTRSyncClusterDoorLock *)v12 _findUserOrAvailableSlotWithUserUniqueID:v8 flow:v10];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __68__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_userType_flow___block_invoke;
  v39[3] = &unk_2786ED2F0;
  v39[4] = v12;
  v17 = v10;
  v40 = v17;
  v18 = v8;
  v41 = v18;
  v19 = v9;
  v42 = v19;
  v20 = [v16 then:v39];

  v21 = [(HMMTRSyncClusterDoorLock *)v12 userUniqueIdentifierToUser];
  v22 = [v21 objectForKey:v18];

  if (v22)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = v12;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v27 = [v17 UUID];
      *buf = 138543874;
      v44 = v26;
      v45 = 2112;
      v46 = v27;
      v47 = 2112;
      v48 = v18;
      _os_log_impl(&dword_22AEAE000, v25, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found user on index verify userUniqueID %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v23);
    v28 = [v22 userIndex];
    v29 = -[HMMTRSyncClusterDoorLock __getUserAtIndex:includeAliroCredentials:temporaryCachedAliroCredentials:flow:](v24, "__getUserAtIndex:includeAliroCredentials:temporaryCachedAliroCredentials:flow:", [v28 integerValue], 1, 0, v17);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __68__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_userType_flow___block_invoke_313;
    v33[3] = &unk_2786ED318;
    v34 = v18;
    v35 = v24;
    v36 = v17;
    v37 = v22;
    v38 = v20;
    v30 = v20;
    v20 = [v29 then:v33];
  }

  v31 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __68__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_userType_flow___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 user];

  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [v3 user];
    [v5 setExistingUser:v6];

    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v12 = [v5 existingUser];
      *buf = 138543874;
      v34 = v10;
      v35 = 2112;
      v36 = v11;
      v37 = 2112;
      v38 = v12;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found user: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = 1;
  }

  else
  {
    v14 = [v3 availableSlots];
    v15 = [v14 hmf_isEmpty];

    if (v15)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [*(a1 + 40) UUID];
        *buf = 138543618;
        v34 = v19;
        v35 = 2112;
        v36 = v20;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Could not add home user because there are no available slots", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:5 userInfo:0];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
        objc_claimAutoreleasedReturnValue();
      }

      v13 = 2;
    }

    else
    {
      v24 = [v3 availableSlots];
      v25 = [v24 firstObject];
      v26 = [v25 integerValue];

      v27 = [*(a1 + 32) addUserAtUserIndex:v26 withUserUniqueID:objc_msgSend(*(a1 + 48) userType:"integerValue") flow:{*(a1 + 56), *(a1 + 40)}];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __68__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_userType_flow___block_invoke_311;
      v32[3] = &__block_descriptor_40_e50___HMFFutureBlockOutcome_q__16__0___HMFAlwaysNil__8l;
      v32[4] = v26;
      v28 = [v27 then:v32];
      if (!v28)
      {
        _HMFPreconditionFailure();
      }

      v29 = v28;

      v13 = 3;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __68__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_userType_flow___block_invoke_313(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 userUniqueID];
  v5 = *(a1 + 32);
  v6 = HMFEqualObjects();

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 48) UUID];
      v12 = [*(a1 + 56) userIndex];
      v24 = 138543874;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2048;
      v29 = [v12 integerValue];
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Cached user matches identifiers with the lock's current user on index %ld.", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = objc_opt_new();
    [v13 setExistingUser:v3];
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 40);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [*(a1 + 48) UUID];
      v19 = [v13 existingUser];
      v24 = 138543874;
      v25 = v17;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found user: %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v20 = 1;
  }

  else
  {
    v21 = *(a1 + 64);
    if (!v21)
    {
      _HMFPreconditionFailure();
    }

    v20 = 3;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)isUserSlotAvailableForUserResponse:(id)a3
{
  v3 = a3;
  v4 = [v3 userStatus];
  if (v4)
  {
    v5 = [v3 userStatus];
    v6 = [v5 isEqualToNumber:&unk_283EE7B00];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)issuerCredentialForUser:(id)a3 flow:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    v18 = 138543874;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] issuerCredentialForUser: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [v6 credentials];
  v14 = [v13 hmf_objectPassingTest:&__block_literal_global_306];

  v15 = [v14 credentialIndex];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __57__HMMTRSyncClusterDoorLock_issuerCredentialForUser_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 credentialType];
  v3 = [v2 isEqualToNumber:&unk_283EE7A10];

  return v3;
}

- (id)rfidCredentialForUser:(id)a3 flow:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    v18 = 138543874;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] pinCredentialForUser: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [v6 credentials];
  v14 = [v13 hmf_objectPassingTest:&__block_literal_global_304];

  v15 = [v14 credentialIndex];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __55__HMMTRSyncClusterDoorLock_rfidCredentialForUser_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 credentialType];
  v3 = [v2 isEqualToNumber:&unk_283EE79F8];

  return v3;
}

- (id)pinCredentialForUser:(id)a3 flow:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    v18 = 138543874;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] pinCredentialForUser: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [v6 credentials];
  v14 = [v13 hmf_objectPassingTest:&__block_literal_global_302];

  v15 = [v14 credentialIndex];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __54__HMMTRSyncClusterDoorLock_pinCredentialForUser_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 credentialType];
  v3 = [v2 isEqualToNumber:&unk_283EE79E0];

  return v3;
}

- (id)provisionHomePin:(id)a3 flow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMMTRSyncClusterDoorLock *)self findOrAddUserWithUniqueID:&unk_283EE7A40 userType:&unk_283EE7A88 flow:v7];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__HMMTRSyncClusterDoorLock_provisionHomePin_flow___block_invoke;
  v13[3] = &unk_2786ECF18;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 then:v13];

  return v11;
}

uint64_t __50__HMMTRSyncClusterDoorLock_provisionHomePin_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 newUserSlot])
  {
    v6 = [v3 existingUser];
    v7 = [v6 userIndex];
    v8 = [v7 integerValue];

    v9 = *(a1 + 32);
    v10 = [v3 existingUser];
    v5 = [v9 pinCredentialForUser:v10 flow:*(a1 + 48)];

    if (v5)
    {
      [*(a1 + 32) updatePinCredentialAtIndex:objc_msgSend(v5 withValue:"integerValue") forUserAtUserIndex:*(a1 + 40) flow:{v8, *(a1 + 48)}];
    }

    else
    {
      [*(a1 + 32) addPinCodeWithValue:*(a1 + 40) forUserIndex:v8 flow:*(a1 + 48)];
    }
    v11 = ;
    if (!v11)
    {
      goto LABEL_10;
    }

    v4 = v11;

LABEL_9:
    return 3;
  }

  v4 = [*(a1 + 32) addPinCodeWithValue:*(a1 + 40) forUserIndex:objc_msgSend(v3 flow:{"newUserSlot"), *(a1 + 48)}];
  v5 = v4;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  v13 = _HMFPreconditionFailure();
  return [(HMMTRSyncClusterDoorLock *)v13 deriveHomePinFromUUID:v14 flow:v15, v16];
}

- (id)deriveHomePinFromUUID:(id)a3 flow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__HMMTRSyncClusterDoorLock_deriveHomePinFromUUID_flow___block_invoke;
  v12[3] = &unk_2786EC948;
  v12[4] = self;
  v13 = v7;
  v14 = v6;
  v8 = v6;
  v9 = v7;
  v10 = [(HMMTRSyncClusterDoorLock *)self ensureAccessoryConnected:v12 flow:v9];

  return v10;
}

id __55__HMMTRSyncClusterDoorLock_deriveHomePinFromUUID_flow___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) readAttributeMaxPINCodeLengthWithParams:0];
  v3 = [v2 objectForKey:*MEMORY[0x277CD51A0]];
  if (!v3)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) UUID];
      v24 = 138543618;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to read max pin code length from accessory", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = MEMORY[0x277D0F7C0];
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:4 userInfo:0];
    v7 = [v13 futureWithError:v6];
    goto LABEL_7;
  }

  v4 = *(a1 + 32);
  v5 = [objc_opt_class() deriveHomePinFromUUID:*(a1 + 48) withNumberOfDigits:objc_msgSend(v3 flow:{"integerValue"), *(a1 + 40)}];
  if (v5)
  {
    v6 = v5;
    v7 = [MEMORY[0x277D0F7C0] futureWithValue:v5];
LABEL_7:
    v14 = v7;
    goto LABEL_11;
  }

  v15 = objc_autoreleasePoolPush();
  v16 = *(a1 + 32);
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    v19 = [*(a1 + 40) UUID];
    v24 = 138543618;
    v25 = v18;
    v26 = 2112;
    v27 = v19;
    _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to derive home PIN", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  v20 = MEMORY[0x277D0F7C0];
  v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:4 userInfo:0];
  v14 = [v20 futureWithError:v21];

  v6 = 0;
LABEL_11:

  v22 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)readAliroSupportedVersionWithFlow:(id)a3
{
  v4 = a3;
  v12 = 0;
  v5 = [MEMORY[0x277D0F7C0] futureWithPromise:&v12];
  v6 = [(HMMTRSyncClusterDoorLock *)self apiRouter];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__HMMTRSyncClusterDoorLock_readAliroSupportedVersionWithFlow___block_invoke;
  v9[3] = &unk_2786EF350;
  v9[4] = self;
  v10 = v4;
  v11 = v12;
  v7 = v4;
  [v6 readAttributeAliroExpeditedTransactionSupportedProtocolVersionsWithFlow:v7 completion:v9];

  return v5;
}

void __62__HMMTRSyncClusterDoorLock_readAliroSupportedVersionWithFlow___block_invoke(id *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [a1[4] apiRouter];
    v8 = a1[5];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __62__HMMTRSyncClusterDoorLock_readAliroSupportedVersionWithFlow___block_invoke_276;
    v18[3] = &unk_2786ED220;
    v9 = v5;
    v10 = a1[4];
    v11 = a1[5];
    v19 = v9;
    v20 = v10;
    v21 = v11;
    v22 = a1[6];
    [v7 readAttributeAliroSupportedBLEUWBProtocolVersionsWithFlow:v8 completion:v18];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1[4];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [a1[5] UUID];
      *buf = 138543874;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to read aliro expedited transaction supported protocol versions with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    [a1[6] rejectWithError:v6];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __62__HMMTRSyncClusterDoorLock_readAliroSupportedVersionWithFlow___block_invoke_276(id *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1[4])
  {
    v7 = [a1[5] apiRouter];
    v8 = a1[6];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __62__HMMTRSyncClusterDoorLock_readAliroSupportedVersionWithFlow___block_invoke_277;
    v20[3] = &unk_2786F0668;
    *&v9 = a1[4];
    *(&v9 + 1) = a1[5];
    v19 = v9;
    v10 = a1[6];
    v11 = a1[7];
    *&v12 = v10;
    *(&v12 + 1) = v11;
    v21 = v19;
    v22 = v12;
    v23 = v5;
    [v7 readAttributeAliroBLEAdvertisingVersionWithFlow:v8 completion:v20];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1[5];
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [a1[6] UUID];
      *buf = 138543874;
      v25 = v16;
      v26 = 2112;
      v27 = v17;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to read aliro BLE protocol versions with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    [a1[7] rejectWithError:v6];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __62__HMMTRSyncClusterDoorLock_readAliroSupportedVersionWithFlow___block_invoke_277(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    v7 = objc_alloc_init(HMMTRAliroVersion);
    v8 = *(a1 + 40);
    v9 = [objc_opt_class() sortedArrayOfData:*(a1 + 32)];
    [(HMMTRAliroVersion *)v7 setExpeditedTransactionSupportedVersions:v9];

    v10 = *(a1 + 40);
    v11 = [objc_opt_class() sortedArrayOfData:*(a1 + 64)];
    [(HMMTRAliroVersion *)v7 setBleUWBSupportedVersions:v11];

    [(HMMTRAliroVersion *)v7 setBleAdvertisingVersion:v5];
    [*(a1 + 56) fulfillWithValue:v7];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 40);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [*(a1 + 48) UUID];
      v18 = 138543874;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to read BLE advertising version with error: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    [*(a1 + 56) rejectWithError:v6];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)readSchedulesForUserIndex:(int64_t)a3 flow:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HMMTRSyncClusterDoorLock_readSchedulesForUserIndex_flow___block_invoke;
  v10[3] = &unk_2786ECA38;
  v10[4] = self;
  v11 = v6;
  v12 = a3;
  v7 = v6;
  v8 = [(HMMTRSyncClusterDoorLock *)self serialize:v10];

  return v8;
}

id __59__HMMTRSyncClusterDoorLock_readSchedulesForUserIndex_flow___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    *buf = 138543874;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    v21 = 2048;
    v22 = v7;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] readSchedulesForUserIndex: %ld", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = MEMORY[0x277D0F7C0];
  v9 = [*(a1 + 32) readScheduleForScheduleType:0 forUserIndex:*(a1 + 48) flow:*(a1 + 40)];
  v10 = [*(a1 + 32) readScheduleForScheduleType:1 forUserIndex:*(a1 + 48) flow:{*(a1 + 40), v9}];
  v16[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v12 = [v8 all:v11];
  v13 = [v12 then:&__block_literal_global_275];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __59__HMMTRSyncClusterDoorLock_readSchedulesForUserIndex_flow___block_invoke_273(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v2 objectAtIndexedSubscript:1];

  v5 = [v3 arrayByAddingObjectsFromArray:v4];

  return 1;
}

- (id)updateSchedulesForUserIndex:(int64_t)a3 withWeekDaySchedules:(id)a4 andYearDaySchedules:(id)a5 flow:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __102__HMMTRSyncClusterDoorLock_updateSchedulesForUserIndex_withWeekDaySchedules_andYearDaySchedules_flow___block_invoke;
  v18[3] = &unk_2786ECF90;
  v18[4] = self;
  v19 = v12;
  v21 = v11;
  v22 = a3;
  v20 = v10;
  v13 = v11;
  v14 = v10;
  v15 = v12;
  v16 = [(HMMTRSyncClusterDoorLock *)self serialize:v18];

  return v16;
}

id __102__HMMTRSyncClusterDoorLock_updateSchedulesForUserIndex_withWeekDaySchedules_andYearDaySchedules_flow___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v8 = *(a1 + 56);
    v7 = *(a1 + 64);
    v9 = *(a1 + 48);
    *buf = 138544386;
    v27 = v5;
    v28 = 2112;
    v29 = v6;
    v30 = 2048;
    v31 = v7;
    v32 = 2112;
    v33 = v9;
    v34 = 2112;
    v35 = v8;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] updateSchedulesForUserIndex: %ld, withWeekDaySchedules: %@ andYearDaySchedules: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v2);
  v10 = &unk_283EE7A70;
  if ([*(a1 + 48) hmf_isEmpty] && objc_msgSend(*(a1 + 56), "hmf_isEmpty"))
  {
    v10 = &unk_283EE7A40;
  }

  v11 = v10;
  v12 = [*(a1 + 32) findOperationOrderForModifyingWeekDaySchedules:*(a1 + 48) andYearDaySchedules:*(a1 + 56) forUserIndex:*(a1 + 64) flow:*(a1 + 40)];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __102__HMMTRSyncClusterDoorLock_updateSchedulesForUserIndex_withWeekDaySchedules_andYearDaySchedules_flow___block_invoke_272;
  v22[3] = &unk_2786ED160;
  v25 = *(a1 + 64);
  v13 = *(a1 + 40);
  v22[4] = *(a1 + 32);
  v23 = v11;
  v24 = v13;
  v14 = v11;
  v15 = [v12 then:v22];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __102__HMMTRSyncClusterDoorLock_updateSchedulesForUserIndex_withWeekDaySchedules_andYearDaySchedules_flow___block_invoke_2;
  v20[3] = &unk_2786EE848;
  v16 = *(a1 + 40);
  v20[4] = *(a1 + 32);
  v21 = v16;
  v17 = [v15 recover:v20];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

uint64_t __102__HMMTRSyncClusterDoorLock_updateSchedulesForUserIndex_withWeekDaySchedules_andYearDaySchedules_flow___block_invoke_272(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) updateUserTypeForUserIndex:*(a1 + 56) userType:*(a1 + 40) flow:*(a1 + 48)];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return __102__HMMTRSyncClusterDoorLock_updateSchedulesForUserIndex_withWeekDaySchedules_andYearDaySchedules_flow___block_invoke_2(v7);
  }
}

uint64_t __102__HMMTRSyncClusterDoorLock_updateSchedulesForUserIndex_withWeekDaySchedules_andYearDaySchedules_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update either week or year day schedules with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:9 userInfo:0];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)findOrAddUserWithUniqueID:(id)a3 withWeekDaySchedules:(id)a4 andYearDaySchedules:(id)a5 requireFullScheduleAudit:(BOOL)a6 flow:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __125__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_withWeekDaySchedules_andYearDaySchedules_requireFullScheduleAudit_flow___block_invoke;
  v22[3] = &unk_2786ED1D8;
  v22[4] = self;
  v23 = v15;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = a6;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  v19 = v15;
  v20 = [(HMMTRSyncClusterDoorLock *)self serialize:v22];

  return v20;
}

id __125__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_withWeekDaySchedules_andYearDaySchedules_requireFullScheduleAudit_flow___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    *buf = 138544386;
    v28 = v5;
    v29 = 2112;
    v30 = v6;
    v31 = 2112;
    v32 = v7;
    v33 = 2112;
    v34 = v8;
    v35 = 2112;
    v36 = v9;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] findOrAddUserWithUniqueID: %@, withWeekDaySchedules: %@ andYearDaySchedules: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v2);
  v10 = &unk_283EE7A70;
  if ([*(a1 + 56) hmf_isEmpty] && objc_msgSend(*(a1 + 64), "hmf_isEmpty"))
  {
    v10 = &unk_283EE7A40;
  }

  v11 = v10;
  v12 = [*(a1 + 32) findOrAddUserWithUniqueID:*(a1 + 48) userType:v11 flow:*(a1 + 40)];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __125__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_withWeekDaySchedules_andYearDaySchedules_requireFullScheduleAudit_flow___block_invoke_270;
  v22[3] = &unk_2786ED1B0;
  v26 = *(a1 + 72);
  v23 = v11;
  v21 = *(a1 + 32);
  v13 = *(&v21 + 1);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  *&v16 = v14;
  *(&v16 + 1) = v15;
  v24 = v21;
  v25 = v16;
  v17 = v11;
  v18 = [v12 then:v22];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __125__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_withWeekDaySchedules_andYearDaySchedules_requireFullScheduleAudit_flow___block_invoke_270(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ((*(a1 + 72) & 1) == 0)
  {
    if ([*(a1 + 32) isEqualToNumber:&unk_283EE7A70])
    {
      v4 = [v3 existingUser];
      v5 = [v4 userType];
      v6 = [v5 isEqualToNumber:&unk_283EE7A70];

      if (v6)
      {
        v7 = objc_autoreleasePoolPush();
        v8 = *(a1 + 40);
        v9 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v10 = HMFGetLogIdentifier();
          v11 = [*(a1 + 48) UUID];
          *buf = 138543618;
          v42 = v10;
          v43 = 2112;
          v44 = v11;
          _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Existing guest with schedule already exists on the lock, just return the user response", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v7);
        goto LABEL_17;
      }
    }
  }

  v12 = [v3 newUserSlot];
  if (!v12)
  {
    v13 = [v3 existingUser];
    v14 = [v13 userIndex];
    v12 = [v14 integerValue];
  }

  if ([*(a1 + 56) hmf_isEmpty])
  {
    if ([*(a1 + 64) hmf_isEmpty])
    {
      v15 = [v3 existingUser];

      if (!v15)
      {
LABEL_17:
        v27 = [MEMORY[0x277D0F7C0] futureWithValue:v3];
        if (v27)
        {
          v28 = v27;

          goto LABEL_19;
        }

LABEL_20:
        _HMFPreconditionFailure();
      }
    }
  }

  v16 = [*(a1 + 40) findOperationOrderForModifyingWeekDaySchedules:*(a1 + 56) andYearDaySchedules:*(a1 + 64) forUserIndex:v12 flow:*(a1 + 48)];
  v17 = [v3 existingUser];
  if (v17)
  {
    v18 = v17;
    v19 = [v3 existingUser];
    v20 = [v19 userType];
    v21 = [v20 isEqualToNumber:*(a1 + 32)];

    if ((v21 & 1) == 0)
    {
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __125__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_withWeekDaySchedules_andYearDaySchedules_requireFullScheduleAudit_flow___block_invoke_271;
      v37[3] = &unk_2786ED160;
      v40 = v12;
      v31 = *(a1 + 32);
      v22 = v31.i64[0];
      v38 = vextq_s8(v31, v31, 8uLL);
      v39 = *(a1 + 48);
      v23 = [v16 then:v37];

      v16 = v23;
    }
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __125__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_withWeekDaySchedules_andYearDaySchedules_requireFullScheduleAudit_flow___block_invoke_2;
  v35[3] = &unk_2786ED188;
  v36 = v3;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __125__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_withWeekDaySchedules_andYearDaySchedules_requireFullScheduleAudit_flow___block_invoke_3;
  v32[3] = &unk_2786F0300;
  v24 = *(a1 + 48);
  v32[4] = *(a1 + 40);
  v33 = v24;
  v34 = v36;
  v25 = [v16 then:v35 orRecover:v32];
  if (!v25)
  {
    goto LABEL_20;
  }

  v26 = v25;

LABEL_19:
  v29 = *MEMORY[0x277D85DE8];
  return 3;
}

uint64_t __125__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_withWeekDaySchedules_andYearDaySchedules_requireFullScheduleAudit_flow___block_invoke_271(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) updateUserTypeForUserIndex:*(a1 + 56) userType:*(a1 + 40) flow:*(a1 + 48)];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return __125__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_withWeekDaySchedules_andYearDaySchedules_requireFullScheduleAudit_flow___block_invoke_2(v7);
  }
}

uint64_t __125__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_withWeekDaySchedules_andYearDaySchedules_requireFullScheduleAudit_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D0F7C0] futureWithValue:*(a1 + 32)];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return __125__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_withWeekDaySchedules_andYearDaySchedules_requireFullScheduleAudit_flow___block_invoke_3(v7);
  }
}

uint64_t __125__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_withWeekDaySchedules_andYearDaySchedules_requireFullScheduleAudit_flow___block_invoke_3(id *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] UUID];
    v20 = 138543874;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update either week or year day schedules with error: %@", &v20, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  if ([a1[6] newUserSlot])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1[4];
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] UUID];
      v20 = 138543618;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to create a new RG matter user with correct schedules, so removing the user.", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = [a1[4] clearUserAtIndex:objc_msgSend(a1[6] flow:{"newUserSlot"), a1[5]}];
  }

  v15 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:9 userInfo:0];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v18 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)clearCredentialAtIndex:(int64_t)a3 withCredentialType:(id)a4 flow:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 UUID];
    *buf = 138544130;
    v28 = v13;
    v29 = 2112;
    v30 = v14;
    v31 = 2048;
    v32 = a3;
    v33 = 2112;
    v34 = v8;
    _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] clearCredentialAtIndex: %ld, withCredentialType: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  v22 = MEMORY[0x277D85DD0];
  v23 = v8;
  v24 = v11;
  v25 = v9;
  v26 = a3;
  v15 = MEMORY[0x277D0F7B8];
  v16 = v9;
  v17 = v8;
  v18 = [v15 untrackedPlaceholderFlow];
  v19 = [(HMMTRSyncClusterDoorLock *)v11 ensureAccessoryConnected:&v22 flow:v18];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id __75__HMMTRSyncClusterDoorLock_clearCredentialAtIndex_withCredentialType_flow___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD5390]);
  [v2 setCredentialType:*(a1 + 32)];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  [v2 setCredentialIndex:v3];

  v4 = objc_alloc_init(MEMORY[0x277CD5370]);
  [v4 setCredential:v2];
  v13 = 0;
  v5 = [MEMORY[0x277D0F7C0] futureWithPromise:&v13];
  v6 = [v13 errorOnlyResolverBlock];
  v7 = [*(a1 + 40) apiRouter];
  [v7 clearCredentialWithParams:v4 flow:*(a1 + 48) completion:v6];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __75__HMMTRSyncClusterDoorLock_clearCredentialAtIndex_withCredentialType_flow___block_invoke_2;
  v11[3] = &unk_2786EE848;
  v8 = *(a1 + 48);
  v11[4] = *(a1 + 40);
  v12 = v8;
  v9 = [v5 recover:v11];

  return v9;
}

uint64_t __75__HMMTRSyncClusterDoorLock_clearCredentialAtIndex_withCredentialType_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to update pin credential with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)clearUserAtIndex:(int64_t)a3 flow:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v6 UUID];
    *buf = 138543874;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 2048;
    v26 = a3;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Clearing user at index: %ld", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __50__HMMTRSyncClusterDoorLock_clearUserAtIndex_flow___block_invoke;
  v18[3] = &unk_2786ECA38;
  v19 = v6;
  v20 = a3;
  v18[4] = v8;
  v12 = MEMORY[0x277D0F7B8];
  v13 = v6;
  v14 = [v12 untrackedPlaceholderFlow];
  v15 = [(HMMTRSyncClusterDoorLock *)v8 ensureAccessoryConnected:v18 flow:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

id __50__HMMTRSyncClusterDoorLock_clearUserAtIndex_flow___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  [v2 setUserIndex:v3];

  v14 = 0;
  v4 = [MEMORY[0x277D0F7C0] futureWithPromise:&v14];
  v5 = [v14 errorOnlyResolverBlock];
  [*(a1 + 32) clearUserWithParams:v2 expectedValues:0 expectedValueInterval:0 completionHandler:v5];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__HMMTRSyncClusterDoorLock_clearUserAtIndex_flow___block_invoke_2;
  v11[3] = &unk_2786ECA60;
  v6 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v7 = v6;
  v8 = *(a1 + 48);
  v12 = v7;
  v13 = v8;
  v9 = [v4 recover:v11];

  return v9;
}

uint64_t __50__HMMTRSyncClusterDoorLock_clearUserAtIndex_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v9 = *(a1 + 48);
    v15 = 138544130;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2048;
    v20 = v9;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to clear user at index: %ld, with error: %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = v3;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v13 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)getAllUsers
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__HMMTRSyncClusterDoorLock_getAllUsers__block_invoke;
  v4[3] = &unk_2786ECB28;
  v4[4] = self;
  v2 = [(HMMTRSyncClusterDoorLock *)self serialize:v4];

  return v2;
}

id __39__HMMTRSyncClusterDoorLock_getAllUsers__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    *buf = 138543618;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Matter Users}] Getting all users", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [*(a1 + 32) totalNumberOfUsersSupported_flow:v2];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__HMMTRSyncClusterDoorLock_getAllUsers__block_invoke_266;
  v13[3] = &unk_2786ECB00;
  v13[4] = *(a1 + 32);
  v14 = v2;
  v9 = v2;
  v10 = [v8 then:v13];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __39__HMMTRSyncClusterDoorLock_getAllUsers__block_invoke_266(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 integerValue];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [v4 getAllUsersStartingAtSlot:1 assumingTotalNumberOfSlots:v5 users:v6 flow:*(a1 + 40)];
  if (v7)
  {
    v8 = v7;

    return 3;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return [(HMMTRSyncClusterDoorLock *)v10 addOrUpdateIssuerKeyData:v11 forUserUniqueID:v12 isUnifiedAccess:v13 flow:v14, v15];
  }
}

- (id)addOrUpdateIssuerKeyData:(id)a3 forUserUniqueID:(id)a4 isUnifiedAccess:(BOOL)a5 flow:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__HMMTRSyncClusterDoorLock_addOrUpdateIssuerKeyData_forUserUniqueID_isUnifiedAccess_flow___block_invoke;
  v18[3] = &unk_2786ED0E8;
  v18[4] = self;
  v19 = v12;
  v20 = v10;
  v21 = v11;
  v22 = a5;
  v13 = v11;
  v14 = v10;
  v15 = v12;
  v16 = [(HMMTRSyncClusterDoorLock *)self serialize:v18];

  return v16;
}

id __90__HMMTRSyncClusterDoorLock_addOrUpdateIssuerKeyData_forUserUniqueID_isUnifiedAccess_flow___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = HMFBooleanToString();
    *buf = 138544386;
    v39 = v5;
    v40 = 2112;
    v41 = v6;
    v42 = 2112;
    v43 = v7;
    v44 = 2048;
    v45 = v8;
    v46 = 2112;
    v47 = v10;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addOrUpdateIssuerKeyData: %@ forUserUniqueID: %ld isUnifiedAccess: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v2);
  v11 = [*(a1 + 32) userUniqueIdentifierToUser];
  v12 = [v11 objectForKey:*(a1 + 56)];

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v16)
    {
      v17 = HMFGetLogIdentifier();
      v18 = [*(a1 + 40) UUID];
      *buf = 138543874;
      v39 = v17;
      v40 = 2112;
      v41 = v18;
      v42 = 2112;
      v43 = v12;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found cached user: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v19 = *(a1 + 32);
    v20 = [v12 userIndex];
    v21 = [v19 _getUserAtIndex:objc_msgSend(v20 flow:{"integerValue"), *(a1 + 40)}];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __90__HMMTRSyncClusterDoorLock_addOrUpdateIssuerKeyData_forUserUniqueID_isUnifiedAccess_flow___block_invoke_262;
    v31[3] = &unk_2786ED138;
    v22 = *(a1 + 56);
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v32 = v22;
    v33 = v23;
    v34 = v24;
    v35 = v12;
    v36 = *(a1 + 48);
    v37 = *(a1 + 64);
    v25 = [v21 then:v31];
  }

  else
  {
    if (v16)
    {
      v26 = HMFGetLogIdentifier();
      v27 = [*(a1 + 40) UUID];
      v28 = *(a1 + 56);
      *buf = 138543874;
      v39 = v26;
      v40 = 2112;
      v41 = v27;
      v42 = 2112;
      v43 = v28;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Could not find user with uniqueID: %@ in cache, need to perform full user search", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v25 = [*(a1 + 32) _addOrUpdateIssuerKeyData:*(a1 + 48) forUserUniqueID:*(a1 + 56) isUnifiedAccess:*(a1 + 64) flow:*(a1 + 40)];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v25;
}

uint64_t __90__HMMTRSyncClusterDoorLock_addOrUpdateIssuerKeyData_forUserUniqueID_isUnifiedAccess_flow___block_invoke_262(uint64_t a1, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 userUniqueID];
  v5 = *(a1 + 32);
  v6 = HMFEqualObjects();

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 48) UUID];
      v13 = [*(a1 + 56) userIndex];
      *buf = 138543874;
      v59 = v11;
      v60 = 2112;
      v61 = v12;
      v62 = 2048;
      v63 = [v13 integerValue];
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Cached user matches identifiers with the lock's current user on index %ld.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    if (*(a1 + 72))
    {
      v14 = &unk_283EE79F8;
    }

    else
    {
      v14 = &unk_283EE7A10;
    }

    v15 = v14;
    v16 = [*(a1 + 56) credentials];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __90__HMMTRSyncClusterDoorLock_addOrUpdateIssuerKeyData_forUserUniqueID_isUnifiedAccess_flow___block_invoke_263;
    v56[3] = &unk_2786ED008;
    v17 = v15;
    v57 = v17;
    v18 = [v16 hmf_objectPassingTest:v56];

    v19 = [v18 credentialIndex];
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 40);
    v22 = HMFGetOSLogHandle();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
    if (v19)
    {
      if (v23)
      {
        v24 = HMFGetLogIdentifier();
        v25 = [*(a1 + 48) UUID];
        v26 = [v19 integerValue];
        *buf = 138543874;
        v59 = v24;
        v60 = 2112;
        v61 = v25;
        v62 = 2048;
        v63 = v26;
        _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Cached user has credential index mapped as %ld.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      v27 = [*(a1 + 40) getCredentialAtIndex:objc_msgSend(v19 forCredentialType:"integerValue") flow:{objc_msgSend(v17, "integerValue"), *(a1 + 48)}];
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __90__HMMTRSyncClusterDoorLock_addOrUpdateIssuerKeyData_forUserUniqueID_isUnifiedAccess_flow___block_invoke_264;
      v47[3] = &unk_2786ED110;
      v28 = v3;
      v29 = *(a1 + 40);
      v30 = *(a1 + 48);
      v48 = v28;
      v49 = v29;
      v50 = v30;
      v51 = v19;
      v55 = *(a1 + 72);
      v52 = *(a1 + 64);
      v53 = v17;
      v54 = *(a1 + 56);
      v31 = [v27 then:v47];
      if (v31)
      {
        v32 = v31;

        v33 = v48;
LABEL_20:

        v37 = v57;
        goto LABEL_21;
      }
    }

    else
    {
      if (v23)
      {
        v38 = HMFGetLogIdentifier();
        v39 = [*(a1 + 48) UUID];
        v46 = [*(a1 + 56) userIndex];
        v40 = [v46 integerValue];
        *buf = 138543874;
        v59 = v38;
        v60 = 2112;
        v61 = v39;
        v62 = 2048;
        v63 = v40;
        _os_log_impl(&dword_22AEAE000, v22, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Could not find corresponding issuer key index in our cache for userIndex: %ld.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v20);
      v41 = *(a1 + 40);
      v42 = *(a1 + 64);
      v27 = [*(a1 + 56) userIndex];
      v43 = [v41 _addOrUpdateIssuerKeyData:v42 forUserIndex:v27 isUnifiedAccess:*(a1 + 72) flow:*(a1 + 48)];
      if (v43)
      {
        v33 = v43;

        goto LABEL_20;
      }
    }

LABEL_22:
    _HMFPreconditionFailure();
  }

  if (v10)
  {
    v34 = HMFGetLogIdentifier();
    v35 = [*(a1 + 48) UUID];
    v36 = *(a1 + 56);
    *buf = 138543874;
    v59 = v34;
    v60 = 2112;
    v61 = v35;
    v62 = 2112;
    v63 = v36;
    _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Cached user is stale on the lock: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v37 = [*(a1 + 40) _addOrUpdateIssuerKeyData:*(a1 + 64) forUserUniqueID:*(a1 + 32) isUnifiedAccess:*(a1 + 72) flow:*(a1 + 48)];
  v17 = v37;
  if (!v37)
  {
    goto LABEL_22;
  }

LABEL_21:

  v44 = *MEMORY[0x277D85DE8];
  return 3;
}

uint64_t __90__HMMTRSyncClusterDoorLock_addOrUpdateIssuerKeyData_forUserUniqueID_isUnifiedAccess_flow___block_invoke_263(uint64_t a1, void *a2)
{
  v3 = [a2 credentialType];
  v4 = [v3 isEqualToNumber:*(a1 + 32)];

  return v4;
}

uint64_t __90__HMMTRSyncClusterDoorLock_addOrUpdateIssuerKeyData_forUserUniqueID_isUnifiedAccess_flow___block_invoke_264(uint64_t a1, void *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 credentialExists];
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = v4;
  v6 = [v3 userIndex];
  v7 = [*(a1 + 32) userIndex];
  v8 = HMFEqualObjects();

  if (!v8)
  {
LABEL_11:
    v26 = objc_autoreleasePoolPush();
    v27 = *(a1 + 40);
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v30 = [*(a1 + 48) UUID];
      v31 = [*(a1 + 56) integerValue];
      v32 = [*(a1 + 80) userIndex];
      *buf = 138544130;
      v55 = v29;
      v56 = 2112;
      v57 = v30;
      v58 = 2048;
      v59 = v31;
      v60 = 2048;
      v61 = [v32 integerValue];
      _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Corresponding issuer key index: %ld in our cache was stale for userIndex: %ld.", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v26);
    v33 = *(a1 + 40);
    v34 = *(a1 + 64);
    v25 = [*(a1 + 80) userIndex];
    v35 = [v33 _addOrUpdateIssuerKeyData:v34 forUserIndex:v25 isUnifiedAccess:*(a1 + 88) flow:*(a1 + 48)];
    if (v35)
    {
      v36 = v35;
      v24 = v35;
LABEL_19:

      goto LABEL_20;
    }

LABEL_21:
    _HMFPreconditionFailure();
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 40);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [*(a1 + 48) UUID];
    v14 = [*(a1 + 56) integerValue];
    *buf = 138543874;
    v55 = v12;
    v56 = 2112;
    v57 = v13;
    v58 = 2048;
    v59 = v14;
    _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Cached user indeed has credential at %ld on the lock", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if ((*(a1 + 88) & 1) != 0 || ([v3 credentialData], v15 = objc_claimAutoreleasedReturnValue(), v16 = *(a1 + 64), v17 = HMFEqualObjects(), v15, !v17))
  {
    v37 = objc_autoreleasePoolPush();
    v38 = *(a1 + 40);
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      v41 = [*(a1 + 48) UUID];
      v42 = [v3 credentialData];
      v43 = *(a1 + 64);
      *buf = 138544130;
      v55 = v40;
      v56 = 2112;
      v57 = v41;
      v58 = 2112;
      v59 = v42;
      v60 = 2112;
      v61 = v43;
      _os_log_impl(&dword_22AEAE000, v39, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Existing issuer key: %@, does not match requested issuer key: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v37);
    v44 = *(a1 + 40);
    v46 = *(a1 + 64);
    v45 = *(a1 + 72);
    v47 = [*(a1 + 56) integerValue];
    v25 = [*(a1 + 80) userIndex];
    v24 = [v44 updateCredentialData:v46 forCredentialType:v45 atIndex:v47 forUserAtUserIndex:objc_msgSend(v25 flow:{"integerValue"), *(a1 + 48)}];
    v36 = [v24 ignoreResult];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __90__HMMTRSyncClusterDoorLock_addOrUpdateIssuerKeyData_forUserUniqueID_isUnifiedAccess_flow___block_invoke_265;
    v52[3] = &__block_descriptor_33_e50___HMFFutureBlockOutcome_q__16__0___HMFAlwaysNil__8l;
    v53 = *(a1 + 88);
    v48 = [v36 then:v52];
    if (v48)
    {
      v49 = v48;

      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = *(a1 + 40);
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [*(a1 + 48) UUID];
    v23 = *(a1 + 64);
    *buf = 138543874;
    v55 = v21;
    v56 = 2112;
    v57 = v22;
    v58 = 2112;
    v59 = v23;
    _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Issuer key matches: %@, no updates required", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  v24 = [MEMORY[0x277D0F7C0] futureWithValue:MEMORY[0x277CBEC28]];
  v25 = v24;
  if (!v24)
  {
    goto LABEL_21;
  }

LABEL_20:

  v50 = *MEMORY[0x277D85DE8];
  return 3;
}

uint64_t __90__HMMTRSyncClusterDoorLock_addOrUpdateIssuerKeyData_forUserUniqueID_isUnifiedAccess_flow___block_invoke_265(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D0F7C0];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32) ^ 1u];
  v6 = [v4 futureWithValue:v5];
  if (v6)
  {
    v7 = v6;

    return 3;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return [(HMMTRSyncClusterDoorLock *)v9 addOrUpdateIssuerKeyData:v10 forUserIndex:v11 isUnifiedAccess:v12 flow:v13, v14];
  }
}

- (id)addOrUpdateIssuerKeyData:(id)a3 forUserIndex:(id)a4 isUnifiedAccess:(BOOL)a5 flow:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __87__HMMTRSyncClusterDoorLock_addOrUpdateIssuerKeyData_forUserIndex_isUnifiedAccess_flow___block_invoke;
  v18[3] = &unk_2786ED0E8;
  v18[4] = self;
  v19 = v12;
  v20 = v10;
  v21 = v11;
  v22 = a5;
  v13 = v11;
  v14 = v10;
  v15 = v12;
  v16 = [(HMMTRSyncClusterDoorLock *)self serialize:v18];

  return v16;
}

id __87__HMMTRSyncClusterDoorLock_addOrUpdateIssuerKeyData_forUserIndex_isUnifiedAccess_flow___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v8 = [*(a1 + 56) integerValue];
    v9 = *(a1 + 64);
    v10 = HMFBooleanToString();
    v14 = 138544386;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2048;
    v21 = v8;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addOrUpdateIssuerKeyData: %@ forUserIndex: %ld isUnifiedAccess: %@", &v14, 0x34u);
  }

  objc_autoreleasePoolPop(v2);
  v11 = [*(a1 + 32) _addOrUpdateIssuerKeyData:*(a1 + 48) forUserIndex:*(a1 + 56) isUnifiedAccess:*(a1 + 64) flow:*(a1 + 40)];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_addOrUpdateIssuerKeyData:(id)a3 forUserIndex:(id)a4 isUnifiedAccess:(BOOL)a5 flow:(id)a6
{
  v43 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v12 UUID];
    v18 = [v11 integerValue];
    HMFBooleanToString();
    v19 = v27 = a5;
    *buf = 138544386;
    v34 = v16;
    v35 = 2112;
    v36 = v17;
    v37 = 2112;
    v38 = v10;
    v39 = 2048;
    v40 = v18;
    v41 = 2112;
    v42 = v19;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] _addOrUpdateIssuerKeyData: %@ forUserIndex: %ld isUnifiedAccess: %@", buf, 0x34u);

    a5 = v27;
  }

  objc_autoreleasePoolPop(v13);
  v20 = -[HMMTRSyncClusterDoorLock __getUserAtIndex:includeAliroCredentials:temporaryCachedAliroCredentials:flow:](v14, "__getUserAtIndex:includeAliroCredentials:temporaryCachedAliroCredentials:flow:", [v11 integerValue], 1, 0, v12);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __88__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUserIndex_isUnifiedAccess_flow___block_invoke;
  v28[3] = &unk_2786ED0C0;
  v28[4] = v14;
  v29 = v12;
  v30 = v11;
  v31 = v10;
  v32 = a5;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = [v20 then:v28];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

uint64_t __88__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUserIndex_isUnifiedAccess_flow___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) isUserSlotAvailableForUserResponse:v3])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) UUID];
      v9 = [*(a1 + 48) integerValue];
      v18 = 138543874;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      v22 = 2048;
      v23 = v9;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find user at userIndex: %ld", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:11 userInfo:0];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v15 = 2;
  }

  else
  {
    v13 = [*(a1 + 32) _addOrUpdateIssuerKeyData:*(a1 + 56) forUser:v3 isUnifiedAccess:*(a1 + 64) flow:*(a1 + 40)];
    if (!v13)
    {
      _HMFPreconditionFailure();
    }

    v14 = v13;

    v15 = 3;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)_addOrUpdateIssuerKeyData:(id)a3 forUserUniqueID:(id)a4 isUnifiedAccess:(BOOL)a5 flow:(id)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v12 UUID];
    v18 = HMFBooleanToString();
    *buf = 138544386;
    v32 = v16;
    v33 = 2112;
    v34 = v17;
    v35 = 2112;
    v36 = v10;
    v37 = 2048;
    v38 = v11;
    v39 = 2112;
    v40 = v18;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] _addOrUpdateIssuerKeyData: %@ forUserUniqueID: %ld isUnifiedAccess: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v13);
  v19 = [(HMMTRSyncClusterDoorLock *)v14 _findUserOrAvailableSlotWithUserUniqueID:v11 flow:v12];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __91__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUserUniqueID_isUnifiedAccess_flow___block_invoke;
  v26[3] = &unk_2786ED098;
  v26[4] = v14;
  v27 = v12;
  v28 = v11;
  v29 = v10;
  v30 = a5;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v23 = [v19 then:v26];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

uint64_t __91__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUserUniqueID_isUnifiedAccess_flow___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 user];
  if (v4)
  {
    v5 = [*(a1 + 32) _addOrUpdateIssuerKeyData:*(a1 + 56) forUser:v4 isUnifiedAccess:*(a1 + 64) flow:*(a1 + 40)];
    if (!v5)
    {
      _HMFPreconditionFailure();
    }

    v6 = v5;

    v7 = 3;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) UUID];
      v13 = [*(a1 + 48) integerValue];
      v19 = 138543874;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2048;
      v24 = v13;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Could not find user with userUniqueID: %ld", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:11 userInfo:0];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v7 = 2;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_addOrUpdateIssuerKeyData:(id)a3 forUser:(id)a4 isUnifiedAccess:(BOOL)a5 flow:(id)a6
{
  v7 = a5;
  v73 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v12 UUID];
    v18 = HMFBooleanToString();
    *buf = 138544386;
    v64 = v16;
    v65 = 2112;
    v66 = v17;
    v67 = 2112;
    v68 = v10;
    v69 = 2112;
    v70 = v11;
    v71 = 2112;
    v72 = v18;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] _addOrUpdateIssuerKeyData: %@ forUser: %@, isUnifiedAccess: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v13);
  v19 = &unk_283EE7A10;
  if (v7)
  {
    v19 = &unk_283EE79F8;
  }

  v20 = v19;
  v48 = v11;
  v21 = [v11 credentials];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __83__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUser_isUnifiedAccess_flow___block_invoke;
  v61[3] = &unk_2786ED008;
  v22 = v20;
  v62 = v22;
  v23 = [v21 hmf_objectPassingTest:v61];

  v47 = v23;
  v24 = [v23 credentialIndex];
  v25 = objc_autoreleasePoolPush();
  v26 = v14;
  v27 = HMFGetOSLogHandle();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
  if (v24)
  {
    v29 = v10;
    if (v28)
    {
      v30 = HMFGetLogIdentifier();
      v31 = [v12 UUID];
      v32 = [v24 integerValue];
      *buf = 138544130;
      v64 = v30;
      v65 = 2112;
      v66 = v31;
      v67 = 2048;
      v68 = v32;
      v69 = 2112;
      v70 = v22;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Existing issuer key credential index: %ld of type: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v25);
    v33 = -[HMMTRSyncClusterDoorLock getCredentialAtIndex:forCredentialType:flow:](v26, "getCredentialAtIndex:forCredentialType:flow:", [v24 integerValue], objc_msgSend(v22, "integerValue"), v12);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __83__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUser_isUnifiedAccess_flow___block_invoke_248;
    v54[3] = &unk_2786ED050;
    v60 = v7;
    v46 = v55;
    v55[0] = v29;
    v55[1] = v26;
    v34 = &v56;
    v56 = v12;
    v35 = &v57;
    v57 = v22;
    v36 = &v58;
    v58 = v24;
    v37 = v12;
    v38 = v48;
    v59 = v48;
    v39 = [v33 then:v54];
  }

  else
  {
    v29 = v10;
    if (v28)
    {
      v40 = HMFGetLogIdentifier();
      v41 = [v12 UUID];
      v42 = [v48 userIndex];
      v43 = [v42 integerValue];
      *buf = 138543874;
      v64 = v40;
      v65 = 2112;
      v66 = v41;
      v67 = 2048;
      v68 = v43;
      _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find existing issuer key credential on user index: %ld", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
    v33 = [(HMMTRSyncClusterDoorLock *)v26 numberOfCredentialsSupportedPerUserWithFlow:v12];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __83__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUser_isUnifiedAccess_flow___block_invoke_252;
    v49[3] = &unk_2786EC970;
    v46 = v50;
    v37 = v12;
    v38 = v48;
    v50[0] = v48;
    v50[1] = v26;
    v34 = &v51;
    v51 = v37;
    v35 = &v52;
    v52 = v29;
    v36 = &v53;
    v53 = v22;
    v39 = [v33 then:v49];
    v24 = 0;
  }

  v44 = *MEMORY[0x277D85DE8];

  return v39;
}

uint64_t __83__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUser_isUnifiedAccess_flow___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 credentialType];
  v4 = [v3 isEqualToNumber:*(a1 + 32)];

  return v4;
}

uint64_t __83__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUser_isUnifiedAccess_flow___block_invoke_248(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if ((*(a1 + 80) & 1) != 0 || ([v3 credentialData], v5 = objc_claimAutoreleasedReturnValue(), v6 = *(a1 + 32), v7 = HMFEqualObjects(), v5, !v7))
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 40);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 48) UUID];
      v21 = [v4 credentialData];
      v22 = *(a1 + 32);
      *buf = 138544130;
      v35 = v19;
      v36 = 2112;
      v37 = v20;
      v38 = 2112;
      v39 = v21;
      v40 = 2112;
      v41 = v22;
      _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Existing issuer key: %@, does not match requested issuer key: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v16);
    v24 = *(a1 + 32);
    v23 = *(a1 + 40);
    v25 = *(a1 + 56);
    v26 = [*(a1 + 64) integerValue];
    v15 = [*(a1 + 72) userIndex];
    v14 = [v23 updateCredentialData:v24 forCredentialType:v25 atIndex:v26 forUserAtUserIndex:objc_msgSend(v15 flow:{"integerValue"), *(a1 + 48)}];
    v27 = [v14 ignoreResult];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __83__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUser_isUnifiedAccess_flow___block_invoke_249;
    v32[3] = &__block_descriptor_33_e50___HMFFutureBlockOutcome_q__16__0___HMFAlwaysNil__8l;
    v33 = *(a1 + 80);
    v28 = [v27 then:v32];
    if (!v28)
    {
LABEL_12:
      _HMFPreconditionFailure();
    }

    v29 = v28;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 48) UUID];
      v13 = *(a1 + 32);
      *buf = 138543874;
      v35 = v11;
      v36 = 2112;
      v37 = v12;
      v38 = 2112;
      v39 = v13;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Issuer key matches: %@, no updates required", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [MEMORY[0x277D0F7C0] futureWithValue:MEMORY[0x277CBEC28]];
    v15 = v14;
    if (!v14)
    {
      goto LABEL_12;
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return 3;
}

uint64_t __83__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUser_isUnifiedAccess_flow___block_invoke_252(id *a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] credentials];
  v5 = [v4 count];
  v6 = [v3 integerValue];

  if (v5 == v6)
  {
    v7 = [a1[4] credentials];
    v8 = [v7 hmf_objectPassingTest:&__block_literal_global_254];

    v9 = objc_autoreleasePoolPush();
    v10 = a1[5];
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (!v8)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [a1[6] UUID];
        *buf = 138543618;
        v40 = v29;
        v41 = 2112;
        v42 = v30;
        _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Credentials per user limit reached, and no evictable endpoints to remove", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v31 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:10 userInfo:0];
      if (v31)
      {
        v18 = v31;
        v21 = 2;
        v17 = v18;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
        objc_claimAutoreleasedReturnValue();
        v18 = 0;
        v17 = 0;
        v21 = 2;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[6] UUID];
      v15 = [v8 credentialIndex];
      *buf = 138543874;
      v40 = v13;
      v41 = 2112;
      v42 = v14;
      v43 = 2048;
      v44 = [v15 integerValue];
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found evictable endpoint at credential index: %ld", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = a1[5];
    v17 = [v8 credentialIndex];
    v18 = [v16 clearCredentialAtIndex:objc_msgSend(v17 withCredentialType:"integerValue") flow:{&unk_283EE7A28, a1[6]}];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __83__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUser_isUnifiedAccess_flow___block_invoke_255;
    v34[3] = &unk_2786EE290;
    v34[4] = a1[5];
    v35 = a1[7];
    v36 = a1[4];
    v37 = a1[8];
    v38 = a1[6];
    v19 = [v18 then:v34];
    if (v19)
    {
      v20 = v19;

      v21 = 3;
LABEL_14:

      goto LABEL_15;
    }

LABEL_16:
    _HMFPreconditionFailure();
  }

  v22 = a1[7];
  v23 = a1[5];
  v24 = [a1[4] userIndex];
  v25 = [v23 _addIssuerKeyData:v22 forUserIndex:objc_msgSend(v24 credentialType:"integerValue") flow:{a1[8], a1[6]}];
  v26 = [v25 ignoreResult];
  v27 = [v26 then:&__block_literal_global_261];
  if (!v27)
  {
    goto LABEL_16;
  }

  v28 = v27;

  v21 = 3;
LABEL_15:

  v32 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t __83__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUser_isUnifiedAccess_flow___block_invoke_255(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 48) userIndex];
  v7 = [v4 _addIssuerKeyData:v5 forUserIndex:objc_msgSend(v6 credentialType:"integerValue") flow:{*(a1 + 56), *(a1 + 64)}];
  v8 = [v7 ignoreResult];
  v9 = [v8 then:&__block_literal_global_258];
  if (v9)
  {
    v10 = v9;

    return 3;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return __83__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUser_isUnifiedAccess_flow___block_invoke_259(v12);
  }
}

uint64_t __83__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUser_isUnifiedAccess_flow___block_invoke_259(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277D0F7C0] futureWithValue:MEMORY[0x277CBEC28]];
  if (v3)
  {
    v4 = v3;

    return 3;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    return __83__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUser_isUnifiedAccess_flow___block_invoke_2_256(v6);
  }
}

uint64_t __83__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUser_isUnifiedAccess_flow___block_invoke_2_256(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277D0F7C0] futureWithValue:MEMORY[0x277CBEC28]];
  if (v3)
  {
    v4 = v3;

    return 3;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    return __83__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUser_isUnifiedAccess_flow___block_invoke_2(v6);
  }
}

BOOL __83__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUser_isUnifiedAccess_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 credentialType];
  v3 = v2 == &unk_283EE7A28;

  return v3;
}

uint64_t __83__HMMTRSyncClusterDoorLock__addOrUpdateIssuerKeyData_forUser_isUnifiedAccess_flow___block_invoke_249(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D0F7C0];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 32) ^ 1u];
  v6 = [v4 futureWithValue:v5];
  if (v6)
  {
    v7 = v6;

    return 3;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return [(HMMTRSyncClusterDoorLock *)v9 addDeviceCredentialKeyData:v10 ofType:v11 forUserIndex:v12 flow:v13, v14];
  }
}

- (id)addDeviceCredentialKeyData:(id)a3 ofType:(int64_t)a4 forUserIndex:(int64_t)a5 flow:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [&unk_283EE79F8 integerValue];
  if (a4 == 1)
  {
    v12 = [&unk_283EE7A28 integerValue];
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__HMMTRSyncClusterDoorLock_addDeviceCredentialKeyData_ofType_forUserIndex_flow___block_invoke;
  v17[3] = &unk_2786ECFE0;
  v17[4] = self;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  v21 = a4;
  v22 = a5;
  v13 = v10;
  v14 = v11;
  v15 = [(HMMTRSyncClusterDoorLock *)self serialize:v17];

  return v15;
}

id __80__HMMTRSyncClusterDoorLock_addDeviceCredentialKeyData_ofType_forUserIndex_flow___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);
    *buf = 138544642;
    v24 = v5;
    v25 = 2112;
    v26 = v6;
    v27 = 2112;
    v28 = v7;
    v29 = 2048;
    v30 = v8;
    v31 = 2048;
    v32 = v9;
    v33 = 2048;
    v34 = v10;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addDeviceCredentialKeyData: %@, credentialType: %ld, tapToUnlockType: %ld, forUserIndex: %ld", buf, 0x3Eu);
  }

  objc_autoreleasePoolPop(v2);
  v11 = [*(a1 + 32) firstAvailableCredentialSlotForCredentialType:*(a1 + 56) flow:*(a1 + 40)];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__HMMTRSyncClusterDoorLock_addDeviceCredentialKeyData_ofType_forUserIndex_flow___block_invoke_247;
  v18[3] = &unk_2786ECFB8;
  v18[4] = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v19 = v12;
  v14 = *(a1 + 72);
  v21 = v13;
  v22 = v14;
  v20 = *(a1 + 40);
  v15 = [v11 then:v18];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __80__HMMTRSyncClusterDoorLock_addDeviceCredentialKeyData_ofType_forUserIndex_flow___block_invoke_247(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a1[7]];
  v7 = [v3 integerValue];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a1[8]];
  v9 = [v4 addCredentialData:v5 forCredentialType:v6 atIndex:v7 forUserAtUserIndex:v8 flow:a1[6]];
  if (v9)
  {
    v10 = v9;

    return 3;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return [(HMMTRSyncClusterDoorLock *)v12 addIssuerKeyData:v13 forUserIndex:v14 isUnifiedAccess:v15 flow:v16, v17];
  }
}

- (id)addIssuerKeyData:(id)a3 forUserIndex:(int64_t)a4 isUnifiedAccess:(BOOL)a5 flow:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a6;
  v12 = &unk_283EE7A10;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__HMMTRSyncClusterDoorLock_addIssuerKeyData_forUserIndex_isUnifiedAccess_flow___block_invoke;
  v17[3] = &unk_2786ECF90;
  v17[4] = self;
  v18 = v10;
  v20 = v11;
  v21 = a4;
  if (v7)
  {
    v12 = &unk_283EE79F8;
  }

  v19 = v12;
  v13 = v11;
  v14 = v10;
  v15 = [(HMMTRSyncClusterDoorLock *)self serialize:v17];

  return v15;
}

- (id)_addIssuerKeyData:(id)a3 forUserIndex:(int64_t)a4 credentialType:(id)a5 flow:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v12 UUID];
    *buf = 138544386;
    v31 = v16;
    v32 = 2112;
    v33 = v17;
    v34 = 2112;
    v35 = v10;
    v36 = 2112;
    v37 = v11;
    v38 = 2048;
    v39 = a4;
    _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] _addIssuerKeyData: %@, credentialType: %@, forUserIndex: %ld", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v13);
  v18 = -[HMMTRSyncClusterDoorLock firstAvailableCredentialSlotForCredentialType:flow:](v14, "firstAvailableCredentialSlotForCredentialType:flow:", [v11 integerValue], v12);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __79__HMMTRSyncClusterDoorLock__addIssuerKeyData_forUserIndex_credentialType_flow___block_invoke;
  v25[3] = &unk_2786ECE58;
  v25[4] = v14;
  v26 = v10;
  v28 = v12;
  v29 = a4;
  v27 = v11;
  v19 = v12;
  v20 = v11;
  v21 = v10;
  v22 = [v18 then:v25];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

uint64_t __79__HMMTRSyncClusterDoorLock__addIssuerKeyData_forUserIndex_credentialType_flow___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = [v3 integerValue];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a1[8]];
  v9 = [v4 addCredentialData:v5 forCredentialType:v6 atIndex:v7 forUserAtUserIndex:v8 flow:a1[7]];
  if (v9)
  {
    v10 = v9;

    return 3;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return [(HMMTRSyncClusterDoorLock *)v12 addIssuerKeyData:v13 forUserIndex:v14 isUnifiedAccess:v15 withFlow:v16, v17];
  }
}

- (id)addIssuerKeyData:(id)a3 forUserIndex:(int64_t)a4 isUnifiedAccess:(BOOL)a5 withFlow:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = objc_opt_new();
  v13 = [(HMMTRSyncClusterDoorLock *)self queue];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __83__HMMTRSyncClusterDoorLock_addIssuerKeyData_forUserIndex_isUnifiedAccess_withFlow___block_invoke;
  v20[3] = &unk_2786ECF68;
  v20[4] = self;
  v21 = v10;
  v25 = a5;
  v24 = a4;
  v22 = v11;
  v14 = v12;
  v23 = v14;
  v15 = v11;
  v16 = v10;
  dispatch_async(v13, v20);

  v17 = v23;
  v18 = v14;

  return v14;
}

void __83__HMMTRSyncClusterDoorLock_addIssuerKeyData_forUserIndex_isUnifiedAccess_withFlow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) addIssuerKeyData:*(a1 + 40) forUserIndex:*(a1 + 64) isUnifiedAccess:*(a1 + 72) flow:*(a1 + 48)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__HMMTRSyncClusterDoorLock_addIssuerKeyData_forUserIndex_isUnifiedAccess_withFlow___block_invoke_2;
  v6[3] = &unk_2786ECF40;
  v7 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __83__HMMTRSyncClusterDoorLock_addIssuerKeyData_forUserIndex_isUnifiedAccess_withFlow___block_invoke_3;
  v4[3] = &unk_2786EC920;
  v5 = *(a1 + 56);
  v3 = [v2 then:v6 orRecover:v4];
}

- (id)addOrUpdateReaderKeyData:(id)a3 flow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__HMMTRSyncClusterDoorLock_addOrUpdateReaderKeyData_flow___block_invoke;
  v12[3] = &unk_2786EC948;
  v12[4] = self;
  v13 = v7;
  v14 = v6;
  v8 = v6;
  v9 = v7;
  v10 = [(HMMTRSyncClusterDoorLock *)self serialize:v12];

  return v10;
}

id __58__HMMTRSyncClusterDoorLock_addOrUpdateReaderKeyData_flow___block_invoke(id *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [a1[5] UUID];
    v7 = a1[6];
    *buf = 138543874;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addOrUpdateReaderKeyData: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [a1[4] findOrAddUserWithUniqueID:&unk_283EE7A40 userType:&unk_283EE7A88 flow:a1[5]];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __58__HMMTRSyncClusterDoorLock_addOrUpdateReaderKeyData_flow___block_invoke_245;
  v13[3] = &unk_2786ECF18;
  v9 = a1[5];
  v13[4] = a1[4];
  v14 = v9;
  v15 = a1[6];
  v10 = [v8 then:v13];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __58__HMMTRSyncClusterDoorLock_addOrUpdateReaderKeyData_flow___block_invoke_245(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 newUserSlot];
  if (!v4)
  {
    v5 = [v3 existingUser];
    v6 = [v5 userIndex];
    v4 = [v6 integerValue];
  }

  v7 = [v3 existingUser];

  if (v7 && (v8 = *(a1 + 32), [v3 existingUser], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "rfidCredentialForUser:flow:", v9, *(a1 + 40)), v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
  {
    v11 = [*(a1 + 32) updateCredentialData:*(a1 + 48) forCredentialType:&unk_283EE79F8 atIndex:objc_msgSend(v10 forUserAtUserIndex:"integerValue") flow:{v4, *(a1 + 40)}];
    if (v11)
    {
      v12 = v11;

LABEL_8:
      return 3;
    }
  }

  else
  {
    v12 = [*(a1 + 32) addReaderKeyData:*(a1 + 48) toUserIndex:v4 flow:*(a1 + 40)];
    v10 = v12;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  v14 = _HMFPreconditionFailure();
  return [(HMMTRSyncClusterDoorLock *)v14 clearAllUsersWithDeletedCreatorFabricIndexWithFlow:v15, v16];
}

- (id)clearAllUsersWithDeletedCreatorFabricIndexWithFlow:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 UUID];
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] clearAllUsersWithDeletedCreatorFabricIndexWithFlow", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__HMMTRSyncClusterDoorLock_clearAllUsersWithDeletedCreatorFabricIndexWithFlow___block_invoke;
  v14[3] = &unk_2786ECB50;
  v14[4] = v6;
  v15 = v4;
  v10 = v4;
  v11 = [(HMMTRSyncClusterDoorLock *)v6 serialize:v14];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __79__HMMTRSyncClusterDoorLock_clearAllUsersWithDeletedCreatorFabricIndexWithFlow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) totalNumberOfUsersSupported_flow:*(a1 + 40)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__HMMTRSyncClusterDoorLock_clearAllUsersWithDeletedCreatorFabricIndexWithFlow___block_invoke_2;
  v6[3] = &unk_2786ECB00;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v4 = [v2 then:v6];

  return v4;
}

uint64_t __79__HMMTRSyncClusterDoorLock_clearAllUsersWithDeletedCreatorFabricIndexWithFlow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 integerValue];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [v4 findAllUsersWithCreatorFabricIndex:0 indexStartingAtSlot:1 assumingTotalNumberOfSlots:v5 users:v6 flow:*(a1 + 40)];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __79__HMMTRSyncClusterDoorLock_clearAllUsersWithDeletedCreatorFabricIndexWithFlow___block_invoke_3;
  v14[3] = &unk_2786ECAD8;
  v8 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v8;
  v9 = [v7 then:v14];
  if (v9)
  {
    v10 = v9;

    return 3;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return __79__HMMTRSyncClusterDoorLock_clearAllUsersWithDeletedCreatorFabricIndexWithFlow___block_invoke_3(v12, v13);
  }
}

uint64_t __79__HMMTRSyncClusterDoorLock_clearAllUsersWithDeletedCreatorFabricIndexWithFlow___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__HMMTRSyncClusterDoorLock_clearAllUsersWithDeletedCreatorFabricIndexWithFlow___block_invoke_4;
  v15[3] = &unk_2786ECAB0;
  v4 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v4;
  v5 = [v3 na_map:v15];
  v6 = [MEMORY[0x277D0F7C0] allSettled:v5];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__HMMTRSyncClusterDoorLock_clearAllUsersWithDeletedCreatorFabricIndexWithFlow___block_invoke_241;
  v13[3] = &unk_2786ECAD8;
  v7 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v7;
  v8 = [v6 then:v13];
  if (v8)
  {
    v9 = v8;

    return 3;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    return __79__HMMTRSyncClusterDoorLock_clearAllUsersWithDeletedCreatorFabricIndexWithFlow___block_invoke_4(v11, v12);
  }
}

id __79__HMMTRSyncClusterDoorLock_clearAllUsersWithDeletedCreatorFabricIndexWithFlow___block_invoke_4(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 creatorFabricIndex];
  v5 = [v4 isEqualToNumber:&unk_283EE7A40];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 40) UUID];
      v16 = 138543874;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Clear abandoned user: %@ since it belongs to a deleted fabric", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = *(a1 + 32);
    v12 = [v3 userIndex];
    v13 = [v11 clearUserAtIndex:objc_msgSend(v12 flow:{"integerValue"), *(a1 + 40)}];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __79__HMMTRSyncClusterDoorLock_clearAllUsersWithDeletedCreatorFabricIndexWithFlow___block_invoke_241(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 na_firstObjectPassingTest:&__block_literal_global_244];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 40) UUID];
      v17 = 138543874;
      v18 = v9;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failure to remove all abandonded users with error: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = v4;
    v12 = 2;
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 40) UUID];
      v17 = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      v21 = 2048;
      v22 = [v3 count];
      _os_log_impl(&dword_22AEAE000, v8, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Successfully removed %lu abandoned users", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v12 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t __79__HMMTRSyncClusterDoorLock_clearAllUsersWithDeletedCreatorFabricIndexWithFlow___block_invoke_2_242(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

- (id)_readReaderConfigWithFlow:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 UUID];
    *buf = 138543618;
    *&buf[4] = v8;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] readReaderConfig", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  *buf = 0;
  v10 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
  v11 = [*buf resolverBlock];
  v12 = [(HMMTRSyncClusterDoorLock *)v6 apiRouter];
  [v12 readAttributeAliroReaderVerificationKeyWithFlow:v4 completion:v11];

  v28[0] = v10;
  *buf = 0;
  v13 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
  v14 = [*buf resolverBlock];
  v15 = [(HMMTRSyncClusterDoorLock *)v6 apiRouter];
  [v15 readAttributeAliroReaderGroupIdentifierWithFlow:v4 completion:v14];

  v28[1] = v13;
  *buf = 0;
  v16 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
  v17 = [*buf resolverBlock];
  v18 = [(HMMTRSyncClusterDoorLock *)v6 apiRouter];
  [v18 readAttributeAliroGroupResolvingKeyWithFlow:v4 completion:v17];

  v19 = [v16 recover:&__block_literal_global_237];
  v28[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];

  v21 = [MEMORY[0x277D0F7C0] allSettled:v20];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __54__HMMTRSyncClusterDoorLock__readReaderConfigWithFlow___block_invoke_2;
  v26[3] = &unk_2786ECAD8;
  v26[4] = v6;
  v27 = v4;
  v22 = v4;
  v23 = [v21 then:v26];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

uint64_t __54__HMMTRSyncClusterDoorLock__readReaderConfigWithFlow___block_invoke_2(uint64_t a1, void *a2)
{
  v52[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = [v3 objectAtIndexedSubscript:1];
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

  if (!v9)
  {

    goto LABEL_14;
  }

  v10 = [v3 objectAtIndexedSubscript:2];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || !v10)
  {
LABEL_14:
    v15 = *(a1 + 32);
    v16 = objc_opt_class();
    v17 = [v3 objectAtIndexedSubscript:0];
    v52[0] = v17;
    v18 = [v3 objectAtIndexedSubscript:1];
    v52[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
    v20 = [v16 validateFutureResults:v19 ofClass:objc_opt_class() areNullable:0 flow:*(a1 + 40)];

    v21 = *(a1 + 32);
    v22 = objc_opt_class();
    v23 = [v3 objectAtIndexedSubscript:2];
    v51 = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    v25 = [v22 validateFutureResults:v24 ofClass:objc_opt_class() areNullable:1 flow:*(a1 + 40)];

    if (v20 | v25)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [*(a1 + 40) UUID];
        v43 = 138544130;
        v44 = v29;
        v45 = 2112;
        v46 = v30;
        v47 = 2112;
        v48 = v20;
        v49 = 2112;
        v50 = v25;
        _os_log_impl(&dword_22AEAE000, v28, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Error while reading aliro reader config: %@, %@", &v43, 0x2Au);
      }

      objc_autoreleasePoolPop(v26);
      if (v20)
      {
        v31 = v20;
      }

      else
      {
        v31 = v25;
      }

      v32 = v31;
      if (v32)
      {
        v33 = v32;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
        objc_claimAutoreleasedReturnValue();
        v33 = 0;
      }

      v14 = 2;
    }

    else
    {
      v33 = objc_opt_new();
      v34 = [v3 objectAtIndexedSubscript:0];
      [v33 setReaderPublicKeyExternalRepresentation:v34];

      v35 = [v3 objectAtIndexedSubscript:1];
      [v33 setReaderGroupIdentifier:v35];

      v36 = [v3 objectAtIndexedSubscript:2];
      v37 = [MEMORY[0x277CBEB68] null];

      if (v36 != v37)
      {
        v38 = [v3 objectAtIndexedSubscript:2];
        [v33 setGroupResolvingKey:v38];
      }

      v39 = [MEMORY[0x277D0F7C0] futureWithValue:v33];
      if (!v39)
      {
LABEL_30:
        _HMFPreconditionFailure();
      }

      v40 = v39;

      v14 = 3;
    }

    goto LABEL_29;
  }

  v12 = [MEMORY[0x277D0F7C0] futureWithNoValue];
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = v12;

  v14 = 3;
LABEL_29:

  v41 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __54__HMMTRSyncClusterDoorLock__readReaderConfigWithFlow___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 domain];
  v4 = v3;
  if (v3 == *MEMORY[0x277CD5158])
  {
    v5 = [v2 code];

    if (v5 == 134)
    {
      [MEMORY[0x277CBEB68] null];
      objc_claimAutoreleasedReturnValue();
      v6 = 1;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v7 = v2;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v6 = 2;
LABEL_9:

  return v6;
}

- (id)readReaderConfigWithFlow:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HMMTRSyncClusterDoorLock_readReaderConfigWithFlow___block_invoke;
  v8[3] = &unk_2786ECB50;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(HMMTRSyncClusterDoorLock *)self serialize:v8];

  return v6;
}

id __53__HMMTRSyncClusterDoorLock_readReaderConfigWithFlow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__HMMTRSyncClusterDoorLock_readReaderConfigWithFlow___block_invoke_2;
  v5[3] = &unk_2786ECB50;
  v5[4] = v2;
  v6 = *(a1 + 40);
  v3 = [v2 ensureAccessoryConnected:v5 flow:*(a1 + 40)];

  return v3;
}

- (id)setOrReadReaderConfig:(id)a3 flow:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543874;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] setOrReadReaderConfig: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __55__HMMTRSyncClusterDoorLock_setOrReadReaderConfig_flow___block_invoke;
  v18[3] = &unk_2786EC948;
  v18[4] = v9;
  v19 = v6;
  v20 = v7;
  v13 = v7;
  v14 = v6;
  v15 = [(HMMTRSyncClusterDoorLock *)v9 serialize:v18];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

id __55__HMMTRSyncClusterDoorLock_setOrReadReaderConfig_flow___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__HMMTRSyncClusterDoorLock_setOrReadReaderConfig_flow___block_invoke_2;
  v5[3] = &unk_2786EC948;
  v5[4] = v2;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v3 = [v2 ensureAccessoryConnected:v5 flow:*(a1 + 48)];

  return v3;
}

id __55__HMMTRSyncClusterDoorLock_setOrReadReaderConfig_flow___block_invoke_2(uint64_t a1)
{
  v9 = 0;
  v2 = [MEMORY[0x277D0F7C0] futureWithPromise:&v9];
  v3 = [v9 errorOnlyResolverBlock];
  v4 = [*(a1 + 32) apiRouter];
  [v4 setAliroReaderConfigWithConfig:*(a1 + 40) flow:*(a1 + 48) completion:v3];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HMMTRSyncClusterDoorLock_setOrReadReaderConfig_flow___block_invoke_3;
  v7[3] = &unk_2786EE848;
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 48);
  v5 = [v2 recover:v7];

  return v5;
}

uint64_t __55__HMMTRSyncClusterDoorLock_setOrReadReaderConfig_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 domain];
  v5 = v4;
  if (v4 != *MEMORY[0x277CD5158])
  {

LABEL_6:
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 40) UUID];
      v20 = 138543874;
      v21 = v13;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to set or read reader config with error: %@", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = v3;
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v9 = 2;
    goto LABEL_12;
  }

  v6 = [v3 code];

  if (v6 != 203)
  {
    goto LABEL_6;
  }

  v7 = [*(a1 + 32) _readReaderConfigWithFlow:*(a1 + 40)];
  if (!v7)
  {
    _HMFPreconditionFailure();
  }

  v8 = v7;

  v9 = 3;
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)removePinCodeForUserIndex:(int64_t)a3 flow:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__HMMTRSyncClusterDoorLock_removePinCodeForUserIndex_flow___block_invoke;
  v10[3] = &unk_2786ECA38;
  v10[4] = self;
  v11 = v6;
  v12 = a3;
  v7 = v6;
  v8 = [(HMMTRSyncClusterDoorLock *)self serialize:v10];

  return v8;
}

id __59__HMMTRSyncClusterDoorLock_removePinCodeForUserIndex_flow___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    *buf = 138543874;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    v19 = 2048;
    v20 = v7;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] removePinCodeForUserIndex: %ld", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [*(a1 + 32) _getUserAtIndex:*(a1 + 48) flow:*(a1 + 40)];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__HMMTRSyncClusterDoorLock_removePinCodeForUserIndex_flow___block_invoke_235;
  v13[3] = &unk_2786ECED0;
  v9 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v9;
  v10 = [v8 then:v13];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id __59__HMMTRSyncClusterDoorLock_removePinCodeForUserIndex_flow___block_invoke_235(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) pinCredentialForUser:v3 flow:*(a1 + 40)];
  v5 = v4;
  if (!v4)
  {
    v8 = 1;
    goto LABEL_5;
  }

  v6 = [*(a1 + 32) clearCredentialAtIndex:objc_msgSend(v4 withCredentialType:"integerValue") flow:{&unk_283EE79E0, *(a1 + 40)}];
  if (v6)
  {
    v7 = v6;
    v8 = 3;

LABEL_5:
    return v8;
  }

  v10 = _HMFPreconditionFailure();
  return [(HMMTRSyncClusterDoorLock *)v10 addOrUpdatePinCodeWithValue:v11 forUserIndex:v12 flow:v13, v14];
}

- (id)addOrUpdatePinCodeWithValue:(id)a3 forUserIndex:(int64_t)a4 flow:(id)a5
{
  v8 = a3;
  v9 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__HMMTRSyncClusterDoorLock_addOrUpdatePinCodeWithValue_forUserIndex_flow___block_invoke;
  v14[3] = &unk_2786ECEA8;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v17 = a4;
  v10 = v8;
  v11 = v9;
  v12 = [(HMMTRSyncClusterDoorLock *)self serialize:v14];

  return v12;
}

id __74__HMMTRSyncClusterDoorLock_addOrUpdatePinCodeWithValue_forUserIndex_flow___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *buf = 138544130;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    v26 = 2048;
    v27 = v8;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addOrUpdatePinCodeWithValue: %@, forUserIndex: %ld", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  v9 = [*(a1 + 32) __getUserAtIndex:*(a1 + 56) includeAliroCredentials:1 temporaryCachedAliroCredentials:0 flow:*(a1 + 40)];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__HMMTRSyncClusterDoorLock_addOrUpdatePinCodeWithValue_forUserIndex_flow___block_invoke_231;
  v16[3] = &unk_2786ECE80;
  v10 = *(a1 + 40);
  v16[4] = *(a1 + 32);
  v17 = v10;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v18 = v11;
  v19 = v12;
  v13 = [v9 then:v16];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __74__HMMTRSyncClusterDoorLock_addOrUpdatePinCodeWithValue_forUserIndex_flow___block_invoke_231(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) pinCredentialForUser:v3 flow:*(a1 + 40)];
  v5 = v4;
  if (v4)
  {
    v6 = [*(a1 + 32) updatePinCredentialAtIndex:objc_msgSend(v4 withValue:"integerValue") forUserAtUserIndex:*(a1 + 48) flow:{*(a1 + 56), *(a1 + 40)}];
    if (v6)
    {
      v7 = v6;

LABEL_6:
      return 3;
    }
  }

  else
  {
    v8 = [*(a1 + 32) numberOfCredentialsSupportedPerUserWithFlow:*(a1 + 40)];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__HMMTRSyncClusterDoorLock_addOrUpdatePinCodeWithValue_forUserIndex_flow___block_invoke_2;
    v19[3] = &unk_2786ECE58;
    v9 = v3;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v23 = v12;
    v24 = v13;
    v14 = [v8 then:v19];
    if (v14)
    {
      v15 = v14;

      goto LABEL_6;
    }
  }

  v17 = _HMFPreconditionFailure();
  return __74__HMMTRSyncClusterDoorLock_addOrUpdatePinCodeWithValue_forUserIndex_flow___block_invoke_2(v17, v18);
}

uint64_t __74__HMMTRSyncClusterDoorLock_addOrUpdatePinCodeWithValue_forUserIndex_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) credentials];
  v5 = [v4 count];
  v6 = [v3 integerValue];

  if (v5 == v6)
  {
    v7 = [*(a1 + 32) credentials];
    v8 = [v7 hmf_objectPassingTest:&__block_literal_global_234];

    if (!v8)
    {
      v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:10 userInfo:0];
      v20 = v19;
      if (v19)
      {
        v21 = v19;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
        objc_claimAutoreleasedReturnValue();
      }

      v16 = 2;
      goto LABEL_11;
    }

    v9 = *(a1 + 40);
    v10 = [v8 credentialIndex];
    v11 = [v9 clearCredentialAtIndex:objc_msgSend(v10 withCredentialType:"integerValue") flow:{&unk_283EE7A28, *(a1 + 48)}];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __74__HMMTRSyncClusterDoorLock_addOrUpdatePinCodeWithValue_forUserIndex_flow___block_invoke_4;
    v25[3] = &unk_2786ECE30;
    v25[4] = *(a1 + 40);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v26 = v12;
    v28 = v13;
    v27 = *(a1 + 48);
    v14 = [v11 then:v25];
    if (v14)
    {
      v15 = v14;

      v16 = 3;
LABEL_11:

      goto LABEL_12;
    }
  }

  else
  {
    v17 = [*(a1 + 40) addPinCodeWithValue:*(a1 + 56) forUserIndex:*(a1 + 64) flow:*(a1 + 48)];
    if (v17)
    {
      v18 = v17;

      v16 = 3;
LABEL_12:

      return v16;
    }
  }

  v23 = _HMFPreconditionFailure();
  return __74__HMMTRSyncClusterDoorLock_addOrUpdatePinCodeWithValue_forUserIndex_flow___block_invoke_4(v23, v24);
}

uint64_t __74__HMMTRSyncClusterDoorLock_addOrUpdatePinCodeWithValue_forUserIndex_flow___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) addPinCodeWithValue:*(a1 + 40) forUserIndex:*(a1 + 56) flow:*(a1 + 48)];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return __74__HMMTRSyncClusterDoorLock_addOrUpdatePinCodeWithValue_forUserIndex_flow___block_invoke_3(v7);
  }
}

BOOL __74__HMMTRSyncClusterDoorLock_addOrUpdatePinCodeWithValue_forUserIndex_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 credentialType];
  v3 = v2 == &unk_283EE7A28;

  return v3;
}

- (id)getMinPINCodeLengthWithFlow:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 UUID];
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] getMinPINCodeLength", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__HMMTRSyncClusterDoorLock_getMinPINCodeLengthWithFlow___block_invoke;
  v14[3] = &unk_2786ECB50;
  v14[4] = v6;
  v15 = v4;
  v10 = v4;
  v11 = [(HMMTRSyncClusterDoorLock *)v6 ensureAccessoryConnected:v14 flow:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __56__HMMTRSyncClusterDoorLock_getMinPINCodeLengthWithFlow___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) readAttributeMinPINCodeLengthWithParams:0];
  v3 = [v2 objectForKey:*MEMORY[0x277CD51A0]];
  if (v3)
  {
    v4 = [MEMORY[0x277D0F7C0] futureWithValue:v3];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) UUID];
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to read min pin code length constraint from accessory", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = MEMORY[0x277D0F7C0];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v4 = [v10 futureWithError:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getMaxPINCodeLengthWithFlow:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 UUID];
    *buf = 138543618;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] getMaxPINCodeLength", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__HMMTRSyncClusterDoorLock_getMaxPINCodeLengthWithFlow___block_invoke;
  v14[3] = &unk_2786ECB50;
  v14[4] = v6;
  v15 = v4;
  v10 = v4;
  v11 = [(HMMTRSyncClusterDoorLock *)v6 ensureAccessoryConnected:v14 flow:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

id __56__HMMTRSyncClusterDoorLock_getMaxPINCodeLengthWithFlow___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) readAttributeMaxPINCodeLengthWithParams:0];
  v3 = [v2 objectForKey:*MEMORY[0x277CD51A0]];
  if (v3)
  {
    v4 = [MEMORY[0x277D0F7C0] futureWithValue:v3];
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 40) UUID];
      v14 = 138543618;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to read max pin code length constraint from accessory", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = MEMORY[0x277D0F7C0];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v4 = [v10 futureWithError:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getAllPinCodesWithFlow:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HMMTRSyncClusterDoorLock_getAllPinCodesWithFlow___block_invoke;
  v8[3] = &unk_2786ECB50;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(HMMTRSyncClusterDoorLock *)self serialize:v8];

  return v6;
}

id __51__HMMTRSyncClusterDoorLock_getAllPinCodesWithFlow___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    *buf = 138543618;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] getAllPinCodes", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) fetchCurrentFabricIndex_flow:*(a1 + 40)];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__HMMTRSyncClusterDoorLock_getAllPinCodesWithFlow___block_invoke_217;
  v12[3] = &unk_2786ECB00;
  v8 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v8;
  v9 = [v7 then:v12];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __51__HMMTRSyncClusterDoorLock_getAllPinCodesWithFlow___block_invoke_217(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [&unk_283EE79E0 integerValue];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [v4 getAllCredentialsIndexStartingAtSlot:1 forCredentialType:v5 credentials:v6 flow:*(a1 + 40)];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__HMMTRSyncClusterDoorLock_getAllPinCodesWithFlow___block_invoke_2;
  v18[3] = &unk_2786ECDE8;
  v8 = *(a1 + 40);
  v18[4] = *(a1 + 32);
  v19 = v8;
  v9 = v3;
  v20 = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__HMMTRSyncClusterDoorLock_getAllPinCodesWithFlow___block_invoke_3_230;
  v16[3] = &unk_2786EE848;
  v10 = *(a1 + 40);
  v16[4] = *(a1 + 32);
  v17 = v10;
  v11 = [v7 then:v18 orRecover:v16];
  if (v11)
  {
    v12 = v11;

    return 3;
  }

  else
  {
    v14 = _HMFPreconditionFailure();
    return __51__HMMTRSyncClusterDoorLock_getAllPinCodesWithFlow___block_invoke_2(v14, v15);
  }
}

uint64_t __51__HMMTRSyncClusterDoorLock_getAllPinCodesWithFlow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D0F7C0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__HMMTRSyncClusterDoorLock_getAllPinCodesWithFlow___block_invoke_3;
  v12[3] = &unk_2786ECDA0;
  v5 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v5;
  v14 = *(a1 + 48);
  v6 = [v3 na_map:v12];
  v7 = [v4 allSettled:v6];
  v8 = [v7 then:&__block_literal_global_224];
  if (v8)
  {
    v9 = v8;

    return 3;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    return __51__HMMTRSyncClusterDoorLock_getAllPinCodesWithFlow___block_invoke_3_230(v11);
  }
}

uint64_t __51__HMMTRSyncClusterDoorLock_getAllPinCodesWithFlow___block_invoke_3_230(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v14 = 138543874;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to get all pincodes with error: %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = v3;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v12 = *MEMORY[0x277D85DE8];
  return 2;
}

id __51__HMMTRSyncClusterDoorLock_getAllPinCodesWithFlow___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 userIndex];
  v6 = [v4 _getUserAtIndex:objc_msgSend(v5 flow:{"integerValue"), *(a1 + 40)}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__HMMTRSyncClusterDoorLock_getAllPinCodesWithFlow___block_invoke_4;
  v15[3] = &unk_2786ECD78;
  v7 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v7;
  v17 = v3;
  v18 = *(a1 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__HMMTRSyncClusterDoorLock_getAllPinCodesWithFlow___block_invoke_220;
  v12[3] = &unk_2786F0300;
  v8 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v13 = v8;
  v14 = v17;
  v9 = v17;
  v10 = [v6 then:v15 orRecover:v12];

  return v10;
}

uint64_t __51__HMMTRSyncClusterDoorLock_getAllPinCodesWithFlow___block_invoke_222(uint64_t a1, void *a2)
{
  [a2 na_filter:&__block_literal_global_228];
  objc_claimAutoreleasedReturnValue();
  return 1;
}

uint64_t __51__HMMTRSyncClusterDoorLock_getAllPinCodesWithFlow___block_invoke_2_225(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

uint64_t __51__HMMTRSyncClusterDoorLock_getAllPinCodesWithFlow___block_invoke_4(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) isUserSlotAvailableForUserResponse:v3])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) UUID];
      v9 = *(a1 + 48);
      v17 = 138543874;
      v18 = v7;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Dropping credential that we could not fetch a user for. The user slot was marked Available. Credential: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v10 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v14 = 2;
  }

  else
  {
    v13 = objc_opt_new();
    [v13 setCredential:*(a1 + 48)];
    [v13 setUser:v3];
    [v13 setCurrentFabricIndex:*(a1 + 56)];
    v14 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __51__HMMTRSyncClusterDoorLock_getAllPinCodesWithFlow___block_invoke_220(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v9 = *(a1 + 48);
    v15 = 138544130;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Dropping credential that we could not fetch a user for. Credential: %@, Error: %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = v3;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v13 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)fetchFeatureMapWithFlow:(id)a3
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMMTRSyncClusterDoorLock_fetchFeatureMapWithFlow___block_invoke;
  v7[3] = &unk_2786ECB28;
  v7[4] = self;
  v4 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v5 = [(HMMTRSyncClusterDoorLock *)self ensureAccessoryConnected:v7 flow:v4];

  return v5;
}

id __52__HMMTRSyncClusterDoorLock_fetchFeatureMapWithFlow___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CD5260]);
  v3 = [*(a1 + 32) device];
  v4 = [*(a1 + 32) endpoint];
  v5 = [*(a1 + 32) queue];
  v6 = [v2 initWithDevice:v3 endpoint:v4 queue:v5];

  v25 = 0;
  v7 = [MEMORY[0x277D0F7C0] futureWithPromise:&v25];
  v8 = objc_alloc_init(MEMORY[0x277CD54D8]);
  v9 = [v6 readAttributeFeatureMapWithParams:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v17;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_22AEAE000, v16, OS_LOG_TYPE_INFO, "%{public}@Read feature map: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [v25 fulfillWithValue:v13];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v21;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@Could not read attribute feature map from door lock", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = v25;
    v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    [v22 rejectWithError:v13];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)fetchAccessoryColor_flow:(id)a3
{
  v4 = a3;
  v10 = MEMORY[0x277D85DD0];
  v11 = v4;
  v5 = MEMORY[0x277D0F7B8];
  v6 = v4;
  v7 = [v5 untrackedPlaceholderFlow];
  v8 = [(HMMTRSyncClusterDoorLock *)self ensureAccessoryConnected:&v10 flow:v7];

  return v8;
}

id __53__HMMTRSyncClusterDoorLock_fetchAccessoryColor_flow___block_invoke(uint64_t a1)
{
  v1 = a1;
  v73 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) device];
  v3 = [v2 readAttributeWithEndpointID:&unk_283EE7A40 clusterID:&unk_283EE7AD0 attributeID:&unk_283EE7AB8 params:0];

  if (!v3)
  {
    v38 = MEMORY[0x277D0F7C0];
    v39 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v40 = [v38 futureWithError:v39];

    goto LABEL_58;
  }

  v4 = objc_autoreleasePoolPush();
  v5 = *(v1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(v1 + 40) UUID];
    *buf = 138543874;
    v65 = v7;
    v66 = 2112;
    v67 = v8;
    v68 = 2112;
    v69 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Read value for fetchAccessoryColor: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD5188]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = 0;
  v13 = 0;
  if ([v11 isEqual:*MEMORY[0x277CD5180]])
  {
    v56 = v11;
    v14 = v1;
    v57 = v3;
    v15 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v17;
    v18 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
    if (!v18)
    {
      v58 = 0;
      v13 = 0;
      goto LABEL_35;
    }

    v19 = v18;
    v58 = 0;
    v13 = 0;
    v20 = *v61;
    v21 = *MEMORY[0x277CD50D0];
    v22 = *MEMORY[0x277CD50D8];
    while (1)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v61 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v60 + 1) + 8 * i);
        v25 = [v24 objectForKeyedSubscript:v21];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        v27 = v26;

        if ([v27 isEqual:&unk_283EE7A40])
        {
          v28 = [v24 objectForKeyedSubscript:v22];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }

          v30 = v29;

          v31 = *(v14 + 32);
          v32 = [objc_opt_class() numberFromAttributeDictionary:v30];
          v33 = v13;
          v13 = v32;
        }

        else
        {
          if (![v27 isEqual:&unk_283EE79E0])
          {
            goto LABEL_30;
          }

          v34 = [v24 objectForKeyedSubscript:v22];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35 = v34;
          }

          else
          {
            v35 = 0;
          }

          v30 = v35;

          v36 = *(v14 + 32);
          v37 = [objc_opt_class() numberFromAttributeDictionary:v30];
          v33 = v58;
          v58 = v37;
        }

LABEL_30:
      }

      v19 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
      if (!v19)
      {
LABEL_35:

        v11 = v56;
        v3 = v57;
        v1 = v14;
        v12 = v58;
        break;
      }
    }
  }

  v41 = objc_autoreleasePoolPush();
  v42 = *(v1 + 32);
  v43 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v44 = HMFGetLogIdentifier();
    v45 = [*(v1 + 40) UUID];
    *buf = 138544130;
    v65 = v44;
    v66 = 2112;
    v67 = v45;
    v68 = 2112;
    v69 = v13;
    v70 = 2112;
    v71 = v12;
    _os_log_impl(&dword_22AEAE000, v43, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Parsed productFinish: %@, color: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v41);
  if (!v13 || !v12)
  {
    v46 = [MEMORY[0x277D0F7C0] futureWithValue:&unk_283EE7AE8];
  }

  if ([v13 integerValue] == 2 && objc_msgSend(v12, "integerValue") == 16)
  {
    v47 = 14935011;
LABEL_54:
    v48 = [MEMORY[0x277CCABB0] numberWithInteger:v47];
    goto LABEL_55;
  }

  if ([v13 integerValue] == 2 && objc_msgSend(v12, "integerValue") == 15)
  {
    v47 = 14341582;
    goto LABEL_54;
  }

  if ([v13 integerValue] == 1 && !objc_msgSend(v12, "integerValue"))
  {
    v47 = 0;
    goto LABEL_54;
  }

  if ([v13 integerValue] == 3 && objc_msgSend(v12, "integerValue") == 17)
  {
    v47 = 15521450;
    goto LABEL_54;
  }

  v48 = &unk_283EE7AE8;
LABEL_55:
  v49 = objc_autoreleasePoolPush();
  v50 = *(v1 + 32);
  v51 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    v52 = HMFGetLogIdentifier();
    v53 = [*(v1 + 40) UUID];
    *buf = 138543874;
    v65 = v52;
    v66 = 2112;
    v67 = v53;
    v68 = 2112;
    v69 = v48;
    _os_log_impl(&dword_22AEAE000, v51, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Returning color: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v49);
  v40 = [MEMORY[0x277D0F7C0] futureWithValue:v48];

LABEL_58:
  v54 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)fetchFeatureMapForSupportingWeekAndYearDayScheduleWithFlow:(id)a3
{
  v3 = [(HMMTRSyncClusterDoorLock *)self fetchFeatureMapWithFlow:a3];
  v4 = [v3 then:&__block_literal_global_248];

  return v4;
}

uint64_t __87__HMMTRSyncClusterDoorLock_fetchFeatureMapForSupportingWeekAndYearDayScheduleWithFlow___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = a2;
  v4 = [v3 unsignedIntValue] & 0x10;
  v5 = [v3 unsignedIntValue];

  v6 = [v2 numberWithUnsignedInt:v5 & 0x400 | v4];

  return 1;
}

- (id)fetchReaderGroupSubIdentifier
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__HMMTRSyncClusterDoorLock_fetchReaderGroupSubIdentifier__block_invoke;
  v6[3] = &unk_2786ECB28;
  v6[4] = self;
  v3 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v4 = [(HMMTRSyncClusterDoorLock *)self ensureAccessoryConnected:v6 flow:v3];

  return v4;
}

id __57__HMMTRSyncClusterDoorLock_fetchReaderGroupSubIdentifier__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) readAttributeAppleAliroReaderGroupSubIdentifierWithParams:0];
  v3 = *(a1 + 32);
  v4 = [objc_opt_class() dataOfReadValue:v2];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@Read value for reader group sub identifier: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277D0F7C0] futureWithValue:v4];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)fetchAccessorySupportsAliroBLEUWBWithFlow:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRSyncClusterDoorLock *)self fetchFeatureMapWithFlow:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HMMTRSyncClusterDoorLock_fetchAccessorySupportsAliroBLEUWBWithFlow___block_invoke;
  v9[3] = &unk_2786ECB00;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 then:v9];

  return v7;
}

id __70__HMMTRSyncClusterDoorLock_fetchAccessorySupportsAliroBLEUWBWithFlow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() doorLockFeatureMapSupportsAliroBLEUWB:v3];
  if ([v5 BOOLValue])
  {
    v5;
    v6 = 1;
LABEL_5:

    return v6;
  }

  v7 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__HMMTRSyncClusterDoorLock_fetchAccessorySupportsAliroBLEUWBWithFlow___block_invoke_2;
  v12[3] = &unk_2786ECB50;
  v12[4] = v7;
  v13 = *(a1 + 40);
  v8 = [v7 ensureAccessoryConnected:v12 flow:*(a1 + 40)];
  if (v8)
  {
    v9 = v8;

    v6 = 3;
    goto LABEL_5;
  }

  v11 = _HMFPreconditionFailure();
  return __70__HMMTRSyncClusterDoorLock_fetchAccessorySupportsAliroBLEUWBWithFlow___block_invoke_2(v11);
}

id __70__HMMTRSyncClusterDoorLock_fetchAccessorySupportsAliroBLEUWBWithFlow___block_invoke_2(uint64_t a1)
{
  v8 = 0;
  v2 = [MEMORY[0x277D0F7C0] futureWithPromise:&v8];
  v3 = [*(a1 + 32) apiRouter];
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__HMMTRSyncClusterDoorLock_fetchAccessorySupportsAliroBLEUWBWithFlow___block_invoke_3;
  v6[3] = &unk_2786ECD30;
  v7 = v8;
  [v3 fetchAppleClusterFeaturesWithFlow:v4 completion:v6];

  return v2;
}

void __70__HMMTRSyncClusterDoorLock_fetchAccessorySupportsAliroBLEUWBWithFlow___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a4)
  {
    v5 = *(a1 + 32);

    [v5 rejectWithError:a4];
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:?];
    [v4 fulfillWithValue:v6];
  }
}

- (id)fetchAccessorySupportsAliroProvisioningWithFlow:(id)a3
{
  v4 = a3;
  v5 = [(HMMTRSyncClusterDoorLock *)self fetchFeatureMapWithFlow:v4];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__HMMTRSyncClusterDoorLock_fetchAccessorySupportsAliroProvisioningWithFlow___block_invoke;
  v9[3] = &unk_2786ECB00;
  v9[4] = self;
  v10 = v4;
  v6 = v4;
  v7 = [v5 then:v9];

  return v7;
}

id __76__HMMTRSyncClusterDoorLock_fetchAccessorySupportsAliroProvisioningWithFlow___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() doorLockFeatureMapSupportsAliroProvisioning:v3];
  if ([v5 BOOLValue])
  {
    v5;
    v6 = 1;
LABEL_5:

    return v6;
  }

  v7 = *(a1 + 32);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __76__HMMTRSyncClusterDoorLock_fetchAccessorySupportsAliroProvisioningWithFlow___block_invoke_2;
  v12[3] = &unk_2786ECB50;
  v12[4] = v7;
  v13 = *(a1 + 40);
  v8 = [v7 ensureAccessoryConnected:v12 flow:*(a1 + 40)];
  if (v8)
  {
    v9 = v8;

    v6 = 3;
    goto LABEL_5;
  }

  v11 = _HMFPreconditionFailure();
  return __76__HMMTRSyncClusterDoorLock_fetchAccessorySupportsAliroProvisioningWithFlow___block_invoke_2(v11);
}

id __76__HMMTRSyncClusterDoorLock_fetchAccessorySupportsAliroProvisioningWithFlow___block_invoke_2(uint64_t a1)
{
  v8 = 0;
  v2 = [MEMORY[0x277D0F7C0] futureWithPromise:&v8];
  v3 = [*(a1 + 32) apiRouter];
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__HMMTRSyncClusterDoorLock_fetchAccessorySupportsAliroProvisioningWithFlow___block_invoke_3;
  v6[3] = &unk_2786ECD30;
  v7 = v8;
  [v3 fetchAppleClusterFeaturesWithFlow:v4 completion:v6];

  return v2;
}

void __76__HMMTRSyncClusterDoorLock_fetchAccessorySupportsAliroProvisioningWithFlow___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a4)
  {
    v5 = *(a1 + 32);

    [v5 rejectWithError:a4];
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    [v4 fulfillWithValue:v6];
  }
}

- (id)addNewUsersWithUserUniqueIDs:(id)a3 withCorrespondingIssuerKeys:(id)a4 flow:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 UUID];
    *buf = 138544130;
    v37 = v14;
    v38 = 2112;
    v39 = v15;
    v40 = 2112;
    v41 = v8;
    v42 = 2112;
    v43 = v9;
    _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] addNewUsersWithUserUniqueIDs: userUniqueIDs: %@ withCorrespondingIssuerKeys: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [v8 count];
  if (v16 == [v9 count])
  {
    if ([v8 count])
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __90__HMMTRSyncClusterDoorLock_addNewUsersWithUserUniqueIDs_withCorrespondingIssuerKeys_flow___block_invoke;
      v32[3] = &unk_2786ECD08;
      v32[4] = v12;
      v33 = v8;
      v34 = v10;
      v35 = v9;
      v17 = [(HMMTRSyncClusterDoorLock *)v12 serialize:v32];
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v12;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [v10 UUID];
        *buf = 138543618;
        v37 = v28;
        v38 = 2112;
        v39 = v29;
        _os_log_impl(&dword_22AEAE000, v27, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] No user uniqueIDS and corresponding issuer keys to add", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v17 = [MEMORY[0x277D0F7C0] futureWithNoValue];
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v12;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v10 UUID];
      *buf = 138543618;
      v37 = v21;
      v38 = 2112;
      v39 = v22;
      _os_log_impl(&dword_22AEAE000, v20, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Unexpected that userUniqueID and issuerKey arrays are not the same length", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v23 = MEMORY[0x277D0F7C0];
    v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HMMTROperationErrorDomain" code:3 userInfo:0];
    v17 = [v23 futureWithError:v24];
  }

  v30 = *MEMORY[0x277D85DE8];

  return v17;
}

id __90__HMMTRSyncClusterDoorLock_addNewUsersWithUserUniqueIDs_withCorrespondingIssuerKeys_flow___block_invoke(id *a1)
{
  v2 = [a1[4] fetchAvailableUserSlotsWithLimit:objc_msgSend(a1[5] flow:{"count"), a1[6]}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__HMMTRSyncClusterDoorLock_addNewUsersWithUserUniqueIDs_withCorrespondingIssuerKeys_flow___block_invoke_2;
  v11[3] = &unk_2786ECCE0;
  v10 = a1[4];
  v3 = a1[7];
  v4 = a1[6];
  v5 = a1[5];
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v10;
  *(&v7 + 1) = v3;
  v12 = v7;
  v13 = v6;
  v8 = [v2 then:v11];

  return v8;
}

uint64_t __90__HMMTRSyncClusterDoorLock_addNewUsersWithUserUniqueIDs_withCorrespondingIssuerKeys_flow___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] fetchAvailableCredentialSlotsWithLimit:objc_msgSend(a1[5] forCredentialType:"count") flow:{objc_msgSend(&unk_283EE7A10, "integerValue"), a1[6]}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __90__HMMTRSyncClusterDoorLock_addNewUsersWithUserUniqueIDs_withCorrespondingIssuerKeys_flow___block_invoke_3;
  v11[3] = &unk_2786ECCB8;
  v11[4] = a1[4];
  v12 = a1[6];
  v5 = v3;
  v13 = v5;
  v14 = a1[7];
  v15 = a1[5];
  v6 = [v4 then:v11];
  if (v6)
  {
    v7 = v6;

    return 3;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return __90__HMMTRSyncClusterDoorLock_addNewUsersWithUserUniqueIDs_withCorrespondingIssuerKeys_flow___block_invoke_3(v9, v10);
  }
}

uint64_t __90__HMMTRSyncClusterDoorLock_addNewUsersWithUserUniqueIDs_withCorrespondingIssuerKeys_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v9 = *(a1 + 48);
    *buf = 138544130;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v28 = v9;
    LOWORD(v29) = 2112;
    *(&v29 + 2) = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] availableUserSlots: %@ | availableCredentialSlots %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  *&v29 = __Block_byref_object_dispose_;
  *(&v29 + 1) = [MEMORY[0x277D0F7C0] futureWithNoValue];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __90__HMMTRSyncClusterDoorLock_addNewUsersWithUserUniqueIDs_withCorrespondingIssuerKeys_flow___block_invoke_201;
  v20 = &unk_2786ECC90;
  v10 = *(a1 + 32);
  v26 = buf;
  v21 = v10;
  v11 = *(a1 + 56);
  v22 = *(a1 + 48);
  v23 = *(a1 + 40);
  v24 = *(a1 + 64);
  v12 = v3;
  v25 = v12;
  [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:&v17];
  v13 = [*(*&buf[8] + 40) ignoreResult];
  if (!v13)
  {
    _HMFPreconditionFailure();
    __break(1u);
  }

  v14 = v13;

  _Block_object_dispose(buf, 8);
  v15 = *MEMORY[0x277D85DE8];
  return 3;
}

void __90__HMMTRSyncClusterDoorLock_addNewUsersWithUserUniqueIDs_withCorrespondingIssuerKeys_flow___block_invoke_201(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(*(a1 + 72) + 8) + 40);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__HMMTRSyncClusterDoorLock_addNewUsersWithUserUniqueIDs_withCorrespondingIssuerKeys_flow___block_invoke_2_202;
  v12[3] = &unk_2786ECC68;
  v7 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v18 = a3;
  v13 = v7;
  v14 = v5;
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  v8 = v5;
  v9 = [v6 then:v12];
  v10 = *(*(a1 + 72) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

uint64_t __90__HMMTRSyncClusterDoorLock_addNewUsersWithUserUniqueIDs_withCorrespondingIssuerKeys_flow___block_invoke_2_202(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) objectAtIndexedSubscript:*(a1 + 80)];
  v6 = [v4 addUserAtUserIndex:objc_msgSend(v5 withUserUniqueID:"integerValue") userType:objc_msgSend(*(a1 + 48) flow:{"integerValue"), &unk_283EE7A40, *(a1 + 56)}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__HMMTRSyncClusterDoorLock_addNewUsersWithUserUniqueIDs_withCorrespondingIssuerKeys_flow___block_invoke_3_203;
  v15[3] = &unk_2786ECC40;
  v15[4] = *(a1 + 32);
  v7 = *(a1 + 64);
  v9 = *(a1 + 72);
  v8 = *(a1 + 80);
  v16 = v7;
  v20 = v8;
  v17 = v9;
  v18 = *(a1 + 40);
  v19 = *(a1 + 56);
  v10 = [v6 then:v15];
  if (v10)
  {
    v11 = v10;

    return 3;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return __90__HMMTRSyncClusterDoorLock_addNewUsersWithUserUniqueIDs_withCorrespondingIssuerKeys_flow___block_invoke_3_203(v13, v14);
  }
}

uint64_t __90__HMMTRSyncClusterDoorLock_addNewUsersWithUserUniqueIDs_withCorrespondingIssuerKeys_flow___block_invoke_3_203(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) objectAtIndexedSubscript:*(a1 + 72)];
  v6 = [*(a1 + 48) objectAtIndexedSubscript:*(a1 + 72)];
  v7 = [v6 integerValue];
  v8 = [*(a1 + 56) objectAtIndexedSubscript:*(a1 + 72)];
  v9 = [v4 addCredentialData:v5 forCredentialType:&unk_283EE7A10 atIndex:v7 forUserAtUserIndex:v8 flow:*(a1 + 64)];
  if (v9)
  {
    v10 = v9;

    return 3;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return [(HMMTRSyncClusterDoorLock *)v12 fetchAccessorySupportsTapToUnlock];
  }
}

- (id)fetchAccessorySupportsTapToUnlock
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__HMMTRSyncClusterDoorLock_fetchAccessorySupportsTapToUnlock__block_invoke;
  v6[3] = &unk_2786ECB28;
  v6[4] = self;
  v3 = [MEMORY[0x277D0F7B8] untrackedPlaceholderFlow];
  v4 = [(HMMTRSyncClusterDoorLock *)self ensureAccessoryConnected:v6 flow:v3];

  return v4;
}

id __61__HMMTRSyncClusterDoorLock_fetchAccessorySupportsTapToUnlock__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) device];
  v3 = [v2 readAttributeWithEndpointID:&unk_283EE7A40 clusterID:&unk_283EE7AA0 attributeID:&unk_283EE7A40 params:0];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [objc_opt_class() numberFromAttributeDictionary:v3];
    v6 = v5;
    v7 = MEMORY[0x277CBEC28];
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;

    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v12;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_22AEAE000, v11, OS_LOG_TYPE_INFO, "%{public}@Read value for supportsTapToUnlock with value %@ from response: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [MEMORY[0x277D0F7C0] futureWithValue:v8];
  }

  else
  {
    v14 = MEMORY[0x277D0F7C0];
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    v13 = [v14 futureWithError:v15];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)fetchAccessorySupportsPinCodesWithFlow:(id)a3
{
  v4 = [(HMMTRSyncClusterDoorLock *)self fetchFeatureMapWithFlow:a3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HMMTRSyncClusterDoorLock_fetchAccessorySupportsPinCodesWithFlow___block_invoke;
  v7[3] = &unk_2786ECC18;
  v7[4] = self;
  v5 = [v4 then:v7];

  return v5;
}

uint64_t __67__HMMTRSyncClusterDoorLock_fetchAccessorySupportsPinCodesWithFlow___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() doorLockFeatureMapSupportsPinCodes:v3];

  v5 = v4;
  return 1;
}

- (id)_removeUserWithUniqueID:(id)a3 flow:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543874;
    v29 = v11;
    v30 = 2112;
    v31 = v12;
    v32 = 2112;
    v33 = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing user with userUniqueID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [(HMMTRSyncClusterDoorLock *)v9 _findUserOrAvailableSlotWithUserUniqueID:v6 flow:v7];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __57__HMMTRSyncClusterDoorLock__removeUserWithUniqueID_flow___block_invoke;
  v25[3] = &unk_2786ECBF0;
  v25[4] = v9;
  v14 = v7;
  v26 = v14;
  v15 = v6;
  v27 = v15;
  v16 = [v13 then:v25];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __57__HMMTRSyncClusterDoorLock__removeUserWithUniqueID_flow___block_invoke_200;
  v22[3] = &unk_2786F0300;
  v22[4] = v9;
  v23 = v14;
  v24 = v15;
  v17 = v15;
  v18 = v14;
  v19 = [v16 recover:v22];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __57__HMMTRSyncClusterDoorLock__removeUserWithUniqueID_flow___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 user];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 user];
    v7 = [v6 userIndex];
    v8 = [v5 clearUserAtIndex:objc_msgSend(v7 flow:{"integerValue"), *(a1 + 40)}];
    if (!v8)
    {
      _HMFPreconditionFailure();
    }

    v9 = v8;
    v10 = 3;
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [*(a1 + 40) UUID];
      v16 = *(a1 + 48);
      v19 = 138543874;
      v20 = v14;
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v16;
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Did not find user on lock, so nothing to remove. userUniqueID: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t __57__HMMTRSyncClusterDoorLock__removeUserWithUniqueID_flow___block_invoke_200(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v9 = *(a1 + 48);
    v15 = 138544130;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove user with userUniqueID: %@, error: %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = v3;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v13 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)removeUsersCreatedByOurFabricWithFlow:(id)a3 notInUserUniqueIDs:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __85__HMMTRSyncClusterDoorLock_removeUsersCreatedByOurFabricWithFlow_notInUserUniqueIDs___block_invoke;
  v12[3] = &unk_2786ECBC8;
  v13 = v6;
  v14 = v7;
  v12[4] = self;
  v8 = v6;
  v9 = v7;
  v10 = [(HMMTRSyncClusterDoorLock *)self serialize:v12];

  return v10;
}

id __85__HMMTRSyncClusterDoorLock_removeUsersCreatedByOurFabricWithFlow_notInUserUniqueIDs___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = (*(*(a1 + 48) + 16))();
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [*(a1 + 40) UUID];
    *buf = 138543874;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v2;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing users created by our fabric not in userUniqueIDs: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [*(a1 + 32) fetchCurrentFabricIndex_flow:*(a1 + 40)];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__HMMTRSyncClusterDoorLock_removeUsersCreatedByOurFabricWithFlow_notInUserUniqueIDs___block_invoke_193;
  v13[3] = &unk_2786ECA10;
  v9 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = v9;
  v15 = v2;
  v10 = [v8 then:v13];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

uint64_t __85__HMMTRSyncClusterDoorLock_removeUsersCreatedByOurFabricWithFlow_notInUserUniqueIDs___block_invoke_193(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) totalNumberOfUsersSupported_flow:*(a1 + 40)];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __85__HMMTRSyncClusterDoorLock_removeUsersCreatedByOurFabricWithFlow_notInUserUniqueIDs___block_invoke_194;
    v19[3] = &unk_2786EC998;
    v19[4] = *(a1 + 32);
    v20 = v3;
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v21 = v5;
    v22 = v6;
    v7 = [v4 then:v19];
    if (!v7)
    {
      _HMFPreconditionFailure();
    }

    v8 = v7;

    v9 = 3;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v24 = v13;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_22AEAE000, v12, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find current fabric index, not removing any users.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v4 = v15;
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v9 = 2;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t __85__HMMTRSyncClusterDoorLock_removeUsersCreatedByOurFabricWithFlow_notInUserUniqueIDs___block_invoke_194(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = [v3 integerValue];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [v4 findAllUsersWithCreatorFabricIndex:v5 indexStartingAtSlot:1 assumingTotalNumberOfSlots:v6 users:v7 flow:a1[6]];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__HMMTRSyncClusterDoorLock_removeUsersCreatedByOurFabricWithFlow_notInUserUniqueIDs___block_invoke_2;
  v16[3] = &unk_2786EE2F8;
  v9 = a1[4];
  v10 = a1[6];
  v16[4] = a1[7];
  v16[5] = v9;
  v17 = v10;
  v11 = [v8 then:v16];
  if (v11)
  {
    v12 = v11;

    return 3;
  }

  else
  {
    v14 = _HMFPreconditionFailure();
    return __85__HMMTRSyncClusterDoorLock_removeUsersCreatedByOurFabricWithFlow_notInUserUniqueIDs___block_invoke_2(v14, v15);
  }
}

uint64_t __85__HMMTRSyncClusterDoorLock_removeUsersCreatedByOurFabricWithFlow_notInUserUniqueIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__HMMTRSyncClusterDoorLock_removeUsersCreatedByOurFabricWithFlow_notInUserUniqueIDs___block_invoke_3;
  v20[3] = &unk_2786ECB78;
  v20[4] = *(a1 + 32);
  v4 = [v3 na_filter:v20];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(a1 + 48) UUID];
    v10 = [v4 count];
    *buf = 138543874;
    v22 = v8;
    v23 = 2112;
    v24 = v9;
    v25 = 2048;
    v26 = v10;
    _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Found %lu users to remove", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v11 = MEMORY[0x277D0F7C0];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __85__HMMTRSyncClusterDoorLock_removeUsersCreatedByOurFabricWithFlow_notInUserUniqueIDs___block_invoke_196;
  v18[3] = &unk_2786ECBA0;
  v12 = *(a1 + 48);
  v18[4] = *(a1 + 40);
  v19 = v12;
  v13 = [v4 na_map:v18];
  v14 = [v11 allSettled:v13];
  if (!v14)
  {
    _HMFPreconditionFailure();
  }

  v15 = v14;

  v16 = *MEMORY[0x277D85DE8];
  return 3;
}

uint64_t __85__HMMTRSyncClusterDoorLock_removeUsersCreatedByOurFabricWithFlow_notInUserUniqueIDs___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 userUniqueID];
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 userUniqueID];
    v7 = [v5 containsObject:v6] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __85__HMMTRSyncClusterDoorLock_removeUsersCreatedByOurFabricWithFlow_notInUserUniqueIDs___block_invoke_196(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v9 = [v3 userIndex];
    v10 = [v3 userUniqueID];
    *buf = 138544130;
    v23 = v7;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    v28 = 2112;
    v29 = v10;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Removing user with index: %@ and uniqueID: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v11 = *(a1 + 32);
  v12 = [v3 userIndex];
  v13 = [v11 clearUserAtIndex:objc_msgSend(v12 flow:{"integerValue"), *(a1 + 40)}];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__HMMTRSyncClusterDoorLock_removeUsersCreatedByOurFabricWithFlow_notInUserUniqueIDs___block_invoke_197;
  v19[3] = &unk_2786F0300;
  v14 = *(a1 + 40);
  v19[4] = *(a1 + 32);
  v20 = v14;
  v21 = v3;
  v15 = v3;
  v16 = [v13 recover:v19];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __85__HMMTRSyncClusterDoorLock_removeUsersCreatedByOurFabricWithFlow_notInUserUniqueIDs___block_invoke_197(id *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] UUID];
    v9 = [a1[6] userIndex];
    v10 = [a1[6] userUniqueID];
    v16 = 138544386;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to remove user with index: %@ and uniqueID: %@. Error: %@", &v16, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  v11 = v3;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v14 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)removeUserWithUniqueID:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HMMTRSyncClusterDoorLock_removeUserWithUniqueID___block_invoke;
  v8[3] = &unk_2786ECB50;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(HMMTRSyncClusterDoorLock *)self serialize:v8];

  return v6;
}

id __51__HMMTRSyncClusterDoorLock_removeUserWithUniqueID___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    v8 = *(a1 + 40);
    v12 = 138543874;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Matter Users}] Removing user with uniqueID: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = [*(a1 + 32) _removeUserWithUniqueID:*(a1 + 40) flow:v2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)removeAllUsers
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__HMMTRSyncClusterDoorLock_removeAllUsers__block_invoke;
  v4[3] = &unk_2786ECB28;
  v4[4] = self;
  v2 = [(HMMTRSyncClusterDoorLock *)self serialize:v4];

  return v2;
}

id __42__HMMTRSyncClusterDoorLock_removeAllUsers__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    *buf = 138543618;
    v21 = v6;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Matter Users}] Removing all users", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v8 = [*(a1 + 32) fetchCurrentFabricIndex_flow:v2];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __42__HMMTRSyncClusterDoorLock_removeAllUsers__block_invoke_191;
  v17 = &unk_2786ECB00;
  v18 = *(a1 + 32);
  v19 = v2;
  v9 = v2;
  v10 = [v8 then:&v14];
  v11 = [v10 ignoreResult];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __42__HMMTRSyncClusterDoorLock_removeAllUsers__block_invoke_191(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) totalNumberOfUsersSupported_flow:*(a1 + 40)];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __42__HMMTRSyncClusterDoorLock_removeAllUsers__block_invoke_192;
    v17[3] = &unk_2786ECA10;
    v17[4] = *(a1 + 32);
    v18 = v3;
    v19 = *(a1 + 40);
    v5 = [v4 then:v17];
    if (!v5)
    {
      _HMFPreconditionFailure();
    }

    v6 = v5;

    v7 = 3;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to find current fabric index so not removing any users.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    v4 = v13;
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v7 = 2;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __42__HMMTRSyncClusterDoorLock_removeAllUsers__block_invoke_192(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [v3 integerValue];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [v4 findAllUsersWithCreatorFabricIndex:v5 indexStartingAtSlot:1 assumingTotalNumberOfSlots:v6 users:v7 flow:*(a1 + 48)];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__HMMTRSyncClusterDoorLock_removeAllUsers__block_invoke_2;
  v14[3] = &unk_2786ECAD8;
  v14[4] = *(a1 + 32);
  v15 = *(a1 + 48);
  v9 = [v8 then:v14];
  if (v9)
  {
    v10 = v9;

    return 3;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return __42__HMMTRSyncClusterDoorLock_removeAllUsers__block_invoke_2(v12, v13);
  }
}

uint64_t __42__HMMTRSyncClusterDoorLock_removeAllUsers__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D0F7C0];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __42__HMMTRSyncClusterDoorLock_removeAllUsers__block_invoke_3;
  v15 = &unk_2786ECAB0;
  v5 = *(a1 + 40);
  v16 = *(a1 + 32);
  v17 = v5;
  v6 = [v3 na_map:&v12];
  v7 = [v4 allSettled:{v6, v12, v13, v14, v15, v16}];
  if (v7)
  {
    v8 = v7;

    return 3;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return __42__HMMTRSyncClusterDoorLock_removeAllUsers__block_invoke_3(v10, v11);
  }
}

id __42__HMMTRSyncClusterDoorLock_removeAllUsers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 userIndex];
  v5 = [v3 clearUserAtIndex:objc_msgSend(v4 flow:{"integerValue"), *(a1 + 40)}];

  return v5;
}

- (id)__getUserAtIndex:(int64_t)a3 includeAliroCredentials:(BOOL)a4 temporaryCachedAliroCredentials:(id)a5 flow:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v11 UUID];
    *buf = 138543874;
    v28 = v15;
    v29 = 2112;
    v30 = v16;
    v31 = 2048;
    v32 = a3;
    _os_log_impl(&dword_22AEAE000, v14, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] getUserAtIndex: %ld", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __106__HMMTRSyncClusterDoorLock___getUserAtIndex_includeAliroCredentials_temporaryCachedAliroCredentials_flow___block_invoke;
  v22[3] = &unk_2786ECA88;
  v26 = a4;
  v22[4] = v13;
  v23 = v10;
  v24 = v11;
  v25 = a3;
  v17 = v11;
  v18 = v10;
  v19 = [(HMMTRSyncClusterDoorLock *)v13 ensureAccessoryConnected:v22 flow:v17];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id __106__HMMTRSyncClusterDoorLock___getUserAtIndex_includeAliroCredentials_temporaryCachedAliroCredentials_flow___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD53A8]);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 56)];
  [v2 setUserIndex:v3];

  v14 = 0;
  v4 = [MEMORY[0x277D0F7C0] futureWithPromise:&v14];
  v5 = [v14 resolverBlock];
  v6 = [*(a1 + 32) apiRouter];
  [v6 getUserWithParams:v2 includeAliroCredentials:*(a1 + 64) temporaryCachedAliroCredentials:*(a1 + 40) flow:*(a1 + 48) completion:v5];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __106__HMMTRSyncClusterDoorLock___getUserAtIndex_includeAliroCredentials_temporaryCachedAliroCredentials_flow___block_invoke_2;
  v11[3] = &unk_2786ECA60;
  v11[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v12 = v7;
  v13 = v8;
  v9 = [v4 recover:v11];

  return v9;
}

uint64_t __106__HMMTRSyncClusterDoorLock___getUserAtIndex_includeAliroCredentials_temporaryCachedAliroCredentials_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v9 = *(a1 + 48);
    v15 = 138544130;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2048;
    v20 = v9;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Failed to get user at index: %ld with error: %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = v3;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v13 = *MEMORY[0x277D85DE8];
  return 2;
}

- (id)getUserAtIndex:(int64_t)a3 flow:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__HMMTRSyncClusterDoorLock_getUserAtIndex_flow___block_invoke;
  v10[3] = &unk_2786ECA38;
  v11 = v6;
  v12 = a3;
  v10[4] = self;
  v7 = v6;
  v8 = [(HMMTRSyncClusterDoorLock *)self serialize:v10];

  return v8;
}

- (id)getUsersWithUniqueIDs:(id)a3 flow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__HMMTRSyncClusterDoorLock_getUsersWithUniqueIDs_flow___block_invoke;
  v12[3] = &unk_2786EC948;
  v12[4] = self;
  v13 = v7;
  v14 = v6;
  v8 = v6;
  v9 = v7;
  v10 = [(HMMTRSyncClusterDoorLock *)self serialize:v12];

  return v10;
}

id __55__HMMTRSyncClusterDoorLock_getUsersWithUniqueIDs_flow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchCurrentFabricIndex_flow:*(a1 + 40)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__HMMTRSyncClusterDoorLock_getUsersWithUniqueIDs_flow___block_invoke_2;
  v6[3] = &unk_2786ECA10;
  v3 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 48);
  v4 = [v2 then:v6];

  return v4;
}

uint64_t __55__HMMTRSyncClusterDoorLock_getUsersWithUniqueIDs_flow___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] totalNumberOfUsersSupported_flow:a1[5]];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__HMMTRSyncClusterDoorLock_getUsersWithUniqueIDs_flow___block_invoke_3;
  v11[3] = &unk_2786EC998;
  v11[4] = a1[4];
  v5 = v3;
  v12 = v5;
  v13 = a1[5];
  v14 = a1[6];
  v6 = [v4 then:v11];
  if (v6)
  {
    v7 = v6;

    return 3;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return __55__HMMTRSyncClusterDoorLock_getUsersWithUniqueIDs_flow___block_invoke_3(v9, v10);
  }
}

uint64_t __55__HMMTRSyncClusterDoorLock_getUsersWithUniqueIDs_flow___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = [v3 integerValue];
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = [v4 findAllUsersWithCreatorFabricIndex:v5 indexStartingAtSlot:1 assumingTotalNumberOfSlots:v6 users:v7 flow:*(a1 + 48)];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__HMMTRSyncClusterDoorLock_getUsersWithUniqueIDs_flow___block_invoke_4;
  v14[3] = &unk_2786EC9E8;
  v15 = *(a1 + 56);
  v9 = [v8 then:v14];
  if (v9)
  {
    v10 = v9;

    return 3;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return __55__HMMTRSyncClusterDoorLock_getUsersWithUniqueIDs_flow___block_invoke_4(v12, v13);
  }
}

uint64_t __55__HMMTRSyncClusterDoorLock_getUsersWithUniqueIDs_flow___block_invoke_4(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__HMMTRSyncClusterDoorLock_getUsersWithUniqueIDs_flow___block_invoke_5;
  v4[3] = &unk_2786EC9C0;
  v5 = *(a1 + 32);
  [a2 na_map:v4];
  objc_claimAutoreleasedReturnValue();

  return 1;
}

id __55__HMMTRSyncClusterDoorLock_getUsersWithUniqueIDs_flow___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 userUniqueID];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_findUserOrAvailableSlotWithUserUniqueID:(id)a3 flow:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543618;
    v26 = v11;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] findHomeUserOrAvailableSlot", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [(HMMTRSyncClusterDoorLock *)v9 fetchCurrentFabricIndex_flow:v7];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__HMMTRSyncClusterDoorLock__findUserOrAvailableSlotWithUserUniqueID_flow___block_invoke;
  v21[3] = &unk_2786EC998;
  v21[4] = v9;
  v22 = v7;
  v23 = v6;
  v24 = v13;
  v15 = v13;
  v16 = v6;
  v17 = v7;
  v18 = [v14 then:v21];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __74__HMMTRSyncClusterDoorLock__findUserOrAvailableSlotWithUserUniqueID_flow___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] totalNumberOfUsersSupported_flow:a1[5]];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__HMMTRSyncClusterDoorLock__findUserOrAvailableSlotWithUserUniqueID_flow___block_invoke_2;
  v11[3] = &unk_2786EC970;
  v11[4] = a1[4];
  v12 = a1[6];
  v13 = a1[7];
  v5 = v3;
  v14 = v5;
  v15 = a1[5];
  v6 = [v4 then:v11];
  if (v6)
  {
    v7 = v6;

    return 3;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return __74__HMMTRSyncClusterDoorLock__findUserOrAvailableSlotWithUserUniqueID_flow___block_invoke_2(v9, v10);
  }
}

uint64_t __74__HMMTRSyncClusterDoorLock__findUserOrAvailableSlotWithUserUniqueID_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) findHomeUserWithUniqueID:*(a1 + 40) indexStartingAtSlot:1 assumingTotalNumberOfSlots:objc_msgSend(v3 availableSlots:"integerValue") currentFabricIndex:*(a1 + 48) flow:{*(a1 + 56), *(a1 + 64)}];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return [(HMMTRSyncClusterDoorLock *)v7 findUserOrAvailableSlotWithUserUniqueID:v8 flow:v9, v10];
  }
}

- (id)findUserOrAvailableSlotWithUserUniqueID:(id)a3 flow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__HMMTRSyncClusterDoorLock_findUserOrAvailableSlotWithUserUniqueID_flow___block_invoke;
  v12[3] = &unk_2786EC948;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [(HMMTRSyncClusterDoorLock *)self serialize:v12];

  return v10;
}

- (id)findOrAddUserWithUniqueID:(id)a3 flow:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v7 UUID];
    *buf = 138543874;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v6;
    _os_log_impl(&dword_22AEAE000, v10, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] findOrAddUserWithUniqueID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_flow___block_invoke;
  v18[3] = &unk_2786EC948;
  v18[4] = v9;
  v19 = v6;
  v20 = v7;
  v13 = v7;
  v14 = v6;
  v15 = [(HMMTRSyncClusterDoorLock *)v9 serialize:v18];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)findOrAddUserWithUniqueID:(id)a3 withFlow:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [(HMMTRSyncClusterDoorLock *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_withFlow___block_invoke;
  v16[3] = &unk_2786EF378;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v10 = v8;
  v19 = v10;
  v11 = v7;
  v12 = v6;
  dispatch_async(v9, v16);

  v13 = v19;
  v14 = v10;

  return v10;
}

void __63__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_withFlow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) findOrAddUserWithUniqueID:*(a1 + 40) flow:*(a1 + 48)];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_withFlow___block_invoke_2;
  v6[3] = &unk_2786EC8F8;
  v7 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __63__HMMTRSyncClusterDoorLock_findOrAddUserWithUniqueID_withFlow___block_invoke_3;
  v4[3] = &unk_2786EC920;
  v5 = *(a1 + 56);
  v3 = [v2 then:v6 orRecover:v4];
}

- (void)lockDoorWithAccessoryUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HMMTRSyncClusterDoorLock_lockDoorWithAccessoryUUID_completionHandler___block_invoke;
  v11[3] = &unk_2786ECBC8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [(HMMTRSyncClusterDoorLock *)self serialize:v11];
}

id __72__HMMTRSyncClusterDoorLock_lockDoorWithAccessoryUUID_completionHandler___block_invoke(id *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = a1[4];
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    v8 = a1[5];
    v9 = MEMORY[0x2318887D0](a1[6]);
    *buf = 138544130;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Lock ReadWrite}] Locking door with accessoryUUID: %@ completionHandler: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v3);
  v10 = [a1[4] accessoryHasCOTAEnabledWithFlow:v2];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __72__HMMTRSyncClusterDoorLock_lockDoorWithAccessoryUUID_completionHandler___block_invoke_179;
  v15[3] = &unk_2786EC8D0;
  v15[4] = a1[4];
  v16 = v2;
  v18 = a1[6];
  v17 = a1[5];
  v11 = v2;
  v12 = [v10 then:v15];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __72__HMMTRSyncClusterDoorLock_lockDoorWithAccessoryUUID_completionHandler___block_invoke_179(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 BOOLValue];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v35 = v9;
      v36 = 2112;
      v37 = v10;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Accessory has COTA enabled", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = [*(a1 + 32) deriveHomePinFromUUID:*(a1 + 48) flow:*(a1 + 40)];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __72__HMMTRSyncClusterDoorLock_lockDoorWithAccessoryUUID_completionHandler___block_invoke_181;
    v28[3] = &unk_2786EC880;
    v12 = *(a1 + 40);
    v28[4] = *(a1 + 32);
    v29 = v12;
    v30 = *(a1 + 56);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __72__HMMTRSyncClusterDoorLock_lockDoorWithAccessoryUUID_completionHandler___block_invoke_184;
    v25[3] = &unk_2786EC8A8;
    v13 = *(a1 + 40);
    v25[4] = *(a1 + 32);
    v26 = v13;
    v27 = *(a1 + 56);
    v14 = [v11 then:v28 orRecover:v25];
    if (!v14)
    {
      _HMFPreconditionFailure();
    }

    v15 = v14;
    v16 = 3;
  }

  else
  {
    if (v8)
    {
      v17 = HMFGetLogIdentifier();
      v18 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v35 = v17;
      v36 = 2112;
      v37 = v18;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Accessory does not have COTA enabled", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v19 = [*(a1 + 32) lock_flow:*(a1 + 40)];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __72__HMMTRSyncClusterDoorLock_lockDoorWithAccessoryUUID_completionHandler___block_invoke_180;
    v31[3] = &unk_2786EC808;
    v20 = *(a1 + 56);
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v33 = v20;
    v31[4] = v21;
    v32 = v22;
    [v19 getResultWithCompletion:v31];

    v16 = 1;
    v11 = v33;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v16;
}

void __72__HMMTRSyncClusterDoorLock_lockDoorWithAccessoryUUID_completionHandler___block_invoke_180(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 48))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v13 = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Calling completion with error: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 48) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __72__HMMTRSyncClusterDoorLock_lockDoorWithAccessoryUUID_completionHandler___block_invoke_181(id *a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] UUID];
    *buf = 138543874;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] homePin: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [a1[4] lockWithPin:v3 flow:a1[5]];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __72__HMMTRSyncClusterDoorLock_lockDoorWithAccessoryUUID_completionHandler___block_invoke_182;
  v23[3] = &unk_2786F0300;
  v10 = a1[5];
  v23[4] = a1[4];
  v24 = v10;
  v11 = v3;
  v25 = v11;
  v12 = [v9 recover:v23];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__HMMTRSyncClusterDoorLock_lockDoorWithAccessoryUUID_completionHandler___block_invoke_2;
  v20[3] = &unk_2786EC858;
  v13 = a1[6];
  v14 = a1[4];
  v15 = a1[5];
  v22 = v13;
  v20[4] = v14;
  v21 = v15;
  [v12 getResultWithCompletion:v20];
  v16 = v12;
  if (!v16)
  {
    _HMFPreconditionFailure();
  }

  v17 = v16;

  v18 = *MEMORY[0x277D85DE8];
  return 3;
}

uint64_t __72__HMMTRSyncClusterDoorLock_lockDoorWithAccessoryUUID_completionHandler___block_invoke_184(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create home pin, aborting", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = MEMORY[0x2318887D0](*(a1 + 48));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __72__HMMTRSyncClusterDoorLock_lockDoorWithAccessoryUUID_completionHandler___block_invoke_182(id *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 domain];
  v5 = v4;
  if (v4 != *MEMORY[0x277CD5158])
  {

LABEL_6:
    v11 = objc_autoreleasePoolPush();
    v12 = a1[4];
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [a1[5] UUID];
      v16 = [v3 domain];
      *buf = 138544130;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = v16;
      v29 = 2048;
      v30 = [v3 code];
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not attempting to add home pin because the write failed for a different reason than our COTA pin being rejected. ErrorDomain: %@, ErrorCode: %ld", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    v17 = v3;
    if (v17)
    {
      v7 = v17;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
      v7 = 0;
    }

    v10 = 2;
    goto LABEL_12;
  }

  v6 = [v3 code];

  if (v6 != 1)
  {
    goto LABEL_6;
  }

  v7 = [a1[4] provisionHomePin:a1[6] flow:a1[5]];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __72__HMMTRSyncClusterDoorLock_lockDoorWithAccessoryUUID_completionHandler___block_invoke_183;
  v20[3] = &unk_2786EC830;
  v20[4] = a1[4];
  v21 = a1[6];
  v22 = a1[5];
  v8 = [v7 then:v20];
  if (!v8)
  {
    _HMFPreconditionFailure();
  }

  v9 = v8;

  v10 = 3;
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

void __72__HMMTRSyncClusterDoorLock_lockDoorWithAccessoryUUID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 48))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v13 = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Calling completion with error: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 48) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __72__HMMTRSyncClusterDoorLock_lockDoorWithAccessoryUUID_completionHandler___block_invoke_183(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) lockWithPin:*(a1 + 40) flow:*(a1 + 48)];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    [(HMMTRSyncClusterDoorLock *)v6 unlockDoorWithAccessoryUUID:v7 completionHandler:v8, v9];
  }
}

- (void)unlockDoorWithAccessoryUUID:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__HMMTRSyncClusterDoorLock_unlockDoorWithAccessoryUUID_completionHandler___block_invoke;
  v11[3] = &unk_2786ECBC8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v8 = v7;
  v9 = v6;
  v10 = [(HMMTRSyncClusterDoorLock *)self serialize:v11];
}

id __74__HMMTRSyncClusterDoorLock_unlockDoorWithAccessoryUUID_completionHandler___block_invoke(id *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F7B8] internalOnlyInitializer];
  v3 = objc_autoreleasePoolPush();
  v4 = a1[4];
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v2 UUID];
    v8 = a1[5];
    v9 = MEMORY[0x2318887D0](a1[6]);
    *buf = 138544130;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    v23 = 2112;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_22AEAE000, v5, OS_LOG_TYPE_INFO, "%{public}@[NewFlow: %@ {Feature:Lock ReadWrite}] Unlocking door with accessoryUUID: %@ completionHandler: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v3);
  v10 = [a1[4] accessoryHasCOTAEnabledWithFlow:v2];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__HMMTRSyncClusterDoorLock_unlockDoorWithAccessoryUUID_completionHandler___block_invoke_166;
  v15[3] = &unk_2786EC8D0;
  v15[4] = a1[4];
  v16 = v2;
  v18 = a1[6];
  v17 = a1[5];
  v11 = v2;
  v12 = [v10 then:v15];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __74__HMMTRSyncClusterDoorLock_unlockDoorWithAccessoryUUID_completionHandler___block_invoke_166(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 BOOLValue];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v4)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v35 = v9;
      v36 = 2112;
      v37 = v10;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Accessory has COTA enabled", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v11 = [*(a1 + 32) deriveHomePinFromUUID:*(a1 + 48) flow:*(a1 + 40)];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __74__HMMTRSyncClusterDoorLock_unlockDoorWithAccessoryUUID_completionHandler___block_invoke_169;
    v28[3] = &unk_2786EC880;
    v12 = *(a1 + 40);
    v28[4] = *(a1 + 32);
    v29 = v12;
    v30 = *(a1 + 56);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __74__HMMTRSyncClusterDoorLock_unlockDoorWithAccessoryUUID_completionHandler___block_invoke_176;
    v25[3] = &unk_2786EC8A8;
    v13 = *(a1 + 40);
    v25[4] = *(a1 + 32);
    v26 = v13;
    v27 = *(a1 + 56);
    v14 = [v11 then:v28 orRecover:v25];
    if (!v14)
    {
      _HMFPreconditionFailure();
    }

    v15 = v14;
    v16 = 3;
  }

  else
  {
    if (v8)
    {
      v17 = HMFGetLogIdentifier();
      v18 = [*(a1 + 40) UUID];
      *buf = 138543618;
      v35 = v17;
      v36 = 2112;
      v37 = v18;
      _os_log_impl(&dword_22AEAE000, v7, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Accessory does not have COTA enabled", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v19 = [*(a1 + 32) unlock_flow:*(a1 + 40)];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __74__HMMTRSyncClusterDoorLock_unlockDoorWithAccessoryUUID_completionHandler___block_invoke_167;
    v31[3] = &unk_2786EC808;
    v20 = *(a1 + 56);
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v33 = v20;
    v31[4] = v21;
    v32 = v22;
    [v19 getResultWithCompletion:v31];

    v16 = 1;
    v11 = v33;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v16;
}

void __74__HMMTRSyncClusterDoorLock_unlockDoorWithAccessoryUUID_completionHandler___block_invoke_167(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 48))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v13 = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Calling completion with error: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 48) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __74__HMMTRSyncClusterDoorLock_unlockDoorWithAccessoryUUID_completionHandler___block_invoke_169(id *a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [a1[5] UUID];
    *buf = 138543874;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] homePin: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = [a1[4] unlockWithPin:v3 flow:a1[5]];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __74__HMMTRSyncClusterDoorLock_unlockDoorWithAccessoryUUID_completionHandler___block_invoke_170;
  v23[3] = &unk_2786F0300;
  v10 = a1[5];
  v23[4] = a1[4];
  v24 = v10;
  v11 = v3;
  v25 = v11;
  v12 = [v9 recover:v23];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__HMMTRSyncClusterDoorLock_unlockDoorWithAccessoryUUID_completionHandler___block_invoke_2;
  v20[3] = &unk_2786EC858;
  v13 = a1[6];
  v14 = a1[4];
  v15 = a1[5];
  v22 = v13;
  v20[4] = v14;
  v21 = v15;
  [v12 getResultWithCompletion:v20];
  v16 = v12;
  if (!v16)
  {
    _HMFPreconditionFailure();
  }

  v17 = v16;

  v18 = *MEMORY[0x277D85DE8];
  return 3;
}

uint64_t __74__HMMTRSyncClusterDoorLock_unlockDoorWithAccessoryUUID_completionHandler___block_invoke_176(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) UUID];
    v13 = 138543618;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to create home pin, aborting", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = MEMORY[0x2318887D0](*(a1 + 48));
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __74__HMMTRSyncClusterDoorLock_unlockDoorWithAccessoryUUID_completionHandler___block_invoke_170(id *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 domain];
  v5 = v4;
  if (v4 != *MEMORY[0x277CD5158])
  {

LABEL_6:
    v11 = objc_autoreleasePoolPush();
    v12 = a1[4];
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [a1[5] UUID];
      v16 = [v3 domain];
      *buf = 138544130;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = v16;
      v29 = 2048;
      v30 = [v3 code];
      _os_log_impl(&dword_22AEAE000, v13, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Not attempting to add home pin because the write failed for a different reason than our COTA pin being rejected. ErrorDomain: %@, ErrorCode: %ld", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    v17 = v3;
    if (v17)
    {
      v7 = v17;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
      v7 = 0;
    }

    v10 = 2;
    goto LABEL_12;
  }

  v6 = [v3 code];

  if (v6 != 1)
  {
    goto LABEL_6;
  }

  v7 = [a1[4] provisionHomePin:a1[6] flow:a1[5]];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__HMMTRSyncClusterDoorLock_unlockDoorWithAccessoryUUID_completionHandler___block_invoke_171;
  v20[3] = &unk_2786EC830;
  v20[4] = a1[4];
  v21 = a1[6];
  v22 = a1[5];
  v8 = [v7 then:v20];
  if (!v8)
  {
    _HMFPreconditionFailure();
  }

  v9 = v8;

  v10 = 3;
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

void __74__HMMTRSyncClusterDoorLock_unlockDoorWithAccessoryUUID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*(a1 + 48))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) UUID];
      v13 = 138543874;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&dword_22AEAE000, v9, OS_LOG_TYPE_INFO, "%{public}@[Flow: %@] Calling completion with error: %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 48) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __74__HMMTRSyncClusterDoorLock_unlockDoorWithAccessoryUUID_completionHandler___block_invoke_171(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) unlockWithPin:*(a1 + 40) flow:*(a1 + 48)];
  if (v4)
  {
    v5 = v4;

    return 3;
  }

  else
  {
    v7 = _HMFPreconditionFailure();
    return [(HMMTRSyncClusterDoorLock *)v7 ensureAccessoryConnected:v8 flow:v9, v10];
  }
}

- (id)ensureAccessoryConnected:(id)a3 flow:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMMTRSyncClusterDoorLock *)self accessoryServer];

  if (v8)
  {
    *buf = 0;
    v9 = [MEMORY[0x277D0F7C0] futureWithPromise:buf];
    v10 = objc_alloc(MEMORY[0x277D0F7A8]);
    v11 = [(HMMTRSyncClusterDoorLock *)self queue];
    v12 = [v10 initWithQueue:v11];

    v13 = [(HMMTRSyncClusterDoorLock *)self accessoryServer];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __58__HMMTRSyncClusterDoorLock_ensureAccessoryConnected_flow___block_invoke;
    v27[3] = &unk_2786F0EA8;
    v28 = v12;
    v29 = *buf;
    v30 = v6;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __58__HMMTRSyncClusterDoorLock_ensureAccessoryConnected_flow___block_invoke_3;
    v22[3] = &unk_2786EC7E0;
    v23 = v28;
    v24 = self;
    v25 = v7;
    v26 = v29;
    v14 = v28;
    [v13 queueAccessoryOperation:v27 highPriority:1 completion:v22];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v7 UUID];
      *buf = 138543618;
      *&buf[4] = v18;
      v32 = 2112;
      v33 = v19;
      _os_log_impl(&dword_22AEAE000, v17, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Accessory server is nil", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v9 = v6[2](v6);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v9;
}

void __58__HMMTRSyncClusterDoorLock_ensureAccessoryConnected_flow___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__HMMTRSyncClusterDoorLock_ensureAccessoryConnected_flow___block_invoke_2;
  v3[3] = &unk_2786EF5A8;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 performBlock:v3];
}

void __58__HMMTRSyncClusterDoorLock_ensureAccessoryConnected_flow___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__HMMTRSyncClusterDoorLock_ensureAccessoryConnected_flow___block_invoke_4;
    v5[3] = &unk_2786EF3C8;
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);
    v5[4] = *(a1 + 40);
    v6 = v4;
    v7 = *(a1 + 56);
    [v3 performBlock:v5];
  }
}

void __58__HMMTRSyncClusterDoorLock_ensureAccessoryConnected_flow___block_invoke_4(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) UUID];
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_22AEAE000, v4, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to connect to Matter accessory", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = *(a1 + 48);
  v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11 reason:@"Failed to connect to Matter accessory"];
  [v7 rejectWithError:v8];

  v9 = *MEMORY[0x277D85DE8];
}

void __58__HMMTRSyncClusterDoorLock_ensureAccessoryConnected_flow___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(*(a1 + 40) + 16))();
  [v1 resolveWithFuture:v2];
}

- (id)serialize:(id)a3
{
  v4 = a3;
  v18 = 0;
  v5 = [MEMORY[0x277D0F7C0] futureWithPromise:&v18];
  os_unfair_lock_lock_with_options();
  v6 = [(HMMTRSyncClusterDoorLock *)self apiSerializationFuture];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __38__HMMTRSyncClusterDoorLock_serialize___block_invoke;
  v14 = &unk_2786EE6B8;
  v15 = v18;
  v7 = v4;
  v17 = v7;
  v8 = v5;
  v16 = v8;
  v9 = [v6 finally:&v11];
  [(HMMTRSyncClusterDoorLock *)self setApiSerializationFuture:v9, v11, v12, v13, v14];

  os_unfair_lock_unlock(&self->_unfairLock);

  return v8;
}

HMMTRSyncClusterDoorLock *__38__HMMTRSyncClusterDoorLock_serialize___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(*(a1 + 48) + 16))();
  [v2 resolveWithFuture:v3];

  v4 = *(a1 + 40);
  if (v4)
  {

    return 3;
  }

  else
  {
    v6 = _HMFPreconditionFailure();
    return [(HMMTRSyncClusterDoorLock *)v6 initWithDevice:v7 endpoint:v8 queue:v9 accessoryServer:v10, v11];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t280 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t280, &__block_literal_global_369);
  }

  v3 = logCategory__hmf_once_v281;

  return v3;
}

uint64_t __39__HMMTRSyncClusterDoorLock_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  logCategory__hmf_once_v281 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)validateFutureResults:(id)a3 ofClass:(Class)a4 areNullable:(BOOL)a5 flow:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = [v10 na_map:&__block_literal_global_297];
  if ([v12 hmf_isEmpty])
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __75__HMMTRSyncClusterDoorLock_validateFutureResults_ofClass_areNullable_flow___block_invoke_298;
    v23[3] = &__block_descriptor_41_e16___NSData_16__0_8lu32l8;
    v24 = a5;
    v23[4] = a4;
    v13 = [v10 na_map:v23];
    v14 = [v13 count];
    if (v14 == [v10 count])
    {
      v15 = 0;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = a1;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [v11 UUID];
        *buf = 138544130;
        v29 = v19;
        v30 = 2112;
        v31 = v20;
        v32 = 2112;
        v33 = v10;
        v34 = 2112;
        v35 = v13;
        _os_log_impl(&dword_22AEAE000, v18, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to cast future results to correct type. results: %@, finalResults: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v16);
      v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:15];
    }
  }

  else
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __75__HMMTRSyncClusterDoorLock_validateFutureResults_ofClass_areNullable_flow___block_invoke_2;
    v25[3] = &unk_2786ED288;
    v27 = a1;
    v26 = v11;
    [v12 na_each:v25];
    v15 = [v12 firstObject];
    v13 = v26;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v15;
}

void __75__HMMTRSyncClusterDoorLock_validateFutureResults_ofClass_areNullable_flow___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 40);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) UUID];
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_22AEAE000, v6, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Error in future results: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
}

void *__75__HMMTRSyncClusterDoorLock_validateFutureResults_ofClass_areNullable_flow___block_invoke_298(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == 1 && ((objc_opt_class(), v4 = v3, (objc_opt_isKindOfClass() & 1) == 0) ? (v5 = 0) : (v5 = v4), v6 = v5, v4, v6, v6))
  {
    objc_opt_class();
  }

  else
  {
    v7 = *(a1 + 32);
  }

  v8 = v3;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

void *__75__HMMTRSyncClusterDoorLock_validateFutureResults_ofClass_areNullable_flow___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

+ (id)deriveHomePinFromUUID:(id)a3 withNumberOfDigits:(int64_t)a4 flow:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = MEMORY[0x277CCACA8];
  v11 = [v8 UUIDString];
  v12 = [v10 stringWithFormat:@"%@ %@", v11, @"Home Pin"];

  v33 = [v12 hmmtr_sha256hash];
  if ([v33 length] >= a4)
  {
    v31 = v12;
    v32 = v8;
    v19 = [MEMORY[0x277CCAB68] string];
    if (a4 < 1)
    {
LABEL_9:
      v18 = v19;
      v8 = v32;
    }

    else
    {
      v20 = 0;
      while (1)
      {
        v21 = [v33 substringWithRange:{v20, 1}];
        v22 = [MEMORY[0x277CCAC80] scannerWithString:v21];
        v34 = 0;
        if (([v22 scanHexInt:&v34] & 1) == 0)
        {
          break;
        }

        v34 %= 0xAu;
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v34];
        [v19 appendString:v23];

        if (a4 == ++v20)
        {
          goto LABEL_9;
        }
      }

      v24 = objc_autoreleasePoolPush();
      v25 = a1;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [v9 UUID];
        *buf = 138543874;
        v36 = v27;
        v37 = 2112;
        v38 = v28;
        v39 = 2112;
        v40 = v21;
        _os_log_impl(&dword_22AEAE000, v26, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Failed to scan hex to int from hash: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
      v18 = 0;
      v8 = v32;
    }

    v12 = v31;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v9 UUID];
      *buf = 138544130;
      v36 = v16;
      v37 = 2112;
      v38 = v17;
      v39 = 2112;
      v40 = v33;
      v41 = 2048;
      v42 = a4;
      _os_log_impl(&dword_22AEAE000, v15, OS_LOG_TYPE_ERROR, "%{public}@[Flow: %@] Number of digits exceeds total size of hash. Hash: %@, numberOfDigits: %ld", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
    v18 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)dataOfReadValue:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD5188]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [v7 isEqual:*MEMORY[0x277CD5168]];
    v9 = 0;
    if (v8)
    {
      v10 = [v4 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v9 = v11;
    }

    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)valueFromDictionaryWithData:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
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

  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)valueFromAttributeResponse:(id)a3
{
  if (a3)
  {
    v4 = [a3 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      v7 = [a1 valueFromDictionaryWithData:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)numberFromAttributeDictionary:(id)a3
{
  if (a3)
  {
    v3 = [a3 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)numberFromAttributeResponse:(id)a3
{
  v3 = [a1 valueFromAttributeResponse:a3];
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

  return v4;
}

uint64_t __46__HMMTRSyncClusterDoorLock_sortedArrayOfData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 length];
  if (v6 == [v5 length])
  {
    v7 = memcmp([v4 bytes], objc_msgSend(v5, "bytes"), objc_msgSend(v4, "length")) >> 31;
  }

  else
  {
    v8 = [v4 length];
    v7 = v8 < [v5 length];
  }

  if (v7)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (id)doorLockFeatureMapSupportsAliroBLEUWB:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a3, "unsignedIntValue") & 0x4000}];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "BOOLValue")}];

  return v5;
}

+ (id)doorLockFeatureMapSupportsAliroProvisioning:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a3, "unsignedIntValue") & 0x2000}];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "BOOLValue")}];

  return v5;
}

+ (id)doorLockFeatureMapSupportsYearDaySchedule:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a3, "unsignedIntValue") & 0x400}];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "BOOLValue")}];

  return v5;
}

+ (id)doorLockFeatureMapSupportsWeekDaySchedule:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a3, "unsignedIntValue") & 0x10}];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "BOOLValue")}];

  return v5;
}

+ (id)doorLockFeatureMapSupportsPinCodes:(id)a3
{
  v3 = MEMORY[0x277CCABB0];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a3, "unsignedIntValue") & 1}];
  v5 = [v3 numberWithBool:{objc_msgSend(v4, "BOOLValue")}];

  return v5;
}

@end