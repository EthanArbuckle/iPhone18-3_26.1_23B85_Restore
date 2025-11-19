@interface HMDAccessorySettingGroup
+ (id)logCategory;
+ (id)supportedGroupsClasses;
+ (id)supportedSettingsClasses;
- (BOOL)compareSettingsTree:(id)a3;
- (BOOL)dataSourceShouldEncodeSetting:(id)a3 withCoder:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isPrivateToDevice;
- (BOOL)shouldEncodeForCoder:(id)a3;
- (HMDAccessorySettingGroup)groupWithIdentifier:(id)a3;
- (HMDAccessorySettingGroup)init;
- (HMDAccessorySettingGroup)initWithCoder:(id)a3;
- (HMDAccessorySettingGroup)initWithModel:(id)a3;
- (HMDAccessorySettingGroup)initWithName:(id)a3 identifier:(id)a4 parentIdentifier:(id)a5;
- (HMDAccessorySettingGroup)mediaSystemSettingGroup;
- (HMDAccessorySettingGroupDataSource)dataSource;
- (NSArray)groups;
- (NSArray)settings;
- (NSString)description;
- (id)_initWithCoder:(id)a3;
- (id)_settingWithKeys:(id)a3;
- (id)copyIdentical;
- (id)copyReplica;
- (id)fullDescription;
- (id)logIdentifier;
- (id)settingWithIdentifier:(id)a3;
- (id)settingWithKeyPath:(id)a3;
- (id)settingWithName:(id)a3;
- (id)subGroupWithName:(id)a3;
- (unint64_t)hash;
- (void)_encodeWithCoder:(id)a3;
- (void)_reevaluateParentGroup:(id)a3;
- (void)_setParentGroup:(id)a3;
- (void)addGroup:(id)a3;
- (void)addSetting:(id)a3;
- (void)description:(id)a3 indent:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)intersectSettingGroup:(id)a3 groupMetadata:(id)a4 shouldAddMissingItems:(BOOL)a5;
- (void)removeGroup:(id)a3;
- (void)removeSetting:(id)a3;
@end

@implementation HMDAccessorySettingGroup

- (void)description:(id)a3 indent:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessorySettingGroup *)self name];
  v9 = [(HMDAccessorySettingGroup *)self identifier];
  v10 = [(HMDAccessorySettingGroup *)self groups];
  v11 = [v10 count];
  v12 = [(HMDAccessorySettingGroup *)self settings];
  v13 = [v12 count];
  v14 = [(HMDAccessorySettingGroup *)self mediaSystemSettingGroup];
  [v6 appendFormat:@"\n %@ name = %@, identifier = %@, group = %tu, settings = %tu, media-system-settings-group = %@\n", v7, v8, v9, v11, v13, v14];

  v15 = [v7 indentationByLevels:1];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = [(HMDAccessorySettingGroup *)self groups];
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      v20 = 0;
      do
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(*(&v31 + 1) + 8 * v20++) description:v6 indent:v15];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v18);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v21 = [(HMDAccessorySettingGroup *)self settings];
  v22 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v28;
    do
    {
      v25 = 0;
      do
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [*(*(&v27 + 1) + 8 * v25++) description:v6 indent:v15];
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v23);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)fullDescription
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"\n"];
  v4 = [MEMORY[0x277D0F908] indentation];
  [(HMDAccessorySettingGroup *)self description:v3 indent:v4];
  v5 = [v3 copy];

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDAccessorySettingGroup *)self keyPath];
  v5 = [(HMDAccessorySettingGroup *)self identifier];
  v6 = [(HMDAccessorySettingGroup *)self mediaSystemSettingGroup];
  v7 = [v6 identifier];
  v8 = [v3 stringWithFormat:@"[HMD-Accessory-Settings-Group: %@/%@ (%@)]", v4, v5, v7];

  return v8;
}

- (HMDAccessorySettingGroupDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMDAccessorySettingGroup)mediaSystemSettingGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaSystemSettingGroup);

  return WeakRetained;
}

- (BOOL)compareSettingsTree:(id)a3
{
  v81 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDAccessorySettingGroup *)self name];
  v6 = [v4 name];
  v7 = HMFEqualObjects();

  if ((v7 & 1) == 0)
  {
    v53 = objc_autoreleasePoolPush();
    v54 = self;
    v55 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v56 = HMFGetLogIdentifier();
    v57 = [v4 name];
    *buf = 138543618;
    v78 = v56;
    v79 = 2112;
    v80 = v57;
    v58 = "%{public}@Name is not matching: %@";
    goto LABEL_27;
  }

  v8 = 0x277CBE000uLL;
  v9 = MEMORY[0x277CBEB98];
  v10 = [(HMDAccessorySettingGroup *)self groups];
  v11 = [v9 setWithArray:v10];
  v12 = MEMORY[0x277CBEB98];
  v13 = [v4 groups];
  v14 = [v12 setWithArray:v13];
  v15 = HMFEqualObjects();

  if ((v15 & 1) == 0)
  {
    v53 = objc_autoreleasePoolPush();
    v54 = self;
    v55 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v56 = HMFGetLogIdentifier();
    v57 = [v4 name];
    *buf = 138543618;
    v78 = v56;
    v79 = 2112;
    v80 = v57;
    v58 = "%{public}@Sub-groups are not matching: %@";
    goto LABEL_27;
  }

  v16 = MEMORY[0x277CBEB98];
  v17 = [(HMDAccessorySettingGroup *)self settings];
  v18 = [v16 setWithArray:v17];
  v19 = MEMORY[0x277CBEB98];
  v20 = [v4 settings];
  v21 = [v19 setWithArray:v20];
  v22 = HMFEqualObjects();

  if ((v22 & 1) == 0)
  {
    v53 = objc_autoreleasePoolPush();
    v54 = self;
    v55 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v56 = HMFGetLogIdentifier();
    v57 = [v4 name];
    *buf = 138543618;
    v78 = v56;
    v79 = 2112;
    v80 = v57;
    v58 = "%{public}@Sub-settings are not matching: %@";
LABEL_27:
    _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, v58, buf, 0x16u);

LABEL_28:
    objc_autoreleasePoolPop(v53);
LABEL_29:
    v52 = 0;
    goto LABEL_30;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v23 = [(HMDAccessorySettingGroup *)self settings];
  v24 = [v23 copy];

  obj = v24;
  v25 = [v24 countByEnumeratingWithState:&v71 objects:v76 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v72;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v72 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v71 + 1) + 8 * i);
        v30 = MEMORY[0x277CCAC30];
        v31 = [v29 name];
        v32 = [v30 predicateWithFormat:@"name == %@", v31];

        v33 = MEMORY[0x277CBEB98];
        v34 = [v4 settings];
        v35 = [v33 setWithArray:v34];

        v36 = [v35 filteredSetUsingPredicate:v32];
        v37 = [v36 anyObject];
        if (([v29 compareConstraints:v37] & 1) == 0)
        {
          v61 = objc_autoreleasePoolPush();
          v62 = self;
          v63 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
          {
            v64 = HMFGetLogIdentifier();
            v65 = [v29 name];
            *buf = 138543618;
            v78 = v64;
            v79 = 2112;
            v80 = v65;
            _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_INFO, "%{public}@Constraints on settings are not matching: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v61);
          goto LABEL_29;
        }

        v8 = 0x277CBE000uLL;
      }

      v26 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v38 = [(HMDAccessorySettingGroup *)self groups];
  v39 = [v38 countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v68;
    while (2)
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v68 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v67 + 1) + 8 * j);
        v44 = MEMORY[0x277CCAC30];
        v45 = [v43 name];
        v46 = [v44 predicateWithFormat:@"name == %@", v45];

        v47 = *(v8 + 2968);
        v48 = [v4 groups];
        v49 = [v47 setWithArray:v48];
        v50 = [v49 filteredSetUsingPredicate:v46];

        v51 = [v50 anyObject];
        LODWORD(v43) = [v43 compareSettingsTree:v51];

        if (!v43)
        {
          v52 = 0;
          goto LABEL_35;
        }

        v8 = 0x277CBE000;
      }

      v40 = [v38 countByEnumeratingWithState:&v67 objects:v75 count:16];
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  v52 = 1;
LABEL_35:

LABEL_30:
  v59 = *MEMORY[0x277D85DE8];
  return v52;
}

- (void)intersectSettingGroup:(id)a3 groupMetadata:(id)a4 shouldAddMissingItems:(BOOL)a5
{
  v138 = a5;
  v180 = *MEMORY[0x277D85DE8];
  v129 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v130 = v7;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [(HMDAccessorySettingGroup *)v9 name];
    *buf = 138543874;
    v175 = v11;
    v176 = 2112;
    v177 = v12;
    v178 = 1024;
    v179 = v138;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Group name is %@, intersecting. addMissing: %d", buf, 0x1Cu);

    v7 = v130;
  }

  objc_autoreleasePoolPop(v8);
  if ([(HMDAccessorySettingGroup *)v9 isPrivateToDevice])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v9;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [(HMDAccessorySettingGroup *)v14 name];
      *buf = 138543618;
      v175 = v16;
      v176 = 2112;
      v177 = v17;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Skipping private group %@", buf, 0x16u);

      v7 = v130;
    }

LABEL_91:

    objc_autoreleasePoolPop(v13);
    v125 = [MEMORY[0x277CBEB58] set];
    groups = v14->_groups;
    v14->_groups = v125;

    v127 = [MEMORY[0x277CBEB58] set];
    settings = v14->_settings;
    v14->_settings = v127;
    goto LABEL_92;
  }

  if (!v7)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = v9;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v124 = HMFGetLogIdentifier();
      *buf = 138543362;
      v175 = v124;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Received metadata is nil, not intersecting", buf, 0xCu);

      v7 = v130;
    }

    goto LABEL_91;
  }

  v18 = MEMORY[0x277CBEB58];
  v19 = [(HMDAccessorySettingGroup *)v9 groups];
  v20 = [v19 hmf_objectsPassingTest:&__block_literal_global_38_147885];
  v21 = [v18 setWithArray:v20];

  v22 = MEMORY[0x277CBEB98];
  v23 = [v129 groups];
  v24 = [v23 hmf_objectsPassingTest:&__block_literal_global_40_147886];
  v25 = [v22 setWithArray:v24];

  v135 = v25;
  [(NSMutableSet *)v21 intersectSet:v25];
  v136 = v21;
  objc_storeStrong(&v9->_groups, v21);
  v26 = MEMORY[0x277CBEB38];
  v27 = [v7 groups];
  v28 = [v26 dictionaryWithCapacity:{objc_msgSend(v27, "count")}];

  v165 = 0u;
  v166 = 0u;
  v163 = 0u;
  v164 = 0u;
  v29 = [v7 groups];
  v30 = [v29 countByEnumeratingWithState:&v163 objects:v173 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v164;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v164 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v163 + 1) + 8 * i);
        v35 = [v34 name];
        [v28 setObject:v34 forKey:v35];
      }

      v31 = [v29 countByEnumeratingWithState:&v163 objects:v173 count:16];
    }

    while (v31);
  }

  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v36 = [(HMDAccessorySettingGroup *)v9 groups];
  v37 = [v36 copy];

  v38 = [v37 countByEnumeratingWithState:&v159 objects:v172 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v160;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v160 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v159 + 1) + 8 * j);
        v43 = [v42 name];
        v44 = [v28 objectForKey:v43];

        if (!v44)
        {
          [(NSMutableSet *)v9->_groups removeObject:v42];
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v159 objects:v172 count:16];
    }

    while (v39);
  }

  p_isa = &v9->super.super.isa;

  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v45 = [v130 groups];
  v46 = [v45 countByEnumeratingWithState:&v155 objects:v171 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v156;
    do
    {
      v49 = 0;
      do
      {
        if (*v156 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v155 + 1) + 8 * v49);
        v51 = MEMORY[0x277CCAC30];
        v52 = [v50 name];
        v53 = [v51 predicateWithFormat:@"name == %@", v52];

        v54 = [(NSMutableSet *)v136 filteredSetUsingPredicate:v53];
        v55 = [v54 anyObject];

        v56 = [v135 filteredSetUsingPredicate:v53];
        v57 = [v56 anyObject];

        if (v55)
        {
          [v55 intersectSettingGroup:v57 groupMetadata:v50 shouldAddMissingItems:v138];
        }

        else if (v57 && v138 && ([v57 isPrivateToDevice] & 1) == 0)
        {
          [p_isa addGroup:v57];
        }

        ++v49;
      }

      while (v47 != v49);
      v58 = [v45 countByEnumeratingWithState:&v155 objects:v171 count:16];
      v47 = v58;
    }

    while (v58);
  }

  v59 = MEMORY[0x277CBEB38];
  v60 = [v130 settings];
  v61 = [v59 dictionaryWithCapacity:{objc_msgSend(v60, "count")}];

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  v62 = [v130 settings];
  v63 = [v62 countByEnumeratingWithState:&v151 objects:v170 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v152;
    do
    {
      for (k = 0; k != v64; ++k)
      {
        if (*v152 != v65)
        {
          objc_enumerationMutation(v62);
        }

        v67 = *(*(&v151 + 1) + 8 * k);
        v68 = [v67 name];
        [v61 setObject:v67 forKey:v68];
      }

      v64 = [v62 countByEnumeratingWithState:&v151 objects:v170 count:16];
    }

    while (v64);
  }

  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v69 = [p_isa settings];
  v70 = [v69 copy];

  v71 = [v70 countByEnumeratingWithState:&v147 objects:v169 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v148;
    do
    {
      v74 = 0;
      v133 = v72;
      do
      {
        if (*v148 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v75 = *(*(&v147 + 1) + 8 * v74);
        v76 = [v75 name];
        v77 = [v61 objectForKey:v76];

        if (!v77)
        {
          v78 = objc_autoreleasePoolPush();
          v79 = p_isa;
          v80 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v81 = v61;
            v82 = v73;
            v84 = v83 = v70;
            *buf = 138543618;
            v175 = v84;
            v176 = 2112;
            v177 = v75;
            _os_log_impl(&dword_2531F8000, v80, OS_LOG_TYPE_INFO, "%{public}@Setting %@ does not have metadata, cannot merge", buf, 0x16u);

            v70 = v83;
            v73 = v82;
            v61 = v81;
            v72 = v133;
          }

          objc_autoreleasePoolPop(v78);
          [v79[2] removeObject:v75];
        }

        ++v74;
      }

      while (v72 != v74);
      v72 = [v70 countByEnumeratingWithState:&v147 objects:v169 count:16];
    }

    while (v72);
  }

  v85 = MEMORY[0x277CBEB58];
  v86 = p_isa;
  v87 = [p_isa settings];
  v88 = [v85 setWithArray:v87];

  v89 = MEMORY[0x277CBEB98];
  v90 = [v129 settings];
  v134 = [v89 setWithArray:v90];

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  obj = [v130 settings];
  v91 = [obj countByEnumeratingWithState:&v143 objects:v168 count:16];
  v131 = v88;
  if (v91)
  {
    v92 = v91;
    v93 = *v144;
    do
    {
      for (m = 0; m != v92; ++m)
      {
        if (*v144 != v93)
        {
          objc_enumerationMutation(obj);
        }

        v95 = *(*(&v143 + 1) + 8 * m);
        v96 = MEMORY[0x277CCAC30];
        v97 = [v95 name];
        v98 = [v96 predicateWithFormat:@"name == %@", v97];

        v99 = [v88 filteredSetUsingPredicate:v98];
        v100 = [v99 anyObject];

        v101 = [v134 filteredSetUsingPredicate:v98];
        v102 = [v101 anyObject];

        if (v100)
        {
          v103 = v102 == 0;
        }

        else
        {
          v103 = 1;
        }

        if (v103)
        {
          if (v102 && v138)
          {
            [v86 addSetting:v102];
          }
        }

        else
        {
          v104 = [v95 mergeStrategy];
          v105 = [HMDAccessorySettingMergeHandler mergeFirst:v100 second:v102 mergeStrategy:v104 shouldAddMissing:v138];

          if (!v105)
          {
            v106 = objc_autoreleasePoolPush();
            v107 = v86;
            v108 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
            {
              v109 = HMFGetLogIdentifier();
              *buf = 138543618;
              v175 = v109;
              v176 = 2112;
              v177 = v100;
              _os_log_impl(&dword_2531F8000, v108, OS_LOG_TYPE_INFO, "%{public}@Failed to merge setting %@, cannot merge", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v106);
            [v107[2] removeObject:v100];
            v86 = p_isa;
            v88 = v131;
          }
        }
      }

      v92 = [obj countByEnumeratingWithState:&v143 objects:v168 count:16];
    }

    while (v92);
  }

  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  v110 = [v86 groups];
  v111 = [v110 countByEnumeratingWithState:&v139 objects:v167 count:16];
  if (v111)
  {
    v112 = v111;
    v113 = *v140;
    do
    {
      for (n = 0; n != v112; ++n)
      {
        if (*v140 != v113)
        {
          objc_enumerationMutation(v110);
        }

        v115 = *(*(&v139 + 1) + 8 * n);
        v116 = [v115 groups];
        if ([v116 count])
        {
        }

        else
        {
          v117 = [v115 settings];
          v118 = [v117 count];

          if (!v118)
          {
            v119 = objc_autoreleasePoolPush();
            v120 = p_isa;
            v121 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
            {
              v122 = HMFGetLogIdentifier();
              *buf = 138543618;
              v175 = v122;
              v176 = 2112;
              v177 = v115;
              _os_log_impl(&dword_2531F8000, v121, OS_LOG_TYPE_INFO, "%{public}@No subgroup or settings, removing group %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v119);
            [p_isa[3] removeObject:v115];
          }
        }
      }

      v112 = [v110 countByEnumeratingWithState:&v139 objects:v167 count:16];
    }

    while (v112);
  }

  v7 = v130;
  settings = v136;
LABEL_92:

  v128 = *MEMORY[0x277D85DE8];
}

- (BOOL)dataSourceShouldEncodeSetting:(id)a3 withCoder:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDAccessorySettingGroup *)self dataSource];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 shouldEncodeSetting:v6 withCoder:v7 forAccessorySettingGroup:self];
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v6 keyPath];
      v16 = HMFBooleanToString();
      v21 = 138544130;
      v22 = v14;
      v23 = 2112;
      v24 = v9;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = v16;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@dataSource: %@, shouldEncodeSetting = %@, %@", &v21, 0x2Au);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v17 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v21 = 138543362;
      v22 = v18;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode settings due to no data source", &v21, 0xCu);
    }

    v10 = 0;
  }

  objc_autoreleasePoolPop(v11);
  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_encodeWithCoder:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(HMDAccessorySettingGroup *)self shouldEncodeForCoder:v4])
  {
    v5 = [(HMDAccessorySettingGroup *)self groups];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __45__HMDAccessorySettingGroup__encodeWithCoder___block_invoke;
    v29[3] = &unk_27972F108;
    v6 = v4;
    v30 = v6;
    v7 = [v5 hmf_objectsPassingTest:v29];

    v8 = [(HMDAccessorySettingGroup *)self settings];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __45__HMDAccessorySettingGroup__encodeWithCoder___block_invoke_2;
    v27[3] = &unk_27972F130;
    v27[4] = self;
    v9 = v6;
    v28 = v9;
    v10 = [v8 na_filter:v27];

    v11 = MEMORY[0x277CBEB98];
    v12 = [(HMDAccessorySettingGroup *)self settings];
    v13 = [v11 setWithArray:v12];

    v14 = [MEMORY[0x277CBEB98] setWithArray:v10];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v18 = v26 = v7;
      v19 = [(HMDAccessorySettingGroup *)v16 dataSource];
      [v13 na_setByRemovingObjectsFromSet:v14];
      v25 = v14;
      v21 = v20 = v13;
      *buf = 138543874;
      v32 = v18;
      v33 = 2112;
      v34 = v19;
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@dataSource = %@, subtracted values = %@", buf, 0x20u);

      v13 = v20;
      v14 = v25;

      v7 = v26;
    }

    objc_autoreleasePoolPop(v15);
    v22 = [(HMDAccessorySettingGroup *)v16 identifier];
    [v9 encodeObject:v22 forKey:*MEMORY[0x277CCED40]];

    v23 = [(HMDAccessorySettingGroup *)v16 name];
    [v9 encodeObject:v23 forKey:*MEMORY[0x277CCED48]];

    [v9 encodeObject:v10 forKey:*MEMORY[0x277CCED50]];
    [v9 encodeObject:v7 forKey:*MEMORY[0x277CCED38]];
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [(HMDAccessorySettingGroup *)self _encodeWithCoder:v5];
  objc_autoreleasePoolPop(v4);
}

- (BOOL)shouldEncodeForCoder:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 hmd_isForNonAdminSharedUser])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(HMDAccessorySettingGroup *)self settings];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if ([(HMDAccessorySettingGroup *)self dataSourceShouldEncodeSetting:*(*(&v19 + 1) + 8 * v9) withCoder:v4])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v5 = [(HMDAccessorySettingGroup *)self groups];
      v10 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (!v10)
      {
LABEL_21:

        goto LABEL_22;
      }

      v11 = *v16;
LABEL_12:
      v12 = 0;
      while (1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v15 + 1) + 8 * v12) shouldEncodeForCoder:v4])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
          if (v10)
          {
            goto LABEL_12;
          }

          goto LABEL_21;
        }
      }
    }

    LOBYTE(v10) = 1;
    goto LABEL_21;
  }

  LOBYTE(v10) = 1;
LABEL_22:

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_initWithCoder:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCED48]];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCED40]];
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [(HMDAccessorySettingGroup *)self initWithName:v5 identifier:v6 parentIdentifier:v7];

  if (v8)
  {
    v9 = +[HMDAccessorySettingGroup supportedSettingsClasses];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:*MEMORY[0x277CCED50]];

    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __43__HMDAccessorySettingGroup__initWithCoder___block_invoke;
    v47[3] = &unk_27972F0E0;
    v11 = v8;
    v48 = v11;
    v36 = v10;
    v12 = [v10 na_filter:v47];
    if (v12)
    {
      v13 = v12;
      v14 = [MEMORY[0x277CBEB58] setWithArray:v12];
      v15 = v11[2];
      v11[2] = v14;

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v16 = v11[2];
      v17 = [v16 countByEnumeratingWithState:&v43 objects:v50 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v44;
        do
        {
          v20 = 0;
          do
          {
            if (*v44 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [*(*(&v43 + 1) + 8 * v20++) setGroup:v11];
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v43 objects:v50 count:16];
        }

        while (v18);
      }

      v12 = v13;
    }

    v21 = +[HMDAccessorySettingGroup supportedGroupsClasses];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:*MEMORY[0x277CCED38]];

    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __43__HMDAccessorySettingGroup__initWithCoder___block_invoke_35;
    v41[3] = &unk_27972F0E0;
    v23 = v11;
    v42 = v23;
    v24 = [v22 na_filter:v41];
    if (v24)
    {
      v34 = v12;
      v35 = v5;
      v25 = [MEMORY[0x277CBEB58] setWithArray:v24];
      v26 = v23[3];
      v23[3] = v25;

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v27 = v23[3];
      v28 = [v27 countByEnumeratingWithState:&v37 objects:v49 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v38;
        do
        {
          v31 = 0;
          do
          {
            if (*v38 != v30)
            {
              objc_enumerationMutation(v27);
            }

            [*(*(&v37 + 1) + 8 * v31++) _setParentGroup:v23];
          }

          while (v29 != v31);
          v29 = [v27 countByEnumeratingWithState:&v37 objects:v49 count:16];
        }

        while (v29);
      }

      v12 = v34;
      v5 = v35;
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v8;
}

BOOL __43__HMDAccessorySettingGroup__initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
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

  if (!v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unexpected type found while decoding accessory setting", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

BOOL __43__HMDAccessorySettingGroup__initWithCoder___block_invoke_35(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
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

  if (!v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unexpected type found while decoding accessory group", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

- (HMDAccessorySettingGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDAccessorySettingGroup *)self _initWithCoder:v4];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDAccessorySettingGroup *)self identifier];
  v5 = [v4 UUIDString];
  v6 = [(HMDAccessorySettingGroup *)self name];
  v7 = [v3 stringWithFormat:@"%@/%@", v5, v6];

  return v7;
}

- (void)removeGroup:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock_with_options();
    if ([(NSMutableSet *)self->_groups containsObject:v5])
    {
      [(NSMutableSet *)self->_groups removeObject:v5];
    }

    os_unfair_lock_unlock(&self->_lock);
    v4 = v5;
  }
}

- (void)addGroup:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock_with_options();
    if (([(NSMutableSet *)self->_groups containsObject:v5]& 1) == 0)
    {
      [(NSMutableSet *)self->_groups addObject:v5];
      [v5 _setParentGroup:self];
    }

    os_unfair_lock_unlock(&self->_lock);
    v4 = v5;
  }
}

- (void)_setParentGroup:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  parentIdentifier = self->_parentIdentifier;
  self->_parentIdentifier = v5;

  v7 = [v4 keyPath];
  v8 = [(HMDAccessorySettingGroup *)self name];
  v9 = [v7 stringByAppendingFormat:@".%@", v8];
  keyPath = self->_keyPath;
  self->_keyPath = v9;

  v11 = [(NSMutableSet *)self->_groups allObjects];
  v12 = [(NSMutableSet *)self->_settings allObjects];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      v17 = 0;
      do
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v28 + 1) + 8 * v17++) _reevaluateParentGroup:self];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v15);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = v12;
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v24 + 1) + 8 * v22++) setGroup:self];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v20);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_reevaluateParentGroup:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  [(HMDAccessorySettingGroup *)self _setParentGroup:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (HMDAccessorySettingGroup)groupWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_groups;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSArray)groups
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_groups allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)removeSetting:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock_with_options();
    if ([(NSMutableSet *)self->_settings containsObject:v5])
    {
      [(NSMutableSet *)self->_settings removeObject:v5];
    }

    os_unfair_lock_unlock(&self->_lock);
    v4 = v5;
  }
}

- (void)addSetting:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock_with_options();
    if (([(NSMutableSet *)self->_settings containsObject:v5]& 1) == 0)
    {
      [(NSMutableSet *)self->_settings addObject:v5];
      [v5 setGroup:self];
    }

    os_unfair_lock_unlock(&self->_lock);
    v4 = v5;
  }
}

- (id)settingWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_settings;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);
  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSArray)settings
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_settings allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isPrivateToDevice
{
  v3 = [(HMDAccessorySettingGroup *)self name];
  if ([v3 isEqualToString:@"profiles"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HMDAccessorySettingGroup *)self name];
    v4 = [v5 isEqualToString:@"analytics"];
  }

  return v4;
}

- (id)copyReplica
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [HMDAccessorySettingGroup alloc];
  v4 = [(HMDAccessorySettingGroup *)self name];
  v5 = [MEMORY[0x277CCAD78] UUID];
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [(HMDAccessorySettingGroup *)v3 initWithName:v4 identifier:v5 parentIdentifier:v6];

  v8 = [(HMDAccessorySettingGroup *)self dataSource];
  [(HMDAccessorySettingGroup *)v7 setDataSource:v8];

  v9 = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = [(HMDAccessorySettingGroup *)self groups];
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v33 + 1) + 8 * v14) copyReplica];
        [v15 _setParentGroup:v7];
        [v9 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v12);
  }

  groups = v7->_groups;
  v17 = [MEMORY[0x277CBEB98] setWithArray:v9];
  [(NSMutableSet *)groups setSet:v17];

  v18 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = [(HMDAccessorySettingGroup *)self settings];
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      v23 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v29 + 1) + 8 * v23) copyReplica];
        [v24 setGroup:v7];
        [v18 addObject:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v21);
  }

  settings = v7->_settings;
  v26 = [MEMORY[0x277CBEB98] setWithArray:v18];
  [(NSMutableSet *)settings setSet:v26];

  v27 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)copyIdentical
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = [HMDAccessorySettingGroup alloc];
  v4 = [(HMDAccessorySettingGroup *)self name];
  v5 = [(HMDAccessorySettingGroup *)self identifier];
  v6 = [(HMDAccessorySettingGroup *)self parentIdentifier];
  v7 = [(HMDAccessorySettingGroup *)v3 initWithName:v4 identifier:v5 parentIdentifier:v6];

  v8 = [(HMDAccessorySettingGroup *)self dataSource];
  [(HMDAccessorySettingGroup *)v7 setDataSource:v8];

  v9 = [MEMORY[0x277CBEB18] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = [(HMDAccessorySettingGroup *)self groups];
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      v14 = 0;
      do
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v33 + 1) + 8 * v14) copyIdentical];
        [v15 _setParentGroup:v7];
        [v9 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v12);
  }

  groups = v7->_groups;
  v17 = [MEMORY[0x277CBEB98] setWithArray:v9];
  [(NSMutableSet *)groups setSet:v17];

  v18 = [MEMORY[0x277CBEB18] array];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v19 = [(HMDAccessorySettingGroup *)self settings];
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      v23 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v29 + 1) + 8 * v23) copyIdentical];
        [v24 setGroup:v7];
        [v18 addObject:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v21);
  }

  settings = v7->_settings;
  v26 = [MEMORY[0x277CBEB98] setWithArray:v18];
  [(NSMutableSet *)settings setSet:v26];

  v27 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
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
      v7 = [(HMDAccessorySettingGroup *)self name];
      v8 = [(HMDAccessorySettingGroup *)v6 name];
      v9 = [v7 isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMDAccessorySettingGroup *)self name];
  v3 = [v2 hash];

  return v3;
}

- (id)_settingWithKeys:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count] >= 2)
  {
    v6 = [v4 firstObject];
    v7 = [(HMDAccessorySettingGroup *)self name];
    v8 = [v7 isEqualToString:v6];

    if (v8)
    {
      v9 = [v4 count];
      v10 = [v4 objectAtIndex:1];
      if (v9 == 2)
      {
        v5 = [(HMDAccessorySettingGroup *)self settingWithName:v10];
      }

      else
      {
        v15 = [(HMDAccessorySettingGroup *)self subGroupWithName:v10];
        [v4 hmf_removeFirstObject];
        v5 = [v15 _settingWithKeys:v4];
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v18 = 138543874;
        v19 = v14;
        v20 = 2112;
        v21 = v6;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unexpected group name: %@ for group: %@", &v18, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)settingWithKeyPath:(id)a3
{
  v4 = [a3 componentsSeparatedByString:@"."];
  v5 = [v4 mutableCopy];

  v6 = [(HMDAccessorySettingGroup *)self _settingWithKeys:v5];

  return v6;
}

- (id)settingWithName:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessorySettingGroup *)self settings];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__HMDAccessorySettingGroup_settingWithName___block_invoke;
  v9[3] = &unk_279730DB0;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __44__HMDAccessorySettingGroup_settingWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)subGroupWithName:(id)a3
{
  v4 = a3;
  v5 = [(HMDAccessorySettingGroup *)self groups];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HMDAccessorySettingGroup_subGroupWithName___block_invoke;
  v9[3] = &unk_279730DD8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __45__HMDAccessorySettingGroup_subGroupWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (HMDAccessorySettingGroup)initWithName:(id)a3 identifier:(id)a4 parentIdentifier:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  if (v11)
  {
    v23.receiver = self;
    v23.super_class = HMDAccessorySettingGroup;
    v12 = [(HMDAccessorySettingGroup *)&v23 init];
    if (v12)
    {
      v13 = [v11 hm_truncatedNameString];
      name = v12->_name;
      v12->_name = v13;

      v15 = [v11 copy];
      keyPath = v12->_keyPath;
      v12->_keyPath = v15;

      v12->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v12->_identifier, a4);
      objc_storeStrong(&v12->_parentIdentifier, a5);
      v17 = [MEMORY[0x277CBEB58] set];
      settings = v12->_settings;
      v12->_settings = v17;

      v19 = [MEMORY[0x277CBEB58] set];
      groups = v12->_groups;
      v12->_groups = v19;
    }

    self = v12;
    v21 = self;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (HMDAccessorySettingGroup)initWithModel:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v4 uuid];
  v7 = [v4 parentUUID];

  v8 = [(HMDAccessorySettingGroup *)self initWithName:v5 identifier:v6 parentIdentifier:v7];
  return v8;
}

- (HMDAccessorySettingGroup)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)supportedGroupsClasses
{
  if (supportedGroupsClasses_onceToken != -1)
  {
    dispatch_once(&supportedGroupsClasses_onceToken, &__block_literal_global_33_147937);
  }

  v3 = supportedGroupsClasses_supportedGroupsClasses;

  return v3;
}

void __50__HMDAccessorySettingGroup_supportedGroupsClasses__block_invoke()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = supportedGroupsClasses_supportedGroupsClasses;
  supportedGroupsClasses_supportedGroupsClasses = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)supportedSettingsClasses
{
  if (supportedSettingsClasses_onceToken != -1)
  {
    dispatch_once(&supportedSettingsClasses_onceToken, &__block_literal_global_29_147940);
  }

  v3 = supportedSettingsClasses_supportedSettingsClasses;

  return v3;
}

void __52__HMDAccessorySettingGroup_supportedSettingsClasses__block_invoke()
{
  v5[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = supportedSettingsClasses_supportedSettingsClasses;
  supportedSettingsClasses_supportedSettingsClasses = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_147942 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_147942, &__block_literal_global_147943);
  }

  v3 = logCategory__hmf_once_v12_147944;

  return v3;
}

uint64_t __39__HMDAccessorySettingGroup_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v12_147944;
  logCategory__hmf_once_v12_147944 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

@end