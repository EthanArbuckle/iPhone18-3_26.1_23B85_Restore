@interface HMDSettingsMetadataParser
+ (id)logCategory;
- (HMDSettingsControllerDependency)dependency;
- (HMDSettingsMetadataParser)initWithDependency:(id)a3;
- (id)logIdentifier;
- (id)modelsFromMetadata:(id)a3;
@end

@implementation HMDSettingsMetadataParser

- (HMDSettingsControllerDependency)dependency
{
  WeakRetained = objc_loadWeakRetained(&self->_dependency);

  return WeakRetained;
}

- (id)logIdentifier
{
  v2 = [(HMDSettingsMetadataParser *)self dependency];
  v3 = [v2 parentIdentifier];
  v4 = [v3 UUIDString];

  return v4;
}

- (id)modelsFromMetadata:(id)a3
{
  v186 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v4 hmf_dictionaryForKey:@"Info"];
  v7 = v6;
  if (!v6)
  {
    v98 = objc_autoreleasePoolPush();
    v99 = self;
    v100 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      v101 = HMFGetLogIdentifier();
      *buf = 138543362;
      v179 = v101;
      _os_log_impl(&dword_2531F8000, v100, OS_LOG_TYPE_ERROR, "%{public}@Missing info section in metadata", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v98);
    v97 = 0;
    goto LABEL_101;
  }

  v8 = [v6 hmf_numberForKey:@"Version"];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (!v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v102 = HMFGetLogIdentifier();
      *buf = 138543362;
      v179 = v102;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Missing version number in metadata", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v97 = 0;
    goto LABEL_100;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v179 = v13;
    v180 = 2112;
    v181 = v8;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Loading setting version %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [v4 hmf_dictionaryForKey:@"Data"];
  if (!v14)
  {
    v103 = objc_autoreleasePoolPush();
    v104 = v10;
    v105 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      v106 = HMFGetLogIdentifier();
      *buf = 138543362;
      v179 = v106;
      _os_log_impl(&dword_2531F8000, v105, OS_LOG_TYPE_ERROR, "%{public}@Missing data section in metadata", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v103);
    v97 = 0;
    goto LABEL_99;
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v146 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v145 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v147 = v10;
  v16 = [(HMDSettingsMetadataParser *)v10 dependency];
  v17 = [v16 parentIdentifier];
  v157 = v16;
  v18 = [v16 createSettingRootGroupModelWithParentModelID:v17];

  [v15 addObject:v18];
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v176[0] = @"parentUUID";
  v138 = v18;
  v20 = [v18 hmbModelID];
  v176[1] = @"group";
  v177[0] = v20;
  v177[1] = v14;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v177 forKeys:v176 count:2];
  [v19 addObject:v21];

  v155 = v19;
  v139 = v14;
  v156 = v15;
  if (![v19 count])
  {
LABEL_70:
    v89 = objc_autoreleasePoolPush();
    v90 = v147;
    v91 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
    {
      v92 = HMFGetLogIdentifier();
      v93 = v5;
      v94 = v8;
      v95 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v156, "count")}];
      v96 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v146, "count")}];
      *buf = 138543874;
      v179 = v92;
      v180 = 2112;
      v181 = v95;
      v182 = 2112;
      v183 = v96;
      _os_log_impl(&dword_2531F8000, v91, OS_LOG_TYPE_INFO, "%{public}@Parsed %@ groups and %@ settings", buf, 0x20u);

      v5 = v93;
      v15 = v156;

      v8 = v94;
      v14 = v139;
    }

    objc_autoreleasePoolPop(v89);
    [v5 addObjectsFromArray:v15];
    v83 = v146;
    [v5 addObjectsFromArray:v146];
    v84 = v145;
    [v5 addObjectsFromArray:v145];
    v97 = v5;
    goto LABEL_98;
  }

  *&v22 = 138544130;
  v130 = v22;
  v131 = v8;
  v132 = v5;
  while (1)
  {
    v23 = [v155 objectAtIndex:{0, v130}];
    v154 = [v23 hmf_UUIDForKey:@"parentUUID"];
    v133 = v23;
    v24 = [v23 hmf_dictionaryForKey:@"group"];
    [v155 removeObjectAtIndex:0];
    v136 = v24;
    v25 = [v24 hmf_arrayForKey:@"Groups"];
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v167 = 0u;
    obj = v25;
    v26 = [obj countByEnumeratingWithState:&v164 objects:v175 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v165;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v165 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v164 + 1) + 8 * i);
          v31 = [v30 hmf_stringForKey:@"Key"];
          v15 = v156;
          if (!v31)
          {
            v107 = objc_autoreleasePoolPush();
            v108 = v147;
            v109 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
            {
              v110 = HMFGetLogIdentifier();
              *buf = 138543618;
              v179 = v110;
              v180 = 2112;
              v181 = v30;
              _os_log_impl(&dword_2531F8000, v109, OS_LOG_TYPE_ERROR, "%{public}@A group is missing a name attribute: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v107);
            v97 = 0;
            v8 = v131;
            v5 = v132;
            v84 = v145;
            v83 = v146;
            goto LABEL_98;
          }

          v32 = v31;
          v33 = [v157 createSettingGroupModelWithName:v32 parent:v154];
          [v156 addObject:v33];
          v173[0] = @"parentUUID";
          v34 = [v33 hmbModelID];
          v173[1] = @"group";
          v174[0] = v34;
          v174[1] = v30;
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v174 forKeys:v173 count:2];
          [v155 addObject:v35];
        }

        v27 = [obj countByEnumeratingWithState:&v164 objects:v175 count:16];
      }

      while (v27);
    }

    v36 = [v136 hmf_arrayForKey:@"Settings"];
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v137 = v36;
    v15 = v156;
    v140 = [v137 countByEnumeratingWithState:&v160 objects:v172 count:16];
    if (v140)
    {
      break;
    }

LABEL_69:

    v8 = v131;
    v5 = v132;
    if (![v155 count])
    {
      goto LABEL_70;
    }
  }

  v141 = *v161;
  v134 = v7;
  v135 = v4;
LABEL_18:
  v37 = 0;
  while (1)
  {
    if (*v161 != v141)
    {
      objc_enumerationMutation(v137);
    }

    v38 = *(*(&v160 + 1) + 8 * v37);
    v39 = [v38 hmf_stringForKey:@"Key"];
    v152 = v37;
    if (v39)
    {
      break;
    }

    v44 = v38;
    v45 = objc_autoreleasePoolPush();
    v46 = v147;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138543618;
      v179 = v48;
      v180 = 2112;
      v181 = v44;
      _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@A setting is missing a name: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v45);
LABEL_67:
    v37 = v152 + 1;
    if (v152 + 1 == v140)
    {
      v140 = [v137 countByEnumeratingWithState:&v160 objects:v172 count:16];
      if (!v140)
      {
        goto LABEL_69;
      }

      goto LABEL_18;
    }
  }

  v40 = v39;
  v41 = [v38 hmf_stringForKey:@"Type"];
  if (!v41)
  {
    v111 = v38;
    v112 = objc_autoreleasePoolPush();
    v113 = v147;
    v114 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      v115 = HMFGetLogIdentifier();
      *buf = 138543618;
      v179 = v115;
      v180 = 2112;
      v181 = v111;
      _os_log_impl(&dword_2531F8000, v114, OS_LOG_TYPE_ERROR, "%{public}@A setting is missing type attribute %@", buf, 0x16u);
    }

    v144 = 0;
    goto LABEL_88;
  }

  v42 = v41;
  v144 = v42;
  if ([v42 isEqualToString:@"data"])
  {
    v43 = 1;
    goto LABEL_36;
  }

  if ([v42 isEqualToString:@"number"])
  {
    v43 = 2;
    goto LABEL_36;
  }

  if ([v42 isEqualToString:@"string"])
  {
    v43 = 3;
    goto LABEL_36;
  }

  if ([v42 isEqualToString:@"selection"])
  {
    v43 = 4;
    goto LABEL_36;
  }

  if (([v42 isEqualToString:@"collection"] & 1) == 0)
  {
    v127 = v38;

    v112 = objc_autoreleasePoolPush();
    v128 = v147;
    v114 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      v129 = HMFGetLogIdentifier();
      *buf = 138543618;
      v179 = v129;
      v180 = 2112;
      v181 = v127;
      _os_log_impl(&dword_2531F8000, v114, OS_LOG_TYPE_ERROR, "%{public}@Decoded setting with unrecognized type %@", buf, 0x16u);
    }

LABEL_88:
    v84 = v145;

    objc_autoreleasePoolPop(v112);
LABEL_96:

    v83 = v146;
    goto LABEL_97;
  }

  v43 = 5;
LABEL_36:
  v150 = v43;

  v149 = v38;
  v49 = [v38 hmf_arrayForKey:@"Properties"];
  if (!v49)
  {
    v116 = objc_autoreleasePoolPush();
    v117 = v147;
    v118 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
    {
      v119 = HMFGetLogIdentifier();
      *buf = v130;
      v179 = v119;
      v180 = 2112;
      v181 = v149;
      v182 = 2112;
      v183 = v40;
      v184 = 2112;
      v185 = 0;
      _os_log_impl(&dword_2531F8000, v118, OS_LOG_TYPE_ERROR, "%{public}@A setting is missing a required attribute %@ name: %@, propertiesArray %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v116);
    goto LABEL_95;
  }

  v50 = v49;
  v51 = [v49 containsObject:@"r"];
  v143 = v50;
  if ([v50 containsObject:@"w"])
  {
    v51 |= 2uLL;
  }

  v52 = [MEMORY[0x277CCABB0] numberWithInteger:v150];
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v51];
  v54 = [v157 createSettingModelWithName:v40 parent:v154 type:v52 properties:v53];

  if (!v54)
  {
    v120 = objc_autoreleasePoolPush();
    v121 = v147;
    v122 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
    {
      v123 = HMFGetLogIdentifier();
      v124 = [MEMORY[0x277CCABB0] numberWithInteger:v150];
      *buf = 138543874;
      v179 = v123;
      v180 = 2112;
      v181 = v40;
      v182 = 2112;
      v183 = v124;
      _os_log_impl(&dword_2531F8000, v122, OS_LOG_TYPE_ERROR, "%{public}@Unable to create setting model for setting %@ with type %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v120);
LABEL_95:
    v84 = v145;
    goto LABEL_96;
  }

  v142 = v40;
  v55 = [v149 hmf_arrayForKey:@"Constraints"];
  v148 = v54;
  v56 = [v54 hmbModelID];
  v57 = v55;
  v58 = v56;
  v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v158 = v57;
  v60 = [v158 countByEnumeratingWithState:&v168 objects:buf count:16];
  if (!v60)
  {
    goto LABEL_61;
  }

  v61 = v60;
  v62 = *v169;
  do
  {
    v63 = 0;
    do
    {
      if (*v169 != v62)
      {
        objc_enumerationMutation(v158);
      }

      v64 = *(*(&v168 + 1) + 8 * v63);
      v65 = [v64 hmf_stringForKey:@"Type"];
      if ([v65 isEqualToString:@"minimumValue"])
      {
        v66 = 1;
LABEL_51:

        v67 = [v64 objectForKey:@"Value"];
        v68 = [HMDSettingConstraintModel alloc];
        v69 = [MEMORY[0x277CCAD78] UUID];
        v70 = [(HMBModel *)v68 initWithModelID:v69 parentModelID:v58];

        v71 = [MEMORY[0x277CCABB0] numberWithInteger:v66];
        [(HMDSettingConstraintModel *)v70 setType:v71];

        [(HMDSettingConstraintModel *)v70 setNumberValue:v67];
LABEL_52:
        [v59 addObject:v70];

        goto LABEL_53;
      }

      if ([v65 isEqualToString:@"maximumValue"])
      {
        v66 = 2;
        goto LABEL_51;
      }

      if ([v65 isEqualToString:@"stepValue"])
      {
        v66 = 3;
        goto LABEL_51;
      }

      v72 = [v65 isEqualToString:@"validValue"];

      v67 = [v64 objectForKey:@"Value"];
      if (v72)
      {
        v73 = [HMDSettingConstraintModel alloc];
        v74 = [MEMORY[0x277CCAD78] UUID];
        v70 = [(HMBModel *)v73 initWithModelID:v74 parentModelID:v58];

        v75 = [MEMORY[0x277CCABB0] numberWithInteger:4];
        [(HMDSettingConstraintModel *)v70 setType:v75];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(HMDSettingConstraintModel *)v70 setDataValue:v67];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(HMDSettingConstraintModel *)v70 setStringValue:v67];
          }
        }

        goto LABEL_52;
      }

LABEL_53:

      ++v63;
    }

    while (v61 != v63);
    v76 = [v158 countByEnumeratingWithState:&v168 objects:buf count:16];
    v61 = v76;
  }

  while (v76);
LABEL_61:

  v77 = [v59 copy];
  v78 = [v149 objectForKey:@"Value"];
  v79 = [MEMORY[0x277CCABB0] numberWithInteger:v150];
  v159 = 0;
  v80 = [v157 settingValueForValue:v78 type:v79 constraintModels:v77 error:&v159];
  v151 = v159;

  v81 = v148;
  v82 = [v148 setSettingValue:v80];
  if (v82)
  {
    v83 = v146;
    [v146 addObject:v148];
    v84 = v145;
    [v145 addObjectsFromArray:v77];
    v7 = v134;
    v4 = v135;
    v14 = v139;
  }

  else
  {
    v85 = objc_autoreleasePoolPush();
    v86 = v147;
    v87 = HMFGetOSLogHandle();
    v4 = v135;
    v83 = v146;
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      v88 = HMFGetLogIdentifier();
      *buf = v130;
      v179 = v88;
      v180 = 2112;
      v181 = v78;
      v182 = 2112;
      v183 = v80;
      v184 = 2112;
      v185 = v148;
      _os_log_impl(&dword_2531F8000, v87, OS_LOG_TYPE_ERROR, "%{public}@Unable to set value %@(%@) on model %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v85);
    v7 = v134;
    v14 = v139;
    v84 = v145;
    v81 = v148;
  }

  v15 = v156;
  if (v82)
  {
    goto LABEL_67;
  }

LABEL_97:

  v97 = 0;
  v8 = v131;
  v5 = v132;
LABEL_98:

LABEL_99:
LABEL_100:

LABEL_101:
  v125 = *MEMORY[0x277D85DE8];

  return v97;
}

- (HMDSettingsMetadataParser)initWithDependency:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDSettingsMetadataParser;
  v5 = [(HMDSettingsMetadataParser *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dependency, v4);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_58137 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_58137, &__block_literal_global_58138);
  }

  v3 = logCategory__hmf_once_v15_58139;

  return v3;
}

uint64_t __40__HMDSettingsMetadataParser_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15_58139;
  logCategory__hmf_once_v15_58139 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end