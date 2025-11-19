@interface HMDSettingAlgorithm
+ (id)allGroupsFromRootGroup:(id)a3;
+ (id)allSettingsFromRootGroup:(id)a3;
+ (void)findChangedSettingsWithRootGroup:(id)a3 currentGroups:(id)a4 currentSettings:(id)a5 completion:(id)a6;
@end

@implementation HMDSettingAlgorithm

+ (void)findChangedSettingsWithRootGroup:(id)a3 currentGroups:(id)a4 currentSettings:(id)a5 completion:(id)a6
{
  v90 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v65 = a5;
  v56 = a6;
  context = objc_autoreleasePoolPush();
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = v13;
  if (v10)
  {
    v82[0] = MEMORY[0x277D85DD0];
    v82[1] = 3221225472;
    v82[2] = __97__HMDSettingAlgorithm_findChangedSettingsWithRootGroup_currentGroups_currentSettings_completion___block_invoke;
    v82[3] = &unk_2797289C0;
    v83 = v13;
    v85 = a1;
    v84 = v12;
    BFSTraverseGroupWithBlock(v10, v82);
  }

  v62 = v14;
  v57 = v10;
  v15 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  v16 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  v61 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v60 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v12;
  v17 = [obj countByEnumeratingWithState:&v78 objects:v89 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v79;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v79 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v78 + 1) + 8 * i);
        v22 = [v21 identifier];
        [v15 setObject:v21 forKey:v22];

        v23 = [v21 identifier];
        if (v23)
        {
          v24 = v23;
          v25 = [v21 identifier];
          v26 = [v65 objectForKey:v25];

          if (!v26)
          {
            [v61 addObject:v21];
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v78 objects:v89 count:16];
    }

    while (v18);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v63 = v62;
  v27 = [v63 countByEnumeratingWithState:&v74 objects:v88 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v75;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v75 != v29)
        {
          objc_enumerationMutation(v63);
        }

        v31 = *(*(&v74 + 1) + 8 * j);
        v32 = [v31 identifier];
        [v16 setObject:v31 forKey:v32];

        v33 = [v31 identifier];
        if (v33)
        {
          v34 = v33;
          v35 = [v31 identifier];
          v36 = [v11 objectForKey:v35];

          if (!v36)
          {
            [v60 addObject:v31];
          }
        }
      }

      v28 = [v63 countByEnumeratingWithState:&v74 objects:v88 count:16];
    }

    while (v28);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v37 = v11;
  v38 = [v37 countByEnumeratingWithState:&v70 objects:v87 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v71;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v71 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v70 + 1) + 8 * k);
        v43 = [v16 objectForKey:v42];

        if (!v43)
        {
          v44 = [v37 objectForKey:v42];
          if (v44)
          {
            [v58 addObject:v44];
          }
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v70 objects:v87 count:16];
    }

    while (v39);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v45 = v65;
  v46 = [v45 countByEnumeratingWithState:&v66 objects:v86 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v67;
    do
    {
      for (m = 0; m != v47; ++m)
      {
        if (*v67 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v66 + 1) + 8 * m);
        v51 = [v15 objectForKey:v50];

        if (!v51)
        {
          v52 = [v45 objectForKey:v50];
          if (v52)
          {
            [v59 addObject:v52];
          }
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v66 objects:v86 count:16];
    }

    while (v47);
  }

  v56[2](v56, v16, v15, v60, v61, v58, v59);
  objc_autoreleasePoolPop(contexta);

  v53 = *MEMORY[0x277D85DE8];
}

uint64_t __97__HMDSettingAlgorithm_findChangedSettingsWithRootGroup_currentGroups_currentSettings_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __97__HMDSettingAlgorithm_findChangedSettingsWithRootGroup_currentGroups_currentSettings_completion___block_invoke_2;
  v26[3] = &unk_279728998;
  v8 = v5;
  v27 = v8;
  if ([v7 na_any:v26])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1[6];
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Multiple groups collision", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v13 = [[HMDAssertionLogEvent alloc] initWithReason:@"Multiple groups collision"];
    v14 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v14 submitLogEvent:v13];

    v15 = v27;
  }

  else
  {

    [a1[4] addObject:v8];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        v19 = 0;
        do
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [a1[5] addObject:{*(*(&v22 + 1) + 8 * v19++), v22}];
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v17);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __97__HMDSettingAlgorithm_findChangedSettingsWithRootGroup_currentGroups_currentSettings_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 keyPath];
  v4 = [*(a1 + 32) keyPath];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

+ (id)allGroupsFromRootGroup:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = v4;
  if (v3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__HMDSettingAlgorithm_allGroupsFromRootGroup___block_invoke;
    v7[3] = &unk_279728970;
    v8 = v4;
    BFSTraverseGroupWithBlock(v3, v7);
  }

  return v5;
}

+ (id)allSettingsFromRootGroup:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = v4;
  if (v3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __48__HMDSettingAlgorithm_allSettingsFromRootGroup___block_invoke;
    v7[3] = &unk_279728970;
    v8 = v4;
    BFSTraverseGroupWithBlock(v3, v7);
  }

  return v5;
}

@end