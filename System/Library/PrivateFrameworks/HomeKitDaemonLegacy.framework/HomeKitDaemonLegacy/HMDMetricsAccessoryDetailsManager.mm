@interface HMDMetricsAccessoryDetailsManager
- (HMDHouseholdMetricsDataSource)dataSource;
- (HMDMetricsAccessoryDetailsManager)initWithDataSource:(id)a3;
- (id)accessoryCategoryLogEventsForHomeWithUUID:(id)a3;
- (id)logEventsPopulatedForHomeWithUUID:(id)a3 associatedWithDate:(id)a4;
@end

@implementation HMDMetricsAccessoryDetailsManager

- (HMDHouseholdMetricsDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)accessoryCategoryLogEventsForHomeWithUUID:(id)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v59 = a3;
  v53 = self;
  v4 = [(HMDMetricsAccessoryDetailsManager *)self dataSource];
  v58 = [MEMORY[0x277CBEB18] array];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v47 = v4;
  obj = [v4 homeDataSources];
  v50 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v50)
  {
    v49 = *v66;
    v56 = *MEMORY[0x277CCE920];
    v55 = *MEMORY[0x277CCE930];
    v54 = *MEMORY[0x277CCE938];
    v52 = *MEMORY[0x277CCE900];
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v66 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v65 + 1) + 8 * i);
        if (v59)
        {
          v7 = [*(*(&v65 + 1) + 8 * i) uuid];
          v8 = [v7 isEqual:v59];

          if (!v8)
          {
            continue;
          }
        }

        v51 = i;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v57 = [v6 accessories];
        v9 = [v57 countByEnumeratingWithState:&v61 objects:v74 count:16];
        if (!v9)
        {
          goto LABEL_43;
        }

        v10 = v9;
        v60 = *v62;
        while (1)
        {
          v11 = 0;
          do
          {
            if (*v62 != v60)
            {
              objc_enumerationMutation(v57);
            }

            v12 = *(*(&v61 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = v12;
            }

            else
            {
              v13 = 0;
            }

            v14 = v13;

            if (!v14)
            {
              v29 = v12;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v30 = v29;
              }

              else
              {
                v30 = 0;
              }

              v15 = v30;

              if (v15)
              {
                v31 = [HMDAccessoryCategoryLogEvent alloc];
                v16 = [v29 category];
                v32 = [v16 categoryType];
                v33 = [(HMDAccessoryCategoryLogEvent *)v31 initWithAccessoryDetailsType:2 accessoryCategoryIdentifier:v32 homeUUID:v59];
                [v58 addObject:v33];
              }

              else
              {
                v34 = v29;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v35 = v34;
                }

                else
                {
                  v35 = 0;
                }

                v16 = v35;

                if (v16)
                {
                  v36 = [v34 category];
                  v37 = [v36 categoryType];
                  v38 = [v37 stringByAppendingString:@"_AirPlay"];

                  v39 = [[HMDAccessoryCategoryLogEvent alloc] initWithAccessoryDetailsType:1 accessoryCategoryIdentifier:v38 homeUUID:v59];
                  [v58 addObject:v39];

                  v15 = 0;
                }

                else
                {
                  v40 = objc_autoreleasePoolPush();
                  v41 = v53;
                  v42 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                  {
                    v43 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    v70 = v43;
                    v71 = 2112;
                    v72 = v34;
                    _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_ERROR, "%{public}@Accessory category not found for: %@", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(v40);
                  v16 = 0;
                  v15 = 0;
                }
              }

              goto LABEL_38;
            }

            v15 = [v14 hostAccessory];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || !v15)
            {
              v16 = [HMDMetricsUtilities primaryServiceTypeForHAPAccessory:v14];
              v73[0] = v56;
              v73[1] = v55;
              v73[2] = v54;
              v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:3];
              if ([v14 hasTelevisionService])
              {
                goto LABEL_23;
              }

              v18 = [v14 category];
              v19 = [v18 categoryType];
              v20 = [v17 containsObject:v19];

              if ((v20 & 1) != 0 || ([v16 isEqual:@"00000228-0000-1000-8000-0026BB765291"] & 1) != 0 || (objc_msgSend(v14, "category"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "categoryType"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", v52), v22, v21, v23))
              {
LABEL_23:
                v24 = 1;
              }

              else
              {
                v24 = 3;
              }

              v25 = [HMDAccessoryCategoryLogEvent alloc];
              v26 = [v12 category];
              v27 = [v26 categoryType];
              v28 = [(HMDAccessoryCategoryLogEvent *)v25 initWithAccessoryDetailsType:v24 accessoryCategoryIdentifier:v27 homeUUID:v59];
              [v58 addObject:v28];

LABEL_38:
            }

            ++v11;
          }

          while (v10 != v11);
          v44 = [v57 countByEnumeratingWithState:&v61 objects:v74 count:16];
          v10 = v44;
          if (!v44)
          {
LABEL_43:

            i = v51;
            break;
          }
        }
      }

      v50 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v50);
  }

  v45 = *MEMORY[0x277D85DE8];

  return v58;
}

- (id)logEventsPopulatedForHomeWithUUID:(id)a3 associatedWithDate:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMetricsAccessoryDetailsManager *)self accessoryCategoryLogEventsForHomeWithUUID:v6];
  if ([v8 count])
  {
    v9 = +[HMDAccessoryCategoryLogEvent denominatorSpecifyingEvent];
    [v8 addObject:v9];

    v10 = [v8 copy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Returning NULL (for onboarded configuration) to household metrics request for home with UUID: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HMDMetricsAccessoryDetailsManager)initWithDataSource:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HMDMetricsAccessoryDetailsManager;
  v5 = [(HMDMetricsAccessoryDetailsManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
  }

  return v6;
}

@end