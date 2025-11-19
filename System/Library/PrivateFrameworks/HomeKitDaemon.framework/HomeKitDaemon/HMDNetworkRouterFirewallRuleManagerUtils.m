@interface HMDNetworkRouterFirewallRuleManagerUtils
+ (id)dumpTLVsFromJSONData:(id)a3 error:(id *)a4;
@end

@implementation HMDNetworkRouterFirewallRuleManagerUtils

+ (id)dumpTLVsFromJSONData:(id)a3 error:(id *)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v44 = a3;
  v45 = [HMDNetworkRouterFirewallRuleManagerOverrideParser parseFromData:?];
  if (v45)
  {
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__167559;
    v58 = __Block_byref_object_dispose__167560;
    v59 = 0;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __71__HMDNetworkRouterFirewallRuleManagerUtils_dumpTLVsFromJSONData_error___block_invoke;
    v51[3] = &unk_27867C898;
    v53 = &v54;
    v42 = v4;
    v52 = v42;
    [v45 enumerateKeysAndObjectsUsingBlock:v51];
    v5 = v55[5];
    if (v5)
    {
      if (a4)
      {
        v6 = v5;
LABEL_12:
        v7 = 0;
        *a4 = v6;
LABEL_39:

        _Block_object_dispose(&v54, 8);
        goto LABEL_40;
      }
    }

    else
    {
      if (![v42 hmf_isEmpty])
      {
        if ([v42 count] >= 2)
        {
          v11 = objc_autoreleasePoolPush();
          v12 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v13 = HMFGetLogIdentifier();
            v14 = [v42 count];
            *buf = 138543618;
            v68 = v13;
            v69 = 2048;
            v70 = v14;
            _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Multiple declarations (%lu) found, choosing the first", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v11);
        }

        v36 = [v42 firstObject];
        v37 = [v36 ruleConfigurations];
        if ([v37 hmf_isEmpty])
        {
          v15 = objc_autoreleasePoolPush();
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = HMFGetLogIdentifier();
            *buf = 138543362;
            v68 = v17;
            _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@No rule configurations were found", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v15);
          if (a4)
          {
            [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
            *a4 = v7 = 0;
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          v41 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v37, "count")}];
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          obj = v37;
          v18 = [obj countByEnumeratingWithState:&v47 objects:v66 count:16];
          if (v18)
          {
            v40 = *v48;
            while (2)
            {
              v39 = v18;
              for (i = 0; i != v39; ++i)
              {
                if (*v48 != v40)
                {
                  objc_enumerationMutation(obj);
                }

                v20 = *(*(&v47 + 1) + 8 * i);
                v43 = [HMDNetworkRouterWANFirewallConfiguration configurationFromFirewallRuleConfiguration:v20];
                v21 = [HMDNetworkRouterLANFirewallConfiguration configurationFromFirewallRuleConfiguration:v20];
                v22 = [v43 serializeWithError:a4];
                if (!v22)
                {
                  goto LABEL_36;
                }

                v23 = [v21 serializeWithError:a4];
                if (!v23)
                {

LABEL_36:
                  v7 = 0;
                  goto LABEL_37;
                }

                v64[0] = @"wan";
                v24 = [v22 hmf_hexadecimalStringWithOptions:2];
                v64[1] = @"lan";
                v65[0] = v24;
                v25 = [v23 hmf_hexadecimalStringWithOptions:2];
                v65[1] = v25;
                v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:2];
                v27 = [v20 accessoryIdentifier];
                v28 = [v27 firmwareVersion];
                v29 = [v28 versionString];
                [v41 setObject:v26 forKeyedSubscript:v29];
              }

              v18 = [obj countByEnumeratingWithState:&v47 objects:v66 count:16];
              if (v18)
              {
                continue;
              }

              break;
            }
          }

          obj = [v36 baseAccessoryIdentifier];
          v30 = [obj productGroup];
          v62 = v30;
          v31 = [obj productNumber];
          v60 = v31;
          v32 = [v41 copy];
          v61 = v32;
          v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
          v63 = v33;
          v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];

          v7 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v43 options:3 error:a4];
LABEL_37:
        }

        goto LABEL_39;
      }

      v8 = objc_autoreleasePoolPush();
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = HMFGetLogIdentifier();
        *buf = 138543362;
        v68 = v10;
        _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@No network declarations were found", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v8);
      if (a4)
      {
        v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        goto LABEL_12;
      }
    }

    v7 = 0;
    goto LABEL_39;
  }

  if (a4)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    *a4 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_40:

  v34 = *MEMORY[0x277D85DE8];

  return v7;
}

void __71__HMDNetworkRouterFirewallRuleManagerUtils_dumpTLVsFromJSONData_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [v8 objectForKeyedSubscript:@"networkDeclarations"];

  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"networkDeclarations"];
    v11 = [[HMDNetworkRouterFirewallRuleCloudNetworkDeclarations alloc] initWithBaseAccessoryIdentifier:v7 data:v10 allowUnzippedData:1];
    if (v11)
    {
      [*(a1 + 32) addObject:v11];
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v14;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Invalid declarations found", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      *a4 = 1;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end