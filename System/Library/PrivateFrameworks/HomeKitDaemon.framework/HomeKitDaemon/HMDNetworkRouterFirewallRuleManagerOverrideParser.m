@interface HMDNetworkRouterFirewallRuleManagerOverrideParser
+ (id)_parseOverrideNetworkDeclarationsWithProductGroup:(id)a3 productNumber:(id)a4 productNumberDictionary:(id)a5 accessoryIdentifier:(id)a6;
+ (id)_parseOverridePairedMetadataWithProductGroup:(id)a3 productNumber:(id)a4 productNumberDictionary:(id)a5 accessoryIdentifier:(id)a6;
+ (id)logCategory;
+ (id)parseFromData:(id)a3;
@end

@implementation HMDNetworkRouterFirewallRuleManagerOverrideParser

+ (id)_parseOverridePairedMetadataWithProductGroup:(id)a3 productNumber:(id)a4 productNumberDictionary:(id)a5 accessoryIdentifier:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(__CFString *)v11 objectForKeyedSubscript:@"pairedMetadata"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    v36 = 0;
    v16 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v15 options:0 error:&v36];
    v17 = v36;
    if (v16)
    {
      v18 = [[HMDCloudPairedMetadata alloc] initWithBaseAccessoryIdentifier:v12 data:v16 allowUnzippedData:1];
      if (v18)
      {
        v19 = v16;
      }

      else
      {
        context = objc_autoreleasePoolPush();
        v28 = a1;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138544130;
          v38 = v32;
          v39 = 2112;
          v40 = v35;
          v41 = 2112;
          v42 = v10;
          v43 = 2112;
          v44 = v11;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@JSON dictionary for '%@':'%@' did not parse correctly: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(context);
        v19 = 0;
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = a1;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v27 = contexta = v24;
        *buf = 138544386;
        v38 = v27;
        v39 = 2112;
        v40 = v35;
        v41 = 2112;
        v42 = v10;
        v43 = 2112;
        v44 = v11;
        v45 = 2112;
        v46 = v17;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@JSON dictionary for '%@':'%@' failed to convert to JSON: %@: %@", buf, 0x34u);

        v24 = contexta;
      }

      objc_autoreleasePoolPop(v24);
      v19 = 0;
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = a1;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138544386;
      v38 = v23;
      v39 = 2112;
      v40 = v35;
      v41 = 2112;
      v42 = v10;
      v43 = 2112;
      v44 = @"pairedMetadata";
      v45 = 2112;
      v46 = v13;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@JSON for '%@':'%@' contains an invalid '%@' value: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)_parseOverrideNetworkDeclarationsWithProductGroup:(id)a3 productNumber:(id)a4 productNumberDictionary:(id)a5 accessoryIdentifier:(id)a6
{
  v47 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [(__CFString *)v11 objectForKeyedSubscript:@"networkDeclarations"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    v36 = 0;
    v16 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v15 options:0 error:&v36];
    v17 = v36;
    if (v16)
    {
      v18 = [[HMDNetworkRouterFirewallRuleCloudNetworkDeclarations alloc] initWithBaseAccessoryIdentifier:v12 data:v16 allowUnzippedData:1];
      if (v18)
      {
        v19 = v16;
      }

      else
      {
        context = objc_autoreleasePoolPush();
        v28 = a1;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138544130;
          v38 = v32;
          v39 = 2112;
          v40 = v35;
          v41 = 2112;
          v42 = v10;
          v43 = 2112;
          v44 = v11;
          _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@JSON dictionary for '%@':'%@' did not parse correctly: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(context);
        v19 = 0;
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = a1;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v27 = contexta = v24;
        *buf = 138544386;
        v38 = v27;
        v39 = 2112;
        v40 = v35;
        v41 = 2112;
        v42 = v10;
        v43 = 2112;
        v44 = v11;
        v45 = 2112;
        v46 = v17;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@JSON dictionary for '%@':'%@' failed to convert to JSON: %@: %@", buf, 0x34u);

        v24 = contexta;
      }

      objc_autoreleasePoolPop(v24);
      v19 = 0;
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    v21 = a1;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138544386;
      v38 = v23;
      v39 = 2112;
      v40 = v35;
      v41 = 2112;
      v42 = v10;
      v43 = 2112;
      v44 = @"networkDeclarations";
      v45 = 2112;
      v46 = v13;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@JSON for '%@':'%@' contains an invalid '%@' value: %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v20);
    v19 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)parseFromData:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v37 = 0;
  v5 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v37];
  v6 = v37;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    v14 = v5;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    if (isKindOfClass)
    {
      v18 = [MEMORY[0x277CBEB38] dictionary];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v43 = 0;
      v30 = MEMORY[0x277D85DD0];
      v31 = 3221225472;
      v32 = __67__HMDNetworkRouterFirewallRuleManagerOverrideParser_parseFromData___block_invoke;
      v33 = &unk_278670CA8;
      v35 = buf;
      v36 = a1;
      v19 = v18;
      v34 = v19;
      [v14 enumerateKeysAndObjectsUsingBlock:&v30];
      if (*(*&buf[8] + 24))
      {
        v13 = 0;
      }

      else
      {
        if (![v19 count])
        {
          v24 = objc_autoreleasePoolPush();
          v25 = a1;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            v27 = HMFGetLogIdentifier();
            *v38 = 138543618;
            v39 = v27;
            v40 = 2112;
            v41 = v14;
            _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@JSON contains no overrides: %@", v38, 0x16u);
          }

          objc_autoreleasePoolPop(v24);
        }

        v13 = [v19 copy];
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = a1;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v23;
        *&buf[12] = 2112;
        *&buf[14] = v14;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@JSON is not a dictionary: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v13 = 0;
    }
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = a1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v12;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse JSON: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v13 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v13;
}

void __67__HMDNetworkRouterFirewallRuleManagerOverrideParser_parseFromData___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  else
  {
    v10 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    if (v12)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __67__HMDNetworkRouterFirewallRuleManagerOverrideParser_parseFromData___block_invoke_7;
      v20[3] = &unk_278684300;
      v23 = *(a1 + 40);
      v13 = v7;
      v14 = *(a1 + 48);
      v21 = v13;
      v24 = v14;
      v22 = *(a1 + 32);
      [v12 enumerateKeysAndObjectsUsingBlock:v20];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 48);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543874;
        v26 = v18;
        v27 = 2112;
        v28 = v7;
        v29 = 2112;
        v30 = v10;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@JSON value for '%@' is not a dictionary: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __67__HMDNetworkRouterFirewallRuleManagerOverrideParser_parseFromData___block_invoke_7(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (*(*(*(a1 + 48) + 8) + 24) != 1)
  {
    v9 = [*(a1 + 32) stringByAppendingString:v7];
    if (![HMDAccessory validateProductData:v9])
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 56);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v53 = v20;
        v54 = 2112;
        v55 = v9;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Computed product data is invalid: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      *(*(*(a1 + 48) + 8) + 24) = 1;
      goto LABEL_39;
    }

    v10 = [[HMDNetworkRouterFirewallRuleAccessoryIdentifier alloc] initWithProductGroup:*(a1 + 32) productNumber:v7 firmwareVersion:0];
    v11 = [*(a1 + 40) objectForKeyedSubscript:v10];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = *(a1 + 56);
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = *(a1 + 32);
        *buf = 138543874;
        v53 = v15;
        v54 = 2112;
        v55 = v16;
        v56 = 2112;
        v57 = v7;
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Overrides contain multiple entries for '%@':'%@'", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      *(*(*(a1 + 48) + 8) + 24) = 1;
      goto LABEL_38;
    }

    v21 = v8;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;

    if (!v23)
    {
      v31 = objc_autoreleasePoolPush();
      v32 = *(a1 + 56);
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v34 = contextb = v31;
        v35 = *(a1 + 32);
        *buf = 138544130;
        v53 = v34;
        v54 = 2112;
        v55 = v35;
        v56 = 2112;
        v57 = v7;
        v58 = 2112;
        v59 = v21;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@JSON value for '%@':'%@' is not a dictionary: %@", buf, 0x2Au);

        v31 = contextb;
      }

      objc_autoreleasePoolPop(v31);
      *(*(*(a1 + 48) + 8) + 24) = 1;
      goto LABEL_37;
    }

    v24 = [MEMORY[0x277CBEB38] dictionary];
    v25 = [v23 objectForKeyedSubscript:@"networkDeclarations"];

    if (v25)
    {
      v26 = [HMDNetworkRouterFirewallRuleManagerOverrideParser _parseOverrideNetworkDeclarationsWithProductGroup:*(a1 + 32) productNumber:v7 productNumberDictionary:v23 accessoryIdentifier:v10];
      if (!v26)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        v36 = objc_autoreleasePoolPush();
        v37 = *(a1 + 56);
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v39 = context = v36;
          v40 = *(a1 + 32);
          *buf = 138544130;
          v53 = v39;
          v54 = 2112;
          v55 = v40;
          v56 = 2112;
          v57 = v7;
          v58 = 2112;
          v59 = v23;
          v41 = "%{public}@JSON dictionary for '%@':'%@' did not parse network declarations correctly: %@";
LABEL_34:
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, v41, buf, 0x2Au);

          v36 = context;
        }

LABEL_35:

        objc_autoreleasePoolPop(v36);
LABEL_36:

LABEL_37:
LABEL_38:

LABEL_39:
        goto LABEL_40;
      }

      v27 = v26;
      [v24 setObject:v26 forKeyedSubscript:@"networkDeclarations"];
    }

    v28 = [v23 objectForKeyedSubscript:@"pairedMetadata"];

    if (!v28)
    {
LABEL_21:
      if ([v23 count])
      {
        v30 = [v24 copy];
        [*(a1 + 40) setObject:v30 forKeyedSubscript:v10];
      }

      else
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        contexta = objc_autoreleasePoolPush();
        v42 = *(a1 + 56);
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = HMFGetLogIdentifier();
          v45 = *(a1 + 32);
          *buf = 138544130;
          v53 = v44;
          v46 = v44;
          v54 = 2112;
          v55 = v45;
          v56 = 2112;
          v57 = v7;
          v58 = 2112;
          v59 = v23;
          _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_ERROR, "%{public}@JSON dictionary for '%@':'%@' did not have network declaration or pairedMetadata: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(contexta);
      }

      goto LABEL_36;
    }

    v29 = [HMDNetworkRouterFirewallRuleManagerOverrideParser _parseOverridePairedMetadataWithProductGroup:*(a1 + 32) productNumber:v7 productNumberDictionary:v23 accessoryIdentifier:v10];
    if (v29)
    {
      v28 = v29;
      [v24 setObject:v29 forKeyedSubscript:@"pairedMetadata"];
      goto LABEL_21;
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    v36 = objc_autoreleasePoolPush();
    v37 = *(a1 + 56);
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v39 = context = v36;
      v47 = *(a1 + 32);
      *buf = 138544130;
      v53 = v39;
      v54 = 2112;
      v55 = v47;
      v56 = 2112;
      v57 = v7;
      v58 = 2112;
      v59 = v23;
      v41 = "%{public}@JSON dictionary for '%@':'%@' did not parse pairedMetadata correctly: %@";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  *a4 = 1;
LABEL_40:

  v48 = *MEMORY[0x277D85DE8];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_17880 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_17880, &__block_literal_global_17881);
  }

  v3 = logCategory__hmf_once_v1_17882;

  return v3;
}

void __64__HMDNetworkRouterFirewallRuleManagerOverrideParser_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v1_17882;
  logCategory__hmf_once_v1_17882 = v1;
}

@end