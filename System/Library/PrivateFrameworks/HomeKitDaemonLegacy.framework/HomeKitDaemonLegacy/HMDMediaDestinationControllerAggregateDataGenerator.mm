@interface HMDMediaDestinationControllerAggregateDataGenerator
- (HMDMediaDestinationControllerAggregateDataGeneratorDataSource)dataSource;
- (id)aggregateDataWithDestinations:(id)destinations controllers:(id)controllers groups:(id)groups;
- (id)availableDestinationIdentifiersForDestinationControllerData:(id)data destinations:(id)destinations groups:(id)groups;
- (id)rootDestinationIdentifierForLeafDestinationIdentifier:(id)identifier destinations:(id)destinations groups:(id)groups;
- (id)sameRoomAccessoryUUIDsForDestinationControllerData:(id)data;
- (id)validDestinationIdentifierForDestinationControllerData:(id)data inDestinations:(id)destinations;
@end

@implementation HMDMediaDestinationControllerAggregateDataGenerator

- (HMDMediaDestinationControllerAggregateDataGeneratorDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)sameRoomAccessoryUUIDsForDestinationControllerData:(id)data
{
  v19 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dataSource = [(HMDMediaDestinationControllerAggregateDataGenerator *)self dataSource];
  v6 = dataSource;
  if (dataSource)
  {
    v7 = [dataSource sameRoomAccessoryUUIDsForDestinationControllerData:dataCopy generator:self];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      identifier = [dataCopy identifier];
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = identifier;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to get same room accessory UUIDs for destination controller data: %@ due to no data source", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = MEMORY[0x277CBEBF8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)rootDestinationIdentifierForLeafDestinationIdentifier:(id)identifier destinations:(id)destinations groups:(id)groups
{
  identifierCopy = identifier;
  destinationsCopy = destinations;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __129__HMDMediaDestinationControllerAggregateDataGenerator_rootDestinationIdentifierForLeafDestinationIdentifier_destinations_groups___block_invoke;
  v21[3] = &unk_27972E038;
  v9 = identifierCopy;
  v22 = v9;
  v10 = [groups na_firstObjectPassingTest:v21];
  v11 = v10;
  if (v10)
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __129__HMDMediaDestinationControllerAggregateDataGenerator_rootDestinationIdentifierForLeafDestinationIdentifier_destinations_groups___block_invoke_2;
    v19 = &unk_27972DFC0;
    v20 = v10;
    v12 = [destinationsCopy na_firstObjectPassingTest:&v16];
    v13 = v12;
    if (v12 && [v12 containsHomeTheaterSupportedOptions])
    {
      uniqueIdentifier = [v13 uniqueIdentifier];
    }

    else
    {
      uniqueIdentifier = 0;
    }
  }

  else
  {
    uniqueIdentifier = v9;
  }

  return uniqueIdentifier;
}

uint64_t __129__HMDMediaDestinationControllerAggregateDataGenerator_rootDestinationIdentifierForLeafDestinationIdentifier_destinations_groups___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 destinationIdentifiers];
  v4 = [*(a1 + 32) UUIDString];
  v5 = [v3 containsObject:v4];

  return v5;
}

uint64_t __129__HMDMediaDestinationControllerAggregateDataGenerator_rootDestinationIdentifierForLeafDestinationIdentifier_destinations_groups___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 parentIdentifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 hmf_isEqualToUUID:v4];

  return v5;
}

- (id)availableDestinationIdentifiersForDestinationControllerData:(id)data destinations:(id)destinations groups:(id)groups
{
  destinationsCopy = destinations;
  groupsCopy = groups;
  v10 = [(HMDMediaDestinationControllerAggregateDataGenerator *)self sameRoomAccessoryUUIDsForDestinationControllerData:data];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __135__HMDMediaDestinationControllerAggregateDataGenerator_availableDestinationIdentifiersForDestinationControllerData_destinations_groups___block_invoke;
  v26[3] = &unk_27972DFE8;
  v27 = v10;
  v11 = v10;
  v12 = [destinationsCopy na_map:v26];
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __135__HMDMediaDestinationControllerAggregateDataGenerator_availableDestinationIdentifiersForDestinationControllerData_destinations_groups___block_invoke_2;
  v22 = &unk_27972E010;
  selfCopy = self;
  v24 = destinationsCopy;
  v25 = groupsCopy;
  v13 = groupsCopy;
  v14 = destinationsCopy;
  v15 = [v12 na_map:&v19];
  v16 = [MEMORY[0x277CBEB98] setWithArray:{v15, v19, v20, v21, v22, selfCopy}];
  allObjects = [v16 allObjects];

  return allObjects;
}

id __135__HMDMediaDestinationControllerAggregateDataGenerator_availableDestinationIdentifiersForDestinationControllerData_destinations_groups___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 containsHomeTheaterSupportedOptions])
  {
    v4 = *(a1 + 32);
    v5 = [v3 parentIdentifier];
    if ([v4 containsObject:v5])
    {
      v6 = [v3 uniqueIdentifier];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)validDestinationIdentifierForDestinationControllerData:(id)data inDestinations:(id)destinations
{
  dataCopy = data;
  destinationsCopy = destinations;
  destinationIdentifier = [dataCopy destinationIdentifier];

  if (destinationIdentifier)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __125__HMDMediaDestinationControllerAggregateDataGenerator_validDestinationIdentifierForDestinationControllerData_inDestinations___block_invoke;
    v11[3] = &unk_27972DFC0;
    v12 = dataCopy;
    v8 = [destinationsCopy na_firstObjectPassingTest:v11];
    v9 = v8;
    if (v8)
    {
      destinationIdentifier = [v8 uniqueIdentifier];
    }

    else
    {
      destinationIdentifier = 0;
    }
  }

  return destinationIdentifier;
}

uint64_t __125__HMDMediaDestinationControllerAggregateDataGenerator_validDestinationIdentifierForDestinationControllerData_inDestinations___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) availableDestinationIdentifiers];
  v5 = [v3 uniqueIdentifier];
  if ([v4 containsObject:v5] && objc_msgSend(v3, "containsHomeTheaterSupportedOptions"))
  {
    v6 = [v3 audioGroupIdentifier];
    v7 = [*(a1 + 32) identifier];
    v8 = [v6 hmf_isEqualToUUID:v7];
    if ((v8 & 1) == 0)
    {
      v9 = [v3 audioGroupIdentifier];
      v10 = [*(a1 + 32) parentIdentifier];
      if (![v9 hmf_isEqualToUUID:v10])
      {
        v13 = 0;
        goto LABEL_13;
      }

      v20 = v10;
      v21 = v9;
    }

    v11 = [v3 uniqueIdentifier];
    v12 = [*(a1 + 32) destinationIdentifier];
    if ([v11 hmf_isEqualToUUID:v12])
    {

      v13 = 1;
      v10 = v20;
      v9 = v21;
      if (v8)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v14 = [v3 parentIdentifier];
      [*(a1 + 32) destinationIdentifier];
      v19 = v8;
      v15 = v7;
      v17 = v16 = v6;
      v13 = [v14 hmf_isEqualToUUID:v17];

      v6 = v16;
      v7 = v15;

      v10 = v20;
      v9 = v21;
      if (v19)
      {
        goto LABEL_14;
      }
    }

LABEL_13:

LABEL_14:
    goto LABEL_15;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)aggregateDataWithDestinations:(id)destinations controllers:(id)controllers groups:(id)groups
{
  destinationsCopy = destinations;
  groupsCopy = groups;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104__HMDMediaDestinationControllerAggregateDataGenerator_aggregateDataWithDestinations_controllers_groups___block_invoke;
  v15[3] = &unk_27972DF98;
  v15[4] = self;
  v16 = destinationsCopy;
  v17 = groupsCopy;
  v10 = groupsCopy;
  v11 = destinationsCopy;
  v12 = [controllers na_map:v15];
  v13 = [[HMDMediaGroupsAggregateData alloc] initWithDestinations:v11 destinationControllersData:v12 groups:v10];

  return v13;
}

id __104__HMDMediaDestinationControllerAggregateDataGenerator_aggregateDataWithDestinations_controllers_groups___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = [*(a1 + 32) availableDestinationIdentifiersForDestinationControllerData:v3 destinations:*(a1 + 40) groups:*(a1 + 48)];
  [v3 setAvailableDestinationIdentifiers:v4];

  v5 = [*(a1 + 32) validDestinationIdentifierForDestinationControllerData:v3 inDestinations:*(a1 + 40)];
  [v3 setDestinationIdentifier:v5];

  return v3;
}

@end