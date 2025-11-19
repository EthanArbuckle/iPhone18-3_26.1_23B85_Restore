@interface HMDCompositeSettingsController
+ (id)logCategory;
- (BOOL)configured;
- (HMDCompositeSettingsController)initWithDatabaseAdapter:(id)a3 model:(Class)a4 homeUUID:(id)a5 ownerUUID:(id)a6 logEventSubmitter:(id)a7 settingKeyPathBlockList:(id)a8;
- (HMDCompositeSettingsController)initWithDatabaseAdapter:(id)a3 model:(Class)a4 homeUUID:(id)a5 ownerUUID:(id)a6 settingKeyPathBlockList:(id)a7;
- (HMDCompositeSettingsControllerDelegate)delegate;
- (HMDCompositeSettingsZoneManager)zoneManager;
- (id)_metricSubmittingSingleFetchCompletionFromCompletion:(void *)a1;
- (id)_metricSubmittingSingleUpdateCompletionFromCompletion:(void *)a1;
- (id)_migrateUpdatedSettings:(void *)a1;
- (id)_settingFromSetting:(id)a3 value:(id)a4 error:(id *)a5;
- (id)emptyModelForTransaction;
- (id)fetchSynchronousSettingsForKeyPaths:(id)a3 callerVersion:(id)a4 callerPrivilege:(unint64_t)a5;
- (id)logIdentifier;
- (void)_createSettingsFromModel:(id)a3;
- (void)_fetchSettingForKeyPath:(void *)a3 callerVersion:(uint64_t)a4 callerPrivilege:(void *)a5 completion:;
- (void)_handleModelCreationOrUpdate:(void *)a1;
- (void)database:(id)a3 didConfigureWithError:(id)a4;
- (void)database:(id)a3 didProcessDeletionForModel:(id)a4;
- (void)fetchSettingForKeyPath:(id)a3 callerVersion:(id)a4 callerPrivilege:(unint64_t)a5 completion:(id)a6;
- (void)fetchSettingsForKeyPaths:(id)a3 callerVersion:(id)a4 callerPrivilege:(unint64_t)a5 completion:(id)a6;
- (void)setConfigured:(BOOL)a3;
- (void)start;
- (void)updateSettingForKeyPath:(id)a3 value:(id)a4 callerVersion:(id)a5 completion:(id)a6;
- (void)updateSettingsForKeyPaths:(id)a3 callerVersion:(id)a4 completion:(id)a5;
@end

@implementation HMDCompositeSettingsController

- (HMDCompositeSettingsZoneManager)zoneManager
{
  WeakRetained = objc_loadWeakRetained(&self->_zoneManager);

  return WeakRetained;
}

- (HMDCompositeSettingsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)database:(id)a3 didConfigureWithError:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *v33 = 138543618;
      *&v33[4] = v12;
      *&v33[12] = 2112;
      *&v33[14] = v8;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Error configuring database adapter: %@", v33, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    if (self)
    {
      v14 = objc_getProperty(self, v7, 64, 1);
      if (v14)
      {
        v15 = [objc_getProperty(self v13];
        dispatch_assert_queue_V2(v15);

        v17 = objc_getProperty(self, v16, 64, 1);
        v18 = [(HMDCompositeSettingsController *)self uuid];
        v19 = [v17 fetchModelWithID:v18];

        if (!v19)
        {
          v19 = [(HMDCompositeSettingsController *)self emptyModelForTransaction];
        }

        v21 = [(HMDCompositeSettingsController *)self _migrateUpdatedSettings:v19];
        *v33 = MEMORY[0x277D85DD0];
        *&v33[8] = 3221225472;
        *&v33[16] = __59__HMDCompositeSettingsController__migrateAndCreateSettings__block_invoke;
        v34 = &unk_27868A228;
        v35 = self;
        v36 = v19;
        v22 = v19;
        v23 = [v21 addSuccessBlock:v33];
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543362;
          v38 = v27;
          _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Nil database adapter (_migrateAndCreateSettings)", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v24);
        v23 = 0;
      }

      Property = objc_getProperty(self, v28, 64, 1);
    }

    else
    {
      Property = 0;
    }

    v30 = Property;
    v31 = [(HMDCompositeSettingsController *)self uuid];
    [v30 startObservingModelWithID:v31];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)emptyModelForTransaction
{
  v3 = objc_getProperty(a1, a2, 64, 1);
  v4 = [a1 uuid];
  v5 = [a1 uuid];
  v7 = [v3 emptyModelWithID:v4 parentModelID:v5 modelClass:{objc_getProperty(a1, v6, 40, 1)}];

  return v7;
}

- (id)_migrateUpdatedSettings:(void *)a1
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_getProperty(a1, v4, 64, 1);
  if (v6)
  {
    v7 = [objc_getProperty(a1 v5];
    dispatch_assert_queue_V2(v7);

    v8 = [MEMORY[0x277D2C900] futureWithNoResult];
    v9 = [v3 keyPathsToSettingsForMigration];
    v10 = objc_autoreleasePoolPush();
    v11 = a1;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v13;
      v34 = 2112;
      v35 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Settings to migrate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    if ([v9 count])
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __58__HMDCompositeSettingsController__migrateUpdatedSettings___block_invoke;
      v29[3] = &unk_278679670;
      v14 = v3;
      v30 = v14;
      v31 = v11;
      [v9 na_each:v29];
      v15 = MEMORY[0x277D2C900];
      v27 = MEMORY[0x277D85DD0];
      v28 = v14;
      v16 = MEMORY[0x277D2C938];
      v18 = [objc_getProperty(v11 v17];
      v19 = [v16 schedulerWithDispatchQueue:v18];
      v20 = [v15 futureWithBlock:&v27 scheduler:v19];
    }

    else
    {
      v20 = v8;
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
      v33 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Nil database adapter (_migrateUpdatedSettings)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v20 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v20;
}

void __58__HMDCompositeSettingsController__migrateUpdatedSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v15 = 0;
  [v7 setSetting:v6 forKeyPath:v5 withError:&v15];
  v8 = v15;
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 40);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = *(a1 + 32);
    *buf = 138543874;
    v17 = v12;
    v18 = 2112;
    v19 = v13;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating setting on model: %@, setting: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = *MEMORY[0x277D85DE8];
}

void __58__HMDCompositeSettingsController__migrateUpdatedSettings___block_invoke_31(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 64, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HMDCompositeSettingsController__migrateUpdatedSettings___block_invoke_2;
  v9[3] = &unk_27868A250;
  v10 = v4;
  v8 = v4;
  [Property addModel:v7 withOptionsLabel:@"HMDCompositeSettingController Migrate UninitializedSettings" completion:v9];
}

void __58__HMDCompositeSettingsController__migrateUpdatedSettings___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 finishWithError:a2];
  }

  else
  {
    v4 = NAEmptyResult();
    [v2 finishWithResult:v4];
  }
}

- (void)database:(id)a3 didProcessDeletionForModel:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (self)
  {
    v7 = objc_getProperty(self, v5, 64, 1);
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v7)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        v21 = 138543618;
        v22 = v12;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Processing  model deletion, model:%@", &v21, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v14 = objc_getProperty(v9, v13, 64, 1);
      v15 = [(HMDCompositeSettingsController *)v9 uuid];
      [v14 stopObservingModelWithID:v15];

      v16 = MEMORY[0x277CBEC10];
      objc_setProperty_atomic_copy(v9, v17, MEMORY[0x277CBEC10], 24);
      objc_setProperty_atomic_copy(v9, v18, v16, 32);
    }

    else
    {
      if (v11)
      {
        v19 = HMFGetLogIdentifier();
        v21 = 138543362;
        v22 = v19;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Nil database adapter (_handleModelDeletion)", &v21, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleModelCreationOrUpdate:(void *)a1
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (a1)
  {
    v5 = [objc_getProperty(a1 v3];
    if (v5)
    {
      v6 = [(HMDCompositeSettingsController *)a1 _migrateUpdatedSettings:v4];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __63__HMDCompositeSettingsController__handleModelCreationOrUpdate___block_invoke;
      v13[3] = &unk_278681018;
      v13[4] = a1;
      v14 = v4;
      v7 = [v6 addCompletionBlock:v13];
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = a1;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543362;
        v16 = v11;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Nil database (_handleModelCreationOrUpdate)", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_settingFromSetting:(id)a3 value:(id)a4 error:(id *)a5
{
  v166 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
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

  if (!v11)
  {
    v29 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v28 = v30;

    if (v28)
    {
      v31 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      v22 = v32;

      if (v22)
      {
        v33 = [HMDCompositeStringSetting alloc];
        v34 = [v22 stringValue];
        v35 = [v28 readVersion];
        v36 = [v28 writeVersion];
        self = [(HMDCompositeStringSetting *)v33 initWithValue:v34 readVersion:v35 writeVersion:v36];

        v14 = 0;
      }

      else
      {
        v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid string setting value" reason:0 suggestion:{@"Setting type is String, please pass a String value"}];
        v62 = objc_autoreleasePoolPush();
        v63 = self;
        v64 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v66 = v65 = v14;
          *buf = 138543618;
          v161 = v66;
          v162 = 2112;
          v163 = v65;
          _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

          v14 = v65;
        }

        objc_autoreleasePoolPop(v62);
        if (a5)
        {
          v67 = v14;
          v22 = 0;
          self = 0;
          *a5 = v14;
        }

        else
        {
          v22 = 0;
          self = 0;
        }
      }
    }

    else
    {
      v44 = v29;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = v44;
      }

      else
      {
        v45 = 0;
      }

      v22 = v45;

      if (v22)
      {
        v46 = v9;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v47 = v46;
        }

        else
        {
          v47 = 0;
        }

        v48 = v47;

        if (v48)
        {
          v49 = v48;
          v50 = [HMDCompositeBoolSetting alloc];
          v51 = v49;
          v52 = [v49 BOOLValue];
          v53 = [v22 readVersion];
          [v22 writeVersion];
          v55 = v54 = v8;
          v56 = v52;
          v57 = v51;
          self = [(HMDCompositeBoolSetting *)v50 initWithValue:v56 readVersion:v53 writeVersion:v55];

          v8 = v54;
          v11 = 0;

          v14 = 0;
        }

        else
        {
          v93 = a5;
          v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid BOOL setting value" reason:0 suggestion:{@"Setting type is Bool, please pass a Bool value"}];
          v94 = objc_autoreleasePoolPush();
          v95 = self;
          v96 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v98 = v97 = v14;
            *buf = 138543618;
            v161 = v98;
            v162 = 2112;
            v163 = v97;
            _os_log_impl(&dword_229538000, v96, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

            v14 = v97;
          }

          objc_autoreleasePoolPop(v94);
          if (v93)
          {
            v99 = v14;
            v57 = 0;
            self = 0;
            *v93 = v14;
          }

          else
          {
            v57 = 0;
            self = 0;
          }

          v28 = 0;
        }
      }

      else
      {
        v68 = v44;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v69 = v68;
        }

        else
        {
          v69 = 0;
        }

        v70 = v69;

        v149 = v70;
        if (v70)
        {
          v71 = v9;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v72 = v71;
          }

          else
          {
            v72 = 0;
          }

          v73 = v72;

          v74 = 0;
          v152 = v73;
          if (!v73)
          {
            v75 = [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid Number setting value" reason:0 suggestion:{@"Setting type is Number, please pass a Number value"}];
            v76 = objc_autoreleasePoolPush();
            v77 = self;
            v78 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
            {
              v79 = HMFGetLogIdentifier();
              *buf = 138543618;
              v161 = v79;
              v162 = 2112;
              v163 = v75;
              _os_log_impl(&dword_229538000, v78, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v76);
            if (a5)
            {
              v80 = v75;
              *a5 = v75;
            }

            v74 = v75;
            v73 = 0;
          }

          v81 = [HMDCompositeNumberSetting alloc];
          v82 = [v73 numberValue];
          [v149 readVersion];
          v84 = v83 = v8;
          v85 = [v149 writeVersion];
          v86 = v81;
          v14 = v74;
          self = [(HMDCompositeNumberSetting *)v86 initWithValue:v82 readVersion:v84 writeVersion:v85];

          v8 = v83;
          v87 = v152;
        }

        else
        {
          v100 = v68;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v101 = v100;
          }

          else
          {
            v101 = 0;
          }

          v102 = v101;

          if (v102)
          {
            v159 = v8;
            v103 = v9;
            if ([v103 conformsToProtocol:&unk_283EDAE88])
            {
              v104 = v103;
            }

            else
            {
              v104 = 0;
            }

            v105 = v104;

            v106 = 0;
            if (!v105)
            {
              v153 = v102;
              v107 = [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Invalid Language setting value" reason:0 suggestion:{@"Setting type is Language, please pass a Language value"}];
              v108 = objc_autoreleasePoolPush();
              v109 = self;
              v110 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
              {
                v111 = HMFGetLogIdentifier();
                *buf = 138543618;
                v161 = v111;
                v162 = 2112;
                v163 = v107;
                _os_log_impl(&dword_229538000, v110, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v108);
              if (a5)
              {
                v106 = v107;
                *a5 = v107;
              }

              else
              {
                v106 = v107;
              }

              v102 = v153;
            }

            v154 = v106;
            v157 = [HMDCompositeLanguageSetting alloc];
            v147 = [v105 inputLanguageCode];
            v137 = [v105 outputVoiceLanguageCode];
            v138 = [v105 outputVoiceGenderCode];
            v139 = v105;
            v148 = v105;
            v140 = v138;
            v141 = [v139 voiceName];
            v142 = [v102 readVersion];
            v143 = [v102 writeVersion];
            self = [(HMDCompositeLanguageSetting *)v157 initWithInputLanguage:v147 outputVoiceLanguageCode:v137 outputVoiceGenderCode:v140 voiceName:v141 readVersion:v142 writeVersion:v143];

            v87 = v102;
            v14 = v154;

            v8 = v159;
          }

          else
          {
            v123 = v8;
            v124 = [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"trying to create an invalid setting from value" reason:0 suggestion:0];
            v125 = objc_autoreleasePoolPush();
            v126 = self;
            v127 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
            {
              v128 = HMFGetLogIdentifier();
              *buf = 138543618;
              v161 = v128;
              v162 = 2112;
              v163 = v124;
              _os_log_impl(&dword_229538000, v127, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v125);
            if (a5)
            {
              v129 = v124;
              v87 = 0;
              self = 0;
              *a5 = v124;
              v14 = v124;
              v8 = v123;
            }

            else
            {
              v87 = 0;
              self = 0;
              v8 = v123;
              v14 = v124;
            }
          }
        }

        v11 = 0;
        v57 = v149;
      }
    }

    goto LABEL_116;
  }

  v158 = v8;
  v12 = v8;
  v13 = v11;
  v14 = v13;
  if (self)
  {
    v156 = a5;
    v15 = [v13 type];
    if ((v15 - 1) >= 2)
    {
      v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Unable to derived setting" reason:@"unknown version type" suggestion:0];
      v37 = objc_autoreleasePoolPush();
      v38 = self;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v41 = v40 = v14;
        v42 = HMSettingVersionValueTypeAsString();
        *buf = 138543874;
        v161 = v41;
        v162 = 2112;
        v163 = v42;
        v164 = 2112;
        v165 = v22;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive setting due to unknown version value type: %@ error: %@", buf, 0x20u);

        v14 = v40;
      }

      objc_autoreleasePoolPop(v37);
      if (v156)
      {
        v43 = v22;
        self = 0;
        *v156 = v22;
      }

      else
      {
        self = 0;
      }

      v8 = v158;
      v28 = v12;
    }

    else
    {
      v155 = v11;
      [v12 readVersion];
      v17 = v16 = v14;
      v18 = [v12 writeVersion];
      v151 = v16;
      v19 = [v16 version];
      if (v15 == 1)
      {
        v20 = v17;
      }

      else
      {
        v20 = v18;
      }

      if (v15 == 1)
      {
        v21 = v18;
      }

      else
      {
        v21 = v19;
      }

      if (v15 == 1)
      {
        v22 = v19;
      }

      else
      {
        v22 = v17;
      }

      v23 = v12;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = v24;

      if (v25)
      {
        v26 = [HMDCompositeStringSetting alloc];
        v27 = [v25 stringValue];
        self = [(HMDCompositeStringSetting *)v26 initWithValue:v27 readVersion:v22 writeVersion:v21];

        v14 = v16;
        v11 = v155;
        v28 = v12;
      }

      else
      {
        v58 = v23;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v59 = v58;
        }

        else
        {
          v59 = 0;
        }

        v60 = v59;

        if (v60)
        {
          self = -[HMDCompositeBoolSetting initWithValue:readVersion:writeVersion:]([HMDCompositeBoolSetting alloc], "initWithValue:readVersion:writeVersion:", [v60 BOOLValue], v22, v21);
          v14 = v16;
          v11 = v155;
          v61 = v60;
          v28 = v12;
        }

        else
        {
          v150 = v21;
          v88 = v58;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v89 = v88;
          }

          else
          {
            v89 = 0;
          }

          v90 = v89;

          if (v90)
          {
            v91 = [HMDCompositeNumberSetting alloc];
            v92 = [v90 numberValue];
            self = [(HMDCompositeNumberSetting *)v91 initWithValue:v92 readVersion:v22 writeVersion:v150];

            v14 = v16;
            v11 = v155;
          }

          else
          {
            v112 = v88;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v113 = v112;
            }

            else
            {
              v113 = 0;
            }

            v114 = v113;

            if (v114)
            {
              v115 = [HMDCompositeLanguageSetting alloc];
              v116 = [v114 inputLanguageCode];
              v117 = [v114 outputVoiceLanguageCode];
              v118 = [v114 outputVoiceGenderCode];
              [v114 voiceName];
              v120 = v119 = v114;
              v121 = v115;
              v122 = v117;
              self = [(HMDCompositeLanguageSetting *)v121 initWithInputLanguage:v116 outputVoiceLanguageCode:v117 outputVoiceGenderCode:v118 voiceName:v120 readVersion:v22 writeVersion:v150];

              v14 = v151;
              v11 = v155;
              v90 = 0;
            }

            else
            {
              v146 = v112;
              v130 = [MEMORY[0x277CCA9B8] hmErrorWithCode:19 description:@"Unable to derived setting" reason:@"unknown setting type" suggestion:0];
              v131 = objc_autoreleasePoolPush();
              v132 = self;
              v133 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v135 = v134 = v130;
                *buf = 138543874;
                v161 = v135;
                v162 = 2112;
                v163 = v146;
                v164 = 2112;
                v165 = v134;
                _os_log_impl(&dword_229538000, v133, OS_LOG_TYPE_ERROR, "%{public}@Failed to derive setting due to unknown setting object type: %@ error: %@", buf, 0x20u);

                v130 = v134;
              }

              objc_autoreleasePoolPop(v131);
              v11 = v155;
              if (v156)
              {
                v136 = v130;
                *v156 = v130;
              }

              self = 0;
              v14 = v151;
              v119 = 0;
              v90 = 0;
            }
          }

          v28 = v12;

          v61 = 0;
          v21 = v150;
        }
      }

      v8 = v158;
    }

LABEL_116:

    goto LABEL_117;
  }

  v28 = v12;
LABEL_117:

  v144 = *MEMORY[0x277D85DE8];

  return self;
}

- (void)updateSettingsForKeyPaths:(id)a3 callerVersion:(id)a4 completion:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDCompositeSettingsController *)self _metricSubmittingSingleUpdateCompletionFromCompletion:v10];
  if ([v8 count])
  {
    if (self)
    {
      Property = objc_getProperty(self, v12, 64, 1);
    }

    else
    {
      Property = 0;
    }

    v14 = [Property rawDatabase];
    if (v14)
    {
      v16 = v14;
      if (self)
      {
        v17 = objc_getProperty(self, v15, 64, 1);
      }

      else
      {
        v17 = 0;
      }

      v18 = [v17 queue];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __85__HMDCompositeSettingsController_updateSettingsForKeyPaths_callerVersion_completion___block_invoke;
      v30[3] = &unk_278689AB8;
      v30[4] = self;
      v31 = v8;
      v32 = v9;
      v33 = v11;
      dispatch_async(v18, v30);
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v35 = v26;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Nil database (updateSettingsForKeyPaths)", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
      v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      v28 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:@"onboardingSettings" setting:0 metadata:0 error:v27];
      (v11)[2](v11, v28);

      v16 = 0;
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
      *buf = 138543362;
      v35 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@settings is empty", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v16 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:@"onboardingSettings" setting:0 metadata:0 error:0];
    (v11)[2](v11, v16);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (id)_metricSubmittingSingleUpdateCompletionFromCompletion:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    [MEMORY[0x277D17DC0] currentTime];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __88__HMDCompositeSettingsController__metricSubmittingSingleUpdateCompletionFromCompletion___block_invoke;
    aBlock[3] = &unk_2786821B0;
    aBlock[4] = a1;
    v8 = v4;
    v7 = v3;
    a1 = _Block_copy(aBlock);
  }

  return a1;
}

void __85__HMDCompositeSettingsController_updateSettingsForKeyPaths_callerVersion_completion___block_invoke(uint64_t a1)
{
  v76 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v55 = *(a1 + 40);
  v59 = v2;
  v60 = v3;
  if (!v1)
  {
    goto LABEL_47;
  }

  v5 = [objc_getProperty(v1 v4];
  dispatch_assert_queue_V2(v5);

  if (!v55)
  {
    _HMFPreconditionFailure();
    goto LABEL_49;
  }

  if (!v59)
  {
LABEL_49:
    _HMFPreconditionFailure();
LABEL_50:
    _HMFPreconditionFailure();
  }

  if (!v60)
  {
    goto LABEL_50;
  }

  v54 = [objc_getProperty(v1 v6];
  if (!v54)
  {
    v32 = objc_autoreleasePoolPush();
    v33 = v1;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = HMFGetLogIdentifier();
      *v74 = 138543362;
      v75 = v35;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Nil database (_updateSettingsForKeyPaths)", v74, 0xCu);
    }

    objc_autoreleasePoolPop(v32);
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    v58 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:@"onboardingSettings" setting:0 metadata:0 error:v17];
    v60[2](v60, v58);
    goto LABEL_46;
  }

  v58 = [(HMDCompositeSettingsController *)v1 emptyModelForTransaction];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v55;
  v57 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
  if (!v57)
  {
    v9 = 0;
    goto LABEL_32;
  }

  v9 = 0;
  v56 = *v66;
  *&v8 = 138543618;
  v52 = v8;
  while (2)
  {
    for (i = 0; i != v57; ++i)
    {
      if (*v66 != v56)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v65 + 1) + 8 * i);
      v12 = [v11 keyPath];
      v14 = [objc_getProperty(v1 v13];
      if (!v14)
      {
        v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21 description:@"Setting has not been configured yet (no current setting)" reason:0 suggestion:0];

        v39 = objc_autoreleasePoolPush();
        v40 = v1;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = HMFGetLogIdentifier();
          *buf = v52;
          *&buf[4] = v42;
          *&buf[12] = 2112;
          *&buf[14] = v17;
          _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v39);
        v14 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v12 setting:0 metadata:0 error:v17];
        v60[2](v60, v14);
        goto LABEL_43;
      }

      v15 = [v11 value];
      v64 = v9;
      v16 = [v1 _settingFromSetting:v14 value:v15 error:&v64];
      v17 = v64;

      if (!v16)
      {
        v43 = objc_autoreleasePoolPush();
        v44 = v1;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = HMFGetLogIdentifier();
          *buf = v52;
          *&buf[4] = v46;
          *&buf[12] = 2112;
          *&buf[14] = v17;
          _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Error: %@", buf, 0x16u);
        }

        v16 = 0;
        goto LABEL_42;
      }

      v18 = [(HMDCompositeSettingOperationResult *)v14 writeVersion];
      v19 = [v18 isGreaterThanVersion:v59];

      if (v19)
      {
        v47 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10 description:@"Write version does not meet the minimum" reason:0 suggestion:0];

        v43 = objc_autoreleasePoolPush();
        v48 = v1;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          *buf = v52;
          *&buf[4] = v49;
          *&buf[12] = 2112;
          *&buf[14] = v47;
          _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Error: %@", buf, 0x16u);
        }

        v17 = v47;
LABEL_42:

        objc_autoreleasePoolPop(v43);
        v50 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v12 setting:0 metadata:0 error:v17];
        v60[2](v60, v50);

LABEL_43:
LABEL_45:

        goto LABEL_46;
      }

      v21 = [objc_getProperty(v1 v20];
      v22 = v21;
      if (v21)
      {
        v23 = [v21 constraint];
        v24 = [v11 value];
        v63 = v17;
        [v23 isValidValue:v24 error:&v63];
        v9 = v63;

        if (v9)
        {
          v25 = objc_autoreleasePoolPush();
          v26 = v1;
          v27 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        v17 = 0;
      }

      v62 = v17;
      [(HMDCompositeSettingOperationResult *)v58 setSetting:v16 forKeyPath:v12 withError:&v62];
      v9 = v62;

      if (v9)
      {
        v25 = objc_autoreleasePoolPush();
        v28 = v1;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
LABEL_21:
          v29 = HMFGetLogIdentifier();
          *buf = v52;
          *&buf[4] = v29;
          *&buf[12] = 2112;
          *&buf[14] = v9;
          _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Error: %@", buf, 0x16u);
        }

LABEL_22:

        objc_autoreleasePoolPop(v25);
        v30 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v12 setting:0 metadata:0 error:v9];
        v60[2](v60, v30);

        v31 = 0;
        goto LABEL_24;
      }

      v31 = 1;
LABEL_24:

      if (!v31)
      {
        v17 = v9;
        goto LABEL_45;
      }
    }

    v57 = [obj countByEnumeratingWithState:&v65 objects:v74 count:16];
    if (v57)
    {
      continue;
    }

    break;
  }

LABEL_32:

  objc_initWeak(&location, v1);
  v37 = objc_getProperty(v1, v36, 64, 1);
  *buf = MEMORY[0x277D85DD0];
  *&buf[8] = 3221225472;
  *&buf[16] = __86__HMDCompositeSettingsController__updateSettingsForKeyPaths_callerVersion_completion___block_invoke;
  v70 = &unk_2786889F0;
  objc_copyWeak(v73, &location);
  v38 = v58;
  v71 = v38;
  v72 = v60;
  v58 = v38;
  [v37 addModel:v38 withOptionsLabel:@"HMDCompositeSettingController updating settings" completion:buf];

  objc_destroyWeak(v73);
  objc_destroyWeak(&location);
  v17 = v9;
LABEL_46:

LABEL_47:
  v51 = *MEMORY[0x277D85DE8];
}

void __86__HMDCompositeSettingsController__updateSettingsForKeyPaths_callerVersion_completion___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      *buf = 138543874;
      v21 = v8;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Finished updating models:%@ error:%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = MEMORY[0x277D2C900];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __86__HMDCompositeSettingsController__updateSettingsForKeyPaths_callerVersion_completion___block_invoke_92;
    v17[3] = &unk_278679710;
    v18 = v3;
    v19 = *(a1 + 40);
    v11 = MEMORY[0x277D2C938];
    v13 = [objc_getProperty(v6 v12];
    v14 = [v11 schedulerWithDispatchQueue:v13];
    v15 = [v10 futureWithBlock:v17 scheduler:v14];
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __86__HMDCompositeSettingsController__updateSettingsForKeyPaths_callerVersion_completion___block_invoke_92(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:@"nil" setting:0 metadata:0 error:*(a1 + 32)];
  (*(*(a1 + 40) + 16))();
  [v3 finishWithNoResult];
}

void __88__HMDCompositeSettingsController__metricSubmittingSingleUpdateCompletionFromCompletion___block_invoke(double *a1, void *a2)
{
  v11 = a2;
  Property = *(a1 + 4);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 48, 1);
  }

  v5 = Property;
  v6 = [HMDCompositeSettingsControllerUpdateLogEvent alloc];
  v7 = a1[6];
  v8 = [v11 keyPath];
  v9 = [(HMDCompositeSettingsControllerUpdateLogEvent *)v6 initWithStartTime:v8 keyPath:v7];
  v10 = [v11 error];
  [v5 submitLogEvent:v9 error:v10];

  (*(*(a1 + 5) + 16))();
}

- (void)updateSettingForKeyPath:(id)a3 value:(id)a4 callerVersion:(id)a5 completion:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v15 = [(HMDCompositeSettingsController *)self _metricSubmittingSingleUpdateCompletionFromCompletion:v13];
  if (self)
  {
    Property = objc_getProperty(self, v14, 64, 1);
  }

  else
  {
    Property = 0;
  }

  v18 = [Property rawDatabase];
  if (v18)
  {
    if (self)
    {
      v19 = objc_getProperty(self, v17, 64, 1);
    }

    else
    {
      v19 = 0;
    }

    v20 = [v19 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __89__HMDCompositeSettingsController_updateSettingForKeyPath_value_callerVersion_completion___block_invoke;
    block[3] = &unk_278688978;
    block[4] = self;
    v29 = v10;
    v30 = v11;
    v31 = v12;
    v32 = v15;
    dispatch_async(v20, block);
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v24;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Nil database (updateSettingForKeyPath)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    v26 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v10 setting:0 metadata:0 error:v25];
    (v15)[2](v15, v26);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __89__HMDCompositeSettingsController_updateSettingForKeyPath_value_callerVersion_completion___block_invoke(uint64_t a1)
{
  v61[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 40);
  v48 = v2;
  v49 = v3;
  v7 = v4;
  if (v1)
  {
    v9 = [objc_getProperty(v1 v6];
    if (!v9)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v1;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v25;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Nil database (_updateSettingForKeyPath)", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      v12 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v5 setting:0 metadata:0 error:v16];
      v7[2](v7, v12);
      goto LABEL_34;
    }

    v10 = [objc_getProperty(v1 v8];
    dispatch_assert_queue_V2(v10);

    if (v5)
    {
      if (v48)
      {
        if (v49)
        {
          if (v7)
          {
            v12 = [objc_getProperty(v1 v11];
            v47 = [objc_getProperty(v1 v13];
            if (!v12)
            {
              v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21 description:@"Setting has not been configured yet (no current setting)" reason:0 suggestion:0];
              v26 = objc_autoreleasePoolPush();
              v27 = v1;
              v28 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                v29 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v29;
                *&buf[12] = 2112;
                *&buf[14] = v16;
                _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Error: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v26);
              v17 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v5 setting:0 metadata:0 error:v16];
              v7[2](v7, v17);
              goto LABEL_33;
            }

            v14 = [(HMDCompositeSettingOperationResult *)v12 writeVersion];
            v15 = [v14 isGreaterThanVersion:v49];

            if (v15)
            {
              v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10 description:@"Write version does not meet the minimum" reason:0 suggestion:0];
              v17 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v5 setting:0 metadata:0 error:v16];
              v18 = objc_autoreleasePoolPush();
              v19 = v1;
              v20 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                v21 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v21;
                *&buf[12] = 2112;
                *&buf[14] = v16;
                _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Error: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v18);
              v7[2](v7, v17);
              goto LABEL_33;
            }

            v53 = 0;
            v17 = [v1 _settingFromSetting:v12 value:v48 error:&v53];
            v16 = v53;
            if (!v17)
            {
              v37 = objc_autoreleasePoolPush();
              v38 = v1;
              v39 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                v40 = HMFGetLogIdentifier();
                *buf = 138543618;
                *&buf[4] = v40;
                *&buf[12] = 2112;
                *&buf[14] = v16;
                _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_ERROR, "%{public}@Error: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v37);
              v33 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v5 setting:0 metadata:0 error:v16];
              v7[2](v7, v33);
              goto LABEL_32;
            }

            if (v47)
            {
              v31 = [v47 constraint];
              v52 = v16;
              [v31 isValidValue:v48 error:&v52];
              v32 = v52;

              if (v32)
              {
                v33 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v5 setting:0 metadata:0 error:v32];
                context = objc_autoreleasePoolPush();
                v34 = v1;
                v35 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  v36 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  *&buf[4] = v36;
                  *&buf[12] = 2112;
                  *&buf[14] = v32;
                  _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Error: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(context);
                v7[2](v7, v33);
                v16 = v32;
                goto LABEL_32;
              }

              v41 = 0;
            }

            else
            {
              v41 = v16;
            }

            v33 = [(HMDCompositeSettingsController *)v1 emptyModelForTransaction];
            v51 = v41;
            [(HMDCompositeSettingOperationResult *)v33 setSetting:v17 forKeyPath:v5 withError:&v51];
            v16 = v51;

            if (v16)
            {
              v42 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v5 setting:0 metadata:0 error:v16];
              v7[2](v7, v42);
            }

            else
            {
              objc_initWeak(&location, v1);
              v44 = objc_getProperty(v1, v43, 64, 1);
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = __90__HMDCompositeSettingsController__updateSettingForKeyPath_value_callerVersion_completion___block_invoke;
              v55 = &unk_27867FBD0;
              objc_copyWeak(v61, &location);
              v56 = v12;
              v57 = v17;
              v58 = v5;
              v59 = v47;
              v60 = v7;
              [v44 addModel:v33 withOptionsLabel:@"HMDCompositeSettingController updating setting" completion:buf];

              objc_destroyWeak(v61);
              objc_destroyWeak(&location);
              v16 = 0;
            }

LABEL_32:

LABEL_33:
LABEL_34:

            goto LABEL_35;
          }

LABEL_39:
          _HMFPreconditionFailure();
        }

LABEL_38:
        _HMFPreconditionFailure();
        goto LABEL_39;
      }
    }

    else
    {
      _HMFPreconditionFailure();
    }

    _HMFPreconditionFailure();
    goto LABEL_38;
  }

LABEL_35:

  v45 = *MEMORY[0x277D85DE8];
}

void __90__HMDCompositeSettingsController__updateSettingForKeyPath_value_callerVersion_completion___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138544130;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = v10;
      v30 = 2112;
      v31 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@updating current setting:%@, new setting:%@ error:%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v5);
    v11 = MEMORY[0x277D2C900];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __90__HMDCompositeSettingsController__updateSettingForKeyPath_value_callerVersion_completion___block_invoke_82;
    v18[3] = &unk_2786796E8;
    v18[4] = v6;
    v19 = *(a1 + 40);
    v20 = v3;
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    v23 = *(a1 + 64);
    v12 = MEMORY[0x277D2C938];
    v14 = [objc_getProperty(v6 v13];
    v15 = [v12 schedulerWithDispatchQueue:v14];
    v16 = [v11 futureWithBlock:v18 scheduler:v15];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __90__HMDCompositeSettingsController__updateSettingForKeyPath_value_callerVersion_completion___block_invoke_82(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v12 = 138543874;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@updating setting:%@, error:%@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v10 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:*(a1 + 56) setting:*(a1 + 40) metadata:*(a1 + 64) error:*(a1 + 48)];
  (*(*(a1 + 72) + 16))();
  [v3 finishWithNoResult];

  v11 = *MEMORY[0x277D85DE8];
}

- (id)fetchSynchronousSettingsForKeyPaths:(id)a3 callerVersion:(id)a4 callerPrivilege:(unint64_t)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v11 = [MEMORY[0x277CBEB18] array];
  if (self)
  {
    Property = objc_getProperty(self, v10, 64, 1);
  }

  else
  {
    Property = 0;
  }

  v14 = [Property rawDatabase];
  if (v14)
  {
    if (self)
    {
      v15 = objc_getProperty(self, v13, 64, 1);
    }

    else
    {
      v15 = 0;
    }

    v16 = [v15 queue];
    dispatch_assert_queue_V2(v16);

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __100__HMDCompositeSettingsController_fetchSynchronousSettingsForKeyPaths_callerVersion_callerPrivilege___block_invoke_2;
    v28[3] = &unk_2786796C0;
    v28[4] = self;
    v29 = v9;
    v31 = a5;
    v17 = v11;
    v30 = v17;
    [v8 na_each:v28];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v21;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Nil database (fetchSynchronousSettingsForKeyPaths)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __100__HMDCompositeSettingsController_fetchSynchronousSettingsForKeyPaths_callerVersion_callerPrivilege___block_invoke;
    v32[3] = &unk_278686D38;
    v33 = v22;
    v23 = v22;
    v24 = [v8 na_map:v32];
    v17 = [v24 mutableCopy];
  }

  v25 = [v17 copy];

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

HMDCompositeSettingOperationResult *__100__HMDCompositeSettingsController_fetchSynchronousSettingsForKeyPaths_callerVersion_callerPrivilege___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v3 setting:0 metadata:0 error:*(a1 + 32)];

  return v4;
}

void __100__HMDCompositeSettingsController_fetchSynchronousSettingsForKeyPaths_callerVersion_callerPrivilege___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __100__HMDCompositeSettingsController_fetchSynchronousSettingsForKeyPaths_callerVersion_callerPrivilege___block_invoke_3;
  v8[3] = &unk_278679698;
  v5 = *(a1 + 56);
  v9 = *(a1 + 48);
  v6 = a2;
  v7 = [(HMDCompositeSettingsController *)v3 _metricSubmittingSingleFetchCompletionFromCompletion:v8];
  [(HMDCompositeSettingsController *)v3 _fetchSettingForKeyPath:v6 callerVersion:v4 callerPrivilege:v5 completion:v7];
}

- (id)_metricSubmittingSingleFetchCompletionFromCompletion:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    [MEMORY[0x277D17DC0] currentTime];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __87__HMDCompositeSettingsController__metricSubmittingSingleFetchCompletionFromCompletion___block_invoke;
    aBlock[3] = &unk_2786821B0;
    aBlock[4] = a1;
    v8 = v4;
    v7 = v3;
    a1 = _Block_copy(aBlock);
  }

  return a1;
}

- (void)_fetchSettingForKeyPath:(void *)a3 callerVersion:(uint64_t)a4 callerPrivilege:(void *)a5 completion:
{
  v55 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v13 = v11;
  if (a1 && v11)
  {
    if ([objc_getProperty(a1 v12])
    {
      v15 = objc_autoreleasePoolPush();
      v16 = a1;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v18;
        v53 = 2112;
        v54 = v9;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Blocked fetch setting with key path: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:23];
      v20 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v9 setting:0 metadata:0 error:v19];
      (v13)[2](v13, v20);
      goto LABEL_26;
    }

    v19 = [objc_getProperty(a1 v14];
    if (!v19)
    {
      v37 = objc_autoreleasePoolPush();
      v38 = a1;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543362;
        v52 = v40;
        _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_INFO, "%{public}@Nil database (_fetchSettingForKeyPath)", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v37);
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      v26 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v9 setting:0 metadata:0 error:v20];
      (v13)[2](v13, v26);
      goto LABEL_25;
    }

    v22 = [objc_getProperty(a1 v21];
    dispatch_assert_queue_V2(v22);

    v20 = [objc_getProperty(a1 v23];
    v25 = [objc_getProperty(a1 v24];
    v26 = v25;
    if (!v20)
    {
      v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21 description:@"Setting has not been configured yet (no setting)" reason:0 suggestion:0];
      v43 = objc_autoreleasePoolPush();
      v44 = a1;
      v45 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = HMFGetLogIdentifier();
        *buf = 138543618;
        v52 = v46;
        v53 = 2112;
        v54 = v42;
        _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@_fetchSettingForKeyPath Error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v43);
      v47 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v9 setting:0 metadata:0 error:v42];
      (v13)[2](v13, v47);

      v20 = 0;
      goto LABEL_25;
    }

    if (!v25 || (-[HMDCompositeSettingOperationResult privileges](v25, "privileges"), v27 = objc_claimAutoreleasedReturnValue(), v28 = HMDUserPrivilegeCompare(a4, [v27 minReadUserPrivilege]), v27, v28 == -1))
    {
      v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17 description:@"Insufficient User read Privilege or missing Metadata" reason:0 suggestion:0];
      v32 = objc_autoreleasePoolPush();
      v33 = a1;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v35 = v50 = v32;
        *buf = 138543618;
        v52 = v35;
        v53 = 2112;
        v54 = v31;
        v36 = "%{public}@_fetchSettingForKeyPath failed, Error: %@";
        goto LABEL_19;
      }
    }

    else
    {
      v29 = [(HMDCompositeSettingOperationResult *)v20 readVersion];
      v30 = [v29 isGreaterThanVersion:v10];

      if (!v30)
      {
        v48 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v9 setting:v20 metadata:v26 error:0];
        (v13)[2](v13, v48);

        goto LABEL_25;
      }

      v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10 description:@"Read version does not meet the minimum" reason:0 suggestion:0];
      v32 = objc_autoreleasePoolPush();
      v33 = a1;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v35 = v50 = v32;
        *buf = 138543618;
        v52 = v35;
        v53 = 2112;
        v54 = v31;
        v36 = "%{public}@_fetchSettingForKeyPath Error: %@";
LABEL_19:
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, v36, buf, 0x16u);

        v32 = v50;
      }
    }

    objc_autoreleasePoolPop(v32);
    v41 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v9 setting:0 metadata:0 error:v31];
    (v13)[2](v13, v41);

LABEL_25:
LABEL_26:
  }

  v49 = *MEMORY[0x277D85DE8];
}

void __87__HMDCompositeSettingsController__metricSubmittingSingleFetchCompletionFromCompletion___block_invoke(double *a1, void *a2)
{
  v11 = a2;
  Property = *(a1 + 4);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 48, 1);
  }

  v5 = Property;
  v6 = [HMDCompositeSettingsControllerFetchLogEvent alloc];
  v7 = a1[6];
  v8 = [v11 keyPath];
  v9 = [(HMDCompositeSettingsControllerFetchLogEvent *)v6 initWithStartTime:v8 keyPath:v7];
  v10 = [v11 error];
  [v5 submitLogEvent:v9 error:v10];

  (*(*(a1 + 5) + 16))();
}

- (void)fetchSettingsForKeyPaths:(id)a3 callerVersion:(id)a4 callerPrivilege:(unint64_t)a5 completion:(id)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v13 = a6;
  if (self)
  {
    Property = objc_getProperty(self, v12, 64, 1);
  }

  else
  {
    Property = 0;
  }

  v15 = [Property rawDatabase];
  v16 = v13;
  if (self)
  {
    [MEMORY[0x277D17DC0] currentTime];
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 3221225472;
    v44 = __89__HMDCompositeSettingsController__metricSubmittingMultipleFetchCompletionFromCompletion___block_invoke;
    v45 = &unk_278679648;
    v46 = self;
    v48 = v17;
    v47 = v16;
    v18 = _Block_copy(&aBlock);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    if (![v10 count])
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v23 = v34 = v20;
        LODWORD(aBlock) = 138543362;
        *(&aBlock + 4) = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Empty keypaths array", &aBlock, 0xCu);

        v20 = v34;
      }

      objc_autoreleasePoolPop(v20);
      v18[2](v18, MEMORY[0x277CBEBF8]);
    }

    if (self)
    {
      v24 = objc_getProperty(self, v19, 64, 1);
    }

    else
    {
      v24 = 0;
    }

    v25 = [v24 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__HMDCompositeSettingsController_fetchSettingsForKeyPaths_callerVersion_callerPrivilege_completion___block_invoke_49;
    block[3] = &unk_278683AD8;
    v36 = v10;
    v37 = self;
    v38 = v11;
    v40 = a5;
    v39 = v18;
    dispatch_async(v25, block);

    v26 = v36;
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      LODWORD(aBlock) = 138543362;
      *(&aBlock + 4) = v30;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@Nil database (fetchSettingsForKeyPaths)", &aBlock, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __100__HMDCompositeSettingsController_fetchSettingsForKeyPaths_callerVersion_callerPrivilege_completion___block_invoke;
    v41[3] = &unk_278686D38;
    v42 = v31;
    v26 = v31;
    v32 = [v10 na_map:v41];
    (v18)[2](v18, v32);
  }

  v33 = *MEMORY[0x277D85DE8];
}

HMDCompositeSettingOperationResult *__100__HMDCompositeSettingsController_fetchSettingsForKeyPaths_callerVersion_callerPrivilege_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v3 setting:0 metadata:0 error:*(a1 + 32)];

  return v4;
}

void __100__HMDCompositeSettingsController_fetchSettingsForKeyPaths_callerVersion_callerPrivilege_completion___block_invoke_49(void *a1)
{
  v2 = [MEMORY[0x277CBEB18] array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __100__HMDCompositeSettingsController_fetchSettingsForKeyPaths_callerVersion_callerPrivilege_completion___block_invoke_2;
  v11[3] = &unk_2786796C0;
  v3 = a1[4];
  v4 = a1[6];
  v11[4] = a1[5];
  v5 = v4;
  v6 = a1[8];
  v13 = v2;
  v14 = v6;
  v12 = v5;
  v7 = v2;
  [v3 na_each:v11];
  (*(a1[7] + 16))(a1[7], v7, v8, v9, v10);
}

void __100__HMDCompositeSettingsController_fetchSettingsForKeyPaths_callerVersion_callerPrivilege_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __100__HMDCompositeSettingsController_fetchSettingsForKeyPaths_callerVersion_callerPrivilege_completion___block_invoke_3;
  v6[3] = &unk_278679698;
  v5 = *(a1 + 56);
  v7 = *(a1 + 48);
  [(HMDCompositeSettingsController *)v3 _fetchSettingForKeyPath:a2 callerVersion:v4 callerPrivilege:v5 completion:v6];
}

void __89__HMDCompositeSettingsController__metricSubmittingMultipleFetchCompletionFromCompletion___block_invoke(void *a1, void *a2)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __89__HMDCompositeSettingsController__metricSubmittingMultipleFetchCompletionFromCompletion___block_invoke_2;
  v8[3] = &unk_278679620;
  v8[4] = a1[4];
  v8[5] = a1[6];
  v3 = a2;
  [v3 na_each:v8];
  (*(a1[5] + 16))(a1[5], v3, v4, v5, v6, v7);
}

void __89__HMDCompositeSettingsController__metricSubmittingMultipleFetchCompletionFromCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 48, 1);
  }

  v5 = Property;
  v6 = [HMDCompositeSettingsControllerFetchLogEvent alloc];
  v7 = *(a1 + 40);
  v8 = [v11 keyPath];
  v9 = [(HMDCompositeSettingsControllerFetchLogEvent *)v6 initWithStartTime:v8 keyPath:v7];
  v10 = [v11 error];
  [v5 submitLogEvent:v9 error:v10];
}

- (void)fetchSettingForKeyPath:(id)a3 callerVersion:(id)a4 callerPrivilege:(unint64_t)a5 completion:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v14 = [(HMDCompositeSettingsController *)self _metricSubmittingSingleFetchCompletionFromCompletion:v12];
  if (self)
  {
    Property = objc_getProperty(self, v13, 64, 1);
  }

  else
  {
    Property = 0;
  }

  v17 = [Property rawDatabase];
  if (v17)
  {
    if (self)
    {
      v18 = objc_getProperty(self, v16, 64, 1);
    }

    else
    {
      v18 = 0;
    }

    v19 = [v18 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __98__HMDCompositeSettingsController_fetchSettingForKeyPath_callerVersion_callerPrivilege_completion___block_invoke;
    block[3] = &unk_278683AD8;
    block[4] = self;
    v28 = v10;
    v29 = v11;
    v31 = a5;
    v30 = v14;
    dispatch_async(v19, block);
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v23;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Nil database (fetchSettingForKeyPath)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    v25 = [[HMDCompositeSettingOperationResult alloc] initWithKeyPath:v10 setting:0 metadata:0 error:v24];
    (v14)[2](v14, v25);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDCompositeSettingsController *)self homeUUID];
  v5 = [(HMDCompositeSettingsController *)self uuid];
  v6 = [v3 stringWithFormat:@"%@.%@", v4, v5];

  return v6;
}

- (void)_createSettingsFromModel:(id)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v57 = a3;
  if (self)
  {
    Property = objc_getProperty(self, v4, 64, 1);
  }

  else
  {
    Property = 0;
  }

  v56 = [Property rawDatabase];
  if (v56)
  {
    if (self)
    {
      v7 = [objc_getProperty(self v6];
      dispatch_assert_queue_V2(v7);

      v9 = objc_getProperty(self, v8, 24, 1);
    }

    else
    {
      v55 = [0 queue];
      dispatch_assert_queue_V2(v55);

      v9 = 0;
    }

    v10 = v9;
    v11 = [v57 keyPathsToSettings];
    v12 = v10;
    v13 = v11;
    v14 = v13;
    if (self)
    {
      v15 = [v13 mutableCopy];
      *v59 = MEMORY[0x277D85DD0];
      *&v59[8] = 3221225472;
      *&v59[16] = __74__HMDCompositeSettingsController__addedOrUpdatedSettingsFrom_newSettings___block_invoke;
      v60 = &unk_278679670;
      v61 = v12;
      v16 = v15;
      v62 = v16;
      [v14 na_each:v59];
      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v20;
        *&buf[12] = 2112;
        *&buf[14] = v16;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Settings changed %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = [(HMDCompositeSettingsController *)v16 copy];
    }

    else
    {
      v21 = 0;
    }

    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *v59 = 138543618;
      *&v59[4] = v25;
      *&v59[12] = 2112;
      *&v59[14] = v21;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Updated Settings %@", v59, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    if ([v21 count])
    {
      v26 = v21;
      v27 = v26;
      if (self)
      {
        v28 = [v26 mutableCopy];
        v30 = objc_getProperty(v23, v29, 56, 1);
        *v59 = MEMORY[0x277D85DD0];
        *&v59[8] = 3221225472;
        *&v59[16] = __62__HMDCompositeSettingsController_filteredSettingsForSettings___block_invoke;
        v60 = &unk_278686270;
        v31 = v28;
        v61 = v31;
        v62 = v23;
        [v30 na_each:v59];
        v32 = v31;

        if ([v32 count])
        {
          v33 = [MEMORY[0x277CBEB38] dictionary];
          v64 = 0u;
          v65 = 0u;
          memset(buf, 0, sizeof(buf));
          v27 = v32;
          v35 = [v27 countByEnumeratingWithState:buf objects:v59 count:16];
          if (v35)
          {
            v36 = **&buf[16];
            do
            {
              for (i = 0; i != v35; ++i)
              {
                if (**&buf[16] != v36)
                {
                  objc_enumerationMutation(v27);
                }

                v38 = *(*&buf[8] + 8 * i);
                v39 = [objc_getProperty(v23 v34];
                [v33 setObject:v39 forKeyedSubscript:v38];
              }

              v35 = [v27 countByEnumeratingWithState:buf objects:v59 count:16];
            }

            while (v35);
          }

          v40 = [(HMDCompositeSettingsController *)v23 delegate];
          v41 = [v33 copy];
          [v40 settingsController:v23 didUpdateSettings:v27 metadata:v41];
        }

        else
        {
          v27 = v32;
        }
      }
    }

    v47 = [v57 keyPathsToSettings];
    if (self)
    {
      objc_setProperty_atomic_copy(v23, v46, v47, 24);
    }

    v48 = self == 0;

    v50 = [v57 keyPathsToSettingMetadata];
    if (!v48)
    {
      objc_setProperty_atomic_copy(v23, v49, v50, 32);
    }

    os_unfair_lock_lock_with_options();
    if (!v23->_configured)
    {
      v23->_configured = 1;
      v52 = objc_getProperty(v23, v51, 64, 1);
      v53 = [v52 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__HMDCompositeSettingsController__createSettingsFromModel___block_invoke;
      block[3] = &unk_27868A728;
      block[4] = v23;
      dispatch_async(v53, block);
    }

    os_unfair_lock_unlock(&v23->_lock);
  }

  else
  {
    v42 = objc_autoreleasePoolPush();
    v43 = self;
    v44 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = HMFGetLogIdentifier();
      *v59 = 138543362;
      *&v59[4] = v45;
      _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_INFO, "%{public}@Nil database (_createSettingsFromModel)", v59, 0xCu);
    }

    objc_autoreleasePoolPop(v42);
  }

  v54 = *MEMORY[0x277D85DE8];
}

void __59__HMDCompositeSettingsController__createSettingsFromModel___block_invoke(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"HMDCompositeSettingControllerOwnerUUIDNotificationKey";
  v2 = [*(a1 + 32) uuid];
  v10[1] = @"HMDCompositeSettingControllerHomeUUIDNotificationKey";
  v11[0] = v2;
  v3 = [*(a1 + 32) homeUUID];
  v11[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = @"HMDHomeUUIDOwnerUUIDKey";
  v9 = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [v5 postNotificationName:@"HMDCompositeSettingsControllerDidConfigureNotification" object:0 userInfo:v6];

  v7 = *MEMORY[0x277D85DE8];
}

void __62__HMDCompositeSettingsController_filteredSettingsForSettings___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKey:v3];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 40);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Filtering setting with blocked key path: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [*(a1 + 32) removeObjectForKey:v3];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __74__HMDCompositeSettingsController__addedOrUpdatedSettingsFrom_newSettings___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v9];

  if (v6)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v9];
    v8 = [v7 isEqual:v5];

    if (v8)
    {
      [*(a1 + 40) removeObjectForKey:v9];
    }
  }
}

- (void)setConfigured:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_configured = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)configured
{
  os_unfair_lock_lock_with_options();
  configured = self->_configured;
  os_unfair_lock_unlock(&self->_lock);
  return configured;
}

- (void)start
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 64, 1);
  }

  [(HMDCompositeSettingsController *)self startWithDelegate:v2];
}

- (HMDCompositeSettingsController)initWithDatabaseAdapter:(id)a3 model:(Class)a4 homeUUID:(id)a5 ownerUUID:(id)a6 logEventSubmitter:(id)a7 settingKeyPathBlockList:(id)a8
{
  v22 = a3;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = HMDCompositeSettingsController;
  v18 = [(HMDCompositeSettingsController *)&v23 init];
  v19 = v18;
  if (v18)
  {
    v18->_lock._os_unfair_lock_opaque = 0;
    v18->_configured = 0;
    objc_storeStrong(&v18->_modelClass, a4);
    objc_storeStrong(&v19->_databaseAdapter, a3);
    objc_storeStrong(&v19->_uuid, a6);
    objc_storeStrong(&v19->_homeUUID, a5);
    objc_storeStrong(&v19->_logEventSubmitter, a7);
    objc_storeStrong(&v19->_settingKeyPathBlockList, a8);
  }

  return v19;
}

- (HMDCompositeSettingsController)initWithDatabaseAdapter:(id)a3 model:(Class)a4 homeUUID:(id)a5 ownerUUID:(id)a6 settingKeyPathBlockList:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = +[HMDMetricsManager sharedLogEventSubmitter];
  v17 = [(HMDCompositeSettingsController *)self initWithDatabaseAdapter:v15 model:a4 homeUUID:v14 ownerUUID:v13 logEventSubmitter:v16 settingKeyPathBlockList:v12];

  return v17;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_124978 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_124978, &__block_literal_global_124979);
  }

  v3 = logCategory__hmf_once_v14_124980;

  return v3;
}

void __45__HMDCompositeSettingsController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14_124980;
  logCategory__hmf_once_v14_124980 = v1;
}

@end