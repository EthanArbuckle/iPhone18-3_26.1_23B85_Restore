@interface HMDMediaSystemsAggregateDataGenerator
+ (BOOL)isValidLeftDestination:(id)destination rightDestination:(id)rightDestination;
+ (id)derivedDestinationForGroup:(id)group leftDestination:(id)destination rightDestination:(id)rightDestination;
+ (id)derivedMediaDestinationIdentifierForGroupIdentifier:(id)identifier;
+ (unint64_t)deriveSupportedOptionsFromLeftDestination:(id)destination rightDestination:(id)rightDestination;
- (BOOL)hasRoleType:(unint64_t)type mediaSystemData:(id)data destination:(id)destination;
- (HMDMediaSystemsAggregateDataGeneratorDataSource)dataSource;
- (id)aggregateDataWithDestinations:(id)destinations controllers:(id)controllers groups:(id)groups;
- (id)destinationWithRoleType:(unint64_t)type mediaSystemData:(id)data destinations:(id)destinations;
- (id)nameForMediaSystemData:(id)data room:(id)room;
- (id)roomForAllDestinationParentIdentifiers:(id)identifiers;
@end

@implementation HMDMediaSystemsAggregateDataGenerator

+ (unint64_t)deriveSupportedOptionsFromLeftDestination:(id)destination rightDestination:(id)rightDestination
{
  rightDestinationCopy = rightDestination;
  LODWORD(destination) = [destination supportedOptions];
  supportedOptions = [rightDestinationCopy supportedOptions];

  return destination & supportedOptions & 0x45;
}

+ (id)derivedMediaDestinationIdentifierForGroupIdentifier:(id)identifier
{
  v3 = MEMORY[0x277CCAD78];
  identifierCopy = identifier;
  v5 = [[v3 alloc] initWithUUIDString:@"222AA6C0-21DB-4EE6-8E62-019974477350"];
  v6 = MEMORY[0x277CCAD78];
  uUIDString = [identifierCopy UUIDString];

  v8 = [uUIDString dataUsingEncoding:4];
  v9 = [v6 hmf_UUIDWithNamespace:v5 data:v8];

  return v9;
}

+ (id)derivedDestinationForGroup:(id)group leftDestination:(id)destination rightDestination:(id)rightDestination
{
  groupCopy = group;
  destinationCopy = destination;
  rightDestinationCopy = rightDestination;
  if (!groupCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!destinationCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = rightDestinationCopy;
  if (!rightDestinationCopy)
  {
LABEL_9:
    v20 = _HMFPreconditionFailure();
    return [(HMDMediaSystemsAggregateDataGenerator *)v20 isValidLeftDestination:v21 rightDestination:v22, v23];
  }

  v12 = objc_alloc(MEMORY[0x277CD1B80]);
  identifier = [groupCopy identifier];
  v14 = [self derivedMediaDestinationIdentifierForGroupIdentifier:identifier];
  identifier2 = [groupCopy identifier];
  v16 = [self deriveSupportedOptionsFromLeftDestination:destinationCopy rightDestination:v11];
  associatedGroupIdentifier = [groupCopy associatedGroupIdentifier];
  v18 = [v12 initWithUniqueIdentifier:v14 parentIdentifier:identifier2 supportedOptions:v16 audioGroupIdentifier:associatedGroupIdentifier];

  return v18;
}

+ (BOOL)isValidLeftDestination:(id)destination rightDestination:(id)rightDestination
{
  result = 0;
  if (destination)
  {
    if (rightDestination)
    {
      destinationCopy = destination;
      rightDestinationCopy = rightDestination;
      LOBYTE(destinationCopy) = [destinationCopy supportedOptions];
      supportedOptions = [rightDestinationCopy supportedOptions];

      return (destinationCopy & supportedOptions & 0xB0) != 0;
    }
  }

  return result;
}

- (HMDMediaSystemsAggregateDataGeneratorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BOOL)hasRoleType:(unint64_t)type mediaSystemData:(id)data destination:(id)destination
{
  dataCopy = data;
  destinationCopy = destination;
  if (type == 2)
  {
    rightDestinationIdentifier = [dataCopy rightDestinationIdentifier];
    uniqueIdentifier = [destinationCopy uniqueIdentifier];
    if (([rightDestinationIdentifier hmf_isEqualToUUID:uniqueIdentifier] & 1) == 0)
    {
      rightDestinationIdentifier2 = [dataCopy rightDestinationIdentifier];
      goto LABEL_9;
    }

LABEL_6:
    v12 = 1;
LABEL_10:

    goto LABEL_11;
  }

  if (type == 1)
  {
    rightDestinationIdentifier = [dataCopy leftDestinationIdentifier];
    uniqueIdentifier = [destinationCopy uniqueIdentifier];
    if (([rightDestinationIdentifier hmf_isEqualToUUID:uniqueIdentifier] & 1) == 0)
    {
      rightDestinationIdentifier2 = [dataCopy leftDestinationIdentifier];
LABEL_9:
      v13 = rightDestinationIdentifier2;
      parentIdentifier = [destinationCopy parentIdentifier];
      v12 = [v13 hmf_isEqualToUUID:parentIdentifier];

      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)destinationWithRoleType:(unint64_t)type mediaSystemData:(id)data destinations:(id)destinations
{
  dataCopy = data;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __94__HMDMediaSystemsAggregateDataGenerator_destinationWithRoleType_mediaSystemData_destinations___block_invoke;
  v12[3] = &unk_2797284B0;
  v13 = dataCopy;
  typeCopy = type;
  v12[4] = self;
  v9 = dataCopy;
  v10 = [destinations na_firstObjectPassingTest:v12];

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

- (id)roomForAllDestinationParentIdentifiers:(id)identifiers
{
  v26 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  dataSource = [(HMDMediaSystemsAggregateDataGenerator *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource roomForAllDestinationParentIdentifiers:identifiersCopy mediaSystemsAggregateDataGenerator:self];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v20 = 138543874;
        v21 = v17;
        v22 = 2112;
        v23 = identifiersCopy;
        v24 = 2112;
        v25 = v6;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to get room for all destination parent identifiers: %@ data source: %@", &v20, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v13;
      v22 = 2112;
      v23 = identifiersCopy;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to get room for all destination parent identifiers: %@ to no data source", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v8 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)nameForMediaSystemData:(id)data room:(id)room
{
  v21 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  roomCopy = room;
  isDefaultName = [dataCopy isDefaultName];
  name = [dataCopy name];
  if (isDefaultName)
  {
    roomNameSentinel = [MEMORY[0x277CD1C08] roomNameSentinel];
    v11 = [name isEqual:roomNameSentinel];

    v12 = roomCopy;
    if ((v11 & 1) == 0)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v16;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine default group name", &v19, 0xCu);
      }

      objc_autoreleasePoolPop(v13);
      v12 = dataCopy;
    }

    name = [v12 name];
  }

  v17 = *MEMORY[0x277D85DE8];

  return name;
}

- (id)aggregateDataWithDestinations:(id)destinations controllers:(id)controllers groups:(id)groups
{
  v45 = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  controllersCopy = controllers;
  groupsCopy = groups;
  v38 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(groupsCopy, "count")}];
  v34 = [destinationsCopy mutableCopy];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = groupsCopy;
  v10 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v40;
    v35 = *v40;
    v36 = destinationsCopy;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v39 + 1) + 8 * i);
        mediaSystemData = [v14 mediaSystemData];
        if (mediaSystemData)
        {
          v16 = [(HMDMediaSystemsAggregateDataGenerator *)self destinationWithRoleType:1 mediaSystemData:mediaSystemData destinations:destinationsCopy];
          v17 = [(HMDMediaSystemsAggregateDataGenerator *)self destinationWithRoleType:2 mediaSystemData:mediaSystemData destinations:destinationsCopy];
          if ([objc_opt_class() isValidLeftDestination:v16 rightDestination:v17])
          {
            parentIdentifier = [v16 parentIdentifier];
            v43[0] = parentIdentifier;
            parentIdentifier2 = [v17 parentIdentifier];
            v43[1] = parentIdentifier2;
            v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
            v21 = [(HMDMediaSystemsAggregateDataGenerator *)self roomForAllDestinationParentIdentifiers:v20];

            if (v21)
            {
              associatedGroupIdentifier = [mediaSystemData associatedGroupIdentifier];
              identifier = [mediaSystemData identifier];
              v24 = [associatedGroupIdentifier hmf_isEqualToUUID:identifier];

              if (v24)
              {

                associatedGroupIdentifier = 0;
              }

              v25 = [mediaSystemData mutableCopy];
              v26 = [(HMDMediaSystemsAggregateDataGenerator *)self nameForMediaSystemData:mediaSystemData room:v21];
              [v25 setName:v26];

              uniqueIdentifier = [v16 uniqueIdentifier];
              [v25 setLeftDestinationIdentifier:uniqueIdentifier];

              uniqueIdentifier2 = [v17 uniqueIdentifier];
              [v25 setRightDestinationIdentifier:uniqueIdentifier2];

              [v25 setAssociatedGroupIdentifier:associatedGroupIdentifier];
              [v38 addObject:v25];
              v29 = [objc_opt_class() derivedDestinationForGroup:v25 leftDestination:v16 rightDestination:v17];
              [v34 addObject:v29];
            }

            v12 = v35;
            destinationsCopy = v36;
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

  v30 = [[HMDMediaGroupsAggregateData alloc] initWithDestinations:v34 destinationControllersData:controllersCopy groups:v38];
  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

@end