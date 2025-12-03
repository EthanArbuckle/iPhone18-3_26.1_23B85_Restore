@interface HMDMetricsAccessoryDetailsManager
- (HMDHouseholdMetricsDataSource)dataSource;
- (HMDMetricsAccessoryDetailsManager)initWithDataSource:(id)source;
- (id)accessoryCategoryLogEventsForHomeWithUUID:(id)d;
- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date;
@end

@implementation HMDMetricsAccessoryDetailsManager

- (HMDHouseholdMetricsDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)accessoryCategoryLogEventsForHomeWithUUID:(id)d
{
  v76 = *MEMORY[0x277D85DE8];
  dCopy = d;
  selfCopy = self;
  dataSource = [(HMDMetricsAccessoryDetailsManager *)self dataSource];
  array = [MEMORY[0x277CBEB18] array];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v47 = dataSource;
  obj = [dataSource homeDataSources];
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
        if (dCopy)
        {
          uuid = [*(*(&v65 + 1) + 8 * i) uuid];
          v8 = [uuid isEqual:dCopy];

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
        accessories = [v6 accessories];
        v9 = [accessories countByEnumeratingWithState:&v61 objects:v74 count:16];
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
              objc_enumerationMutation(accessories);
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

              hostAccessory = v30;

              if (hostAccessory)
              {
                v31 = [HMDAccessoryCategoryLogEvent alloc];
                category = [v29 category];
                categoryType = [category categoryType];
                v33 = [(HMDAccessoryCategoryLogEvent *)v31 initWithAccessoryDetailsType:2 accessoryCategoryIdentifier:categoryType homeUUID:dCopy];
                [array addObject:v33];
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

                category = v35;

                if (category)
                {
                  category2 = [v34 category];
                  categoryType2 = [category2 categoryType];
                  v38 = [categoryType2 stringByAppendingString:@"_AirPlay"];

                  v39 = [[HMDAccessoryCategoryLogEvent alloc] initWithAccessoryDetailsType:1 accessoryCategoryIdentifier:v38 homeUUID:dCopy];
                  [array addObject:v39];

                  hostAccessory = 0;
                }

                else
                {
                  v40 = objc_autoreleasePoolPush();
                  v41 = selfCopy;
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
                  category = 0;
                  hostAccessory = 0;
                }
              }

              goto LABEL_38;
            }

            hostAccessory = [v14 hostAccessory];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || !hostAccessory)
            {
              category = [HMDMetricsUtilities primaryServiceTypeForHAPAccessory:v14];
              v73[0] = v56;
              v73[1] = v55;
              v73[2] = v54;
              v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:3];
              if ([v14 hasTelevisionService])
              {
                goto LABEL_23;
              }

              category3 = [v14 category];
              categoryType3 = [category3 categoryType];
              v20 = [v17 containsObject:categoryType3];

              if ((v20 & 1) != 0 || ([category isEqual:@"00000228-0000-1000-8000-0026BB765291"] & 1) != 0 || (objc_msgSend(v14, "category"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "categoryType"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", v52), v22, v21, v23))
              {
LABEL_23:
                v24 = 1;
              }

              else
              {
                v24 = 3;
              }

              v25 = [HMDAccessoryCategoryLogEvent alloc];
              category4 = [v12 category];
              categoryType4 = [category4 categoryType];
              v28 = [(HMDAccessoryCategoryLogEvent *)v25 initWithAccessoryDetailsType:v24 accessoryCategoryIdentifier:categoryType4 homeUUID:dCopy];
              [array addObject:v28];

LABEL_38:
            }

            ++v11;
          }

          while (v10 != v11);
          v44 = [accessories countByEnumeratingWithState:&v61 objects:v74 count:16];
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

  return array;
}

- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dateCopy = date;
  v8 = [(HMDMetricsAccessoryDetailsManager *)self accessoryCategoryLogEventsForHomeWithUUID:dCopy];
  if ([v8 count])
  {
    v9 = +[HMDAccessoryCategoryLogEvent denominatorSpecifyingEvent];
    [v8 addObject:v9];

    v10 = [v8 copy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = dCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Returning NULL (for onboarded configuration) to household metrics request for home with UUID: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (HMDMetricsAccessoryDetailsManager)initWithDataSource:(id)source
{
  sourceCopy = source;
  v8.receiver = self;
  v8.super_class = HMDMetricsAccessoryDetailsManager;
  v5 = [(HMDMetricsAccessoryDetailsManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
  }

  return v6;
}

@end