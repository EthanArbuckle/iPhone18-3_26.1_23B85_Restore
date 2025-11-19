@interface HMDSettingsController
+ (id)logCategory;
- (HMDSettingGroup)_cloneGroupFilteringKeyPath:(void *)a1;
- (HMDSettingsController)initWithDependency:(id)a3 delegate:(id)a4;
- (NSArray)allObjectIdentifiers;
- (id)_flattenedSettingControllerRoot:(void *)a3 withCurrentPath:(void *)a4 andReturnDictionary:;
- (id)_keyPathsFromGroup:(void *)a1 currentPath:(void *)a2;
- (id)_keyPathsToModelInModelIDToModelLookup:(void *)a1 parentIDToModelIDsLookup:(void *)a2 currentID:(void *)a3 currentPath:(void *)a4;
- (id)_settingForKeyPathWithGroups:(void *)a3 settings:(void *)a4 keyPath:;
- (id)delegate;
- (id)logIdentifier;
- (id)migrateSettingsTransactionWithTransaction:(id)a3 error:(id *)a4;
- (id)modelsToMakeSettings;
- (id)modelsToMigrateSettings;
- (id)settingForIdentifier:(id)a1;
- (id)settingForKeyPath:(id)a3;
- (id)settingGroupForIdentifier:(id)a1;
- (id)settingValuesByKeyPathWithPrefix:(id)a3;
- (void)_handleAddedConstraintModel:(void *)a1 shouldNotify:(void *)a2;
- (void)_handleAddedGroupModel:(int)a3 shouldNotify:;
- (void)_handleAddedSettingModel:(int)a3 shouldNotify:;
- (void)configure;
- (void)encodeWithCoder:(id)a3;
- (void)loadWithModels:(id)a3;
- (void)settingsHierarchyDidChange;
- (void)transactionSettingConstraintModelUpdated:(id)a3 previousModel:(id)a4;
- (void)transactionSettingGroupModelUpdated:(id)a3 previousModel:(id)a4;
- (void)transactionSettingModelUpdated:(id)a3 previousModel:(id)a4;
- (void)updateRootGroup:(id)a3;
- (void)updateWithEncodedValue:(id)a3 onSettingKeyPath:(id)a4 completion:(id)a5;
- (void)updateWithValue:(id)a3 onSetting:(id)a4 completion:(id)a5;
@end

@implementation HMDSettingsController

- (void)transactionSettingConstraintModelUpdated:(id)a3 previousModel:(id)a4
{
  if (self)
  {
    v6 = a3;
    os_unfair_lock_lock_with_options();
    isInitialized = self->_isInitialized;
    os_unfair_lock_unlock(&self->_lock);
    if (isInitialized)
    {
      [HMDSettingsController _handleAddedConstraintModel:v6 shouldNotify:?];
    }
  }
}

- (void)_handleAddedConstraintModel:(void *)a1 shouldNotify:(void *)a2
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [(HMDSettingConstraint *)v3 hmbParentModelID];
    v6 = [(HMDSettingsController *)a1 settingForIdentifier:v5];

    if (v6)
    {
      v7 = [HMDSettingConstraint alloc];
      v8 = [(HMDSettingConstraint *)v4 hmbModelID];
      v9 = [(HMDSettingConstraint *)v4 hmbParentModelID];
      v10 = [(HMDSettingConstraint *)v4 type];
      v11 = [(HMDSettingConstraint *)v4 numberValue];
      v12 = [(HMDSettingConstraint *)v4 dataValue];
      v13 = [(HMDSettingConstraint *)v7 initWithIdentifier:v8 parentIdentifier:v9 type:v10 numberValue:v11 dataValue:v12];

      if (v13)
      {
        [v6 addConstraint:v13];
        v14 = objc_autoreleasePoolPush();
        v15 = a1;
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
        v19 = v15;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          v22 = [(HMDSettingConstraint *)v13 identifier];
          v23 = [v6 name];
          v39 = 138543874;
          v40 = v21;
          v41 = 2112;
          v42 = v22;
          v43 = 2112;
          v44 = v23;
          _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Added settings constraint %@ to %@", &v39, 0x20u);
        }

        objc_autoreleasePoolPop(v18);
        [(HMDSettingsController *)v19 settingsHierarchyDidChange];
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        v35 = a1;
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
      v26 = a1;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [(HMDSettingConstraint *)v4 hmbParentModelID];
        v39 = 138543874;
        v40 = v28;
        v41 = 2112;
        v42 = v4;
        v43 = 2112;
        v44 = v29;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEBUG, "%{public}@Couldn't find setting for received constraint model %@, parent %@", &v39, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v30 = objc_autoreleasePoolPush();
      v31 = v26;
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

- (id)settingForIdentifier:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v2 = [objc_getProperty(v2 v4];
  }

  return v2;
}

- (void)settingsHierarchyDidChange
{
  if (a1)
  {
    v3 = objc_getProperty(a1, a2, 48, 1);
    v5 = [objc_getProperty(a1 v4];
    v7 = [objc_getProperty(a1 v6];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__HMDSettingsController_settingsHierarchyDidChange__block_invoke;
    v8[3] = &unk_279729170;
    v8[4] = a1;
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

- (void)transactionSettingModelUpdated:(id)a3 previousModel:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hmbModelID];
  v9 = [(HMDSettingsController *)self settingForIdentifier:v8];

  if (v9)
  {
    v10 = self;
    v11 = v9;
    v12 = v6;
    v13 = v11;
    v14 = v12;
    v15 = [v13 type];
    v16 = [v15 integerValue];

    if (v16 <= 2)
    {
      if (v16 == 1)
      {
        v33 = [v14 dataValue];

        if (v33)
        {
          v34 = objc_alloc(MEMORY[0x277CD1DD0]);
          v19 = [v14 dataValue];
          v20 = [v34 initDataSettingWithValue:v19];
          goto LABEL_21;
        }
      }

      else if (v16 == 2)
      {
        v23 = [v14 numberValue];

        if (v23)
        {
          v24 = objc_alloc(MEMORY[0x277CD1DD0]);
          v19 = [v14 numberValue];
          v20 = [v24 initNumberSettingWithValue:v19];
          goto LABEL_21;
        }
      }
    }

    else
    {
      switch(v16)
      {
        case 5:
LABEL_25:
          v32 = 0;
LABEL_26:

          if (v32 && [v13 updateWithSettingValue:v32])
          {
            v39 = [(HMDSettingsController *)&v10->super.super.isa delegate];
            *buf = MEMORY[0x277D85DD0];
            *&buf[8] = 3221225472;
            *&buf[16] = ____transactionSettingUpdated_block_invoke;
            v43 = &unk_2797359D8;
            v44 = v10;
            [v39 settingsController:v44 didUpdateWithCompletion:buf];
          }

          goto LABEL_30;
        case 4:
          v25 = [v14 selectionIdentifier];
          if (v25)
          {
            v26 = v25;
            v27 = [v14 selectionValue];

            if (v27)
            {
              v28 = objc_alloc(MEMORY[0x277CD1DD0]);
              v41 = [v13 type];
              v29 = [v41 integerValue];
              v30 = [v14 selectionIdentifier];
              v31 = [v14 selectionValue];
              v32 = [v28 initWithType:v29 stringValue:0 numberValue:0 dataValue:0 selectionIdentifier:v30 selectionValue:v31];

              goto LABEL_26;
            }
          }

          break;
        case 3:
          v17 = [v14 stringValue];

          if (v17)
          {
            v18 = objc_alloc(MEMORY[0x277CD1DD0]);
            v19 = [v14 stringValue];
            v20 = [v18 initStringSettingWithValue:v19];
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
      v38 = [v13 type];
      *buf = 138543618;
      *&buf[4] = v37;
      *&buf[12] = 2112;
      *&buf[14] = v38;
      _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Unknown setting type %@ will not attempt to decode value in transaction", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    goto LABEL_25;
  }

  if (self)
  {
    v21 = v6;
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

- (void)_handleAddedSettingModel:(int)a3 shouldNotify:
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    v6 = [[HMDSetting alloc] initWithModel:v5];
    if (v6)
    {
      v7 = [v5 hmbParentModelID];
      v8 = [(HMDSettingsController *)a1 settingGroupForIdentifier:v7];
      v9 = objc_autoreleasePoolPush();
      v10 = a1;
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
        [(HMDSettingsController *)v10 settingsHierarchyDidChange];
        if (a3)
        {
          WeakRetained = objc_loadWeakRetained(v10 + 5);
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __63__HMDSettingsController__handleAddedSettingModel_shouldNotify___block_invoke;
          v22[3] = &unk_2797359D8;
          v22[4] = v10;
          [WeakRetained settingsController:v10 didUpdateWithCompletion:v22];
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
          v26 = v7;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Parent group not found to add setting in transaction for identifier %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = a1;
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

- (id)settingGroupForIdentifier:(id)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    v2 = [objc_getProperty(v2 v4];
  }

  return v2;
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

- (void)transactionSettingGroupModelUpdated:(id)a3 previousModel:(id)a4
{
  v9 = a3;
  v5 = [v9 hmbModelID];
  v6 = [(HMDSettingsController *)self settingGroupForIdentifier:v5];

  if (self && !v6)
  {
    v7 = v9;
    os_unfair_lock_lock_with_options();
    isInitialized = self->_isInitialized;
    os_unfair_lock_unlock(&self->_lock);
    if (isInitialized)
    {
      [(HMDSettingsController *)self _handleAddedGroupModel:v7 shouldNotify:1];
    }
  }
}

- (void)_handleAddedGroupModel:(int)a3 shouldNotify:
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a1)
  {
    v6 = [[HMDSettingGroup alloc] initWithModel:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [(HMDSettingGroup *)v6 parentIdentifier];
      v10 = [objc_getProperty(a1 v9];
      v11 = [v8 hmf_isEqualToUUID:v10];

      if (v11)
      {
        v12 = objc_autoreleasePoolPush();
        v13 = a1;
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
        v16 = v7;
        if (objc_getProperty(v13, v17, 48, 1))
        {
          v19 = [objc_getProperty(v13 v18];
          v20 = [(HMDSettingGroup *)v16 identifier];
          v21 = [v19 hmf_isEqualToUUID:v20];

          if ((v21 & 1) == 0)
          {
            v22 = objc_autoreleasePoolPush();
            v23 = v13;
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
          v39 = v13;
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            v41 = HMFGetLogIdentifier();
            v43 = [objc_getProperty(v39 v42];
            *buf = 138543874;
            v48 = v41;
            v49 = 2112;
            v50 = v16;
            v51 = 2112;
            v52 = v43;
            _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Adding root group %@ for user %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v38);
          [v39 updateRootGroup:v16];
        }
      }

      else
      {
        v16 = [(HMDSettingGroup *)v5 hmbParentModelID];
        v30 = [(HMDSettingsController *)a1 settingGroupForIdentifier:v16];
        v31 = objc_autoreleasePoolPush();
        v32 = a1;
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
          [(HMDSettingsController *)v32 settingsHierarchyDidChange];
          if (a3)
          {
            WeakRetained = objc_loadWeakRetained(v32 + 5);
            v46[0] = MEMORY[0x277D85DD0];
            v46[1] = 3221225472;
            v46[2] = __61__HMDSettingsController__handleAddedGroupModel_shouldNotify___block_invoke;
            v46[3] = &unk_2797359D8;
            v46[4] = v32;
            [WeakRetained settingsController:v32 didUpdateWithCompletion:v46];
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
            v50 = v16;
            _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Parent group not found to add group in transaction for identifier %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v31);
        }
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = a1;
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

- (void)loadWithModels:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a3;
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
          v18 = self;
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

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  if (self && objc_getProperty(self, v4, 48, 1) && [v9 hmd_isForXPCTransport] && objc_msgSend(v9, "hmd_isForXPCTransportEntitledForSPIAccess"))
  {
    v7 = [(HMDSettingsController *)self _prunedSettingsGroupByRemovingKeyPathsFromGroup:objc_getProperty(self, v5, 48, 1)];
    if (v7)
    {
      v8 = [objc_getProperty(self v6];
      [v9 encodeObject:v7 forKey:v8];
    }
  }
}

- (HMDSettingGroup)_cloneGroupFilteringKeyPath:(void *)a1
{
  v4 = a2;
  if (!a1)
  {
    goto LABEL_4;
  }

  v5 = [objc_getProperty(a1 v3];
  v6 = [v5 count];

  if (v6)
  {
    v8 = [objc_getProperty(a1 v7];
    v9 = [v4 keyPath];
    v10 = [v8 containsObject:v9];

    if (v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_7;
    }

    v12 = [MEMORY[0x277CBEB18] array];
    v13 = [MEMORY[0x277CBEB18] array];
    v14 = [v4 groups];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __53__HMDSettingsController__cloneGroupFilteringKeyPath___block_invoke;
    v31[3] = &unk_279729198;
    v31[4] = a1;
    v32 = v12;
    v15 = v12;
    [v14 na_each:v31];

    v16 = [v4 settings];
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __53__HMDSettingsController__cloneGroupFilteringKeyPath___block_invoke_2;
    v28 = &unk_2797291C0;
    v29 = a1;
    v30 = v13;
    v17 = v13;
    [v16 na_each:&v25];

    v18 = [HMDSettingGroup alloc];
    v19 = [v4 identifier];
    v20 = [v4 parentIdentifier];
    v21 = [v4 name];
    v22 = [v15 copy];
    v23 = [v17 copy];
    v11 = [(HMDSettingGroup *)v18 initWithIdentifier:v19 parentIdentifier:v20 name:v21 groups:v22 settings:v23];
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

- (id)migrateSettingsTransactionWithTransaction:(id)a3 error:(id *)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v6, 48, 1);
  }

  else
  {
    Property = 0;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
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
    v15 = [(HMDSettingsController *)v10 modelsToMigrateSettings];
    if (self)
    {
      v16 = objc_getProperty(v10, v14, 48, 1);
    }

    else
    {
      v16 = 0;
    }

    v18 = [v16 identifier];
    if (self)
    {
      v19 = objc_getProperty(v10, v17, 48, 1);
    }

    else
    {
      v19 = 0;
    }

    v46 = [v19 parentIdentifier];
    [(HMDSettingsController *)v10 updateRootGroup:0];
    v20 = [v15 count];
    v21 = objc_autoreleasePoolPush();
    v22 = v10;
    v23 = HMFGetOSLogHandle();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_INFO);
    if (v20)
    {
      if (v24)
      {
        v25 = HMFGetLogIdentifier();
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "count")}];
        *buf = 138543618;
        v53 = v25;
        v54 = 2112;
        v55 = v26;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Migrating settings with %@ models", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v28 = v46;
      if (self)
      {
        v29 = objc_getProperty(v22, v27, 32, 1);
      }

      else
      {
        v29 = 0;
      }

      v30 = [v29 migrationProvider];
      [v30 applyConditionalValueUpdateToModels:v15];

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v31 = v15;
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

            [v7 addSettingModel:*(*(&v47 + 1) + 8 * i)];
          }

          v33 = [v31 countByEnumeratingWithState:&v47 objects:v51 count:16];
        }

        while (v33);
      }

      v36 = [[HMDSettingRootGroupModel alloc] initWithModelID:v18 parentModelID:v46];
      [v7 addSettingModel:v36];
      v37 = v7;
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
      if (a4)
      {
        *a4 = 0;
      }

      v43 = v7;
      v28 = v46;
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
    v15 = v39;
    if (v39)
    {
      v40 = v39;
      *a4 = v15;
    }

    v41 = v7;
  }

  v44 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)modelsToMigrateSettings
{
  v2 = self;
  v122 = *MEMORY[0x277D85DE8];
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  v4 = [(HMDSettingsController *)self loadMetadata];
  if (v4)
  {
    if (v2)
    {
      Property = objc_getProperty(v2, v3, 32, 1);
    }

    else
    {
      Property = 0;
    }

    v6 = [Property metadataParser];
    v7 = [v6 modelsFromMetadata:v4];

    if (v7)
    {
      if (v2)
      {
        v9 = objc_getProperty(v2, v8, 48, 1);
      }

      else
      {
        v9 = 0;
      }

      v10 = objc_autoreleasePoolPush();
      selfa = v2;
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

        v99 = v4;

        objc_autoreleasePoolPop(v10);
        v98 = v7;
        v14 = v7;
        v15 = v14;
        v97 = v2;
        if (v2)
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
                v24 = [v23 hmbModelID];
                [v16 setObject:v23 forKey:v24];

                v25 = [v23 hmbParentModelID];
                v26 = [v17 objectForKey:v25];

                if (!v26)
                {
                  v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
                  v27 = [v23 hmbParentModelID];
                  [v17 setObject:v26 forKey:v27];
                }

                v28 = [v23 hmbModelID];
                [v26 addObject:v28];
              }

              v20 = [v18 countByEnumeratingWithState:&v111 objects:buf count:16];
            }

            while (v20);
          }

          p_isa = &selfa->super.super.isa;
          v31 = [objc_getProperty(selfa v30];
          v32 = [v17 objectForKey:v31];
          v33 = [v32 allObjects];
          v34 = [v33 objectAtIndexedSubscript:0];

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

        v37 = [(HMDSettingsController *)p_isa delegate];
        v38 = [v37 settingsControllerFollowerKeyPaths:p_isa];

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
                v52 = [v50 internalValue];
                v53 = [v52 type];
                v54 = [v48 type];
                v55 = [v54 integerValue];

                v39 = v102;
                if (v53 == v55)
                {
                  v56 = [v48 type];
                  v57 = [v56 integerValue];

                  if (v57 == 2)
                  {
                    v58 = objc_autoreleasePoolPush();
                    v59 = p_isa;
                    v60 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                    {
                      HMFGetLogIdentifier();
                      v61 = v101 = v58;
                      v62 = [v48 name];
                      v63 = [v50 internalValue];
                      *buf = 138543874;
                      v117 = v61;
                      v118 = 2112;
                      v119 = v62;
                      v120 = 2112;
                      v121 = v63;
                      _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_DEFAULT, "%{public}@Will migrate value of %@ as %@", buf, 0x20u);

                      p_isa = &selfa->super.super.isa;
                      v39 = v102;

                      v58 = v101;
                    }

                    objc_autoreleasePoolPop(v58);
                    v64 = [v50 internalValue];
                    v65 = [v64 numberValue];
                    [v48 setNumberValue:v65];
                  }
                }
              }
            }

            v41 = [v39 countByEnumeratingWithState:&v107 objects:v115 count:16];
          }

          while (v41);
        }

        v66 = [v96 allKeys];
        [v105 removeObjectsForKeys:v66];

        v67 = v105;
        v106 = v96;
        if (v97)
        {
          v68 = [v67 allKeys];
          v111 = 0u;
          v112 = 0u;
          v113 = 0u;
          v114 = 0u;
          obja = v68;
          v69 = [v68 countByEnumeratingWithState:&v111 objects:buf count:16];
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
                  v78 = [v76 identifier];
                  v79 = [v74 copyWithNewParentModelID:v78];

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
        v85 = [v67 allValues];

        v7 = v98;
        v4 = v99;
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
      v90 = v2;
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
    v85 = 0;
LABEL_66:

    goto LABEL_67;
  }

  v86 = objc_autoreleasePoolPush();
  v87 = v2;
  v88 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
  {
    v89 = HMFGetLogIdentifier();
    *buf = 138543362;
    v117 = v89;
    _os_log_impl(&dword_2531F8000, v88, OS_LOG_TYPE_ERROR, "%{public}@Unable to load settings metadata from dependency", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v86);
  v85 = 0;
LABEL_67:

  v94 = *MEMORY[0x277D85DE8];

  return v85;
}

- (id)_keyPathsFromGroup:(void *)a1 currentPath:(void *)a2
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = MEMORY[0x277CCACA8];
  v7 = [v3 name];
  v8 = [v6 stringWithFormat:@"%@.%@", v4, v7];

  [v5 setValue:v3 forKey:v8];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v29 = v3;
  v9 = [v3 settings];
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        v15 = MEMORY[0x277CCACA8];
        v16 = [v14 name];
        v17 = [v15 stringWithFormat:@"%@.%@", v8, v16];

        [v5 setValue:v14 forKey:v17];
        v18 = [v14 constraintsByKeyPathWithCurrentKeyPath:v17];
        [v5 addEntriesFromDictionary:v18];
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v11);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = [v29 groups];
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v30 + 1) + 8 * j);
        v25 = [v8 copy];
        v26 = [HMDSettingsController _keyPathsFromGroup:v24 currentPath:v25];
        [v5 addEntriesFromDictionary:v26];
      }

      v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v21);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_keyPathsToModelInModelIDToModelLookup:(void *)a1 parentIDToModelIDsLookup:(void *)a2 currentID:(void *)a3 currentPath:(void *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = [v7 objectForKey:v9];
  v13 = MEMORY[0x277CCACA8];
  v14 = [v12 nameForKeyPath];
  v15 = [v13 stringWithFormat:@"%@.%@", v10, v14];

  v26 = v12;
  [v11 setObject:v12 forKey:v15];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = v9;
  v16 = [v8 objectForKey:v9];
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
        v23 = [HMDSettingsController _keyPathsToModelInModelIDToModelLookup:v7 parentIDToModelIDsLookup:v8 currentID:v21 currentPath:v22];
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
  v2 = self;
  v18 = *MEMORY[0x277D85DE8];
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  v3 = [(HMDSettingsController *)self loadMetadata];
  v4 = objc_autoreleasePoolPush();
  v5 = v2;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Creating settings models using metadata", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    if (v2)
    {
      Property = objc_getProperty(v5, v9, 32, 1);
    }

    else
    {
      Property = 0;
    }

    v11 = [Property metadataParser];
    v12 = [v11 modelsFromMetadata:v3];
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

- (void)updateRootGroup:(id)a3
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, a3, 48);

    [(HMDSettingsController *)self settingsHierarchyDidChange];
  }
}

- (id)settingValuesByKeyPathWithPrefix:(id)a3
{
  v5 = a3;
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
  v9 = [v7 dictionary];
  v10 = [(HMDSettingsController *)self _flattenedSettingControllerRoot:v8 withCurrentPath:v5 andReturnDictionary:v9];

  return v10;
}

- (id)_flattenedSettingControllerRoot:(void *)a3 withCurrentPath:(void *)a4 andReturnDictionary:
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    if (v7)
    {
      if ([v8 length])
      {
        v10 = [v8 stringByAppendingString:@"."];

        v8 = v10;
      }

      v11 = v8;
      v12 = [v7 name];
      v8 = [v8 stringByAppendingString:v12];

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v13 = [v7 groups];
      v14 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
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
              objc_enumerationMutation(v13);
            }

            v18 = [(HMDSettingsController *)a1 _flattenedSettingControllerRoot:v8 withCurrentPath:v9 andReturnDictionary:?];
          }

          v15 = [v13 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v15);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v32 = v7;
      v19 = [v7 settings];
      v20 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v33 + 1) + 8 * j);
            v25 = [v24 name];

            if (v25)
            {
              v26 = [v8 stringByAppendingString:@"."];
              v27 = [v24 name];
              v28 = [v26 stringByAppendingString:v27];

              v29 = [v24 value];
              [v9 setObject:v29 forKeyedSubscript:v28];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v21);
      }

      v7 = v32;
    }

    a1 = v9;
  }

  v30 = *MEMORY[0x277D85DE8];

  return a1;
}

- (void)updateWithValue:(id)a3 onSetting:(id)a4 completion:(id)a5
{
  v119 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v110 = 0;
  LODWORD(a5) = [v9 isValidValue:v8 error:&v110];
  v94 = v110;
  if (!a5)
  {
    v77 = objc_autoreleasePoolPush();
    v78 = self;
    v79 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      v80 = HMFGetLogIdentifier();
      *buf = 138543874;
      v114 = v80;
      v115 = 2112;
      v116 = v8;
      v117 = 2112;
      v118 = v9;
      _os_log_impl(&dword_2531F8000, v79, OS_LOG_TYPE_ERROR, "%{public}@Received value %@ is not valid for setting %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v77);
    v81 = v94;
    if (!v94)
    {
      v83 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
      v10[2](v10, v83);

      goto LABEL_63;
    }

    v10[2](v10, v94);
    goto LABEL_64;
  }

  v11 = [v9 wouldValueUpdate:v8];
  v12 = objc_autoreleasePoolPush();
  v98 = v9;
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
      v118 = v8;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Skipping update due to setting: %@ matching update setting value: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v10[2](v10, 0);
    goto LABEL_63;
  }

  if (v14)
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v98 value];
    *buf = 138543874;
    v114 = v15;
    v115 = 2112;
    v116 = v16;
    v117 = 2112;
    v118 = v8;
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
  v20 = [v98 identifier];
  v21 = [v98 parentIdentifier];
  v22 = [v19 settingModelForUpdateWithIdentifier:v20 parentIdentifier:v21 value:v8];

  v92 = v22;
  if (!v22)
  {
    v84 = objc_autoreleasePoolPush();
    v85 = self;
    v86 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v87 = HMFGetLogIdentifier();
      *buf = 138543874;
      v114 = v87;
      v115 = 2112;
      v116 = v8;
      v117 = 2112;
      v118 = v98;
      _os_log_impl(&dword_2531F8000, v86, OS_LOG_TYPE_ERROR, "%{public}@Failed to create model to update value %@ on setting %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v84);
    v76 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Created model is nil" reason:@"Unable to create update model" suggestion:0];
    v10[2](v10, v76);
    goto LABEL_62;
  }

  v23 = [(HMDSettingsController *)&self->super.super.isa delegate];
  v24 = [v98 keyPath];
  v93 = [v23 settingsController:self willUpdateSettingAtKeyPath:v24 withValue:v8];

  if (self)
  {
    v26 = objc_getProperty(self, v25, 32, 1);
  }

  else
  {
    v26 = 0;
  }

  v27 = [v26 backingStoreController];
  v28 = [v27 settingTransactionWithName:@"Update Setting Value"];

  v97 = v28;
  [v28 addSettingModel:v22];
  if (!v93)
  {
    goto LABEL_48;
  }

  v90 = v9;
  v91 = v8;
  v89 = v10;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v30 = [v93 settingsToUpdate];
  v31 = [v30 countByEnumeratingWithState:&v106 objects:v112 count:16];
  v95 = self;
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
        objc_enumerationMutation(v30);
      }

      v34 = *(*(&v106 + 1) + 8 * v33);
      v35 = [v34 keyPath];
      v36 = [(HMDSettingsController *)self settingForKeyPath:v35];

      if (!v36)
      {
        v51 = objc_autoreleasePoolPush();
        v52 = self;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = HMFGetLogIdentifier();
          v55 = [v34 keyPath];
          *buf = 138543874;
          v114 = v54;
          v115 = 2112;
          v116 = v55;
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

      v37 = [v34 settingValue];
      v38 = [v36 isValidValue:v37 error:0];

      if ((v38 & 1) == 0)
      {
        v51 = objc_autoreleasePoolPush();
        v52 = self;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = HMFGetLogIdentifier();
          v55 = [v34 settingValue];
          *buf = 138543874;
          v114 = v54;
          v115 = 2112;
          v116 = v55;
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
      v42 = [v36 identifier];
      v43 = [v36 parentIdentifier];
      v44 = [v34 settingValue];
      v45 = [v41 settingModelForUpdateWithIdentifier:v42 parentIdentifier:v43 value:v44];

      v46 = objc_autoreleasePoolPush();
      if (v45)
      {
        v47 = v98;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
        {
          v49 = HMFGetLogIdentifier();
          v50 = [v34 settingValue];
          *buf = 138543874;
          v114 = v49;
          v115 = 2112;
          v116 = v45;
          v117 = 2112;
          v118 = v50;
          _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Added additional setting model %@ update with value %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v46);
        [v97 addSettingModel:v45];
      }

      else
      {
        v58 = v95;
        v59 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          v60 = HMFGetLogIdentifier();
          v61 = [v34 settingValue];
          *buf = 138543874;
          v114 = v60;
          v115 = 2112;
          v116 = v61;
          v117 = 2112;
          v118 = 0;
          _os_log_impl(&dword_2531F8000, v59, OS_LOG_TYPE_ERROR, "%{public}@Failed to create model to update value %@ on constrained setting %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v46);
      }

      self = v95;
LABEL_34:

      ++v33;
    }

    while (v32 != v33);
    v62 = [v30 countByEnumeratingWithState:&v106 objects:v112 count:16];
    v32 = v62;
  }

  while (v62);
LABEL_38:

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v63 = [v93 modelsToUpdate];
  v64 = [v63 countByEnumeratingWithState:&v102 objects:v111 count:16];
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
          objc_enumerationMutation(v63);
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

      v65 = [v63 countByEnumeratingWithState:&v102 objects:v111 count:16];
    }

    while (v65);
  }

  v9 = v90;
  v8 = v91;
  v10 = v89;
  self = v95;
LABEL_48:
  if (self)
  {
    v73 = objc_getProperty(self, v29, 32, 1);
  }

  else
  {
    v73 = 0;
  }

  v74 = [v73 backingStoreController];
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __62__HMDSettingsController_updateWithValue_onSetting_completion___block_invoke;
  v99[3] = &unk_279733F30;
  v100 = v93;
  v101 = v10;
  v75 = v93;
  v76 = v97;
  [v74 runSettingTransaction:v97 completion:v99];

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

- (void)updateWithEncodedValue:(id)a3 onSettingKeyPath:(id)a4 completion:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDSettingsController *)self settingForKeyPath:v9];
  v12 = v11;
  if (!v11)
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v22;
      v34 = 2112;
      v35 = v9;
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
    v14 = self;
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
    v10[2](v10, v23);
    goto LABEL_16;
  }

  v31 = 0;
  v24 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v31];
  v23 = v31;
  if (v24)
  {
    [(HMDSettingsController *)self updateWithValue:v24 onSetting:v12 completion:v10];
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
      v33 = v28;
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive setting value from encoded value: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    v10[2](v10, v29);
  }

LABEL_16:
  v30 = *MEMORY[0x277D85DE8];
}

- (id)settingForKeyPath:(id)a3
{
  v5 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 48, 1);
  }

  else
  {
    Property = 0;
  }

  v8 = [Property groups];
  if (self)
  {
    v9 = objc_getProperty(self, v7, 48, 1);
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 settings];
  v11 = [(HMDSettingsController *)self _settingForKeyPathWithGroups:v8 settings:v10 keyPath:v5];

  return v11;
}

- (id)_settingForKeyPathWithGroups:(void *)a3 settings:(void *)a4 keyPath:
{
  v39 = *MEMORY[0x277D85DE8];
  v28 = a2;
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = v7;
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
          v15 = [v14 keyPath];
          v16 = [v15 isEqualToString:v8];

          if (v16)
          {
            a1 = v14;
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
          v22 = [v21 keyPath];
          v23 = [v8 containsString:v22];

          if (v23)
          {
            v24 = [v21 groups];
            v25 = [v21 settings];
            a1 = [(HMDSettingsController *)a1 _settingForKeyPathWithGroups:v24 settings:v25 keyPath:v8];

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

    a1 = 0;
LABEL_21:
  }

  v26 = *MEMORY[0x277D85DE8];

  return a1;
}

- (NSArray)allObjectIdentifiers
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self)
  {
    v5 = [objc_getProperty(self v3];
    v6 = [v5 allObjects];
    [v4 addObjectsFromArray:v6];

    Property = objc_getProperty(self, v7, 64, 1);
  }

  else
  {
    v13 = [0 keyEnumerator];
    v14 = [v13 allObjects];
    [v4 addObjectsFromArray:v14];

    Property = 0;
  }

  v9 = [Property keyEnumerator];
  v10 = [v9 allObjects];
  [v4 addObjectsFromArray:v10];

  v11 = [v4 copy];

  return v11;
}

- (void)configure
{
  v2 = self;
  if (self)
  {
    os_unfair_lock_lock_with_options();
    v2->_isInitialized = 1;
    os_unfair_lock_unlock(&v2->_lock);
    self = objc_getProperty(v2, v3, 32, 1);
  }

  v4 = [(HMDSettingsController *)self backingStoreController];
  [v4 registerForSettingsTransactions:v2];

  v5 = [(HMDSettingsController *)&v2->super.super.isa delegate];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__HMDSettingsController_configure__block_invoke;
  v6[3] = &unk_2797359D8;
  v6[4] = v2;
  [v5 settingsController:v2 didUpdateWithCompletion:v6];
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

- (HMDSettingsController)initWithDependency:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = HMDSettingsController;
  v9 = [(HMDSettingsController *)&v20 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_dependency, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v11 = [v7 messageHandler];
    messageHandler = v10->_messageHandler;
    v10->_messageHandler = v11;

    v13 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    groupsMap = v10->_groupsMap;
    v10->_groupsMap = v13;

    v15 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    settingsMap = v10->_settingsMap;
    v10->_settingsMap = v15;

    [v7 setTransactionReceiver:v10];
    v17 = [v7 parentIdentifier];
    userUUID = v10->_userUUID;
    v10->_userUUID = v17;
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