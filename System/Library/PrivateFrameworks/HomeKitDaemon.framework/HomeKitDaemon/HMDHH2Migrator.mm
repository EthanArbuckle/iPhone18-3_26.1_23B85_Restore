@interface HMDHH2Migrator
+ (BOOL)shouldIgnoreModel:(id)a3;
+ (id)arrayByRemovingElementsInArray:(id)a3 fromArray:(id)a4;
+ (id)auditedHomeAccessCodeModelsFromModels:(id)a3 userAccessCodeModelsAndInvites:(id)a4;
+ (id)auditedUserAccessCodeModelsAndInvitesFromModels:(id)a3;
+ (id)logCategory;
+ (id)userAccessCodeFromModel:(id)a3;
+ (int64_t)compareUserAccessCodeInModel:(id)a3 withModel:(id)a4;
- (BOOL)_performMigrationFromTestDirectoryUsingHH2ControllerKey:(id)a3;
- (BOOL)_saveAndResetWithContext:(id)a3 errorMessage:(id)a4;
- (BOOL)_startMigratingHomeDataFromLocation:(id)a3 usingHH2PairingKey:(id)a4;
- (BOOL)didCoreDataPushAllModelsToCloudKit:(id)a3 previousToken:(id)a4 cloudStore:(id)a5;
- (BOOL)fetchAndMigrateCameraSettingsFromAccessory:(id)a3 fromLocalZone:(id)a4 managedObjectContext:(id)a5;
- (BOOL)fetchAndMigrateCompositeSettingsFromAccessory:(id)a3 fromLocalZone:(id)a4 managedObjectContext:(id)a5;
- (BOOL)handlePostMigration;
- (BOOL)makeSureToCreateHH2SentinelZoneWithError:(id *)a3;
- (BOOL)migrateAccessoryV5Models:(id)a3 fromLocalZone:(id)a4 forHome:(id)a5 owner:(id)a6;
- (BOOL)migrateCameraProfileSettingModel:(id)a3 accessory:(id)a4 managedObjectContext:(id)a5;
- (BOOL)migrateCompositeAccessorySettingModel:(id)a3 accessory:(id)a4 managedObjectContext:(id)a5;
- (BOOL)migrateHome:(id)a3 primaryHomeUUID:(id)a4 managedObjectContext:(id)a5 hh2ControllerKey:(id)a6;
- (BOOL)migrateHomeData:(id)a3 managedObjectContext:(id)a4 hh2ControllerKey:(id)a5;
- (BOOL)migrateHomeManager:(id)a3 managedObjectContext:(id)a4 hh2ControllerKey:(id)a5;
- (BOOL)migrateHomePersonModelsForHomeUUID:(id)a3 localZone:(id)a4 managedObjectContext:(id)a5;
- (BOOL)migrateHomeToCoreData:(id)a3 primaryHomeUUID:(id)a4 managedObjectContext:(id)a5 hh2ControllerKey:(id)a6;
- (BOOL)migrateMediaContentProfileAccessControl:(id)a3 forOwnerUser:(id)a4 fromLocalZone:(id)a5;
- (BOOL)migratePersonFaceCropModelsForLocalZone:(id)a3;
- (BOOL)migratePhotosPersonManagerSettingsFromLocalZone:(id)a3 owner:(id)a4 managedObjectContext:(id)a5;
- (BOOL)migrateUserListeningHistoryControl:(id)a3 forOwnerUser:(id)a4 fromLocalZone:(id)a5;
- (BOOL)migrateUserSettingsToCoreData:(id)a3 forUser:(id)a4 fromLocalZone:(id)a5;
- (BOOL)migrateV5Models:(id)a3 forHome:(id)a4;
- (BOOL)migrateV5PersonDataForHome:(id)a3 managedObjectContext:(id)a4;
- (BOOL)populateAndSaveCDModelsFrom:(id)a3 managedObjectContext:(id)a4 hh2ControllerKey:(id)a5 tag:(id)a6;
- (BOOL)rollAccessoryKeysToHH2:(id)a3 hh2ControllerKey:(id)a4;
- (BOOL)saveUserSettingsToCoreData:(id)a3 forUser:(id)a4 privateSettingsMap:(id)a5;
- (BOOL)scheduleAccessoryKeyMigration:(id)a3 oldPairingIdentity:(id)a4 hh2PairingIdentity:(id)a5;
- (BOOL)startMigratingHomeDataFromLocation:(id)a3;
- (BOOL)startMigrationFromLocation:(id)a3;
- (BOOL)startMigrationIfNeeded;
- (BOOL)waitForCDToExportModelsToCloudKit:(id)a3;
- (BOOL)waitForCloudKitSyncForProcessingResult:(id)a3 error:(id *)a4;
- (BOOL)waitForCloudTransformToRun;
- (BOOL)waitForFirstImportToFinish;
- (BOOL)waitForStartupForCloudZone:(id)a3;
- (BOOL)waitForV5UpdatesToSyncToCloudKit;
- (HMDHH2Migrator)init;
- (HMDHH2Migrator)initWithMigratorRecord:(id)a3 hh2FrameworkSwitch:(id)a4 coreData:(id)a5 cloudTransform:(id)a6 backgroundOperationManager:(id)a7 defaultDatabase:(id)a8 cameraClipsDatabase:(id)a9 cloudkitReachabilitySource:(id)a10;
- (id)_auditAccessCodesByRemovingIllegalDuplicatesFromModels:(id)a3;
- (id)allObjectIDsFromTransactions:(id)a3 cloudStoreIdentifier:(id)a4;
- (id)backingStoreObjectsForAccountsAndDevices:(id)a3;
- (id)findAndRemoveAllModelsWithInvalidAccessCodes:(id)a3;
- (id)makeListOfArchivesToMigrate:(id)a3;
- (id)openZoneWithName:(id)a3 inDatabase:(id)a4;
- (id)privateZoneForOwnerUser:(id)a3;
- (id)sharedZoneForOwnerUser:(id)a3;
- (void)_createResidentModelsDuringMigrationForAppleMediaAccessory:(id)a3 context:(id)a4;
- (void)_fixUpHomeWithoutOwner:(id)a3 withHH2ControllerKey:(id)a4 context:(id)a5;
- (void)_fixupAccessoryWithNoInitialValues:(id)a3;
- (void)_fixupAccessoryWithNoRoom:(id)a3 coreDataModelObject:(id)a4;
- (void)_fixupActionSetInvalidName:(id)a3 context:(id)a4;
- (void)_fixupActionSetUnlocalizedName:(id)a3;
- (void)_fixupAppleMediaAccessory:(id)a3 context:(id)a4;
- (void)_fixupAssistantAccessControlForUserModel:(id)a3;
- (void)_fixupCharacteristicEventTriggerInvalidService:(id)a3 context:(id)a4;
- (void)_fixupCharacteristicWriteActionWithInvalidService:(id)a3 context:(id)a4;
- (void)_fixupGuestAccessCodeWithInvalidLabel:(id)a3 context:(id)a4;
- (void)_fixupHomeInvalidName:(id)a3 context:(id)a4;
- (void)_fixupHomeManagerPairingIdentity:(id)a3 withHH2ControllerKey:(id)a4 context:(id)a5;
- (void)_fixupInvalidCharacteristicFormat:(id)a3 context:(id)a4;
- (void)_fixupOutgoingInvitationModel:(id)a3;
- (void)_fixupSoftwareUpdateModelWithNoAccessory:(id)a3 coreDataModelObject:(id)a4;
- (void)_fixupTriggerInvalidName:(id)a3 context:(id)a4;
- (void)_fixupUserAccessCodeWithInvalidValue:(id)a3 context:(id)a4;
- (void)_fixupUserAuthorizationDataForUserModel:(id)a3;
- (void)_fixupUserPairingIdentity:(id)a3 withHH2ControllerKey:(id)a4 context:(id)a5;
- (void)_fixupUserUUID:(id)a3;
- (void)_updatePairingIdentityForHome:(id)a3 withHH2ControllerKey:(id)a4 context:(id)a5;
- (void)dealloc;
- (void)fixupModelForMigration:(id)a3 backingStoreModelObject:(id)a4 hh2ControllerKey:(id)a5;
- (void)fixupPreviousFailedMigrationModelsWithHomeData:(id)a3 managedObjectContext:(id)a4;
- (void)revertChangesPerformedDuringMigration;
- (void)submitABCEventForFailedMigrationWithReason:(unint64_t)a3 withError:(id)a4;
@end

@implementation HMDHH2Migrator

- (id)makeListOfArchivesToMigrate:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = *MEMORY[0x277CBE868];
  v27[0] = *MEMORY[0x277CBE8E8];
  v27[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __46__HMDHH2Migrator_makeListOfArchivesToMigrate___block_invoke;
  v25[3] = &unk_278682C78;
  v25[4] = self;
  v8 = [v5 enumeratorAtURL:v4 includingPropertiesForKeys:v7 options:0 errorHandler:v25];

  v9 = [MEMORY[0x277CBEB58] set];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v22;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        v16 = [v15 pathExtension];
        v17 = [v16 isEqual:@"sqlite"];

        if (v17)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v12);
  }

  v18 = [v9 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __46__HMDHH2Migrator_makeListOfArchivesToMigrate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Not adding file : %@ to migration list due to %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_performMigrationFromTestDirectoryUsingHH2ControllerKey:(id)a3
{
  v59 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v8 = hh1TestArchivesDirectoryPath;
    *buf = 138543618;
    v52 = v7;
    v53 = 2112;
    v54 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Was asked to migrate from test directory : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = MEMORY[0x277CBEBC0];
  v10 = hh1TestArchivesDirectoryPath;
  v40 = [v9 fileURLWithPath:v10];

  if (isInternalBuild())
  {
    v11 = [MEMORY[0x277CFEC78] systemStore];
    v50 = 0;
    v12 = [v11 getOrCreateLocalPairingIdentity:&v50];
    v39 = v50;

    v13 = v12 != 0;
    if (v12)
    {
      v14 = [(HMDHH2Migrator *)v5 makeListOfArchivesToMigrate:v40];
      v15 = objc_autoreleasePoolPush();
      v16 = v5;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v18;
        v53 = 2112;
        v54 = v14;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@List of files to Migrate : %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v19 = [MEMORY[0x277CBEB58] set];
      v46 = 0;
      v47 = &v46;
      v48 = 0x2020000000;
      v49 = 0;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __74__HMDHH2Migrator__performMigrationFromTestDirectoryUsingHH2ControllerKey___block_invoke;
      v42[3] = &unk_278682C50;
      v42[4] = v16;
      v43 = v41;
      v45 = &v46;
      v20 = v19;
      v44 = v20;
      [v14 hmf_enumerateWithAutoreleasePoolUsingBlock:v42];
      v21 = [v14 count];
      v22 = objc_autoreleasePoolPush();
      v23 = v16;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21 - *(v47 + 6)];
        v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
        *buf = 138544130;
        v52 = v25;
        v53 = 2112;
        v54 = v26;
        v55 = 2112;
        v56 = v27;
        v57 = 2112;
        v58 = v20;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Final Migration Status Succeeded: %@/%@, Failed list : %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v22);
      v28 = [(HMDHH2Migrator *)v23 migratorRecord];
      [v28 finishMigration];

      _Block_object_dispose(&v46, 8);
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = v5;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v36;
        v53 = 2112;
        v54 = v39;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Unable to get / create HH1 controller key : %@. Failing the test migration", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
    }
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = v5;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v52 = v32;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Cannot migrate test archives as this is not an internal build", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v13 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v13;
}

void __74__HMDHH2Migrator__performMigrationFromTestDirectoryUsingHH2ControllerKey___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v20 = [MEMORY[0x277CBEAA8] date];
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v22 = v7;
    v23 = 2112;
    v24 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Picked up the file for migration: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = [v3 path];
  v11 = [v9 _startMigratingHomeDataFromLocation:v10 usingHH2PairingKey:*(a1 + 40)];

  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    if (v11)
    {
      v16 = @"successfully";
    }

    else
    {
      v16 = @"with an error";
    }

    v17 = [MEMORY[0x277CBEAA8] date];
    [v17 timeIntervalSinceDate:v20];
    *buf = 138544130;
    v22 = v15;
    v23 = 2112;
    v24 = v3;
    v25 = 2112;
    v26 = v16;
    v27 = 2048;
    v28 = v18;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Migration of [%@] finished [%@]. Total time: %f", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v12);
  if ((v11 & 1) == 0)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    [*(a1 + 48) addObject:v3];
  }

  objc_autoreleasePoolPop(v8);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)submitABCEventForFailedMigrationWithReason:(unint64_t)a3 withError:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277D0F8E0] processInfo];
  v8 = objc_alloc(MEMORY[0x277D6AFC8]);
  v9 = dispatch_get_global_queue(2, 0);
  v10 = [v8 initWithQueue:v9];

  v11 = [v7 name];
  v12 = [v10 signatureWithDomain:@"HomeKit" type:@"CoreData" subType:@"Migration" detectedProcess:v11 triggerThresholdValues:0];

  v13 = a3 - 1;
  if (a3 - 1 > 8)
  {
    v14 = @"Unknown";
  }

  else
  {
    v14 = off_278682C98[v13];
  }

  v15 = v14;
  [v12 setObject:v15 forKeyedSubscript:*MEMORY[0x277D6B1F0]];

  if (v6)
  {
    v16 = [v6 description];
    [v12 setObject:v16 forKeyedSubscript:*MEMORY[0x277D6B1B8]];
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "identifier")}];
  [v12 setObject:v17 forKeyedSubscript:*MEMORY[0x277D6B1E0]];

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v61 = v21;
    v62 = 2112;
    v63 = v12;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Submitting ABC event with signature: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  v22 = dispatch_group_create();
  dispatch_group_enter(v22);
  v23 = [MEMORY[0x277CBEAA8] date];
  [v23 timeIntervalSinceDate:v19->_migrationStartTime];
  v25 = v24;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __71__HMDHH2Migrator_submitABCEventForFailedMigrationWithReason_withError___block_invoke;
  v58[3] = &unk_278682C28;
  v58[4] = v19;
  v26 = v22;
  v59 = v26;
  v27 = [v10 snapshotWithSignature:v12 duration:0 event:0 payload:v58 reply:v25];

  if ((v27 & 1) == 0)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = v19;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v56 = v6;
      v31 = v13;
      v32 = v10;
      v34 = v33 = v7;
      *buf = 138543362;
      v61 = v34;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to submit ABC event", buf, 0xCu);

      v7 = v33;
      v10 = v32;
      v13 = v31;
      v6 = v56;
    }

    objc_autoreleasePoolPop(v28);
  }

  v35 = dispatch_time(0, 5000000000);
  if (dispatch_group_wait(v26, v35))
  {
    v36 = objc_autoreleasePoolPush();
    v37 = v19;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v57 = v26;
      v39 = v12;
      v40 = v6;
      v41 = v13;
      v42 = v10;
      v44 = v43 = v7;
      *buf = 138543362;
      v61 = v44;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Timed out waiting for ABC event submission to finish", buf, 0xCu);

      v7 = v43;
      v10 = v42;
      v13 = v41;
      v6 = v40;
      v12 = v39;
      v26 = v57;
    }

    objc_autoreleasePoolPop(v36);
  }

  v45 = objc_autoreleasePoolPush();
  v46 = v19;
  v47 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    v48 = HMFGetLogIdentifier();
    *buf = 138543618;
    v61 = v48;
    v62 = 2112;
    v63 = v6;
    _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@Migration to HH2 failed with error: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v45);
  v49 = objc_autoreleasePoolPush();
  v50 = v46;
  v51 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
  {
    v52 = HMFGetLogIdentifier();
    *buf = 138543362;
    v61 = v52;
    _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_FAULT, "%{public}@Migration to HH2 failed", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v49);
  if (v13 > 8)
  {
    v53 = @"Unknown";
  }

  else
  {
    v53 = off_278682C98[v13];
  }

  v54 = v53;
  [HMDHH2MigrationStateLogger recordMigrationFailedWithError:v6 withReason:v54];

  v55 = *MEMORY[0x277D85DE8];
}

void __71__HMDHH2Migrator_submitABCEventForFailedMigrationWithReason_withError___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@ABC event submission finished with response: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)waitForFirstImportToFinish
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHH2Migrator *)self migratorRecord];
  if ([v3 migrateFromTestDirectory])
  {

LABEL_4:
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Not going to wait for first import to finish as we are running without live CloudKit", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = 1;
    goto LABEL_12;
  }

  v4 = [(HMDHH2Migrator *)self migratorRecord];
  v5 = [v4 dryRun];

  if (v5)
  {
    goto LABEL_4;
  }

  v20 = 0;
  v21 = 0;
  v11 = [(HMDHH2Migrator *)self coreData];
  v12 = [v11 firstCloudKitImportFuture];
  v10 = [v12 waitForResult:&v20 orError:&v21 withTimeout:900.0];

  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = HMFGetLogIdentifier();
    v17 = HMFBooleanToString();
    *buf = 138543874;
    v23 = v16;
    v24 = 2112;
    v25 = v17;
    v26 = 2112;
    v27 = v21;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Did first import finished: %@ error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  if ((v10 & 1) == 0)
  {
    [(HMDHH2Migrator *)v14 submitABCEventForFailedMigrationWithReason:3 withError:v21];
  }

LABEL_12:
  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)migratePersonFaceCropModelsForLocalZone:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v8;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Migrating person face crop models for local zone: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [v4 queryModelsOfType:objc_opt_class()];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __58__HMDHH2Migrator_migratePersonFaceCropModelsForLocalZone___block_invoke;
  v18[3] = &unk_278682C00;
  v11 = v9;
  v19 = v11;
  v12 = v4;
  v20 = v12;
  v21 = v6;
  [v10 enumerateObjectsUsingBlock:v18];
  if ([v11 count])
  {
    v13 = [MEMORY[0x277D17108] optionsWithLabel:@"Migrate face crop models to HH2"];
    v14 = [v12 updateModels:v11 options:v13];
    v15 = [(HMDHH2Migrator *)v6 v5ModelUpdateFutures];
    [v15 addObject:v14];
  }

  v16 = *MEMORY[0x277D85DE8];
  return 1;
}

void __58__HMDHH2Migrator_migratePersonFaceCropModelsForLocalZone___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [HMDFaceCropModel alloc];
  v5 = [v3 hmbModelID];
  v6 = [v3 hmbParentModelID];
  v12 = [(HMBModel *)v4 initWithModelID:v5 parentModelID:v6];

  v7 = [v3 person];

  v8 = [v7 hmbModelID];
  [(HMDFaceCropModel *)v12 setPersonUUID:v8];

  [a1[4] addObject:v12];
  if ([a1[4] count] >= 0x15)
  {
    v9 = [MEMORY[0x277D17108] optionsWithLabel:@"Migrate face crop models to HH2"];
    v10 = [a1[5] updateModels:a1[4] options:v9];
    v11 = [a1[6] v5ModelUpdateFutures];
    [v11 addObject:v10];

    [a1[4] removeAllObjects];
  }
}

- (BOOL)migrateHomePersonModelsForHomeUUID:(id)a3 localZone:(id)a4 managedObjectContext:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Migrating home person models for local zone: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v27 = 1;
  v15 = [v9 queryModelsOfType:objc_opt_class()];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __84__HMDHH2Migrator_migrateHomePersonModelsForHomeUUID_localZone_managedObjectContext___block_invoke;
  v21[3] = &unk_278682BD8;
  v16 = v10;
  v22 = v16;
  v23 = v12;
  v17 = v8;
  v24 = v17;
  v25 = buf;
  [v15 enumerateObjectsUsingBlock:v21];
  v18 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

void __84__HMDHH2Migrator_migrateHomePersonModelsForHomeUUID_localZone_managedObjectContext___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__HMDHH2Migrator_migrateHomePersonModelsForHomeUUID_localZone_managedObjectContext___block_invoke_2;
  v11[3] = &unk_278682BB0;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v11[4] = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  v14 = v8;
  v15 = v9;
  v16 = a3;
  v10 = v5;
  [v6 performBlockAndWait:v11];
}

void __84__HMDHH2Migrator_migrateHomePersonModelsForHomeUUID_localZone_managedObjectContext___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v26 = v5;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Migrating home person model: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [(_MKFModel *)_MKFHome modelWithModelID:*(a1 + 48) context:*(a1 + 56)];
  if (v7)
  {
    v8 = [*(a1 + 40) hmbModelID];
    v9 = [(_MKFModel *)_MKFHomePerson modelWithModelID:v8 context:*(a1 + 56)];
    if (!v9)
    {
      v9 = [[_MKFHomePerson alloc] initWithContext:*(a1 + 56)];
      [(_MKFHomePerson *)v9 setModelID:v8];
      [(_MKFHomePerson *)v9 setHome:v7];
    }

    v10 = [*(a1 + 40) name];
    [(_MKFHomePerson *)v9 setName:v10];

    v11 = *(a1 + 56);
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to save home person for home person model: %@", *(a1 + 40)];
    *(*(*(a1 + 64) + 8) + 24) = [v12 _saveAndResetWithContext:v11 errorMessage:v13];

    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = *(a1 + 40);
        *buf = 138543618;
        v26 = v17;
        v27 = 2112;
        v28 = v18;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Successfully migrated home person model: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }

    else
    {
      **(a1 + 72) = 1;
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = *(a1 + 48);
      *buf = 138543618;
      v26 = v22;
      v27 = 2112;
      v28 = v23;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to find home with model ID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    *(*(*(a1 + 64) + 8) + 24) = 0;
    **(a1 + 72) = 1;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)migrateV5PersonDataForHome:(id)a3 managedObjectContext:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 personManagerZoneUUID];
  if (v8)
  {
    v9 = [HMDHomePersonManager zoneNameForZoneUUID:v8];
    v10 = [(HMDHH2Migrator *)self cameraClipsDatabase];
    v11 = [(HMDHH2Migrator *)self openZoneWithName:v9 inDatabase:v10];

    v12 = objc_autoreleasePoolPush();
    if (!v11)
    {
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v30 = 138543618;
        v31 = v22;
        v32 = 2112;
        v33 = v6;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to open home person manager zone for home: %@", &v30, 0x16u);
      }

      goto LABEL_18;
    }

    v13 = [v6 uuid];
    v14 = [(HMDHH2Migrator *)self migrateHomePersonModelsForHomeUUID:v13 localZone:v11 managedObjectContext:v7];

    if (v14)
    {
      objc_autoreleasePoolPop(v12);
      v12 = objc_autoreleasePoolPush();
      if ([(HMDHH2Migrator *)self migratePersonFaceCropModelsForLocalZone:v11])
      {
        v15 = 1;
LABEL_19:
        objc_autoreleasePoolPop(v12);

        goto LABEL_20;
      }

      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v26 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v26;
      v32 = 2112;
      v33 = v6;
      v27 = "%{public}@Failed to migrate person face crop models for home: %@";
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
LABEL_17:

        objc_autoreleasePoolPop(v23);
LABEL_18:
        v15 = 0;
        goto LABEL_19;
      }

      v26 = HMFGetLogIdentifier();
      v30 = 138543618;
      v31 = v26;
      v32 = 2112;
      v33 = v6;
      v27 = "%{public}@Failed to migrate home person models for home: %@";
    }

    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, v27, &v30, 0x16u);

    goto LABEL_17;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v30 = 138543362;
    v31 = v19;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Not migrating home person models because no home person manager zone UUID exists", &v30, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  v15 = 1;
LABEL_20:

  v28 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)migrateCameraProfileSettingModel:(id)a3 accessory:(id)a4 managedObjectContext:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2112;
    v28 = v8;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Found camera profile setting model on accessory : [%@], [%@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v28) = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __82__HMDHH2Migrator_migrateCameraProfileSettingModel_accessory_managedObjectContext___block_invoke;
  v21[3] = &unk_278689D98;
  v15 = v9;
  v22 = v15;
  v16 = v10;
  v23 = v16;
  v24 = v12;
  v26 = buf;
  v17 = v8;
  v25 = v17;
  [v16 performBlockAndWait:v21];
  v18 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

void __82__HMDHH2Migrator_migrateCameraProfileSettingModel_accessory_managedObjectContext___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [(_MKFModel *)_MKFHAPAccessory modelWithModelID:v2 context:*(a1 + 40)];

  if (v3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 56), "accessModeAtHome")}];
    [v3 setCameraAccessModeAtHome:v4];

    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 56), "accessModeNotAtHome")}];
    [v3 setCameraAccessModeNotAtHome:v5];

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 56), "recordingEventTriggers")}];
    [v3 setCameraRecordingEventTriggers:v6];

    v7 = [*(a1 + 56) activityZones];
    [v3 setCameraActivityZones:v7];

    v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 56), "activityZonesIncludedForSignificantEventDetection")}];
    [v3 setCameraActivityZonesIncludedForSignificantEventDetection:v8];

    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = MEMORY[0x277CCACA8];
    v12 = [v3 debugDescription];
    v13 = [v11 stringWithFormat:@"Unable to save the camera profile settings for: %@", v12];
    *(*(*(a1 + 64) + 8) + 24) = [v9 _saveAndResetWithContext:v10 errorMessage:v13];

    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 48);
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [v3 debugDescription];
        *buf = 138543618;
        v25 = v17;
        v26 = 2112;
        v27 = v18;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Successfully stored camera profile settings for %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 48);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v22;
      v26 = 2112;
      v27 = 0;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to get MKFHAPAccessory for %@. Failing the migration due to that.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)fetchAndMigrateCameraSettingsFromAccessory:(id)a3 fromLocalZone:(id)a4 managedObjectContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v11 = [v8 uuid];
  v12 = [v9 queryModelsWithParentModelID:v11 ofType:objc_opt_class()];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __96__HMDHH2Migrator_fetchAndMigrateCameraSettingsFromAccessory_fromLocalZone_managedObjectContext___block_invoke;
  v16[3] = &unk_278682B88;
  v19 = &v20;
  v16[4] = self;
  v13 = v8;
  v17 = v13;
  v14 = v10;
  v18 = v14;
  [v12 enumerateObjectsUsingBlock:v16];
  LOBYTE(v10) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v10;
}

uint64_t __96__HMDHH2Migrator_fetchAndMigrateCameraSettingsFromAccessory_fromLocalZone_managedObjectContext___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) migrateCameraProfileSettingModel:a2 accessory:*(a1 + 40) managedObjectContext:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  return result;
}

- (BOOL)migrateCompositeAccessorySettingModel:(id)a3 accessory:(id)a4 managedObjectContext:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v8 debugDescription];
    *buf = 138543874;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2112;
    v29 = v15;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Found composite accessory setting model on accessory : [%@], [%@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v29) = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __87__HMDHH2Migrator_migrateCompositeAccessorySettingModel_accessory_managedObjectContext___block_invoke;
  v22[3] = &unk_278689D98;
  v16 = v9;
  v23 = v16;
  v17 = v10;
  v24 = v17;
  v25 = v12;
  v27 = buf;
  v18 = v8;
  v26 = v18;
  [v17 performBlockAndWait:v22];
  v19 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  v20 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

void __87__HMDHH2Migrator_migrateCompositeAccessorySettingModel_accessory_managedObjectContext___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [(_MKFModel *)_MKFHAPAccessory modelWithModelID:v2 context:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 56) root_siri_soundAlert_value];
    [v3 setSoundAlertEnabled:v4];

    v5 = [*(a1 + 56) root_siri_lightWhenUsingSiri_value];
    [v3 setLightWhenUsingSiriEnabled:v5];

    v6 = [*(a1 + 56) root_siri_siriEnabled_value];
    [v3 setSiriEnabled:v6];

    v7 = [*(a1 + 56) root_siri_language_inputLanguageCodeValueName];
    [v3 setSiriLanguageCode:v7];

    v8 = [*(a1 + 56) root_siri_language_outputLanguageVoiceCodeValueName];
    [v3 setSiriLanguageVoiceCode:v8];

    v9 = [*(a1 + 56) root_siri_language_outputLanguageGenderCodeValueName];
    [v3 setSiriLanguageVoiceGenderCode:v9];

    v10 = [*(a1 + 56) root_siri_language_voiceNameValueName];
    [v3 setSiriLanguageVoiceName:v10];

    v11 = [*(a1 + 56) root_home_dismissedHomePodHasNonMemberMediaAccountWarning_value];
    [v3 setHasDismissedHomePodHasNonMemberMediaAccountWarning:v11];

    v12 = [*(a1 + 56) root_doorbellChime_enabled_value];
    [v3 setDoorbellChimeEnabled:v12];

    v13 = [*(a1 + 56) root_announce_enabled_value];
    [v3 setAnnounceEnabled:v13];

    v14 = [*(a1 + 56) root_general_accessibility_vision_doubleTapSettings_timeoutSettings_timeoutInterval_value];
    [v3 setVisionDoubleTapSettingsTimeoutInterval:v14];

    v15 = [*(a1 + 56) root_general_accessibility_vision_voiceOver_enabled_value];
    [v3 setVisionVoiceOverEnabled:v15];

    v16 = [*(a1 + 56) root_general_accessibility_vision_voiceOver_audioDuckingEnabled_value];
    [v3 setVisionVoiceOverAudioDuckingEnabled:v16];

    v17 = [*(a1 + 56) root_general_accessibility_vision_speakingRateSection_speakingRate_value];
    [v3 setVisionSpeakingRate:v17];

    v18 = [*(a1 + 56) root_general_accessibility_interaction_holdDuration_enabled_value];
    [v3 setInteractionHoldDurationEnabled:v18];

    v19 = [*(a1 + 56) root_general_accessibility_interaction_holdDuration_seconds_value];
    [v3 setInteractionHoldDurationSeconds:v19];

    v20 = [*(a1 + 56) root_general_accessibility_interaction_touchAccommodations_enabled_value];
    [v3 setInteractionTouchAccommodationsEnabled:v20];

    v21 = [*(a1 + 56) root_general_accessibility_interaction_ignoreRepeat_enabled_value];
    [v3 setInteractionIgnoreRepeatEnabled:v21];

    v22 = [*(a1 + 56) root_general_accessibility_interaction_ignoreRepeat_seconds_value];
    [v3 setInteractionIgnoreRepeatSeconds:v22];

    v23 = [*(a1 + 56) root_general_analytics_shareSiriAnalytics_value];
    [v3 setShareSiriAnalytics:v23];

    v24 = [*(a1 + 56) root_general_analytics_shareSpeakerAnalytics_value];
    [v3 setShareSpeakerAnalytics:v24];

    v25 = [*(a1 + 56) root_airPlay_airPlayEnabled_value];
    [v3 setAirPlayEnabled:v25];

    v26 = [*(a1 + 56) root_siriEndpoint_enabled_value];
    [v3 setSiriEndpointEnabled:v26];

    v28 = *(a1 + 40);
    v27 = *(a1 + 48);
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to save the sidekick settings for: %@", v3];
    *(*(*(a1 + 64) + 8) + 24) = [v27 _saveAndResetWithContext:v28 errorMessage:v29];

    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      v30 = objc_autoreleasePoolPush();
      v31 = *(a1 + 48);
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        v34 = [v3 debugDescription];
        *buf = 138543618;
        v41 = v33;
        v42 = 2112;
        v43 = v34;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Successfully stored sidekick settings for %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
    }
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = *(a1 + 48);
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v38;
      v42 = 2112;
      v43 = 0;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Unable to get MKFHAPAccessory for %@. Failing the migration due to that.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)fetchAndMigrateCompositeSettingsFromAccessory:(id)a3 fromLocalZone:(id)a4 managedObjectContext:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v11 = [v8 uuid];
  v12 = [v9 queryModelsWithParentModelID:v11 ofType:objc_opt_class()];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __99__HMDHH2Migrator_fetchAndMigrateCompositeSettingsFromAccessory_fromLocalZone_managedObjectContext___block_invoke;
  v16[3] = &unk_278682B60;
  v19 = &v20;
  v16[4] = self;
  v13 = v8;
  v17 = v13;
  v14 = v10;
  v18 = v14;
  [v12 enumerateObjectsUsingBlock:v16];
  LOBYTE(v10) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v10;
}

uint64_t __99__HMDHH2Migrator_fetchAndMigrateCompositeSettingsFromAccessory_fromLocalZone_managedObjectContext___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) migrateCompositeAccessorySettingModel:a2 accessory:*(a1 + 40) managedObjectContext:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  return result;
}

- (BOOL)migratePhotosPersonManagerSettingsFromLocalZone:(id)a3 owner:(id)a4 managedObjectContext:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2112;
    v27 = v8;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Migrating person manager settings for user: %@, localZone: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v27) = 1;
  v15 = [v8 queryModelsOfType:objc_opt_class()];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __93__HMDHH2Migrator_migratePhotosPersonManagerSettingsFromLocalZone_owner_managedObjectContext___block_invoke;
  v21[3] = &unk_278682B38;
  v16 = v9;
  v22 = v16;
  v17 = v10;
  v23 = v17;
  v24 = v12;
  v25 = buf;
  [v15 enumerateObjectsUsingBlock:v21];
  v18 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

void __93__HMDHH2Migrator_migratePhotosPersonManagerSettingsFromLocalZone_owner_managedObjectContext___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) uuid];
  v7 = [(_MKFModel *)_MKFUser modelWithModelID:v6 context:*(a1 + 40)];

  if (v7)
  {
    v8 = [v5 sharingFaceClassificationsEnabled];
    [v7 setSharePhotosFaceClassifications:v8];

    v9 = [v5 zoneUUID];
    [v7 setPhotosPersonDataZoneUUID:v9];

    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to save the photos person manager settings for: %@", *(a1 + 32)];
    *(*(*(a1 + 56) + 8) + 24) = [v10 _saveAndResetWithContext:v11 errorMessage:v12];

    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 48);
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = *(a1 + 32);
        *buf = 138543618;
        v25 = v16;
        v26 = 2112;
        v27 = v17;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully stored photos person manager settings for %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 48);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = *(a1 + 32);
      *buf = 138543618;
      v25 = v21;
      v26 = 2112;
      v27 = v22;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Not sure how this happened. Unable to find the MKFUser for : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    *a3 = 1;
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)migrateAccessoryV5Models:(id)a3 fromLocalZone:(id)a4 forHome:(id)a5 owner:(id)a6
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v17;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Will look for all the V5 models and migrate them for home : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v29 = 1;
  v18 = [v12 accessories];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __71__HMDHH2Migrator_migrateAccessoryV5Models_fromLocalZone_forHome_owner___block_invoke;
  v24[3] = &unk_278682B10;
  v24[4] = v15;
  v19 = v12;
  v25 = v19;
  v27 = buf;
  v20 = v10;
  v26 = v20;
  [v18 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];

  v21 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);

  v22 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

void __71__HMDHH2Migrator_migrateAccessoryV5Models_fromLocalZone_forHome_owner___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) uuid];
  v10 = [HMDCompositeSettingsControllerManager zoneNameForHomeUUID:v9];
  v11 = [*(a1 + 32) defaultDatabase];
  v12 = [v8 openZoneWithName:v10 inDatabase:v11];

  if (v12)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) fetchAndMigrateCompositeSettingsFromAccessory:v6 fromLocalZone:v12 managedObjectContext:*(a1 + 48)];
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [v6 debugDescription];
        v23 = 138543618;
        v24 = v19;
        v25 = 2112;
        v26 = v20;
        v21 = "%{public}@Could not migrate sidekick settings for accessory : %@";
        goto LABEL_9;
      }

LABEL_10:

      objc_autoreleasePoolPop(v16);
      *a4 = 1;
      goto LABEL_11;
    }
  }

  objc_autoreleasePoolPop(v7);
  v7 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = [HMDCameraProfileSettingsManager zoneNameForHome:*(a1 + 40)];
  v15 = [*(a1 + 32) defaultDatabase];
  v12 = [v13 openZoneWithName:v14 inDatabase:v15];

  if (v12)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) fetchAndMigrateCameraSettingsFromAccessory:v6 fromLocalZone:v12 managedObjectContext:*(a1 + 48)];
    if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [v6 debugDescription];
        v23 = 138543618;
        v24 = v19;
        v25 = 2112;
        v26 = v20;
        v21 = "%{public}@Could not migrate camera profile settings for accessory : %@";
LABEL_9:
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, v21, &v23, 0x16u);

        goto LABEL_10;
      }

      goto LABEL_10;
    }
  }

LABEL_11:

  objc_autoreleasePoolPop(v7);
  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)saveUserSettingsToCoreData:(id)a3 forUser:(id)a4 privateSettingsMap:(id)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@User Settings : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v38 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __72__HMDHH2Migrator_saveUserSettingsToCoreData_forUser_privateSettingsMap___block_invoke;
  v27[3] = &unk_278689D98;
  v15 = v9;
  v28 = v15;
  v16 = v8;
  v29 = v16;
  v30 = v12;
  v17 = v10;
  v31 = v17;
  v32 = buf;
  [v16 performBlockAndWait:v27];
  v18 = objc_autoreleasePoolPush();
  v19 = v12;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v22 = *(*&buf[8] + 24);
    v23 = HMFBooleanToString();
    *v33 = 138543618;
    v34 = v21;
    v35 = 2112;
    v36 = v23;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Migrating user's owned settings finished : %@", v33, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  v24 = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  v25 = *MEMORY[0x277D85DE8];
  return v24 & 1;
}

void __72__HMDHH2Migrator_saveUserSettingsToCoreData_forUser_privateSettingsMap___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = [(_MKFModel *)_MKFUser modelWithModelID:v2 context:*(a1 + 40)];

  if (v3)
  {
    v4 = +[_MKFUser entity];
    v5 = [v4 hmd_attributesBySettingsPath];

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __72__HMDHH2Migrator_saveUserSettingsToCoreData_forUser_privateSettingsMap___block_invoke_205;
    v20[3] = &unk_278682AE8;
    v6 = *(a1 + 56);
    v20[4] = *(a1 + 48);
    v21 = *(a1 + 32);
    v22 = v5;
    v7 = v3;
    v23 = v7;
    v8 = v5;
    [v6 enumerateKeysAndObjectsUsingBlock:v20];
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = MEMORY[0x277CCACA8];
    v12 = [v7 debugDescription];
    v13 = [v11 stringWithFormat:@"Unable to save the owner's private settings : %@", v12];
    *(*(*(a1 + 64) + 8) + 24) = [v9 _saveAndResetWithContext:v10 errorMessage:v13];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 48);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = *(a1 + 32);
      *buf = 138543618;
      v25 = v17;
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to find MKFUser in database: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __72__HMDHH2Migrator_saveUserSettingsToCoreData_forUser_privateSettingsMap___block_invoke_205(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 type];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7 == 2)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v29 = 138543874;
      v30 = v12;
      v31 = 2112;
      v32 = v5;
      v33 = 2112;
      v34 = v6;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@[keyPath = %@] : [Value = %@]", &v29, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [*(a1 + 48) objectForKeyedSubscript:v5];
    v14 = [v13 name];

    if (v14)
    {
      v15 = *(a1 + 56);
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [v6 numberValue];
        v29 = 138544130;
        v30 = v19;
        v31 = 2112;
        v32 = v5;
        v33 = 2112;
        v34 = v20;
        v35 = 2112;
        v36 = v14;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Going to save setting:[%@] with value:[%@] on attribute: [%@]", &v29, 0x2Au);
      }

      objc_autoreleasePoolPop(v16);
      v21 = [v6 numberValue];
      [v15 setValue:v21 forKey:v14];
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 32);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v29 = 138543618;
        v30 = v27;
        v31 = 2112;
        v32 = v5;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Did not find mapping of settings to attribute name. [%@]", &v29, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = *(a1 + 40);
      v29 = 138543874;
      v30 = v22;
      v31 = 2112;
      v32 = v6;
      v33 = 2112;
      v34 = v23;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Non number setting found : [%@] for user :[%@]. Only expecting number setting for private settings", &v29, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)migrateUserSettingsToCoreData:(id)a3 forUser:(id)a4 fromLocalZone:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v25 = 138543874;
    v26 = v14;
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Going to migrate user settings for user [%@] from local zone: [%@]", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [v9 uuid];
  v16 = [HMDUser getSettingsUsingPreOrderTraversal:v10 rootUUID:v15 keyPath:&stru_283CF9D50];

  v17 = [v16 count];
  v18 = objc_autoreleasePoolPush();
  if (v17)
  {
    v19 = [(HMDHH2Migrator *)v12 saveUserSettingsToCoreData:v8 forUser:v9 privateSettingsMap:v16];
  }

  else
  {
    v20 = v12;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v22;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Did not find any settings model for user : %@", &v25, 0x16u);
    }

    v19 = 1;
  }

  objc_autoreleasePoolPop(v18);

  v23 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)migrateUserListeningHistoryControl:(id)a3 forOwnerUser:(id)a4 fromLocalZone:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [v10 queryModelsOfType:objc_opt_class()];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __80__HMDHH2Migrator_migrateUserListeningHistoryControl_forOwnerUser_fromLocalZone___block_invoke;
  v30[3] = &unk_278682AC0;
  v13 = v11;
  v31 = v13;
  [v12 enumerateObjectsUsingBlock:v30];
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v37 = v17;
    v38 = 2112;
    v39 = v13;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Found listening history control enabled accessories: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __80__HMDHH2Migrator_migrateUserListeningHistoryControl_forOwnerUser_fromLocalZone___block_invoke_201;
  v24[3] = &unk_278689D98;
  v18 = v9;
  v25 = v18;
  v19 = v8;
  v26 = v19;
  v27 = v15;
  v29 = &v32;
  v20 = v13;
  v28 = v20;
  [v19 performBlockAndWait:v24];
  v21 = *(v33 + 24);

  _Block_object_dispose(&v32, 8);
  v22 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

void __80__HMDHH2Migrator_migrateUserListeningHistoryControl_forOwnerUser_fromLocalZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 accessories];
  [v2 addObjectsFromArray:v3];
}

void __80__HMDHH2Migrator_migrateUserListeningHistoryControl_forOwnerUser_fromLocalZone___block_invoke_201(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = *(a1 + 40);
  v44 = 0;
  v4 = [(_MKFModel *)_MKFUser modelWithModelID:v2 context:v3 error:&v44];
  v38 = v44;

  if (v4)
  {
    v34 = v4;
    v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(*(a1 + 56), "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = *(a1 + 56);
    v6 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    v7 = a1;
    v35 = v5;
    if (v6)
    {
      v8 = v6;
      v9 = *v41;
      p_info = _MKFAccountHandle.info;
      do
      {
        v11 = 0;
        v12 = v38;
        v36 = v8;
        do
        {
          if (*v41 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v40 + 1) + 8 * v11);
          v14 = *(v7 + 40);
          v39 = v12;
          v15 = [p_info + 11 modelWithModelID:v13 context:v14 error:&v39];
          v38 = v39;

          if (v15)
          {
            [v5 addObject:v15];
          }

          else
          {
            v16 = p_info;
            v17 = v9;
            v18 = objc_autoreleasePoolPush();
            v19 = *(v7 + 48);
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v22 = v21 = v7;
              *buf = 138543618;
              v47 = v22;
              v48 = 2112;
              v49 = v13;
              _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Failed to find accessory with UUID %@ when migrating user listening history control", buf, 0x16u);

              v7 = v21;
              v5 = v35;
            }

            objc_autoreleasePoolPop(v18);
            v9 = v17;
            p_info = v16;
            v8 = v36;
          }

          ++v11;
          v12 = v38;
        }

        while (v8 != v11);
        v8 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v8);
    }

    v23 = [v5 copy];
    v4 = v34;
    [v34 setAccessoriesWithListeningHistoryEnabled_:v23];

    *(*(*(v7 + 64) + 8) + 24) = [*(v7 + 48) _saveAndResetWithContext:*(v7 + 40) errorMessage:@"Unable to save the migrated user listening history control"];
    if (*(*(*(v7 + 64) + 8) + 24) == 1)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = *(v7 + 48);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v27;
        v48 = 2112;
        v49 = v35;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Successfully migrated user listening history control for accessories: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v5 = v35;
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 48);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      v32 = *(a1 + 32);
      *buf = 138543874;
      v47 = v31;
      v48 = 2112;
      v49 = v32;
      v50 = 2112;
      v51 = v38;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to migrate user listening history control because owner user %@ fetch failed with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)migrateMediaContentProfileAccessControl:(id)a3 forOwnerUser:(id)a4 fromLocalZone:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  v11 = [MEMORY[0x277CBEB18] array];
  v12 = [v10 queryModelsOfType:objc_opt_class()];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __85__HMDHH2Migrator_migrateMediaContentProfileAccessControl_forOwnerUser_fromLocalZone___block_invoke;
  v24[3] = &unk_278682A98;
  v13 = v11;
  v25 = v13;
  [v12 enumerateObjectsUsingBlock:v24];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __85__HMDHH2Migrator_migrateMediaContentProfileAccessControl_forOwnerUser_fromLocalZone___block_invoke_2;
  v18[3] = &unk_278689D98;
  v14 = v9;
  v19 = v14;
  v15 = v8;
  v20 = v15;
  v21 = self;
  v23 = &v26;
  v16 = v13;
  v22 = v16;
  [v15 performBlockAndWait:v18];
  LOBYTE(v13) = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return v13;
}

void __85__HMDHH2Migrator_migrateMediaContentProfileAccessControl_forOwnerUser_fromLocalZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 accessories];
  [v2 addObjectsFromArray:v3];
}

void __85__HMDHH2Migrator_migrateMediaContentProfileAccessControl_forOwnerUser_fromLocalZone___block_invoke_2(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) uuid];
  v3 = *(a1 + 40);
  v44 = 0;
  v4 = [(_MKFModel *)_MKFUser modelWithModelID:v2 context:v3 error:&v44];
  v38 = v44;

  if (v4)
  {
    v34 = v4;
    v5 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(*(a1 + 56), "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = *(a1 + 56);
    v6 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
    v7 = a1;
    v35 = v5;
    if (v6)
    {
      v8 = v6;
      v9 = *v41;
      p_info = _MKFAccountHandle.info;
      do
      {
        v11 = 0;
        v12 = v38;
        v36 = v8;
        do
        {
          if (*v41 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v40 + 1) + 8 * v11);
          v14 = *(v7 + 40);
          v39 = v12;
          v15 = [p_info + 11 modelWithModelID:v13 context:v14 error:&v39];
          v38 = v39;

          if (v15)
          {
            [v5 addObject:v15];
          }

          else
          {
            v16 = p_info;
            v17 = v9;
            v18 = objc_autoreleasePoolPush();
            v19 = *(v7 + 48);
            v20 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v22 = v21 = v7;
              *buf = 138543618;
              v47 = v22;
              v48 = 2112;
              v49 = v13;
              _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Failed to find accessory with UUID %@ when migrating media content profile access control", buf, 0x16u);

              v7 = v21;
              v5 = v35;
            }

            objc_autoreleasePoolPop(v18);
            v9 = v17;
            p_info = v16;
            v8 = v36;
          }

          ++v11;
          v12 = v38;
        }

        while (v8 != v11);
        v8 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v8);
    }

    v23 = [v5 copy];
    v4 = v34;
    [v34 setAccessoriesWithMediaContentProfileEnabled_:v23];

    *(*(*(v7 + 64) + 8) + 24) = [*(v7 + 48) _saveAndResetWithContext:*(v7 + 40) errorMessage:@"Unable to save the migrated media content profile access control"];
    if (*(*(*(v7 + 64) + 8) + 24) == 1)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = *(v7 + 48);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v47 = v27;
        v48 = 2112;
        v49 = v35;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Successfully migrated media content profile access control for accessories %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v5 = v35;
    }
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 48);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      v32 = *(a1 + 32);
      *buf = 138543874;
      v47 = v31;
      v48 = 2112;
      v49 = v32;
      v50 = 2112;
      v51 = v38;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to migrate media content profile access control because owner user %@ fetch failed with error %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (BOOL)migrateV5Models:(id)a3 forHome:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v35 = 138543618;
    v36 = v11;
    v37 = 2112;
    v38 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Starting migration for V5 models for home : %@", &v35, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [v7 owner];
  if (v12)
  {
    v13 = [(HMDHH2Migrator *)v9 privateZoneForOwnerUser:v12];
    if (!v13)
    {
      v21 = objc_autoreleasePoolPush();
      v22 = v9;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        v35 = 138543618;
        v36 = v24;
        v37 = 2112;
        v38 = v12;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to migrate V5 models: could not get private zone for owner user: %@", &v35, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v16 = 0;
      goto LABEL_41;
    }

    v14 = [(HMDHH2Migrator *)v9 sharedZoneForOwnerUser:v12];
    v15 = objc_autoreleasePoolPush();
    if (!v14)
    {
      v25 = v9;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v35 = 138543618;
        v36 = v27;
        v37 = 2112;
        v38 = v12;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to migrate V5 models: could not get shared zone for owner user: %@", &v35, 0x16u);
      }

      goto LABEL_39;
    }

    if ([(HMDHH2Migrator *)v9 migrateUserSettingsToCoreData:v6 forUser:v12 fromLocalZone:v13])
    {
      objc_autoreleasePoolPop(v15);
      v15 = objc_autoreleasePoolPush();
      if ([(HMDHH2Migrator *)v9 migrateUserSettingsToCoreData:v6 forUser:v12 fromLocalZone:v14])
      {
        objc_autoreleasePoolPop(v15);
        v15 = objc_autoreleasePoolPush();
        if ([(HMDHH2Migrator *)v9 migrateMediaContentProfileAccessControl:v6 forOwnerUser:v12 fromLocalZone:v14])
        {
          objc_autoreleasePoolPop(v15);
          v15 = objc_autoreleasePoolPush();
          if ([(HMDHH2Migrator *)v9 migrateUserListeningHistoryControl:v6 forOwnerUser:v12 fromLocalZone:v14])
          {
            objc_autoreleasePoolPop(v15);
            v15 = objc_autoreleasePoolPush();
            if ([(HMDHH2Migrator *)v9 migratePhotosPersonManagerSettingsFromLocalZone:v14 owner:v12 managedObjectContext:v6])
            {
              objc_autoreleasePoolPop(v15);
              v15 = objc_autoreleasePoolPush();
              if ([(HMDHH2Migrator *)v9 migrateAccessoryV5Models:v6 fromLocalZone:v13 forHome:v7 owner:v12])
              {
                objc_autoreleasePoolPop(v15);
                v15 = objc_autoreleasePoolPush();
                if ([(HMDHH2Migrator *)v9 migrateV5PersonDataForHome:v7 managedObjectContext:v6])
                {
                  v16 = 1;
LABEL_40:
                  objc_autoreleasePoolPop(v15);

LABEL_41:
                  goto LABEL_42;
                }

                v28 = objc_autoreleasePoolPush();
                v29 = v9;
                v30 = HMFGetOSLogHandle();
                if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_38;
                }

                goto LABEL_36;
              }

              v28 = objc_autoreleasePoolPush();
              v29 = v9;
              v30 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
LABEL_36:
                v31 = HMFGetLogIdentifier();
                v35 = 138543618;
                v36 = v31;
                v37 = 2112;
                v38 = v12;
                v32 = "%{public}@Failed to migrate V5 models: unable to migrate accessory settings for owner user: %@";
                goto LABEL_37;
              }

LABEL_38:

              objc_autoreleasePoolPop(v28);
LABEL_39:
              v16 = 0;
              goto LABEL_40;
            }

            v28 = objc_autoreleasePoolPush();
            v29 = v9;
            v30 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_38;
            }

            v31 = HMFGetLogIdentifier();
            v35 = 138543618;
            v36 = v31;
            v37 = 2112;
            v38 = v12;
            v32 = "%{public}@Failed to migrate V5 models: unable to migrate photos person manager settings for owner user: %@";
          }

          else
          {
            v28 = objc_autoreleasePoolPush();
            v29 = v9;
            v30 = HMFGetOSLogHandle();
            if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_38;
            }

            v31 = HMFGetLogIdentifier();
            v35 = 138543618;
            v36 = v31;
            v37 = 2112;
            v38 = v12;
            v32 = "%{public}@Failed to migrate V5 models: unable to migrate listening history control for owner user: %@";
          }
        }

        else
        {
          v28 = objc_autoreleasePoolPush();
          v29 = v9;
          v30 = HMFGetOSLogHandle();
          if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }

          v31 = HMFGetLogIdentifier();
          v35 = 138543618;
          v36 = v31;
          v37 = 2112;
          v38 = v12;
          v32 = "%{public}@Failed to migrate V5 models: unable to migrate media content profile access control for owner user: %@";
        }
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        v29 = v9;
        v30 = HMFGetOSLogHandle();
        if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_38;
        }

        v31 = HMFGetLogIdentifier();
        v35 = 138543618;
        v36 = v31;
        v37 = 2112;
        v38 = v12;
        v32 = "%{public}@Failed to migrate V5 models: unable to migrate shared settings for owner user: %@";
      }
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = v9;
      v30 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }

      v31 = HMFGetLogIdentifier();
      v35 = 138543618;
      v36 = v31;
      v37 = 2112;
      v38 = v12;
      v32 = "%{public}@Failed to migrate V5 models: unable to migrate private settings for owner user: %@";
    }

LABEL_37:
    _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, v32, &v35, 0x16u);

    goto LABEL_38;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = v9;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    v35 = 138543618;
    v36 = v20;
    v37 = 2112;
    v38 = v7;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to migrate V5 models: owner user was not found for home: %@", &v35, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v16 = 0;
LABEL_42:

  v33 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)sharedZoneForOwnerUser:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isOwner])
  {
    v5 = [v4 sharedZoneName];
    v6 = [(HMDHH2Migrator *)self defaultDatabase];
    v7 = [(HMDHH2Migrator *)self openZoneWithName:v5 inDatabase:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not going to open shared zone for user : %@ as it is not an owner", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)privateZoneForOwnerUser:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isOwner])
  {
    v5 = [v4 privateZoneName];
    v6 = [(HMDHH2Migrator *)self defaultDatabase];
    v7 = [(HMDHH2Migrator *)self openZoneWithName:v5 inDatabase:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not going to open zone for user: %@ as it is not an owner", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)openZoneWithName:(id)a3 inDatabase:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v11;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Opening zone with name: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = objc_alloc_init(MEMORY[0x277D170E8]);
  v26 = 0;
  v13 = [v7 privateZonesWithName:v6 configuration:v12 delegate:0 error:&v26];
  v14 = v26;
  if (v13)
  {
    v15 = [(HMDHH2Migrator *)v9 openedZones];
    [v15 addObject:v13];

    v16 = [v13 localZone];
    [v16 startUp];
    v17 = [v13 cloudZone];
    [(HMDHH2Migrator *)v9 waitForStartupForCloudZone:v17];

    v18 = objc_autoreleasePoolPush();
    v19 = v9;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v21;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Successfully opened local zone [%@]", buf, 0x16u);
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v22 = v9;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543874;
      v28 = v23;
      v29 = 2112;
      v30 = v6;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to open zone with name %@: %@", buf, 0x20u);
    }

    v16 = 0;
  }

  objc_autoreleasePoolPop(v18);
  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)backingStoreObjectsForAccountsAndDevices:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [v4 account];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v4 account];
      *buf = 138543618;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Getting bso objects for account : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [v4 account];
    v13 = [v12 backingStoreObjectsWithChangeType:1 version:4];
    [v5 addObjectsFromArray:v13];
  }

  v14 = [v4 remoteAccounts];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __59__HMDHH2Migrator_backingStoreObjectsForAccountsAndDevices___block_invoke;
  v20[3] = &unk_278682A70;
  v20[4] = self;
  v15 = v5;
  v21 = v15;
  [v14 hmf_enumerateWithAutoreleasePoolUsingBlock:v20];

  v16 = v21;
  v17 = v15;

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

void __59__HMDHH2Migrator_backingStoreObjectsForAccountsAndDevices___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Getting bso objects for remote account : %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(a1 + 40);
  v9 = [v3 backingStoreObjectsWithChangeType:1 version:4];
  [v8 addObjectsFromArray:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)makeSureToCreateHH2SentinelZoneWithError:(id *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [(HMDHH2Migrator *)self hh2FrameworkSwitch];
  v6 = [v5 checkExistenceOfHH2SentinelZone];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@This is weird... Looks like HH2 Sentinel zone exist already. That means other devices are already booted up in new world and might have wreaked havoc. Well... Let's move on. ¯\\_(ツ)_/¯", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = 1;
  }

  else
  {
    v12 = [(HMDHH2Migrator *)self hh2FrameworkSwitch];
    v13 = [v12 waitForHH2SentinelZoneToBeCreated:a3 error:1.2e11];

    if (v13)
    {
      v11 = 1;
      [HMDHH2FrameworkSwitch setHH2EnablementPreferenceKey:1];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v20 = 138543362;
        v21 = v17;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Unable to create HH2 Sentinel zone. We already checked that HH2 sentinel does not exist. Aborting the migration... ", &v20, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      v11 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)handlePostMigration
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v44 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Starting HH2 post migration work.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDHH2Migrator *)v4 migratorRecord];
  v8 = [v7 forceMigrationFailureForTesting];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = v4;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v12;
      v13 = "%{public}@*=*=*=*= Failing migration as it was requested by home-util command *=*=*=*=";
LABEL_9:
      v16 = v11;
      v17 = OS_LOG_TYPE_DEFAULT;
LABEL_10:
      _os_log_impl(&dword_229538000, v16, v17, v13, buf, 0xCu);

      goto LABEL_11;
    }

    goto LABEL_11;
  }

  v14 = [(HMDHH2Migrator *)v4 migratorRecord];
  v15 = [v14 dryRun];

  if (!v15)
  {
    v21 = [(HMDHH2Migrator *)v4 hh2FrameworkSwitch];
    v22 = [v21 waitForHH2SentinelZoneToBeFetchedFromCloud];

    if ((v22 & 1) == 0)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v4;
      v11 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v12;
      v13 = "%{public}@Unable to perform initial sync for HH2 sentinel zone. Without that we cannot finish migration";
      v16 = v11;
      v17 = OS_LOG_TYPE_ERROR;
      goto LABEL_10;
    }

    v42 = 0;
    v23 = [(HMDHH2Migrator *)v4 makeSureToCreateHH2SentinelZoneWithError:&v42];
    v24 = v42;
    if (v23)
    {
      v25 = [(HMDHH2Migrator *)v4 migratorRecord];
      v26 = [v25 migrateFromTestDirectory];

      if (v26 & 1) != 0 || (-[HMDHH2Migrator migratorRecord](v4, "migratorRecord"), v27 = objc_claimAutoreleasedReturnValue(), v28 = [v27 finishMigration], v27, (v28))
      {
        v29 = objc_autoreleasePoolPush();
        v30 = v4;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543362;
          v44 = v32;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Finally Victory : n_n : HH2 migration successfully done.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v29);
        v18 = 1;
        [HMDHH2MigrationStateLogger recordMigrationEnd:1];
        goto LABEL_26;
      }

      v38 = objc_autoreleasePoolPush();
      v39 = v4;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543362;
        v44 = v41;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@This is the worst possible thing as we cannot even remove our migration record from the local disk. I am sad. :( Aborting the migration...", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v38);
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = v4;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543362;
        v44 = v36;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Unable to create HH2 sentinel zone. Cannot mark migration as done. Aborting...", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v33);
      v37 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2714 underlyingError:v24];
      [(HMDHH2Migrator *)v34 submitABCEventForFailedMigrationWithReason:2 withError:v37];
    }

    v18 = 0;
LABEL_26:

    goto LABEL_12;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = v4;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v44 = v12;
    v13 = "%{public}@*=*=*=*= Failing migration as this was just a Dry Run *=*=*=*=";
    goto LABEL_9;
  }

LABEL_11:

  objc_autoreleasePoolPop(v9);
  v18 = 0;
LABEL_12:
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)revertChangesPerformedDuringMigration
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Removing all the key-roll operations scheduled during migration as it has failed...", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDHH2Migrator *)v4 backgroundOpsManager];
  v8 = [(HMDHH2Migrator *)v4 scheduledKeyRollOperationsDuringMigration];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__HMDHH2Migrator_revertChangesPerformedDuringMigration__block_invoke;
  v12[3] = &unk_278688118;
  v13 = v7;
  v9 = v7;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v12];

  v10 = [(HMDHH2Migrator *)v4 scheduledKeyRollOperationsDuringMigration];
  [v10 removeAllObjects];

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)scheduleAccessoryKeyMigration:(id)a3 oldPairingIdentity:(id)a4 hh2PairingIdentity:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_38;
  }

  v11 = v10;
  v12 = [v8 identifier];

  if (!v12)
  {
LABEL_38:
    _HMFPreconditionFailure();
    goto LABEL_39;
  }

  if (!v9)
  {
LABEL_39:
    _HMFPreconditionFailure();
LABEL_40:
    _HMFPreconditionFailure();
  }

  if (!v11)
  {
    goto LABEL_40;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v13 = [(HMDHH2Migrator *)self backgroundOpsManager];
    if (!v13)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v48 = v29;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Background operation manager is nil. Not scheduling key roll operation for that.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      v30 = 0;
      goto LABEL_35;
    }

    v14 = v8;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    v18 = v14;
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();
    if (v19)
    {
      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    if (isKindOfClass)
    {
      v22 = [v18 identifier];

      if (v22)
      {
        v23 = [(HMDHH2Migrator *)self scheduledKeyRollOperationsDuringMigration];
        v24 = [v18 uuid];
        [v23 addObject:v24];

        v25 = [v13 scheduleHH2KeyRollForAccessory:v18 previousIdentity:v9 newIdentity:v11];
LABEL_26:
        v30 = v25;
LABEL_34:

LABEL_35:
        goto LABEL_36;
      }

      v38 = objc_autoreleasePoolPush();
      v39 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
LABEL_32:
        HMFGetLogIdentifier();
        v42 = v46 = v38;
        *buf = 138543618;
        v48 = v42;
        v49 = 2112;
        v50 = v18;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Accessory identifier is nil. Not scheduling key roll operation for that. %@", buf, 0x16u);

        v38 = v46;
      }
    }

    else
    {
      if ((v19 & 1) == 0)
      {
        v38 = objc_autoreleasePoolPush();
        v39 = self;
        v40 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v41 = v45 = v17;
          *buf = 138543618;
          v48 = v41;
          v49 = 2112;
          v50 = v18;
          _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Unexpected accessory class. Not scheduling key roll operation for it. %@", buf, 0x16u);

          v17 = v45;
        }

        goto LABEL_33;
      }

      v35 = [v18 identifier];

      if (v35)
      {
        v36 = [(HMDHH2Migrator *)self scheduledKeyRollOperationsDuringMigration];
        v37 = [v18 uuid];
        [v36 addObject:v37];

        v25 = [v13 scheduleHH2KeyRollForAirPlayAccessory:v18 previousIdentity:v9 newIdentity:v11];
        goto LABEL_26;
      }

      v38 = objc_autoreleasePoolPush();
      v39 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }
    }

LABEL_33:

    objc_autoreleasePoolPop(v38);
    v30 = 0;
    goto LABEL_34;
  }

  v31 = objc_autoreleasePoolPush();
  v32 = self;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138543618;
    v48 = v34;
    v49 = 2112;
    v50 = v8;
    _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Not Scheduling key roll operation for Non-HAP and Non-AirPlay accessory : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v31);
  v30 = 1;
LABEL_36:

  v43 = *MEMORY[0x277D85DE8];
  return v30;
}

- (BOOL)rollAccessoryKeysToHH2:(id)a3 hh2ControllerKey:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 accessories];
  if (v8 && ([v6 accessories], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, v8, v10))
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v6 accessories];
      *buf = 138543618;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = [v15 count];
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Scheduling accessory key-roll for [%lu] accessories", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = objc_alloc(MEMORY[0x277CFEC20]);
    v17 = [v7 identifier];
    v18 = [v7 publicKey];
    v19 = [v16 initWithIdentifier:v17 publicKey:v18 privateKey:0 permissions:1];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v34 = 1;
    v20 = [v6 accessories];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __58__HMDHH2Migrator_rollAccessoryKeysToHH2_hh2ControllerKey___block_invoke;
    v29[3] = &unk_278682B10;
    v32 = buf;
    v29[4] = v12;
    v30 = v6;
    v21 = v19;
    v31 = v21;
    [v20 hmf_enumerateWithAutoreleasePoolUsingBlock:v29];

    v22 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v26;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@[%@] does not have any accessories in it. Skipping key-roll.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v22 = 1;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v22 & 1;
}

void __58__HMDHH2Migrator_rollAccessoryKeysToHH2_hh2ControllerKey___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) owner];
  v10 = [v9 pairingIdentity];
  *(*(*(a1 + 56) + 8) + 24) = [v8 scheduleAccessoryKeyMigration:v6 oldPairingIdentity:v10 hh2PairingIdentity:*(a1 + 48)];

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v14;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to schedule key roll operation for %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v7);

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)waitForV5UpdatesToSyncToCloudKit
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [(HMDHH2Migrator *)self migratorRecord];
  if ([v2 migrateFromTestDirectory])
  {

LABEL_4:
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Not going to wait for V5 updates to sync to CloudKit during Dry Run.", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    goto LABEL_19;
  }

  v3 = [(HMDHH2Migrator *)self migratorRecord];
  v4 = [v3 dryRun];

  if (v4)
  {
    goto LABEL_4;
  }

  v9 = dispatch_group_create();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = [(HMDHH2Migrator *)self v5ModelUpdateFutures];
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v11)
  {
    v12 = *v29;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        dispatch_group_enter(v9);
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __50__HMDHH2Migrator_waitForV5UpdatesToSyncToCloudKit__block_invoke;
        v25[3] = &unk_278682A48;
        p_buf = &buf;
        v25[4] = self;
        v26 = v9;
        v15 = [v14 addCompletionBlock:v25];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v11);
  }

  v16 = dispatch_time(0, 900000000000);
  if (dispatch_group_wait(v9, v16))
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *v32 = 138543362;
      v33 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Timed out waiting for V5 CloudKit sync", v32, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8];
    [(HMDHH2Migrator *)v18 submitABCEventForFailedMigrationWithReason:5 withError:v21];
  }

  _Block_object_dispose(&buf, 8);

LABEL_19:
  v22 = *MEMORY[0x277D85DE8];
  return 1;
}

void __50__HMDHH2Migrator_waitForV5UpdatesToSyncToCloudKit__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  ++*(*(*(a1 + 48) + 8) + 24);
  if (v5)
  {
    v29 = 0;
    v7 = [*(a1 + 32) waitForCloudKitSyncForProcessingResult:v5 error:&v29];
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    v11 = v10;
    if (v7)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v13 = *(*(*(a1 + 48) + 8) + 24);
        v14 = [*(a1 + 32) v5ModelUpdateFutures];
        v15 = [v14 count];
        *buf = 138543874;
        v31 = v12;
        v32 = 2048;
        v33 = v13;
        v34 = 2048;
        v35 = v15;
        v16 = "%{public}@Finished V5 CloudKit sync for %ld/%lu";
        v17 = v11;
        v18 = OS_LOG_TYPE_INFO;
        v19 = 32;
LABEL_10:
        _os_log_impl(&dword_229538000, v17, v18, v16, buf, v19);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v26 = *(*(*(a1 + 48) + 8) + 24);
      v14 = [*(a1 + 32) v5ModelUpdateFutures];
      v27 = [v14 count];
      *buf = 138544130;
      v31 = v12;
      v32 = 2048;
      v33 = v26;
      v34 = 2048;
      v35 = v27;
      v36 = 2112;
      v37 = v29;
      v16 = "%{public}@Failed V5 CloudKit sync for %ld/%lu: %@";
      v17 = v11;
      v18 = OS_LOG_TYPE_ERROR;
      v19 = 42;
      goto LABEL_10;
    }

    objc_autoreleasePoolPop(v8);
    goto LABEL_12;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = *(a1 + 32);
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v24 = *(*(*(a1 + 48) + 8) + 24);
    v25 = [*(a1 + 32) v5ModelUpdateFutures];
    *buf = 138544130;
    v31 = v23;
    v32 = 2048;
    v33 = v24;
    v34 = 2048;
    v35 = [v25 count];
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed V5 local database sync for %ld/%lu: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v20);
LABEL_12:
  dispatch_group_leave(*(a1 + 40));

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)waitForCloudKitSyncForProcessingResult:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v7 = dispatch_semaphore_create(0);
  v8 = [v6 mirrorOutputResult];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __63__HMDHH2Migrator_waitForCloudKitSyncForProcessingResult_error___block_invoke;
  v21[3] = &unk_278682A20;
  v23 = &v25;
  v24 = a4;
  v9 = v7;
  v22 = v9;
  v10 = [v8 addCompletionBlock:v21];

  v11 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(v9, v11))
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v15;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Timed out waiting for CloudKit sync for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    if (a4)
    {
      v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13];
      v17 = *a4;
      *a4 = v16;
    }
  }

  v18 = *(v26 + 24);

  _Block_object_dispose(&v25, 8);
  v19 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

void __63__HMDHH2Migrator_waitForCloudKitSyncForProcessingResult_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      objc_storeStrong(v6, a3);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)waitForStartupForCloudZone:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 zoneID];
  v6 = dispatch_semaphore_create(0);
  v7 = [v4 startUp];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __45__HMDHH2Migrator_waitForStartupForCloudZone___block_invoke;
  v19[3] = &unk_2786879C0;
  v19[4] = self;
  v8 = v5;
  v20 = v8;
  v9 = v6;
  v21 = v9;
  v10 = [v7 addCompletionBlock:v19];

  v11 = dispatch_time(0, 60000000000);
  v12 = dispatch_semaphore_wait(v9, v11);
  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v16;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Timed out waiting for cloud zone startup for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12 == 0;
}

void __45__HMDHH2Migrator_waitForStartupForCloudZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v16 = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Cloud zone startup succeeded for %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      v16 = 138543874;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cloud zone startup failed for %@: %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) submitABCEventForFailedMigrationWithReason:9 withError:v6];
  }

  dispatch_semaphore_signal(*(a1 + 48));

  v15 = *MEMORY[0x277D85DE8];
}

- (id)allObjectIDsFromTransactions:(id)a3 cloudStoreIdentifier:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x277CBEB58];
  v8 = a3;
  v9 = [v7 set];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__HMDHH2Migrator_allObjectIDsFromTransactions_cloudStoreIdentifier___block_invoke;
  v14[3] = &unk_2786829F8;
  v15 = v6;
  v16 = self;
  v17 = v9;
  v10 = v9;
  v11 = v6;
  [v8 hmf_enumerateWithAutoreleasePoolUsingBlock:v14];

  v12 = [v10 copy];

  return v12;
}

void __68__HMDHH2Migrator_allObjectIDsFromTransactions_cloudStoreIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 storeID];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    v6 = [v3 changes];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __68__HMDHH2Migrator_allObjectIDsFromTransactions_cloudStoreIdentifier___block_invoke_165;
    v16[3] = &unk_2786829D0;
    v7 = *(a1 + 48);
    v8 = *(a1 + 40);
    v17 = v7;
    v18 = v8;
    [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v16];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v3 storeID];
      v14 = *(a1 + 32);
      *buf = 138543874;
      v20 = v12;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Ignoring transactions from [%@] as expecting transaction from [%@]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __68__HMDHH2Migrator_allObjectIDsFromTransactions_cloudStoreIdentifier___block_invoke_165(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 changedObjectID];
  v5 = [v3 changeType];
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 40);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v11 = 138543618;
        v12 = v9;
        v13 = 2112;
        v14 = v4;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Delete change detected : %@", &v11, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
      [*(a1 + 32) removeObject:v4];
    }
  }

  else
  {
    [*(a1 + 32) addObject:v4];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)didCoreDataPushAllModelsToCloudKit:(id)a3 previousToken:(id)a4 cloudStore:(id)a5
{
  v72[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Going to execute history change request using token : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [MEMORY[0x277CBE4B0] fetchHistoryAfterToken:v9];
  v72[0] = v10;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:1];
  [v15 setAffectedStores:v16];

  v63 = 0;
  v17 = [v8 executeRequest:v15 error:&v63];
  v58 = v63;
  if (v17)
  {
    v18 = [v17 result];
    if (![v18 count])
    {
      v34 = objc_autoreleasePoolPush();
      v35 = v12;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v37;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@There are no transactions from the history fetch results", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
      v33 = 1;
      goto LABEL_26;
    }

    v19 = [v10 identifier];
    v57 = [(HMDHH2Migrator *)v12 allObjectIDsFromTransactions:v18 cloudStoreIdentifier:v19];

    if (![v57 count])
    {
      v38 = objc_autoreleasePoolPush();
      v39 = v12;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v41;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@There were no objects inserted as part of the migration.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v38);
      v33 = 1;
      goto LABEL_25;
    }

    v20 = [HMDHH2CoreDataCloudKitMirroringObserver alloc];
    v21 = [(HMDHH2Migrator *)v12 coreData];
    v22 = [v10 identifier];
    v23 = [(HMDHH2CoreDataCloudKitMirroringObserver *)v20 initWithObjectIds:v57 coreData:v21 storeIdentifier:v22];

    v24 = dispatch_group_create();
    dispatch_group_enter(v24);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v69 = __Block_byref_object_copy__231211;
    v70 = __Block_byref_object_dispose__231212;
    v71 = 0;
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __78__HMDHH2Migrator_didCoreDataPushAllModelsToCloudKit_previousToken_cloudStore___block_invoke;
    v59[3] = &unk_278685888;
    v62 = buf;
    v60 = v23;
    v55 = v60;
    group = v24;
    v61 = group;
    [(HMDHH2CoreDataCloudKitMirroringObserver *)v60 startMonitoring:v59];
    v25 = dispatch_time(0, 900000000000);
    if (dispatch_group_wait(group, v25))
    {
      context = objc_autoreleasePoolPush();
      v26 = v12;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *v64 = 138543362;
        v65 = v28;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Could not push the models to CloudKit. Timed out.", v64, 0xCu);
      }

      objc_autoreleasePoolPop(context);
      [(HMDHH2CoreDataCloudKitMirroringObserver *)v55 stopMonitoring];
    }

    else
    {
      v42 = *(*&buf[8] + 40) == 0;
      contexta = objc_autoreleasePoolPush();
      v43 = v12;
      if (v42)
      {
        v50 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
        {
          v51 = v43;
          v52 = HMFGetLogIdentifier();
          *v64 = 138543362;
          v65 = v52;
          _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@Successfully exported CD models to CloudKit", v64, 0xCu);

          v43 = v51;
        }

        objc_autoreleasePoolPop(contexta);
        v33 = 1;
        goto LABEL_24;
      }

      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = v43;
        v46 = HMFGetLogIdentifier();
        v47 = *(*&buf[8] + 40);
        *v64 = 138543618;
        v65 = v46;
        v66 = 2112;
        v67 = v47;
        _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Failed to verify CD models pushed to CloudKit using export stream : %@", v64, 0x16u);

        v43 = v45;
      }

      objc_autoreleasePoolPop(contexta);
    }

    [(HMDHH2Migrator *)v12 submitABCEventForFailedMigrationWithReason:4 withError:*(*&buf[8] + 40)];
    v33 = 0;
LABEL_24:

    _Block_object_dispose(buf, 8);
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v29 = objc_autoreleasePoolPush();
  v30 = v12;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = HMFGetLogIdentifier();
    *buf = 138543874;
    *&buf[4] = v32;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    *&buf[22] = 2112;
    v69 = v58;
    _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch history for cloud store with token %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v29);
  v33 = 0;
LABEL_27:

  v48 = *MEMORY[0x277D85DE8];
  return v33;
}

void __78__HMDHH2Migrator_didCoreDataPushAllModelsToCloudKit_previousToken_cloudStore___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  [*(a1 + 32) stopMonitoring];
  dispatch_group_leave(*(a1 + 40));
}

- (BOOL)waitForCloudTransformToRun
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHH2Migrator *)self cloudTransform];
  if (v3)
  {
    *&v33 = 0;
    *(&v33 + 1) = &v33;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__231211;
    v36 = __Block_byref_object_dispose__231212;
    v37 = 0;
    v4 = dispatch_group_create();
    dispatch_group_enter(v4);
    v5 = dispatch_get_global_queue(2, 0);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __44__HMDHH2Migrator_waitForCloudTransformToRun__block_invoke;
    v25[3] = &unk_278689D20;
    v25[4] = self;
    v26 = v3;
    v28 = &v33;
    v6 = v4;
    v27 = v6;
    dispatch_async(v5, v25);

    v7 = dispatch_time(0, 420000000000);
    if (dispatch_group_wait(v6, v7))
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v11;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Cloud transform did not run and the operation timed out.", buf, 0xCu);
      }
    }

    else
    {
      v17 = *(*(&v33 + 1) + 40) == 0;
      v8 = objc_autoreleasePoolPush();
      v18 = self;
      if (v17)
      {
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543362;
          v30 = v24;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Successfully finished running cloud transform", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v8);
        v16 = 1;
        goto LABEL_12;
      }

      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = *(*(&v33 + 1) + 40);
        *buf = 138543618;
        v30 = v19;
        v31 = 2112;
        v32 = v20;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@runTransformForCoreData after migration failed with error : %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v8);
    v16 = 0;
LABEL_12:

    _Block_object_dispose(&v33, 8);
    goto LABEL_13;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    LODWORD(v33) = 138543362;
    *(&v33 + 4) = v15;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cloud transform is unavailable.", &v33, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
  v16 = 0;
LABEL_13:

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

void __44__HMDHH2Migrator_waitForCloudTransformToRun__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v16 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting cloud transform.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  [v6 runTransformWithError:&obj];
  objc_storeStrong((v7 + 40), obj);
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = *(*(*(a1 + 56) + 8) + 40);
    *buf = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Cloud transform completed with : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  dispatch_group_leave(*(a1 + 48));
  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)waitForCDToExportModelsToCloudKit:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Starting to wait for CD to export models to CK : history token before migration began : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDHH2Migrator *)v6 waitForCloudTransformToRun])
  {
    v9 = [(HMDHH2Migrator *)v6 migratorRecord];
    if ([v9 migrateFromTestDirectory])
    {

LABEL_10:
      v17 = objc_autoreleasePoolPush();
      v18 = v6;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v20;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Not going to wait for all CloudKit models to be exported to CloudKit servers.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v14 = 1;
      goto LABEL_18;
    }

    v15 = [(HMDHH2Migrator *)v6 migratorRecord];
    v16 = [v15 dryRun];

    if (v16)
    {
      goto LABEL_10;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v37 = 0;
    v21 = [(HMDHH2Migrator *)v6 coreData];
    v22 = [v21 newManagedObjectContext];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __52__HMDHH2Migrator_waitForCDToExportModelsToCloudKit___block_invoke;
    v30[3] = &unk_278689D20;
    v33 = buf;
    v30[4] = v6;
    v23 = v22;
    v31 = v23;
    v32 = v4;
    [v23 performBlockAndWait:v30];
    v14 = *(*&buf[8] + 24);
    if ((v14 & 1) == 0)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = v6;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *v34 = 138543362;
        v35 = v27;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Unable to verify whether CD models made it to CloudKit", v34, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v6;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cloud transform failed after migration.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = 0;
  }

LABEL_18:

  v28 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __52__HMDHH2Migrator_waitForCDToExportModelsToCloudKit___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = [v2 coreData];
  v6 = [v5 cloudPrivateStore];
  *(*(a1[7] + 8) + 24) = [v2 didCoreDataPushAllModelsToCloudKit:v3 previousToken:v4 cloudStore:v6];

  v7 = a1[5];

  return [v7 reset];
}

- (void)_fixupOutgoingInvitationModel:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 inviteeUserID];

  if (!v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v4 modelID];
      v13 = 138543618;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Fixup: Dropping outgoing invitation with nil inviteeUserID: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [v4 managedObjectContext];
    [v11 deleteObject:v4];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_fixupAssistantAccessControlForUserModel:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 managedObjectContext];
  v6 = [v4 home];
  v7 = [(HMDHH2Migrator *)self homeData];
  v8 = [v6 modelID];
  v9 = [v7 homeWithUUID:v8];
  v10 = [v4 modelID];
  v11 = [v9 userWithUUID:v10];

  v12 = [v11 assistantAccessControl];
  v13 = v12;
  if (v12)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "areActivityNotificationsEnabledForPersonalRequests")}];
    [v4 setActivityNotificationsEnabledForPersonalRequests:v14];

    *&v40 = 0;
    *(&v40 + 1) = &v40;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__231211;
    v43 = __Block_byref_object_dispose__231212;
    v15 = MEMORY[0x277CBEB58];
    v16 = [v13 accessories];
    v44 = [v15 setWithCapacity:{objc_msgSend(v16, "count")}];

    v17 = [v13 accessories];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __59__HMDHH2Migrator__fixupAssistantAccessControlForUserModel___block_invoke;
    v30[3] = &unk_2786829A8;
    v31 = v5;
    v32 = self;
    v33 = &v40;
    [v17 hmf_enumerateWithAutoreleasePoolUsingBlock:v30];

    v18 = [*(*(&v40 + 1) + 40) copy];
    [v4 setAccessoriesWithPersonalRequestsEnabled_:v18];

    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v4 activityNotificationsEnabledForPersonalRequests];
      v24 = *(*(&v40 + 1) + 40);
      *buf = 138543874;
      v35 = v22;
      v36 = 2112;
      v37 = v23;
      v38 = 2112;
      v39 = v24;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@FixUp: Migrated owner's assistant access control activityNotificationsEnabled=%@, accessories=%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    _Block_object_dispose(&v40, 8);
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      LODWORD(v40) = 138543362;
      *(&v40 + 4) = v28;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@No assistant access control to migrate", &v40, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __59__HMDHH2Migrator__fixupAssistantAccessControlForUserModel___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 uuid];
  v5 = *(a1 + 32);
  v14 = 0;
  v6 = [(_MKFModel *)_MKFAccessory modelWithModelID:v4 context:v5 error:&v14];
  v7 = v14;

  if (v6)
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v3 uuid];
      *buf = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@FixUp: Failed to find accessory with UUID %@ when migrating assistant access control", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_fixupSoftwareUpdateModelWithNoAccessory:(id)a3 coreDataModelObject:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 accessory];

  if (!v8)
  {
    v9 = HMDCastIfManagedObjectBSORepresentable(v7);
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
    if (v9)
    {
      if (v13)
      {
        v14 = HMFGetLogIdentifier();
        v15 = [v9 hmd_parentModelID];
        v32 = 138543874;
        v33 = v14;
        v34 = 2112;
        v35 = v9;
        v36 = 2112;
        v37 = v15;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@FixUP: Looks like [%@] does not have accessory associated with it. Going to find the accessory with model id: %@", &v32, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      v16 = [v9 hmd_parentModelID];
      v17 = [(_MKFModel *)_MKFAccessory modelWithModelID:v16 context:v6];

      if (v17)
      {
        [v7 setAccessory:v17];
        v18 = objc_autoreleasePoolPush();
        v19 = v11;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          v22 = [v17 debugDescription];
          v23 = [v7 debugDescription];
          v32 = 138543874;
          v33 = v21;
          v34 = 2112;
          v35 = v22;
          v36 = 2112;
          v37 = v23;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@FixUP: Setting accessory [%@] on software update model [%@]", &v32, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
      }

      else
      {
        v26 = objc_autoreleasePoolPush();
        v27 = v11;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          v30 = [v9 hmd_parentModelID];
          v32 = 138543618;
          v33 = v29;
          v34 = 2112;
          v35 = v30;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unable to find the _MKFAccessory with modelID : %@ for software update model.", &v32, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
        [v6 deleteObject:v7];
      }
    }

    else
    {
      if (v13)
      {
        v24 = HMFGetLogIdentifier();
        v25 = [v7 debugDescription];
        v32 = 138543618;
        v33 = v24;
        v34 = 2112;
        v35 = v25;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Deleting the software update model %@ as it does not have accessory associated with it.", &v32, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      [v6 deleteObject:v7];
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)_fixupAccessoryWithNoInitialValues:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 initialManufacturer];
  if (v5)
  {

LABEL_3:
    v6 = 0;
    goto LABEL_8;
  }

  v7 = [v4 manufacturer];

  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = [v4 manufacturer];
  [v4 setInitialManufacturer:v8];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v4 manufacturer];
    v36 = 138543618;
    v37 = v12;
    v38 = 2112;
    v39 = v13;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@FixUP: updated initialManufacturer to [%@]", &v36, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v6 = 1;
LABEL_8:
  v14 = [v4 initialModel];
  if (v14)
  {
  }

  else
  {
    v15 = [v4 model];

    if (v15)
    {
      v16 = [v4 model];
      [v4 setInitialModel:v16];

      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v4 model];
        v36 = 138543618;
        v37 = v20;
        v38 = 2112;
        v39 = v21;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@FixUP: updated initialModel to [%@]", &v36, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v6 = 1;
    }
  }

  v22 = [v4 initialCategoryIdentifier];
  if ([v22 unsignedIntValue])
  {

    goto LABEL_16;
  }

  v23 = [v4 accessoryCategory];

  if (!v23)
  {
LABEL_16:
    if (!v6)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v24 = [v4 accessoryCategory];
  [v4 setInitialCategoryIdentifier:v24];

  v25 = objc_autoreleasePoolPush();
  v26 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    v29 = [v4 accessoryCategory];
    v36 = 138543618;
    v37 = v28;
    v38 = 2112;
    v39 = v29;
    _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@FixUP: updated initialCategoryIdentifier to [%@]", &v36, 0x16u);
  }

  objc_autoreleasePoolPop(v25);
LABEL_22:
  v30 = objc_autoreleasePoolPush();
  v31 = self;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = HMFGetLogIdentifier();
    v34 = [v4 debugDescription];
    v36 = 138543618;
    v37 = v33;
    v38 = 2112;
    v39 = v34;
    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@FixUP: updated initial values on : %@", &v36, 0x16u);
  }

  objc_autoreleasePoolPop(v30);
LABEL_25:

  v35 = *MEMORY[0x277D85DE8];
}

- (void)_fixupAccessoryWithNoRoom:(id)a3 coreDataModelObject:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 room];

  if (!v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v12;
      v27 = 2112;
      v28 = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@FixUP: Looks like [%@] does not have room associated with it. Going to put this accessory to default room", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [v7 home];
    v14 = [v13 defaultRoom];

    if (v14)
    {
      v15 = [v7 home];
      v16 = [v15 defaultRoom];
      [v7 setRoom:v16];

      v17 = objc_autoreleasePoolPush();
      v18 = v10;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v7 home];
        v22 = [v21 defaultRoom];
        v25 = 138543874;
        v26 = v20;
        v27 = 2112;
        v28 = v7;
        v29 = 2112;
        v30 = v22;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@FixUP: added accessory: [%@] to default room : [%@]", &v25, 0x20u);

LABEL_9:
      }
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v23 = v10;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        v21 = [v7 home];
        v25 = 138543618;
        v26 = v20;
        v27 = 2112;
        v28 = v21;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@This is not good. Looks like we do not have default room in the home : %@", &v25, 0x16u);
        goto LABEL_9;
      }
    }

    objc_autoreleasePoolPop(v17);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_createResidentModelsDuringMigrationForAppleMediaAccessory:(id)a3 context:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 home];
  if (!v9)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v8 debugDescription];
      *buf = 138543618;
      v70 = v21;
      v71 = 2112;
      v72 = v22;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@FixUp: Accessory without a home: %@", buf, 0x16u);
    }

    v17 = v18;
    goto LABEL_9;
  }

  v10 = [v8 resident];

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v14)
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v8 debugDescription];
      *buf = 138543618;
      v70 = v15;
      v71 = 2112;
      v72 = v16;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@FixUp: Accessory already has a resident: %@", buf, 0x16u);
    }

    v17 = v11;
LABEL_9:
    objc_autoreleasePoolPop(v17);
    goto LABEL_25;
  }

  if (v14)
  {
    v23 = HMFGetLogIdentifier();
    v24 = [v8 debugDescription];
    *buf = 138543618;
    v70 = v23;
    v71 = 2112;
    v72 = v24;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@FixUp: Creating resident for media accessory %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  v67 = 0;
  v25 = [v8 modelID];
  v26 = [v25 UUIDString];
  v68 = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];

  v28 = MEMORY[0x277CCAD78];
  v29 = [v9 modelID];
  v66 = v27;
  v30 = [v28 hm_deriveUUIDFromBaseUUID:v29 withSalts:v27];

  v65 = v30;
  v31 = [v9 materializeOrCreateResidentsRelationWithModelID:v30 createdNew:&v67];
  [v31 setAppleMediaAccessory:v8];
  v32 = [(HMDHH2Migrator *)v12 homeData];
  v33 = [v9 modelID];
  v34 = [v32 homeWithUUID:v33];
  v35 = [v8 modelID];
  v36 = [v34 accessoryWithUUID:v35];

  v64 = v36;
  v37 = [v36 name];
  [v31 setName:v37];

  v38 = [(HMDHH2Migrator *)v12 homeData];
  v39 = [v9 modelID];
  v40 = [v38 homeWithUUID:v39];
  v41 = [v8 modelID];
  v42 = [v40 accessoryWithUUID:v41];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  v44 = v43;

  v45 = [v44 deviceForDirectMessaging];
  if (v45)
  {
    v46 = [v31 idsIdentifier];

    if (!v46)
    {
      v47 = objc_autoreleasePoolPush();
      v48 = v12;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v50 = v61 = v48;
        [v31 modelID];
        v51 = v62 = v47;
        *buf = 138543618;
        v70 = v50;
        v71 = 2112;
        v72 = v51;
        _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@Adding ids identifier to MKFResident/%@ in fixup", buf, 0x16u);

        v47 = v62;
        v48 = v61;
      }

      objc_autoreleasePoolPop(v47);
      v52 = [v45 idsIdentifier];
      [v31 setIdsIdentifier:v52];
    }

    v53 = [v31 idsDestination];

    if (!v53)
    {
      v54 = objc_autoreleasePoolPush();
      v55 = v12;
      v56 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        HMFGetLogIdentifier();
        v57 = v63 = v54;
        v58 = [v31 modelID];
        *buf = 138543618;
        v70 = v57;
        v71 = 2112;
        v72 = v58;
        _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@Adding ids destination to MKFResident/%@ in fixup", buf, 0x16u);

        v54 = v63;
      }

      objc_autoreleasePoolPop(v54);
      v59 = [v45 globalDestination];
      [v31 setIdsDestination:v59];
    }
  }

LABEL_25:
  v60 = *MEMORY[0x277D85DE8];
}

- (void)_fixupAppleMediaAccessory:(id)a3 context:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 home];
  if (v9)
  {
    v10 = [(HMDHH2Migrator *)self homeData];
    v11 = [v9 modelID];
    v12 = [v10 homeWithUUID:v11];
    v13 = [v8 modelID];
    v14 = [v12 accessoryWithUUID:v13];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    v17 = [v16 deviceForDirectMessaging];
    if (v17)
    {
      v18 = [v8 idsIdentifier];

      if (!v18)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = self;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = HMFGetLogIdentifier();
          [v8 modelID];
          v23 = v38 = v19;
          *buf = 138543618;
          v40 = v22;
          v41 = 2112;
          v42 = v23;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Adding ids identifier to %@ in fixup", buf, 0x16u);

          v19 = v38;
        }

        objc_autoreleasePoolPop(v19);
        v24 = [v17 idsIdentifier];
        [v8 setIdsIdentifier:v24];
      }

      v25 = [v8 idsDestination];

      if (!v25)
      {
        v26 = objc_autoreleasePoolPush();
        v27 = self;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = HMFGetLogIdentifier();
          v30 = [v8 modelID];
          *buf = 138543618;
          v40 = v29;
          v41 = 2112;
          v42 = v30;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Adding ids destination to _MKFAppleMediaAccessory/%@ in fixup", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
        v31 = [v17 globalDestination];
        [v8 setIdsDestination:v31];
      }
    }
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    v33 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      v36 = [v8 debugDescription];
      *buf = 138543618;
      v40 = v35;
      v41 = 2112;
      v42 = v36;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@FixUp: AppleMediaAccessory without a home: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (void)_fixupCharacteristicEventTriggerInvalidService:(id)a3 context:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v24 = v6;
  [v6 events];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v29 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    v25 = v8;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (v15)
        {
          v16 = [v15 service];

          if (!v16)
          {
            v17 = objc_autoreleasePoolPush();
            v18 = self;
            v19 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v20 = v7;
              v22 = v21 = self;
              *buf = 138543618;
              v31 = v22;
              v32 = 2112;
              v33 = v15;
              _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@FixUp: deleting characteristicEvent: %@ as it has no associated service", buf, 0x16u);

              self = v21;
              v7 = v20;
              v8 = v25;
            }

            objc_autoreleasePoolPop(v17);
            [v7 deleteObject:v15];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v10);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_fixupCharacteristicWriteActionWithInvalidService:(id)a3 context:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v24 = v6;
  v8 = [v6 actions];
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    v25 = v8;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (v15)
        {
          v16 = [v15 service];

          if (!v16)
          {
            v17 = objc_autoreleasePoolPush();
            v18 = self;
            v19 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v20 = v7;
              v22 = v21 = self;
              *buf = 138543618;
              v31 = v22;
              v32 = 2112;
              v33 = v15;
              _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@FixUp: deleting characteristicWriteAction: %@ as it has no associated service", buf, 0x16u);

              self = v21;
              v7 = v20;
              v8 = v25;
            }

            objc_autoreleasePoolPop(v17);
            [v7 deleteObject:v15];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v10);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_fixupActionSetUnlocalizedName:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = [v4 type];
  v7 = +[HMDHome getBuiltinActionSets];
  v8 = [v7 hmf_stringForKey:v6];
  if ([v8 isEqual:v5])
  {
    v9 = HMDLocalizedStringForKey(v8);
    [v4 setName:v9];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543874;
      v16 = v13;
      v17 = 2112;
      v18 = v5;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@FixUp: found action set with unlocalized name, updating name from: %@ to: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_fixupActionSetInvalidName:(id)a3 context:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 name];
  v9 = v8;
  if (!v8 || ![(__CFString *)v8 length])
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = HMDLocalizedStringForKey(@"ACTION_SET_FALLBACK_NAME");
    v27 = 0;
    v12 = [v10 localizedStringWithValidatedFormat:v11 validFormatSpecifiers:@"%ld" error:&v27, _fixupActionSetInvalidName_context__fixedUpActionSetNameCounter];
    v13 = v27;

    v14 = v12;
    if (!v12)
    {
      v26 = v7;
      v15 = objc_autoreleasePoolPush();
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v17 = v25 = v15;
        *buf = 138544130;
        v29 = v17;
        v30 = 2112;
        v31 = @"ACTION_SET_FALLBACK_NAME";
        v32 = 2112;
        v33 = @"%ld";
        v34 = 2112;
        v35 = v13;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

        v15 = v25;
      }

      objc_autoreleasePoolPop(v15);
      v14 = @"ACTION_SET_FALLBACK_NAME";
      v7 = v26;
    }

    v18 = v14;

    [v6 setName:v18];
    ++_fixupActionSetInvalidName_context__fixedUpActionSetNameCounter;
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v6 name];
      *buf = 138543874;
      v29 = v22;
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v23;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@FixUp: found action set with invalid name, updating name from: %@ to: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_fixupTriggerInvalidName:(id)a3 context:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 name];
  v10 = v9;
  if (!v9 || ![(__CFString *)v9 length])
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = HMDLocalizedStringForKey(@"TRIGGER_FALLBACK_NAME");
    v28 = 0;
    v13 = [v11 localizedStringWithValidatedFormat:v12 validFormatSpecifiers:@"%ld" error:&v28, _fixupTriggerInvalidName_context__fixedUpTriggerNameCounter];
    v14 = v28;

    v15 = v13;
    if (!v13)
    {
      v27 = v7;
      v16 = objc_autoreleasePoolPush();
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v18 = v26 = v16;
        *buf = 138544130;
        v30 = v18;
        v31 = 2112;
        v32 = @"TRIGGER_FALLBACK_NAME";
        v33 = 2112;
        v34 = @"%ld";
        v35 = 2112;
        v36 = v14;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

        v16 = v26;
      }

      objc_autoreleasePoolPop(v16);
      v15 = @"TRIGGER_FALLBACK_NAME";
      v7 = v27;
    }

    v19 = v15;

    [v8 setName:v19];
    ++_fixupTriggerInvalidName_context__fixedUpTriggerNameCounter;
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v8 name];
      *buf = 138543874;
      v30 = v23;
      v31 = 2112;
      v32 = v10;
      v33 = 2112;
      v34 = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@FixUp: found trigger with invalid name, updating name from: %@ to: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_fixupUserAuthorizationDataForUserModel:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isOwner])
  {
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = [(HMDHH2Migrator *)self homeData];
    v7 = [v6 homes];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __58__HMDHH2Migrator__fixupUserAuthorizationDataForUserModel___block_invoke;
    v17[3] = &unk_278682980;
    v8 = v5;
    v18 = v8;
    [v7 na_each:v17];

    v9 = [v8 copy];
    [v4 setOwnerCharacteristicAuthorizationData:v9];

    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];
      v15 = [v4 ownerCharacteristicAuthorizationData];
      *buf = 138543874;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@FixUp: Updating %@ user's characteristics authorization data to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __58__HMDHH2Migrator__fixupUserAuthorizationDataForUserModel___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hapAccessories];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__HMDHH2Migrator__fixupUserAuthorizationDataForUserModel___block_invoke_2;
  v4[3] = &unk_278682958;
  v5 = *(a1 + 32);
  [v3 na_each:v4];
}

void __58__HMDHH2Migrator__fixupUserAuthorizationDataForUserModel___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 services];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__HMDHH2Migrator__fixupUserAuthorizationDataForUserModel___block_invoke_3;
  v6[3] = &unk_278682930;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  [v4 na_each:v6];
}

void __58__HMDHH2Migrator__fixupUserAuthorizationDataForUserModel___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 characteristics];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __58__HMDHH2Migrator__fixupUserAuthorizationDataForUserModel___block_invoke_4;
  v4[3] = &unk_278682908;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 na_each:v4];
}

void __58__HMDHH2Migrator__fixupUserAuthorizationDataForUserModel___block_invoke_4(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [v15 getCharacteristicDictionaryForMigrationFixup];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD2100]];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) uuid];
    v7 = [v5 objectForKeyedSubscript:v6];
    v8 = v7;
    if (!v7)
    {
      v8 = [MEMORY[0x277CBEB38] dictionary];
    }

    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) uuid];
    [v9 setObject:v8 forKeyedSubscript:v10];

    if (!v7)
    {
    }

    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) uuid];
    v13 = [v11 objectForKeyedSubscript:v12];
    v14 = [v15 instanceID];
    [v13 setObject:v4 forKeyedSubscript:v14];
  }
}

- (void)_fixupInvalidCharacteristicFormat:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = [a3 characteristics];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HMDHH2Migrator__fixupInvalidCharacteristicFormat_context___block_invoke;
  v9[3] = &unk_2786828E0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];
}

void __60__HMDHH2Migrator__fixupInvalidCharacteristicFormat_context___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 format];

  if (!v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v3 debugDescription];
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@FixUp: Deleting the characteristic without a format : %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 40) deleteObject:v3];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_fixupUserAccessCodeWithInvalidValue:(id)a3 context:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 accessCode];

  if (!v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v8 debugDescription];
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@FixUp: Found MKFUserAccessCode without accessCode. Going to remove this entity: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [v7 deleteObject:v8];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_fixupGuestAccessCodeWithInvalidLabel:(id)a3 context:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 label];
  if (!v9 || (v10 = v9, [v8 label], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, v10, !v12))
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v8 debugDescription];
      v19 = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@FixUp: Found MKFGuestAccessCode with empty label. Going to remove this entity: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    [v7 deleteObject:v8];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_fixupHomeManagerPairingIdentity:(id)a3 withHH2ControllerKey:(id)a4 context:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v11 controllerKeyIdentifier];
    v24 = 138543618;
    v25 = v15;
    v26 = 2112;
    v27 = v16;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@FixUp: Current controller key identifier for the home manager is %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  v17 = [v9 identifier];
  [v11 setControllerKeyIdentifier:v17];

  v18 = objc_autoreleasePoolPush();
  v19 = v13;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [v11 controllerKeyIdentifier];
    v24 = 138543618;
    v25 = v21;
    v26 = 2112;
    v27 = v22;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@FixUp: Updating the controller key identifier for the Home Manager to %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  v23 = *MEMORY[0x277D85DE8];
}

- (void)_fixupUserPairingIdentity:(id)a3 withHH2ControllerKey:(id)a4 context:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 privilege];
  v12 = [v11 intValue];

  if (v12 == 3)
  {
    v13 = [(HMDHH2Migrator *)self homeData];
    v14 = [v13 account];

    if (v14)
    {
      v15 = [(HMDHH2Migrator *)self homeData];
      v16 = [v15 account];
      v17 = [v16 identifier];
      [v8 setAccountIdentifier:v17];

      v18 = [(HMDHH2Migrator *)self homeData];
      v19 = [v18 primaryAccountHandle];
      if (v19)
      {
        [v8 setAccountHandle:v19];
      }

      else
      {
        v20 = [v14 primaryHandle];
        [v8 setAccountHandle:v20];
      }
    }

    [v8 setPairingIdentity:v9];
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v8 pairingIdentity];
      v27 = 138543618;
      v28 = v24;
      v29 = 2112;
      v30 = v25;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@FixUp: Updating owner's pairing identity : %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_updatePairingIdentityForHome:(id)a3 withHH2ControllerKey:(id)a4 context:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v12 = [v9 publicKey];
  v13 = [v12 data];
  [v11 setOwnerPublicKey:v13];

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v11 ownerPublicKey];
    v20 = 138543618;
    v21 = v17;
    v22 = 2112;
    v23 = v18;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@FixUp: Updated the home owner's public key to %@", &v20, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)_fixupHomeInvalidName:(id)a3 context:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 name];
  v10 = v9;
  if (!v9 || ![(__CFString *)v9 length])
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = HMDLocalizedStringForKey(@"HOME_FALLBACK_NAME");
    v28 = 0;
    v13 = [v11 localizedStringWithValidatedFormat:v12 validFormatSpecifiers:@"%ld" error:&v28, _fixupHomeInvalidName_context__fixedUpHomeNameCounter];
    v14 = v28;

    v15 = v13;
    if (!v13)
    {
      v27 = v7;
      v16 = objc_autoreleasePoolPush();
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v18 = v26 = v16;
        *buf = 138544130;
        v30 = v18;
        v31 = 2112;
        v32 = @"HOME_FALLBACK_NAME";
        v33 = 2112;
        v34 = @"%ld";
        v35 = 2112;
        v36 = v14;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to determined localized string for format key %@ and valid format specifiers %@: %@", buf, 0x2Au);

        v16 = v26;
      }

      objc_autoreleasePoolPop(v16);
      v15 = @"HOME_FALLBACK_NAME";
      v7 = v27;
    }

    v19 = v15;

    [v8 setName:v19];
    ++_fixupHomeInvalidName_context__fixedUpHomeNameCounter;
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v8 name];
      *buf = 138543874;
      v30 = v23;
      v31 = 2112;
      v32 = v10;
      v33 = 2112;
      v34 = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@FixUp: found home with invalid name, updating name from: %@ to: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_fixUpHomeWithoutOwner:(id)a3 withHH2ControllerKey:(id)a4 context:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  v12 = [v11 owner];

  if (!v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Looks like this home does not have owner. Going to create one", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [[_MKFUser alloc] initWithContext:v10];
    v18 = [MEMORY[0x277CCAD78] UUID];
    [(_MKFUser *)v17 setModelID:v18];

    [(_MKFUser *)v17 setPairingIdentity:v9];
    [(_MKFUser *)v17 setPrivilege:&unk_283E74798];
    [v11 setOwner:v17];
    [(_MKFUser *)v17 setHome:v11];
    [(_MKFUser *)v17 setOwnedHome:v11];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)fixupModelForMigration:(id)a3 backingStoreModelObject:(id)a4 hh2ControllerKey:(id)a5
{
  v113 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 managedObject];
  v12 = [v11 entity];
  v13 = +[_MKFHome entity];
  v14 = [v12 isKindOfEntity:v13];

  p_cache = &OBJC_METACLASS___HMDAccessCodeManagerUtilities.cache;
  if (v14)
  {
    [(HMDHH2Migrator *)self _updatePairingIdentityForHome:v11 withHH2ControllerKey:v10 context:v8];
    [(HMDHH2Migrator *)self _fixUpHomeWithoutOwner:v11 withHH2ControllerKey:v10 context:v8];
    [(HMDHH2Migrator *)self _fixupHomeInvalidName:v11 context:v8];
    v16 = v11;
    v17 = v8;
    if (self)
    {
      v103 = v16;
      v104 = v10;
      v101 = v16;
      v102 = v17;
      v18 = v17;
      v106 = 0;
      v19 = [_MKFHomeManager fetchWithContext:v18 error:&v106];
      v20 = v106;
      if (v19)
      {
        v21 = [v19 appDataDictionary];
        if (v21)
        {
          v22 = [HMDHome didHomeAppOnboardHindsightWithAppData:v21];
        }

        else
        {
          context = objc_autoreleasePoolPush();
          v27 = self;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            HMFGetLogIdentifier();
            v29 = v99 = v9;
            *buf = 138543362;
            v108 = v29;
            _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Home manager doesn't have app data", buf, 0xCu);

            v9 = v99;
          }

          objc_autoreleasePoolPop(context);
          v22 = 0;
          p_cache = &OBJC_METACLASS___HMDAccessCodeManagerUtilities.cache;
        }
      }

      else
      {
        v23 = objc_autoreleasePoolPush();
        v24 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v26 = v98 = v9;
          *buf = 138543618;
          v108 = v26;
          v109 = 2114;
          v110 = v20;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Unable to find home manager: %{public}@", buf, 0x16u);

          v9 = v98;
        }

        objc_autoreleasePoolPop(v23);
        v22 = 0;
        p_cache = (&OBJC_METACLASS___HMDAccessCodeManagerUtilities + 16);
      }

      v30 = objc_autoreleasePoolPush();
      v31 = self;
      v32 = HMFGetOSLogHandle();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_INFO);
      if (v22)
      {
        v34 = v101;
        if (v33)
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v108 = v35;
          v109 = 2112;
          v110 = v101;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Home %@ has previously onboarded hindsight", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
        [v101 setDidOnboardEventLog:MEMORY[0x277CBEC38]];
      }

      else
      {
        v34 = v101;
        if (v33)
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543618;
          v108 = v36;
          v109 = 2112;
          v110 = v101;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Home %@ has not completed hindsight onboarding", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
      }

      v16 = v103;
      v10 = v104;
      v17 = v102;
    }
  }

  v37 = [v11 entity];
  v38 = +[_MKFUser entity];
  v39 = [v37 isKindOfEntity:v38];

  if (v39)
  {
    v40 = v11;
    v41 = [v40 privilege];
    v42 = [v41 intValue];

    if (v42 == 3)
    {
      [(HMDHH2Migrator *)self _fixupUserPairingIdentity:v40 withHH2ControllerKey:v10 context:v8];
      [(HMDHH2Migrator *)self _fixupAssistantAccessControlForUserModel:v40];
      [(HMDHH2Migrator *)self _fixupUserAuthorizationDataForUserModel:v40];
    }
  }

  v43 = [v11 entity];
  v44 = +[_MKFOutgoingInvitation entity];
  v45 = [v43 isKindOfEntity:v44];

  if (v45)
  {
    [(HMDHH2Migrator *)self _fixupOutgoingInvitationModel:v11];
  }

  v46 = [v11 entity];
  v47 = [p_cache + 343 entity];
  v48 = [v46 isKindOfEntity:v47];

  if (v48)
  {
    [(HMDHH2Migrator *)self _fixupHomeManagerPairingIdentity:v11 withHH2ControllerKey:v10 context:v8];
  }

  v49 = [v11 entity];
  v50 = +[_MKFAppleMediaAccessory entity];
  v51 = [v49 isKindOfEntity:v50];

  if (v51)
  {
    [(HMDHH2Migrator *)self _fixupAppleMediaAccessory:v11 context:v8];
    [(HMDHH2Migrator *)self _createResidentModelsDuringMigrationForAppleMediaAccessory:v11 context:v8];
  }

  v52 = [v11 entity];
  v53 = +[_MKFAccessory entity];
  v54 = [v52 isKindOfEntity:v53];

  if (v54)
  {
    [(HMDHH2Migrator *)self _fixupAccessoryWithNoRoom:v8 coreDataModelObject:v11];
    [(HMDHH2Migrator *)self _fixupAccessoryWithNoInitialValues:v11];
  }

  v55 = [v11 entity];
  v56 = +[_MKFSoftwareUpdate entity];
  v57 = [v55 isKindOfEntity:v56];

  if (v57)
  {
    [(HMDHH2Migrator *)self _fixupSoftwareUpdateModelWithNoAccessory:v8 coreDataModelObject:v11];
  }

  v58 = [v11 entity];
  v59 = +[_MKFGuestAccessCode entity];
  v60 = [v58 isKindOfEntity:v59];

  if (v60)
  {
    v61 = MEMORY[0x277CCAD78];
    v62 = v11;
    v63 = [v61 UUID];
    [v62 setHh2ModelID:v63];

    [(HMDHH2Migrator *)self _fixupGuestAccessCodeWithInvalidLabel:v62 context:v8];
  }

  v64 = [v11 entity];
  v65 = +[_MKFRemovedUserAccessCode entity];
  v66 = [v64 isKindOfEntity:v65];

  if (v66)
  {
    v67 = MEMORY[0x277CCAD78];
    v68 = v11;
    v69 = [v67 UUID];
    [v68 setHh2ModelID:v69];
  }

  v70 = [v11 entity];
  v71 = +[_MKFApplicationData entity];
  v72 = [v70 isKindOfEntity:v71];

  if (v72)
  {
    v73 = v11;
    if (([v73 hasValidContainer] & 1) == 0)
    {
      v74 = objc_autoreleasePoolPush();
      v75 = self;
      v76 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v77 = v100 = v9;
        [v73 debugDescription];
        v78 = v105 = v10;
        v79 = [v73 appDataDictionary];
        *buf = 138543874;
        v108 = v77;
        v109 = 2112;
        v110 = v78;
        v111 = 2112;
        v112 = v79;
        _os_log_impl(&dword_229538000, v76, OS_LOG_TYPE_INFO, "%{public}@FixUp : Deleting app data [%@] as it is not associated with any container : %@", buf, 0x20u);

        v10 = v105;
        v9 = v100;
      }

      objc_autoreleasePoolPop(v74);
      [v8 deleteObject:v73];
    }
  }

  v80 = [v11 entity];
  v81 = +[_MKFUserAccessCode entity];
  v82 = [v80 isKindOfEntity:v81];

  if (v82)
  {
    [(HMDHH2Migrator *)self _fixupUserAccessCodeWithInvalidValue:v11 context:v8];
  }

  v83 = [v11 entity];
  v84 = +[_MKFService entity];
  v85 = [v83 isKindOfEntity:v84];

  if (v85)
  {
    [(HMDHH2Migrator *)self _fixupInvalidCharacteristicFormat:v11 context:v8];
  }

  v86 = [v11 entity];
  v87 = +[_MKFTrigger entity];
  v88 = [v86 isKindOfEntity:v87];

  if (v88)
  {
    [(HMDHH2Migrator *)self _fixupTriggerInvalidName:v11 context:v8];
  }

  v89 = [v11 entity];
  v90 = +[_MKFActionSet entity];
  v91 = [v89 isKindOfEntity:v90];

  if (v91)
  {
    v92 = v11;
    [(HMDHH2Migrator *)self _fixupActionSetInvalidName:v92 context:v8];
    [(HMDHH2Migrator *)self _fixupActionSetUnlocalizedName:v92];
    [(HMDHH2Migrator *)self _fixupCharacteristicWriteActionWithInvalidService:v92 context:v8];
  }

  v93 = [v11 entity];
  v94 = +[_MKFEventTrigger entity];
  v95 = [v93 isKindOfEntity:v94];

  if (v95)
  {
    [(HMDHH2Migrator *)self _fixupCharacteristicEventTriggerInvalidService:v11 context:v8];
  }

  v96 = *MEMORY[0x277D85DE8];
}

- (void)fixupPreviousFailedMigrationModelsWithHomeData:(id)a3 managedObjectContext:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v26 = a3;
  v6 = a4;
  context = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CBEB58] set];
  v8 = [MEMORY[0x277CBEB58] set];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v9 = [v26 homes];
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v10)
  {
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = [v13 uuid];
        [v7 addObject:v14];

        v15 = [v13 owner];
        v16 = [v15 uuid];
        [v8 addObject:v16];
      }

      v10 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v10);
  }

  v17 = +[_MKFHome fetchRequest];
  v32 = 0;
  v18 = [v6 executeFetchRequest:v17 error:&v32];
  v19 = v32;
  if (v19)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = v19;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch MKFHome instances: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v38 = 0;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __86__HMDHH2Migrator_fixupPreviousFailedMigrationModelsWithHomeData_managedObjectContext___block_invoke;
    v27[3] = &unk_2786828B8;
    v28 = v7;
    v30 = self;
    v31 = buf;
    v29 = v8;
    [v18 hmf_enumerateWithAutoreleasePoolUsingBlock:v27];
    if (*(*&buf[8] + 24) == 1)
    {
      [(HMDHH2Migrator *)self _saveAndResetWithContext:v6 errorMessage:@"Failed to save fixed up for previous failed migration models prior to re-attempting migration"];
    }

    _Block_object_dispose(buf, 8);
  }

  objc_autoreleasePoolPop(context);
  v24 = *MEMORY[0x277D85DE8];
}

void __86__HMDHH2Migrator_fixupPreviousFailedMigrationModelsWithHomeData_managedObjectContext___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 modelID];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    v6 = [v3 owner];
    v7 = [v6 modelID];
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 40);
      v10 = [v3 owner];
      v11 = [v10 modelID];
      LODWORD(v9) = [v9 containsObject:v11];

      if (v9)
      {
        v12 = [MEMORY[0x277CCAD78] UUID];
        v13 = [v3 owner];
        [v13 setModelID:v12];

        *(*(*(a1 + 56) + 8) + 24) = 1;
        v14 = objc_autoreleasePoolPush();
        v15 = *(a1 + 48);
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = HMFGetLogIdentifier();
          v18 = [v3 name];
          v19 = [v3 modelID];
          v21 = 138543874;
          v22 = v17;
          v23 = 2112;
          v24 = v18;
          v25 = 2112;
          v26 = v19;
          _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Fixup: Randomly assigned new UUID for owner of previous failed migrated home: %@/%@", &v21, 0x20u);
        }

        objc_autoreleasePoolPop(v14);
      }
    }

    else
    {
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)_saveAndResetWithContext:(id)a3 errorMessage:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v8 = [v6 hmd_saveWithTransactionAuthor:7 error:&v16];
  v9 = v16;
  if ((v8 & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543874;
      v18 = v13;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@%@, Save Error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDHH2Migrator *)v11 submitABCEventForFailedMigrationWithReason:1 withError:v9];
  }

  [v6 reset];

  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)populateAndSaveCDModelsFrom:(id)a3 managedObjectContext:(id)a4 hh2ControllerKey:(id)a5 tag:(id)a6
{
  v61 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v41 = a5;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    *buf = 138543874;
    *&buf[4] = v16;
    *&buf[12] = 2112;
    *&buf[14] = v17;
    *&buf[22] = 2112;
    v58 = v12;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Migrating [%@] models for %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v58 = __Block_byref_object_copy__231211;
  v59 = __Block_byref_object_dispose__231212;
  v60 = 0;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __88__HMDHH2Migrator_populateAndSaveCDModelsFrom_managedObjectContext_hh2ControllerKey_tag___block_invoke;
  v49[3] = &unk_278682840;
  v18 = v11;
  v51 = v14;
  v52 = buf;
  v50 = v18;
  [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v49];
  if (*(*&buf[8] + 40))
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v14;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = *(*&buf[8] + 40);
      *v53 = 138543618;
      v54 = v22;
      v55 = 2112;
      v56 = v23;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unable to create managed object : %@", v53, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    [(HMDHH2Migrator *)v20 submitABCEventForFailedMigrationWithReason:8 withError:*(*&buf[8] + 40)];
    v24 = 0;
  }

  else
  {
    v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __88__HMDHH2Migrator_populateAndSaveCDModelsFrom_managedObjectContext_hh2ControllerKey_tag___block_invoke_99;
    v45[3] = &unk_278682868;
    v45[4] = v14;
    v48 = buf;
    v26 = v18;
    v46 = v26;
    v27 = v25;
    v47 = v27;
    [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v45];
    if (*(*&buf[8] + 40))
    {
      v28 = objc_autoreleasePoolPush();
      v29 = v14;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = *(*&buf[8] + 40);
        *v53 = 138543618;
        v54 = v31;
        v55 = 2112;
        v56 = v32;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Unable to update managed object : %@", v53, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      [(HMDHH2Migrator *)v29 submitABCEventForFailedMigrationWithReason:8 withError:*(*&buf[8] + 40)];
      v24 = 0;
    }

    else
    {
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __88__HMDHH2Migrator_populateAndSaveCDModelsFrom_managedObjectContext_hh2ControllerKey_tag___block_invoke_103;
      v42[3] = &unk_278682890;
      v42[4] = v14;
      v33 = v26;
      v43 = v33;
      v44 = v41;
      [v27 hmf_enumerateWithAutoreleasePoolUsingBlock:v42];
      v34 = objc_autoreleasePoolPush();
      v35 = v14;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        *v53 = 138543618;
        v54 = v37;
        v55 = 2112;
        v56 = v12;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Going to save all CD models for the [%@] to the working store", v53, 0x16u);
      }

      objc_autoreleasePoolPop(v34);
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to save during migrating %@", v12];
      v24 = [(HMDHH2Migrator *)v35 _saveAndResetWithContext:v33 errorMessage:v38];
    }
  }

  _Block_object_dispose(buf, 8);
  v39 = *MEMORY[0x277D85DE8];
  return v24;
}

void __88__HMDHH2Migrator_populateAndSaveCDModelsFrom_managedObjectContext_hh2ControllerKey_tag___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = HMDCastIfModelCDRepresentable(v6);
  v8 = *(a1 + 32);
  v9 = *(*(a1 + 48) + 8);
  obj = *(v9 + 40);
  v10 = [v7 cd_currentManagedObjectInContext:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  if (v10)
  {
  }

  else if (*(*(*(a1 + 48) + 8) + 40))
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543874;
      v19 = v14;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to create current managed object for %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    *a4 = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __88__HMDHH2Migrator_populateAndSaveCDModelsFrom_managedObjectContext_hh2ControllerKey_tag___block_invoke_99(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = [objc_opt_class() shouldIgnoreModel:v6];
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v6 bsoType];
      v15 = [v6 uuid];
      *buf = 138543874;
      v37 = v13;
      v38 = 2112;
      v39 = v14;
      v40 = 2112;
      v41 = v15;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Not migrating [%@.%@] as it is ignored right now.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    if (v12)
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(*(*(a1 + 56) + 8) + 40);
      *buf = 138543874;
      v37 = v16;
      v38 = 2112;
      v39 = v6;
      v40 = 2112;
      v41 = v17;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Populating CD object for %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v18 = HMDCastIfModelCDRepresentable(v6);
    if (!v18)
    {
      _HMFPreconditionFailure();
    }

    v19 = v18;
    v20 = *(a1 + 40);
    v21 = *(*(a1 + 56) + 8);
    obj = *(v21 + 40);
    v22 = [v18 cd_updateManagedObjectInContext:v20 error:&obj];
    objc_storeStrong((v21 + 40), obj);
    if (v22)
    {
      v23 = [v6 managedObject];

      if (v23)
      {
        [*(a1 + 48) addObject:v6];
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = *(a1 + 32);
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543618;
          v37 = v33;
          v38 = 2112;
          v39 = v6;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Nil managed object found for [%@]. Not adding to the migration list", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = *(a1 + 32);
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        v28 = [v6 bsoType];
        v29 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138543874;
        v37 = v27;
        v38 = 2112;
        v39 = v28;
        v40 = 2112;
        v41 = v29;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Could not populate CD version of %@ due to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
      *a4 = 1;
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (id)findAndRemoveAllModelsWithInvalidAccessCodes:(id)a3
{
  v3 = a3;
  v4 = [v3 na_map:&__block_literal_global_72_231330];
  v5 = [v4 na_dictionaryWithKeyGenerator:&__block_literal_global_75_231331];

  v6 = [v3 na_map:&__block_literal_global_78_231332];
  v7 = [v6 na_dictionaryWithKeyGenerator:&__block_literal_global_81_231333];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__HMDHH2Migrator_findAndRemoveAllModelsWithInvalidAccessCodes___block_invoke_5;
  v12[3] = &unk_278682748;
  v13 = v7;
  v14 = v5;
  v8 = v5;
  v9 = v7;
  v10 = [v3 na_map:v12];

  return v10;
}

id __63__HMDHH2Migrator_findAndRemoveAllModelsWithInvalidAccessCodes___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
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
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = [v5 parentUUID];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      v10 = *(a1 + 40);
      v11 = [v9 userID];
      v12 = [v10 objectForKeyedSubscript:v11];

      if (v12)
      {
        v13 = [v12 accessCode];

        if (v13)
        {
          v14 = [v12 accessCode];
          [v6 setValue:v14];

          v15 = v6;
          v13 = v3;
        }
      }

      else
      {
        v13 = v3;
      }
    }

    else
    {
      v13 = v3;
    }
  }

  else
  {
    v13 = v3;
  }

  return v13;
}

void *__63__HMDHH2Migrator_findAndRemoveAllModelsWithInvalidAccessCodes___block_invoke_3(uint64_t a1, void *a2)
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

id __63__HMDHH2Migrator_findAndRemoveAllModelsWithInvalidAccessCodes___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 user];
  v3 = [v2 objectForKeyedSubscript:@"userID"];

  return v3;
}

void *__63__HMDHH2Migrator_findAndRemoveAllModelsWithInvalidAccessCodes___block_invoke(uint64_t a1, void *a2)
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

- (id)_auditAccessCodesByRemovingIllegalDuplicatesFromModels:(id)a3
{
  v4 = a3;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__HMDHH2Migrator__auditAccessCodesByRemovingIllegalDuplicatesFromModels___block_invoke;
  v16[3] = &unk_278682680;
  v17 = v4;
  v5 = v4;
  v6 = [v5 na_map:v16];
  v7 = [v5 na_map:&__block_literal_global_69_231349];
  v8 = [objc_opt_class() auditedHomeAccessCodeModelsFromModels:v7 userAccessCodeModelsAndInvites:v6];
  v9 = [objc_opt_class() auditedUserAccessCodeModelsAndInvitesFromModels:v6];
  v10 = [objc_opt_class() arrayByRemovingElementsInArray:v8 fromArray:v7];
  v11 = [objc_opt_class() arrayByRemovingElementsInArray:v9 fromArray:v6];
  v12 = [v10 arrayByAddingObjectsFromArray:v11];
  v13 = [objc_opt_class() arrayByRemovingElementsInArray:v12 fromArray:v5];
  v14 = [(HMDHH2Migrator *)self findAndRemoveAllModelsWithInvalidAccessCodes:v13];

  return v14;
}

id __73__HMDHH2Migrator__auditAccessCodesByRemovingIllegalDuplicatesFromModels___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v3 && (isKindOfClass & 1) != 0)
  {
    v5 = v3;
  }

  else
  {
    v6 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      v9 = *(a1 + 32);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __73__HMDHH2Migrator__auditAccessCodesByRemovingIllegalDuplicatesFromModels___block_invoke_2;
      v17[3] = &unk_278682658;
      v18 = v8;
      v10 = [v9 na_firstObjectPassingTest:v17];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      v13 = v12;
      if (v12 && ([v12 privilege], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqual:", &unk_283E74798), v14, v15))
      {
        v5 = v6;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void *__73__HMDHH2Migrator__auditAccessCodesByRemovingIllegalDuplicatesFromModels___block_invoke_66(uint64_t a1, void *a2)
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

uint64_t __73__HMDHH2Migrator__auditAccessCodesByRemovingIllegalDuplicatesFromModels___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [*(a1 + 32) parentUUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (BOOL)migrateHomeToCoreData:(id)a3 primaryHomeUUID:(id)a4 managedObjectContext:(id)a5 hh2ControllerKey:(id)a6
{
  v48 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v43 = v17;
    v44 = 2112;
    v45 = v10;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Starting migration for home : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [MEMORY[0x277CBEB18] array];
  v19 = [v10 uuid];
  v20 = HMFEqualObjects();

  if ((v20 & 1) == 0)
  {
    v41 = v13;
    v21 = objc_autoreleasePoolPush();
    v22 = v15;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v24 = v40 = v11;
      v25 = [v10 name];
      v26 = [v10 uuid];
      *buf = 138543874;
      v43 = v24;
      v44 = 2112;
      v45 = v25;
      v46 = 2112;
      v47 = v26;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Adding HMDHomeManagerHomeModel for %@/%@", buf, 0x20u);

      v11 = v40;
    }

    objc_autoreleasePoolPop(v21);
    v27 = objc_opt_class();
    v28 = [v10 uuid];
    v29 = [v27 modelForHomeUUID:v28];

    [v29 setObjectChangeType:1];
    [v18 addObject:v29];

    v13 = v41;
  }

  v30 = [v10 backingStoreObjects:4 hh2Migration:1];
  [v18 addObjectsFromArray:v30];

  v31 = [v10 uuid];
  v32 = HMDWorkingContextNameForHomeUUID(v31);
  [v12 setName:v32];

  v33 = objc_autoreleasePoolPush();
  v34 = [objc_opt_class() modelsByDroppingEmptyStringAccessCodesOnModels:v18];
  v35 = [(HMDHH2Migrator *)v15 _auditAccessCodesByRemovingIllegalDuplicatesFromModels:v34];

  objc_autoreleasePoolPop(v33);
  v36 = [v10 name];
  v37 = [(HMDHH2Migrator *)v15 populateAndSaveCDModelsFrom:v35 managedObjectContext:v12 hh2ControllerKey:v13 tag:v36];

  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

- (BOOL)migrateHome:(id)a3 primaryHomeUUID:(id)a4 managedObjectContext:(id)a5 hh2ControllerKey:(id)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v10 isOwnerUser];
  v15 = objc_autoreleasePoolPush();
  if ((v14 & 1) == 0)
  {
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = HMFGetLogIdentifier();
      v33 = 138543618;
      v34 = v24;
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Not migrating home [%@] as it is not owned by the current user.", &v33, 0x16u);
    }

    goto LABEL_11;
  }

  v16 = objc_autoreleasePoolPush();
  if (![(HMDHH2Migrator *)self migrateHomeToCoreData:v10 primaryHomeUUID:v11 managedObjectContext:v12 hh2ControllerKey:v13])
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v29;
      v30 = "%{public}@Unable to migrate home data to Core Data.";
LABEL_16:
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, v30, &v33, 0xCu);
    }

LABEL_17:

    objc_autoreleasePoolPop(v26);
    objc_autoreleasePoolPop(v16);
    v25 = 0;
    goto LABEL_18;
  }

  objc_autoreleasePoolPop(v16);
  v16 = objc_autoreleasePoolPush();
  if (![(HMDHH2Migrator *)self migrateV5Models:v12 forHome:v10])
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v29;
      v30 = "%{public}@Unable to migrate v5 models to Core Data.";
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  objc_autoreleasePoolPop(v16);
  v17 = [(HMDHH2Migrator *)self migratorRecord];
  v18 = [v17 shouldSkipKeyRollOperations];

  v16 = objc_autoreleasePoolPush();
  if (v18)
  {
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@*=*=*=*= Not scheduling any kind of key roll operations as migrator was asked to skip them. *=*=*=*=", &v33, 0xCu);
    }

    goto LABEL_20;
  }

  if (![(HMDHH2Migrator *)self rollAccessoryKeysToHH2:v10 hh2ControllerKey:v13])
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
    v28 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    v29 = HMFGetLogIdentifier();
    v33 = 138543362;
    v34 = v29;
    v30 = "%{public}@Unable to schedule key-roll operations";
    goto LABEL_16;
  }

LABEL_20:
  objc_autoreleasePoolPop(v16);
LABEL_11:
  v25 = 1;
LABEL_18:
  objc_autoreleasePoolPop(v15);

  v31 = *MEMORY[0x277D85DE8];
  return v25;
}

- (BOOL)migrateHomeManager:(id)a3 managedObjectContext:(id)a4 hh2ControllerKey:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = [v7 primaryHomeUUID];
  if (v11)
  {
    v12 = [v7 homes];
    v13 = [v12 hmf_firstObjectWithUUID:v11];

    if (([v13 isOwnerUser] & 1) == 0)
    {
      v32 = v10;
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        [v13 isOwnerUser];
        v18 = HMFBooleanToString();
        *buf = 138543874;
        v35 = v17;
        v36 = 2112;
        v37 = v11;
        v38 = 2112;
        v39 = v18;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Skipping migrating primary home setting %@, primaryHome.isOwnerUser = %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      v11 = 0;
      v10 = v32;
    }
  }

  v19 = objc_opt_class();
  v20 = [v7 cloudZones];
  v21 = [v7 applicationData];
  v22 = [v19 getAllBackingStoreObjects:4 primaryHomeUUID:v11 cloudZone:v20 appData:v21];

  if (v11)
  {
    v23 = v10;
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v27;
      v36 = 2112;
      v37 = v11;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Adding primary HMDHomeManagerHomeModel %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [objc_opt_class() modelForHomeUUID:v11];
    [v28 setObjectChangeType:1];
    [v22 addObject:v28];

    v10 = v23;
  }

  [v8 setName:{@"HomeManager", v32}];
  v29 = [(HMDHH2Migrator *)self populateAndSaveCDModelsFrom:v22 managedObjectContext:v8 hh2ControllerKey:v9 tag:@"Home Manager"];

  objc_autoreleasePoolPop(v10);
  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)migrateHomeData:(id)a3 managedObjectContext:(id)a4 hh2ControllerKey:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(HMDHH2Migrator *)self setHomeData:v8];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v11 = [(HMDHH2Migrator *)self migrateHomeManager:v8 managedObjectContext:v9 hh2ControllerKey:v10];
  *(v38 + 24) = v11;
  if (v11)
  {
    v12 = [v8 homes];
    v13 = [v12 count] == 0;

    if (v13)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v42 = v29;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@There are no homes... Skipping home migration path...", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      v17 = 1;
    }

    else
    {
      v14 = [(HMDHH2Migrator *)self migratorRecord];
      v15 = [v14 isAutoMigration];

      if ((v15 & 1) == 0)
      {
        [(HMDHH2Migrator *)self _fixupUserUUID:v8];
      }

      v16 = [v8 homes];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __72__HMDHH2Migrator_migrateHomeData_managedObjectContext_hh2ControllerKey___block_invoke;
      v32[3] = &unk_278682610;
      v36 = &v37;
      v32[4] = self;
      v33 = v8;
      v34 = v9;
      v35 = v10;
      [v16 hmf_enumerateWithAutoreleasePoolUsingBlock:v32];

      v17 = *(v38 + 24);
      if ((v17 & 1) == 0)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = HMFGetLogIdentifier();
          *buf = 138543362;
          v42 = v21;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unable to migrate the homes to CD.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v18);
      }
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unable to migrate the home manager to CD.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v17 = 0;
  }

  _Block_object_dispose(&v37, 8);

  v30 = *MEMORY[0x277D85DE8];
  return v17;
}

void __72__HMDHH2Migrator_migrateHomeData_managedObjectContext_hh2ControllerKey___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) primaryHomeUUID];
  *(*(*(a1 + 64) + 8) + 24) = [v7 migrateHome:v6 primaryHomeUUID:v8 managedObjectContext:*(a1 + 48) hh2ControllerKey:*(a1 + 56)];

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not migrate home : %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_fixupUserUUID:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 homes];
  v6 = [v5 count];

  if (v6 != 1)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v48 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Looking for duplicate owner's UUID across homes...", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v38 = v4;
    v11 = [v4 homes];
    v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_231375];

    v13 = [MEMORY[0x277CBEB58] set];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v44;
      v40 = *v44;
      v41 = v14;
      v39 = v13;
      do
      {
        v18 = 0;
        v42 = v16;
        do
        {
          if (*v44 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v43 + 1) + 8 * v18);
          if ([v19 isOwnerUser])
          {
            v20 = [v19 owner];
            v21 = [v20 uuid];
            v22 = [v13 containsObject:v21];

            if (v22)
            {
              v23 = [v19 uuid];
              v24 = [v20 pairingIdentity];
              v25 = [HMDUser UUIDWithUserID:0 forHomeIdentifier:v23 uuid:0 pairingIdentity:v24];

              if ([v13 containsObject:v25])
              {
                v26 = [v20 userID];
                v27 = [v19 uuid];
                v28 = [HMDUser UUIDWithUserID:v26 forHomeIdentifier:v27 uuid:0 pairingIdentity:0];

                if ([v13 containsObject:v28])
                {
                  v25 = [MEMORY[0x277CCAD78] UUID];

                  v29 = @"random";
                }

                else
                {
                  v25 = v28;
                  v29 = @"userID";
                }
              }

              else
              {
                v29 = @"pairingID";
              }

              v30 = objc_autoreleasePoolPush();
              v31 = v8;
              v32 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                v33 = HMFGetLogIdentifier();
                [v20 uuid];
                v35 = v34 = v8;
                *buf = 138544130;
                v48 = v33;
                v49 = 2112;
                v50 = v35;
                v51 = 2112;
                v52 = v29;
                v53 = 2112;
                v54 = v25;
                _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Detected duplicate user UUID %@, forcing this user to use new %@ UUID %@", buf, 0x2Au);

                v8 = v34;
                v13 = v39;
              }

              objc_autoreleasePoolPop(v30);
              [v20 setUUID:v25];

              v17 = v40;
              v14 = v41;
              v16 = v42;
            }

            v36 = [v20 uuid];
            [v13 addObject:v36];
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v43 objects:v55 count:16];
      }

      while (v16);
    }

    v4 = v38;
  }

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __33__HMDHH2Migrator__fixupUserUUID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 appleMediaAccessories];
  v7 = [v6 count];
  v8 = [v5 appleMediaAccessories];
  v9 = [v8 count];

  if (v7 > v9)
  {
    goto LABEL_2;
  }

  v11 = [v4 appleMediaAccessories];
  v12 = [v11 count];
  v13 = [v5 appleMediaAccessories];
  v14 = [v13 count];

  if (v12 < v14)
  {
LABEL_4:
    v10 = 1;
    goto LABEL_5;
  }

  v16 = [v4 accessories];
  v17 = [v16 count];
  v18 = [v5 accessories];
  v19 = [v18 count];

  if (v17 <= v19)
  {
    v20 = [v4 accessories];
    v21 = [v20 count];
    v22 = [v5 accessories];
    v23 = [v22 count];

    if (v21 < v23)
    {
      goto LABEL_4;
    }

    v24 = HMDIsEmptyHome(v4);
    v25 = HMDIsEmptyHome(v5);
    if (v24 || !v25)
    {
      if (v25 || !v24)
      {
        v26 = [v4 uuid];
        v27 = [v5 uuid];
        v10 = [v26 compare:v27];

        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

LABEL_2:
  v10 = -1;
LABEL_5:

  return v10;
}

- (BOOL)_startMigratingHomeDataFromLocation:(id)a3 usingHH2PairingKey:(id)a4
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@HH2 pairing identity : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  +[HMDHAPMetadata prepareMetadata];
  v53 = 0;
  v12 = objc_autoreleasePoolPush();
  v52 = 0;
  v13 = [HMDMainDriver loadHomeDataFromLocalStore:&v52 fromLocation:v6 decryptionFailed:&v53 forHH2Migration:1];
  v14 = v52;
  if (v13)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v9;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_FAULT, "%{public}@Could not decrypt the archived home data. %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    [(HMDHH2Migrator *)v16 submitABCEventForFailedMigrationWithReason:7 withError:v13];

    objc_autoreleasePoolPop(v12);
    goto LABEL_21;
  }

  objc_autoreleasePoolPop(v12);
  if ((v53 & 1) != 0 || !v14)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = v9;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v33;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Unable to unarchive homeData. Cannot do HH2 Migration. Aborting...", buf, 0xCu);
    }
  }

  else
  {
    v19 = [(HMDHH2Migrator *)v9 backgroundOpsManager];
    [v19 removeAllOperationsBeforeStartingHH2Migration];

    if ([(HMDHH2Migrator *)v9 waitForFirstImportToFinish])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v58 = 0;
      v20 = [(HMDHH2Migrator *)v9 coreData];
      v21 = [v20 coordinator];
      v22 = [(HMDHH2Migrator *)v9 coreData];
      v23 = [v22 cloudPrivateStore];
      v56 = v23;
      v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
      v25 = [v21 currentPersistentHistoryTokenFromStores:v24];

      v26 = [(HMDHH2Migrator *)v9 coreData];
      v27 = [v26 newManagedObjectContext];

      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __73__HMDHH2Migrator__startMigratingHomeDataFromLocation_usingHH2PairingKey___block_invoke;
      v47[3] = &unk_278689D98;
      v47[4] = v9;
      v48 = v14;
      v28 = v27;
      v49 = v28;
      v51 = buf;
      v50 = v7;
      [v28 performBlockAndWait:v47];
      if (*(*&buf[8] + 24))
      {
        if ([(HMDHH2Migrator *)v9 waitForCDToExportModelsToCloudKit:v25])
        {
          if ([(HMDHH2Migrator *)v9 waitForV5UpdatesToSyncToCloudKit])
          {
            if ([(HMDHH2Migrator *)v9 handlePostMigration])
            {
              v29 = 1;
LABEL_32:

              _Block_object_dispose(buf, 8);
              goto LABEL_22;
            }

            v37 = objc_autoreleasePoolPush();
            v45 = v9;
            v39 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v46 = HMFGetLogIdentifier();
              *v54 = 138543362;
              v55 = v46;
              _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Unable to finish post migration task. Aborting...", v54, 0xCu);
            }
          }

          else
          {
            v37 = objc_autoreleasePoolPush();
            v43 = v9;
            v39 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v44 = HMFGetLogIdentifier();
              *v54 = 138543362;
              v55 = v44;
              _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Unable to sync V5 updates to CloudKit. Aborting...", v54, 0xCu);
            }
          }
        }

        else
        {
          v37 = objc_autoreleasePoolPush();
          v41 = v9;
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v42 = HMFGetLogIdentifier();
            *v54 = 138543362;
            v55 = v42;
            _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Unable to export CD models to CloudKit. Aborting...", v54, 0xCu);
          }
        }
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        v38 = v9;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = HMFGetLogIdentifier();
          *v54 = 138543362;
          v55 = v40;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Unable to do migration to HH2. Aborting...", v54, 0xCu);
        }
      }

      objc_autoreleasePoolPop(v37);
      v29 = 0;
      goto LABEL_32;
    }

    v30 = objc_autoreleasePoolPush();
    v31 = v9;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v34;
      _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Timed out while waiting for first import to finish", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v30);
LABEL_21:
  v29 = 0;
LABEL_22:

  v35 = *MEMORY[0x277D85DE8];
  return v29;
}

uint64_t __73__HMDHH2Migrator__startMigratingHomeDataFromLocation_usingHH2PairingKey___block_invoke(uint64_t a1)
{
  [*(a1 + 32) fixupPreviousFailedMigrationModelsWithHomeData:*(a1 + 40) managedObjectContext:*(a1 + 48)];
  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) migrateHomeData:*(a1 + 40) managedObjectContext:*(a1 + 48) hh2ControllerKey:*(a1 + 56)];
  v2 = *(a1 + 48);

  return [v2 reset];
}

- (BOOL)startMigratingHomeDataFromLocation:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CFEC78] systemStore];
  v25 = 0;
  v26 = 0;
  v6 = [v5 getOrCreateHH2ControllerKey:&v26 secretKey:0 keyPair:0 username:&v25];
  v7 = v26;
  v8 = v25;

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v8 == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_FAULT, "%{public}@FATAL Error : Unable to create HH2 Controller key", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = 0;
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v7];
    v17 = [objc_alloc(MEMORY[0x277CFEC20]) initWithIdentifier:v8 publicKey:v16 privateKey:0 permissions:1];
    v18 = [(HMDHH2Migrator *)self migratorRecord];
    v19 = [v18 migrateFromTestDirectory];

    v20 = objc_autoreleasePoolPush();
    v21 = v20;
    if (v19)
    {
      v22 = [(HMDHH2Migrator *)self _performMigrationFromTestDirectoryUsingHH2ControllerKey:v17];
    }

    else
    {
      v22 = [(HMDHH2Migrator *)self _startMigratingHomeDataFromLocation:v4 usingHH2PairingKey:v17];
    }

    v15 = v22;
    objc_autoreleasePoolPop(v21);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)startMigrationFromLocation:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:@"HH2 Migration" parent:0 options:1];
  [v5 begin];
  v6 = v5;
  v45 = v6;
  v7 = [(HMDHH2Migrator *)self migratorRecord];
  v8 = [v7 isMigrationInProgress];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  if ((v8 & 1) == 0)
  {
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v47 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Migration to HH2 is not needed as this device is not the designated migrator", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    goto LABEL_16;
  }

  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543618;
    v47 = v12;
    v48 = 2112;
    v49 = v7;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Current device is the designated migrator : [%@]", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  if (([v7 beginMigration] & 1) == 0)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = v10;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v47 = v26;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Cannot start the migration as unable to record the migration attempt. Switching back to HH1 framework.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2718];
    [HMDHH2MigratorRecord recordMigrationFailureWithError:v27];

    v28 = [(HMDHH2Migrator *)v24 hh2FrameworkSwitch];
    [v28 switchBackToHH1AndRelaunchDueToHH2MigrationFailed];

    [v7 finishMigration];
LABEL_16:
    v29 = 0;
    v30 = 1;
    goto LABEL_28;
  }

  v13 = [(HMDHH2Migrator *)v10 cloudkitReachabilitySource];
  v44 = 0;
  v14 = [v13 areCloudKitServersReachableWithError:&v44];
  v15 = v44;

  if (v14 != 1)
  {
    if (v14)
    {
      v31 = objc_autoreleasePoolPush();
      v32 = v10;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543362;
        v47 = v34;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Cannot start the migration as there is a CloudKit account status issue", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v31);
      v20 = [HMDHH2FrameworkSwitch errorFromHMDCKAccountStatus:v14];
      [(HMDHH2Migrator *)v32 submitABCEventForFailedMigrationWithReason:6 withError:v20];
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v10;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v47 = v19;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot start the migration as CloudKit account status could not be queried", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v20 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2727 underlyingError:v15];
      [(HMDHH2Migrator *)v17 submitABCEventForFailedMigrationWithReason:6 withError:v20];
    }

LABEL_26:
    v29 = 0;
    goto LABEL_27;
  }

  if (![(HMDHH2Migrator *)v10 startMigratingHomeDataFromLocation:v4])
  {
    [(HMDHH2Migrator *)v10 revertChangesPerformedDuringMigration];
    v35 = objc_autoreleasePoolPush();
    v36 = v10;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v47 = v38;
      v48 = 2112;
      v49 = v7;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Could not finish HH2 migration successfully. Will try again. [%@]", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    goto LABEL_26;
  }

  v29 = 1;
LABEL_27:

  v30 = 0;
LABEL_28:

  __HMFActivityScopeLeave();
  if (v29)
  {
    v39 = [(HMDHH2Migrator *)v10 migratorRecord];
    v40 = [v39 isAutoMigration];

    if (v40)
    {
      v41 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v41 setBool:1 forKey:@"HMDHH2AutoMigrationSuccesKey"];
    }

    v30 = 1;
  }

  v42 = *MEMORY[0x277D85DE8];
  return v30;
}

- (BOOL)startMigrationIfNeeded
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(HMDHH2Migrator *)self queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__HMDHH2Migrator_startMigrationIfNeeded__block_invoke;
  v5[3] = &unk_27868A688;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_async_and_wait(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __40__HMDHH2Migrator_startMigrationIfNeeded__block_invoke(uint64_t a1)
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Initiating migration with user initiated qos", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) startMigrationFromLocation:0];
  *(*(*(a1 + 40) + 8) + 24) = result;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [MEMORY[0x277CBEAA8] date];
    [v7 timeIntervalSinceDate:v4->_migrationStartTime];
    *buf = 138543618;
    v12 = v6;
    v13 = 2048;
    v14 = v8;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating... Total time : [%f]", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v10.receiver = v4;
  v10.super_class = HMDHH2Migrator;
  [(HMDHH2Migrator *)&v10 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

- (HMDHH2Migrator)initWithMigratorRecord:(id)a3 hh2FrameworkSwitch:(id)a4 coreData:(id)a5 cloudTransform:(id)a6 backgroundOperationManager:(id)a7 defaultDatabase:(id)a8 cameraClipsDatabase:(id)a9 cloudkitReachabilitySource:(id)a10
{
  v39 = a3;
  v38 = a4;
  v37 = a5;
  v36 = a6;
  v35 = a7;
  v34 = a8;
  v33 = a9;
  v17 = a10;
  v40.receiver = self;
  v40.super_class = HMDHH2Migrator;
  v18 = [(HMDHH2Migrator *)&v40 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_migratorRecord, a3);
    objc_storeStrong(&v19->_hh2FrameworkSwitch, a4);
    v20 = [MEMORY[0x277CBEB58] set];
    scheduledKeyRollOperationsDuringMigration = v19->_scheduledKeyRollOperationsDuringMigration;
    v19->_scheduledKeyRollOperationsDuringMigration = v20;

    v22 = [MEMORY[0x277CBEB58] set];
    v5ModelUpdateFutures = v19->_v5ModelUpdateFutures;
    v19->_v5ModelUpdateFutures = v22;

    v24 = [MEMORY[0x277CBEB58] set];
    openedZones = v19->_openedZones;
    v19->_openedZones = v24;

    objc_storeStrong(&v19->_coreData, a5);
    objc_storeStrong(&v19->_cloudTransform, a6);
    objc_storeStrong(&v19->_backgroundOpsManager, a7);
    objc_storeStrong(&v19->_defaultDatabase, a8);
    objc_storeStrong(&v19->_cameraClipsDatabase, a9);
    objc_storeStrong(&v19->_cloudkitReachabilitySource, a10);
    v26 = [MEMORY[0x277CBEAA8] date];
    migrationStartTime = v19->_migrationStartTime;
    v19->_migrationStartTime = v26;

    v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v29 = dispatch_queue_attr_make_with_qos_class(v28, QOS_CLASS_USER_INITIATED, 0);
    v30 = dispatch_queue_create("HMDHH2Migrator", v29);
    queue = v19->_queue;
    v19->_queue = v30;
  }

  return v19;
}

- (HMDHH2Migrator)init
{
  v3 = [[HMDHH2FrameworkSwitch alloc] initWithAutoSwitch:0 homeManager:0 dataSource:0 callBeforeFrameworkSwitch:0];
  v4 = +[HMDHH2MigratorRecord singleRecord];
  v5 = +[HMDCoreData sharedInstance];
  v6 = +[HMDCoreDataCloudTransform sharedInstance];
  v7 = [[HMDBackgroundOperationManager alloc] initWithHomeManager:0];
  v8 = +[HMDDatabase defaultDatabase];
  v9 = +[HMDDatabase cameraClipsDatabase];
  v10 = objc_alloc_init(HMDCloudKitReachabilitySource);
  v11 = [(HMDHH2Migrator *)self initWithMigratorRecord:v4 hh2FrameworkSwitch:v3 coreData:v5 cloudTransform:v6 backgroundOperationManager:v7 defaultDatabase:v8 cameraClipsDatabase:v9 cloudkitReachabilitySource:v10];

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t169 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t169, &__block_literal_global_188);
  }

  v3 = logCategory__hmf_once_v170;

  return v3;
}

void __29__HMDHH2Migrator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v170;
  logCategory__hmf_once_v170 = v1;
}

+ (BOOL)shouldIgnoreModel:(id)a3
{
  v10[12] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB58];
  v4 = a3;
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v10[2] = objc_opt_class();
  v10[3] = objc_opt_class();
  v10[4] = objc_opt_class();
  v10[5] = objc_opt_class();
  v10[6] = objc_opt_class();
  v10[7] = objc_opt_class();
  v10[8] = objc_opt_class();
  v10[9] = objc_opt_class();
  v10[10] = objc_opt_class();
  v10[11] = objc_opt_class();
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:12];
  v6 = [v3 setWithArray:v5];

  v7 = objc_opt_class();
  LOBYTE(v4) = [v6 containsObject:v7];

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (id)arrayByRemovingElementsInArray:(id)a3 fromArray:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HMDHH2Migrator_arrayByRemovingElementsInArray_fromArray___block_invoke;
  v9[3] = &unk_278682818;
  v10 = v5;
  v6 = v5;
  v7 = [a4 na_map:v9];

  return v7;
}

id __59__HMDHH2Migrator_arrayByRemovingElementsInArray_fromArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

+ (id)auditedUserAccessCodeModelsAndInvitesFromModels:(id)a3
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__HMDHH2Migrator_auditedUserAccessCodeModelsAndInvitesFromModels___block_invoke;
  v8[3] = &__block_descriptor_40_e67_q24__0__HMDBackingStoreModelObject_8__HMDBackingStoreModelObject_16l;
  v8[4] = a1;
  v4 = [a3 sortedArrayUsingComparator:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__HMDHH2Migrator_auditedUserAccessCodeModelsAndInvitesFromModels___block_invoke_2;
  v7[3] = &__block_descriptor_40_e57___NSArray_24__0__HMDBackingStoreModelObject_8__NSArray_16l;
  v7[4] = a1;
  v5 = [v4 na_reduceWithInitialValue:MEMORY[0x277CBEBF8] reducer:v7];

  return v5;
}

uint64_t __66__HMDHH2Migrator_auditedUserAccessCodeModelsAndInvitesFromModels___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [objc_opt_class() compareUserAccessCodeInModel:v6 withModel:v5];

  return v7;
}

id __66__HMDHH2Migrator_auditedUserAccessCodeModelsAndInvitesFromModels___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [objc_opt_class() userAccessCodeFromModel:v5];
  if (v8)
  {
    v9 = MEMORY[0x277CBEB98];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __66__HMDHH2Migrator_auditedUserAccessCodeModelsAndInvitesFromModels___block_invoke_3;
    v30[3] = &__block_descriptor_40_e46___NSString_16__0__HMDBackingStoreModelObject_8l;
    v30[4] = *(a1 + 32);
    v10 = [v6 na_map:v30];
    v11 = [v9 setWithArray:v10];

    if ([MEMORY[0x277CD1610] doesAccessCode:v8 conflictWithExistingAccessCodes:v11])
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 32);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v32 = v15;
        v33 = 2112;
        v34 = v5;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Dropping user access code in model because it conflicts with another. Model: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v16 = v5;
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

      if (v18)
      {
        v19 = objc_autoreleasePoolPush();
        v20 = *(a1 + 32);
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          v23 = [v18 user];
          [v23 objectForKeyedSubscript:@"userID"];
          v24 = v29 = v19;
          *buf = 138543618;
          v32 = v22;
          v33 = 2112;
          v34 = v24;
          _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@userID: %@", buf, 0x16u);

          v19 = v29;
        }

        objc_autoreleasePoolPop(v19);
        [v18 setAccessCode:0];
        v25 = [v6 arrayByAddingObject:v18];
      }

      else
      {
        v25 = v6;
      }

      v26 = v25;
    }

    else
    {
      v26 = [v6 arrayByAddingObject:v5];
    }
  }

  else
  {
    v26 = [v6 arrayByAddingObject:v5];
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

id __66__HMDHH2Migrator_auditedUserAccessCodeModelsAndInvitesFromModels___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() userAccessCodeFromModel:v3];

  return v4;
}

+ (int64_t)compareUserAccessCodeInModel:(id)a3 withModel:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (v5 && (isKindOfClass & 1) != 0)
  {
    v8 = -1;
  }

  else
  {
    v9 = v6;
    objc_opt_class();
    v10 = objc_opt_isKindOfClass();

    if (v9 && (v10 & 1) != 0)
    {
      v8 = 1;
    }

    else
    {
      v11 = v9;
      v12 = [v5 user];
      v13 = [v12 objectForKeyedSubscript:@"userID"];

      v14 = [v11 user];

      v15 = [v14 objectForKeyedSubscript:@"userID"];

      v8 = [v13 compare:v15];
    }
  }

  return v8;
}

+ (id)userAccessCodeFromModel:(id)a3
{
  v3 = a3;
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
  v6 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v5)
  {
    v9 = [v5 value];
LABEL_11:
    v10 = v9;
    goto LABEL_12;
  }

  if (v8)
  {
    v9 = [v8 accessCode];
    goto LABEL_11;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

+ (id)auditedHomeAccessCodeModelsFromModels:(id)a3 userAccessCodeModelsAndInvites:(id)a4
{
  v6 = a4;
  v7 = [a3 sortedArrayUsingSelector:sel_uuid];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __87__HMDHH2Migrator_auditedHomeAccessCodeModelsFromModels_userAccessCodeModelsAndInvites___block_invoke;
  v11[3] = &unk_2786827B0;
  v12 = v6;
  v13 = a1;
  v8 = v6;
  v9 = [v7 na_reduceWithInitialValue:MEMORY[0x277CBEBF8] reducer:v11];

  return v9;
}

id __87__HMDHH2Migrator_auditedHomeAccessCodeModelsFromModels_userAccessCodeModelsAndInvites___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 value];
  v8 = MEMORY[0x277CBEB98];
  v9 = [v6 na_map:&__block_literal_global_88_231458];
  v10 = [v8 setWithArray:v9];

  v11 = MEMORY[0x277CBEB98];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __87__HMDHH2Migrator_auditedHomeAccessCodeModelsFromModels_userAccessCodeModelsAndInvites___block_invoke_3;
  v24[3] = &__block_descriptor_40_e46___NSString_16__0__HMDBackingStoreModelObject_8l;
  v12 = *(a1 + 32);
  v24[4] = *(a1 + 40);
  v13 = [v12 na_map:v24];
  v14 = [v11 setWithArray:v13];

  v15 = [v10 setByAddingObjectsFromSet:v14];
  if ([MEMORY[0x277CD1610] doesAccessCode:v7 conflictWithExistingAccessCodes:v15])
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 40);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v19;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Dropping HMDHomeAccessCodeModel because it conflicts with another. Dropping model: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = v6;
  }

  else
  {
    v20 = [v6 arrayByAddingObject:v5];
  }

  v21 = v20;

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

id __87__HMDHH2Migrator_auditedHomeAccessCodeModelsFromModels_userAccessCodeModelsAndInvites___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [objc_opt_class() userAccessCodeFromModel:v3];

  return v4;
}

id __65__HMDHH2Migrator_modelsByDroppingEmptyStringAccessCodesOnModels___block_invoke(uint64_t a1, void *a2)
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
  v5 = v4;
  if (v4 && ([v4 accessCode], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", &stru_283CF9D50), v6, v7))
  {
    [v5 setAccessCode:0];
    v8 = v5;
    v9 = v2;
  }

  else
  {
    v10 = v2;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12 && ([v12 value], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", &stru_283CF9D50), v13, (v14 & 1) != 0))
    {
      v9 = 0;
    }

    else
    {
      v15 = v10;
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

      if (v17 && ([v17 value], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", &stru_283CF9D50), v18, (v19 & 1) != 0))
      {
        v9 = 0;
      }

      else
      {
        v20 = v15;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }

        v22 = v21;

        if (v22 && ([v22 accessCode], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", &stru_283CF9D50), v23, (v24 & 1) != 0))
        {
          v9 = 0;
        }

        else
        {
          v9 = v20;
        }
      }
    }
  }

  return v9;
}

@end