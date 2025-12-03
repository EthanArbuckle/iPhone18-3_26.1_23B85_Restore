@interface HMDSettingsController
+ (id)logCategory;
- (HMDSettingGroup)_cloneGroupFilteringKeyPath:(void *)path;
- (HMDSettingsController)initWithDependency:(id)dependency delegate:(id)delegate;
- (NSArray)allObjectIdentifiers;
- (id)_flattenedSettingControllerRoot:(void *)root withCurrentPath:(void *)path andReturnDictionary:;
- (id)_keyPathsFromGroup:(void *)group currentPath:(void *)path;
- (id)_keyPathsToModelInModelIDToModelLookup:(void *)lookup parentIDToModelIDsLookup:(void *)dsLookup currentID:(void *)d currentPath:(void *)path;
- (id)_settingForKeyPathWithGroups:(void *)groups settings:(void *)settings keyPath:;
- (id)delegate;
- (id)logIdentifier;
- (id)migrateSettingsTransactionWithTransaction:(id)transaction error:(id *)error;
- (id)modelsToMakeSettings;
- (id)modelsToMigrateSettings;
- (id)settingForIdentifier:(id)identifier;
- (id)settingForKeyPath:(id)path;
- (id)settingGroupForIdentifier:(id)identifier;
- (id)settingValuesByKeyPathWithPrefix:(id)prefix;
- (void)_handleAddedConstraintModel:(void *)model shouldNotify:(void *)notify;
- (void)_handleAddedGroupModel:(int)model shouldNotify:;
- (void)_handleAddedSettingModel:(int)model shouldNotify:;
- (void)configure;
- (void)encodeWithCoder:(id)coder;
- (void)loadWithModels:(id)models;
- (void)settingsHierarchyDidChange;
- (void)transactionSettingConstraintModelUpdated:(id)updated previousModel:(id)model;
- (void)transactionSettingGroupModelUpdated:(id)updated previousModel:(id)model;
- (void)transactionSettingModelUpdated:(id)updated previousModel:(id)model;
- (void)updateRootGroup:(id)group;
- (void)updateWithEncodedValue:(id)value onSettingKeyPath:(id)path completion:(id)completion;
- (void)updateWithValue:(id)value onSetting:(id)setting completion:(id)completion;
@end

@implementation HMDSettingsController

- (void)transactionSettingConstraintModelUpdated:(id)updated previousModel:(id)model
{
  if (self)
  {
    updatedCopy = updated;
    os_unfair_lock_lock_with_options();
    isInitialized = self->_isInitialized;
    os_unfair_lock_unlock(&self->_lock);
    if (isInitialized)
    {
      [HMDSettingsController _handleAddedConstraintModel:updatedCopy shouldNotify:?];
    }
  }
}

- (void)_handleAddedConstraintModel:(void *)model shouldNotify:(void *)notify
{
  v45 = *MEMORY[0x277D85DE8];
  notifyCopy = notify;
  v4 = notifyCopy;
  if (model)
  {
    hmbParentModelID = [(HMDSettingConstraint *)notifyCopy hmbParentModelID];
    v6 = [(HMDSettingsController *)model settingForIdentifier:hmbParentModelID];

    if (v6)
    {
      v7 = [HMDSettingConstraint alloc];
      hmbModelID = [(HMDSettingConstraint *)v4 hmbModelID];
      hmbParentModelID2 = [(HMDSettingConstraint *)v4 hmbParentModelID];
      type = [(HMDSettingConstraint *)v4 type];
      numberValue = [(HMDSettingConstraint *)v4 numberValue];
      dataValue = [(HMDSettingConstraint *)v4 dataValue];
      v13 = [(HMDSettingConstraint *)v7 initWithIdentifier:hmbModelID parentIdentifier:hmbParentModelID2 type:type numberValue:numberValue dataValue:dataValue];

      if (v13)
      {
        [v6 addConstraint:v13];
        v14 = objc_autoreleasePoolPush();
        modelCopy = model;
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = HMFGetLogIdentifier();
          v39 = 138543874;
          v40 = v17;
          v41 = 2112;
          v42 = v13;
          v43 = 2112;
          v44 = v6;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Added settings constraint %@ to %@", &v39, 0x20u);
        }

        objc_autoreleasePoolPop(v14);
        v18 = objc_autoreleasePoolPush();
        v19 = modelCopy;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          identifier = [(HMDSettingConstraint *)v13 identifier];
          name = [v6 name];
          v39 = 138543874;
          v40 = v21;
          v41 = 2112;
          v42 = identifier;
          v43 = 2112;
          v44 = name;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Added settings constraint %@ to %@", &v39, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
        [(HMDSettingsController *)v19 settingsHierarchyDidChange];
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        modelCopy2 = model;
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = HMFGetLogIdentifier();
          v39 = 138543618;
          v40 = v37;
          v41 = 2112;
          v42 = v4;
          _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Couldn't decode value for received constraint model %@", &v39, 0x16u);
        }

        objc_autoreleasePoolPop(v34);
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      modelCopy3 = model;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = HMFGetLogIdentifier();
        hmbParentModelID3 = [(HMDSettingConstraint *)v4 hmbParentModelID];
        v39 = 138543874;
        v40 = v28;
        v41 = 2112;
        v42 = v4;
        v43 = 2112;
        v44 = hmbParentModelID3;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Couldn't find setting for received constraint model %@, parent %@", &v39, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v30 = objc_autoreleasePoolPush();
      v31 = modelCopy3;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        v39 = 138543362;
        v40 = v33;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find setting for received constraint model", &v39, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
    }
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (id)settingForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifier)
  {
    v3 = a2;
    identifierCopy = [objc_getProperty(identifierCopy v4];
  }

  return identifierCopy;
}

- (void)settingsHierarchyDidChange
{
  if (self)
  {
    v3 = objc_getProperty(self, a2, 48, 1);
    v5 = [objc_getProperty(self v4];
    v7 = [objc_getProperty(self v6];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__HMDSettingsController_settingsHierarchyDidChange__block_invoke;
    v8[3] = &unk_279729170;
    v8[4] = self;
    [HMDSettingAlgorithm findChangedSettingsWithRootGroup:v3 currentGroups:v5 currentSettings:v7 completion:v8];
  }
}

void __51__HMDSettingsController_settingsHierarchyDidChange__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v53 = *MEMORY[0x277D85DE8];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if ([v15 count] || objc_msgSend(v16, "count") || objc_msgSend(v17, "count") || objc_msgSend(v18, "count"))
  {
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      v37 = v18;
      v38 = v13;
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];
      v23 = v36 = v16;
      [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
      v24 = v34 = v20;
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v18, "count")}];
      v35 = v17;
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "count")}];
      *buf = 138544898;
      v40 = v33;
      v41 = 2112;
      v42 = v32;
      v43 = 2112;
      v44 = v23;
      v45 = 2112;
      v46 = v24;
      v47 = 2112;
      v48 = v25;
      v49 = 2112;
      v50 = v26;
      v51 = 2112;
      v52 = v27;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Added %@ groups and %@ settings. Removed %@ groups and %@ settings. Currently have %@ groups and %@ settings", buf, 0x48u);

      v13 = v38;
      v17 = v35;

      v18 = v37;
      v20 = v34;

      v16 = v36;
    }

    objc_autoreleasePoolPop(v20);
  }

  v28 = *(a1 + 32);
  if (v28)
  {
    objc_setProperty_atomic(v28, v19, v14, 64);
    v30 = *(a1 + 32);
    if (v30)
    {
      objc_setProperty_atomic(v30, v29, v13, 56);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)transactionSettingModelUpdated:(id)updated previousModel:(id)model
{
  v45 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  modelCopy = model;
  hmbModelID = [updatedCopy hmbModelID];
  v9 = [(HMDSettingsController *)self settingForIdentifier:hmbModelID];

  if (v9)
  {
    selfCopy = self;
    v11 = v9;
    v12 = updatedCopy;
    v13 = v11;
    v14 = v12;
    type = [v13 type];
    integerValue = [type integerValue];

    if (integerValue <= 2)
    {
      if (integerValue == 1)
      {
        dataValue = [v14 dataValue];

        if (dataValue)
        {
          v34 = objc_alloc(MEMORY[0x277CD1DD0]);
          dataValue2 = [v14 dataValue];
          v20 = [v34 initDataSettingWithValue:dataValue2];
          goto LABEL_21;
        }
      }

      else if (integerValue == 2)
      {
        numberValue = [v14 numberValue];

        if (numberValue)
        {
          v24 = objc_alloc(MEMORY[0x277CD1DD0]);
          dataValue2 = [v14 numberValue];
          v20 = [v24 initNumberSettingWithValue:dataValue2];
          goto LABEL_21;
        }
      }
    }

    else
    {
      switch(integerValue)
      {
        case 5:
LABEL_25:
          v32 = 0;
LABEL_26:

          if (v32 && [v13 updateWithSettingValue:v32])
          {
            delegate = [(HMDSettingsController *)&selfCopy->super.super.isa delegate];
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = ____transactionSettingUpdated_block_invoke;
            v43 = &unk_2797359D8;
            v44 = selfCopy;
            [delegate settingsController:v44 didUpdateWithCompletion:buf];
          }

          goto LABEL_30;
        case 4:
          selectionIdentifier = [v14 selectionIdentifier];
          if (selectionIdentifier)
          {
            v26 = selectionIdentifier;
            selectionValue = [v14 selectionValue];

            if (selectionValue)
            {
              v28 = objc_alloc(MEMORY[0x277CD1DD0]);
              type2 = [v13 type];
              integerValue2 = [type2 integerValue];
              selectionIdentifier2 = [v14 selectionIdentifier];
              selectionValue2 = [v14 selectionValue];
              v32 = [v28 initWithType:integerValue2 stringValue:0 numberValue:0 dataValue:0 selectionIdentifier:selectionIdentifier2 selectionValue:selectionValue2];

              goto LABEL_26;
            }
          }

          break;
        case 3:
          stringValue = [v14 stringValue];

          if (stringValue)
          {
            v18 = objc_alloc(MEMORY[0x277CD1DD0]);
            dataValue2 = [v14 stringValue];
            v20 = [v18 initStringSettingWithValue:dataValue2];
LABEL_21:
            v32 = v20;

            goto LABEL_26;
          }

          break;
      }
    }

    v35 = objc_autoreleasePoolPush();
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      type3 = [v13 type];
      *buf = 138543618;
      *&buf[4] = v37;
      *&buf[12] = 2112;
      *&buf[14] = type3;
      _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Unknown setting type %@ will not attempt to decode value in transaction", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    goto LABEL_25;
  }

  if (self)
  {
    v21 = updatedCopy;
    os_unfair_lock_lock_with_options();
    isInitialized = self->_isInitialized;
    os_unfair_lock_unlock(&self->_lock);
    if (isInitialized)
    {
      [(HMDSettingsController *)self _handleAddedSettingModel:v21 shouldNotify:1];
    }
  }

LABEL_30:

  v40 = *MEMORY[0x277D85DE8];
}

- (id)delegate
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 5);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)_handleAddedSettingModel:(int)model shouldNotify:
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    v6 = [[HMDSetting alloc] initWithModel:v5];
    if (v6)
    {
      hmbParentModelID = [v5 hmbParentModelID];
      v8 = [(HMDSettingsController *)self settingGroupForIdentifier:hmbParentModelID];
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      v12 = v11;
      if (v8)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543618;
          v24 = v13;
          v25 = 2112;
          v26 = v6;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Added setting %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
        [v8 addSetting:v6];
        [(HMDSettingsController *)selfCopy settingsHierarchyDidChange];
        if (model)
        {
          WeakRetained = objc_loadWeakRetained(selfCopy + 5);
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __63__HMDSettingsController__handleAddedSettingModel_shouldNotify___block_invoke;
          v22[3] = &unk_2797359D8;
          v22[4] = selfCopy;
          [WeakRetained settingsController:selfCopy didUpdateWithCompletion:v22];
        }
      }

      else
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543618;
          v24 = v20;
          v25 = 2112;
          v26 = hmbParentModelID;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Parent group not found to add setting in transaction for identifier %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v24 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Unable to decode setting in transaction payload", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)settingGroupForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifier)
  {
    v3 = a2;
    identifierCopy = [objc_getProperty(identifierCopy v4];
  }

  return identifierCopy;
}

void __63__HMDSettingsController__handleAddedSettingModel_shouldNotify___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Sent setting added notification. Error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)transactionSettingGroupModelUpdated:(id)updated previousModel:(id)model
{
  updatedCopy = updated;
  hmbModelID = [updatedCopy hmbModelID];
  v6 = [(HMDSettingsController *)self settingGroupForIdentifier:hmbModelID];

  if (self && !v6)
  {
    v7 = updatedCopy;
    os_unfair_lock_lock_with_options();
    isInitialized = self->_isInitialized;
    os_unfair_lock_unlock(&self->_lock);
    if (isInitialized)
    {
      [(HMDSettingsController *)self _handleAddedGroupModel:v7 shouldNotify:1];
    }
  }
}

- (void)_handleAddedGroupModel:(int)model shouldNotify:
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (self)
  {
    v6 = [[HMDSettingGroup alloc] initWithModel:v5];
    v7 = v6;
    if (v6)
    {
      parentIdentifier = [(HMDSettingGroup *)v6 parentIdentifier];
      v10 = [objc_getProperty(self v9];
      v11 = [parentIdentifier hmf_isEqualToUUID:v10];

      if (v11)
      {
        v12 = objc_autoreleasePoolPush();
        selfCopy = self;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = HMFGetLogIdentifier();
          *buf = 138543618;
          v48 = v15;
          v49 = 2112;
          v50 = v5;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Root group added to owner %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v12);
        hmbParentModelID = v7;
        if (objc_getProperty(selfCopy, v17, 48, 1))
        {
          v19 = [objc_getProperty(selfCopy v18];
          identifier = [(HMDSettingGroup *)hmbParentModelID identifier];
          v21 = [v19 hmf_isEqualToUUID:identifier];

          if ((v21 & 1) == 0)
          {
            v22 = objc_autoreleasePoolPush();
            v23 = selfCopy;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              v25 = HMFGetLogIdentifier();
              *buf = 138543362;
              v48 = v25;
              _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@We have a colliding root group", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v22);
          }
        }

        else
        {
          v38 = objc_autoreleasePoolPush();
          v39 = selfCopy;
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v41 = HMFGetLogIdentifier();
            v43 = [objc_getProperty(v39 v42];
            *buf = 138543874;
            v48 = v41;
            v49 = 2112;
            v50 = hmbParentModelID;
            v51 = 2112;
            v52 = v43;
            _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Adding root group %@ for user %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v38);
          [v39 updateRootGroup:hmbParentModelID];
        }
      }

      else
      {
        hmbParentModelID = [(HMDSettingGroup *)v5 hmbParentModelID];
        v30 = [(HMDSettingsController *)self settingGroupForIdentifier:hmbParentModelID];
        v31 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v33 = HMFGetOSLogHandle();
        v34 = v33;
        if (v30)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543618;
            v48 = v35;
            v49 = 2112;
            v50 = v7;
            _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Added group %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v31);
          [v30 addGroup:v7];
          [(HMDSettingsController *)selfCopy2 settingsHierarchyDidChange];
          if (model)
          {
            WeakRetained = objc_loadWeakRetained(selfCopy2 + 5);
            v46[0] = MEMORY[0x277D85DD0];
            v46[1] = 3221225472;
            v46[2] = __61__HMDSettingsController__handleAddedGroupModel_shouldNotify___block_invoke;
            v46[3] = &unk_2797359D8;
            v46[4] = selfCopy2;
            [WeakRetained settingsController:selfCopy2 didUpdateWithCompletion:v46];
          }
        }

        else
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v44 = HMFGetLogIdentifier();
            *buf = 138543618;
            v48 = v44;
            v49 = 2112;
            v50 = hmbParentModelID;
            _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Parent group not found to add group in transaction for identifier %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v31);
        }
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        v48 = v29;
        v49 = 2112;
        v50 = v5;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unable to decode setting group in transaction payload %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

void __61__HMDSettingsController__handleAddedGroupModel_shouldNotify___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Sent group added notification. Error: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)loadWithModels:(id)models
{
  v34 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = models;
  v3 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v26;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = v7;
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

        v12 = v9;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        v15 = v12;
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

        if (v11)
        {
          [(HMDSettingsController *)self _handleAddedGroupModel:v11 shouldNotify:0];
        }

        else if (v14)
        {
          [(HMDSettingsController *)self _handleAddedSettingModel:v14 shouldNotify:0];
        }

        else if (v17)
        {
          [HMDSettingsController _handleAddedConstraintModel:v17 shouldNotify:?];
        }

        else
        {
          context = objc_autoreleasePoolPush();
          selfCopy = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138543618;
            v30 = v21;
            v31 = 2112;
            v32 = v15;
            _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Unrecognized model type %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
        }

        objc_autoreleasePoolPop(v8);
      }

      v4 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v4);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (self && objc_getProperty(self, v4, 48, 1) && [coderCopy hmd_isForXPCTransport] && objc_msgSend(coderCopy, "hmd_isForXPCTransportEntitledForSPIAccess"))
  {
    v7 = [(HMDSettingsController *)self _prunedSettingsGroupByRemovingKeyPathsFromGroup:objc_getProperty(self, v5, 48, 1)];
    if (v7)
    {
      v8 = [objc_getProperty(self v6];
      [coderCopy encodeObject:v7 forKey:v8];
    }
  }
}

- (HMDSettingGroup)_cloneGroupFilteringKeyPath:(void *)path
{
  v4 = a2;
  if (!path)
  {
    goto LABEL_4;
  }

  v5 = [objc_getProperty(path v3];
  v6 = [v5 count];

  if (v6)
  {
    v8 = [objc_getProperty(path v7];
    keyPath = [v4 keyPath];
    v10 = [v8 containsObject:keyPath];

    if (v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_7;
    }

    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    groups = [v4 groups];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __53__HMDSettingsController__cloneGroupFilteringKeyPath___block_invoke;
    v31[3] = &unk_279729198;
    v31[4] = path;
    v32 = array;
    v15 = array;
    [groups na_each:v31];

    settings = [v4 settings];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __53__HMDSettingsController__cloneGroupFilteringKeyPath___block_invoke_2;
    v28 = &unk_2797291C0;
    pathCopy = path;
    v30 = array2;
    v17 = array2;
    [settings na_each:&v25];

    v18 = [HMDSettingGroup alloc];
    identifier = [v4 identifier];
    parentIdentifier = [v4 parentIdentifier];
    name = [v4 name];
    v22 = [v15 copy];
    v23 = [v17 copy];
    v11 = [(HMDSettingGroup *)v18 initWithIdentifier:identifier parentIdentifier:parentIdentifier name:name groups:v22 settings:v23];
  }

  else
  {
    v11 = v4;
  }

LABEL_7:

  return v11;
}

uint64_t __53__HMDSettingsController__cloneGroupFilteringKeyPath___block_invoke(uint64_t a1)
{
  v2 = [HMDSettingsController _cloneGroupFilteringKeyPath:?];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v2 = [*(a1 + 40) addObject:v2];
    v3 = v5;
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

void __53__HMDSettingsController__cloneGroupFilteringKeyPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  if (v3 && ([objc_getProperty(v3 v4], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "keyPath"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "containsObject:", v7), v7, v6, !v8))
  {
    v10 = v5;

    v9 = v10;
    if (v10)
    {
      [*(a1 + 40) addObject:v10];
      v9 = v10;
    }
  }

  else
  {

    v9 = 0;
  }
}

- (id)migrateSettingsTransactionWithTransaction:(id)transaction error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  if (self)
  {
    Property = objc_getProperty(self, v6, 48, 1);
  }

  else
  {
    Property = 0;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (Property)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Getting Migrating Setting models", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    modelsToMigrateSettings = [(HMDSettingsController *)selfCopy modelsToMigrateSettings];
    if (self)
    {
      v16 = objc_getProperty(selfCopy, v14, 48, 1);
    }

    else
    {
      v16 = 0;
    }

    identifier = [v16 identifier];
    if (self)
    {
      v19 = objc_getProperty(selfCopy, v17, 48, 1);
    }

    else
    {
      v19 = 0;
    }

    parentIdentifier = [v19 parentIdentifier];
    [(HMDSettingsController *)selfCopy updateRootGroup:0];
    v20 = [modelsToMigrateSettings count];
    v21 = objc_autoreleasePoolPush();
    v22 = selfCopy;
    v23 = HMFGetOSLogHandle();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    if (v20)
    {
      if (v24)
      {
        v25 = HMFGetLogIdentifier();
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(modelsToMigrateSettings, "count")}];
        *buf = 138543618;
        v53 = v25;
        v54 = 2112;
        v55 = v26;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Migrating settings with %@ models", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v28 = parentIdentifier;
      if (self)
      {
        v29 = objc_getProperty(v22, v27, 32, 1);
      }

      else
      {
        v29 = 0;
      }

      migrationProvider = [v29 migrationProvider];
      [migrationProvider applyConditionalValueUpdateToModels:modelsToMigrateSettings];

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v31 = modelsToMigrateSettings;
      v32 = [v31 countByEnumeratingWithState:&v47 objects:v51 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v48;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v48 != v34)
            {
              objc_enumerationMutation(v31);
            }

            [transactionCopy addSettingModel:*(*(&v47 + 1) + 8 * i)];
          }

          v33 = [v31 countByEnumeratingWithState:&v47 objects:v51 count:16];
        }

        while (v33);
      }

      v36 = [[HMDSettingRootGroupModel alloc] initWithModelID:identifier parentModelID:parentIdentifier];
      [transactionCopy addSettingModel:v36];
      v37 = transactionCopy;
    }

    else
    {
      if (v24)
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543362;
        v53 = v42;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@No new models for settings to migrate", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      if (error)
      {
        *error = 0;
      }

      v43 = transactionCopy;
      v28 = parentIdentifier;
    }
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v53 = v38;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@No root group to migrate settings", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v39 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    modelsToMigrateSettings = v39;
    if (v39)
    {
      v40 = v39;
      *error = modelsToMigrateSettings;
    }

    v41 = transactionCopy;
  }

  v44 = *MEMORY[0x277D85DE8];

  return transactionCopy;
}

- (id)modelsToMigrateSettings
{
  selfCopy = self;
  v122 = *MEMORY[0x277D85DE8];
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  loadMetadata = [(HMDSettingsController *)self loadMetadata];
  if (loadMetadata)
  {
    if (selfCopy)
    {
      Property = objc_getProperty(selfCopy, v3, 32, 1);
    }

    else
    {
      Property = 0;
    }

    metadataParser = [Property metadataParser];
    v7 = [metadataParser modelsFromMetadata:loadMetadata];

    if (v7)
    {
      if (selfCopy)
      {
        v9 = objc_getProperty(selfCopy, v8, 48, 1);
      }

      else
      {
        v9 = 0;
      }

      v10 = objc_autoreleasePoolPush();
      selfa = selfCopy;
      v11 = HMFGetOSLogHandle();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (v12)
        {
          v13 = HMFGetLogIdentifier();
          *buf = 138543362;
          v117 = v13;
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Getting new models in metadata for migration", buf, 0xCu);
        }

        v99 = loadMetadata;

        objc_autoreleasePoolPop(v10);
        v98 = v7;
        v14 = v7;
        v15 = v14;
        v97 = selfCopy;
        if (selfCopy)
        {
          v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v14, "count")}];
          v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v15, "count")}];
          v111 = 0u;
          v112 = 0u;
          v113 = 0u;
          v114 = 0u;
          v18 = v15;
          v19 = [v18 countByEnumeratingWithState:&v111 objects:buf count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v112;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v112 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v111 + 1) + 8 * i);
                hmbModelID = [v23 hmbModelID];
                [v16 setObject:v23 forKey:hmbModelID];

                hmbParentModelID = [v23 hmbParentModelID];
                v26 = [v17 objectForKey:hmbParentModelID];

                if (!v26)
                {
                  v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
                  hmbParentModelID2 = [v23 hmbParentModelID];
                  [v17 setObject:v26 forKey:hmbParentModelID2];
                }

                hmbModelID2 = [v23 hmbModelID];
                [v26 addObject:hmbModelID2];
              }

              v20 = [v18 countByEnumeratingWithState:&v111 objects:buf count:16];
            }

            while (v20);
          }

          p_isa = &selfa->super.super.isa;
          v31 = [objc_getProperty(selfa v30];
          v32 = [v17 objectForKey:v31];
          allObjects = [v32 allObjects];
          v34 = [allObjects objectAtIndexedSubscript:0];

          v105 = [HMDSettingsController _keyPathsToModelInModelIDToModelLookup:v16 parentIDToModelIDsLookup:v17 currentID:v34 currentPath:&stru_286509E58];

          v36 = objc_getProperty(selfa, v35, 48, 1);
          v96 = [HMDSettingsController _keyPathsFromGroup:v36 currentPath:&stru_286509E58];
        }

        else
        {

          v105 = 0;
          v96 = 0;
          p_isa = &selfa->super.super.isa;
        }

        delegate = [(HMDSettingsController *)p_isa delegate];
        v38 = [delegate settingsControllerFollowerKeyPaths:p_isa];

        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v39 = v38;
        v40 = [v39 countByEnumeratingWithState:&v107 objects:v115 count:16];
        v102 = v39;
        if (v40)
        {
          v41 = v40;
          obj = *v108;
          do
          {
            for (j = 0; j != v41; ++j)
            {
              if (*v108 != obj)
              {
                objc_enumerationMutation(v39);
              }

              v43 = *(*(&v107 + 1) + 8 * j);
              v44 = [@"." stringByAppendingString:{v43, v96}];
              v45 = [v105 objectForKeyedSubscript:v44];

              v46 = v45;
              if ([v46 conformsToProtocol:&unk_28668A8B0])
              {
                v47 = v46;
              }

              else
              {
                v47 = 0;
              }

              v48 = v47;

              v49 = [v39 objectForKeyedSubscript:v43];
              v50 = [p_isa settingForKeyPath:v49];

              if (v48)
              {
                v51 = v50 == 0;
              }

              else
              {
                v51 = 1;
              }

              if (!v51)
              {
                internalValue = [v50 internalValue];
                type = [internalValue type];
                type2 = [v48 type];
                integerValue = [type2 integerValue];

                v39 = v102;
                if (type == integerValue)
                {
                  type3 = [v48 type];
                  integerValue2 = [type3 integerValue];

                  if (integerValue2 == 2)
                  {
                    v58 = objc_autoreleasePoolPush();
                    v59 = p_isa;
                    v60 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                    {
                      HMFGetLogIdentifier();
                      v61 = v101 = v58;
                      name = [v48 name];
                      internalValue2 = [v50 internalValue];
                      *buf = 138543874;
                      v117 = v61;
                      v118 = 2112;
                      v119 = name;
                      v120 = 2112;
                      v121 = internalValue2;
                      _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_DEFAULT, "%{public}@Will migrate value of %@ as %@", buf, 0x20u);

                      p_isa = &selfa->super.super.isa;
                      v39 = v102;

                      v58 = v101;
                    }

                    objc_autoreleasePoolPop(v58);
                    internalValue3 = [v50 internalValue];
                    numberValue = [internalValue3 numberValue];
                    [v48 setNumberValue:numberValue];
                  }
                }
              }
            }

            v41 = [v39 countByEnumeratingWithState:&v107 objects:v115 count:16];
          }

          while (v41);
        }

        allKeys = [v96 allKeys];
        [v105 removeObjectsForKeys:allKeys];

        v67 = v105;
        v106 = v96;
        if (v97)
        {
          allKeys2 = [v67 allKeys];
          v111 = 0u;
          v112 = 0u;
          v113 = 0u;
          v114 = 0u;
          obja = allKeys2;
          v69 = [allKeys2 countByEnumeratingWithState:&v111 objects:buf count:16];
          if (v69)
          {
            v70 = v69;
            v71 = *v112;
            do
            {
              for (k = 0; k != v70; ++k)
              {
                if (*v112 != v71)
                {
                  objc_enumerationMutation(obja);
                }

                v73 = *(*(&v111 + 1) + 8 * k);
                v74 = [v67 valueForKey:{v73, v96}];
                v75 = [v73 substringToIndex:{objc_msgSend(v73, "rangeOfString:options:", @".", 4)}];
                v76 = [v106 valueForKey:v75];
                v77 = v76;
                if (v76)
                {
                  identifier = [v76 identifier];
                  v79 = [v74 copyWithNewParentModelID:identifier];

                  [v67 setValue:v79 forKey:v73];
                  v74 = v79;
                }
              }

              v70 = [obja countByEnumeratingWithState:&v111 objects:buf count:16];
            }

            while (v70);
          }
        }

        v80 = objc_autoreleasePoolPush();
        v81 = selfa;
        v82 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
        {
          v83 = HMFGetLogIdentifier();
          v84 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v67, "count")}];
          *buf = 138543618;
          v117 = v83;
          v118 = 2112;
          v119 = v84;
          _os_log_impl(&dword_2531F8000, v82, OS_LOG_TYPE_INFO, "%{public}@Found %@ new models in metadata for migration", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v80);
        allValues = [v67 allValues];

        v7 = v98;
        loadMetadata = v99;
        goto LABEL_66;
      }

      if (v12)
      {
        v93 = HMFGetLogIdentifier();
        *buf = 138543362;
        v117 = v93;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Settings controller does not have a rootGroup for migration", buf, 0xCu);
      }
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v90 = selfCopy;
      v91 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        v92 = HMFGetLogIdentifier();
        *buf = 138543362;
        v117 = v92;
        _os_log_impl(&dword_2531F8000, v91, OS_LOG_TYPE_ERROR, "%{public}@Unable to retrieve setting models from parser", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v10);
    allValues = 0;
LABEL_66:

    goto LABEL_67;
  }

  v86 = objc_autoreleasePoolPush();
  v87 = selfCopy;
  v88 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
  {
    v89 = HMFGetLogIdentifier();
    *buf = 138543362;
    v117 = v89;
    _os_log_impl(&dword_2531F8000, v88, OS_LOG_TYPE_ERROR, "%{public}@Unable to load settings metadata from dependency", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v86);
  allValues = 0;
LABEL_67:

  v94 = *MEMORY[0x277D85DE8];

  return allValues;
}

- (id)_keyPathsFromGroup:(void *)group currentPath:(void *)path
{
  v40 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  pathCopy = path;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = MEMORY[0x277CCACA8];
  name = [groupCopy name];
  v8 = [v6 stringWithFormat:@"%@.%@", pathCopy, name];

  [v5 setValue:groupCopy forKey:v8];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = groupCopy;
  settings = [groupCopy settings];
  v10 = [settings countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(settings);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = MEMORY[0x277CCACA8];
        name2 = [v14 name];
        v17 = [v15 stringWithFormat:@"%@.%@", v8, name2];

        [v5 setValue:v14 forKey:v17];
        v18 = [v14 constraintsByKeyPathWithCurrentKeyPath:v17];
        [v5 addEntriesFromDictionary:v18];
      }

      v11 = [settings countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v11);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  groups = [v29 groups];
  v20 = [groups countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(groups);
        }

        v24 = *(*(&v30 + 1) + 8 * j);
        v25 = [v8 copy];
        v26 = [HMDSettingsController _keyPathsFromGroup:v24 currentPath:v25];
        [v5 addEntriesFromDictionary:v26];
      }

      v21 = [groups countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v21);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_keyPathsToModelInModelIDToModelLookup:(void *)lookup parentIDToModelIDsLookup:(void *)dsLookup currentID:(void *)d currentPath:(void *)path
{
  v33 = *MEMORY[0x277D85DE8];
  lookupCopy = lookup;
  dsLookupCopy = dsLookup;
  dCopy = d;
  pathCopy = path;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [lookupCopy objectForKey:dCopy];
  v13 = MEMORY[0x277CCACA8];
  nameForKeyPath = [v12 nameForKeyPath];
  v15 = [v13 stringWithFormat:@"%@.%@", pathCopy, nameForKeyPath];

  v26 = v12;
  [v11 setObject:v12 forKey:v15];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = dCopy;
  v16 = [dsLookupCopy objectForKey:dCopy];
  v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v29;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v28 + 1) + 8 * i);
        v22 = [v15 copy];
        v23 = [HMDSettingsController _keyPathsToModelInModelIDToModelLookup:lookupCopy parentIDToModelIDsLookup:dsLookupCopy currentID:v21 currentPath:v22];
        [v11 addEntriesFromDictionary:v23];
      }

      v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v18);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)modelsToMakeSettings
{
  selfCopy = self;
  v18 = *MEMORY[0x277D85DE8];
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  loadMetadata = [(HMDSettingsController *)self loadMetadata];
  v4 = objc_autoreleasePoolPush();
  v5 = selfCopy;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (loadMetadata)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating settings models using metadata", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    if (selfCopy)
    {
      Property = objc_getProperty(v5, v9, 32, 1);
    }

    else
    {
      Property = 0;
    }

    metadataParser = [Property metadataParser];
    v12 = [metadataParser modelsFromMetadata:loadMetadata];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Could not load any metadata to make settings", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)updateRootGroup:(id)group
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, group, 48);

    [(HMDSettingsController *)self settingsHierarchyDidChange];
  }
}

- (id)settingValuesByKeyPathWithPrefix:(id)prefix
{
  prefixCopy = prefix;
  if (self)
  {
    Property = objc_getProperty(self, v4, 48, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = MEMORY[0x277CBEB38];
  v8 = Property;
  dictionary = [v7 dictionary];
  v10 = [(HMDSettingsController *)self _flattenedSettingControllerRoot:v8 withCurrentPath:prefixCopy andReturnDictionary:dictionary];

  return v10;
}

- (id)_flattenedSettingControllerRoot:(void *)root withCurrentPath:(void *)path andReturnDictionary:
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a2;
  rootCopy = root;
  pathCopy = path;
  if (self)
  {
    if (v7)
    {
      if ([rootCopy length])
      {
        v10 = [rootCopy stringByAppendingString:@"."];

        rootCopy = v10;
      }

      v11 = rootCopy;
      name = [v7 name];
      rootCopy = [rootCopy stringByAppendingString:name];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      groups = [v7 groups];
      v14 = [groups countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v38;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v38 != v16)
            {
              objc_enumerationMutation(groups);
            }

            v18 = [(HMDSettingsController *)self _flattenedSettingControllerRoot:rootCopy withCurrentPath:pathCopy andReturnDictionary:?];
          }

          v15 = [groups countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v15);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = v7;
      settings = [v7 settings];
      v20 = [settings countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v34;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v34 != v22)
            {
              objc_enumerationMutation(settings);
            }

            v24 = *(*(&v33 + 1) + 8 * j);
            name2 = [v24 name];

            if (name2)
            {
              v26 = [rootCopy stringByAppendingString:@"."];
              name3 = [v24 name];
              v28 = [v26 stringByAppendingString:name3];

              value = [v24 value];
              [pathCopy setObject:value forKeyedSubscript:v28];
            }
          }

          v21 = [settings countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v21);
      }

      v7 = v32;
    }

    self = pathCopy;
  }

  v30 = *MEMORY[0x277D85DE8];

  return self;
}

- (void)updateWithValue:(id)value onSetting:(id)setting completion:(id)completion
{
  v119 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  settingCopy = setting;
  completionCopy = completion;
  v110 = 0;
  LODWORD(completion) = [settingCopy isValidValue:valueCopy error:&v110];
  v94 = v110;
  if (!completion)
  {
    v77 = objc_autoreleasePoolPush();
    selfCopy = self;
    v79 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      v80 = HMFGetLogIdentifier();
      *buf = 138543874;
      v114 = v80;
      v115 = 2112;
      v116 = valueCopy;
      v117 = 2112;
      v118 = settingCopy;
      _os_log_impl(&dword_2531F8000, v79, OS_LOG_TYPE_ERROR, "%{public}@Received value %@ is not valid for setting %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v77);
    v81 = v94;
    if (!v94)
    {
      v83 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      completionCopy[2](completionCopy, v83);

      goto LABEL_63;
    }

    completionCopy[2](completionCopy, v94);
    goto LABEL_64;
  }

  v11 = [settingCopy wouldValueUpdate:valueCopy];
  v12 = objc_autoreleasePoolPush();
  v98 = settingCopy;
  v13 = HMFGetOSLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (!v11)
  {
    if (v14)
    {
      v82 = HMFGetLogIdentifier();
      *buf = 138543874;
      v114 = v82;
      v115 = 2112;
      v116 = v98;
      v117 = 2112;
      v118 = valueCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Skipping update due to setting: %@ matching update setting value: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    completionCopy[2](completionCopy, 0);
    goto LABEL_63;
  }

  if (v14)
  {
    v15 = HMFGetLogIdentifier();
    value = [v98 value];
    *buf = 138543874;
    v114 = v15;
    v115 = 2112;
    v116 = value;
    v117 = 2112;
    v118 = valueCopy;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating value on message from %@ to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  if (self)
  {
    Property = objc_getProperty(self, v17, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v19 = Property;
  identifier = [v98 identifier];
  parentIdentifier = [v98 parentIdentifier];
  v22 = [v19 settingModelForUpdateWithIdentifier:identifier parentIdentifier:parentIdentifier value:valueCopy];

  v92 = v22;
  if (!v22)
  {
    v84 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v86 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v87 = HMFGetLogIdentifier();
      *buf = 138543874;
      v114 = v87;
      v115 = 2112;
      v116 = valueCopy;
      v117 = 2112;
      v118 = v98;
      _os_log_impl(&dword_2531F8000, v86, OS_LOG_TYPE_ERROR, "%{public}@Failed to create model to update value %@ on setting %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v84);
    v76 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Created model is nil" reason:@"Unable to create update model" suggestion:0];
    completionCopy[2](completionCopy, v76);
    goto LABEL_62;
  }

  delegate = [(HMDSettingsController *)&self->super.super.isa delegate];
  keyPath = [v98 keyPath];
  v93 = [delegate settingsController:self willUpdateSettingAtKeyPath:keyPath withValue:valueCopy];

  if (self)
  {
    v26 = objc_getProperty(self, v25, 32, 1);
  }

  else
  {
    v26 = 0;
  }

  backingStoreController = [v26 backingStoreController];
  v28 = [backingStoreController settingTransactionWithName:@"Update Setting Value"];

  v97 = v28;
  [v28 addSettingModel:v22];
  if (!v93)
  {
    goto LABEL_48;
  }

  v90 = settingCopy;
  v91 = valueCopy;
  v89 = completionCopy;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  settingsToUpdate = [v93 settingsToUpdate];
  v31 = [settingsToUpdate countByEnumeratingWithState:&v106 objects:v112 count:16];
  selfCopy3 = self;
  if (!v31)
  {
    goto LABEL_38;
  }

  v32 = v31;
  v96 = *v107;
  do
  {
    v33 = 0;
    do
    {
      if (*v107 != v96)
      {
        objc_enumerationMutation(settingsToUpdate);
      }

      v34 = *(*(&v106 + 1) + 8 * v33);
      keyPath2 = [v34 keyPath];
      v36 = [(HMDSettingsController *)self settingForKeyPath:keyPath2];

      if (!v36)
      {
        v51 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = HMFGetLogIdentifier();
          keyPath3 = [v34 keyPath];
          *buf = 138543874;
          v114 = v54;
          v115 = 2112;
          v116 = keyPath3;
          v117 = 2112;
          v118 = v98;
          v56 = v53;
          v57 = "%{public}@Failed to find related constrained setting at keyPath %@ on setting update for %@";
          goto LABEL_28;
        }

LABEL_29:

        objc_autoreleasePoolPop(v51);
        goto LABEL_34;
      }

      settingValue = [v34 settingValue];
      v38 = [v36 isValidValue:settingValue error:0];

      if ((v38 & 1) == 0)
      {
        v51 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = HMFGetLogIdentifier();
          keyPath3 = [v34 settingValue];
          *buf = 138543874;
          v114 = v54;
          v115 = 2112;
          v116 = keyPath3;
          v117 = 2112;
          v118 = v36;
          v56 = v53;
          v57 = "%{public}@Provided setting value %@ is not valid for constrained setting %@";
LABEL_28:
          _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_ERROR, v57, buf, 0x20u);
        }

        goto LABEL_29;
      }

      if (self)
      {
        v40 = objc_getProperty(self, v39, 32, 1);
      }

      else
      {
        v40 = 0;
      }

      v41 = v40;
      identifier2 = [v36 identifier];
      parentIdentifier2 = [v36 parentIdentifier];
      settingValue2 = [v34 settingValue];
      v45 = [v41 settingModelForUpdateWithIdentifier:identifier2 parentIdentifier:parentIdentifier2 value:settingValue2];

      v46 = objc_autoreleasePoolPush();
      if (v45)
      {
        v47 = v98;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v49 = HMFGetLogIdentifier();
          settingValue3 = [v34 settingValue];
          *buf = 138543874;
          v114 = v49;
          v115 = 2112;
          v116 = v45;
          v117 = 2112;
          v118 = settingValue3;
          _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Added additional setting model %@ update with value %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v46);
        [v97 addSettingModel:v45];
      }

      else
      {
        v58 = selfCopy3;
        v59 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          v60 = HMFGetLogIdentifier();
          settingValue4 = [v34 settingValue];
          *buf = 138543874;
          v114 = v60;
          v115 = 2112;
          v116 = settingValue4;
          v117 = 2112;
          v118 = 0;
          _os_log_impl(&dword_2531F8000, v59, OS_LOG_TYPE_ERROR, "%{public}@Failed to create model to update value %@ on constrained setting %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v46);
      }

      self = selfCopy3;
LABEL_34:

      ++v33;
    }

    while (v32 != v33);
    v62 = [settingsToUpdate countByEnumeratingWithState:&v106 objects:v112 count:16];
    v32 = v62;
  }

  while (v62);
LABEL_38:

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  modelsToUpdate = [v93 modelsToUpdate];
  v64 = [modelsToUpdate countByEnumeratingWithState:&v102 objects:v111 count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v103;
    do
    {
      for (i = 0; i != v65; ++i)
      {
        if (*v103 != v66)
        {
          objc_enumerationMutation(modelsToUpdate);
        }

        v68 = *(*(&v102 + 1) + 8 * i);
        v69 = objc_autoreleasePoolPush();
        v70 = v98;
        v71 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
        {
          v72 = HMFGetLogIdentifier();
          *buf = 138543874;
          v114 = v72;
          v115 = 2112;
          v116 = v68;
          v117 = 2112;
          v118 = v98;
          _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_INFO, "%{public}@Added additional model %@ to update when updating setting %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v69);
        [v97 addModel:v68];
      }

      v65 = [modelsToUpdate countByEnumeratingWithState:&v102 objects:v111 count:16];
    }

    while (v65);
  }

  settingCopy = v90;
  valueCopy = v91;
  completionCopy = v89;
  self = selfCopy3;
LABEL_48:
  if (self)
  {
    v73 = objc_getProperty(self, v29, 32, 1);
  }

  else
  {
    v73 = 0;
  }

  backingStoreController2 = [v73 backingStoreController];
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __62__HMDSettingsController_updateWithValue_onSetting_completion___block_invoke;
  v99[3] = &unk_279733F30;
  v100 = v93;
  v101 = completionCopy;
  v75 = v93;
  v76 = v97;
  [backingStoreController2 runSettingTransaction:v97 completion:v99];

LABEL_62:
LABEL_63:
  v81 = v94;
LABEL_64:

  v88 = *MEMORY[0x277D85DE8];
}

void __62__HMDSettingsController_updateWithValue_onSetting_completion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!v5)
  {
    v3 = [*(a1 + 32) onCommitCompletion];

    if (v3)
    {
      v4 = [*(a1 + 32) onCommitCompletion];
      v4[2]();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)updateWithEncodedValue:(id)value onSettingKeyPath:(id)path completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  pathCopy = path;
  completionCopy = completion;
  v11 = [(HMDSettingsController *)self settingForKeyPath:pathCopy];
  v12 = v11;
  if (!v11)
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v22;
      v34 = 2112;
      v35 = pathCopy;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Setting not found for key path %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v17 = MEMORY[0x277CCA9B8];
    v18 = 2;
    goto LABEL_9;
  }

  if ([v11 isReadOnly])
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v16;
      v34 = 2112;
      v35 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Setting is read only as we do not understand it %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = MEMORY[0x277CCA9B8];
    v18 = 5;
LABEL_9:
    v23 = [v17 hmfErrorWithCode:v18];
    completionCopy[2](completionCopy, v23);
    goto LABEL_16;
  }

  v31 = 0;
  v24 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:valueCopy error:&v31];
  v23 = v31;
  if (v24)
  {
    [(HMDSettingsController *)self updateWithValue:v24 onSetting:v12 completion:completionCopy];
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v28;
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive setting value from encoded value: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    completionCopy[2](completionCopy, v29);
  }

LABEL_16:
  v30 = *MEMORY[0x277D85DE8];
}

- (id)settingForKeyPath:(id)path
{
  pathCopy = path;
  if (self)
  {
    Property = objc_getProperty(self, v4, 48, 1);
  }

  else
  {
    Property = 0;
  }

  groups = [Property groups];
  if (self)
  {
    v9 = objc_getProperty(self, v7, 48, 1);
  }

  else
  {
    v9 = 0;
  }

  settings = [v9 settings];
  v11 = [(HMDSettingsController *)self _settingForKeyPathWithGroups:groups settings:settings keyPath:pathCopy];

  return v11;
}

- (id)_settingForKeyPathWithGroups:(void *)groups settings:(void *)settings keyPath:
{
  v39 = *MEMORY[0x277D85DE8];
  v28 = a2;
  groupsCopy = groups;
  settingsCopy = settings;
  if (self)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = groupsCopy;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          keyPath = [v14 keyPath];
          v16 = [keyPath isEqualToString:settingsCopy];

          if (v16)
          {
            self = v14;
            goto LABEL_21;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v9 = v28;
    v17 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v9);
          }

          v21 = *(*(&v29 + 1) + 8 * j);
          keyPath2 = [v21 keyPath];
          v23 = [settingsCopy containsString:keyPath2];

          if (v23)
          {
            groups = [v21 groups];
            settings = [v21 settings];
            self = [(HMDSettingsController *)self _settingForKeyPathWithGroups:groups settings:settings keyPath:settingsCopy];

            goto LABEL_21;
          }
        }

        v18 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    self = 0;
LABEL_21:
  }

  v26 = *MEMORY[0x277D85DE8];

  return self;
}

- (NSArray)allObjectIdentifiers
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self)
  {
    v5 = [objc_getProperty(self v3];
    allObjects = [v5 allObjects];
    [v4 addObjectsFromArray:allObjects];

    Property = objc_getProperty(self, v7, 64, 1);
  }

  else
  {
    keyEnumerator = [0 keyEnumerator];
    allObjects2 = [keyEnumerator allObjects];
    [v4 addObjectsFromArray:allObjects2];

    Property = 0;
  }

  keyEnumerator2 = [Property keyEnumerator];
  allObjects3 = [keyEnumerator2 allObjects];
  [v4 addObjectsFromArray:allObjects3];

  v11 = [v4 copy];

  return v11;
}

- (void)configure
{
  selfCopy = self;
  if (self)
  {
    os_unfair_lock_lock_with_options();
    selfCopy->_isInitialized = 1;
    os_unfair_lock_unlock(&selfCopy->_lock);
    self = objc_getProperty(selfCopy, v3, 32, 1);
  }

  backingStoreController = [(HMDSettingsController *)self backingStoreController];
  [backingStoreController registerForSettingsTransactions:selfCopy];

  delegate = [(HMDSettingsController *)&selfCopy->super.super.isa delegate];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__HMDSettingsController_configure__block_invoke;
  v6[3] = &unk_2797359D8;
  v6[4] = selfCopy;
  [delegate settingsController:selfCopy didUpdateWithCompletion:v6];
}

void __34__HMDSettingsController_configure__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Updated settings on configure.", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
    v2 = vars8;
  }

  return [(HMDSettingsController *)self logIdentifier];
}

- (HMDSettingsController)initWithDependency:(id)dependency delegate:(id)delegate
{
  dependencyCopy = dependency;
  delegateCopy = delegate;
  v20.receiver = self;
  v20.super_class = HMDSettingsController;
  v9 = [(HMDSettingsController *)&v20 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_dependency, dependency);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    messageHandler = [dependencyCopy messageHandler];
    messageHandler = v10->_messageHandler;
    v10->_messageHandler = messageHandler;

    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    groupsMap = v10->_groupsMap;
    v10->_groupsMap = strongToWeakObjectsMapTable;

    strongToWeakObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    settingsMap = v10->_settingsMap;
    v10->_settingsMap = strongToWeakObjectsMapTable2;

    [dependencyCopy setTransactionReceiver:v10];
    parentIdentifier = [dependencyCopy parentIdentifier];
    userUUID = v10->_userUUID;
    v10->_userUUID = parentIdentifier;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_81161 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_81161, &__block_literal_global_81162);
  }

  v3 = logCategory__hmf_once_v1_81163;

  return v3;
}

uint64_t __36__HMDSettingsController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_81163;
  logCategory__hmf_once_v1_81163 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end