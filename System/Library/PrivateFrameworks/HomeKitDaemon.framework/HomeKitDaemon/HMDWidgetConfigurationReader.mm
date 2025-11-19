@interface HMDWidgetConfigurationReader
+ (id)logCategory;
- (HMDWidgetConfigurationReader)init;
- (HMDWidgetConfigurationReader)initWithWidgetInterface:(id)a3 controlsInterface:(id)a4 bundleIdentifier:(id)a5 lockScreenWidgetKinds:(id)a6;
- (__CFString)identifierForKind:(void *)a3 intent:(int)a4 requiresRecommendationsParameter:;
- (id)fetchedHomeWidgets;
- (int64_t)homeWidgetsEnabledCount;
- (void)fetchAutoBahnWidgetsWithCompletion:(id)a3;
- (void)fetchHomeControlsWithCompletion:(id)a3;
- (void)fetchHomeWidgetsWithCompletion:(id)a3;
@end

@implementation HMDWidgetConfigurationReader

- (int64_t)homeWidgetsEnabledCount
{
  v2 = [(HMDWidgetConfigurationReader *)self fetchedHomeWidgets];
  v3 = [v2 count];

  return v3;
}

- (void)fetchHomeControlsWithCompletion:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = [(HMDWidgetConfigurationReader *)self controlsInterface];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__HMDWidgetConfigurationReader_fetchHomeControlsWithCompletion___block_invoke;
    v7[3] = &unk_278687158;
    v7[4] = self;
    v8 = v4;
    [v5 allConfiguredControlsWithCompletion:v7];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(v4 + 2))(v4, 0, v6);
  }
}

void __64__HMDWidgetConfigurationReader_fetchHomeControlsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v28;
      do
      {
        v12 = 0;
        do
        {
          if (*v28 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v27 + 1) + 8 * v12);
          v14 = [*(a1 + 32) bundleIdentifier];
          v15 = [v13 controlConfigurationsForApplicationContainerBundleIdentifier:v14];

          [v7 addObjectsFromArray:v15];
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v10);
    }

    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __64__HMDWidgetConfigurationReader_fetchHomeControlsWithCompletion___block_invoke_19;
    v26[3] = &unk_27867AB68;
    v26[4] = *(a1 + 32);
    v16 = [v7 na_map:v26];
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v20;
      v34 = 2112;
      v35 = v16;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Fetched configured controls: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v24;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Fetched configured controls failed %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    (*(*(a1 + 40) + 16))();
  }

  v25 = *MEMORY[0x277D85DE8];
}

HMDWidget *__64__HMDWidgetConfigurationReader_fetchHomeControlsWithCompletion___block_invoke_19(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v5;
  if (!v4)
  {
    v14 = 0;
    v25 = 0;
    v23 = v5;
    goto LABEL_12;
  }

  v7 = [v5 controlIdentity];
  v8 = [v7 intentReference];
  v9 = [v8 intent];

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

  if (v11)
  {
    v12 = [v6 controlIdentity];
    v13 = [v12 kind];
    v14 = [(HMDWidgetConfigurationReader *)v4 identifierForKind:v13 intent:v11 requiresRecommendationsParameter:0];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v4;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v6 controlIdentity];
      v20 = [v19 intentReference];
      v21 = [v20 intent];
      v28 = 138543618;
      v29 = v18;
      v30 = 2112;
      v31 = v21;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Ignoring control configuration because the intent is not INAppIntent: %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  if (v14)
  {
    v22 = [HMDWidget alloc];
    v23 = [v6 controlIdentity];
    v24 = [v23 kind];
    v25 = [(HMDWidget *)v22 initWithIdentifier:v14 kind:v24];

LABEL_12:
    goto LABEL_14;
  }

  v25 = 0;
LABEL_14:

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

- (__CFString)identifierForKind:(void *)a3 intent:(int)a4 requiresRecommendationsParameter:
{
  v86[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [a1 lockScreenWidgetKinds];
  v10 = [v9 containsObject:v7];

  if (v10)
  {
LABEL_7:
    v18 = 0;
    goto LABEL_55;
  }

  v78 = 0;
  v11 = [v8 serializedParameters];
  v12 = [v11 hmf_BOOLForKey:@"useHomeKitRecommendations" isPresent:&v78];

  if (a4 && (v78 & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v8 serializedParameters];
      *buf = 138543874;
      v80 = v16;
      v81 = 2112;
      v82 = @"useHomeKitRecommendations";
      v83 = 2112;
      v84[0] = v17;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Ignoring widget configuration because %@ key is missing from serialized parameters: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    goto LABEL_7;
  }

  v19 = v12 & a4;
  v20 = [v8 serializedParameters];
  v21 = [v20 objectForKeyedSubscript:@"accessoriesAndScenes"];

  if (v21)
  {
    v22 = 1;
  }

  else
  {
    v22 = v19;
  }

  if (v22)
  {
    v23 = objc_alloc_init(MEMORY[0x277D21540]);
    v24 = v23;
    if (v19)
    {
      v25 = [v23 combineContentsOfPropertyListObject:@"0FD0F71F-DAB9-4D7F-90C4-AB0A0E4724E4"];
    }

    else
    {
      v72 = v23;
      v71 = a1;
      v31 = v21;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v32 = v31;
      }

      else
      {
        v32 = 0;
      }

      v33 = v32;

      if (v33)
      {
        goto LABEL_21;
      }

      v53 = v31;
      objc_opt_class();
      v54 = (objc_opt_isKindOfClass() & 1) != 0 ? v53 : 0;
      v55 = v54;

      if (!v55)
      {
        goto LABEL_49;
      }

      v56 = objc_autoreleasePoolPush();
      v57 = a1;
      v58 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        v59 = HMFGetLogIdentifier();
        *buf = 138543618;
        v80 = v59;
        v81 = 2112;
        v82 = v53;
        _os_log_impl(&dword_229538000, v58, OS_LOG_TYPE_DEBUG, "%{public}@Handling single item accessories and scenes entry %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v56);
      v86[0] = v55;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:1];

      if (v31)
      {
LABEL_21:
        v68 = v21;
        v69 = v8;
        v70 = v7;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        obj = v31;
        v34 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v75;
          v37 = 0x277CBE000uLL;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v75 != v36)
              {
                objc_enumerationMutation(obj);
              }

              v39 = *(v37 + 2752);
              v40 = *(*(&v74 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v41 = v40;
              }

              else
              {
                v41 = 0;
              }

              v42 = v41;

              if (v42)
              {
                v43 = [(__CFString *)v40 hmf_stringForKey:@"identifier"];
                if (v43)
                {
                  v44 = [v72 combineContentsOfPropertyListObject:v43];
                }

                else
                {
                  v49 = objc_autoreleasePoolPush();
                  v50 = a1;
                  v51 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                  {
                    v52 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    v80 = v52;
                    v81 = 2112;
                    v82 = v40;
                    _os_log_impl(&dword_229538000, v51, OS_LOG_TYPE_ERROR, "%{public}@Unexpectedly missing the identifier in %@", buf, 0x16u);

                    a1 = v71;
                  }

                  objc_autoreleasePoolPop(v49);
                  v37 = 0x277CBE000;
                }
              }

              else
              {
                v45 = objc_autoreleasePoolPush();
                v46 = a1;
                v47 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  v48 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v80 = v48;
                  v81 = 2112;
                  v82 = v40;
                  _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_ERROR, "%{public}@accessoryOrScene is not a dictionary! %@", buf, 0x16u);

                  v37 = 0x277CBE000;
                }

                objc_autoreleasePoolPop(v45);
              }
            }

            v35 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
          }

          while (v35);
        }

        v8 = v69;
        v7 = v70;
        v21 = v68;
        v24 = v72;
      }

      else
      {
LABEL_49:
        v24 = v72;
        v60 = [v72 combineContentsOfPropertyListObject:v53];
      }

      v19 = 0;
    }

    v61 = [v24 finalize];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", v61];
    v62 = objc_autoreleasePoolPush();
    v63 = a1;
    v64 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
    {
      v65 = HMFGetLogIdentifier();
      *buf = 138544130;
      v80 = v65;
      v81 = 2114;
      v82 = v18;
      v83 = 1024;
      LODWORD(v84[0]) = v19;
      WORD2(v84[0]) = 2112;
      *(v84 + 6) = v21;
      _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_DEBUG, "%{public}@IFObjectHasher: computed widget identifier %{public}@ with useHomeKitRecommendations=%{BOOL}d, accessoriesAndScenes=%@", buf, 0x26u);
    }

    objc_autoreleasePoolPop(v62);
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = a1;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = HMFGetLogIdentifier();
      v30 = [v8 serializedParameters];
      *buf = 138543874;
      v80 = v29;
      v81 = 2112;
      v82 = @"accessoriesAndScenes";
      v83 = 2112;
      v84[0] = v30;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring widget configuration because %@ key is missing from serialized parameters: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v26);
    v18 = 0;
  }

LABEL_55:
  v66 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)fetchHomeWidgetsWithCompletion:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = [(HMDWidgetConfigurationReader *)self widgetInterface];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__HMDWidgetConfigurationReader_fetchHomeWidgetsWithCompletion___block_invoke;
    v7[3] = &unk_278687158;
    v7[4] = self;
    v8 = v4;
    [v5 allConfiguredWidgetsWithCompletion:v7];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(v4 + 2))(v4, 0, v6);
  }
}

void __63__HMDWidgetConfigurationReader_fetchHomeWidgetsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [MEMORY[0x277CBEB18] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v33;
      do
      {
        v12 = 0;
        do
        {
          if (*v33 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v32 + 1) + 8 * v12);
          v14 = [*(a1 + 32) bundleIdentifier];
          v15 = [v13 widgetConfigurationsForApplicationContainerBundleIdentifier:v14];

          [v7 addObjectsFromArray:v15];
          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v10);
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __63__HMDWidgetConfigurationReader_fetchHomeWidgetsWithCompletion___block_invoke_17;
    v31[3] = &unk_27867AB40;
    v31[4] = *(a1 + 32);
    v16 = [v7 na_map:v31];
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v20;
      v39 = 2112;
      v40 = v16;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Fetched configured widgets: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __63__HMDWidgetConfigurationReader_fetchHomeWidgetsWithCompletion___block_invoke_18;
    v29[3] = &unk_278684DE0;
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v23 = *(a1 + 32);
    v29[4] = v16;
    v29[5] = v23;
    v30 = v22;
    [v21 fetchHomeControlsWithCompletion:v29];
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 32);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v27;
      v39 = 2112;
      v40 = v6;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Fetched configured widgets failed %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    (*(*(a1 + 40) + 16))();
  }

  v28 = *MEMORY[0x277D85DE8];
}

HMDWidget *__63__HMDWidgetConfigurationReader_fetchHomeWidgetsWithCompletion___block_invoke_17(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v5;
  if (!v4)
  {
    v14 = 0;
    v25 = 0;
    v23 = v5;
    goto LABEL_12;
  }

  v7 = [v5 widget];
  v8 = [v7 intentReference];
  v9 = [v8 intent];

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

  if (v11)
  {
    v12 = [v6 widget];
    v13 = [v12 kind];
    v14 = [(HMDWidgetConfigurationReader *)v4 identifierForKind:v13 intent:v11 requiresRecommendationsParameter:1];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v4;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [v6 widget];
      v20 = [v19 intentReference];
      v21 = [v20 intent];
      v28 = 138543618;
      v29 = v18;
      v30 = 2112;
      v31 = v21;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Ignoring widget configuration because the intent is not INAppIntent: %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  if (v14)
  {
    v22 = [HMDWidget alloc];
    v23 = [v6 widget];
    v24 = [v23 kind];
    v25 = [(HMDWidget *)v22 initWithIdentifier:v14 kind:v24];

LABEL_12:
    goto LABEL_14;
  }

  v25 = 0;
LABEL_14:

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

void __63__HMDWidgetConfigurationReader_fetchHomeWidgetsWithCompletion___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v10;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Fetched configured controls: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [*(a1 + 32) arrayByAddingObjectsFromArray:v5];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v12 = *(a1 + 32);
    (*(*(a1 + 48) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)fetchAutoBahnWidgetsWithCompletion:(id)a3
{
  v4 = a3;
  if (self)
  {
    v5 = [(HMDWidgetConfigurationReader *)self widgetInterface];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__HMDWidgetConfigurationReader_fetchAutoBahnWidgetsWithCompletion___block_invoke;
    v7[3] = &unk_278687158;
    v7[4] = self;
    v8 = v4;
    [v5 allConfiguredWidgetsWithCompletion:v7];
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(v4 + 2))(v4, 0, v6);
  }
}

void __67__HMDWidgetConfigurationReader_fetchAutoBahnWidgetsWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * v11);
          v13 = [*(a1 + 32) bundleIdentifier];
          v14 = [v12 widgetConfigurationsForApplicationContainerBundleIdentifier:v13];

          [v6 addObjectsFromArray:v14];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __67__HMDWidgetConfigurationReader_fetchAutoBahnWidgetsWithCompletion___block_invoke_2;
    v17[3] = &unk_27867AB40;
    v17[4] = *(a1 + 32);
    v15 = [v6 na_map:v17];
    (*(*(a1 + 40) + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

HMDWidget *__67__HMDWidgetConfigurationReader_fetchAutoBahnWidgetsWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) lockScreenWidgetKinds];
  v5 = [v3 widget];
  v6 = [v5 kind];
  v7 = [v4 containsObject:v6];

  if (v7)
  {
    v8 = [HMDWidget alloc];
    v9 = [v3 widget];
    v10 = [v9 kind];
    v11 = [v3 widget];
    v12 = [v11 kind];
    v13 = [(HMDWidget *)v8 initWithIdentifier:v10 kind:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)fetchedHomeWidgets
{
  if (self)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__140286;
    v16 = __Block_byref_object_dispose__140287;
    v17 = [MEMORY[0x277CBEB18] array];
    v3 = dispatch_semaphore_create(0);
    v4 = [(HMDWidgetConfigurationReader *)self widgetInterface];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__HMDWidgetConfigurationReader_fetchedHomeWidgets__block_invoke;
    v9[3] = &unk_27867AB18;
    v9[4] = self;
    v11 = &v12;
    v5 = v3;
    v10 = v5;
    [v4 allConfiguredWidgetsWithCompletion:v9];

    v6 = dispatch_time(0, 2000000000);
    dispatch_semaphore_wait(v5, v6);
    v7 = [v13[5] copy];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

void __50__HMDWidgetConfigurationReader_fetchedHomeWidgets__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        v10 = 0;
        do
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * v10);
          v12 = [*(a1 + 32) bundleIdentifier];
          v13 = [v11 widgetConfigurationsForApplicationContainerBundleIdentifier:v12];

          [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v13];
          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    dispatch_semaphore_signal(*(a1 + 40));
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (HMDWidgetConfigurationReader)initWithWidgetInterface:(id)a3 controlsInterface:(id)a4 bundleIdentifier:(id)a5 lockScreenWidgetKinds:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDWidgetConfigurationReader;
  v15 = [(HMDWidgetConfigurationReader *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_widgetInterface, a3);
    objc_storeStrong(&v16->_controlsInterface, a4);
    objc_storeStrong(&v16->_bundleIdentifier, a5);
    objc_storeStrong(&v16->_lockScreenWidgetKinds, a6);
  }

  return v16;
}

- (HMDWidgetConfigurationReader)init
{
  v3 = +[HMDWidgetFetchSpecification allHomeLockScreenWidgetKinds];
  v4 = *MEMORY[0x277CCFE40];
  v5 = objc_alloc_init(MEMORY[0x277CFA370]);
  v6 = objc_alloc_init(MEMORY[0x277CFA208]);
  v7 = [(HMDWidgetConfigurationReader *)self initWithWidgetInterface:v5 controlsInterface:v6 bundleIdentifier:v4 lockScreenWidgetKinds:v3];

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18_140296 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18_140296, &__block_literal_global_140297);
  }

  v3 = logCategory__hmf_once_v19_140298;

  return v3;
}

void __43__HMDWidgetConfigurationReader_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v19_140298;
  logCategory__hmf_once_v19_140298 = v1;
}

@end