@interface HMDAccessorySettingTransform
+ (id)mergeWithGroupMetadata:(id)a3 group:(id)a4;
+ (id)modelForGroup:(id)a3;
+ (id)modelForSetting:(id)a3;
+ (id)modelForSetting:(id)a3 identifier:(id)a4 parentIdentifier:(id)a5;
+ (id)modelsForChangedConstraints:(id)a3 fromSetting:(id)a4;
+ (id)modelsForGroup:(id)a3;
+ (id)modelsForGroupDiff:(id)a3 fromGroup:(id)a4;
+ (id)modelsForSetting:(id)a3;
+ (id)modelsForSettingDiff:(id)a3 fromSetting:(id)a4;
+ (void)changeAccessorySettingType:(id)a3 home:(id)a4;
@end

@implementation HMDAccessorySettingTransform

+ (id)mergeWithGroupMetadata:(id)a3 group:(id)a4
{
  v129 = *MEMORY[0x277D85DE8];
  v90 = a3;
  v93 = a4;
  v6 = objc_autoreleasePoolPush();
  v7 = a1;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v124 = v9;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Merging with metadata", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v94 = [MEMORY[0x277CBEB18] array];
  v10 = MEMORY[0x277CBEB38];
  v11 = [v90 settings];
  v12 = [v10 dictionaryWithCapacity:{objc_msgSend(v11, "count")}];

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v13 = [v90 settings];
  v14 = [v13 countByEnumeratingWithState:&v115 objects:v128 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v116;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v116 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v115 + 1) + 8 * i);
        v19 = [v18 name];
        [v12 setObject:v18 forKey:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v115 objects:v128 count:16];
    }

    while (v15);
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v20 = [v93 settings];
  v21 = [v20 countByEnumeratingWithState:&v111 objects:v127 count:16];
  v92 = v7;
  if (v21)
  {
    v22 = v21;
    v23 = *v112;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v112 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v111 + 1) + 8 * j);
        v26 = [v12 allKeys];
        v27 = [v25 name];
        v28 = [v26 containsObject:v27];

        if (v28)
        {
          v29 = [v25 name];
          [v12 removeObjectForKey:v29];
        }

        else
        {
          v30 = objc_autoreleasePoolPush();
          v31 = v92;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = HMFGetLogIdentifier();
            *buf = 138543618;
            v124 = v33;
            v125 = 2112;
            v126 = v25;
            _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Removing setting: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v30);
          v34 = [HMDAccessorySettingModel alloc];
          v29 = [v25 identifier];
          v35 = [v25 parentIdentifier];
          v36 = [(HMDBackingStoreModelObject *)v34 initWithObjectChangeType:3 uuid:v29 parentUUID:v35];
          [v94 addObject:v36];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v111 objects:v127 count:16];
      v7 = v92;
    }

    while (v22);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v37 = [v12 allValues];
  v38 = [v37 countByEnumeratingWithState:&v107 objects:v122 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v108;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v108 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v107 + 1) + 8 * k);
        v43 = objc_autoreleasePoolPush();
        v44 = v7;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = HMFGetLogIdentifier();
          *buf = 138543618;
          v124 = v46;
          v125 = 2112;
          v126 = v42;
          _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@Adding setting: %@", buf, 0x16u);

          v7 = v92;
        }

        objc_autoreleasePoolPop(v43);
        v47 = [v93 identifier];
        v48 = [v42 modelsWithParentIdentifier:v47];
        [v94 addObjectsFromArray:v48];
      }

      v39 = [v37 countByEnumeratingWithState:&v107 objects:v122 count:16];
    }

    while (v39);
  }

  v49 = MEMORY[0x277CBEB38];
  v50 = [v90 groups];
  v51 = [v49 dictionaryWithCapacity:{objc_msgSend(v50, "count")}];

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v52 = [v90 groups];
  v53 = [v52 countByEnumeratingWithState:&v103 objects:v121 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v104;
    do
    {
      for (m = 0; m != v54; ++m)
      {
        if (*v104 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = *(*(&v103 + 1) + 8 * m);
        v58 = [v57 name];
        [v51 setObject:v57 forKey:v58];
      }

      v54 = [v52 countByEnumeratingWithState:&v103 objects:v121 count:16];
    }

    while (v54);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = [v93 groups];
  v59 = [obj countByEnumeratingWithState:&v99 objects:v120 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v100;
    do
    {
      for (n = 0; n != v60; ++n)
      {
        if (*v100 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v63 = *(*(&v99 + 1) + 8 * n);
        v64 = [v63 name];
        v65 = [v51 objectForKey:v64];

        if (v65)
        {
          v66 = [v63 name];
          [v51 removeObjectForKey:v66];

          v67 = [v7 mergeWithGroupMetadata:v65 group:v63];
          [v94 addObjectsFromArray:v67];
        }

        else
        {
          v68 = objc_autoreleasePoolPush();
          v69 = v7;
          v70 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            v71 = HMFGetLogIdentifier();
            *buf = 138543618;
            v124 = v71;
            v125 = 2112;
            v126 = v63;
            _os_log_impl(&dword_2531F8000, v70, OS_LOG_TYPE_DEFAULT, "%{public}@Removing group: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v68);
          v72 = [HMDAccessorySettingGroupModel alloc];
          v67 = [v63 identifier];
          v73 = [v63 parentIdentifier];
          v74 = [(HMDBackingStoreModelObject *)v72 initWithObjectChangeType:3 uuid:v67 parentUUID:v73];
          [v94 addObject:v74];

          v7 = v92;
        }
      }

      v60 = [obj countByEnumeratingWithState:&v99 objects:v120 count:16];
    }

    while (v60);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v75 = [v51 allValues];
  v76 = [v75 countByEnumeratingWithState:&v95 objects:v119 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v96;
    do
    {
      for (ii = 0; ii != v77; ++ii)
      {
        if (*v96 != v78)
        {
          objc_enumerationMutation(v75);
        }

        v80 = *(*(&v95 + 1) + 8 * ii);
        v81 = objc_autoreleasePoolPush();
        v82 = v7;
        v83 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          v84 = HMFGetLogIdentifier();
          *buf = 138543618;
          v124 = v84;
          v125 = 2112;
          v126 = v80;
          _os_log_impl(&dword_2531F8000, v83, OS_LOG_TYPE_DEFAULT, "%{public}@Adding group: %@", buf, 0x16u);

          v7 = v92;
        }

        objc_autoreleasePoolPop(v81);
        v85 = [v93 identifier];
        v86 = [v80 modelsWithParentIdentifier:v85];
        [v94 addObjectsFromArray:v86];
      }

      v77 = [v75 countByEnumeratingWithState:&v95 objects:v119 count:16];
    }

    while (v77);
  }

  v87 = [v94 copy];
  v88 = *MEMORY[0x277D85DE8];

  return v87;
}

+ (void)changeAccessorySettingType:(id)a3 home:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (![v5 type])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = v5;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Unknown type, attempting to resolve", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [v6 homeManager];
    v12 = [v11 cloudDataSyncManager];
    v13 = [v12 cloudCache];

    if (!v13)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v8;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v17;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot resolve, no cloud cache", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
    }

    objc_initWeak(buf, v6);
    v18 = [v6 zoneID];
    v19 = [v18 UUIDString];

    v20 = [v6 ownerName];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __64__HMDAccessorySettingTransform_changeAccessorySettingType_home___block_invoke;
    v22[3] = &unk_279726208;
    v23 = v8;
    objc_copyWeak(&v24, buf);
    [v13 homeZoneWithName:v19 owner:v20 completion:v22];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __64__HMDAccessorySettingTransform_changeAccessorySettingType_home___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) identifier];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__HMDAccessorySettingTransform_changeAccessorySettingType_home___block_invoke_9;
    v13[3] = &unk_2797261E0;
    v14 = *(a1 + 32);
    objc_copyWeak(&v15, (a1 + 40));
    [v5 cloudRecordWithObjectID:v7 completionHandler:v13];

    objc_destroyWeak(&v15);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v11;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot get home zone with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __64__HMDAccessorySettingTransform_changeAccessorySettingType_home___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 extractObjectChange];
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

    if (v9)
    {
      v10 = [v9 type];

      if (v10)
      {
        v11 = [v9 type];
        v12 = [v11 integerValue];

        v13 = objc_autoreleasePoolPush();
        v14 = *(a1 + 32);
        v15 = HMFGetOSLogHandle();
        v16 = v15;
        if (v12)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v17 = HMFGetLogIdentifier();
            v18 = HMAccessorySettingTypeToString();
            v32 = 138543618;
            v33 = v17;
            v34 = 2112;
            v35 = v18;
            _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Updating type to '%@'", &v32, 0x16u);
          }

          objc_autoreleasePoolPop(v13);
          [*(a1 + 32) _setType:v12];
          WeakRetained = objc_loadWeakRetained((a1 + 40));
          v20 = [[HMDHomeSaveRequest alloc] initWithReason:@"Updating setting type" information:0 saveOptions:0];
          v21 = [WeakRetained homeManager];
          [v21 saveWithRequest:v20];

          goto LABEL_21;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          v32 = 138543362;
          v33 = v31;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Cached type is invalid", &v32, 0xCu);
        }

LABEL_20:
        objc_autoreleasePoolPop(v13);
LABEL_21:

        goto LABEL_22;
      }

      v13 = objc_autoreleasePoolPush();
      v26 = *(a1 + 32);
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = HMFGetLogIdentifier();
        v32 = 138543618;
        v33 = v28;
        v34 = 2112;
        v35 = v9;
        v29 = "%{public}@Cached model missing type: %@";
        goto LABEL_18;
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v26 = *(a1 + 32);
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = HMFGetLogIdentifier();
        v32 = 138543618;
        v33 = v28;
        v34 = 2112;
        v35 = v5;
        v29 = "%{public}@Failed to get backing model for record: %@";
LABEL_18:
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, v29, &v32, 0x16u);
      }
    }

    goto LABEL_20;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = *(a1 + 32);
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = HMFGetLogIdentifier();
    v32 = 138543618;
    v33 = v25;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@No cached record found with error: %@", &v32, 0x16u);
  }

  objc_autoreleasePoolPop(v22);
LABEL_22:

  v30 = *MEMORY[0x277D85DE8];
}

+ (id)modelsForChangedConstraints:(id)a3 fromSetting:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CBEB98];
  v9 = [v7 constraints];
  v10 = [v8 setWithArray:v9];
  v11 = [MEMORY[0x277CBEB98] setWithArray:v6];
  if ([v10 isEqualToSet:v11])
  {
    v12 = [v7 isConstraintMergeStrategyReflection];

    if ((v12 & 1) == 0)
    {
      v13 = MEMORY[0x277CBEBF8];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v14 = objc_autoreleasePoolPush();
  v15 = a1;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v17;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Constraints are not matching with media system", &v20, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  v13 = [v7 modelsForConstraintsUpdate:v6];
LABEL_8:

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)modelForSetting:(id)a3 identifier:(id)a4 parentIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(HMDBackingStoreModelObject *)[HMDAccessorySettingModel alloc] initWithObjectChangeType:0 uuid:v8 parentUUID:v7];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "properties")}];
  [(HMDAccessorySettingModel *)v10 setProperties:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "type")}];
  [(HMDAccessorySettingModel *)v10 setType:v12];

  v13 = [v9 name];
  [(HMDAccessorySettingModel *)v10 setName:v13];

  v14 = [v9 value];
  v15 = encodeRootObject();
  [(HMDAccessorySettingModel *)v10 setValue:v15];

  v16 = MEMORY[0x277CCABB0];
  v17 = [v9 configurationVersion];

  v18 = [v16 numberWithUnsignedInteger:v17];
  [(HMDAccessorySettingModel *)v10 setConfigurationVersion:v18];

  return v10;
}

+ (id)modelForSetting:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 parentIdentifier];
  v7 = [a1 modelForSetting:v4 identifier:v5 parentIdentifier:v6];

  return v7;
}

+ (id)modelsForSetting:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 constraints];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count") + 1}];
  v7 = [a1 modelForSetting:v4];
  [v7 setObjectChangeType:1];
  [v6 addObject:v7];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
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
        v14 = [v4 identifier];
        v15 = [v13 modelWithParentIdentifier:v14];

        [v15 setObjectChangeType:1];
        [v6 addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v16 = [v6 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)modelForGroup:(id)a3
{
  v3 = a3;
  v4 = [HMDAccessorySettingGroupModel alloc];
  v5 = [v3 identifier];
  v6 = [v3 parentIdentifier];
  v7 = [(HMDBackingStoreModelObject *)v4 initWithObjectChangeType:1 uuid:v5 parentUUID:v6];

  v8 = [v3 name];

  [(HMDAccessorySettingGroupModel *)v7 setName:v8];

  return v7;
}

+ (id)modelsForSettingDiff:(id)a3 fromSetting:(id)a4
{
  v120 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [v6 type];
  if (v9 != [v7 type])
  {
    v86 = MEMORY[0x277CBEBF8];
    goto LABEL_37;
  }

  v10 = [v6 type];
  if (v10 == 4)
  {
    v87 = MEMORY[0x277CBEB98];
    v88 = [v7 constraints];
    v89 = [v87 setWithArray:v88];
    v90 = MEMORY[0x277CBEB98];
    v91 = [v6 constraints];
    v92 = [v90 setWithArray:v91];
    v93 = [v89 na_setByRemovingObjectsFromSet:v92];

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v85 = v93;
    v94 = [v85 countByEnumeratingWithState:&v107 objects:v111 count:16];
    if (v94)
    {
      v95 = v94;
      v96 = *v108;
      do
      {
        for (i = 0; i != v95; ++i)
        {
          if (*v108 != v96)
          {
            objc_enumerationMutation(v85);
          }

          v98 = *(*(&v107 + 1) + 8 * i);
          v99 = [v6 identifier];
          v100 = [v98 modelWithParentIdentifier:v99];

          [v100 setObjectChangeType:1];
          [v8 addObject:v100];
        }

        v95 = [v85 countByEnumeratingWithState:&v107 objects:v111 count:16];
      }

      while (v95);
    }

    v101 = objc_autoreleasePoolPush();
    v102 = a1;
    v103 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
    {
      v104 = HMFGetLogIdentifier();
      *buf = 138543874;
      v113 = v104;
      v114 = 2112;
      v115 = v85;
      v116 = 2112;
      v117 = v6;
      _os_log_impl(&dword_2531F8000, v103, OS_LOG_TYPE_INFO, "%{public}@Adding missing selection constraints %@ to setting %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v101);
  }

  else
  {
    if (v10 != 2)
    {
      goto LABEL_36;
    }

    v11 = [v6 constraints];
    v12 = _findConstraintForType(v11, 1);

    v13 = [v7 constraints];
    v14 = _findConstraintForType(v13, 1);

    v15 = [v12 value];
    v16 = [v14 value];
    v17 = [v15 isEqual:v16];

    if ((v17 & 1) == 0)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = a1;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138544130;
        v113 = v21;
        v114 = 2112;
        v115 = v14;
        v116 = 2112;
        v117 = v12;
        v118 = 2112;
        v119 = v6;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Min constraint %@ does not match %@ for %@ changing", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [HMDAccessorySettingConstraintModel alloc];
      v23 = [MEMORY[0x277CCAD78] UUID];
      v24 = [v6 identifier];
      v25 = [(HMDBackingStoreModelObject *)v22 initWithObjectChangeType:1 uuid:v23 parentUUID:v24];

      v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "type")}];
      [(HMDAccessorySettingConstraintModel *)v25 setType:v26];

      v27 = [v14 value];
      v28 = encodeRootObject();
      [(HMDAccessorySettingConstraintModel *)v25 setValue:v28];

      [v8 addObject:v25];
      v29 = [v12 identifier];

      if (v29)
      {
        v30 = [HMDAccessorySettingConstraintModel alloc];
        v31 = [v12 identifier];
        v32 = [v6 identifier];
        v33 = [(HMDBackingStoreModelObject *)v30 initWithObjectChangeType:3 uuid:v31 parentUUID:v32];

        [v8 addObject:v33];
      }
    }

    v34 = [v6 constraints];
    v35 = _findConstraintForType(v34, 2);

    v36 = [v7 constraints];
    v37 = _findConstraintForType(v36, 2);

    v38 = [v35 value];
    v39 = [v37 value];
    v40 = [v38 isEqual:v39];

    if ((v40 & 1) == 0)
    {
      v41 = objc_autoreleasePoolPush();
      v42 = a1;
      v43 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = HMFGetLogIdentifier();
        *buf = 138544130;
        v113 = v44;
        v114 = 2112;
        v115 = v37;
        v116 = 2112;
        v117 = v35;
        v118 = 2112;
        v119 = v6;
        _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_INFO, "%{public}@Max constraint %@ does not match %@ for %@ changing", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v41);
      v45 = [HMDAccessorySettingConstraintModel alloc];
      v46 = [MEMORY[0x277CCAD78] UUID];
      v47 = [v6 identifier];
      v48 = [(HMDBackingStoreModelObject *)v45 initWithObjectChangeType:1 uuid:v46 parentUUID:v47];

      v49 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v37, "type")}];
      [(HMDAccessorySettingConstraintModel *)v48 setType:v49];

      v50 = [v37 value];
      v51 = encodeRootObject();
      [(HMDAccessorySettingConstraintModel *)v48 setValue:v51];

      [v8 addObject:v48];
      v52 = [v35 identifier];

      if (v52)
      {
        v53 = [HMDAccessorySettingConstraintModel alloc];
        v54 = [v35 identifier];
        v55 = [v6 identifier];
        v56 = [(HMDBackingStoreModelObject *)v53 initWithObjectChangeType:3 uuid:v54 parentUUID:v55];

        [v8 addObject:v56];
      }
    }

    v57 = [v6 constraints];
    v58 = _findConstraintForType(v57, 3);

    v59 = [v7 constraints];
    v60 = _findConstraintForType(v59, 3);

    v61 = [v58 value];
    v62 = [v60 value];
    v63 = [v61 isEqual:v62];

    if ((v63 & 1) == 0)
    {
      v64 = objc_autoreleasePoolPush();
      v65 = a1;
      v66 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        v67 = HMFGetLogIdentifier();
        *buf = 138544130;
        v113 = v67;
        v114 = 2112;
        v115 = v60;
        v116 = 2112;
        v117 = v58;
        v118 = 2112;
        v119 = v6;
        _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_INFO, "%{public}@Step constraint %@ does not match %@ for %@ changing", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v64);
      v68 = [HMDAccessorySettingConstraintModel alloc];
      v69 = [MEMORY[0x277CCAD78] UUID];
      v70 = [v6 identifier];
      v71 = [(HMDBackingStoreModelObject *)v68 initWithObjectChangeType:1 uuid:v69 parentUUID:v70];

      v72 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v60, "type")}];
      [(HMDAccessorySettingConstraintModel *)v71 setType:v72];

      v73 = [v60 value];
      v74 = encodeRootObject();
      [(HMDAccessorySettingConstraintModel *)v71 setValue:v74];

      [v8 addObject:v71];
      v75 = [v58 identifier];

      if (v75)
      {
        v76 = [HMDAccessorySettingConstraintModel alloc];
        v77 = [v58 identifier];
        v78 = [v6 identifier];
        v79 = [(HMDBackingStoreModelObject *)v76 initWithObjectChangeType:3 uuid:v77 parentUUID:v78];

        [v8 addObject:v79];
      }
    }

    v80 = [v6 value];
    v81 = [v7 value];
    v82 = HMFEqualObjects();

    if (v82)
    {
      goto LABEL_36;
    }

    v83 = [v6 identifier];
    v84 = [v6 parentIdentifier];
    v85 = [a1 modelForSetting:v7 identifier:v83 parentIdentifier:v84];

    [v85 setObjectChangeType:2];
    [v8 addObject:v85];
  }

LABEL_36:
  v86 = v8;
LABEL_37:

  v105 = *MEMORY[0x277D85DE8];

  return v86;
}

+ (id)modelsForGroupDiff:(id)a3 fromGroup:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v26 = [a1 modelsForGroup:v7];
    goto LABEL_26;
  }

  v31 = a1;
  v8 = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [v7 groups];
  v9 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  v11 = *v39;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v39 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v38 + 1) + 8 * i);
      v14 = [v6 groups];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __61__HMDAccessorySettingTransform_modelsForGroupDiff_fromGroup___block_invoke;
      v37[3] = &unk_279730DD8;
      v37[4] = v13;
      v15 = [v14 na_firstObjectPassingTest:v37];

      if (v15)
      {
        if ([v15 compareSettingsTree:v13])
        {
          goto LABEL_12;
        }

        v16 = [HMDAccessorySettingTransform modelsForGroupDiff:v15 fromGroup:v13];
      }

      else
      {
        v16 = [a1 modelsForGroup:v13];
      }

      v17 = v16;
      [v8 addObjectsFromArray:v16];

LABEL_12:
    }

    v10 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
  }

  while (v10);
LABEL_14:

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obja = [v7 settings];
  v18 = [obja countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(obja);
        }

        v22 = *(*(&v33 + 1) + 8 * j);
        v23 = [v6 settings];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __61__HMDAccessorySettingTransform_modelsForGroupDiff_fromGroup___block_invoke_2;
        v32[3] = &unk_279730DB0;
        v32[4] = v22;
        v24 = [v23 na_firstObjectPassingTest:v32];

        if (v24)
        {
          [HMDAccessorySettingTransform modelsForSettingDiff:v24 fromSetting:v22];
        }

        else
        {
          [v31 modelsForSetting:v22];
        }
        v25 = ;
        [v8 addObjectsFromArray:v25];
      }

      v19 = [obja countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v19);
  }

  v26 = [v8 copy];
LABEL_26:

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

uint64_t __61__HMDAccessorySettingTransform_modelsForGroupDiff_fromGroup___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [*(a1 + 32) name];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t __61__HMDAccessorySettingTransform_modelsForGroupDiff_fromGroup___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [*(a1 + 32) name];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

+ (id)modelsForGroup:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [a1 modelForGroup:v4];
  [v5 addObject:v6];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v4 settings];
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [a1 modelsForSetting:*(*(&v25 + 1) + 8 * i)];
        [v5 addObjectsFromArray:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [v4 groups];
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [a1 modelsForGroup:*(*(&v21 + 1) + 8 * j)];
        [v5 addObjectsFromArray:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v5;
}

@end