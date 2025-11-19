@interface HMDAccessorySettingsController
+ (id)logCategory;
- (BOOL)canUser:(id)a3 editConstraintsForSetting:(id)a4;
- (BOOL)canUser:(id)a3 editConstraintsForSettingWithKeyPath:(id)a4;
- (BOOL)hasCreatedUnprocessedRootGroup;
- (BOOL)hasDependants;
- (BOOL)haveGroupWithUUID:(id)a3;
- (BOOL)isSettingOwner;
- (BOOL)shouldEncodeForNonAdminSharedUserForSetting:(id)a3;
- (BOOL)shouldEncodeForXPCTransportForSetting:(id)a3;
- (BOOL)shouldEncodeSetting:(id)a3 withCoder:(id)a4 forAccessorySettingGroup:(id)a5;
- (HMDAccessorySettingGroup)rootGroup;
- (HMDAccessorySettingsController)initWithParentUUID:(id)a3 codingKey:(id)a4;
- (HMDAccessorySettingsController)initWithQueue:(id)a3 delegate:(id)a4 dataSource:(id)a5 parentUUID:(id)a6 codingKey:(id)a7 logEventSubmitter:(id)a8;
- (HMDAccessorySettingsController)initWithQueue:(id)a3 delegate:(id)a4 dataSource:(id)a5 parentUUID:(id)a6 codingKey:(id)a7 logEventSubmitter:(id)a8 settingOwner:(BOOL)a9 migrationOwner:(BOOL)a10 factory:(id)a11 rootGroup:(id)a12 notificationCenter:(id)a13;
- (HMDAccessorySettingsController)ownerController;
- (HMDAccessorySettingsControllerDataSource)dataSource;
- (HMDAccessorySettingsControllerDelegate)delegate;
- (HMDHome)home;
- (NSArray)childrenIdentifiers;
- (NSMapTable)groupsMap;
- (NSMapTable)settingsMap;
- (NSString)description;
- (NSString)siriLanguage;
- (id)_keyPathsForSettings;
- (id)groupForKeyPath:(id)a3;
- (id)languageValueList;
- (id)logIdentifier;
- (id)mergeWithSettingsMetadata:(id)a3;
- (id)modelObjectsForSettings;
- (id)settingForKeyPath:(id)a3;
- (id)settingForUUID:(id)a3;
- (void)BOOLSettingForKeyPath:(id)a3 completion:(id)a4;
- (void)_cacheConstraintAdditions:(id)a3 removals:(id)a4 setting:(id)a5;
- (void)_createSettings;
- (void)_didAddGroup:(id)a3;
- (void)_didAddSetting:(id)a3;
- (void)_didRemoveGroup:(id)a3;
- (void)_didRemoveSetting:(id)a3;
- (void)_migrateSettingsWithCompletion:(id)a3;
- (void)_onMessageUpdateValue:(id)a3 settingKeyPath:(id)a4 senderVersion:(id)a5 senderProductClass:(int64_t)a6 completion:(id)a7;
- (void)_performDependantFixup;
- (void)_performSettingsAudit;
- (void)_reevaluateDependantSettings;
- (void)_removeDependant:(id)a3;
- (void)_removeManagedConfigurationProfile:(id)a3 completion:(id)a4;
- (void)_replaceConstraintsOnMessageToChildWithAdditions:(id)a3 removedChildConstraints:(id)a4 settingKeyPath:(id)a5 senderProductClass:(int64_t)a6 completion:(id)a7;
- (void)_replaceConstraintsOnSetting:(id)a3 additions:(id)a4 removals:(id)a5 completion:(id)a6;
- (void)_runUpdateTransactionWithValue:(id)a3 setting:(id)a4 completion:(id)a5;
- (void)_scheduleAuditWithReason:(unint64_t)a3;
- (void)_updateValue:(id)a3 forSetting:(id)a4 senderVersion:(id)a5 senderProductClass:(int64_t)a6 completion:(id)a7;
- (void)addDependant:(id)a3;
- (void)addedSettingModel:(id)a3 completion:(id)a4;
- (void)auditOnFirstFetch;
- (void)decodeWithCoder:(id)a3;
- (void)didBecomeIndependantOwner;
- (void)didChangeDependantSettings:(id)a3 ownerSettingsKeyPaths:(id)a4;
- (void)didChangeSetting:(id)a3;
- (void)didDetectCounterpartUsesSoftwareVersionBasedMigrationOwner;
- (void)didUpdateSettingConstraints:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)handleLanguageChangeTimerFired;
- (void)handleRemovedGroupModel:(id)a3 completion:(id)a4;
- (void)handleRemovedSettingConstraintModel:(id)a3 completion:(id)a4;
- (void)handleRemovedSettingModel:(id)a3 completion:(id)a4;
- (void)handleUpdatedGroupModel:(id)a3 completion:(id)a4;
- (void)handleUpdatedSettingConstraintModel:(id)a3 completion:(id)a4;
- (void)handleUpdatedSettingModel:(id)a3 completion:(id)a4;
- (void)legacySettingsAdaptor:(id)a3 didLoadSettingKeyPath:(id)a4 selectedLanguageValue:(id)a5 availableLanguageList:(id)a6;
- (void)legacySettingsAdaptor:(id)a3 didUpdateSettingKeyPath:(id)a4 numberValue:(id)a5;
- (void)legacySettingsAdaptor:(id)a3 didUpdateSettingKeyPath:(id)a4 selectedLanguageValue:(id)a5 availableLanguageList:(id)a6;
- (void)onMessageAddConstraint:(id)a3 keyPath:(id)a4 completion:(id)a5;
- (void)onMessageRemoveConstraint:(id)a3 keyPath:(id)a4 completion:(id)a5;
- (void)onMessageReplaceConstraintsWithAdditions:(id)a3 constraintIdsToRemove:(id)a4 keyPath:(id)a5 senderProductClass:(int64_t)a6 isRemote:(BOOL)a7 completion:(id)a8;
- (void)onMessageUpdateConstraints:(id)a3 keyPath:(id)a4 completion:(id)a5;
- (void)onMessageUpdateValue:(id)a3 settingIdentifier:(id)a4 senderVersion:(id)a5 senderProductClass:(int64_t)a6 completion:(id)a7;
- (void)onMessageUpdateValue:(id)a3 settingKeyPath:(id)a4 senderVersion:(id)a5 senderProductClass:(int64_t)a6 completion:(id)a7;
- (void)owner:(id)a3 didUpdateSettings:(id)a4;
- (void)removeAllDependants;
- (void)removeDependant:(id)a3;
- (void)scheduleAuditWithReason:(unint64_t)a3 from:(id)a4;
- (void)scheduleDependantFixup;
- (void)setGroupsMap:(id)a3;
- (void)setHasCreatedUnprocessedRootGroup:(BOOL)a3;
- (void)setIsSettingOwner:(BOOL)a3;
- (void)setNestedGroupsDataSourcesWithGroup:(id)a3;
- (void)setRootGroup:(id)a3;
- (void)setSettingsMap:(id)a3;
- (void)settingsHierarchyDidChange;
- (void)timerDidFire:(id)a3;
- (void)updateSettingOwner:(BOOL)a3;
- (void)updatedSetting:(id)a3 model:(id)a4 completion:(id)a5;
@end

@implementation HMDAccessorySettingsController

- (HMDAccessorySettingsControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMDAccessorySettingsController)ownerController
{
  WeakRetained = objc_loadWeakRetained(&self->_ownerController);

  return WeakRetained;
}

- (HMDAccessorySettingsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)languageValueList
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessorySettingsController *)self rootGroup];
  v4 = [v3 settingWithKeyPath:@"root.siri.language"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 constraints];
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
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __51__HMDAccessorySettingsController_languageValueList__block_invoke;
      v20[3] = &unk_278682470;
      v20[4] = self;
      v9 = [v8 na_map:v20];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v22 = v17;
        v23 = 2112;
        v24 = v5;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to get language constraints from language setting: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v9 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v13;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to get language setting from root group: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v9 = MEMORY[0x277CBEBF8];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v9;
}

id __51__HMDAccessorySettingsController_languageValueList__block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 value];
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
    v7 = [v6 title];
    v8 = [v7 componentsSeparatedByString:{@", "}];
    if ([v8 count] > 2)
    {
      v18 = [v8 objectAtIndex:0];
      v19 = [v8 objectAtIndex:1];
      v20 = [v8 objectAtIndex:2];
      v21 = 0;
      if ([v8 count] >= 5)
      {
        v21 = [v8 objectAtIndex:4];
      }

      v13 = [objc_alloc(MEMORY[0x277CD1DC0]) initWithInputLanguageCode:v18 outputVoiceLanguageCode:v19 outputVoiceGenderCode:v20 voiceName:v21];
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = *(a1 + 32);
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v12;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to get expected language code count from legacy language setting encoding: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v13 = 0;
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
      v24 = 138543618;
      v25 = v17;
      v26 = 2112;
      v27 = v3;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to get legacy langage setting encoding from language constaint: %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)legacySettingsAdaptor:(id)a3 didUpdateSettingKeyPath:(id)a4 selectedLanguageValue:(id)a5 availableLanguageList:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
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
    v19 = 138544130;
    v20 = v17;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Did update setting from keyPath:%@ value = %@, availableLanguageList = %@", &v19, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  v18 = *MEMORY[0x277D85DE8];
}

- (void)legacySettingsAdaptor:(id)a3 didLoadSettingKeyPath:(id)a4 selectedLanguageValue:(id)a5 availableLanguageList:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
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
    v19 = 138544130;
    v20 = v17;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Did update setting from keyPath:%@ value = %@, availableLanguageList = %@", &v19, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
  [(HMDAccessorySettingsController *)v15 legacySettingsAdaptor:v10 didUpdateSettingKeyPath:v11 selectedLanguageValue:v12 availableLanguageList:v13];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)legacySettingsAdaptor:(id)a3 didUpdateSettingKeyPath:(id)a4 numberValue:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessorySettingsController *)self settingForKeyPath:v9];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 value];
    v14 = HMFEqualObjects();

    if ((v14 & 1) == 0)
    {
      v15 = MEMORY[0x277CD1790];
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "integerValue")}];
      v17 = [v15 scaleDownNumberSettingValue:v16];

      if ([MEMORY[0x277CD1790] isKeyPathForTapAssistanceSelectionSettingType:v9])
      {
        v18 = [v17 integerValue];
        v19 = [MEMORY[0x277CD1790] tapAssistanceSelectionItemWithIndex:v18];
        v20 = objc_autoreleasePoolPush();
        v21 = self;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = HMFGetLogIdentifier();
          [v12 keyPath];
          v24 = v35 = v20;
          *buf = 138543874;
          v41 = v23;
          v42 = 2114;
          v43 = v24;
          v44 = 2114;
          v45 = v19;
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Updated setting keyPath: %{public}@ to %{public}@", buf, 0x20u);

          v20 = v35;
        }

        objc_autoreleasePoolPop(v20);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __92__HMDAccessorySettingsController_legacySettingsAdaptor_didUpdateSettingKeyPath_numberValue___block_invoke;
        v38[3] = &unk_2786896D8;
        v38[4] = v21;
        v39 = v12;
        [(HMDAccessorySettingsController *)v21 _runUpdateTransactionWithValue:v19 setting:v39 completion:v38];
      }

      else
      {
        v29 = objc_autoreleasePoolPush();
        v30 = self;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = HMFGetLogIdentifier();
          v33 = [v12 keyPath];
          *buf = 138543874;
          v41 = v32;
          v42 = 2114;
          v43 = v33;
          v44 = 2114;
          v45 = v17;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@Updating setting keyPath: %{public}@ on notification from adaptor to %{public}@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v29);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __92__HMDAccessorySettingsController_legacySettingsAdaptor_didUpdateSettingKeyPath_numberValue___block_invoke_196;
        v36[3] = &unk_2786896D8;
        v36[4] = v30;
        v37 = v12;
        [(HMDAccessorySettingsController *)v30 _runUpdateTransactionWithValue:v17 setting:v37 completion:v36];
      }
    }
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v28;
      v42 = 2114;
      v43 = v9;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Did not find setting with keyPath: %{public}@ on update from fetched settings adaptor", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __92__HMDAccessorySettingsController_legacySettingsAdaptor_didUpdateSettingKeyPath_numberValue___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) keyPath];
    v14 = 138543874;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Updated setting keyPath: %{public}@ with error %@", &v14, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277D85DE8];
}

void __92__HMDAccessorySettingsController_legacySettingsAdaptor_didUpdateSettingKeyPath_numberValue___block_invoke_196(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) keyPath];
    v14 = 138543618;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Updated setting keyPath: %{public}@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277D85DE8];
}

void __90__HMDAccessorySettingsController_legacySettingsAdaptor_didUpdateSettingKeyPath_BOOLValue___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) keyPath];
    v14 = 138543618;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Updated setting keyPath: %{public}@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)BOOLSettingForKeyPath:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessorySettingsController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDAccessorySettingsController_BOOLSettingForKeyPath_completion___block_invoke;
  block[3] = &unk_278689F98;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __67__HMDAccessorySettingsController_BOOLSettingForKeyPath_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) settingForKeyPath:*(a1 + 40)];
  v6 = v2;
  if (v2 && [v2 type] == 2)
  {
    v3 = [v6 value];
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

    [v5 BOOLValue];
  }

  (*(*(a1 + 48) + 16))();
}

- (void)didDetectCounterpartUsesSoftwareVersionBasedMigrationOwner
{
  v3 = [(HMDAccessorySettingsController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __92__HMDAccessorySettingsController_didDetectCounterpartUsesSoftwareVersionBasedMigrationOwner__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __92__HMDAccessorySettingsController_didDetectCounterpartUsesSoftwareVersionBasedMigrationOwner__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isMigrationOwner] & 1) == 0)
  {
    v2 = [*(a1 + 32) rootGroup];

    if (!v2)
    {
      v3 = [*(a1 + 32) didInitiateSettingsCreationForOlderSoftwareCounterpart];
      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 32);
      v6 = HMFGetOSLogHandle();
      v7 = v6;
      if (v3)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v8 = HMFGetLogIdentifier();
          v11 = 138543362;
          v12 = v8;
          _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Already initiated settings creation for older software counterpart. Will not attempt again", &v11, 0xCu);
        }

        objc_autoreleasePoolPop(v4);
      }

      else
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v9 = HMFGetLogIdentifier();
          v11 = 138543362;
          v12 = v9;
          _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Detected no settings with older software counterpart. Will create settings.", &v11, 0xCu);
        }

        objc_autoreleasePoolPop(v4);
        [*(a1 + 32) _createSettings];
        [*(a1 + 32) setDidInitiateSettingsCreationForOlderSoftwareCounterpart:1];
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateSettingOwner:(BOOL)a3
{
  v5 = [(HMDAccessorySettingsController *)self workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__HMDAccessorySettingsController_updateSettingOwner___block_invoke;
  v6[3] = &unk_278688650;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

uint64_t __53__HMDAccessorySettingsController_updateSettingOwner___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) isSettingOwner];
  if (*(a1 + 40) != result)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 40);
      v8 = HMFBooleanToString();
      v10 = 138543618;
      v11 = v6;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Updating setting owner to %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    result = [*(a1 + 32) setIsSettingOwner:*(a1 + 40)];
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)auditOnFirstFetch
{
  v3 = [(HMDAccessorySettingsController *)self ownerController];

  if (!v3)
  {
    v4 = [(HMDAccessorySettingsController *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__HMDAccessorySettingsController_auditOnFirstFetch__block_invoke;
    block[3] = &unk_27868A728;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

- (void)removeAllDependants
{
  v3 = [(HMDAccessorySettingsController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HMDAccessorySettingsController_removeAllDependants__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __53__HMDAccessorySettingsController_removeAllDependants__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) dependantControllers];
  v3 = [v2 copy];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _removeDependant:*(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)removeDependant:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessorySettingsController *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDAccessorySettingsController_removeDependant___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)addDependant:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessorySettingsController *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDAccessorySettingsController_addDependant___block_invoke;
  v7[3] = &unk_27868A750;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __47__HMDAccessorySettingsController_addDependant___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dependantControllers];
  [v2 addObject:*(a1 + 40)];

  [*(a1 + 32) scheduleDependantFixup];
  v5 = a1 + 32;
  v3 = *(a1 + 32);
  v4 = *(v5 + 8);
  v6 = [v3 _keyPathsForSettings];
  [v4 didChangeDependantSettings:v3 ownerSettingsKeyPaths:v6];
}

- (id)modelObjectsForSettings
{
  v2 = [(HMDAccessorySettingsController *)self rootGroup];
  if (v2)
  {
    v3 = [HMDAccessorySettingTransform modelsForGroup:v2];
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  return v3;
}

uint64_t __100__HMDAccessorySettingsController_configureIsSettingOwner_migrationOwner_home_legacySettingsAdaptor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) rootGroup];

  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _migrateSettingsWithCompletion:0];
  }

  else
  {

    return [v3 _createSettings];
  }
}

- (NSArray)childrenIdentifiers
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_allChildrenIdentifiers copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)siriLanguage
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessorySettingsController *)self settingForKeyPath:@"root.siri.language"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 value];
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

    v8 = [v7 title];
    v9 = [v8 componentsSeparatedByString:{@", "}];

    if ([v9 hmf_isEmpty])
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse siri language componenets", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v14 = 0;
    }

    else
    {
      v14 = [v9 firstObject];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v18;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch siri language because the HMDAccessorySetting was nil", &v21, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)setNestedGroupsDataSourcesWithGroup:(id)a3
{
  v4 = a3;
  [v4 setDataSource:self];
  v5 = [v4 groups];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__HMDAccessorySettingsController_setNestedGroupsDataSourcesWithGroup___block_invoke;
  v6[3] = &unk_278682448;
  v6[4] = self;
  [v5 na_each:v6];
}

- (void)decodeWithCoder:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(HMDAccessorySettingsController *)self codingKey];
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  [(HMDAccessorySettingsController *)self setNestedGroupsDataSourcesWithGroup:v7];
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v11;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Assigning root group on decode. %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMDAccessorySettingsController *)v9 setRootGroup:v7];
  v12 = [(HMDAccessorySettingsController *)v9 parentUUID];
  v13 = [(HMDAccessorySettingsController *)v9 rootGroup];
  [v13 setParentIdentifier:v12];

  [(HMDAccessorySettingsController *)v9 settingsHierarchyDidChange];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(HMDAccessorySettingsController *)self rootGroup];
  v5 = [(HMDAccessorySettingsController *)self codingKey];
  [v4 encodeObject:v6 forKey:v5];
}

- (void)didBecomeIndependantOwner
{
  v3 = [(HMDAccessorySettingsController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDAccessorySettingsController_didBecomeIndependantOwner__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v3, block);
}

void __59__HMDAccessorySettingsController_didBecomeIndependantOwner__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setOwnerController:0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) settingsMap];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = [*(a1 + 32) settingsMap];
        v9 = [v8 objectForKey:v7];

        [v9 setReflected:0];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v10 = [*(a1 + 32) delegate];
  [v10 accessorySettingsController:*(a1 + 32) saveWithReason:@"Parent for reflected settings removed"];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didChangeDependantSettings:(id)a3 ownerSettingsKeyPaths:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessorySettingsController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__HMDAccessorySettingsController_didChangeDependantSettings_ownerSettingsKeyPaths___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __83__HMDAccessorySettingsController_didChangeDependantSettings_ownerSettingsKeyPaths___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setOwnerController:*(a1 + 40)];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) _keyPathsForSettings];
    *buf = 138543874;
    v29 = v5;
    v30 = 2112;
    v31 = v6;
    v32 = 2112;
    v33 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Evaluating dependents from %@ to current %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = *(a1 + 48);
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v9)
  {
    goto LABEL_17;
  }

  v11 = v9;
  v12 = 0;
  v13 = *v24;
  *&v10 = 138543618;
  v22 = v10;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v24 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v15 = [*(a1 + 32) settingForKeyPath:{*(*(&v23 + 1) + 8 * i), v22, v23}];
      v16 = v15;
      if (v15 && ([v15 isReflected] & 1) == 0)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = *(a1 + 32);
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = HMFGetLogIdentifier();
          *buf = v22;
          v29 = v20;
          v30 = 2112;
          v31 = v16;
          _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Setting %@ became reflected", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        v12 = 1;
        [v16 setReflected:1];
      }
    }

    v11 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v11);

  if (v12)
  {
    v8 = [*(a1 + 32) delegate];
    [v8 accessorySettingsController:*(a1 + 32) saveWithReason:@"Dependent reflected settings changed"];
LABEL_17:
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)didUpdateSettingConstraints:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = a3;
  if ([(HMDAccessorySettingsController *)self isSettingOwner]&& [(HMDAccessorySettingsController *)self hasDependants])
  {
    [(HMDAccessorySettingsController *)self scheduleDependantFixup];
  }

  v4 = [v12 keyPath];
  v5 = [v4 isEqual:@"root.siri.language"];

  if (self && v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Accessory settings languages did change, resuming language change timer", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [(HMDAccessorySettingsController *)v7 languageChangeDebounceTimer];
    [v10 resume];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)didChangeSetting:(id)a3
{
  if ([(HMDAccessorySettingsController *)self isSettingOwner])
  {

    [(HMDAccessorySettingsController *)self scheduleDependantFixup];
  }
}

- (void)_didRemoveSetting:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  allChildrenIdentifiers = self->_allChildrenIdentifiers;
  v6 = [v4 identifier];

  [(NSMutableArray *)allChildrenIdentifiers removeObject:v6];
}

- (void)_didAddSetting:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  allChildrenIdentifiers = self->_allChildrenIdentifiers;
  v6 = [v4 identifier];

  [(NSMutableArray *)allChildrenIdentifiers addObject:v6];
}

- (void)_didRemoveGroup:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  allChildrenIdentifiers = self->_allChildrenIdentifiers;
  v6 = [v4 identifier];

  [(NSMutableArray *)allChildrenIdentifiers removeObject:v6];
}

- (void)_didAddGroup:(id)a3
{
  v4 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  allChildrenIdentifiers = self->_allChildrenIdentifiers;
  v6 = [v4 identifier];

  [(NSMutableArray *)allChildrenIdentifiers addObject:v6];
}

- (void)handleLanguageChangeTimerFired
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Accessory settings language change timer did fire, notifying delegate", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(HMDAccessorySettingsController *)v4 delegate];
  [v7 languagesChangedForAccessorySettingsController:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedSettingConstraintModel:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessorySettingsController *)self settingsMap];
  v9 = [v6 parentUUID];
  v10 = [v8 objectForKey:v9];

  if (v10)
  {
    v11 = [v6 uuid];
    v12 = [v10 constraintWithIdentifier:v11];

    v13 = objc_autoreleasePoolPush();
    v14 = v10;
    v15 = HMFGetOSLogHandle();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
    if (v12)
    {
      if (v16)
      {
        v17 = HMFGetLogIdentifier();
        v27 = 138543874;
        v28 = v17;
        v29 = 2112;
        v30 = v12;
        v31 = 2112;
        v32 = v14;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Removed constraint: %@ from setting: %@", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [v14 removeConstraint:v12];
      [(HMDAccessorySettingsController *)self didUpdateSettingConstraints:v14];
      v7[2](v7, 0);
      v18 = [(HMDAccessorySettingsController *)self ownerController];
      v19 = v18;
      if (v18)
      {
        [v18 scheduleAuditWithReason:7 from:self];
      }
    }

    else
    {
      if (v16)
      {
        v25 = HMFGetLogIdentifier();
        v27 = 138543874;
        v28 = v25;
        v29 = 2112;
        v30 = v6;
        v31 = 2112;
        v32 = v14;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Constraint already removed: %@ from setting: %@", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      v7[2](v7, 0);
      v12 = 0;
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [v6 parentUUID];
      v27 = 138543874;
      v28 = v23;
      v29 = 2112;
      v30 = v24;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Setting %@ to remove constraint %@ not found", &v27, 0x20u);
    }

    objc_autoreleasePoolPop(v20);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (v7)[2](v7, v12);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedSettingConstraintModel:(id)a3 completion:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessorySettingsController *)self settingsMap];
  v9 = [v6 parentUUID];
  v10 = [v8 objectForKey:v9];

  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CD1780]) initWithModel:v6];
    if (v11)
    {
      v12 = [v10 constraints];
      v13 = [v12 containsObject:v11];

      v14 = objc_autoreleasePoolPush();
      v15 = v10;
      v16 = HMFGetOSLogHandle();
      v17 = v16;
      if (v13)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v18 = HMFGetLogIdentifier();
          *buf = 138543618;
          v39 = v18;
          v40 = 2112;
          v41 = v11;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Constraint already exists and is not mutable: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
      }

      else
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v25 = HMFGetLogIdentifier();
          *buf = 138543618;
          v39 = v25;
          v40 = 2112;
          v41 = v11;
          _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Added accessory settings constraint: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
        v26 = objc_autoreleasePoolPush();
        v27 = v15;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v29 = v36 = v13;
          [v11 identifier];
          v30 = v37 = v26;
          v31 = [v27 name];
          *buf = 138543874;
          v39 = v29;
          v40 = 2112;
          v41 = v30;
          v42 = 2112;
          v43 = v31;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Added accessory settings constraint: %@, setting: %@", buf, 0x20u);

          v26 = v37;
          v13 = v36;
        }

        objc_autoreleasePoolPop(v26);
        [v27 addConstraint:v11];
        [(HMDAccessorySettingsController *)self didUpdateSettingConstraints:v27];
      }

      v7[2](v7, 0);
      v32 = [(HMDAccessorySettingsController *)self ownerController];
      v33 = v32;
      if (v32)
      {
        v34 = v13;
      }

      else
      {
        v34 = 1;
      }

      if ((v34 & 1) == 0)
      {
        [v32 scheduleAuditWithReason:6 from:self];
      }
    }

    else
    {
      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      (v7)[2](v7, v24);
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v6 parentUUID];
      *buf = 138543874;
      v39 = v22;
      v40 = 2112;
      v41 = v23;
      v42 = 2112;
      v43 = v6;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Setting %@ to add constraint %@ not found", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (v7)[2](v7, v11);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedSettingModel:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessorySettingsController *)self settingsMap];
  v9 = [v6 uuid];
  v10 = [v8 objectForKey:v9];

  v11 = [(HMDAccessorySettingsController *)self groupsMap];
  v12 = [v6 parentUUID];
  v13 = [v11 objectForKey:v12];

  if (v10)
  {
    [v13 removeSetting:v10];
    [(HMDAccessorySettingsController *)self settingsHierarchyDidChange];
    v7[2](v7, 0);
    v14 = [(HMDAccessorySettingsController *)self ownerController];
    v15 = v14;
    if (v14)
    {
      [v14 scheduleAuditWithReason:3 from:self];
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v6 uuid];
      v23 = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Setting with id %@ not found", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (v7)[2](v7, v21);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)addedSettingModel:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [[HMDAccessorySetting alloc] initWithModel:v6];
  v9 = [(HMDAccessorySettingsController *)self groupsMap];
  v10 = [v6 parentUUID];
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
    [v11 addSetting:v8];
    [(HMDAccessorySettingsController *)self settingsHierarchyDidChange];
    v7[2](v7, 1, 0, v8);
    v12 = [(HMDAccessorySettingsController *)self ownerController];
    v13 = v12;
    if (!v12)
    {
      if (![(HMDAccessorySettingsController *)self hasDependants])
      {
LABEL_10:

        goto LABEL_11;
      }

      v12 = self;
    }

    [v12 scheduleAuditWithReason:2 from:self];
    goto LABEL_10;
  }

  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v6 parentUUID];
    v21 = 138543874;
    v22 = v17;
    v23 = 2112;
    v24 = v18;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Parent group %@ to add setting %@ not found", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  (v7)[2](v7, 1, v19, 0);

LABEL_11:
  v20 = *MEMORY[0x277D85DE8];
}

- (void)updatedSetting:(id)a3 model:(id)a4 completion:(id)a5
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 configurationVersion];
  v12 = [v11 unsignedIntegerValue];

  if (v12 && (v13 = [v8 configurationVersion], objc_msgSend(v8, "setConfigurationVersion:", v12), v12 >= v13) && (objc_msgSend(v9, "value"), v14 = objc_claimAutoreleasedReturnValue(), v14, v14))
  {
    v15 = MEMORY[0x277CCAAC8];
    v16 = +[HMDAccessorySetting supportedValueClasses];
    v17 = [v9 value];
    v35 = 0;
    v18 = [v15 unarchivedObjectOfClasses:v16 fromData:v17 error:&v35];
    v19 = v35;

    if (v18)
    {
      v34 = v19;
      v20 = [v9 value];
      v21 = [v8 value];
      v22 = HMFEqualObjects();

      v23 = 0;
      if ((v22 & 1) != 0 || v12 <= v13)
      {
        v19 = v34;
      }

      else
      {
        [v8 setValue:v18];

        v24 = objc_autoreleasePoolPush();
        v25 = v8;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v37 = v27;
          v38 = 2112;
          v39 = v25;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Setting changed %@ value", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        [(HMDAccessorySettingsController *)self didChangeSetting:v25];
        v19 = [v25 value];
        if (!v19)
        {
          v19 = [MEMORY[0x277CBEB68] null];
        }

        v18 = [(HMDAccessorySettingsController *)self messageHandler];
        v28 = [v25 keyPath];
        [v18 notifyOfUpdatedValue:v19 settingKeyPath:v28];

        v23 = 1;
      }
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = v8;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v33;
        v38 = 2112;
        v39 = v19;
        _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive accessory setting supported value from model's value: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v18 = 0;
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  v10[2](v10, v23, 0, v8);

  v29 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedSettingModel:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDAccessorySettingsController *)self settingsMap];
  v9 = [v7 uuid];
  v10 = [v8 objectForKey:v9];

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __71__HMDAccessorySettingsController_handleUpdatedSettingModel_completion___block_invoke;
  v16 = &unk_278682420;
  v17 = self;
  v18 = v6;
  v11 = v6;
  v12 = _Block_copy(&v13);
  if (v10)
  {
    [(HMDAccessorySettingsController *)self updatedSetting:v10 model:v7 completion:v12, v13, v14, v15, v16, v17, v18];
  }

  else
  {
    [(HMDAccessorySettingsController *)self addedSettingModel:v7 completion:v12, v13, v14, v15, v16, v17, v18];
  }
}

void __71__HMDAccessorySettingsController_handleUpdatedSettingModel_completion___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v8)
  {
    if (a2)
    {
      v10 = [v8 keyPath];

      if (v10)
      {
        v11 = [*(a1 + 32) notificationCenter];
        v12 = [*(a1 + 32) dataSource];
        v16[0] = @"HMDAccessorySettingsControllerSettingsUpdateNotificationSettingValueCodingKey";
        v16[1] = @"HMDAccessorySettingsControllerSettingsUpdateNotification";
        v17[0] = v9;
        v13 = [v9 keyPath];
        v17[1] = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
        [v11 postNotificationName:@"HMDAccessorySettingsControllerSettingsUpdateNotification" object:v12 userInfo:v14];
      }
    }
  }

  (*(*(a1 + 40) + 16))();

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleRemovedGroupModel:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessorySettingsController *)self groupsMap];
  v9 = [v6 uuid];
  v10 = [v8 objectForKey:v9];

  v11 = [(HMDAccessorySettingsController *)self groupsMap];
  v12 = [v6 parentUUID];
  v13 = [v11 objectForKey:v12];

  if (v10)
  {
    v14 = [v10 keyPath];
    v15 = [(HMDAccessorySettingsController *)self rootGroup];
    v16 = [v15 keyPath];
    v17 = [v14 isEqualToString:v16];

    if (v17)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [(HMDAccessorySettingsController *)v19 rootGroup];
        v27 = 138543874;
        v28 = v21;
        v29 = 2112;
        v30 = v6;
        v31 = 2112;
        v32 = v22;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Root group model %@ was removed %@", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      [(HMDAccessorySettingsController *)v19 setRootGroup:0];
    }

    else
    {
      [v13 removeGroup:v10];
    }

    [(HMDAccessorySettingsController *)self settingsHierarchyDidChange];
    v7[2](v7, 0);
    v24 = [(HMDAccessorySettingsController *)self ownerController];
    v25 = v24;
    if (v24)
    {
      [v24 scheduleAuditWithReason:5 from:self];
    }
  }

  else
  {
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (v7)[2](v7, v23);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)handleUpdatedGroupModel:(id)a3 completion:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [[HMDAccessorySettingGroup alloc] initWithModel:v6];
  [(HMDAccessorySettingGroup *)v8 setDataSource:self];
  if (!v8)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v45 = 138543618;
      v46 = v27;
      v47 = 2112;
      v48 = v6;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode group from model %@", &v45, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = MEMORY[0x277CCA9B8];
    v29 = 3;
    goto LABEL_23;
  }

  v9 = [(HMDAccessorySettingGroup *)v6 parentUUID];
  v10 = [(HMDAccessorySettingsController *)self parentUUID];
  v11 = [v9 hmf_isEqualToUUID:v10];

  if (!v11)
  {
    v30 = [(HMDAccessorySettingsController *)self groupsMap];
    v31 = [(HMDAccessorySettingGroup *)v6 parentUUID];
    v32 = [v30 objectForKey:v31];

    if (v32)
    {
      [(HMDAccessorySettingGroup *)v32 addGroup:v8];
      v33 = objc_autoreleasePoolPush();
      v34 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        v45 = 138543874;
        v46 = v36;
        v47 = 2112;
        v48 = v8;
        v49 = 2112;
        v50 = v32;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Added group %@ to %@", &v45, 0x20u);
      }

      objc_autoreleasePoolPop(v33);
      goto LABEL_18;
    }

    v39 = objc_autoreleasePoolPush();
    v40 = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = HMFGetLogIdentifier();
      v43 = [(HMDAccessorySettingGroup *)v6 parentUUID];
      v45 = 138543874;
      v46 = v42;
      v47 = 2112;
      v48 = v43;
      v49 = 2112;
      v50 = v8;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Parent group %@ to add group %@ not found", &v45, 0x20u);
    }

    objc_autoreleasePoolPop(v39);
    v28 = MEMORY[0x277CCA9B8];
    v29 = 2;
LABEL_23:
    v38 = [v28 hmErrorWithCode:v29];
    v7[2](v7, v38);
    goto LABEL_24;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [(HMDAccessorySettingGroup *)v6 uuid];
    v45 = 138543874;
    v46 = v15;
    v47 = 2112;
    v48 = v6;
    v49 = 2112;
    v50 = v16;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Assigning root group from transaction model: %@ id: %@.", &v45, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v17 = [(HMDAccessorySettingsController *)v13 rootGroup];
  v18 = [v17 isEqual:v8];

  if (v18)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = v13;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [(HMDAccessorySettingsController *)v20 rootGroup];
      v45 = 138543874;
      v46 = v22;
      v47 = 2112;
      v48 = v23;
      v49 = 2112;
      v50 = v8;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@RootGroup changing unexpectedly %@ / %@.", &v45, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
  }

  [(HMDAccessorySettingsController *)v13 setRootGroup:v8];
  if ([(HMDAccessorySettingsController *)v13 hasCreatedUnprocessedRootGroup])
  {
    [(HMDAccessorySettingsController *)v13 setHasCreatedUnprocessedRootGroup:0];
    [(HMDAccessorySettingsController *)v13 scheduleAuditWithReason:4 from:v13];
  }

LABEL_18:
  [(HMDAccessorySettingsController *)self settingsHierarchyDidChange];
  v7[2](v7, 0);
  v37 = [(HMDAccessorySettingsController *)self ownerController];
  v38 = v37;
  if (v37)
  {
    [v37 scheduleAuditWithReason:4 from:self];
  }

LABEL_24:

  v44 = *MEMORY[0x277D85DE8];
}

- (void)_removeManagedConfigurationProfile:(id)a3 completion:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(HMDAccessorySettingsController *)self dataSource];
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (v8)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v13;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Remove managed configuration profile", &v23, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      [v8 removeManagedConfigurationProfileWithProfileData:v6 completion:v7];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v19;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil datasource.", &v23, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v20 = _Block_copy(v7);
      if (v20)
      {
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        v20[2](v20, v21);
      }

      v8 = 0;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v23 = 138543362;
      v24 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Managed configuration profile data is nil", &v23, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v8 = _Block_copy(v7);
    if (v8)
    {
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
      (v8)[2](v8, v18);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (HMDHome)home
{
  v2 = [(HMDAccessorySettingsController *)self dataSource];
  v3 = [v2 home];

  return v3;
}

- (id)settingForUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMapTable *)self->_settingsMap objectForKey:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (BOOL)canUser:(id)a3 editConstraintsForSetting:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessorySettingsController *)self settingForUUID:v7];
  v9 = v8;
  if (v8)
  {
    if (self)
    {
      if ([v8 isCollectionType])
      {
        v10 = 4;
      }

      else
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 3;
    }

    v11 = HMDUserPrivilegeCompare([v6 privilege], v10) != -1;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v15;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@User %@ cannot edit accessory setting with UUID %@ because it does not exist.", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)canUser:(id)a3 editConstraintsForSettingWithKeyPath:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessorySettingsController *)self settingForKeyPath:v7];
  v9 = v8;
  if (v8)
  {
    if (self)
    {
      if ([v8 isCollectionType])
      {
        v10 = 4;
      }

      else
      {
        v10 = 3;
      }
    }

    else
    {
      v10 = 3;
    }

    v11 = HMDUserPrivilegeCompare([v6 privilege], v10) != -1;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v15;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@User %@ cannot edit accessory setting at key path %@ because it does not exist.", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_replaceConstraintsOnMessageToChildWithAdditions:(id)a3 removedChildConstraints:(id)a4 settingKeyPath:(id)a5 senderProductClass:(int64_t)a6 completion:(id)a7
{
  v67 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(HMDAccessorySettingsController *)self settingForKeyPath:v14];
  if (v16)
  {
    v54 = a6;
    v55 = v14;
    v57 = v12;
    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v13, "count")}];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v56 = v13;
    v18 = v13;
    v19 = [v18 countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v59;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v59 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v58 + 1) + 8 * i);
          v24 = [v16 counterpartConstraintFor:{v23, v54}];
          if (!v24)
          {
            v34 = objc_autoreleasePoolPush();
            v35 = self;
            v36 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = HMFGetLogIdentifier();
              *buf = 138543618;
              v64 = v37;
              v65 = 2112;
              v66 = v23;
              _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Didn't find constraints to remove in Owner Controller %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v34);
            v38 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Constraint not found in owner controller" reason:@"Did not find constraint in owner controller" suggestion:0];
            v15[2](v15, v38);

            v26 = v18;
            v12 = v57;
            goto LABEL_26;
          }

          v25 = v24;
          [v17 addObject:v24];
        }

        v20 = [v18 countByEnumeratingWithState:&v58 objects:v62 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v12 = v57;
    v26 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v57 copyItems:1];
    v27 = [v17 count];
    if (v27 == [v18 count])
    {
      if ([(HMDAccessorySettingsController *)self isProxy])
      {
        if (v54 != 6)
        {
          v49 = [v17 na_map:&__block_literal_global_179];
          v50 = [(HMDAccessorySettingsController *)self messageHandler];
          v51 = [(HMDAccessorySettingsController *)self delegate];
          v52 = [v16 identifier];
          v53 = [v51 remoteMessageDestinationForAccessorySettingsController:self target:v52];
          [v50 relayReplaceConstraints:v26 constraintIdsToRemove:v49 keyPath:v55 destination:v53 completion:v15];

          v12 = v57;
          v14 = v55;

          v13 = v56;
          goto LABEL_28;
        }

        v28 = objc_autoreleasePoolPush();
        v29 = self;
        v30 = HMFGetOSLogHandle();
        v13 = v56;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543618;
          v64 = v31;
          v65 = 2112;
          v66 = v16;
          _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Cannot relay constraint replacement to child for setting(%@) to a second AudioAccessory", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
        v32 = [(HMDAccessorySettingsController *)v29 factory];
        [v32 assertWithCondition:0 message:@"Cannot reforward settings constraint replacement for child to a second homepod"];

        v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:@"Cannot relay to an AudioAccessory multiple times" reason:@"Failed to handle relay." suggestion:0];
        v15[2](v15, v33);

LABEL_27:
        v14 = v55;
LABEL_28:

        goto LABEL_29;
      }

      [(HMDAccessorySettingsController *)self _replaceConstraintsOnSetting:v16 additions:v26 removals:v17 completion:v15];
    }

    else
    {
      v43 = objc_autoreleasePoolPush();
      v44 = self;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138543362;
        v64 = v46;
        _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@Didn't find same number of constraints to remove", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v43);
      v47 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Constraints don't match" reason:@"Didn't find same number of constraints to remove in media system" suggestion:0];
      v15[2](v15, v47);
    }

LABEL_26:
    v13 = v56;
    goto LABEL_27;
  }

  v39 = objc_autoreleasePoolPush();
  v40 = self;
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = HMFGetLogIdentifier();
    *buf = 138543618;
    v64 = v42;
    v65 = 2112;
    v66 = v14;
    _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Setting not found for keyPath %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v39);
  v17 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
  v15[2](v15, v17);
LABEL_29:

  v48 = *MEMORY[0x277D85DE8];
}

- (void)_replaceConstraintsOnSetting:(id)a3 additions:(id)a4 removals:(id)a5 completion:(id)a6
{
  v120 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v82 = a6;
  v13 = [(HMDAccessorySettingsController *)self workQueue];
  dispatch_assert_queue_V2(v13);

  v14 = [MEMORY[0x277CBEB18] array];
  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = HMFGetLogIdentifier();
    *buf = 138543874;
    v115 = v18;
    v116 = 2112;
    v117 = v12;
    v118 = 2112;
    v119 = v11;
    _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Replacing constraints, %@, with constraint, %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  v19 = objc_autoreleasePoolPush();
  v20 = v16;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543618;
    v115 = v22;
    v116 = 2112;
    v117 = v12;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Removing constraints: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v19);
  v88 = [MEMORY[0x277CBEB18] array];
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v23 = v12;
  v24 = [v23 countByEnumeratingWithState:&v106 objects:v113 count:16];
  obj = v23;
  if (v24)
  {
    v25 = v24;
    v86 = *v107;
    v83 = v11;
LABEL_7:
    v26 = v20;
    v27 = 0;
    while (1)
    {
      if (*v107 != v86)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(*(&v106 + 1) + 8 * v27);
      v29 = [HMDAccessorySettingConstraintModel alloc];
      v30 = [v28 identifier];
      v31 = [v10 identifier];
      v32 = [(HMDBackingStoreModelObject *)v29 initWithObjectChangeType:3 uuid:v30 parentUUID:v31];

      v33 = [v10 constraints];
      LOBYTE(v30) = [v33 containsObject:v28];

      if ((v30 & 1) == 0)
      {
        break;
      }

      v34 = [(HMDAccessorySettingsController *)v26 constraintItemsMarkedForRemoval];
      v35 = [v28 identifier];
      v36 = [v34 containsObject:v35];

      if (v36)
      {
        v75 = objc_autoreleasePoolPush();
        v76 = v26;
        v77 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          v78 = HMFGetLogIdentifier();
          *buf = 138543618;
          v115 = v78;
          v116 = 2112;
          v117 = v28;
          _os_log_impl(&dword_229538000, v77, OS_LOG_TYPE_ERROR, "%{public}@Constraint has already been removed %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v75);
        v72 = MEMORY[0x277CCA9B8];
        v73 = @"Constraint already removed";
        v74 = @"A constraint is already marked for removal";
LABEL_45:
        v79 = [v72 hmErrorWithCode:2 description:v73 reason:v74 suggestion:0];
        v67 = v82;
        v11 = v83;
        (*(v82 + 2))(v82, v79);

        v80 = obj;
        goto LABEL_48;
      }

      v37 = [v28 value];
      [v88 addObject:v37];

      [v14 addObject:v32];
      if (v25 == ++v27)
      {
        v23 = obj;
        v25 = [obj countByEnumeratingWithState:&v106 objects:v113 count:16];
        v11 = v83;
        v20 = v26;
        if (v25)
        {
          goto LABEL_7;
        }

        goto LABEL_14;
      }
    }

    v68 = objc_autoreleasePoolPush();
    v69 = v26;
    v70 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      v71 = HMFGetLogIdentifier();
      *buf = 138543362;
      v115 = v71;
      _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_ERROR, "%{public}@Didn't find same number of constraints to remove", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v68);
    v72 = MEMORY[0x277CCA9B8];
    v73 = @"Constraints don't match";
    v74 = @"Didn't find same number of constraints to remove";
    goto LABEL_45;
  }

LABEL_14:

  v38 = objc_autoreleasePoolPush();
  v39 = v20;
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = HMFGetLogIdentifier();
    *buf = 138543618;
    v115 = v41;
    v116 = 2112;
    v117 = v11;
    _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@Adding constraints: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v38);
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v42 = v11;
  v43 = [v42 countByEnumeratingWithState:&v102 objects:v112 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v103;
    do
    {
      v46 = 0;
      do
      {
        if (*v103 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v102 + 1) + 8 * v46);
        v48 = [v10 identifier];
        v49 = [v47 modelWithParentIdentifier:v48];

        [v49 setObjectChangeType:1];
        [v14 addObject:v49];

        ++v46;
      }

      while (v44 != v46);
      v44 = [v42 countByEnumeratingWithState:&v102 objects:v112 count:16];
    }

    while (v44);
  }

  if ([v14 count])
  {
    v84 = v11;
    v87 = v10;
    v50 = [(HMDAccessorySettingsController *)v39 dataSource];
    v51 = [v50 backingStore];
    v52 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
    v53 = [v51 transaction:@"Replace Constraints" options:v52];

    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v54 = v14;
    v55 = [v54 countByEnumeratingWithState:&v98 objects:v111 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v99;
      do
      {
        v58 = 0;
        do
        {
          if (*v99 != v57)
          {
            objc_enumerationMutation(v54);
          }

          [v53 add:*(*(&v98 + 1) + 8 * v58++)];
        }

        while (v56 != v58);
        v56 = [v54 countByEnumeratingWithState:&v98 objects:v111 count:16];
      }

      while (v56);
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v59 = obj;
    v60 = [v59 countByEnumeratingWithState:&v94 objects:v110 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v95;
      do
      {
        v63 = 0;
        do
        {
          if (*v95 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v64 = *(*(&v94 + 1) + 8 * v63);
          v65 = [(HMDAccessorySettingsController *)v39 constraintItemsMarkedForRemoval];
          v66 = [v64 identifier];
          [v65 addObject:v66];

          ++v63;
        }

        while (v61 != v63);
        v61 = [v59 countByEnumeratingWithState:&v94 objects:v110 count:16];
      }

      while (v61);
    }

    v89[0] = MEMORY[0x277D85DD0];
    v89[1] = 3221225472;
    v89[2] = __93__HMDAccessorySettingsController__replaceConstraintsOnSetting_additions_removals_completion___block_invoke;
    v89[3] = &unk_2786862E8;
    v89[4] = v39;
    v90 = v88;
    v91 = v59;
    v92 = v42;
    v67 = v82;
    v93 = v82;
    [v53 run:v89];

    v10 = v87;
    v11 = v84;
  }

  else
  {
    v67 = v82;
    (*(v82 + 2))(v82, 0);
  }

  v80 = obj;
LABEL_48:

  v81 = *MEMORY[0x277D85DE8];
}

void __93__HMDAccessorySettingsController__replaceConstraintsOnSetting_additions_removals_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __93__HMDAccessorySettingsController__replaceConstraintsOnSetting_additions_removals_completion___block_invoke_2;
  v8[3] = &unk_278688B58;
  v5 = a1[5];
  v6 = a1[4];
  v9 = v5;
  v10 = v6;
  v11 = v3;
  v12 = a1[6];
  v13 = a1[7];
  v14 = a1[8];
  v7 = v3;
  dispatch_async(v4, v8);
}

uint64_t __93__HMDAccessorySettingsController__replaceConstraintsOnSetting_additions_removals_completion___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = [*(a1 + 40) constraintItemsMarkedForRemoval];
        [v8 removeObject:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v4);
  }

  if (!*(a1 + 48))
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 56);
      v14 = *(a1 + 64);
      *buf = 138543874;
      v23 = v12;
      v24 = 2112;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Successfully replaced %@ constraints with %@ constraints.", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v15 = *(a1 + 48);
  }

  result = (*(*(a1 + 72) + 16))();
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)onMessageReplaceConstraintsWithAdditions:(id)a3 constraintIdsToRemove:(id)a4 keyPath:(id)a5 senderProductClass:(int64_t)a6 isRemote:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v75 = a6;
  v106 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  v17 = [(HMDAccessorySettingsController *)self workQueue];
  dispatch_assert_queue_V2(v17);

  v18 = [(HMDAccessorySettingsController *)self settingForKeyPath:v15];
  if (v18)
  {
    v80 = v15;
    v81 = v16;
    v79 = v13;
    v19 = [MEMORY[0x277CBEB58] set];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v78 = v14;
    v20 = v14;
    v21 = [v20 countByEnumeratingWithState:&v93 objects:v105 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v94;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v94 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v93 + 1) + 8 * i);
          v26 = [v18 constraintWithIdentifier:{v25, v75}];
          if (!v26)
          {
            if (!-[HMDAccessorySettingsController isProxy](self, "isProxy") && (-[HMDAccessorySettingsController ownerController](self, "ownerController"), v27 = objc_claimAutoreleasedReturnValue(), v27, !v27) || ([v18 inMemoryConstraintWithIdentifier:v25], (v26 = objc_claimAutoreleasedReturnValue()) == 0))
            {
              v43 = objc_autoreleasePoolPush();
              v44 = self;
              v45 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                v46 = HMFGetLogIdentifier();
                v47 = [v18 constraints];
                v48 = [v18 constraintsForCodingXPC];
                *buf = 138544130;
                v98 = v46;
                v99 = 2112;
                v100 = v25;
                v101 = 2112;
                v102 = v47;
                v103 = 2112;
                v104 = v48;
                _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to find constraint identifier: %@, currentConstraints: %@, allConstraints: %@", buf, 0x2Au);
              }

              objc_autoreleasePoolPop(v43);
              v49 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2 description:@"Constraint not found" reason:@"Failed to find constraint" suggestion:0];
              v16 = v81;
              (v81)[2](v81, v49);

              v35 = v79;
              goto LABEL_37;
            }
          }

          v28 = v26;
          [v19 addObject:v26];
        }

        v22 = [v20 countByEnumeratingWithState:&v93 objects:v105 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v29 = [(HMDAccessorySettingsController *)self ownerController];
    if (v29)
    {
      v30 = [v18 keyPath];
      v31 = [v29 settingForKeyPath:v30];

      if (v31)
      {
        v32 = objc_autoreleasePoolPush();
        v33 = self;
        v34 = HMFGetOSLogHandle();
        v35 = v79;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v36 = HMFGetLogIdentifier();
          *buf = 138543874;
          v98 = v36;
          v99 = 2112;
          v100 = v18;
          v101 = 2112;
          v102 = v29;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Forwarding replace constraints for %@ to owner controller. %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v32);
        v37 = [v29 workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __144__HMDAccessorySettingsController_onMessageReplaceConstraintsWithAdditions_constraintIdsToRemove_keyPath_senderProductClass_isRemote_completion___block_invoke;
        block[3] = &unk_278682360;
        block[4] = v33;
        v88 = v79;
        v89 = v19;
        v90 = v18;
        v92 = v75;
        v16 = v81;
        v91 = v81;
        dispatch_async(v37, block);

        goto LABEL_36;
      }
    }

    v35 = v79;
    v16 = v81;
    if ([(HMDAccessorySettingsController *)self isProxy])
    {
      if (v76 != 6)
      {
        v62 = [(HMDAccessorySettingsController *)self messageHandler];
        v63 = [(HMDAccessorySettingsController *)self delegate];
        v64 = [v18 identifier];
        [v63 remoteMessageDestinationForAccessorySettingsController:self target:v64];
        v65 = v77 = v29;
        v82[0] = MEMORY[0x277D85DD0];
        v82[1] = 3221225472;
        v82[2] = __144__HMDAccessorySettingsController_onMessageReplaceConstraintsWithAdditions_constraintIdsToRemove_keyPath_senderProductClass_isRemote_completion___block_invoke_148;
        v82[3] = &unk_2786862E8;
        v82[4] = self;
        v83 = v79;
        v84 = v19;
        v85 = v18;
        v86 = v81;
        v16 = v81;
        [v62 relayReplaceConstraints:v83 constraintIdsToRemove:v20 keyPath:v80 destination:v65 completion:v82];

        v20 = v77;
        goto LABEL_37;
      }

      v50 = objc_autoreleasePoolPush();
      v51 = self;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543618;
        v98 = v53;
        v99 = 2112;
        v100 = v80;
        _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_ERROR, "%{public}@Cannot relay constraint replacement(%@) to a second AudioAccessory", buf, 0x16u);

        v16 = v81;
      }

      objc_autoreleasePoolPop(v50);
      v54 = [(HMDAccessorySettingsController *)v51 factory];
      [v54 assertWithCondition:0 message:@"Cannot reforward settings constraint replacement to a second homepod"];

      v55 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:@"Cannot relay to an AudioAccessory multiple times" reason:@"Failed to handle relay." suggestion:0];
      (*(v16 + 2))(v16, v55);
      goto LABEL_35;
    }

    if (!v9 || ![v80 isEqualToString:@"root.general.profiles.managedConfigurationProfiles"])
    {
      v55 = [v19 allObjects];
      [(HMDAccessorySettingsController *)self _replaceConstraintsOnSetting:v18 additions:v79 removals:v55 completion:v81];
LABEL_35:

LABEL_36:
      v20 = v29;
LABEL_37:
      v14 = v78;
LABEL_38:

      v15 = v80;
      goto LABEL_39;
    }

    v20 = v29;
    v14 = v78;
    if ([v79 count])
    {
      v56 = objc_autoreleasePoolPush();
      v57 = self;
      v58 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
LABEL_48:

        objc_autoreleasePoolPop(v56);
        v74 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
        (*(v16 + 2))(v16, v74);

        goto LABEL_38;
      }

      v59 = HMFGetLogIdentifier();
      *buf = 138543618;
      v98 = v59;
      v99 = 2112;
      v100 = v79;
      v60 = "%{public}@Add managed configuration profile via replace constraint not supported: %@";
    }

    else
    {
      if ([v19 count] == 1)
      {
        v66 = [v19 allObjects];
        v67 = [v66 firstObject];

        v68 = objc_autoreleasePoolPush();
        v69 = self;
        v70 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          v71 = HMFGetLogIdentifier();
          *buf = 138543618;
          v98 = v71;
          v99 = 2112;
          v100 = v67;
          _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_INFO, "%{public}@Remove managed configuration profile for constraint: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v68);
        v72 = [v67 value];
        v73 = [v72 value];
        [(HMDAccessorySettingsController *)v69 _removeManagedConfigurationProfile:v73 completion:v81];

        v16 = v81;
        goto LABEL_38;
      }

      v56 = objc_autoreleasePoolPush();
      v57 = self;
      v58 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_48;
      }

      v59 = HMFGetLogIdentifier();
      *buf = 138543618;
      v98 = v59;
      v99 = 2112;
      v100 = v19;
      v60 = "%{public}@Only one profile can be removed: %@";
    }

    _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_ERROR, v60, buf, 0x16u);

    v16 = v81;
    goto LABEL_48;
  }

  v35 = v13;
  v38 = objc_autoreleasePoolPush();
  v39 = self;
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v42 = v41 = v16;
    *buf = 138543618;
    v98 = v42;
    v99 = 2112;
    v100 = v15;
    _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Setting not found for key path %@", buf, 0x16u);

    v16 = v41;
  }

  objc_autoreleasePoolPop(v38);
  v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
  (*(v16 + 2))(v16, v19);
LABEL_39:

  v61 = *MEMORY[0x277D85DE8];
}

void __144__HMDAccessorySettingsController_onMessageReplaceConstraintsWithAdditions_constraintIdsToRemove_keyPath_senderProductClass_isRemote_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ownerController];
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) allObjects];
  v5 = [*(a1 + 56) keyPath];
  v6 = *(a1 + 72);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __144__HMDAccessorySettingsController_onMessageReplaceConstraintsWithAdditions_constraintIdsToRemove_keyPath_senderProductClass_isRemote_completion___block_invoke_2;
  v7[3] = &unk_278689358;
  v7[4] = *(a1 + 32);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  [v2 _replaceConstraintsOnMessageToChildWithAdditions:v3 removedChildConstraints:v4 settingKeyPath:v5 senderProductClass:v6 completion:v7];
}

void __144__HMDAccessorySettingsController_onMessageReplaceConstraintsWithAdditions_constraintIdsToRemove_keyPath_senderProductClass_isRemote_completion___block_invoke_148(uint64_t a1, void *a2)
{
  v6 = a2;
  if (!v6)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) allObjects];
    [v3 _cacheConstraintAdditions:v4 removals:v5 setting:*(a1 + 56)];
  }

  (*(*(a1 + 64) + 16))();
}

void __144__HMDAccessorySettingsController_onMessageReplaceConstraintsWithAdditions_constraintIdsToRemove_keyPath_senderProductClass_isRemote_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v12 = 138543618;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Got response from owner failing current %@.", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *(a1 + 48);
  v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
  (*(v9 + 16))(v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_cacheConstraintAdditions:(id)a3 removals:(id)a4 setting:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = HMFGetLogIdentifier();
    v16 = 138544130;
    v17 = v14;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@%@ caching additions %@, removals %@", &v16, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  [v10 addConstraintsInMemory:v8];
  [v10 removeConstraintsInMemory:v9];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)onMessageUpdateConstraints:(id)a3 keyPath:(id)a4 completion:(id)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDAccessorySettingsController *)self settingForKeyPath:v9];
  v12 = v11;
  if (!v11)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v55 = v23;
      v56 = 2112;
      v57 = v9;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Setting not found for key path %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    goto LABEL_9;
  }

  v13 = [v11 keyPath];
  v14 = [v13 isEqualToString:@"root.mobileTimer.alarms"];

  if (v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v55 = v18;
      v56 = 2112;
      v57 = v12;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Cannot update constraints on atomic setting %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
LABEL_9:
    v24 = v19;
    v10[2](v10, v19);
    goto LABEL_31;
  }

  v24 = [(HMDAccessorySettingsController *)self ownerController];
  if (v24)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v55 = v28;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Ignoring owner controller for updating constraint.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
  }

  if ([(HMDAccessorySettingsController *)self isProxy])
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v55 = v32;
      _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Only the setting owner is allowed to remove constraints.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
    v10[2](v10, v33);
  }

  else
  {
    v33 = [v12 modelsForConstraintsUpdate:v8];
    if ([v33 count])
    {
      v34 = objc_autoreleasePoolPush();
      v35 = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543362;
        v55 = v37;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_INFO, "%{public}@Updating constraints", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v34);
      v38 = [(HMDAccessorySettingsController *)v35 dataSource];
      v39 = [v38 backingStore];
      v40 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
      v41 = [v39 transaction:@"Update Constraints" options:v40];

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v33 = v33;
      v42 = [v33 countByEnumeratingWithState:&v49 objects:v53 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v50;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v50 != v44)
            {
              objc_enumerationMutation(v33);
            }

            [v41 add:*(*(&v49 + 1) + 8 * i)];
          }

          v43 = [v33 countByEnumeratingWithState:&v49 objects:v53 count:16];
        }

        while (v43);
      }

      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = __80__HMDAccessorySettingsController_onMessageUpdateConstraints_keyPath_completion___block_invoke;
      v47[3] = &unk_278688DD0;
      v48 = v10;
      [v41 run:v47];
    }

    else
    {
      v10[2](v10, 0);
    }
  }

LABEL_31:
  v46 = *MEMORY[0x277D85DE8];
}

- (void)onMessageRemoveConstraint:(id)a3 keyPath:(id)a4 completion:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
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
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v34 = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Received remove constraint request %@ for setting %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v34 = __Block_byref_object_copy__229298;
  v35 = __Block_byref_object_dispose__229299;
  v36 = objc_alloc_init(HMDAccessorySettingConstraintModifyOperation);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__HMDAccessorySettingsController_onMessageRemoveConstraint_keyPath_completion___block_invoke;
  aBlock[3] = &unk_2786823D8;
  v15 = v10;
  v31 = v15;
  v32 = buf;
  v16 = _Block_copy(aBlock);
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __79__HMDAccessorySettingsController_onMessageRemoveConstraint_keyPath_completion___block_invoke_2;
  v25 = &unk_278689AB8;
  v26 = v12;
  v17 = v9;
  v27 = v17;
  v18 = v8;
  v28 = v18;
  v19 = v16;
  v29 = v19;
  [*(*&buf[8] + 40) setExecutionBlock:&v22];
  v20 = [(HMDAccessorySettingsController *)v12 constraintModifyOperationQueue:v22];
  [v20 addOperation:*(*&buf[8] + 40)];

  _Block_object_dispose(buf, 8);
  v21 = *MEMORY[0x277D85DE8];
}

void __79__HMDAccessorySettingsController_onMessageRemoveConstraint_keyPath_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  [*(*(*(a1 + 40) + 8) + 40) finish];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __79__HMDAccessorySettingsController_onMessageRemoveConstraint_keyPath_completion___block_invoke_2(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) settingForKeyPath:*(a1 + 40)];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 48);
    *buf = 138543874;
    v48 = v6;
    v49 = 2112;
    v50 = v7;
    v51 = 2112;
    v52 = v2;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Executing remove constraint request %@ for setting %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  if (!v2)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = *(a1 + 40);
      *buf = 138543618;
      v48 = v19;
      v49 = 2112;
      v50 = v20;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Setting not found for key path %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v14 = *(a1 + 56);
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    goto LABEL_11;
  }

  v8 = [v2 keyPath];
  v9 = [v8 isEqualToString:@"root.mobileTimer.alarms"];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v48 = v13;
      v49 = 2112;
      v50 = v2;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot remove constraint on atomic setting %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = *(a1 + 56);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
LABEL_11:
    v21 = v15;
    (*(v14 + 16))(v14, v15);
    goto LABEL_26;
  }

  v21 = [*(a1 + 32) ownerController];
  if (v21)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v48 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Ignoring owner controller for removing constraint.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
  }

  if ([*(a1 + 32) isProxy])
  {
    v26 = objc_autoreleasePoolPush();
    v27 = *(a1 + 32);
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v48 = v29;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Only the setting owner is allowed to remove constraints.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v30 = *(a1 + 56);
    v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
    (*(v30 + 16))(v30, v31);
  }

  else
  {
    if (![v2 canRemoveConstraint:*(a1 + 48)])
    {
      (*(*(a1 + 56) + 16))(*(a1 + 56), 0);
      goto LABEL_26;
    }

    v32 = objc_autoreleasePoolPush();
    v33 = *(a1 + 32);
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      v36 = *(a1 + 48);
      *buf = 138543874;
      v48 = v35;
      v49 = 2112;
      v50 = v36;
      v51 = 2112;
      v52 = v2;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Removing constraint %@ from setting %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v32);
    v37 = [HMDAccessorySettingConstraintModel alloc];
    v38 = [*(a1 + 48) identifier];
    v39 = [v2 identifier];
    v31 = [(HMDBackingStoreModelObject *)v37 initWithObjectChangeType:3 uuid:v38 parentUUID:v39];

    v40 = [*(a1 + 32) dataSource];
    v41 = [v40 backingStore];
    v42 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
    v43 = [v41 transaction:@"Remove Constraint" options:v42];

    [v43 add:v31];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __79__HMDAccessorySettingsController_onMessageRemoveConstraint_keyPath_completion___block_invoke_135;
    v45[3] = &unk_278688DD0;
    v46 = *(a1 + 56);
    [v43 run:v45];
  }

LABEL_26:
  v44 = *MEMORY[0x277D85DE8];
}

- (void)onMessageAddConstraint:(id)a3 keyPath:(id)a4 completion:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
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
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v34 = v9;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Received add constraint request %@ for setting %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v34 = __Block_byref_object_copy__229298;
  v35 = __Block_byref_object_dispose__229299;
  v36 = objc_alloc_init(HMDAccessorySettingConstraintModifyOperation);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __76__HMDAccessorySettingsController_onMessageAddConstraint_keyPath_completion___block_invoke;
  aBlock[3] = &unk_2786823D8;
  v15 = v10;
  v31 = v15;
  v32 = buf;
  v16 = _Block_copy(aBlock);
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __76__HMDAccessorySettingsController_onMessageAddConstraint_keyPath_completion___block_invoke_2;
  v25 = &unk_278689AB8;
  v26 = v12;
  v17 = v9;
  v27 = v17;
  v18 = v8;
  v28 = v18;
  v19 = v16;
  v29 = v19;
  [*(*&buf[8] + 40) setExecutionBlock:&v22];
  v20 = [(HMDAccessorySettingsController *)v12 constraintModifyOperationQueue:v22];
  [v20 addOperation:*(*&buf[8] + 40)];

  _Block_object_dispose(buf, 8);
  v21 = *MEMORY[0x277D85DE8];
}

void __76__HMDAccessorySettingsController_onMessageAddConstraint_keyPath_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  [*(*(*(a1 + 40) + 8) + 40) finish];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __76__HMDAccessorySettingsController_onMessageAddConstraint_keyPath_completion___block_invoke_2(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) settingForKeyPath:*(a1 + 40)];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 48);
    *buf = 138543874;
    v54 = v6;
    v55 = 2112;
    v56 = v7;
    v57 = 2112;
    v58 = v2;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Executing add constraint request %@ for setting %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  if (!v2)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = *(a1 + 40);
      *buf = 138543618;
      v54 = v19;
      v55 = 2112;
      v56 = v20;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Setting not found for key path %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v14 = *(a1 + 56);
    v15 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    goto LABEL_11;
  }

  v8 = [v2 keyPath];
  v9 = [v8 isEqualToString:@"root.mobileTimer.alarms"];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v54 = v13;
      v55 = 2112;
      v56 = v2;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Cannot add constraint on atomic setting %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = *(a1 + 56);
    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
LABEL_11:
    v21 = v15;
    (*(v14 + 16))(v14, v15);
    goto LABEL_28;
  }

  v21 = [*(a1 + 32) ownerController];
  if (v21)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = *(a1 + 32);
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v25;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Ignoring owner controller for adding constraint.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
  }

  if ([*(a1 + 32) isProxy])
  {
    v26 = objc_autoreleasePoolPush();
    v27 = *(a1 + 32);
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v29;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Only the setting owner is allowed to add constraints.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v30 = *(a1 + 56);
    v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
    (*(v30 + 16))(v30, v31);
  }

  else
  {
    v32 = *(a1 + 48);
    v52 = 0;
    v33 = [v2 canAddConstraint:v32 error:&v52];
    v31 = v52;
    v34 = objc_autoreleasePoolPush();
    v35 = *(a1 + 32);
    v36 = HMFGetOSLogHandle();
    v37 = v36;
    if (v33)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v38 = HMFGetLogIdentifier();
        v39 = *(a1 + 48);
        *buf = 138543874;
        v54 = v38;
        v55 = 2112;
        v56 = v39;
        v57 = 2112;
        v58 = v2;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Adding constraint %@ on setting %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v34);
      v40 = *(a1 + 48);
      v41 = [v2 identifier];
      v42 = [v40 modelWithParentIdentifier:v41];

      [v42 setObjectChangeType:1];
      v43 = [*(a1 + 32) dataSource];
      v44 = [v43 backingStore];
      v45 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
      v46 = [v44 transaction:@"Add Constraint" options:v45];

      [v46 add:v42];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __76__HMDAccessorySettingsController_onMessageAddConstraint_keyPath_completion___block_invoke_130;
      v50[3] = &unk_278688DD0;
      v51 = *(a1 + 56);
      [v46 run:v50];
    }

    else
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v47 = HMFGetLogIdentifier();
        v48 = *(a1 + 48);
        *buf = 138544130;
        v54 = v47;
        v55 = 2112;
        v56 = v48;
        v57 = 2112;
        v58 = v2;
        v59 = 2112;
        v60 = v31;
        _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Constraint %@ cannot be added to setting %@. error: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v34);
      (*(*(a1 + 56) + 16))(*(a1 + 56), v31);
    }
  }

LABEL_28:
  v49 = *MEMORY[0x277D85DE8];
}

- (void)_runUpdateTransactionWithValue:(id)a3 setting:(id)a4 completion:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v37 = a5;
  v10 = [(HMDAccessorySettingsController *)self delegate];
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v9 value];
    *buf = 138544130;
    v43 = v14;
    v44 = 2112;
    v45 = v9;
    v46 = 2112;
    v47 = v15;
    v48 = 2112;
    v49 = v8;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating %@ value from %@ to %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v11);
  v16 = [v10 isMultiUserEnabledForAccessorySettingsController:v12];
  v17 = [v10 supportedMultiUserLanguageCodesForAccessorySettingsController:v12];
  LODWORD(v16) = [v9 shouldTurnOffPersonalRequestsOnLanguageChangeTo:v8 supportedMultiUserLanguageCodes:v17 isMultiUserEnabled:v16];

  if (v16)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v12;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v43 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Will remove owner from access control on language change.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [v10 assistantAccessControlModelWithRemovedAccessoriesForAccessorySettingsController:v19];
  }

  else
  {
    v22 = 0;
  }

  v23 = [HMDAccessorySettingModel alloc];
  v24 = [v9 identifier];
  v25 = [v9 parentIdentifier];
  v26 = [(HMDBackingStoreModelObject *)v23 initWithObjectChangeType:2 uuid:v24 parentUUID:v25];

  v27 = encodeRootObject();
  [(HMDAccessorySettingModel *)v26 setValue:v27];

  v28 = [v9 configurationVersion] + 1;
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28];
  [(HMDAccessorySettingModel *)v26 setConfigurationVersion:v29];

  v30 = [(HMDAccessorySettingsController *)v12 dataSource];
  v31 = [v30 backingStore];
  v32 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v33 = [v31 transaction:@"Update Setting Value" options:v32];

  [v33 add:v26];
  if (v22)
  {
    [v33 add:v22];
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __84__HMDAccessorySettingsController__runUpdateTransactionWithValue_setting_completion___block_invoke;
  v38[3] = &unk_2786823B0;
  v39 = v8;
  v40 = v37;
  v41 = v28;
  v34 = v8;
  v35 = v37;
  [v33 run:v38];

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_updateValue:(id)a3 forSetting:(id)a4 senderVersion:(id)a5 senderProductClass:(int64_t)a6 completion:(id)a7
{
  v76 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(HMDAccessorySettingsController *)self workQueue];
  dispatch_assert_queue_V2(v16);

  v17 = [(HMDAccessorySettingsController *)self ownerController];
  if (!v17 || ([v13 keyPath], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "settingForKeyPath:", v18), v19 = objc_claimAutoreleasedReturnValue(), v19, v18, !v19))
  {
    v25 = [(HMDAccessorySettingsController *)self delegate];
    if ([(HMDAccessorySettingsController *)self isProxy])
    {
      if (a6 == 6)
      {
        v26 = objc_autoreleasePoolPush();
        v27 = self;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543618;
          v71 = v29;
          v72 = 2112;
          v73 = v13;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Cannot relay update value on setting(%@) to a second AudioAccessory", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
        v30 = [(HMDAccessorySettingsController *)v27 factory];
        [v30 assertWithCondition:0 message:@"Cannot reforward settings update value to a second homepod"];

        v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:@"Cannot relay to an AudioAccessory multiple times" reason:@"Failed to handle relay." suggestion:0];
        (*(v15 + 2))(v15, 0, 0, v31);
        goto LABEL_19;
      }

      v54 = v14;
      v40 = [v13 identifier];
      v31 = [v25 remoteMessageDestinationForAccessorySettingsController:self target:v40];

      v41 = objc_autoreleasePoolPush();
      v42 = self;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138543618;
        v71 = v44;
        v72 = 2112;
        v73 = v31;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Forwarding update value message to owner device %@.", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v41);
      v45 = [(HMDAccessorySettingsController *)v42 messageHandler];
      v46 = [v13 keyPath];
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 3221225472;
      v59[2] = __102__HMDAccessorySettingsController__updateValue_forSetting_senderVersion_senderProductClass_completion___block_invoke_117;
      v59[3] = &unk_278682388;
      v62 = v15;
      v60 = v13;
      v61 = v42;
      [v45 relayUpdateValue:v12 keyPath:v46 destination:v31 completion:v59];

      v39 = v62;
    }

    else
    {
      v32 = [(HMDAccessorySettingsController *)self legacySettingsAdaptor];
      if (!v32)
      {
        v48 = v14;
        [v13 value];
        v50 = v49 = v12;
        v51 = HMFEqualObjects();

        if (v51)
        {
          (*(v15 + 2))(v15, v49, [v13 configurationVersion], 0);
          v31 = 0;
          v12 = v49;
          v14 = v48;
        }

        else
        {
          v14 = v48;
          if ([v13 shouldBlockSettingUpdateFromVersion:v48 isMultiUserEnabled:{objc_msgSend(v25, "isMultiUserEnabledForAccessorySettingsController:", self)}])
          {
            v52 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
            (*(v15 + 2))(v15, 0, 0, v52);

            v31 = 0;
            v12 = v49;
          }

          else
          {
            v12 = v49;
            [(HMDAccessorySettingsController *)self _runUpdateTransactionWithValue:v49 setting:v13 completion:v15];
            v31 = 0;
          }
        }

        goto LABEL_19;
      }

      v31 = v32;
      v53 = v12;
      v54 = v14;
      v33 = objc_autoreleasePoolPush();
      v34 = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        v36 = HMFGetLogIdentifier();
        v37 = [v13 keyPath];
        *buf = 138543618;
        v71 = v36;
        v72 = 2114;
        v73 = v37;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Delegating update for %{public}@ to adaptor", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v38 = [v13 keyPath];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __102__HMDAccessorySettingsController__updateValue_forSetting_senderVersion_senderProductClass_completion___block_invoke_122;
      v55[3] = &unk_27868A528;
      v55[4] = v34;
      v56 = v13;
      v57 = v53;
      v58 = v15;
      [v31 updateSettingWithKeyPath:v38 settingValue:v57 completion:v55];

      v12 = v53;
      v39 = v56;
    }

    v14 = v54;
LABEL_19:

    goto LABEL_20;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543874;
    v71 = v23;
    v72 = 2112;
    v73 = v13;
    v74 = 2112;
    v75 = v17;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Forwarding update value for %@ to owner controller. %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v20);
  v24 = [v17 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__HMDAccessorySettingsController__updateValue_forSetting_senderVersion_senderProductClass_completion___block_invoke;
  block[3] = &unk_278682360;
  v64 = v17;
  v65 = v12;
  v66 = v13;
  v67 = v14;
  v69 = a6;
  v68 = v15;
  dispatch_async(v24, block);

  v25 = v64;
LABEL_20:

  v47 = *MEMORY[0x277D85DE8];
}

void __102__HMDAccessorySettingsController__updateValue_forSetting_senderVersion_senderProductClass_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) keyPath];
  [v2 _onMessageUpdateValue:v3 settingKeyPath:v4 senderVersion:*(a1 + 56) senderProductClass:*(a1 + 72) completion:*(a1 + 64)];
}

void __102__HMDAccessorySettingsController__updateValue_forSetting_senderVersion_senderProductClass_completion___block_invoke_117(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    v9 = *(*(a1 + 48) + 16);
  }

  else
  {
    if ([*(a1 + 32) configurationVersion] >= a3)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 40);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        v22 = [*(a1 + 32) configurationVersion];
        v27 = 138543874;
        v28 = v21;
        v29 = 2048;
        v30 = a3;
        v31 = 2048;
        v32 = v22;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Not changing locally as the new config version isnt higher %tu (current %tu)", &v27, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
    }

    else
    {
      v10 = [*(a1 + 32) value];
      v11 = HMFEqualObjects();

      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 40);
      v14 = HMFGetOSLogHandle();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (v11)
      {
        if (v15)
        {
          v16 = HMFGetLogIdentifier();
          v17 = [*(a1 + 32) value];
          v27 = 138543618;
          v28 = v16;
          v29 = 2112;
          v30 = v17;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Not updating the value from %@ as the new value is same", &v27, 0x16u);
        }

        objc_autoreleasePoolPop(v12);
      }

      else
      {
        if (v15)
        {
          v23 = HMFGetLogIdentifier();
          v24 = [*(a1 + 32) value];
          v27 = 138543874;
          v28 = v23;
          v29 = 2112;
          v30 = v24;
          v31 = 2112;
          v32 = v7;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Updating the value locally from %@ to %@", &v27, 0x20u);
        }

        objc_autoreleasePoolPop(v12);
        [*(a1 + 32) setValue:v7];
      }

      v25 = [*(a1 + 40) delegate];
      [v25 accessorySettingsController:*(a1 + 40) saveWithReason:@"Update value from remote"];
    }

    v9 = *(*(a1 + 48) + 16);
  }

  v9();

  v26 = *MEMORY[0x277D85DE8];
}

void __102__HMDAccessorySettingsController__updateValue_forSetting_senderVersion_senderProductClass_completion___block_invoke_122(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) keyPath];
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Adaptor update result keyPath:%{public}@ error: %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  if (v3)
  {
    v9 = *(a1 + 56);
    v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (*(v9 + 16))(v9, 0, 0, v10);
  }

  else
  {
    [*(a1 + 32) _runUpdateTransactionWithValue:*(a1 + 48) setting:*(a1 + 40) completion:*(a1 + 56)];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_onMessageUpdateValue:(id)a3 settingKeyPath:(id)a4 senderVersion:(id)a5 senderProductClass:(int64_t)a6 completion:(id)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(HMDAccessorySettingsController *)self workQueue];
  dispatch_assert_queue_V2(v16);

  v17 = [(HMDAccessorySettingsController *)self settingForKeyPath:v13];
  if (v17)
  {
    [(HMDAccessorySettingsController *)self _updateValue:v12 forSetting:v17 senderVersion:v14 senderProductClass:a6 completion:v15];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v21;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Setting not found for keyPath %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (*(v15 + 2))(v15, 0, 0, v22);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)onMessageUpdateValue:(id)a3 settingKeyPath:(id)a4 senderVersion:(id)a5 senderProductClass:(int64_t)a6 completion:(id)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(HMDAccessorySettingsController *)self workQueue];
  dispatch_assert_queue_V2(v16);

  v17 = [(HMDAccessorySettingsController *)self settingForKeyPath:v13];
  if (v17)
  {
    [(HMDAccessorySettingsController *)self _updateValue:v12 forSetting:v17 senderVersion:v14 senderProductClass:a6 completion:v15];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v21;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Setting not found for key path %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (*(v15 + 2))(v15, 0, 0, v22);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)onMessageUpdateValue:(id)a3 settingIdentifier:(id)a4 senderVersion:(id)a5 senderProductClass:(int64_t)a6 completion:(id)a7
{
  v29 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = [(HMDAccessorySettingsController *)self workQueue];
  dispatch_assert_queue_V2(v16);

  v17 = [(HMDAccessorySettingsController *)self settingsMap];
  v18 = [v17 objectForKey:v13];

  if (v18)
  {
    [(HMDAccessorySettingsController *)self _updateValue:v12 forSetting:v18 senderVersion:v14 senderProductClass:a6 completion:v15];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v22;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Setting not found for identifier %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:2];
    (*(v15 + 2))(v15, 0, 0, v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (id)groupForKeyPath:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySettingsController *)self groupsMap];
  v6 = [v5 copy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = [v7 objectForKey:{*(*(&v17 + 1) + 8 * v11), v17}];
      v13 = [v12 keyPath];
      v14 = [v13 isEqualToString:v4];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)settingForKeyPath:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySettingsController *)self settingsMap];
  v6 = [v5 copy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = [v7 objectForKey:{*(*(&v17 + 1) + 8 * v11), v17}];
      v13 = [v12 keyPath];
      v14 = [v13 isEqualToString:v4];

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)haveGroupWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessorySettingsController *)self groupsMap];
  v6 = [v5 copy];
  v7 = [v6 objectForKey:v4];

  return v7 != 0;
}

- (void)owner:(id)a3 didUpdateSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessorySettingsController *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HMDAccessorySettingsController_owner_didUpdateSettings___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __58__HMDAccessorySettingsController_owner_didUpdateSettings___block_invoke(id *a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = a1[5];
    *buf = 138543618;
    v52 = v5;
    v53 = 2112;
    v54 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Owner %@ sent fix settings request", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [a1[4] dataSource];
  v8 = [v7 backingStore];
  v9 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v44 = [v8 transaction:@"fixupAccessorySetting" options:v9];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = a1[6];
  v46 = [v10 countByEnumeratingWithState:&v47 objects:v61 count:16];
  if (v46)
  {
    v12 = 0;
    v45 = *v48;
    *&v11 = 138544130;
    v41 = v11;
    v43 = v10;
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v48 != v45)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v47 + 1) + 8 * i);
        v15 = [a1[4] settingForKeyPath:{v14, v41}];
        if (v15)
        {
          v16 = [a1[6] objectForKeyedSubscript:v14];
          v17 = [MEMORY[0x277CBEB68] null];
          v18 = [v16 isEqual:v17];

          if (v18)
          {

            v16 = 0;
          }

          v19 = [v15 value];
          v20 = HMFEqualObjects();

          if ((v20 & 1) == 0)
          {
            v21 = objc_autoreleasePoolPush();
            v22 = a1[4];
            v23 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v24 = v42 = v21;
              v25 = a1[5];
              v26 = [v15 value];
              *buf = 138544386;
              v52 = v24;
              v53 = 2112;
              v54 = v15;
              v55 = 2112;
              v56 = v25;
              v57 = 2112;
              v58 = v26;
              v59 = 2112;
              v60 = v16;
              _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Comparing between %@ and owner %@, Values are not matching: %@, %@", buf, 0x34u);

              v21 = v42;
            }

            objc_autoreleasePoolPop(v21);
            v27 = [a1[4] factory];
            v28 = [v15 identifier];
            v29 = [v15 parentIdentifier];
            v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "configurationVersion") + 1}];
            v31 = [v27 settingModelForUpdateWithIdentifier:v28 parent:v29 value:v16 configNumber:v30];

            [v44 add:v31];
            v12 = 1;
            v10 = v43;
          }

          if ([v15 isCollectionType])
          {
            v32 = [a1[5] settingForKeyPath:v14];
            v33 = [v32 constraints];

            v34 = [HMDAccessorySettingTransform modelsForChangedConstraints:v33 fromSetting:v15];
            if ([v34 count])
            {
              v35 = objc_autoreleasePoolPush();
              v36 = a1[4];
              v37 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
              {
                v38 = HMFGetLogIdentifier();
                v39 = a1[5];
                *buf = v41;
                v52 = v38;
                v53 = 2112;
                v54 = v34;
                v55 = 2112;
                v56 = v15;
                v57 = 2112;
                v58 = v39;
                _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Added constraints %@ in fixup %@ and owner %@.", buf, 0x2Au);
              }

              objc_autoreleasePoolPop(v35);
              [v44 addObjects:v34];
              v12 = 1;
              v10 = v43;
            }
          }
        }
      }

      v46 = [v10 countByEnumeratingWithState:&v47 objects:v61 count:16];
    }

    while (v46);

    if (v12)
    {
      [v44 run];
    }
  }

  else
  {
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)scheduleDependantFixup
{
  if ([(HMDAccessorySettingsController *)self isSettingOwner])
  {
    if ([(HMDAccessorySettingsController *)self hasDependants])
    {
      v3 = [(HMDAccessorySettingsController *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__HMDAccessorySettingsController_scheduleDependantFixup__block_invoke;
      block[3] = &unk_27868A728;
      block[4] = self;
      dispatch_async(v3, block);
    }
  }
}

void __56__HMDAccessorySettingsController_scheduleDependantFixup__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) dependantControllers];
    v18 = 138543618;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received request to fix settings for dependents: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) fixupSettingsTimer];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@There is already an fix setting request in queue, kicking it again", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [*(a1 + 32) fixupSettingsTimer];
    [v12 kick];
  }

  else
  {
    v13 = [*(a1 + 32) factory];
    v14 = [v13 timerWithReason:2 interval:3.0];
    [*(a1 + 32) setFixupSettingsTimer:v14];

    v15 = *(a1 + 32);
    v16 = [v15 fixupSettingsTimer];
    [v16 setDelegate:v15];

    v12 = [*(a1 + 32) fixupSettingsTimer];
    [v12 resume];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_performDependantFixup
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessorySettingsController *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(HMDAccessorySettingsController *)self rootGroup];
  v5 = [HMDSettingAlgorithm allSettingsFromRootGroup:v4];

  v6 = [MEMORY[0x277CBEB38] dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [v12 value];
        if (v13)
        {
          [v12 value];
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v14 = ;
        v15 = [v12 keyPath];
        [v6 setObject:v14 forKeyedSubscript:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v9);
  }

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v36 = v19;
    v37 = 2112;
    v38 = v6;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Performing dependent fixup with %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v20 = [(HMDAccessorySettingsController *)v17 dependantControllers];
  v21 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v27;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v27 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v26 + 1) + 8 * j) owner:v17 didUpdateSettings:v6];
      }

      v22 = [v20 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v22);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_removeDependant:(id)a3
{
  v6 = a3;
  v4 = [(HMDAccessorySettingsController *)self workQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDAccessorySettingsController *)self dependantControllers];
  [v5 removeObject:v6];

  [v6 didBecomeIndependantOwner];
}

- (id)mergeWithSettingsMetadata:(id)a3
{
  v4 = [a3 rootGroup];
  v5 = [(HMDAccessorySettingsController *)self rootGroup];
  v6 = [HMDAccessorySettingTransform mergeWithGroupMetadata:v4 group:v5];

  return v6;
}

- (void)_migrateSettingsWithCompletion:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySettingsController *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Check if migration is required.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [(HMDAccessorySettingsController *)v7 dataSource];
  v11 = [v10 modelsToMigrateSettingsForController:v7];
  v12 = v11;
  if (v11 && [v11 count])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v7;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v16;
      v35 = 2112;
      v36 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Have settings to migrate. %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [v10 backingStore];
    v18 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
    v19 = [v17 transaction:@"updateRootGroup" options:v18];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v20 = v12;
    v21 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      do
      {
        v24 = 0;
        do
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [v19 add:*(*(&v28 + 1) + 8 * v24++)];
        }

        while (v22 != v24);
        v22 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v22);
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __65__HMDAccessorySettingsController__migrateSettingsWithCompletion___block_invoke;
    v26[3] = &unk_278689A68;
    v26[4] = v14;
    v27 = v4;
    [v19 run:v26];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __65__HMDAccessorySettingsController__migrateSettingsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Finished migrating settings.", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, 1);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_createSettings
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessorySettingsController *)self workQueue];
  dispatch_assert_queue_V2(v3);

  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v40 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Is setting migration owner will create settings.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [(HMDAccessorySettingsController *)v5 dataSource];
  v9 = [(HMDAccessorySettingsController *)v5 parentUUID];
  v10 = [v8 modelsToMakeSettingsForController:v5 parentUUID:v9];

  if (v10)
  {
    [(HMDAccessorySettingsController *)v5 setHasCreatedUnprocessedRootGroup:1];
    v11 = [v8 backingStore];
    v12 = MEMORY[0x277CCACA8];
    v13 = [(HMDAccessorySettingsController *)v5 parentUUID];
    v14 = [v12 stringWithFormat:@"addRootSettings-%@", v13];
    v15 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
    v16 = [v11 transaction:v14 options:v15];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v17 = v10;
    v18 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v35;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v35 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [v16 add:*(*(&v34 + 1) + 8 * i) withMessage:0];
        }

        v19 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v19);
    }

    logger = v5->_logger;
    if (os_signpost_enabled(logger))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_229538000, logger, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "SettingsCreate", "", buf, 2u);
    }

    v23 = [v8 currentAccessorySetupMetricDispatcher];
    [v23 markSetupBeginStage:5 error:0];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __49__HMDAccessorySettingsController__createSettings__block_invoke;
    v31[3] = &unk_278682338;
    v31[4] = v5;
    v24 = v8;
    v32 = v24;
    v33 = 0xEEEEB0B5B2B2EEEELL;
    [v16 run:v31];
    v25 = [v24 setupActivity];
    [v25 markWithReason:@"HMDAccessorySettingsController._createSettings.complete"];
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = v5;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v29;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Did not find any models to create settings.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __49__HMDAccessorySettingsController__createSettings__block_invoke(uint64_t a1, void *a2)
{
  v39[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = HMFGetLogIdentifier();
    v34 = 138543362;
    v35 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Finished creating settings.", &v34, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 40) setupActivity];
  v38[0] = @"error.code";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "code")}];
  v38[1] = @"domain";
  v39[0] = v9;
  v10 = [v3 domain];
  v11 = v10;
  v12 = &stru_283CF9D50;
  if (v10)
  {
    v12 = v10;
  }

  v39[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];

  v14 = [*(a1 + 40) setupActivity];
  [v14 end];

  v15 = *(*(a1 + 32) + 16);
  v16 = v15;
  v17 = *(a1 + 48);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(v34) = 0;
    _os_signpost_emit_with_name_impl(&dword_229538000, v16, OS_SIGNPOST_INTERVAL_END, v17, "SettingsCreate", "", &v34, 2u);
  }

  v18 = objc_autoreleasePoolPush();
  v19 = *(a1 + 32);
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    [*(a1 + 40) setupStartTimestamp];
    v34 = 138543618;
    v35 = v21;
    v36 = 2048;
    v37 = v22;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Setup start timestamp %f", &v34, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  v23 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  [*(a1 + 40) setupStartTimestamp];
  v25 = v24;
  v26 = objc_autoreleasePoolPush();
  v27 = *(a1 + 32);
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = (v23 / 0x3B9ACA00) - v25;
    if (v29 >= 0.0)
    {
      v30 = (v23 / 0x3B9ACA00) - v25;
    }

    else
    {
      v30 = -v29;
    }

    v31 = HMFGetLogIdentifier();
    v34 = 138543618;
    v35 = v31;
    v36 = 2048;
    v37 = v30;
    _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Settings creation latency %f", &v34, 0x16u);
  }

  objc_autoreleasePoolPop(v26);
  [*(a1 + 40) setSetupStartTimestamp:0.0];
  v32 = [*(a1 + 40) currentAccessorySetupMetricDispatcher];
  [v32 markSetupEndStage:5 error:v3];

  v33 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessorySettingsController *)self workQueue];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __47__HMDAccessorySettingsController_timerDidFire___block_invoke;
  v11 = &unk_27868A750;
  v12 = self;
  v6 = v4;
  v13 = v6;
  dispatch_async(v5, &v8);

  v7 = [(HMDAccessorySettingsController *)self languageChangeDebounceTimer:v8];

  if (v7 == v6)
  {
    [(HMDAccessorySettingsController *)self handleLanguageChangeTimerFired];
  }
}

void __47__HMDAccessorySettingsController_timerDidFire___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) fixupSettingsTimer];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Fix settings timer has fired, issuing fix settings", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) _performDependantFixup];
    [*(a1 + 32) setFixupSettingsTimer:0];
  }

  else
  {
    v4 = [*(a1 + 32) auditSettingsTimer];
    v5 = *(a1 + 40);

    if (v4 == v5)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 32);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v15 = 138543362;
        v16 = v9;
        _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Audit settings timer has fired, issuing audit for settings", &v15, 0xCu);
      }

      objc_autoreleasePoolPop(v6);
      [*(a1 + 32) _performSettingsAudit];
      [*(a1 + 32) setAuditSettingsTimer:0];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_reevaluateDependantSettings
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessorySettingsController *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if ([(HMDAccessorySettingsController *)self isSettingOwner])
  {
    [(HMDAccessorySettingsController *)self scheduleDependantFixup];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(HMDAccessorySettingsController *)self dependantControllers];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = [(HMDAccessorySettingsController *)self _keyPathsForSettings];
        [v9 didChangeDependantSettings:self ownerSettingsKeyPaths:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_performSettingsAudit
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessorySettingsController *)self workQueue];
  dispatch_assert_queue_V2(v3);

  if (![(HMDAccessorySettingsController *)self hasDependants])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v7;
      v8 = "%{public}@No longer setting owner or don't have dependents not auditing.";
      v9 = v6;
      v10 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_8;
    }

LABEL_9:

    objc_autoreleasePoolPop(v4);
LABEL_10:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  if ([(HMDAccessorySettingsController *)self isMigrationOwner])
  {
    if (![(HMDAccessorySettingsController *)self hasCreatedUnprocessedRootGroup])
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __55__HMDAccessorySettingsController__performSettingsAudit__block_invoke;
      v13[3] = &unk_278682310;
      v13[4] = self;
      [(HMDAccessorySettingsController *)self _migrateSettingsWithCompletion:v13];
      goto LABEL_10;
    }

    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v7;
      v8 = "%{public}@Not performing audit as the root group has been created but not processed yet";
      v9 = v6;
      v10 = OS_LOG_TYPE_INFO;
LABEL_8:
      _os_log_impl(&dword_229538000, v9, v10, v8, buf, 0xCu);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v12 = *MEMORY[0x277D85DE8];

  [(HMDAccessorySettingsController *)self _reevaluateDependantSettings];
}

void __55__HMDAccessorySettingsController__performSettingsAudit__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__HMDAccessorySettingsController__performSettingsAudit__block_invoke_2;
    block[3] = &unk_27868A728;
    block[4] = *(a1 + 32);
    dispatch_async(v3, block);
  }
}

- (void)scheduleAuditWithReason:(unint64_t)a3 from:(id)a4
{
  v6 = a4;
  v7 = [(HMDAccessorySettingsController *)self ownerController];
  v8 = v7;
  if (v7)
  {
    [v7 scheduleAuditWithReason:a3 from:v6];
  }

  else
  {
    v9 = [(HMDAccessorySettingsController *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__HMDAccessorySettingsController_scheduleAuditWithReason_from___block_invoke;
    block[3] = &unk_278685DF8;
    block[4] = self;
    v12 = a3;
    v11 = v6;
    dispatch_async(v9, block);
  }
}

uint64_t __63__HMDAccessorySettingsController_scheduleAuditWithReason_from___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = HMDAccessorySettingsAuditReasonAsString(*(a1 + 48));
    v7 = *(a1 + 40);
    v10 = 138543874;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Received audit with reason %@ from %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _scheduleAuditWithReason:*(a1 + 48)];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_scheduleAuditWithReason:(unint64_t)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = HMDAccessorySettingsAuditReasonAsString(a3);
    v24 = 138543618;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Received audit with reason %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  if ([(HMDAccessorySettingsController *)v6 hasCreatedUnprocessedRootGroup])
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v6;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Not scheduling audit as the root group has been created but not processed yet", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    v14 = [(HMDAccessorySettingsController *)v6 auditSettingsTimer];

    if (v14)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = v6;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@There is already an fix setting request in queue, kicking it again", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
      v19 = [(HMDAccessorySettingsController *)v16 auditSettingsTimer];
      [v19 kick];
    }

    else
    {
      v20 = [(HMDAccessorySettingsController *)v6 factory];
      v21 = [v20 timerWithReason:1 interval:15.0];
      [(HMDAccessorySettingsController *)v6 setAuditSettingsTimer:v21];

      v22 = [(HMDAccessorySettingsController *)v6 auditSettingsTimer];
      [v22 setDelegate:v6];

      v19 = [(HMDAccessorySettingsController *)v6 auditSettingsTimer];
      [v19 resume];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)settingsHierarchyDidChange
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__229298;
  v16[4] = __Block_byref_object_dispose__229299;
  v17 = 0;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__229298;
  v14[4] = __Block_byref_object_dispose__229299;
  v15 = 0;
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__229298;
  v12[4] = __Block_byref_object_dispose__229299;
  v13 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__229298;
  v10[4] = __Block_byref_object_dispose__229299;
  v11 = 0;
  os_unfair_lock_lock_with_options();
  v3 = objc_autoreleasePoolPush();
  rootGroup = self->_rootGroup;
  groupsMap = self->_groupsMap;
  settingsMap = self->_settingsMap;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__HMDAccessorySettingsController_settingsHierarchyDidChange__block_invoke;
  v9[3] = &unk_2786822C0;
  v9[4] = self;
  v9[5] = v16;
  v9[6] = v14;
  v9[7] = v12;
  v9[8] = v10;
  [HMDSettingAlgorithm findChangedSettingsWithRootGroup:rootGroup currentGroups:groupsMap currentSettings:settingsMap completion:v9];
  objc_autoreleasePoolPop(v3);
  os_unfair_lock_unlock(&self->_lock);
  v7 = [(HMDAccessorySettingsController *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__HMDAccessorySettingsController_settingsHierarchyDidChange__block_invoke_2;
  v8[3] = &unk_2786822E8;
  v8[4] = self;
  v8[5] = v16;
  v8[6] = v14;
  v8[7] = v12;
  v8[8] = v10;
  dispatch_async(v7, v8);

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v12, 8);

  _Block_object_dispose(v14, 8);
  _Block_object_dispose(v16, 8);
}

void __60__HMDAccessorySettingsController_settingsHierarchyDidChange__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v76 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v19 = [v16 countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v69;
    do
    {
      v22 = 0;
      do
      {
        if (*v69 != v21)
        {
          objc_enumerationMutation(v16);
        }

        [*(a1 + 32) _didAddSetting:*(*(&v68 + 1) + 8 * v22++)];
      }

      while (v20 != v22);
      v20 = [v16 countByEnumeratingWithState:&v68 objects:v75 count:16];
    }

    while (v20);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v23 = v18;
  v24 = [v23 countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v65;
    do
    {
      v27 = 0;
      do
      {
        if (*v65 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [*(a1 + 32) _didRemoveSetting:*(*(&v64 + 1) + 8 * v27++)];
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v64 objects:v74 count:16];
    }

    while (v25);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v28 = v15;
  v29 = [v28 countByEnumeratingWithState:&v60 objects:v73 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v61;
    do
    {
      v32 = 0;
      do
      {
        if (*v61 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [*(a1 + 32) _didAddGroup:*(*(&v60 + 1) + 8 * v32++)];
      }

      while (v30 != v32);
      v30 = [v28 countByEnumeratingWithState:&v60 objects:v73 count:16];
    }

    while (v30);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v33 = v17;
  v34 = [v33 countByEnumeratingWithState:&v56 objects:v72 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v57;
    do
    {
      v37 = 0;
      do
      {
        if (*v57 != v36)
        {
          objc_enumerationMutation(v33);
        }

        [*(a1 + 32) _didRemoveGroup:{*(*(&v56 + 1) + 8 * v37++), v56}];
      }

      while (v35 != v37);
      v35 = [v33 countByEnumeratingWithState:&v56 objects:v72 count:16];
    }

    while (v35);
  }

  v38 = *(a1 + 32);
  v39 = *(v38 + 40);
  *(v38 + 40) = v14;
  v40 = v14;

  v41 = *(a1 + 32);
  v42 = *(v41 + 32);
  *(v41 + 32) = v13;
  v43 = v13;

  v44 = *(*(a1 + 40) + 8);
  v45 = *(v44 + 40);
  *(v44 + 40) = v28;
  v46 = v28;

  v47 = *(*(a1 + 48) + 8);
  v48 = *(v47 + 40);
  *(v47 + 40) = v16;
  v49 = v16;

  v50 = *(*(a1 + 56) + 8);
  v51 = *(v50 + 40);
  *(v50 + 40) = v33;
  v52 = v33;

  v53 = *(*(a1 + 64) + 8);
  v54 = *(v53 + 40);
  *(v53 + 40) = v23;

  v55 = *MEMORY[0x277D85DE8];
}

void __60__HMDAccessorySettingsController_settingsHierarchyDidChange__block_invoke_2(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(*(*(a1 + 40) + 8) + 40);
    v7 = *(*(*(a1 + 48) + 8) + 40);
    v8 = *(*(*(a1 + 56) + 8) + 40);
    v9 = *(*(*(a1 + 64) + 8) + 40);
    *buf = 138544386;
    v34 = v5;
    v35 = 2112;
    v36 = v6;
    v37 = 2112;
    v38 = v7;
    v39 = 2112;
    v40 = v8;
    v41 = 2112;
    v42 = v9;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Added groups: %@, settings: %@. Removed groups: %@, settings: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v2);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = *(*(*(a1 + 48) + 8) + 40);
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      v14 = 0;
      do
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v28 + 1) + 8 * v14);
        v16 = [*(a1 + 32) dataSource];
        v17 = [v16 accessorySetupMetricDispatcher];

        if (v17)
        {
          if (([v17 submitted] & 1) == 0)
          {
            [v17 markFirstSettingObserved];
            v18 = [v15 keyPath];
            v19 = [v18 isEqual:@"root.siri.language"];

            if (v19)
            {
              [v17 markLanguageSettingObserved];
              [v17 submit];
            }
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v12);
  }

  v20 = objc_autoreleasePoolPush();
  v21 = *(a1 + 32);
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = HMFGetLogIdentifier();
    v24 = [*(a1 + 32) rootGroup];
    v25 = [*(a1 + 32) settingsMap];
    v26 = [*(a1 + 32) groupsMap];
    *buf = 138544130;
    v34 = v23;
    v35 = 2112;
    v36 = v24;
    v37 = 2112;
    v38 = v25;
    v39 = 2112;
    v40 = v26;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_DEBUG, "%{public}@Current root:%@, settings: %@, groups: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v20);
  v27 = *MEMORY[0x277D85DE8];
}

- (id)_keyPathsForSettings
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(HMDAccessorySettingsController *)self rootGroup];
  v3 = [HMDSettingAlgorithm allSettingsFromRootGroup:v2];

  v4 = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) keyPath];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)setRootGroup:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  rootGroup = self->_rootGroup;
  self->_rootGroup = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDAccessorySettingGroup)rootGroup
{
  os_unfair_lock_lock_with_options();
  v3 = self->_rootGroup;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSettingsMap:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  settingsMap = self->_settingsMap;
  self->_settingsMap = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSMapTable)settingsMap
{
  os_unfair_lock_lock_with_options();
  v3 = self->_settingsMap;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setGroupsMap:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  groupsMap = self->_groupsMap;
  self->_groupsMap = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSMapTable)groupsMap
{
  os_unfair_lock_lock_with_options();
  v3 = self->_groupsMap;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)hasDependants
{
  v2 = [(HMDAccessorySettingsController *)self dependantControllers];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)setHasCreatedUnprocessedRootGroup:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_hasCreatedUnprocessedRootGroup = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasCreatedUnprocessedRootGroup
{
  os_unfair_lock_lock_with_options();
  hasCreatedUnprocessedRootGroup = self->_hasCreatedUnprocessedRootGroup;
  os_unfair_lock_unlock(&self->_lock);
  return hasCreatedUnprocessedRootGroup;
}

- (void)setIsSettingOwner:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_isSettingOwner = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isSettingOwner
{
  os_unfair_lock_lock_with_options();
  isSettingOwner = self->_isSettingOwner;
  os_unfair_lock_unlock(&self->_lock);
  return isSettingOwner;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDAccessorySettingsController *)self parentUUID];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySettingsController isSettingOwner](self, "isSettingOwner")}];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDAccessorySettingsController isMigrationOwner](self, "isMigrationOwner")}];
  v7 = [v3 stringWithFormat:@"<%p HMDAccessorySettingsController %@: owner:%@, migrationOwner: %@>", self, v4, v5, v6];

  return v7;
}

- (id)logIdentifier
{
  v2 = [(HMDAccessorySettingsController *)self parentUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (BOOL)shouldEncodeForXPCTransportForSetting:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySettingsController *)self dataSource];
  v6 = [v5 home];
  if (v6)
  {
    v7 = [v4 keyPath];
    v8 = [v7 isEqualToString:@"root.locationServices.enabled"];

    if (v8)
    {
      v9 = [(HMDAccessorySettingsController *)self parentUUID];
      LOBYTE(self) = [v6 shouldEncodeLegacyLocationServiceSettingForSettingsParentUUID:v9];

      goto LABEL_14;
    }

    v13 = [v4 keyPath];
    if (([v13 isEqualToString:@"root.music.playbackInfluencesForYou"] & 1) == 0)
    {
      v14 = [v4 keyPath];
      if (![v14 isEqualToString:@"root.music.soundCheck"])
      {
        v22 = [v4 keyPath];
        v23 = [v22 isEqualToString:@"root.music.allowExplicitContent"];

        if ((v23 & 1) == 0)
        {
          LOBYTE(self) = 1;
          goto LABEL_14;
        }

        goto LABEL_11;
      }
    }

LABEL_11:
    v15 = objc_autoreleasePoolPush();
    self = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v4 keyPath];
      [v5 supportsUserMediaSettings];
      v19 = HMFBooleanToString();
      v24 = 138543874;
      v25 = v17;
      v26 = 2112;
      v27 = v18;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Filtering out keyPath = %@, filtered? = %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    LODWORD(self) = [v5 supportsUserMediaSettings] ^ 1;
    goto LABEL_14;
  }

  v10 = objc_autoreleasePoolPush();
  self = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v12;
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode xpc settings for controller due to no home for data source: %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  LOBYTE(self) = 0;
LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
  return self;
}

- (BOOL)shouldEncodeForNonAdminSharedUserForSetting:(id)a3
{
  v3 = [a3 keyPath];
  v4 = [&unk_283E75C20 containsObject:v3];

  return v4;
}

- (BOOL)shouldEncodeSetting:(id)a3 withCoder:(id)a4 forAccessorySettingGroup:(id)a5
{
  v7 = a3;
  v8 = a4;
  if ([v8 hmd_isForNonAdminSharedUser])
  {
    v9 = [(HMDAccessorySettingsController *)self shouldEncodeForNonAdminSharedUserForSetting:v7];
  }

  else
  {
    if (![v8 hmd_isForXPCTransport])
    {
      v10 = 1;
      goto LABEL_7;
    }

    v9 = [(HMDAccessorySettingsController *)self shouldEncodeForXPCTransportForSetting:v7];
  }

  v10 = v9;
LABEL_7:

  return v10;
}

- (HMDAccessorySettingsController)initWithParentUUID:(id)a3 codingKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HMDAccessorySettingGroup alloc];
  v9 = *MEMORY[0x277CCEDC0];
  v10 = [MEMORY[0x277CCAD78] UUID];
  v11 = [(HMDAccessorySettingGroup *)v8 initWithName:v9 identifier:v10 parentIdentifier:v7];

  [(HMDAccessorySettingGroup *)v11 setDataSource:self];
  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  LOWORD(v15) = 0;
  v13 = [(HMDAccessorySettingsController *)self initWithQueue:0 delegate:0 dataSource:0 parentUUID:v7 codingKey:v6 logEventSubmitter:0 settingOwner:v15 migrationOwner:0 factory:v11 rootGroup:v12 notificationCenter:?];

  return v13;
}

- (HMDAccessorySettingsController)initWithQueue:(id)a3 delegate:(id)a4 dataSource:(id)a5 parentUUID:(id)a6 codingKey:(id)a7 logEventSubmitter:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = objc_alloc_init(HMDAccessorySettingsControllerDependencyFactory);
  v21 = [MEMORY[0x277CCAB98] defaultCenter];
  LOWORD(v24) = 0;
  v22 = [(HMDAccessorySettingsController *)self initWithQueue:v19 delegate:v18 dataSource:v17 parentUUID:v16 codingKey:v15 logEventSubmitter:v14 settingOwner:v24 migrationOwner:v20 factory:0 rootGroup:v21 notificationCenter:?];

  return v22;
}

- (HMDAccessorySettingsController)initWithQueue:(id)a3 delegate:(id)a4 dataSource:(id)a5 parentUUID:(id)a6 codingKey:(id)a7 logEventSubmitter:(id)a8 settingOwner:(BOOL)a9 migrationOwner:(BOOL)a10 factory:(id)a11 rootGroup:(id)a12 notificationCenter:(id)a13
{
  v20 = a3;
  obj = a4;
  v21 = a5;
  v49 = a6;
  v48 = a7;
  v47 = a8;
  v22 = a11;
  v23 = v21;
  v46 = a13;
  v51.receiver = self;
  v51.super_class = HMDAccessorySettingsController;
  v24 = [(HMDAccessorySettingsController *)&v51 init];
  if (v24)
  {
    v25 = HMFGetOSLogHandle();
    logger = v24->_logger;
    v24->_logger = v25;

    objc_storeStrong(&v24->_workQueue, a3);
    v24->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v24->_delegate, obj);
    objc_storeWeak(&v24->_dataSource, v23);
    v27 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    groupsMap = v24->_groupsMap;
    v24->_groupsMap = v27;

    v29 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    settingsMap = v24->_settingsMap;
    v24->_settingsMap = v29;

    v31 = [MEMORY[0x277CBEB18] array];
    allChildrenIdentifiers = v24->_allChildrenIdentifiers;
    v24->_allChildrenIdentifiers = v31;

    v33 = [[HMDAccessorySettingsBackingStoreTransactionReceiver alloc] initWithDelegate:v24];
    transactionReceiver = v24->_transactionReceiver;
    v24->_transactionReceiver = v33;

    objc_storeStrong(&v24->_parentUUID, a6);
    objc_storeStrong(&v24->_codingKey, a7);
    objc_storeStrong(&v24->_logEventSubmitter, a8);
    v35 = [MEMORY[0x277CBEB58] set];
    dependantControllers = v24->_dependantControllers;
    v24->_dependantControllers = v35;

    v24->_isSettingOwner = a9;
    v24->_isMigrationOwner = a10;
    v24->_hasCreatedUnprocessedRootGroup = 0;
    v37 = [v22 createMessageHandlerWithQueue:v20 delegate:v24];
    messageHandler = v24->_messageHandler;
    v24->_messageHandler = v37;

    objc_storeStrong(&v24->_factory, a11);
    v39 = [MEMORY[0x277CBEB58] set];
    constraintItemsMarkedForRemoval = v24->_constraintItemsMarkedForRemoval;
    v24->_constraintItemsMarkedForRemoval = v39;

    v41 = objc_alloc_init(MEMORY[0x277CCABD8]);
    constraintModifyOperationQueue = v24->_constraintModifyOperationQueue;
    v24->_constraintModifyOperationQueue = v41;

    [(NSOperationQueue *)v24->_constraintModifyOperationQueue setUnderlyingQueue:v20];
    [(NSOperationQueue *)v24->_constraintModifyOperationQueue setMaxConcurrentOperationCount:1];
    v43 = [(HMDAccessorySettingsControllerDependencyFactory *)v24->_factory timerWithReason:3 interval:5.0];
    languageChangeDebounceTimer = v24->_languageChangeDebounceTimer;
    v24->_languageChangeDebounceTimer = v43;

    [(HMFTimer *)v24->_languageChangeDebounceTimer setDelegate:v24];
    objc_storeStrong(&v24->_notificationCenter, a13);
  }

  return v24;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t3_229433 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t3_229433, &__block_literal_global_229434);
  }

  v3 = logCategory__hmf_once_v4_229435;

  return v3;
}

void __45__HMDAccessorySettingsController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v4_229435;
  logCategory__hmf_once_v4_229435 = v1;
}

@end