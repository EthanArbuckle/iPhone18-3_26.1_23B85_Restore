@interface HMDMediaGroupsAggregateData
- (BOOL)isEqual:(id)equal;
- (HMDMediaGroupsAggregateData)initWithDestinations:(id)destinations destinationControllersData:(id)data groups:(id)groups;
- (HMDMediaGroupsAggregateData)initWithProtoBufferData:(id)data;
- (id)decodeDestinationControllersWithEncodedDestinationControllers:(id)controllers;
- (id)decodeDestinationsWithEncodedDestinations:(id)destinations;
- (id)decodeMediaGroupsWithEncodedMediaGroups:(id)groups;
- (id)description;
- (id)encodeToProtoBufferData;
- (id)encodedDestinationControllerEvents;
- (id)encodedDestinationEvents;
- (id)encodedMediaGroupEvents;
- (id)groupWithIdentifier:(id)identifier;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)sentinelDestination;
- (id)sentinelDestinationControllerData;
- (id)sentinelGroup;
- (id)sentinelIdentifier;
- (unint64_t)hash;
@end

@implementation HMDMediaGroupsAggregateData

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMDMutableMediaGroupsAggregateData alloc];
  destinations = [(HMDMediaGroupsAggregateData *)self destinations];
  destinationControllersData = [(HMDMediaGroupsAggregateData *)self destinationControllersData];
  groups = [(HMDMediaGroupsAggregateData *)self groups];
  v8 = [(HMDMediaGroupsAggregateData *)v4 initWithDestinations:destinations destinationControllersData:destinationControllersData groups:groups];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  destinations = [(HMDMediaGroupsAggregateData *)self destinations];
  destinationControllersData = [(HMDMediaGroupsAggregateData *)self destinationControllersData];
  groups = [(HMDMediaGroupsAggregateData *)self groups];
  v7 = [v3 stringWithFormat:@"<HMDMediaGroupsAggregateData destinations: %@ destinationControllerDatas: %@ groups: %@>", destinations, destinationControllersData, groups];

  return v7;
}

- (unint64_t)hash
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  destinations = [(HMDMediaGroupsAggregateData *)self destinations];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__HMDMediaGroupsAggregateData_hash__block_invoke;
  v10[3] = &unk_27972BA80;
  v10[4] = &v11;
  [destinations na_each:v10];

  destinationControllersData = [(HMDMediaGroupsAggregateData *)self destinationControllersData];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__HMDMediaGroupsAggregateData_hash__block_invoke_2;
  v9[3] = &unk_27972BAA8;
  v9[4] = &v11;
  [destinationControllersData na_each:v9];

  groups = [(HMDMediaGroupsAggregateData *)self groups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__HMDMediaGroupsAggregateData_hash__block_invoke_3;
  v8[3] = &unk_27972BAD0;
  v8[4] = &v11;
  [groups na_each:v8];

  v6 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __35__HMDMediaGroupsAggregateData_hash__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 hash];
  *(*(*(a1 + 32) + 8) + 24) ^= result;
  return result;
}

uint64_t __35__HMDMediaGroupsAggregateData_hash__block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 hash];
  *(*(*(a1 + 32) + 8) + 24) ^= result;
  return result;
}

uint64_t __35__HMDMediaGroupsAggregateData_hash__block_invoke_3(uint64_t a1, void *a2)
{
  result = [a2 hash];
  *(*(*(a1 + 32) + 8) + 24) ^= result;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = MEMORY[0x277CBEB98];
      destinations = [(HMDMediaGroupsAggregateData *)self destinations];
      v9 = [v7 setWithArray:destinations];
      v10 = MEMORY[0x277CBEB98];
      destinations2 = [(HMDMediaGroupsAggregateData *)v6 destinations];
      v12 = [v10 setWithArray:destinations2];
      if ([v9 isEqualToSet:v12])
      {
        v28 = destinations;
        v13 = MEMORY[0x277CBEB98];
        destinationControllersData = [(HMDMediaGroupsAggregateData *)self destinationControllersData];
        v15 = [v13 setWithArray:destinationControllersData];
        v16 = MEMORY[0x277CBEB98];
        destinationControllersData2 = [(HMDMediaGroupsAggregateData *)v6 destinationControllersData];
        v17 = [v16 setWithArray:?];
        v29 = v15;
        if ([v15 isEqualToSet:v17])
        {
          v26 = destinationControllersData;
          v18 = MEMORY[0x277CBEB98];
          groups = [(HMDMediaGroupsAggregateData *)self groups];
          v19 = [v18 setWithArray:groups];
          v20 = MEMORY[0x277CBEB98];
          groups2 = [(HMDMediaGroupsAggregateData *)v6 groups];
          v22 = [v20 setWithArray:groups2];
          v23 = [v19 isEqualToSet:v22];

          destinationControllersData = v26;
        }

        else
        {
          v23 = 0;
        }

        destinations = v28;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

- (id)sentinelGroup
{
  sentinelIdentifier = [(HMDMediaGroupsAggregateData *)self sentinelIdentifier];
  v3 = objc_alloc(MEMORY[0x277CD1BA0]);
  v4 = [v3 initWithIdentifier:sentinelIdentifier parentIdentifier:sentinelIdentifier name:&stru_286509E58 defaultName:0 destinationIdentifiers:MEMORY[0x277CBEBF8] associatedGroupIdentifier:0];

  return v4;
}

- (id)sentinelDestination
{
  sentinelIdentifier = [(HMDMediaGroupsAggregateData *)self sentinelIdentifier];
  v3 = [objc_alloc(MEMORY[0x277CD1B80]) initWithUniqueIdentifier:sentinelIdentifier parentIdentifier:sentinelIdentifier supportedOptions:0];

  return v3;
}

- (id)sentinelDestinationControllerData
{
  sentinelIdentifier = [(HMDMediaGroupsAggregateData *)self sentinelIdentifier];
  v3 = objc_alloc(MEMORY[0x277CD1B90]);
  v4 = [v3 initWithIdentifier:sentinelIdentifier parentIdentifier:sentinelIdentifier destinationIdentifier:0 supportedOptions:0 availableDestinationIdentifiers:MEMORY[0x277CBEBF8]];

  return v4;
}

- (id)sentinelIdentifier
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];

  return v2;
}

- (id)encodedMediaGroupEvents
{
  v27[1] = *MEMORY[0x277D85DE8];
  groups = [(HMDMediaGroupsAggregateData *)self groups];
  v4 = [groups count];

  if (v4)
  {
    v5 = MEMORY[0x277CBEB18];
    groups2 = [(HMDMediaGroupsAggregateData *)self groups];
    v7 = [v5 arrayWithCapacity:{objc_msgSend(groups2, "count")}];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    groups3 = [(HMDMediaGroupsAggregateData *)self groups];
    v9 = [groups3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(groups3);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = objc_alloc(MEMORY[0x277CD1BC0]);
          encodeToProtoBufferData = [v13 encodeToProtoBufferData];
          v16 = [v14 initWithData:encodeToProtoBufferData];

          if (v16)
          {
            [v7 addObject:v16];
          }
        }

        v10 = [groups3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }
  }

  else
  {
    groups3 = [(HMDMediaGroupsAggregateData *)self sentinelGroup];
    v17 = objc_alloc(MEMORY[0x277CD1BC0]);
    encodeToProtoBufferData2 = [groups3 encodeToProtoBufferData];
    v19 = [v17 initWithData:encodeToProtoBufferData2];

    v27[0] = v19;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)encodedDestinationControllerEvents
{
  v12[1] = *MEMORY[0x277D85DE8];
  destinationControllersData = [(HMDMediaGroupsAggregateData *)self destinationControllersData];
  v4 = [destinationControllersData count];

  if (v4)
  {
    destinationControllersData2 = [(HMDMediaGroupsAggregateData *)self destinationControllersData];
    v6 = [destinationControllersData2 na_map:&__block_literal_global_20_116997];
  }

  else
  {
    destinationControllersData2 = [(HMDMediaGroupsAggregateData *)self sentinelDestinationControllerData];
    v7 = objc_alloc(MEMORY[0x277CD1BB8]);
    encodeToProtoBufferData = [destinationControllersData2 encodeToProtoBufferData];
    v9 = [v7 initWithData:encodeToProtoBufferData];
    v12[0] = v9;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

id __65__HMDMediaGroupsAggregateData_encodedDestinationControllerEvents__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1BB8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 encodeToProtoBufferData];

  v6 = [v4 initWithData:v5];

  return v6;
}

- (id)encodedDestinationEvents
{
  v12[1] = *MEMORY[0x277D85DE8];
  destinations = [(HMDMediaGroupsAggregateData *)self destinations];
  v4 = [destinations count];

  if (v4)
  {
    destinations2 = [(HMDMediaGroupsAggregateData *)self destinations];
    v6 = [destinations2 na_map:&__block_literal_global_16_117001];
  }

  else
  {
    destinations2 = [(HMDMediaGroupsAggregateData *)self sentinelDestination];
    v7 = objc_alloc(MEMORY[0x277CD1BA8]);
    encodeToProtoBufferData = [destinations2 encodeToProtoBufferData];
    v9 = [v7 initWithData:encodeToProtoBufferData];
    v12[0] = v9;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

id __55__HMDMediaGroupsAggregateData_encodedDestinationEvents__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1BA8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 encodeToProtoBufferData];

  v6 = [v4 initWithData:v5];

  return v6;
}

- (id)encodeToProtoBufferData
{
  v3 = objc_alloc_init(MEMORY[0x277CD1BB0]);
  encodedDestinationEvents = [(HMDMediaGroupsAggregateData *)self encodedDestinationEvents];
  v5 = [encodedDestinationEvents mutableCopy];
  [v3 setDestinations:v5];

  encodedDestinationControllerEvents = [(HMDMediaGroupsAggregateData *)self encodedDestinationControllerEvents];
  v7 = [encodedDestinationControllerEvents mutableCopy];
  [v3 setDestinationControllerDatas:v7];

  encodedMediaGroupEvents = [(HMDMediaGroupsAggregateData *)self encodedMediaGroupEvents];
  v9 = [encodedMediaGroupEvents mutableCopy];
  [v3 setGroups:v9];

  data = [v3 data];

  return data;
}

- (id)decodeMediaGroupsWithEncodedMediaGroups:(id)groups
{
  v4 = [groups na_map:&__block_literal_global_10_117005];
  if ([v4 count] == 1 && (objc_msgSend(v4, "firstObject"), v5 = objc_claimAutoreleasedReturnValue(), -[HMDMediaGroupsAggregateData sentinelGroup](self, "sentinelGroup"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, (v7 & 1) != 0))
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v8 = v4;
  }

  return v8;
}

id __71__HMDMediaGroupsAggregateData_decodeMediaGroupsWithEncodedMediaGroups___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1BA0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 data];

  v6 = [v4 initWithProtoBufferData:v5];

  return v6;
}

- (id)decodeDestinationControllersWithEncodedDestinationControllers:(id)controllers
{
  v21 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  v5 = [controllersCopy na_map:&__block_literal_global_6_117008];
  v6 = [v5 count];
  if (v6 == [controllersCopy count])
  {
    if ([v5 count] == 1 && (objc_msgSend(v5, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), -[HMDMediaGroupsAggregateData sentinelDestinationControllerData](self, "sentinelDestinationControllerData"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, (v9 & 1) != 0))
    {
      v10 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v10 = v5;
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = controllersCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode destination controllers data in proto data: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

id __93__HMDMediaGroupsAggregateData_decodeDestinationControllersWithEncodedDestinationControllers___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1B90];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 data];

  v6 = [v4 initWithProtoBufferData:v5];

  return v6;
}

- (id)decodeDestinationsWithEncodedDestinations:(id)destinations
{
  v21 = *MEMORY[0x277D85DE8];
  destinationsCopy = destinations;
  v5 = [destinationsCopy na_map:&__block_literal_global_117012];
  v6 = [v5 count];
  if (v6 == [destinationsCopy count])
  {
    if ([v5 count] == 1 && (objc_msgSend(v5, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), -[HMDMediaGroupsAggregateData sentinelDestination](self, "sentinelDestination"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqual:", v8), v8, v7, (v9 & 1) != 0))
    {
      v10 = MEMORY[0x277CBEBF8];
    }

    else
    {
      v10 = v5;
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = destinationsCopy;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode destinations in proto data: %@", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v10 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

id __73__HMDMediaGroupsAggregateData_decodeDestinationsWithEncodedDestinations___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CD1B80];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 data];

  v6 = [v4 initWithProtoBufferData:v5];

  return v6;
}

- (HMDMediaGroupsAggregateData)initWithProtoBufferData:(id)data
{
  v24 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = [objc_alloc(MEMORY[0x277CD1BB0]) initWithData:dataCopy];
  v6 = v5;
  if (v5)
  {
    destinations = [v5 destinations];
    v8 = [(HMDMediaGroupsAggregateData *)self decodeDestinationsWithEncodedDestinations:destinations];

    destinationControllerDatas = [v6 destinationControllerDatas];
    v10 = [(HMDMediaGroupsAggregateData *)self decodeDestinationControllersWithEncodedDestinationControllers:destinationControllerDatas];

    groups = [v6 groups];
    v12 = [(HMDMediaGroupsAggregateData *)self decodeMediaGroupsWithEncodedMediaGroups:groups];

    selfCopy = [(HMDMediaGroupsAggregateData *)self initWithDestinations:v8 destinationControllersData:v10 groups:v12];
    v14 = selfCopy;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = dataCopy;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode event data: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)groupWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  groups = [(HMDMediaGroupsAggregateData *)self groups];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HMDMediaGroupsAggregateData_groupWithIdentifier___block_invoke;
  v9[3] = &unk_27972E038;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [groups na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __51__HMDMediaGroupsAggregateData_groupWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (HMDMediaGroupsAggregateData)initWithDestinations:(id)destinations destinationControllersData:(id)data groups:(id)groups
{
  destinationsCopy = destinations;
  dataCopy = data;
  groupsCopy = groups;
  v19.receiver = self;
  v19.super_class = HMDMediaGroupsAggregateData;
  v11 = [(HMDMediaGroupsAggregateData *)&v19 init];
  if (v11)
  {
    v12 = [destinationsCopy copy];
    destinations = v11->_destinations;
    v11->_destinations = v12;

    v14 = [dataCopy copy];
    destinationControllersData = v11->_destinationControllersData;
    v11->_destinationControllersData = v14;

    v16 = [groupsCopy copy];
    groups = v11->_groups;
    v11->_groups = v16;
  }

  return v11;
}

@end