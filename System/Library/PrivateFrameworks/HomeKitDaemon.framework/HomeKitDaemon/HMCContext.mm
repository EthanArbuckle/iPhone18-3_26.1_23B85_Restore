@interface HMCContext
+ (BOOL)managedObjectIsMKF:(id)a3;
+ (Class)managedObjectClassFromProtocol:(id)a3;
+ (HMCContext)currentContext;
+ (id)findAccessoryNetworkProtectionGroupWithModelID:(id)a3 error:(id *)a4;
+ (id)findAccessoryWithModelID:(id)a3 error:(id *)a4;
+ (id)findAccountHandleWithModelID:(id)a3 error:(id *)a4;
+ (id)findAccountWithModelID:(id)a3 error:(id *)a4;
+ (id)findActionSetWithModelID:(id)a3 error:(id *)a4;
+ (id)findActionWithModelID:(id)a3 error:(id *)a4;
+ (id)findAirPlayAccessoryWithModelID:(id)a3 error:(id *)a4;
+ (id)findAllModelsOfType:(id)a3 error:(id *)a4;
+ (id)findAnalysisEventBulletinRegistrationWithModelID:(id)a3 error:(id *)a4;
+ (id)findAppleMediaAccessoryPowerActionWithModelID:(id)a3 error:(id *)a4;
+ (id)findAppleMediaAccessoryWithModelID:(id)a3 error:(id *)a4;
+ (id)findApplicationDataWithModelID:(id)a3 error:(id *)a4;
+ (id)findBulletinConditionWithModelID:(id)a3 error:(id *)a4;
+ (id)findBulletinRegistrationWithModelID:(id)a3 error:(id *)a4;
+ (id)findBulletinTimeSpecificationWithModelID:(id)a3 error:(id *)a4;
+ (id)findCalendarEventWithModelID:(id)a3 error:(id *)a4;
+ (id)findCameraAccessModeBulletinRegistrationWithModelID:(id)a3 error:(id *)a4;
+ (id)findCameraReachabilityBulletinRegistrationWithModelID:(id)a3 error:(id *)a4;
+ (id)findCameraSignificantEventBulletinRegistrationWithModelID:(id)a3 error:(id *)a4;
+ (id)findCharacteristicBulletinRegistrationWithModelID:(id)a3 error:(id *)a4;
+ (id)findCharacteristicEventWithModelID:(id)a3 error:(id *)a4;
+ (id)findCharacteristicRangeEventWithModelID:(id)a3 error:(id *)a4;
+ (id)findCharacteristicValueEventWithModelID:(id)a3 error:(id *)a4;
+ (id)findCharacteristicWithInstanceID:(id)a3 service:(id)a4 error:(id *)a5;
+ (id)findCharacteristicWithInstanceID:(id)a3 serviceDatabaseID:(id)a4 error:(id *)a5;
+ (id)findCharacteristicWriteActionWithModelID:(id)a3 error:(id *)a4;
+ (id)findDeviceWithDeviceIdentifier:(id)a3;
+ (id)findDeviceWithModelID:(id)a3 error:(id *)a4;
+ (id)findDurationEventWithModelID:(id)a3 error:(id *)a4;
+ (id)findEventTriggerWithModelID:(id)a3 error:(id *)a4;
+ (id)findEventWithModelID:(id)a3 error:(id *)a4;
+ (id)findFaceprintWithModelID:(id)a3 error:(id *)a4;
+ (id)findFloatCharacteristicWithInstanceID:(id)a3 service:(id)a4 error:(id *)a5;
+ (id)findFloatCharacteristicWithInstanceID:(id)a3 serviceDatabaseID:(id)a4 error:(id *)a5;
+ (id)findGuestAccessCodeWithModelID:(id)a3 error:(id *)a4;
+ (id)findGuestWithModelID:(id)a3 error:(id *)a4;
+ (id)findHAPAccessoryWithModelID:(id)a3 error:(id *)a4;
+ (id)findHAPMetadataWithModelID:(id)a3 error:(id *)a4;
+ (id)findHomeAccessCodeWithModelID:(id)a3 error:(id *)a4;
+ (id)findHomeManagerHomeWithModelID:(id)a3 error:(id *)a4;
+ (id)findHomeManagerWithModelID:(id)a3 error:(id *)a4;
+ (id)findHomeMediaSettingWithModelID:(id)a3 error:(id *)a4;
+ (id)findHomeNetworkRouterManagingDeviceSettingWithModelID:(id)a3 error:(id *)a4;
+ (id)findHomeNetworkRouterSettingWithModelID:(id)a3 error:(id *)a4;
+ (id)findHomePersonManagerSettingWithModelID:(id)a3 error:(id *)a4;
+ (id)findHomePersonWithModelID:(id)a3 error:(id *)a4;
+ (id)findHomeSettingWithModelID:(id)a3 error:(id *)a4;
+ (id)findHomeSoftwareUpdateSettingWithModelID:(id)a3 error:(id *)a4;
+ (id)findHomeThreadNetworkWithModelID:(id)a3 error:(id *)a4;
+ (id)findHomeWithModelID:(id)a3 error:(id *)a4;
+ (id)findIncomingInvitationWithModelID:(id)a3 error:(id *)a4;
+ (id)findIntegerCharacteristicWithInstanceID:(id)a3 service:(id)a4 error:(id *)a5;
+ (id)findIntegerCharacteristicWithInstanceID:(id)a3 serviceDatabaseID:(id)a4 error:(id *)a5;
+ (id)findInvitationWithModelID:(id)a3 error:(id *)a4;
+ (id)findLocationEventWithModelID:(id)a3 error:(id *)a4;
+ (id)findMatterAttributeEventWithModelID:(id)a3 error:(id *)a4;
+ (id)findMatterAttributeValueEventWithModelID:(id)a3 error:(id *)a4;
+ (id)findMatterBulletinRegistrationWithModelID:(id)a3 error:(id *)a4;
+ (id)findMatterCommandActionWithModelID:(id)a3 error:(id *)a4;
+ (id)findMatterLocalKeyValuePairWithKey:(id)a3 error:(id *)a4;
+ (id)findMatterPathWithModelID:(id)a3 error:(id *)a4;
+ (id)findMediaAccessoryWithModelID:(id)a3 error:(id *)a4;
+ (id)findMediaPlaybackActionWithModelID:(id)a3 error:(id *)a4;
+ (id)findModelObjectOfType:(id)a3 databaseID:(id)a4 error:(id *)a5;
+ (id)findModelWithModelID:(id)a3 ofType:(id)a4 error:(id *)a5;
+ (id)findNaturalLightingActionWithModelID:(id)a3 error:(id *)a4;
+ (id)findNotificationRegistrationActionSetWithModelID:(id)a3 error:(id *)a4;
+ (id)findNotificationRegistrationCharacteristicWithModelID:(id)a3 error:(id *)a4;
+ (id)findNotificationRegistrationMediaPropertyWithModelID:(id)a3 error:(id *)a4;
+ (id)findNotificationRegistrationWithModelID:(id)a3 error:(id *)a4;
+ (id)findOutgoingInvitationWithModelID:(id)a3 error:(id *)a4;
+ (id)findPersonWithModelID:(id)a3 error:(id *)a4;
+ (id)findPhotosPersonWithModelID:(id)a3 error:(id *)a4;
+ (id)findPresenceBulletinConditionWithModelID:(id)a3 error:(id *)a4;
+ (id)findPresenceEventWithModelID:(id)a3 error:(id *)a4;
+ (id)findRemovedUserAccessCodeWithModelID:(id)a3 error:(id *)a4;
+ (id)findResidentSelectionWithModelID:(id)a3 error:(id *)a4;
+ (id)findResidentWithModelID:(id)a3 error:(id *)a4;
+ (id)findRoomPresenceWithModelID:(id)a3 error:(id *)a4;
+ (id)findRoomWithModelID:(id)a3 error:(id *)a4;
+ (id)findServiceGroupWithModelID:(id)a3 error:(id *)a4;
+ (id)findServiceWithInstanceID:(id)a3 accessory:(id)a4 error:(id *)a5;
+ (id)findServiceWithInstanceID:(id)a3 accessoryDatabaseID:(id)a4 error:(id *)a5;
+ (id)findServiceWithModelID:(id)a3 error:(id *)a4;
+ (id)findShortcutActionWithModelID:(id)a3 error:(id *)a4;
+ (id)findSignificantTimeEventWithModelID:(id)a3 error:(id *)a4;
+ (id)findSoftwareUpdateWithModelID:(id)a3 error:(id *)a4;
+ (id)findStringCharacteristicWithInstanceID:(id)a3 service:(id)a4 error:(id *)a5;
+ (id)findStringCharacteristicWithInstanceID:(id)a3 serviceDatabaseID:(id)a4 error:(id *)a5;
+ (id)findSunriseSunsetTimeSpecificationWithModelID:(id)a3 error:(id *)a4;
+ (id)findTimeOfDayTimeSpecificationWithModelID:(id)a3 error:(id *)a4;
+ (id)findTimePeriodBulletinConditionWithModelID:(id)a3 error:(id *)a4;
+ (id)findTimerTriggerWithModelID:(id)a3 error:(id *)a4;
+ (id)findTriggerWithModelID:(id)a3 error:(id *)a4;
+ (id)findUserAccessCodeWithModelID:(id)a3 error:(id *)a4;
+ (id)findUserActivityStatusWithModelID:(id)a3 error:(id *)a4;
+ (id)findUserWithModelID:(id)a3 error:(id *)a4;
+ (id)findWeekDayScheduleRuleWithModelID:(id)a3 error:(id *)a4;
+ (id)findYearDayScheduleRuleWithModelID:(id)a3 error:(id *)a4;
+ (id)findZoneWithModelID:(id)a3 error:(id *)a4;
+ (id)logCategory;
+ (id)synchronizationTokenFromLegacyModelID:(id)a3;
- (BOOL)save:(id *)a3;
- (HMCContext)initWithContext:(id)a3 partition:(id)a4;
- (HMDBackingStore)backingStore;
- (MKFHomeManager)homeManager;
- (id)createNewModelOfClass:(Class)a3;
- (id)findHomeManagerWithError:(id *)a3;
- (id)findLocalAccountWithError:(id *)a3;
- (id)findRemoteAccountsWithError:(id *)a3;
- (void)_executeBlockWithPinnedQueryGeneration:(id)a3;
- (void)assertIsExecuting;
- (void)deleteObject:(id)a3;
- (void)performBlock:(id)a3;
- (void)performBlockAndWaitWithPinnedQueryGeneration:(id)a3;
- (void)performBlockWithPinnedQueryGeneration:(id)a3;
- (void)reset;
- (void)rollback;
- (void)unsafeSynchronousBlock:(id)a3;
@end

@implementation HMCContext

+ (HMCContext)currentContext
{
  v2 = HMFRequireCurrentAsyncContext();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return v2;
  }

  else
  {
    objc_opt_class();
    v4 = _HMFPreconditionFailureWithFormat();
    return __managedObjectClassFromProtocol(v4);
  }
}

+ (id)findServiceGroupWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findServiceGroupWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findServiceGroupWithModelID_error___hmf_once_t2, &__block_literal_global_307);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findServiceGroupWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283E89EB0 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __65__HMCContext_MKFServiceGroup__findServiceGroupWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findServiceGroupWithModelID_error___hmf_once_v3;
  findServiceGroupWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findAccountWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findAccountWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findAccountWithModelID_error___hmf_once_t0, &__block_literal_global_3175);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findAccountWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283E8EE20 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __55__HMCContext_MKFAccount__findAccountWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findAccountWithModelID_error___hmf_once_v1;
  findAccountWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findCharacteristicWriteActionWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findCharacteristicWriteActionWithModelID_error___hmf_once_t1;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findCharacteristicWriteActionWithModelID_error___hmf_once_t1, &__block_literal_global_5209);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findCharacteristicWriteActionWithModelID_error___hmf_once_v2;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283E92BA0 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __91__HMCContext_MKFCharacteristicWriteAction__findCharacteristicWriteActionWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findCharacteristicWriteActionWithModelID_error___hmf_once_v2;
  findCharacteristicWriteActionWithModelID_error___hmf_once_v2 = v0;
}

+ (id)findDurationEventWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findDurationEventWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findDurationEventWithModelID_error___hmf_once_t0, &__block_literal_global_9569);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findDurationEventWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283E97C98 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __67__HMCContext_MKFDurationEvent__findDurationEventWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findDurationEventWithModelID_error___hmf_once_v1;
  findDurationEventWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findPhotosPersonWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findPhotosPersonWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findPhotosPersonWithModelID_error___hmf_once_t2, &__block_literal_global_298);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findPhotosPersonWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283E99618 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __65__HMCContext_MKFPhotosPerson__findPhotosPersonWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findPhotosPersonWithModelID_error___hmf_once_v3;
  findPhotosPersonWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findHomePersonManagerSettingWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findHomePersonManagerSettingWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findHomePersonManagerSettingWithModelID_error___hmf_once_t0, &__block_literal_global_11491);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findHomePersonManagerSettingWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283E99CC8 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __89__HMCContext_MKFHomePersonManagerSetting__findHomePersonManagerSettingWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findHomePersonManagerSettingWithModelID_error___hmf_once_v1;
  findHomePersonManagerSettingWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findHomeManagerHomeWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findHomeManagerHomeWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findHomeManagerHomeWithModelID_error___hmf_once_t0, &__block_literal_global_16870);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findHomeManagerHomeWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EB6DA0 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __71__HMCContext_MKFHomeManagerHome__findHomeManagerHomeWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findHomeManagerHomeWithModelID_error___hmf_once_v1;
  findHomeManagerHomeWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findAccessoryWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findAccessoryWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findAccessoryWithModelID_error___hmf_once_t2, &__block_literal_global_520);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findAccessoryWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EC01C8 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __59__HMCContext_MKFAccessory__findAccessoryWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findAccessoryWithModelID_error___hmf_once_v3;
  findAccessoryWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findMediaPlaybackActionWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findMediaPlaybackActionWithModelID_error___hmf_once_t1;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findMediaPlaybackActionWithModelID_error___hmf_once_t1, &__block_literal_global_24557);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findMediaPlaybackActionWithModelID_error___hmf_once_v2;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EC4728 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __79__HMCContext_MKFMediaPlaybackAction__findMediaPlaybackActionWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findMediaPlaybackActionWithModelID_error___hmf_once_v2;
  findMediaPlaybackActionWithModelID_error___hmf_once_v2 = v0;
}

+ (id)findMatterAttributeValueEventWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findMatterAttributeValueEventWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findMatterAttributeValueEventWithModelID_error___hmf_once_t0, &__block_literal_global_28336);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findMatterAttributeValueEventWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EC9460 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __91__HMCContext_MKFMatterAttributeValueEvent__findMatterAttributeValueEventWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findMatterAttributeValueEventWithModelID_error___hmf_once_v1;
  findMatterAttributeValueEventWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findSignificantTimeEventWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findSignificantTimeEventWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findSignificantTimeEventWithModelID_error___hmf_once_t0, &__block_literal_global_32086);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findSignificantTimeEventWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283ECBC88 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __81__HMCContext_MKFSignificantTimeEvent__findSignificantTimeEventWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findSignificantTimeEventWithModelID_error___hmf_once_v1;
  findSignificantTimeEventWithModelID_error___hmf_once_v1 = v0;
}

- (HMDBackingStore)backingStore
{
  WeakRetained = objc_loadWeakRetained(&self->_backingStore);

  return WeakRetained;
}

- (void)reset
{
  v2 = [(HMCContext *)self managedObjectContext];
  [v2 reset];
}

- (void)rollback
{
  v3 = [(HMCContext *)self managedObjectContext];
  [v3 rollback];

  v4 = [(HMCContext *)self managedObjectContext];
  [v4 reset];
}

- (BOOL)save:(id *)a3
{
  v9 = 0;
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = &v9;
  }

  v5 = [(HMCContext *)self managedObjectContext];
  v6 = [v5 hmd_saveWithTransactionAuthor:6 error:v4];

  v7 = [(HMCContext *)self managedObjectContext];
  [v7 reset];

  return v6;
}

- (void)deleteObject:(id)a3
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(HMCContext *)self managedObjectContext];
    [v4 deleteObject:v8];
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMCContext *)v5 unsafeSynchronousBlock:v6, v7];
  }
}

- (void)unsafeSynchronousBlock:(id)a3
{
  v4 = a3;
  v5 = [(HMCContext *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__HMCContext_unsafeSynchronousBlock___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlockAndWait:v7];
}

uint64_t __37__HMCContext_unsafeSynchronousBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsExecuting:1];
  v2 = *(a1 + 32);
  _HMFThreadLocalAsyncContextPush();
  (*(*(a1 + 40) + 16))();
  _HMFThreadLocalAsyncContextPop();
  return [*(a1 + 32) setIsExecuting:0];
}

- (id)createNewModelOfClass:(Class)a3
{
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = objc_alloc(MEMORY[0x277CBE438]);
    v6 = [(objc_class *)a3 entity];
    v7 = [(HMCContext *)self managedObjectContext];
    v8 = [v5 initWithEntity:v6 insertIntoManagedObjectContext:v7];

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return [(HMCContext *)v10 homeManager];
  }
}

- (MKFHomeManager)homeManager
{
  v2 = [(HMCContext *)self managedObjectContext];
  v3 = [_MKFHomeManager fetchWithContext:v2 error:0];

  if (v3)
  {

    return v3;
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    [(HMCContext *)v5 _executeBlockWithPinnedQueryGeneration:v6, v7];
  }

  return result;
}

- (void)_executeBlockWithPinnedQueryGeneration:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMCContext *)self managedObjectContext];
  v6 = [v5 queryGenerationToken];

  if (v6)
  {
    _HMFPreconditionFailure();
  }

  v7 = [(HMCContext *)self managedObjectContext];
  v8 = [MEMORY[0x277CBE4F8] currentQueryGenerationToken];
  v25 = 0;
  v9 = [v7 setQueryGenerationFromToken:v8 error:&v25];
  v10 = v25;

  if (v9)
  {
    [(HMCContext *)self setIsExecuting:1];
    *buf = _HMFThreadLocalAsyncContextPush();
    v4[2](v4);
    _HMFThreadLocalAsyncContextPop();
    [(HMCContext *)self setIsExecuting:0];
    v11 = [(HMCContext *)self managedObjectContext];
    v24 = v10;
    v12 = [v11 setQueryGenerationFromToken:0 error:&v24];
    v13 = v24;

    if ((v12 & 1) == 0)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v17;
        v27 = 2114;
        v28 = v13;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Error occurred while unpinning the query generation : %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
    }

    v18 = [(HMCContext *)self managedObjectContext];
    [v18 reset];

    v10 = v13;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v22;
      v27 = 2114;
      v28 = v10;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to pin context to current query generation: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)performBlockAndWaitWithPinnedQueryGeneration:(id)a3
{
  v4 = a3;
  v5 = [(HMCContext *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMCContext_performBlockAndWaitWithPinnedQueryGeneration___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlockAndWait:v7];
}

- (void)performBlockWithPinnedQueryGeneration:(id)a3
{
  v4 = a3;
  v5 = [(HMCContext *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HMCContext_performBlockWithPinnedQueryGeneration___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  v5 = [(HMCContext *)self managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__HMCContext_performBlock___block_invoke;
  v7[3] = &unk_27868A7A0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlock:v7];
}

uint64_t __27__HMCContext_performBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setIsExecuting:1];
  v2 = *(a1 + 32);
  _HMFThreadLocalAsyncContextPush();
  (*(*(a1 + 40) + 16))();
  _HMFThreadLocalAsyncContextPop();
  return [*(a1 + 32) setIsExecuting:0];
}

- (void)assertIsExecuting
{
  if (![(HMCContext *)self isExecuting])
  {
    v2 = _HMFPreconditionFailure();
    [(HMCContext *)v2 initWithContext:v3 partition:v4, v5];
  }
}

- (HMCContext)initWithContext:(id)a3 partition:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = HMCContext;
  v9 = [(HMCContext *)&v15 init];
  if (v9)
  {
    v10 = [v7 name];
    name = v9->_name;
    v9->_name = v10;

    v12 = [v7 transactionAuthor];
    transactionAuthor = v9->_transactionAuthor;
    v9->_transactionAuthor = v12;

    objc_storeStrong(&v9->_partition, a4);
    objc_storeStrong(&v9->_managedObjectContext, a3);
    v9->_isExecuting = 0;
  }

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_37200 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_37200, &__block_literal_global_288);
  }

  v3 = logCategory__hmf_once_v15_37201;

  return v3;
}

void __25__HMCContext_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15_37201;
  logCategory__hmf_once_v15_37201 = v1;
}

+ (id)findModelObjectOfType:(id)a3 databaseID:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  __managedObjectClassFromProtocol(v7);
  v9 = +[HMCContext currentContext];
  v10 = [v9 managedObjectContext];
  v11 = [v8 objectID];
  v12 = [v10 existingObjectWithID:v11 error:a5];

  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v14 = _HMFPreconditionFailure();
    return [(HMCContext *)v14 findAllModelsOfType:v15 error:v16, v17];
  }

  else
  {

    return v12;
  }
}

+ (id)findAllModelsOfType:(id)a3 error:(id *)a4
{
  v5 = [(objc_class *)__managedObjectClassFromProtocol(a3) fetchRequest];
  v6 = [v5 execute:a4];

  return v6;
}

+ (id)findModelWithModelID:(id)a3 ofType:(id)a4 error:(id *)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = findModelWithModelID_ofType_error___hmf_once_t10;
  v8 = a4;
  v9 = a3;
  if (v7 != -1)
  {
    dispatch_once(&findModelWithModelID_ofType_error___hmf_once_t10, &__block_literal_global_267);
  }

  v16 = @"OBJECTID";
  v17[0] = v9;
  v10 = MEMORY[0x277CBEAC0];
  v11 = findModelWithModelID_ofType_error___hmf_once_v11;
  v12 = [v10 dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v13 = __findModelObjectOfType(v8, 0, v11, v12, a5);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __48__HMCContext_findModelWithModelID_ofType_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $OBJECTID"];
  v1 = findModelWithModelID_ofType_error___hmf_once_v11;
  findModelWithModelID_ofType_error___hmf_once_v11 = v0;
}

+ (Class)managedObjectClassFromProtocol:(id)a3
{
  v3 = a3;
  v4 = __managedObjectClassFromProtocol(v3);
  v5 = [(objc_class *)v4 entity];
  v6 = [v5 isAbstract];

  if (v6)
  {
    v9 = _HMFPreconditionFailure();
    return [(HMCContext *)v9 managedObjectIsMKF:v10, v11];
  }

  else
  {
    v7 = v4;

    return v4;
  }
}

+ (BOOL)managedObjectIsMKF:(id)a3
{
  v3 = managedObjectIsMKF___hmf_once_t5;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&managedObjectIsMKF___hmf_once_t5, &__block_literal_global_37235);
  }

  v5 = [managedObjectIsMKF___hmf_once_v6 objectConforms:v4];

  return v5;
}

void __33__HMCContext_managedObjectIsMKF___block_invoke()
{
  v0 = [[HMCConformanceCache alloc] initWithProtocol:&unk_283E89AA8];
  v1 = managedObjectIsMKF___hmf_once_v6;
  managedObjectIsMKF___hmf_once_v6 = v0;
}

+ (id)synchronizationTokenFromLegacyModelID:(id)a3
{
  v3 = a3;
  v6[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6[0] = 0;
    v6[1] = 0;
    [a3 getUUIDBytes:v6];
    v3 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:16];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)findHomeManagerWithError:(id *)a3
{
  v4 = +[_MKFHomeManager fetchRequest];
  v5 = [v4 execute:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)findRemoteAccountsWithError:(id *)a3
{
  v4 = +[_MKFAccount fetchRequest];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == 0", @"local"];
  [v4 setPredicate:v5];

  v6 = [v4 execute:a3];

  return v6;
}

- (id)findLocalAccountWithError:(id *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = +[_MKFAccount fetchRequest];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == 1", @"local"];
  [v5 setPredicate:v6];

  v7 = [v5 execute:a3];
  v8 = v7;
  if (v7)
  {
    if ([v7 count] >= 2)
    {
      _HMFPreconditionFailure();
    }

    v9 = [v8 firstObject];
    if ([v9 conformsToProtocol:&unk_283E8EE20])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *a3;
      *buf = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to find local account: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)findInvitationWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findInvitationWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findInvitationWithModelID_error___hmf_once_t2, &__block_literal_global_319);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findInvitationWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283ED8520 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __61__HMCContext_MKFInvitation__findInvitationWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findInvitationWithModelID_error___hmf_once_v3;
  findInvitationWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findTimePeriodBulletinConditionWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findTimePeriodBulletinConditionWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findTimePeriodBulletinConditionWithModelID_error___hmf_once_t0, &__block_literal_global_44248);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findTimePeriodBulletinConditionWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EDDC10 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __95__HMCContext_MKFTimePeriodBulletinCondition__findTimePeriodBulletinConditionWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findTimePeriodBulletinConditionWithModelID_error___hmf_once_v1;
  findTimePeriodBulletinConditionWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findPresenceBulletinConditionWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findPresenceBulletinConditionWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findPresenceBulletinConditionWithModelID_error___hmf_once_t0, &__block_literal_global_47887);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findPresenceBulletinConditionWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EE0F90 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __91__HMCContext_MKFPresenceBulletinCondition__findPresenceBulletinConditionWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findPresenceBulletinConditionWithModelID_error___hmf_once_v1;
  findPresenceBulletinConditionWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findIncomingInvitationWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findIncomingInvitationWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findIncomingInvitationWithModelID_error___hmf_once_t0, &__block_literal_global_48480);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findIncomingInvitationWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EE1418 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __77__HMCContext_MKFIncomingInvitation__findIncomingInvitationWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findIncomingInvitationWithModelID_error___hmf_once_v1;
  findIncomingInvitationWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findTimeOfDayTimeSpecificationWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findTimeOfDayTimeSpecificationWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findTimeOfDayTimeSpecificationWithModelID_error___hmf_once_t0, &__block_literal_global_49230);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findTimeOfDayTimeSpecificationWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EE1758 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __93__HMCContext_MKFTimeOfDayTimeSpecification__findTimeOfDayTimeSpecificationWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findTimeOfDayTimeSpecificationWithModelID_error___hmf_once_v1;
  findTimeOfDayTimeSpecificationWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findCalendarEventWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findCalendarEventWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findCalendarEventWithModelID_error___hmf_once_t0, &__block_literal_global_50095);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findCalendarEventWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EE2548 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __67__HMCContext_MKFCalendarEvent__findCalendarEventWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findCalendarEventWithModelID_error___hmf_once_v1;
  findCalendarEventWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findHomeWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findHomeWithModelID_error___hmf_once_t4;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findHomeWithModelID_error___hmf_once_t4, &__block_literal_global_52520);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findHomeWithModelID_error___hmf_once_v5;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EE6CB8 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __49__HMCContext_MKFHome__findHomeWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findHomeWithModelID_error___hmf_once_v5;
  findHomeWithModelID_error___hmf_once_v5 = v0;
}

+ (id)findLocationEventWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findLocationEventWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findLocationEventWithModelID_error___hmf_once_t0, &__block_literal_global_52876);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findLocationEventWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EE6EA0 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __67__HMCContext_MKFLocationEvent__findLocationEventWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findLocationEventWithModelID_error___hmf_once_v1;
  findLocationEventWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findHomeThreadNetworkWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findHomeThreadNetworkWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findHomeThreadNetworkWithModelID_error___hmf_once_t2, &__block_literal_global_281);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findHomeThreadNetworkWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EE8C28 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __75__HMCContext_MKFHomeThreadNetwork__findHomeThreadNetworkWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findHomeThreadNetworkWithModelID_error___hmf_once_v3;
  findHomeThreadNetworkWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findIntegerCharacteristicWithInstanceID:(id)a3 serviceDatabaseID:(id)a4 error:(id *)a5
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = findIntegerCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_t2;
  v8 = a4;
  v9 = a3;
  if (v7 != -1)
  {
    dispatch_once(&findIntegerCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_t2, &__block_literal_global_326);
  }

  v10 = findIntegerCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_v3;
  v11 = [v8 objectID];
  v16[0] = @"OBJECTID";
  v16[1] = @"SECONDARYKEY";
  v17[0] = v8;
  v17[1] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13 = [HMCContext findModelObjectOfType:&unk_283EEC4C0 parentObjectID:v11 template:v10 substitutions:v12 error:a5];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __104__HMCContext_MKFIntegerCharacteristic__findIntegerCharacteristicWithInstanceID_serviceDatabaseID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"service = $PARENT AND instanceID = $SECONDARYKEY"];
  v1 = findIntegerCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_v3;
  findIntegerCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_v3 = v0;
}

+ (id)findIntegerCharacteristicWithInstanceID:(id)a3 service:(id)a4 error:(id *)a5
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = findIntegerCharacteristicWithInstanceID_service_error___hmf_once_t0;
  v8 = a4;
  v9 = a3;
  if (v7 != -1)
  {
    dispatch_once(&findIntegerCharacteristicWithInstanceID_service_error___hmf_once_t0, &__block_literal_global_58466);
  }

  v16[0] = @"PRIMARYKEY";
  v16[1] = @"SECONDARYKEY";
  v17[0] = v9;
  v17[1] = v8;
  v10 = MEMORY[0x277CBEAC0];
  v11 = findIntegerCharacteristicWithInstanceID_service_error___hmf_once_v1;
  v12 = [v10 dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13 = [HMCContext findModelObjectOfType:&unk_283EEC4C0 template:v11 substitutions:v12 error:a5];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __94__HMCContext_MKFIntegerCharacteristic__findIntegerCharacteristicWithInstanceID_service_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"instanceID = $PRIMARYKEY AND service = $SECONDARYKEY"];
  v1 = findIntegerCharacteristicWithInstanceID_service_error___hmf_once_v1;
  findIntegerCharacteristicWithInstanceID_service_error___hmf_once_v1 = v0;
}

+ (id)findHomeSettingWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findHomeSettingWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findHomeSettingWithModelID_error___hmf_once_t2, &__block_literal_global_275_59739);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findHomeSettingWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283E99B78 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __63__HMCContext_MKFHomeSetting__findHomeSettingWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findHomeSettingWithModelID_error___hmf_once_v3;
  findHomeSettingWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findRoomPresenceWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findRoomPresenceWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findRoomPresenceWithModelID_error___hmf_once_t0, &__block_literal_global_61921);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findRoomPresenceWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EEFDD8 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __65__HMCContext_MKFRoomPresence__findRoomPresenceWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findRoomPresenceWithModelID_error___hmf_once_v1;
  findRoomPresenceWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findUserWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findUserWithModelID_error___hmf_once_t27;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findUserWithModelID_error___hmf_once_t27, &__block_literal_global_852);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findUserWithModelID_error___hmf_once_v28;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EF6078 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __49__HMCContext_MKFUser__findUserWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findUserWithModelID_error___hmf_once_v28;
  findUserWithModelID_error___hmf_once_v28 = v0;
}

+ (id)findDeviceWithDeviceIdentifier:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = [v3 predicateWithFormat:@"(%K == $DEVICE_IDENTIFIER)", @"identifier"];
  v10 = @"DEVICE_IDENTIFIER";
  v11[0] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [HMCContext findModelObjectOfType:&unk_283EF7428 template:v5 substitutions:v6 error:0];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)findDeviceWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findDeviceWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findDeviceWithModelID_error___hmf_once_t0, &__block_literal_global_68605);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findDeviceWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EF7428 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __53__HMCContext_MKFDevice__findDeviceWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findDeviceWithModelID_error___hmf_once_v1;
  findDeviceWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findBulletinTimeSpecificationWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findBulletinTimeSpecificationWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findBulletinTimeSpecificationWithModelID_error___hmf_once_t0, &__block_literal_global_69346);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findBulletinTimeSpecificationWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EE15E8 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __91__HMCContext_MKFBulletinTimeSpecification__findBulletinTimeSpecificationWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findBulletinTimeSpecificationWithModelID_error___hmf_once_v1;
  findBulletinTimeSpecificationWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findAppleMediaAccessoryPowerActionWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findAppleMediaAccessoryPowerActionWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findAppleMediaAccessoryPowerActionWithModelID_error___hmf_once_t0, &__block_literal_global_69779);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findAppleMediaAccessoryPowerActionWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EF76C0 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __101__HMCContext_MKFAppleMediaAccessoryPowerAction__findAppleMediaAccessoryPowerActionWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findAppleMediaAccessoryPowerActionWithModelID_error___hmf_once_v1;
  findAppleMediaAccessoryPowerActionWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findHomeNetworkRouterManagingDeviceSettingWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findHomeNetworkRouterManagingDeviceSettingWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findHomeNetworkRouterManagingDeviceSettingWithModelID_error___hmf_once_t0, &__block_literal_global_70765);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findHomeNetworkRouterManagingDeviceSettingWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EF7B58 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __117__HMCContext_MKFHomeNetworkRouterManagingDeviceSetting__findHomeNetworkRouterManagingDeviceSettingWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findHomeNetworkRouterManagingDeviceSettingWithModelID_error___hmf_once_v1;
  findHomeNetworkRouterManagingDeviceSettingWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findAirPlayAccessoryWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findAirPlayAccessoryWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findAirPlayAccessoryWithModelID_error___hmf_once_t2, &__block_literal_global_498);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findAirPlayAccessoryWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EFA0F8 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __73__HMCContext_MKFAirPlayAccessory__findAirPlayAccessoryWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findAirPlayAccessoryWithModelID_error___hmf_once_v3;
  findAirPlayAccessoryWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findHomeAccessCodeWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findHomeAccessCodeWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findHomeAccessCodeWithModelID_error___hmf_once_t0, &__block_literal_global_72859);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findHomeAccessCodeWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EFA300 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __69__HMCContext_MKFHomeAccessCode__findHomeAccessCodeWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findHomeAccessCodeWithModelID_error___hmf_once_v1;
  findHomeAccessCodeWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findMatterBulletinRegistrationWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findMatterBulletinRegistrationWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findMatterBulletinRegistrationWithModelID_error___hmf_once_t0, &__block_literal_global_74885);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findMatterBulletinRegistrationWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EFCAE0 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __93__HMCContext_MKFMatterBulletinRegistration__findMatterBulletinRegistrationWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findMatterBulletinRegistrationWithModelID_error___hmf_once_v1;
  findMatterBulletinRegistrationWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findPresenceEventWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findPresenceEventWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findPresenceEventWithModelID_error___hmf_once_t2, &__block_literal_global_325_75332);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findPresenceEventWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EFCC28 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __67__HMCContext_MKFPresenceEvent__findPresenceEventWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findPresenceEventWithModelID_error___hmf_once_v3;
  findPresenceEventWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findPersonWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findPersonWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findPersonWithModelID_error___hmf_once_t0, &__block_literal_global_78774);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findPersonWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283E99470 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __53__HMCContext_MKFPerson__findPersonWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findPersonWithModelID_error___hmf_once_v1;
  findPersonWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findGuestAccessCodeWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findGuestAccessCodeWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findGuestAccessCodeWithModelID_error___hmf_once_t2, &__block_literal_global_291);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findGuestAccessCodeWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EFFE10 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __71__HMCContext_MKFGuestAccessCode__findGuestAccessCodeWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findGuestAccessCodeWithModelID_error___hmf_once_v3;
  findGuestAccessCodeWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findRoomWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findRoomWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findRoomWithModelID_error___hmf_once_t2, &__block_literal_global_329_80150);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findRoomWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F00068 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __49__HMCContext_MKFRoom__findRoomWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findRoomWithModelID_error___hmf_once_v3;
  findRoomWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findServiceWithInstanceID:(id)a3 accessoryDatabaseID:(id)a4 error:(id *)a5
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = findServiceWithInstanceID_accessoryDatabaseID_error___hmf_once_t6;
  v8 = a4;
  v9 = a3;
  if (v7 != -1)
  {
    dispatch_once(&findServiceWithInstanceID_accessoryDatabaseID_error___hmf_once_t6, &__block_literal_global_442);
  }

  v10 = findServiceWithInstanceID_accessoryDatabaseID_error___hmf_once_v7;
  v11 = [v8 objectID];
  v16[0] = @"OBJECTID";
  v16[1] = @"SECONDARYKEY";
  v17[0] = v8;
  v17[1] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13 = [HMCContext findModelObjectOfType:&unk_283F0D790 parentObjectID:v11 template:v10 substitutions:v12 error:a5];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __78__HMCContext_MKFService__findServiceWithInstanceID_accessoryDatabaseID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accessory = $PARENT AND instanceID = $SECONDARYKEY"];
  v1 = findServiceWithInstanceID_accessoryDatabaseID_error___hmf_once_v7;
  findServiceWithInstanceID_accessoryDatabaseID_error___hmf_once_v7 = v0;
}

+ (id)findServiceWithInstanceID:(id)a3 accessory:(id)a4 error:(id *)a5
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = findServiceWithInstanceID_accessory_error___hmf_once_t4;
  v8 = a4;
  v9 = a3;
  if (v7 != -1)
  {
    dispatch_once(&findServiceWithInstanceID_accessory_error___hmf_once_t4, &__block_literal_global_434);
  }

  v16[0] = @"PRIMARYKEY";
  v16[1] = @"SECONDARYKEY";
  v17[0] = v9;
  v17[1] = v8;
  v10 = MEMORY[0x277CBEAC0];
  v11 = findServiceWithInstanceID_accessory_error___hmf_once_v5;
  v12 = [v10 dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13 = [HMCContext findModelObjectOfType:&unk_283F0D790 template:v11 substitutions:v12 error:a5];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __68__HMCContext_MKFService__findServiceWithInstanceID_accessory_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"instanceID = $PRIMARYKEY AND accessory = $SECONDARYKEY"];
  v1 = findServiceWithInstanceID_accessory_error___hmf_once_v5;
  findServiceWithInstanceID_accessory_error___hmf_once_v5 = v0;
}

+ (id)findServiceWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findServiceWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findServiceWithModelID_error___hmf_once_t2, &__block_literal_global_425);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findServiceWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F0D790 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __55__HMCContext_MKFService__findServiceWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findServiceWithModelID_error___hmf_once_v3;
  findServiceWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findHAPMetadataWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findHAPMetadataWithModelID_error___hmf_once_t1;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findHAPMetadataWithModelID_error___hmf_once_t1, &__block_literal_global_89027);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findHAPMetadataWithModelID_error___hmf_once_v2;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F0F148 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __63__HMCContext_MKFHAPMetadata__findHAPMetadataWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findHAPMetadataWithModelID_error___hmf_once_v2;
  findHAPMetadataWithModelID_error___hmf_once_v2 = v0;
}

+ (id)findHomeNetworkRouterSettingWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findHomeNetworkRouterSettingWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findHomeNetworkRouterSettingWithModelID_error___hmf_once_t2, &__block_literal_global_89403);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findHomeNetworkRouterSettingWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F0F390 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __89__HMCContext_MKFHomeNetworkRouterSetting__findHomeNetworkRouterSettingWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findHomeNetworkRouterSettingWithModelID_error___hmf_once_v3;
  findHomeNetworkRouterSettingWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findCameraAccessModeBulletinRegistrationWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findCameraAccessModeBulletinRegistrationWithModelID_error___hmf_once_t1;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findCameraAccessModeBulletinRegistrationWithModelID_error___hmf_once_t1, &__block_literal_global_90382);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findCameraAccessModeBulletinRegistrationWithModelID_error___hmf_once_v2;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F0F8A8 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __113__HMCContext_MKFCameraAccessModeBulletinRegistration__findCameraAccessModeBulletinRegistrationWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findCameraAccessModeBulletinRegistrationWithModelID_error___hmf_once_v2;
  findCameraAccessModeBulletinRegistrationWithModelID_error___hmf_once_v2 = v0;
}

+ (id)findCameraSignificantEventBulletinRegistrationWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findCameraSignificantEventBulletinRegistrationWithModelID_error___hmf_once_t1;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findCameraSignificantEventBulletinRegistrationWithModelID_error___hmf_once_t1, &__block_literal_global_95454);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findCameraSignificantEventBulletinRegistrationWithModelID_error___hmf_once_v2;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F12B68 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __125__HMCContext_MKFCameraSignificantEventBulletinRegistration__findCameraSignificantEventBulletinRegistrationWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findCameraSignificantEventBulletinRegistrationWithModelID_error___hmf_once_v2;
  findCameraSignificantEventBulletinRegistrationWithModelID_error___hmf_once_v2 = v0;
}

+ (id)findResidentSelectionWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findResidentSelectionWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findResidentSelectionWithModelID_error___hmf_once_t2, &__block_literal_global_292);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findResidentSelectionWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F135A0 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __75__HMCContext_MKFResidentSelection__findResidentSelectionWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findResidentSelectionWithModelID_error___hmf_once_v3;
  findResidentSelectionWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findCharacteristicValueEventWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findCharacteristicValueEventWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findCharacteristicValueEventWithModelID_error___hmf_once_t0, &__block_literal_global_100235);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findCharacteristicValueEventWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F16E08 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __89__HMCContext_MKFCharacteristicValueEvent__findCharacteristicValueEventWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findCharacteristicValueEventWithModelID_error___hmf_once_v1;
  findCharacteristicValueEventWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findResidentWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findResidentWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findResidentWithModelID_error___hmf_once_t2, &__block_literal_global_326_104423);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findResidentWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F1B2E8 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __57__HMCContext_MKFResident__findResidentWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findResidentWithModelID_error___hmf_once_v3;
  findResidentWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findAppleMediaAccessoryWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findAppleMediaAccessoryWithModelID_error___hmf_once_t8;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findAppleMediaAccessoryWithModelID_error___hmf_once_t8, &__block_literal_global_106998);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findAppleMediaAccessoryWithModelID_error___hmf_once_v9;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F1F3B0 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __79__HMCContext_MKFAppleMediaAccessory__findAppleMediaAccessoryWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findAppleMediaAccessoryWithModelID_error___hmf_once_v9;
  findAppleMediaAccessoryWithModelID_error___hmf_once_v9 = v0;
}

+ (id)findUserAccessCodeWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findUserAccessCodeWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findUserAccessCodeWithModelID_error___hmf_once_t2, &__block_literal_global_283);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findUserAccessCodeWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F205A8 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __69__HMCContext_MKFUserAccessCode__findUserAccessCodeWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findUserAccessCodeWithModelID_error___hmf_once_v3;
  findUserAccessCodeWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findActionWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findActionWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findActionWithModelID_error___hmf_once_t2, &__block_literal_global_278_109052);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findActionWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283E92A00 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __53__HMCContext_MKFAction__findActionWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findActionWithModelID_error___hmf_once_v3;
  findActionWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findHomeManagerWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findHomeManagerWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findHomeManagerWithModelID_error___hmf_once_t2, &__block_literal_global_120556);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findHomeManagerWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F2F9C0 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __63__HMCContext_MKFHomeManager__findHomeManagerWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findHomeManagerWithModelID_error___hmf_once_v3;
  findHomeManagerWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findBulletinConditionWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findBulletinConditionWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findBulletinConditionWithModelID_error___hmf_once_t2, &__block_literal_global_278_120936);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findBulletinConditionWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EDD4B8 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __75__HMCContext_MKFBulletinCondition__findBulletinConditionWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findBulletinConditionWithModelID_error___hmf_once_v3;
  findBulletinConditionWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findCharacteristicWithInstanceID:(id)a3 serviceDatabaseID:(id)a4 error:(id *)a5
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = findCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_t4;
  v8 = a4;
  v9 = a3;
  if (v7 != -1)
  {
    dispatch_once(&findCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_t4, &__block_literal_global_336_123340);
  }

  v10 = findCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_v5;
  v11 = [v8 objectID];
  v16[0] = @"OBJECTID";
  v16[1] = @"SECONDARYKEY";
  v17[0] = v8;
  v17[1] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13 = [HMCContext findModelObjectOfType:&unk_283EEC2D0 parentObjectID:v11 template:v10 substitutions:v12 error:a5];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __90__HMCContext_MKFCharacteristic__findCharacteristicWithInstanceID_serviceDatabaseID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"service = $PARENT AND instanceID = $SECONDARYKEY"];
  v1 = findCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_v5;
  findCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_v5 = v0;
}

+ (id)findCharacteristicWithInstanceID:(id)a3 service:(id)a4 error:(id *)a5
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = findCharacteristicWithInstanceID_service_error___hmf_once_t2;
  v8 = a4;
  v9 = a3;
  if (v7 != -1)
  {
    dispatch_once(&findCharacteristicWithInstanceID_service_error___hmf_once_t2, &__block_literal_global_324_123351);
  }

  v16[0] = @"PRIMARYKEY";
  v16[1] = @"SECONDARYKEY";
  v17[0] = v9;
  v17[1] = v8;
  v10 = MEMORY[0x277CBEAC0];
  v11 = findCharacteristicWithInstanceID_service_error___hmf_once_v3;
  v12 = [v10 dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13 = [HMCContext findModelObjectOfType:&unk_283EEC2D0 template:v11 substitutions:v12 error:a5];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __80__HMCContext_MKFCharacteristic__findCharacteristicWithInstanceID_service_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"instanceID = $PRIMARYKEY AND service = $SECONDARYKEY"];
  v1 = findCharacteristicWithInstanceID_service_error___hmf_once_v3;
  findCharacteristicWithInstanceID_service_error___hmf_once_v3 = v0;
}

+ (id)findUserActivityStatusWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findUserActivityStatusWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findUserActivityStatusWithModelID_error___hmf_once_t2, &__block_literal_global_125620);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findUserActivityStatusWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F33218 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __77__HMCContext_MKFUserActivityStatus__findUserActivityStatusWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findUserActivityStatusWithModelID_error___hmf_once_v3;
  findUserActivityStatusWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findBulletinRegistrationWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findBulletinRegistrationWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findBulletinRegistrationWithModelID_error___hmf_once_t2, &__block_literal_global_329_128558);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findBulletinRegistrationWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EFC8E8 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __81__HMCContext_MKFBulletinRegistration__findBulletinRegistrationWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findBulletinRegistrationWithModelID_error___hmf_once_v3;
  findBulletinRegistrationWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findMatterAttributeEventWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findMatterAttributeEventWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findMatterAttributeEventWithModelID_error___hmf_once_t0, &__block_literal_global_130193);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findMatterAttributeEventWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EC9310 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __81__HMCContext_MKFMatterAttributeEvent__findMatterAttributeEventWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findMatterAttributeEventWithModelID_error___hmf_once_v1;
  findMatterAttributeEventWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findTimerTriggerWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findTimerTriggerWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findTimerTriggerWithModelID_error___hmf_once_t2, &__block_literal_global_351);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findTimerTriggerWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F37D88 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __65__HMCContext_MKFTimerTrigger__findTimerTriggerWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findTimerTriggerWithModelID_error___hmf_once_v3;
  findTimerTriggerWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findCameraReachabilityBulletinRegistrationWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findCameraReachabilityBulletinRegistrationWithModelID_error___hmf_once_t1;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findCameraReachabilityBulletinRegistrationWithModelID_error___hmf_once_t1, &__block_literal_global_137849);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findCameraReachabilityBulletinRegistrationWithModelID_error___hmf_once_v2;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F3ACA8 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __117__HMCContext_MKFCameraReachabilityBulletinRegistration__findCameraReachabilityBulletinRegistrationWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findCameraReachabilityBulletinRegistrationWithModelID_error___hmf_once_v2;
  findCameraReachabilityBulletinRegistrationWithModelID_error___hmf_once_v2 = v0;
}

+ (id)findEventWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findEventWithModelID_error___hmf_once_t3;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findEventWithModelID_error___hmf_once_t3, &__block_literal_global_291_141313);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findEventWithModelID_error___hmf_once_v4;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283E97B60 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __51__HMCContext_MKFEvent__findEventWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findEventWithModelID_error___hmf_once_v4;
  findEventWithModelID_error___hmf_once_v4 = v0;
}

+ (id)findShortcutActionWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findShortcutActionWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findShortcutActionWithModelID_error___hmf_once_t0, &__block_literal_global_146910);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findShortcutActionWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F46AE0 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __69__HMCContext_MKFShortcutAction__findShortcutActionWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findShortcutActionWithModelID_error___hmf_once_v1;
  findShortcutActionWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findSoftwareUpdateWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findSoftwareUpdateWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findSoftwareUpdateWithModelID_error___hmf_once_t2, &__block_literal_global_310);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findSoftwareUpdateWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F475C8 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __69__HMCContext_MKFSoftwareUpdate__findSoftwareUpdateWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findSoftwareUpdateWithModelID_error___hmf_once_v3;
  findSoftwareUpdateWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findMediaAccessoryWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findMediaAccessoryWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findMediaAccessoryWithModelID_error___hmf_once_t0, &__block_literal_global_152117);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findMediaAccessoryWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283EF9E38 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __69__HMCContext_MKFMediaAccessory__findMediaAccessoryWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findMediaAccessoryWithModelID_error___hmf_once_v1;
  findMediaAccessoryWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findGuestWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findGuestWithModelID_error___hmf_once_t11;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findGuestWithModelID_error___hmf_once_t11, &__block_literal_global_678_153848);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findGuestWithModelID_error___hmf_once_v12;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F4B160 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __51__HMCContext_MKFGuest__findGuestWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findGuestWithModelID_error___hmf_once_v12;
  findGuestWithModelID_error___hmf_once_v12 = v0;
}

+ (id)findHomePersonWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findHomePersonWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findHomePersonWithModelID_error___hmf_once_t2, &__block_literal_global_291_162942);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findHomePersonWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F518F0 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __61__HMCContext_MKFHomePerson__findHomePersonWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findHomePersonWithModelID_error___hmf_once_v3;
  findHomePersonWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findStringCharacteristicWithInstanceID:(id)a3 serviceDatabaseID:(id)a4 error:(id *)a5
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = findStringCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_t2;
  v8 = a4;
  v9 = a3;
  if (v7 != -1)
  {
    dispatch_once(&findStringCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_t2, &__block_literal_global_314);
  }

  v10 = findStringCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_v3;
  v11 = [v8 objectID];
  v16[0] = @"OBJECTID";
  v16[1] = @"SECONDARYKEY";
  v17[0] = v8;
  v17[1] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13 = [HMCContext findModelObjectOfType:&unk_283F53710 parentObjectID:v11 template:v10 substitutions:v12 error:a5];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __102__HMCContext_MKFStringCharacteristic__findStringCharacteristicWithInstanceID_serviceDatabaseID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"service = $PARENT AND instanceID = $SECONDARYKEY"];
  v1 = findStringCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_v3;
  findStringCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_v3 = v0;
}

+ (id)findStringCharacteristicWithInstanceID:(id)a3 service:(id)a4 error:(id *)a5
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = findStringCharacteristicWithInstanceID_service_error___hmf_once_t0;
  v8 = a4;
  v9 = a3;
  if (v7 != -1)
  {
    dispatch_once(&findStringCharacteristicWithInstanceID_service_error___hmf_once_t0, &__block_literal_global_165961);
  }

  v16[0] = @"PRIMARYKEY";
  v16[1] = @"SECONDARYKEY";
  v17[0] = v9;
  v17[1] = v8;
  v10 = MEMORY[0x277CBEAC0];
  v11 = findStringCharacteristicWithInstanceID_service_error___hmf_once_v1;
  v12 = [v10 dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13 = [HMCContext findModelObjectOfType:&unk_283F53710 template:v11 substitutions:v12 error:a5];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __92__HMCContext_MKFStringCharacteristic__findStringCharacteristicWithInstanceID_service_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"instanceID = $PRIMARYKEY AND service = $SECONDARYKEY"];
  v1 = findStringCharacteristicWithInstanceID_service_error___hmf_once_v1;
  findStringCharacteristicWithInstanceID_service_error___hmf_once_v1 = v0;
}

+ (id)findMatterLocalKeyValuePairWithKey:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findMatterLocalKeyValuePairWithKey_error___hmf_once_t3;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findMatterLocalKeyValuePairWithKey_error___hmf_once_t3, &__block_literal_global_270_173533);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findMatterLocalKeyValuePairWithKey_error___hmf_once_v4;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F57C40 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __83__HMCContext_MKFMatterLocalKeyValuePair__findMatterLocalKeyValuePairWithKey_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"key = $PRIMARYKEY"];
  v1 = findMatterLocalKeyValuePairWithKey_error___hmf_once_v4;
  findMatterLocalKeyValuePairWithKey_error___hmf_once_v4 = v0;
}

+ (id)findHAPAccessoryWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findHAPAccessoryWithModelID_error___hmf_once_t10;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findHAPAccessoryWithModelID_error___hmf_once_t10, &__block_literal_global_920);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findHAPAccessoryWithModelID_error___hmf_once_v11;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F59838 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __65__HMCContext_MKFHAPAccessory__findHAPAccessoryWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findHAPAccessoryWithModelID_error___hmf_once_v11;
  findHAPAccessoryWithModelID_error___hmf_once_v11 = v0;
}

+ (id)findOutgoingInvitationWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findOutgoingInvitationWithModelID_error___hmf_once_t4;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findOutgoingInvitationWithModelID_error___hmf_once_t4, &__block_literal_global_406_181317);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findOutgoingInvitationWithModelID_error___hmf_once_v5;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F5D530 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __77__HMCContext_MKFOutgoingInvitation__findOutgoingInvitationWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findOutgoingInvitationWithModelID_error___hmf_once_v5;
  findOutgoingInvitationWithModelID_error___hmf_once_v5 = v0;
}

+ (id)findAccountHandleWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findAccountHandleWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findAccountHandleWithModelID_error___hmf_once_t0, &__block_literal_global_188885);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findAccountHandleWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F64610 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __67__HMCContext_MKFAccountHandle__findAccountHandleWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findAccountHandleWithModelID_error___hmf_once_v1;
  findAccountHandleWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findNotificationRegistrationWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findNotificationRegistrationWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findNotificationRegistrationWithModelID_error___hmf_once_t2, &__block_literal_global_300);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findNotificationRegistrationWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F6CF60 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __89__HMCContext_MKFNotificationRegistration__findNotificationRegistrationWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findNotificationRegistrationWithModelID_error___hmf_once_v3;
  findNotificationRegistrationWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findZoneWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findZoneWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findZoneWithModelID_error___hmf_once_t2, &__block_literal_global_291_199186);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findZoneWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F6D480 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __49__HMCContext_MKFZone__findZoneWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findZoneWithModelID_error___hmf_once_v3;
  findZoneWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findAnalysisEventBulletinRegistrationWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findAnalysisEventBulletinRegistrationWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findAnalysisEventBulletinRegistrationWithModelID_error___hmf_once_t0, &__block_literal_global_199653);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findAnalysisEventBulletinRegistrationWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F6D670 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __107__HMCContext_MKFAnalysisEventBulletinRegistration__findAnalysisEventBulletinRegistrationWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findAnalysisEventBulletinRegistrationWithModelID_error___hmf_once_v1;
  findAnalysisEventBulletinRegistrationWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findAccessoryNetworkProtectionGroupWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findAccessoryNetworkProtectionGroupWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findAccessoryNetworkProtectionGroupWithModelID_error___hmf_once_t2, &__block_literal_global_287);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findAccessoryNetworkProtectionGroupWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F6DC70 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __103__HMCContext_MKFAccessoryNetworkProtectionGroup__findAccessoryNetworkProtectionGroupWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findAccessoryNetworkProtectionGroupWithModelID_error___hmf_once_v3;
  findAccessoryNetworkProtectionGroupWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findNotificationRegistrationMediaPropertyWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findNotificationRegistrationMediaPropertyWithModelID_error___hmf_once_t1;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findNotificationRegistrationMediaPropertyWithModelID_error___hmf_once_t1, &__block_literal_global_205414);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findNotificationRegistrationMediaPropertyWithModelID_error___hmf_once_v2;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F72D08 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __115__HMCContext_MKFNotificationRegistrationMediaProperty__findNotificationRegistrationMediaPropertyWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findNotificationRegistrationMediaPropertyWithModelID_error___hmf_once_v2;
  findNotificationRegistrationMediaPropertyWithModelID_error___hmf_once_v2 = v0;
}

+ (id)findYearDayScheduleRuleWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findYearDayScheduleRuleWithModelID_error___hmf_once_t4;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findYearDayScheduleRuleWithModelID_error___hmf_once_t4, &__block_literal_global_206671);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findYearDayScheduleRuleWithModelID_error___hmf_once_v5;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F73708 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __79__HMCContext_MKFYearDayScheduleRule__findYearDayScheduleRuleWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findYearDayScheduleRuleWithModelID_error___hmf_once_v5;
  findYearDayScheduleRuleWithModelID_error___hmf_once_v5 = v0;
}

+ (id)findMatterPathWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findMatterPathWithModelID_error___hmf_once_t8;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findMatterPathWithModelID_error___hmf_once_t8, &__block_literal_global_368_208513);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findMatterPathWithModelID_error___hmf_once_v9;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F74EF0 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __61__HMCContext_MKFMatterPath__findMatterPathWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findMatterPathWithModelID_error___hmf_once_v9;
  findMatterPathWithModelID_error___hmf_once_v9 = v0;
}

+ (id)findActionSetWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findActionSetWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findActionSetWithModelID_error___hmf_once_t2, &__block_literal_global_377_214221);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findActionSetWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F7A810 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __59__HMCContext_MKFActionSet__findActionSetWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findActionSetWithModelID_error___hmf_once_v3;
  findActionSetWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findApplicationDataWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findApplicationDataWithModelID_error___hmf_once_t5;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findApplicationDataWithModelID_error___hmf_once_t5, &__block_literal_global_340);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findApplicationDataWithModelID_error___hmf_once_v6;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F7B838 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __71__HMCContext_MKFApplicationData__findApplicationDataWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findApplicationDataWithModelID_error___hmf_once_v6;
  findApplicationDataWithModelID_error___hmf_once_v6 = v0;
}

+ (id)findSunriseSunsetTimeSpecificationWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findSunriseSunsetTimeSpecificationWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findSunriseSunsetTimeSpecificationWithModelID_error___hmf_once_t0, &__block_literal_global_216095);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findSunriseSunsetTimeSpecificationWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F7C808 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __101__HMCContext_MKFSunriseSunsetTimeSpecification__findSunriseSunsetTimeSpecificationWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findSunriseSunsetTimeSpecificationWithModelID_error___hmf_once_v1;
  findSunriseSunsetTimeSpecificationWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findHomeMediaSettingWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findHomeMediaSettingWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findHomeMediaSettingWithModelID_error___hmf_once_t0, &__block_literal_global_217509);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findHomeMediaSettingWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F7DE30 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __73__HMCContext_MKFHomeMediaSetting__findHomeMediaSettingWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findHomeMediaSettingWithModelID_error___hmf_once_v1;
  findHomeMediaSettingWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findTriggerWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findTriggerWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findTriggerWithModelID_error___hmf_once_t2, &__block_literal_global_316);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findTriggerWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F37BD8 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __55__HMCContext_MKFTrigger__findTriggerWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findTriggerWithModelID_error___hmf_once_v3;
  findTriggerWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findNaturalLightingActionWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findNaturalLightingActionWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findNaturalLightingActionWithModelID_error___hmf_once_t0, &__block_literal_global_232547);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findNaturalLightingActionWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F8F4C8 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __83__HMCContext_MKFNaturalLightingAction__findNaturalLightingActionWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findNaturalLightingActionWithModelID_error___hmf_once_v1;
  findNaturalLightingActionWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findEventTriggerWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findEventTriggerWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findEventTriggerWithModelID_error___hmf_once_t2, &__block_literal_global_409_233250);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findEventTriggerWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F8FDF8 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __65__HMCContext_MKFEventTrigger__findEventTriggerWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findEventTriggerWithModelID_error___hmf_once_v3;
  findEventTriggerWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findCharacteristicBulletinRegistrationWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findCharacteristicBulletinRegistrationWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findCharacteristicBulletinRegistrationWithModelID_error___hmf_once_t0, &__block_literal_global_243034);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findCharacteristicBulletinRegistrationWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F9DBE8 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __109__HMCContext_MKFCharacteristicBulletinRegistration__findCharacteristicBulletinRegistrationWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findCharacteristicBulletinRegistrationWithModelID_error___hmf_once_v1;
  findCharacteristicBulletinRegistrationWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findFloatCharacteristicWithInstanceID:(id)a3 serviceDatabaseID:(id)a4 error:(id *)a5
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = findFloatCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_t2;
  v8 = a4;
  v9 = a3;
  if (v7 != -1)
  {
    dispatch_once(&findFloatCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_t2, &__block_literal_global_320);
  }

  v10 = findFloatCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_v3;
  v11 = [v8 objectID];
  v16[0] = @"OBJECTID";
  v16[1] = @"SECONDARYKEY";
  v17[0] = v8;
  v17[1] = v9;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13 = [HMCContext findModelObjectOfType:&unk_283F9E0C8 parentObjectID:v11 template:v10 substitutions:v12 error:a5];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __100__HMCContext_MKFFloatCharacteristic__findFloatCharacteristicWithInstanceID_serviceDatabaseID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"service = $PARENT AND instanceID = $SECONDARYKEY"];
  v1 = findFloatCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_v3;
  findFloatCharacteristicWithInstanceID_serviceDatabaseID_error___hmf_once_v3 = v0;
}

+ (id)findFloatCharacteristicWithInstanceID:(id)a3 service:(id)a4 error:(id *)a5
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = findFloatCharacteristicWithInstanceID_service_error___hmf_once_t0;
  v8 = a4;
  v9 = a3;
  if (v7 != -1)
  {
    dispatch_once(&findFloatCharacteristicWithInstanceID_service_error___hmf_once_t0, &__block_literal_global_243847);
  }

  v16[0] = @"PRIMARYKEY";
  v16[1] = @"SECONDARYKEY";
  v17[0] = v9;
  v17[1] = v8;
  v10 = MEMORY[0x277CBEAC0];
  v11 = findFloatCharacteristicWithInstanceID_service_error___hmf_once_v1;
  v12 = [v10 dictionaryWithObjects:v17 forKeys:v16 count:2];
  v13 = [HMCContext findModelObjectOfType:&unk_283F9E0C8 template:v11 substitutions:v12 error:a5];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __90__HMCContext_MKFFloatCharacteristic__findFloatCharacteristicWithInstanceID_service_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"instanceID = $PRIMARYKEY AND service = $SECONDARYKEY"];
  v1 = findFloatCharacteristicWithInstanceID_service_error___hmf_once_v1;
  findFloatCharacteristicWithInstanceID_service_error___hmf_once_v1 = v0;
}

+ (id)findRemovedUserAccessCodeWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findRemovedUserAccessCodeWithModelID_error___hmf_once_t2;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findRemovedUserAccessCodeWithModelID_error___hmf_once_t2, &__block_literal_global_294);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findRemovedUserAccessCodeWithModelID_error___hmf_once_v3;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283FB3B28 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __83__HMCContext_MKFRemovedUserAccessCode__findRemovedUserAccessCodeWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findRemovedUserAccessCodeWithModelID_error___hmf_once_v3;
  findRemovedUserAccessCodeWithModelID_error___hmf_once_v3 = v0;
}

+ (id)findFaceprintWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findFaceprintWithModelID_error___hmf_once_t1;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findFaceprintWithModelID_error___hmf_once_t1, &__block_literal_global_266162);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findFaceprintWithModelID_error___hmf_once_v2;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283FB72F0 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __59__HMCContext_MKFFaceprint__findFaceprintWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findFaceprintWithModelID_error___hmf_once_v2;
  findFaceprintWithModelID_error___hmf_once_v2 = v0;
}

+ (id)findHomeSoftwareUpdateSettingWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findHomeSoftwareUpdateSettingWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findHomeSoftwareUpdateSettingWithModelID_error___hmf_once_t0, &__block_literal_global_268682);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findHomeSoftwareUpdateSettingWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283FB8D30 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __91__HMCContext_MKFHomeSoftwareUpdateSetting__findHomeSoftwareUpdateSettingWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findHomeSoftwareUpdateSettingWithModelID_error___hmf_once_v1;
  findHomeSoftwareUpdateSettingWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findCharacteristicEventWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findCharacteristicEventWithModelID_error___hmf_once_t1;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findCharacteristicEventWithModelID_error___hmf_once_t1, &__block_literal_global_271496);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findCharacteristicEventWithModelID_error___hmf_once_v2;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283F16CE8 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __79__HMCContext_MKFCharacteristicEvent__findCharacteristicEventWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findCharacteristicEventWithModelID_error___hmf_once_v2;
  findCharacteristicEventWithModelID_error___hmf_once_v2 = v0;
}

+ (id)findNotificationRegistrationActionSetWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findNotificationRegistrationActionSetWithModelID_error___hmf_once_t1;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findNotificationRegistrationActionSetWithModelID_error___hmf_once_t1, &__block_literal_global_272171);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findNotificationRegistrationActionSetWithModelID_error___hmf_once_v2;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283FBAAE8 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __107__HMCContext_MKFNotificationRegistrationActionSet__findNotificationRegistrationActionSetWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findNotificationRegistrationActionSetWithModelID_error___hmf_once_v2;
  findNotificationRegistrationActionSetWithModelID_error___hmf_once_v2 = v0;
}

+ (id)findMatterCommandActionWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findMatterCommandActionWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findMatterCommandActionWithModelID_error___hmf_once_t0, &__block_literal_global_272712);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findMatterCommandActionWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283FBAC58 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __79__HMCContext_MKFMatterCommandAction__findMatterCommandActionWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findMatterCommandActionWithModelID_error___hmf_once_v1;
  findMatterCommandActionWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findCharacteristicRangeEventWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findCharacteristicRangeEventWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findCharacteristicRangeEventWithModelID_error___hmf_once_t0, &__block_literal_global_274507);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findCharacteristicRangeEventWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283FBC640 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __89__HMCContext_MKFCharacteristicRangeEvent__findCharacteristicRangeEventWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findCharacteristicRangeEventWithModelID_error___hmf_once_v1;
  findCharacteristicRangeEventWithModelID_error___hmf_once_v1 = v0;
}

+ (id)findWeekDayScheduleRuleWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findWeekDayScheduleRuleWithModelID_error___hmf_once_t5;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findWeekDayScheduleRuleWithModelID_error___hmf_once_t5, &__block_literal_global_275479);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findWeekDayScheduleRuleWithModelID_error___hmf_once_v6;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283FBE1E0 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __79__HMCContext_MKFWeekDayScheduleRule__findWeekDayScheduleRuleWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findWeekDayScheduleRuleWithModelID_error___hmf_once_v6;
  findWeekDayScheduleRuleWithModelID_error___hmf_once_v6 = v0;
}

+ (id)findNotificationRegistrationCharacteristicWithModelID:(id)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = findNotificationRegistrationCharacteristicWithModelID_error___hmf_once_t0;
  v6 = a3;
  if (v5 != -1)
  {
    dispatch_once(&findNotificationRegistrationCharacteristicWithModelID_error___hmf_once_t0, &__block_literal_global_284878);
  }

  v13 = @"PRIMARYKEY";
  v14[0] = v6;
  v7 = MEMORY[0x277CBEAC0];
  v8 = findNotificationRegistrationCharacteristicWithModelID_error___hmf_once_v1;
  v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v10 = [HMCContext findModelObjectOfType:&unk_283FC7950 template:v8 substitutions:v9 error:a4];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __117__HMCContext_MKFNotificationRegistrationCharacteristic__findNotificationRegistrationCharacteristicWithModelID_error___block_invoke()
{
  v0 = [MEMORY[0x277CCAC30] predicateWithFormat:@"modelID = $PRIMARYKEY"];
  v1 = findNotificationRegistrationCharacteristicWithModelID_error___hmf_once_v1;
  findNotificationRegistrationCharacteristicWithModelID_error___hmf_once_v1 = v0;
}

@end