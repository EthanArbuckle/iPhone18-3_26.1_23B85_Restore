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
  v82 = *MEMORY[0x277D85DE8];
  dCopy = d;
  selfCopy = self;
  dataSource = [(HMDMetricsAccessoryDetailsManager *)self dataSource];
  array = [MEMORY[0x277CBEB18] array];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v53 = dataSource;
  obj = [dataSource homeDataSources];
  v56 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
  if (v56)
  {
    v55 = *v72;
    v62 = *MEMORY[0x277CCE920];
    v61 = *MEMORY[0x277CCE930];
    v60 = *MEMORY[0x277CCE938];
    v59 = *MEMORY[0x277CCE900];
    v63 = array;
    do
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v72 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v71 + 1) + 8 * i);
        if (dCopy)
        {
          uuid = [*(*(&v71 + 1) + 8 * i) uuid];
          v10 = [uuid isEqual:dCopy];

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
        accessories = [v8 accessories];
        v66 = [accessories countByEnumeratingWithState:&v67 objects:v80 count:16];
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
              objc_enumerationMutation(accessories);
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

              hostAccessory = v32;

              if (hostAccessory)
              {
                v33 = [HMDAccessoryCategoryLogEvent alloc];
                category = [v31 category];
                categoryType = [category categoryType];
                v34 = [(HMDAccessoryCategoryLogEvent *)v33 initWithAccessoryDetailsType:2 accessoryCategoryIdentifier:categoryType homeUUID:dCopy];
                [array addObject:v34];
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

                category = v36;

                if (category)
                {
                  category2 = [v35 category];
                  categoryType2 = [category2 categoryType];
                  categoryType = [categoryType2 stringByAppendingString:@"_AirPlay"];

                  v39 = [[HMDAccessoryCategoryLogEvent alloc] initWithAccessoryDetailsType:1 accessoryCategoryIdentifier:categoryType homeUUID:dCopy];
                  [array addObject:v39];
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

                  categoryType = v41;

                  if (categoryType)
                  {
                    v42 = [HMDAccessoryCategoryLogEvent alloc];
                    category3 = [v40 category];
                    categoryType3 = [category3 categoryType];
                    v45 = [(HMDAccessoryCategoryLogEvent *)v42 initWithAccessoryDetailsType:3 accessoryCategoryIdentifier:categoryType3 homeUUID:dCopy];
                    [array addObject:v45];
                  }

                  else
                  {
                    v46 = objc_autoreleasePoolPush();
                    v47 = selfCopy;
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
                    categoryType = 0;
                  }

                  category = 0;
                }

                hostAccessory = 0;
              }

              goto LABEL_45;
            }

            hostAccessory = [v14 hostAccessory];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || !hostAccessory)
            {
              v16 = dCopy;
              category = [HMDMetricsUtilities primaryServiceTypeForHAPAccessory:v14];
              v79[0] = v62;
              v79[1] = v61;
              v79[2] = v60;
              categoryType = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:3];
              if ([v14 hasTelevisionService])
              {
                goto LABEL_23;
              }

              category4 = [v14 category];
              categoryType4 = [category4 categoryType];
              v21 = [categoryType containsObject:categoryType4];

              if ((v21 & 1) != 0 || ([category isEqual:@"00000228-0000-1000-8000-0026BB765291"] & 1) != 0 || (objc_msgSend(v14, "category"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "categoryType"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqualToString:", v59), v23, v22, v24))
              {
LABEL_23:
                v25 = 1;
              }

              else
              {
                v25 = 3;
              }

              v26 = [HMDAccessoryCategoryLogEvent alloc];
              category5 = [v12 category];
              categoryType5 = [category5 categoryType];
              v29 = v25;
              dCopy = v16;
              v30 = [(HMDAccessoryCategoryLogEvent *)v26 initWithAccessoryDetailsType:v29 accessoryCategoryIdentifier:categoryType5 homeUUID:v16];
              array = v63;
              [v63 addObject:v30];

LABEL_45:
            }

            ++v11;
          }

          while (v66 != v11);
          v50 = [accessories countByEnumeratingWithState:&v67 objects:v80 count:16];
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_INFO, "%{public}@Returning NULL (for onboarded configuration) to household metrics request for home with UUID: %@", &v17, 0x16u);
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