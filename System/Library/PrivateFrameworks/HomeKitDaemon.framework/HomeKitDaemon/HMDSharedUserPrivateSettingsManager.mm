@interface HMDSharedUserPrivateSettingsManager
+ (id)logCategory;
- (HMDSharedUserPrivateSettingsManager)initWithCoreData:(id)a3 cloudTransform:(id)a4 homeManager:(id)a5;
- (id)authorizationDataForCharacteristicWithInstanceID:(id)a3 accessoryUUID:(id)a4 homeModelID:(id)a5;
- (id)settingsForHome:(id)a3 ofType:(int64_t)a4;
- (id)updateAuthorizationDataForCharacteristicWithInstanceID:(id)a3 accessoryUUID:(id)a4 homeModelID:(id)a5 authorizationData:(id)a6 context:(id)a7;
- (id)updateSettingsForHome:(id)a3 ofType:(int64_t)a4 withValues:(id)a5 context:(id)a6;
- (void)_populateSettings:(void *)a3 fromEntity:(void *)a4 context:;
- (void)didInsertOrUpdateModel:(id)a3 changedProperties:(id)a4;
- (void)willStartListeningWithContext:(id)a3;
@end

@implementation HMDSharedUserPrivateSettingsManager

- (void)didInsertOrUpdateModel:(id)a3 changedProperties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  os_unfair_lock_lock_with_options();
  v8 = [v6 entity];
  v9 = +[MKFCKSharedUserPrivateRoot entity];
  v10 = [v8 isKindOfEntity:v9];

  if (v10)
  {
    v11 = 40;
  }

  else
  {
    v12 = [v6 entity];
    v13 = +[MKFCKSharedUserDataRoot entity];

    v14 = [v12 isKindOfEntity:v13];
    if (!v14)
    {

      goto LABEL_10;
    }

    v11 = 48;
    v9 = v13;
  }

  v15 = *(&self->super.isa + v11);
  v16 = [v6 homeModelID];
  if (!v16)
  {

LABEL_10:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_24;
  }

  v17 = [v15 objectForKeyedSubscript:v16];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v20 = v19;

  v21 = [v9 hmd_attributesBySettingsPath];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __80__HMDSharedUserPrivateSettingsManager_didInsertOrUpdateModel_changedProperties___block_invoke;
  v35[3] = &unk_27867E2C8;
  v22 = v7;
  v36 = v22;
  v23 = v20;
  v37 = v23;
  v24 = v6;
  v38 = v24;
  v39 = &v44;
  [v21 enumerateKeysAndObjectsUsingBlock:v35];

  if (*(v45 + 24) == 1)
  {
    [v15 setObject:v23 forKeyedSubscript:v16];
  }

  v25 = v24;
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

  if (v27)
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __80__HMDSharedUserPrivateSettingsManager_didInsertOrUpdateModel_changedProperties___block_invoke_2;
    v31[3] = &unk_27867E2F0;
    v31[4] = self;
    v32 = v16;
    v33 = v27;
    v34 = &v40;
    [v22 hmf_enumerateWithAutoreleasePoolUsingBlock:v31];
  }

  os_unfair_lock_unlock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);
  if (v45[3])
  {
    v29 = [v25 modelID];
    [WeakRetained notifyClientsOfUserSettingsChangeWithReason:@"User Settings updated (Cloud)" sourceUUID:v29];
  }

  if (*(v41 + 24) == 1)
  {
    v30 = [v25 modelID];
    [WeakRetained updateGenerationCounterWithReason:@"Authorization Data Changed" sourceUUID:v30 shouldNotifyClients:1];
  }

LABEL_24:
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
}

void __80__HMDSharedUserPrivateSettingsManager_didInsertOrUpdateModel_changedProperties___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (!v6 || [v6 containsObject:v5])
  {
    v7 = *(a1 + 48);
    v8 = [v5 name];
    v9 = [v7 valueForKey:v8];
    [*(a1 + 40) setObject:v9 forKeyedSubscript:v10];

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

void __80__HMDSharedUserPrivateSettingsManager_didInsertOrUpdateModel_changedProperties___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 name];
  v7 = [v6 isEqualToString:@"characteristicAuthorizationData"];

  if (v7)
  {
    v8 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
    v9 = [*(a1 + 48) characteristicAuthorizationData];
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = *(a1 + 40);
      v17 = 138544130;
      v18 = v13;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating characteristic authorization data %@ -> %@ for home uuid: %@", &v17, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    v15 = [*(a1 + 48) characteristicAuthorizationData];
    [*(*(a1 + 32) + 56) setObject:v15 forKeyedSubscript:*(a1 + 40)];

    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a3 = 1;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)willStartListeningWithContext:(id)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  privateSettingsByHome = self->_privateSettingsByHome;
  self->_privateSettingsByHome = v5;

  v7 = self->_privateSettingsByHome;
  v8 = +[MKFCKSharedUserPrivateRoot entity];
  [(HMDSharedUserPrivateSettingsManager *)self _populateSettings:v7 fromEntity:v8 context:v4];

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  sharedSettingsByHome = self->_sharedSettingsByHome;
  self->_sharedSettingsByHome = v9;

  v11 = self->_sharedSettingsByHome;
  v12 = +[MKFCKSharedUserDataRoot entity];
  [(HMDSharedUserPrivateSettingsManager *)self _populateSettings:v11 fromEntity:v12 context:v4];

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  characteristicAuthorizationDataByHomeModelID = self->_characteristicAuthorizationDataByHomeModelID;
  self->_characteristicAuthorizationDataByHomeModelID = v13;

  v15 = self->_characteristicAuthorizationDataByHomeModelID;
  v29 = v4;
  v16 = +[MKFCKSharedUserPrivateRoot entity];
  v17 = [v16 name];

  v18 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:v17];
  v19 = [v29 hmd_coreData];
  v20 = [v19 cloudPrivateStore];
  v34[0] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
  [v18 setAffectedStores:v21];

  v30 = 0;
  v22 = [v29 executeFetchRequest:v18 error:&v30];
  v23 = v30;
  if (v22)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __88__HMDSharedUserPrivateSettingsManager__populateCharacteristicAuthorizationData_context___block_invoke;
    v32 = &unk_27867E250;
    v33 = v15;
    [v22 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      *&buf[22] = 2112;
      v32 = v23;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch private %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v24);
  }

  os_unfair_lock_unlock(&self->_lock);
  v28 = *MEMORY[0x277D85DE8];
}

- (void)_populateSettings:(void *)a3 fromEntity:(void *)a4 context:
{
  v37[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = objc_alloc(MEMORY[0x277CBE428]);
    v11 = [v8 name];
    v12 = [v10 initWithEntityName:v11];

    v13 = [v9 hmd_coreData];
    v14 = [v13 cloudPrivateStore];
    v37[0] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
    [v12 setAffectedStores:v15];

    v30 = 0;
    v16 = [v9 executeFetchRequest:v12 error:&v30];
    v17 = v30;
    if (v16)
    {
      v18 = [v8 hmd_attributesBySettingsPath];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __76__HMDSharedUserPrivateSettingsManager__populateSettings_fromEntity_context___block_invoke;
      v27[3] = &unk_27867E2A0;
      v28 = v7;
      v29 = v18;
      v19 = v18;
      [v16 hmf_enumerateWithAutoreleasePoolUsingBlock:v27];
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = a1;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        [v8 name];
        v24 = v26 = v20;
        *buf = 138543874;
        v32 = v23;
        v33 = 2112;
        v34 = v24;
        v35 = 2112;
        v36 = v17;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch private %@: %@", buf, 0x20u);

        v20 = v26;
      }

      objc_autoreleasePoolPop(v20);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __88__HMDSharedUserPrivateSettingsManager__populateCharacteristicAuthorizationData_context___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 homeModelID];
  if (v3)
  {
    v4 = [v5 characteristicAuthorizationData];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }
}

void __76__HMDSharedUserPrivateSettingsManager__populateSettings_fromEntity_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 homeModelID];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
    v6 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __76__HMDSharedUserPrivateSettingsManager__populateSettings_fromEntity_context___block_invoke_2;
    v8[3] = &unk_27867E278;
    v9 = v5;
    v10 = v3;
    v7 = v5;
    [v6 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

void __76__HMDSharedUserPrivateSettingsManager__populateSettings_fromEntity_context___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v8 = [a3 name];
  v7 = [v5 valueForKey:v8];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (id)updateAuthorizationDataForCharacteristicWithInstanceID:(id)a3 accessoryUUID:(id)a4 homeModelID:(id)a5 authorizationData:(id)a6 context:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = MEMORY[0x277D0F7C0];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __146__HMDSharedUserPrivateSettingsManager_updateAuthorizationDataForCharacteristicWithInstanceID_accessoryUUID_homeModelID_authorizationData_context___block_invoke;
  v25[3] = &unk_27867E228;
  v25[4] = self;
  v26 = v14;
  v27 = v16;
  v28 = v13;
  v29 = v15;
  v30 = v12;
  v18 = v12;
  v19 = v15;
  v20 = v13;
  v21 = v16;
  v22 = v14;
  v23 = [v17 inContext:v21 perform:v25];

  return v23;
}

uint64_t __146__HMDSharedUserPrivateSettingsManager_updateAuthorizationDataForCharacteristicWithInstanceID_accessoryUUID_homeModelID_authorizationData_context___block_invoke(uint64_t a1)
{
  v89[1] = *MEMORY[0x277D85DE8];
  v66 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v2 = objc_alloc(MEMORY[0x277CBE428]);
  v3 = +[MKFCKSharedUserPrivateRoot entity];
  v4 = [v3 name];
  v5 = [v2 initWithEntityName:v4];

  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"homeModelID", *(a1 + 40)];
  [v5 setPredicate:v6];

  v7 = [*(*(a1 + 32) + 16) cloudPrivateStore];
  v89[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:1];
  [v5 setAffectedStores:v8];
  v69 = v5;

  [v5 setFetchLimit:1];
  v9 = *(a1 + 48);
  v77 = 0;
  v10 = [v9 executeFetchRequest:v5 error:&v77];
  v67 = v77;
  v68 = [v10 firstObject];

  if (v68)
  {
    v11 = [*(*(a1 + 32) + 56) objectForKeyedSubscript:*(a1 + 40)];
    v12 = [v11 mutableCopy];

    v13 = v12;
    if (!v12)
    {
      v13 = [MEMORY[0x277CBEB38] dictionary];
    }

    v71 = v13;
    v14 = [v13 objectForKeyedSubscript:*(a1 + 56)];
    v70 = [v14 mutableCopy];

    if (!v70)
    {
      v70 = [MEMORY[0x277CBEB38] dictionary];
    }

    v15 = objc_autoreleasePoolPush();
    v16 = *(a1 + 32);
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v20 = *(a1 + 64);
      v19 = *(a1 + 72);
      v21 = *(a1 + 56);
      v22 = *(a1 + 40);
      *buf = 138544386;
      v80 = v18;
      v81 = 2112;
      v82 = v20;
      v83 = 2112;
      v84 = v19;
      v85 = 2112;
      v86 = v21;
      v87 = 2112;
      v88 = v22;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Updating authorization data: %@ for characteristic with instance ID: %@ with accessory uuid:%@ home uuid: %@ ", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v15);
    v23 = [v70 objectForKeyedSubscript:*(a1 + 72)];
    v24 = [v23 isEqualToData:*(a1 + 64)];

    if (v24)
    {
      v25 = objc_autoreleasePoolPush();
      v26 = *(a1 + 32);
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v30 = *(a1 + 64);
        v29 = *(a1 + 72);
        v31 = *(a1 + 56);
        *buf = 138544130;
        v80 = v28;
        v81 = 2112;
        v82 = v29;
        v83 = 2112;
        v84 = v31;
        v85 = 2112;
        v86 = v30;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@Authorization data for characteristic with instance ID: %@ of accessory with uuid: %@ is already set to: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v25);
      v32 = 0;
      v33 = 1;
    }

    else
    {
      [v70 setObject:*(a1 + 64) forKeyedSubscript:*(a1 + 72)];
      v41 = [v70 copy];
      [v71 setObject:v41 forKeyedSubscript:*(a1 + 56)];

      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v42 = [v71 allKeys];
      v43 = [v42 countByEnumeratingWithState:&v73 objects:v78 count:16];
      if (v43)
      {
        v44 = *v74;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v74 != v44)
            {
              objc_enumerationMutation(v42);
            }

            v46 = *(*(&v73 + 1) + 8 * i);
            WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
            v48 = [WeakRetained accessoryWithUUID:v46];
            v49 = v48 == 0;

            if (v49)
            {
              v50 = objc_autoreleasePoolPush();
              v51 = *(a1 + 32);
              v52 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
              {
                v53 = HMFGetLogIdentifier();
                *buf = 138543618;
                v80 = v53;
                v81 = 2112;
                v82 = v46;
                _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Removing characteristic authorization data for removed accessory: %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v50);
              [v71 setObject:0 forKeyedSubscript:v46];
            }
          }

          v43 = [v42 countByEnumeratingWithState:&v73 objects:v78 count:16];
        }

        while (v43);
      }

      v54 = [v71 copy];
      [v68 setCharacteristicAuthorizationData:v54];

      v55 = *(a1 + 48);
      v72 = 0;
      v32 = [v55 save:&v72];
      v56 = v72;
      [*(a1 + 48) reset];
      if (v32)
      {
        v57 = [v71 copy];
        [*(*(a1 + 32) + 56) setObject:v57 forKeyedSubscript:*(a1 + 40)];
      }

      else
      {
        v58 = objc_autoreleasePoolPush();
        v59 = *(a1 + 32);
        v60 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          v61 = HMFGetLogIdentifier();
          *buf = 138543618;
          v80 = v61;
          v81 = 2112;
          v82 = v56;
          _os_log_impl(&dword_229538000, v60, OS_LOG_TYPE_ERROR, "%{public}@Failed to save authorization data:%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v58);
        v62 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        v57 = v62;
        if (v62)
        {
          v63 = v62;
        }

        else
        {
          [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
          objc_claimAutoreleasedReturnValue();
        }
      }

      v33 = 2;
    }

    if (v32)
    {
      v33 = 1;
    }
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = *(a1 + 32);
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543618;
      v80 = v37;
      v81 = 2112;
      v82 = v67;
      _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to update authorization data, unable to fetch user settings container: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
    v38 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v39 = v38;
    if (v38)
    {
      v40 = v38;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v33 = 2;
  }

  os_unfair_lock_unlock(v66 + 2);
  v64 = *MEMORY[0x277D85DE8];
  return v33;
}

- (id)authorizationDataForCharacteristicWithInstanceID:(id)a3 accessoryUUID:(id)a4 homeModelID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  os_unfair_lock_lock_with_options();
  v11 = [(NSMutableDictionary *)self->_characteristicAuthorizationDataByHomeModelID objectForKeyedSubscript:v10];
  v12 = [v11 objectForKeyedSubscript:v9];
  v13 = [v12 objectForKeyedSubscript:v8];

  os_unfair_lock_unlock(&self->_lock);

  return v13;
}

- (id)updateSettingsForHome:(id)a3 ofType:(int64_t)a4 withValues:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v11 count];
  v14 = MEMORY[0x277D0F7C0];
  if (v13)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __87__HMDSharedUserPrivateSettingsManager_updateSettingsForHome_ofType_withValues_context___block_invoke;
    v17[3] = &unk_278685130;
    v17[4] = self;
    v21 = a4;
    v18 = v10;
    v19 = v12;
    v20 = v11;
    v15 = [v14 inContext:v19 perform:v17];
  }

  else
  {
    v15 = [MEMORY[0x277D0F7C0] futureWithNoValue];
  }

  return v15;
}

uint64_t __87__HMDSharedUserPrivateSettingsManager_updateSettingsForHome_ofType_withValues_context___block_invoke(uint64_t a1)
{
  v68[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v3 = *(a1 + 64);
  if (v3 == 2)
  {
    v4 = *(*(a1 + 32) + 48);
    v5 = +[MKFCKSharedUserDataRoot entity];
LABEL_5:
    v6 = v5;
    v7 = objc_alloc(MEMORY[0x277CBE428]);
    v8 = [v6 name];
    v9 = [v7 initWithEntityName:v8];

    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"homeModelID", *(a1 + 40)];
    [v9 setPredicate:v10];

    v11 = [*(*(a1 + 32) + 16) cloudPrivateStore];
    v68[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:1];
    [v9 setAffectedStores:v12];

    [v9 setFetchLimit:1];
    v13 = *(a1 + 48);
    v59 = 0;
    v14 = [v13 executeFetchRequest:v9 error:&v59];
    v15 = v59;
    v16 = [v14 firstObject];

    if (!v16)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = *(a1 + 32);
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v29;
        *&buf[12] = 2112;
        *&buf[14] = v15;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch user settings container: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v30 = +[HMDTTRManager sharedManager];
      [v30 requestRadarWithDisplayReason:@"detected issue related to HomeKit Shared User functionality" radarTitle:@"MKFCKSharedUserDataRoot container missing during settings update" componentName:@"HomeKit" componentVersion:@"Users+Invitations" componentID:938670];

      v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      v32 = v31;
      if (v31)
      {
        v33 = v31;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
        objc_claimAutoreleasedReturnValue();
      }

      v39 = 0;
      goto LABEL_31;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v65 = __Block_byref_object_copy__190226;
    v66 = __Block_byref_object_dispose__190227;
    v67 = 0;
    v17 = [v6 hmd_attributesBySettingsPath];
    v18 = *(a1 + 56);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __87__HMDSharedUserPrivateSettingsManager_updateSettingsForHome_ofType_withValues_context___block_invoke_14;
    v52[3] = &unk_27867E200;
    v19 = v17;
    v20 = *(a1 + 32);
    v53 = v19;
    v54 = v20;
    v55 = v6;
    v58 = buf;
    v56 = *(a1 + 40);
    v57 = v16;
    [v18 enumerateKeysAndObjectsUsingBlock:v52];
    v22 = (*&buf[8] + 40);
    v21 = *(*&buf[8] + 40);
    if (v21)
    {
      v21;
    }

    else
    {
      v34 = *(a1 + 48);
      obj = 0;
      v35 = [v34 save:&obj];
      objc_storeStrong(v22, obj);
      [*(a1 + 48) reset];
      if (v35)
      {
        v36 = [v4 objectForKeyedSubscript:*(a1 + 40)];
        v37 = v36;
        if (v36)
        {
          [v36 addEntriesFromDictionary:*(a1 + 56)];
        }

        else
        {
          v47 = [*(a1 + 56) mutableCopy];
          [v4 setObject:v47 forKeyedSubscript:*(a1 + 40)];
        }

        v39 = 1;
        goto LABEL_30;
      }

      context = objc_autoreleasePoolPush();
      v40 = *(a1 + 32);
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        v43 = *(*&buf[8] + 40);
        *v60 = 138543618;
        v61 = v42;
        v62 = 2112;
        v63 = v43;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to save: %@", v60, 0x16u);
      }

      objc_autoreleasePoolPop(context);
      v44 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
      v45 = v44;
      if (v44)
      {
        v46 = v44;
      }

      else
      {
        [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
        objc_claimAutoreleasedReturnValue();
      }
    }

    v39 = 0;
LABEL_30:

    _Block_object_dispose(buf, 8);
LABEL_31:

    if (v39)
    {
      v38 = 1;
    }

    else
    {
      v38 = 2;
    }

    goto LABEL_34;
  }

  if (v3 == 1)
  {
    v4 = *(*(a1 + 32) + 40);
    v5 = +[MKFCKSharedUserPrivateRoot entity];
    goto LABEL_5;
  }

  v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
    objc_claimAutoreleasedReturnValue();
  }

  v38 = 2;
LABEL_34:
  os_unfair_lock_unlock(v2 + 2);
  v48 = *MEMORY[0x277D85DE8];
  return v38;
}

void __87__HMDSharedUserPrivateSettingsManager_updateSettingsForHome_ofType_withValues_context___block_invoke_14(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 40);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v14 = v27 = v8;
      v15 = v10;
      v16 = *(a1 + 56);
      v17 = [*(a1 + 48) name];
      v18 = [v9 name];
      *buf = 138544642;
      v29 = v14;
      v30 = 2112;
      v31 = v16;
      v10 = v15;
      v32 = 2112;
      v33 = v7;
      v34 = 2112;
      v35 = v17;
      v36 = 2112;
      v37 = v18;
      v38 = 2112;
      v39 = v27;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating shared user setting %@/%@ (%@.%@) = %@", buf, 0x3Eu);

      v8 = v27;
    }

    objc_autoreleasePoolPop(v10);
    v19 = *(a1 + 64);
    v20 = [v9 name];
    [v19 setValue:v8 forKey:v20];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [*(a1 + 48) name];
      *buf = 138543874;
      v29 = v21;
      v30 = 2112;
      v31 = v22;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Invalid settings key path for %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v23 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    v24 = *(*(a1 + 72) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;

    *a4 = 1;
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)settingsForHome:(id)a3 ofType:(int64_t)a4
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  if (a4 == 1)
  {
    v7 = 40;
    goto LABEL_5;
  }

  if (a4 == 2)
  {
    v7 = 48;
LABEL_5:
    v8 = *(&self->super.isa + v7);
    v9 = [v8 objectForKeyedSubscript:v6];

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (HMDSharedUserPrivateSettingsManager)initWithCoreData:(id)a3 cloudTransform:(id)a4 homeManager:(id)a5
{
  v20[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HMDSharedUserPrivateSettingsManager;
  v12 = [(HMDSharedUserPrivateSettingsManager *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_coreData, a3);
    objc_storeStrong(&v13->_cloudTransform, a4);
    objc_storeWeak(&v13->_homeManager, v11);
    v14 = +[MKFCKSharedUserDataRoot entity];
    v20[0] = v14;
    v15 = +[MKFCKSharedUserPrivateRoot entity];
    v20[1] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    [v10 registerCloudChangeListener:v13 forEntities:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19_190241 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19_190241, &__block_literal_global_190242);
  }

  v3 = logCategory__hmf_once_v20_190243;

  return v3;
}

void __50__HMDSharedUserPrivateSettingsManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v20_190243;
  logCategory__hmf_once_v20_190243 = v1;
}

@end