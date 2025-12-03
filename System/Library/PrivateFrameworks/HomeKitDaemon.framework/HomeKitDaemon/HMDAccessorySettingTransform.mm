@interface HMDAccessorySettingTransform
+ (id)mergeWithGroupMetadata:(id)metadata group:(id)group;
+ (id)modelForGroup:(id)group;
+ (id)modelForSetting:(id)setting;
+ (id)modelForSetting:(id)setting identifier:(id)identifier parentIdentifier:(id)parentIdentifier;
+ (id)modelsForChangedConstraints:(id)constraints fromSetting:(id)setting;
+ (id)modelsForGroup:(id)group;
+ (id)modelsForGroupDiff:(id)diff fromGroup:(id)group;
+ (id)modelsForSetting:(id)setting;
+ (id)modelsForSettingDiff:(id)diff fromSetting:(id)setting;
@end

@implementation HMDAccessorySettingTransform

+ (id)mergeWithGroupMetadata:(id)metadata group:(id)group
{
  v129 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  groupCopy = group;
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v124 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Merging with metadata", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  array = [MEMORY[0x277CBEB18] array];
  v10 = MEMORY[0x277CBEB38];
  settings = [metadataCopy settings];
  v12 = [v10 dictionaryWithCapacity:{objc_msgSend(settings, "count")}];

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  settings2 = [metadataCopy settings];
  v14 = [settings2 countByEnumeratingWithState:&v115 objects:v128 count:16];
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
          objc_enumerationMutation(settings2);
        }

        v18 = *(*(&v115 + 1) + 8 * i);
        name = [v18 name];
        [v12 setObject:v18 forKey:name];
      }

      v15 = [settings2 countByEnumeratingWithState:&v115 objects:v128 count:16];
    }

    while (v15);
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  settings3 = [groupCopy settings];
  v21 = [settings3 countByEnumeratingWithState:&v111 objects:v127 count:16];
  v92 = selfCopy;
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
          objc_enumerationMutation(settings3);
        }

        v25 = *(*(&v111 + 1) + 8 * j);
        allKeys = [v12 allKeys];
        name2 = [v25 name];
        v28 = [allKeys containsObject:name2];

        if (v28)
        {
          name3 = [v25 name];
          [v12 removeObjectForKey:name3];
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
            _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Removing setting: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v30);
          v34 = [HMDAccessorySettingModel alloc];
          name3 = [v25 identifier];
          parentIdentifier = [v25 parentIdentifier];
          v36 = [(HMDBackingStoreModelObject *)v34 initWithObjectChangeType:3 uuid:name3 parentUUID:parentIdentifier];
          [array addObject:v36];
        }
      }

      v22 = [settings3 countByEnumeratingWithState:&v111 objects:v127 count:16];
      selfCopy = v92;
    }

    while (v22);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  allValues = [v12 allValues];
  v38 = [allValues countByEnumeratingWithState:&v107 objects:v122 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v42 = *(*(&v107 + 1) + 8 * k);
        v43 = objc_autoreleasePoolPush();
        v44 = selfCopy;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = HMFGetLogIdentifier();
          *buf = 138543618;
          v124 = v46;
          v125 = 2112;
          v126 = v42;
          _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_DEFAULT, "%{public}@Adding setting: %@", buf, 0x16u);

          selfCopy = v92;
        }

        objc_autoreleasePoolPop(v43);
        identifier = [groupCopy identifier];
        v48 = [v42 modelsWithParentIdentifier:identifier];
        [array addObjectsFromArray:v48];
      }

      v39 = [allValues countByEnumeratingWithState:&v107 objects:v122 count:16];
    }

    while (v39);
  }

  v49 = MEMORY[0x277CBEB38];
  groups = [metadataCopy groups];
  v51 = [v49 dictionaryWithCapacity:{objc_msgSend(groups, "count")}];

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  groups2 = [metadataCopy groups];
  v53 = [groups2 countByEnumeratingWithState:&v103 objects:v121 count:16];
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
          objc_enumerationMutation(groups2);
        }

        v57 = *(*(&v103 + 1) + 8 * m);
        name4 = [v57 name];
        [v51 setObject:v57 forKey:name4];
      }

      v54 = [groups2 countByEnumeratingWithState:&v103 objects:v121 count:16];
    }

    while (v54);
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  obj = [groupCopy groups];
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
        name5 = [v63 name];
        v65 = [v51 objectForKey:name5];

        if (v65)
        {
          name6 = [v63 name];
          [v51 removeObjectForKey:name6];

          identifier2 = [selfCopy mergeWithGroupMetadata:v65 group:v63];
          [array addObjectsFromArray:identifier2];
        }

        else
        {
          v68 = objc_autoreleasePoolPush();
          v69 = selfCopy;
          v70 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            v71 = HMFGetLogIdentifier();
            *buf = 138543618;
            v124 = v71;
            v125 = 2112;
            v126 = v63;
            _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_DEFAULT, "%{public}@Removing group: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v68);
          v72 = [HMDAccessorySettingGroupModel alloc];
          identifier2 = [v63 identifier];
          parentIdentifier2 = [v63 parentIdentifier];
          v74 = [(HMDBackingStoreModelObject *)v72 initWithObjectChangeType:3 uuid:identifier2 parentUUID:parentIdentifier2];
          [array addObject:v74];

          selfCopy = v92;
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
  allValues2 = [v51 allValues];
  v76 = [allValues2 countByEnumeratingWithState:&v95 objects:v119 count:16];
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
          objc_enumerationMutation(allValues2);
        }

        v80 = *(*(&v95 + 1) + 8 * ii);
        v81 = objc_autoreleasePoolPush();
        v82 = selfCopy;
        v83 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          v84 = HMFGetLogIdentifier();
          *buf = 138543618;
          v124 = v84;
          v125 = 2112;
          v126 = v80;
          _os_log_impl(&dword_229538000, v83, OS_LOG_TYPE_DEFAULT, "%{public}@Adding group: %@", buf, 0x16u);

          selfCopy = v92;
        }

        objc_autoreleasePoolPop(v81);
        identifier3 = [groupCopy identifier];
        v86 = [v80 modelsWithParentIdentifier:identifier3];
        [array addObjectsFromArray:v86];
      }

      v77 = [allValues2 countByEnumeratingWithState:&v95 objects:v119 count:16];
    }

    while (v77);
  }

  v87 = [array copy];
  v88 = *MEMORY[0x277D85DE8];

  return v87;
}

+ (id)modelsForChangedConstraints:(id)constraints fromSetting:(id)setting
{
  v22 = *MEMORY[0x277D85DE8];
  constraintsCopy = constraints;
  settingCopy = setting;
  v8 = MEMORY[0x277CBEB98];
  constraints = [settingCopy constraints];
  v10 = [v8 setWithArray:constraints];
  v11 = [MEMORY[0x277CBEB98] setWithArray:constraintsCopy];
  if ([v10 isEqualToSet:v11])
  {
    isConstraintMergeStrategyReflection = [settingCopy isConstraintMergeStrategyReflection];

    if ((isConstraintMergeStrategyReflection & 1) == 0)
    {
      v13 = MEMORY[0x277CBEBF8];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v20 = 138543362;
    v21 = v17;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Constraints are not matching with media system", &v20, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  v13 = [settingCopy modelsForConstraintsUpdate:constraintsCopy];
LABEL_8:

  v18 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)modelForSetting:(id)setting identifier:(id)identifier parentIdentifier:(id)parentIdentifier
{
  parentIdentifierCopy = parentIdentifier;
  identifierCopy = identifier;
  settingCopy = setting;
  v10 = [(HMDBackingStoreModelObject *)[HMDAccessorySettingModel alloc] initWithObjectChangeType:0 uuid:identifierCopy parentUUID:parentIdentifierCopy];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(settingCopy, "properties")}];
  [(HMDAccessorySettingModel *)v10 setProperties:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(settingCopy, "type")}];
  [(HMDAccessorySettingModel *)v10 setType:v12];

  name = [settingCopy name];
  [(HMDAccessorySettingModel *)v10 setName:name];

  value = [settingCopy value];
  v15 = encodeRootObject();
  [(HMDAccessorySettingModel *)v10 setValue:v15];

  v16 = MEMORY[0x277CCABB0];
  configurationVersion = [settingCopy configurationVersion];

  v18 = [v16 numberWithUnsignedInteger:configurationVersion];
  [(HMDAccessorySettingModel *)v10 setConfigurationVersion:v18];

  return v10;
}

+ (id)modelForSetting:(id)setting
{
  settingCopy = setting;
  identifier = [settingCopy identifier];
  parentIdentifier = [settingCopy parentIdentifier];
  v7 = [self modelForSetting:settingCopy identifier:identifier parentIdentifier:parentIdentifier];

  return v7;
}

+ (id)modelsForSetting:(id)setting
{
  v24 = *MEMORY[0x277D85DE8];
  settingCopy = setting;
  constraints = [settingCopy constraints];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(constraints, "count") + 1}];
  v7 = [self modelForSetting:settingCopy];
  [v7 setObjectChangeType:1];
  [v6 addObject:v7];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = constraints;
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
        identifier = [settingCopy identifier];
        v15 = [v13 modelWithParentIdentifier:identifier];

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

+ (id)modelForGroup:(id)group
{
  groupCopy = group;
  v4 = [HMDAccessorySettingGroupModel alloc];
  identifier = [groupCopy identifier];
  parentIdentifier = [groupCopy parentIdentifier];
  v7 = [(HMDBackingStoreModelObject *)v4 initWithObjectChangeType:1 uuid:identifier parentUUID:parentIdentifier];

  name = [groupCopy name];

  [(HMDAccessorySettingGroupModel *)v7 setName:name];

  return v7;
}

+ (id)modelsForSettingDiff:(id)diff fromSetting:(id)setting
{
  v120 = *MEMORY[0x277D85DE8];
  diffCopy = diff;
  settingCopy = setting;
  array = [MEMORY[0x277CBEB18] array];
  type = [diffCopy type];
  if (type != [settingCopy type])
  {
    v86 = MEMORY[0x277CBEBF8];
    goto LABEL_37;
  }

  type2 = [diffCopy type];
  if (type2 == 4)
  {
    v87 = MEMORY[0x277CBEB98];
    constraints = [settingCopy constraints];
    v89 = [v87 setWithArray:constraints];
    v90 = MEMORY[0x277CBEB98];
    constraints2 = [diffCopy constraints];
    v92 = [v90 setWithArray:constraints2];
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
          identifier = [diffCopy identifier];
          v100 = [v98 modelWithParentIdentifier:identifier];

          [v100 setObjectChangeType:1];
          [array addObject:v100];
        }

        v95 = [v85 countByEnumeratingWithState:&v107 objects:v111 count:16];
      }

      while (v95);
    }

    v101 = objc_autoreleasePoolPush();
    selfCopy = self;
    v103 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
    {
      v104 = HMFGetLogIdentifier();
      *buf = 138543874;
      v113 = v104;
      v114 = 2112;
      v115 = v85;
      v116 = 2112;
      v117 = diffCopy;
      _os_log_impl(&dword_229538000, v103, OS_LOG_TYPE_INFO, "%{public}@Adding missing selection constraints %@ to setting %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v101);
  }

  else
  {
    if (type2 != 2)
    {
      goto LABEL_36;
    }

    constraints3 = [diffCopy constraints];
    v12 = _findConstraintForType(constraints3, 1);

    constraints4 = [settingCopy constraints];
    v14 = _findConstraintForType(constraints4, 1);

    value = [v12 value];
    value2 = [v14 value];
    v17 = [value isEqual:value2];

    if ((v17 & 1) == 0)
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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
        v119 = diffCopy;
        _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Min constraint %@ does not match %@ for %@ changing", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v18);
      v22 = [HMDAccessorySettingConstraintModel alloc];
      uUID = [MEMORY[0x277CCAD78] UUID];
      identifier2 = [diffCopy identifier];
      v25 = [(HMDBackingStoreModelObject *)v22 initWithObjectChangeType:1 uuid:uUID parentUUID:identifier2];

      v26 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "type")}];
      [(HMDAccessorySettingConstraintModel *)v25 setType:v26];

      value3 = [v14 value];
      v28 = encodeRootObject();
      [(HMDAccessorySettingConstraintModel *)v25 setValue:v28];

      [array addObject:v25];
      identifier3 = [v12 identifier];

      if (identifier3)
      {
        v30 = [HMDAccessorySettingConstraintModel alloc];
        identifier4 = [v12 identifier];
        identifier5 = [diffCopy identifier];
        v33 = [(HMDBackingStoreModelObject *)v30 initWithObjectChangeType:3 uuid:identifier4 parentUUID:identifier5];

        [array addObject:v33];
      }
    }

    constraints5 = [diffCopy constraints];
    v35 = _findConstraintForType(constraints5, 2);

    constraints6 = [settingCopy constraints];
    v37 = _findConstraintForType(constraints6, 2);

    value4 = [v35 value];
    value5 = [v37 value];
    v40 = [value4 isEqual:value5];

    if ((v40 & 1) == 0)
    {
      v41 = objc_autoreleasePoolPush();
      selfCopy3 = self;
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
        v119 = diffCopy;
        _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Max constraint %@ does not match %@ for %@ changing", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v41);
      v45 = [HMDAccessorySettingConstraintModel alloc];
      uUID2 = [MEMORY[0x277CCAD78] UUID];
      identifier6 = [diffCopy identifier];
      v48 = [(HMDBackingStoreModelObject *)v45 initWithObjectChangeType:1 uuid:uUID2 parentUUID:identifier6];

      v49 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v37, "type")}];
      [(HMDAccessorySettingConstraintModel *)v48 setType:v49];

      value6 = [v37 value];
      v51 = encodeRootObject();
      [(HMDAccessorySettingConstraintModel *)v48 setValue:v51];

      [array addObject:v48];
      identifier7 = [v35 identifier];

      if (identifier7)
      {
        v53 = [HMDAccessorySettingConstraintModel alloc];
        identifier8 = [v35 identifier];
        identifier9 = [diffCopy identifier];
        v56 = [(HMDBackingStoreModelObject *)v53 initWithObjectChangeType:3 uuid:identifier8 parentUUID:identifier9];

        [array addObject:v56];
      }
    }

    constraints7 = [diffCopy constraints];
    v58 = _findConstraintForType(constraints7, 3);

    constraints8 = [settingCopy constraints];
    v60 = _findConstraintForType(constraints8, 3);

    value7 = [v58 value];
    value8 = [v60 value];
    v63 = [value7 isEqual:value8];

    if ((v63 & 1) == 0)
    {
      v64 = objc_autoreleasePoolPush();
      selfCopy4 = self;
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
        v119 = diffCopy;
        _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_INFO, "%{public}@Step constraint %@ does not match %@ for %@ changing", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v64);
      v68 = [HMDAccessorySettingConstraintModel alloc];
      uUID3 = [MEMORY[0x277CCAD78] UUID];
      identifier10 = [diffCopy identifier];
      v71 = [(HMDBackingStoreModelObject *)v68 initWithObjectChangeType:1 uuid:uUID3 parentUUID:identifier10];

      v72 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v60, "type")}];
      [(HMDAccessorySettingConstraintModel *)v71 setType:v72];

      value9 = [v60 value];
      v74 = encodeRootObject();
      [(HMDAccessorySettingConstraintModel *)v71 setValue:v74];

      [array addObject:v71];
      identifier11 = [v58 identifier];

      if (identifier11)
      {
        v76 = [HMDAccessorySettingConstraintModel alloc];
        identifier12 = [v58 identifier];
        identifier13 = [diffCopy identifier];
        v79 = [(HMDBackingStoreModelObject *)v76 initWithObjectChangeType:3 uuid:identifier12 parentUUID:identifier13];

        [array addObject:v79];
      }
    }

    value10 = [diffCopy value];
    value11 = [settingCopy value];
    v82 = HMFEqualObjects();

    if (v82)
    {
      goto LABEL_36;
    }

    identifier14 = [diffCopy identifier];
    parentIdentifier = [diffCopy parentIdentifier];
    v85 = [self modelForSetting:settingCopy identifier:identifier14 parentIdentifier:parentIdentifier];

    [v85 setObjectChangeType:2];
    [array addObject:v85];
  }

LABEL_36:
  v86 = array;
LABEL_37:

  v105 = *MEMORY[0x277D85DE8];

  return v86;
}

+ (id)modelsForGroupDiff:(id)diff fromGroup:(id)group
{
  v44 = *MEMORY[0x277D85DE8];
  diffCopy = diff;
  groupCopy = group;
  if (!diffCopy)
  {
    v26 = [self modelsForGroup:groupCopy];
    goto LABEL_26;
  }

  selfCopy = self;
  array = [MEMORY[0x277CBEB18] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [groupCopy groups];
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
      groups = [diffCopy groups];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __61__HMDAccessorySettingTransform_modelsForGroupDiff_fromGroup___block_invoke;
      v37[3] = &unk_278683FF0;
      v37[4] = v13;
      v15 = [groups na_firstObjectPassingTest:v37];

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
        v16 = [self modelsForGroup:v13];
      }

      v17 = v16;
      [array addObjectsFromArray:v16];

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
  obja = [groupCopy settings];
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
        settings = [diffCopy settings];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __61__HMDAccessorySettingTransform_modelsForGroupDiff_fromGroup___block_invoke_2;
        v32[3] = &unk_278683FC8;
        v32[4] = v22;
        v24 = [settings na_firstObjectPassingTest:v32];

        if (v24)
        {
          [HMDAccessorySettingTransform modelsForSettingDiff:v24 fromSetting:v22];
        }

        else
        {
          [selfCopy modelsForSetting:v22];
        }
        v25 = ;
        [array addObjectsFromArray:v25];
      }

      v19 = [obja countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v19);
  }

  v26 = [array copy];
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

+ (id)modelsForGroup:(id)group
{
  v31 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [self modelForGroup:groupCopy];
  [array addObject:v6];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  settings = [groupCopy settings];
  v8 = [settings countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(settings);
        }

        v12 = [self modelsForSetting:*(*(&v25 + 1) + 8 * i)];
        [array addObjectsFromArray:v12];
      }

      v9 = [settings countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  groups = [groupCopy groups];
  v14 = [groups countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(groups);
        }

        v18 = [self modelsForGroup:*(*(&v21 + 1) + 8 * j)];
        [array addObjectsFromArray:v18];
      }

      v15 = [groups countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];

  return array;
}

@end