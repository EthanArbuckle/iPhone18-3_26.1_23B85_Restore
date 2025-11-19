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
  v82 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v58 = self;
  v5 = [(HMDMetricsAccessoryDetailsManager *)self dataSource];
  v6 = [MEMORY[0x277CBEB18] array];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v53 = v5;
  obj = [v5 homeDataSources];
  v56 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
  if (v56)
  {
    v55 = *v72;
    v62 = *MEMORY[0x277CCE920];
    v61 = *MEMORY[0x277CCE930];
    v60 = *MEMORY[0x277CCE938];
    v59 = *MEMORY[0x277CCE900];
    v63 = v6;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v72 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v71 + 1) + 8 * i);
        if (v4)
        {
          v9 = [*(*(&v71 + 1) + 8 * i) uuid];
          v10 = [v9 isEqual:v4];

          if (!v10)
          {
            continue;
          }
        }

        v57 = i;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v64 = [v8 accessories];
        v66 = [v64 countByEnumeratingWithState:&v67 objects:v80 count:16];
        if (!v66)
        {
          goto LABEL_50;
        }

        v65 = *v68;
        while (1)
        {
          v11 = 0;
          do
          {
            if (*v68 != v65)
            {
              objc_enumerationMutation(v64);
            }

            v12 = *(*(&v67 + 1) + 8 * v11);
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
              v31 = v12;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v32 = v31;
              }

              else
              {
                v32 = 0;
              }

              v15 = v32;

              if (v15)
              {
                v33 = [HMDAccessoryCategoryLogEvent alloc];
                v17 = [v31 category];
                v18 = [v17 categoryType];
                v34 = [(HMDAccessoryCategoryLogEvent *)v33 initWithAccessoryDetailsType:2 accessoryCategoryIdentifier:v18 homeUUID:v4];
                [v6 addObject:v34];
              }

              else
              {
                v35 = v31;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v36 = v35;
                }

                else
                {
                  v36 = 0;
                }

                v17 = v36;

                if (v17)
                {
                  v37 = [v35 category];
                  v38 = [v37 categoryType];
                  v18 = [v38 stringByAppendingString:@"_AirPlay"];

                  v39 = [[HMDAccessoryCategoryLogEvent alloc] initWithAccessoryDetailsType:1 accessoryCategoryIdentifier:v18 homeUUID:v4];
                  [v6 addObject:v39];
                }

                else
                {
                  v40 = v35;
                  if ([v40 conformsToProtocol:&unk_283F010C8])
                  {
                    v41 = v40;
                  }

                  else
                  {
                    v41 = 0;
                  }

                  v18 = v41;

                  if (v18)
                  {
                    v42 = [HMDAccessoryCategoryLogEvent alloc];
                    v43 = [v40 category];
                    v44 = [v43 categoryType];
                    v45 = [(HMDAccessoryCategoryLogEvent *)v42 initWithAccessoryDetailsType:3 accessoryCategoryIdentifier:v44 homeUUID:v4];
                    [v6 addObject:v45];
                  }

                  else
                  {
                    v46 = objc_autoreleasePoolPush();
                    v47 = v58;
                    v48 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                    {
                      v49 = HMFGetLogIdentifier();
                      *buf = 138543618;
                      v76 = v49;
                      v77 = 2112;
                      v78 = v40;
                      _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_ERROR, "%{public}@Accessory category not found for: %@", buf, 0x16u);
                    }

                    objc_autoreleasePoolPop(v46);
                    v18 = 0;
                  }

                  v17 = 0;
                }

                v15 = 0;
              }

              goto LABEL_45;
            }

            v15 = [v14 hostAccessory];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || !v15)
            {
              v16 = v4;
              v17 = [HMDMetricsUtilities primaryServiceTypeForHAPAccessory:v14];
              v79[0] = v62;
              v79[1] = v61;
              v79[2] = v60;
              v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:3];
              if ([v14 hasTelevisionService])
              {
                goto LABEL_23;
              }

              v19 = [v14 category];
              v20 = [v19 categoryType];
              v21 = [v18 containsObject:v20];

              if ((v21 & 1) != 0 || ([v17 isEqual:@"00000228-0000-1000-8000-0026BB765291"] & 1) != 0 || (objc_msgSend(v14, "category"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "categoryType"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", v59), v23, v22, v24))
              {
LABEL_23:
                v25 = 1;
              }

              else
              {
                v25 = 3;
              }

              v26 = [HMDAccessoryCategoryLogEvent alloc];
              v27 = [v12 category];
              v28 = [v27 categoryType];
              v29 = v25;
              v4 = v16;
              v30 = [(HMDAccessoryCategoryLogEvent *)v26 initWithAccessoryDetailsType:v29 accessoryCategoryIdentifier:v28 homeUUID:v16];
              v6 = v63;
              [v63 addObject:v30];

LABEL_45:
            }

            ++v11;
          }

          while (v66 != v11);
          v50 = [v64 countByEnumeratingWithState:&v67 objects:v80 count:16];
          v66 = v50;
          if (!v50)
          {
LABEL_50:

            i = v57;
            break;
          }
        }
      }

      v56 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
    }

    while (v56);
  }

  v51 = *MEMORY[0x277D85DE8];

  return v6;
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Returning NULL (for onboarded configuration) to household metrics request for home with UUID: %@", &v17, 0x16u);
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