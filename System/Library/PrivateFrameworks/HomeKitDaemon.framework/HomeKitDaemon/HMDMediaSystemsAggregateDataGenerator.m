@interface HMDMediaSystemsAggregateDataGenerator
+ (BOOL)isValidLeftDestination:(id)a3 rightDestination:(id)a4;
+ (id)derivedDestinationForGroup:(id)a3 leftDestination:(id)a4 rightDestination:(id)a5;
+ (id)derivedMediaDestinationIdentifierForGroupIdentifier:(id)a3;
+ (unint64_t)deriveSupportedOptionsFromLeftDestination:(id)a3 rightDestination:(id)a4;
- (BOOL)hasRoleType:(unint64_t)a3 mediaSystemData:(id)a4 destination:(id)a5;
- (HMDMediaSystemsAggregateDataGeneratorDataSource)dataSource;
- (id)aggregateDataWithDestinations:(id)a3 controllers:(id)a4 groups:(id)a5;
- (id)destinationWithRoleType:(unint64_t)a3 mediaSystemData:(id)a4 destinations:(id)a5;
- (id)nameForMediaSystemData:(id)a3 room:(id)a4;
- (id)roomForAllDestinationParentIdentifiers:(id)a3;
@end

@implementation HMDMediaSystemsAggregateDataGenerator

+ (unint64_t)deriveSupportedOptionsFromLeftDestination:(id)a3 rightDestination:(id)a4
{
  v5 = a4;
  LODWORD(a3) = [a3 supportedOptions];
  v6 = [v5 supportedOptions];

  return a3 & v6 & 0x45;
}

+ (id)derivedMediaDestinationIdentifierForGroupIdentifier:(id)a3
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:@"222AA6C0-21DB-4EE6-8E62-019974477350"];
  v6 = MEMORY[0x277CCAD78];
  v7 = [v4 UUIDString];

  v8 = [v7 dataUsingEncoding:4];
  v9 = [v6 hmf_UUIDWithNamespace:v5 data:v8];

  return v9;
}

+ (id)derivedDestinationForGroup:(id)a3 leftDestination:(id)a4 rightDestination:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v9)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = v10;
  if (!v10)
  {
LABEL_9:
    v20 = _HMFPreconditionFailure();
    return [(HMDMediaSystemsAggregateDataGenerator *)v20 isValidLeftDestination:v21 rightDestination:v22, v23];
  }

  v12 = objc_alloc(MEMORY[0x277CD1B80]);
  v13 = [v8 identifier];
  v14 = [a1 derivedMediaDestinationIdentifierForGroupIdentifier:v13];
  v15 = [v8 identifier];
  v16 = [a1 deriveSupportedOptionsFromLeftDestination:v9 rightDestination:v11];
  v17 = [v8 associatedGroupIdentifier];
  v18 = [v12 initWithUniqueIdentifier:v14 parentIdentifier:v15 supportedOptions:v16 audioGroupIdentifier:v17];

  return v18;
}

+ (BOOL)isValidLeftDestination:(id)a3 rightDestination:(id)a4
{
  result = 0;
  if (a3)
  {
    if (a4)
    {
      v5 = a3;
      v6 = a4;
      LOBYTE(v5) = [v5 supportedOptions];
      v7 = [v6 supportedOptions];

      return (v5 & v7 & 0xB0) != 0;
    }
  }

  return result;
}

- (HMDMediaSystemsAggregateDataGeneratorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BOOL)hasRoleType:(unint64_t)a3 mediaSystemData:(id)a4 destination:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (a3 == 2)
  {
    v9 = [v7 rightDestinationIdentifier];
    v10 = [v8 uniqueIdentifier];
    if (([v9 hmf_isEqualToUUID:v10] & 1) == 0)
    {
      v11 = [v7 rightDestinationIdentifier];
      goto LABEL_9;
    }

LABEL_6:
    v12 = 1;
LABEL_10:

    goto LABEL_11;
  }

  if (a3 == 1)
  {
    v9 = [v7 leftDestinationIdentifier];
    v10 = [v8 uniqueIdentifier];
    if (([v9 hmf_isEqualToUUID:v10] & 1) == 0)
    {
      v11 = [v7 leftDestinationIdentifier];
LABEL_9:
      v13 = v11;
      v14 = [v8 parentIdentifier];
      v12 = [v13 hmf_isEqualToUUID:v14];

      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)destinationWithRoleType:(unint64_t)a3 mediaSystemData:(id)a4 destinations:(id)a5
{
  v8 = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__HMDMediaSystemsAggregateDataGenerator_destinationWithRoleType_mediaSystemData_destinations___block_invoke;
  v12[3] = &unk_278683A88;
  v13 = v8;
  v14 = a3;
  v12[4] = self;
  v9 = v8;
  v10 = [a5 na_firstObjectPassingTest:v12];

  return v10;
}

uint64_t __94__HMDMediaSystemsAggregateDataGenerator_destinationWithRoleType_mediaSystemData_destinations___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 containsMediaSystemSupportedOptions];
  v5 = [*(a1 + 32) hasRoleType:*(a1 + 48) mediaSystemData:*(a1 + 40) destination:v3];
  v6 = [v3 audioGroupIdentifier];

  v7 = [*(a1 + 40) identifier];
  LODWORD(v3) = [v6 hmf_isEqualToUUID:v7];

  return v4 & v5 & v3;
}

- (id)roomForAllDestinationParentIdentifiers:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMediaSystemsAggregateDataGenerator *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 roomForAllDestinationParentIdentifiers:v4 mediaSystemsAggregateDataGenerator:self];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v20 = 138543874;
        v21 = v17;
        v22 = 2112;
        v23 = v4;
        v24 = 2112;
        v25 = v6;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to get room for all destination parent identifiers: %@ data source: %@", &v20, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to get room for all destination parent identifiers: %@ to no data source", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v8 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)nameForMediaSystemData:(id)a3 room:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 isDefaultName];
  v9 = [v6 name];
  if (v8)
  {
    v10 = [MEMORY[0x277CD1C08] roomNameSentinel];
    v11 = [v9 isEqual:v10];

    v12 = v7;
    if ((v11 & 1) == 0)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v16;
        _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine default group name", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v12 = v6;
    }

    v9 = [v12 name];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)aggregateDataWithDestinations:(id)a3 controllers:(id)a4 groups:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v33 = a4;
  v9 = a5;
  v38 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v34 = [v8 mutableCopy];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v40;
    v35 = *v40;
    v36 = v8;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        v15 = [v14 mediaSystemData];
        if (v15)
        {
          v16 = [(HMDMediaSystemsAggregateDataGenerator *)self destinationWithRoleType:1 mediaSystemData:v15 destinations:v8];
          v17 = [(HMDMediaSystemsAggregateDataGenerator *)self destinationWithRoleType:2 mediaSystemData:v15 destinations:v8];
          if ([objc_opt_class() isValidLeftDestination:v16 rightDestination:v17])
          {
            v18 = [v16 parentIdentifier];
            v43[0] = v18;
            v19 = [v17 parentIdentifier];
            v43[1] = v19;
            v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
            v21 = [(HMDMediaSystemsAggregateDataGenerator *)self roomForAllDestinationParentIdentifiers:v20];

            if (v21)
            {
              v22 = [v15 associatedGroupIdentifier];
              v23 = [v15 identifier];
              v24 = [v22 hmf_isEqualToUUID:v23];

              if (v24)
              {

                v22 = 0;
              }

              v25 = [v15 mutableCopy];
              v26 = [(HMDMediaSystemsAggregateDataGenerator *)self nameForMediaSystemData:v15 room:v21];
              [v25 setName:v26];

              v27 = [v16 uniqueIdentifier];
              [v25 setLeftDestinationIdentifier:v27];

              v28 = [v17 uniqueIdentifier];
              [v25 setRightDestinationIdentifier:v28];

              [v25 setAssociatedGroupIdentifier:v22];
              [v38 addObject:v25];
              v29 = [objc_opt_class() derivedDestinationForGroup:v25 leftDestination:v16 rightDestination:v17];
              [v34 addObject:v29];
            }

            v12 = v35;
            v8 = v36;
          }
        }

        else
        {
          [v38 addObject:v14];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v11);
  }

  v30 = [[HMDMediaGroupsAggregateData alloc] initWithDestinations:v34 destinationControllersData:v33 groups:v38];
  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

@end