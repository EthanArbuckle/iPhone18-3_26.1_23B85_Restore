@interface HMDMediaGroupsAggregateData
- (BOOL)isEqual:(id)a3;
- (HMDMediaGroupsAggregateData)initWithDestinations:(id)a3 destinationControllersData:(id)a4 groups:(id)a5;
- (HMDMediaGroupsAggregateData)initWithProtoBufferData:(id)a3;
- (id)decodeDestinationControllersWithEncodedDestinationControllers:(id)a3;
- (id)decodeDestinationsWithEncodedDestinations:(id)a3;
- (id)decodeMediaGroupsWithEncodedMediaGroups:(id)a3;
- (id)description;
- (id)encodeToProtoBufferData;
- (id)encodedDestinationControllerEvents;
- (id)encodedDestinationEvents;
- (id)encodedMediaGroupEvents;
- (id)groupWithIdentifier:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)sentinelDestination;
- (id)sentinelDestinationControllerData;
- (id)sentinelGroup;
- (id)sentinelIdentifier;
- (unint64_t)hash;
@end

@implementation HMDMediaGroupsAggregateData

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMDMutableMediaGroupsAggregateData alloc];
  v5 = [(HMDMediaGroupsAggregateData *)self destinations];
  v6 = [(HMDMediaGroupsAggregateData *)self destinationControllersData];
  v7 = [(HMDMediaGroupsAggregateData *)self groups];
  v8 = [(HMDMediaGroupsAggregateData *)v4 initWithDestinations:v5 destinationControllersData:v6 groups:v7];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDMediaGroupsAggregateData *)self destinations];
  v5 = [(HMDMediaGroupsAggregateData *)self destinationControllersData];
  v6 = [(HMDMediaGroupsAggregateData *)self groups];
  v7 = [v3 stringWithFormat:@"<HMDMediaGroupsAggregateData destinations: %@ destinationControllerDatas: %@ groups: %@>", v4, v5, v6];

  return v7;
}

- (unint64_t)hash
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v3 = [(HMDMediaGroupsAggregateData *)self destinations];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__HMDMediaGroupsAggregateData_hash__block_invoke;
  v10[3] = &unk_27972BA80;
  v10[4] = &v11;
  [v3 na_each:v10];

  v4 = [(HMDMediaGroupsAggregateData *)self destinationControllersData];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__HMDMediaGroupsAggregateData_hash__block_invoke_2;
  v9[3] = &unk_27972BAA8;
  v9[4] = &v11;
  [v4 na_each:v9];

  v5 = [(HMDMediaGroupsAggregateData *)self groups];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__HMDMediaGroupsAggregateData_hash__block_invoke_3;
  v8[3] = &unk_27972BAD0;
  v8[4] = &v11;
  [v5 na_each:v8];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v23 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = MEMORY[0x277CBEB98];
      v8 = [(HMDMediaGroupsAggregateData *)self destinations];
      v9 = [v7 setWithArray:v8];
      v10 = MEMORY[0x277CBEB98];
      v11 = [(HMDMediaGroupsAggregateData *)v6 destinations];
      v12 = [v10 setWithArray:v11];
      if ([v9 isEqualToSet:v12])
      {
        v28 = v8;
        v13 = MEMORY[0x277CBEB98];
        v14 = [(HMDMediaGroupsAggregateData *)self destinationControllersData];
        v15 = [v13 setWithArray:v14];
        v16 = MEMORY[0x277CBEB98];
        v27 = [(HMDMediaGroupsAggregateData *)v6 destinationControllersData];
        v17 = [v16 setWithArray:?];
        v29 = v15;
        if ([v15 isEqualToSet:v17])
        {
          v26 = v14;
          v18 = MEMORY[0x277CBEB98];
          v25 = [(HMDMediaGroupsAggregateData *)self groups];
          v19 = [v18 setWithArray:v25];
          v20 = MEMORY[0x277CBEB98];
          v21 = [(HMDMediaGroupsAggregateData *)v6 groups];
          v22 = [v20 setWithArray:v21];
          v23 = [v19 isEqualToSet:v22];

          v14 = v26;
        }

        else
        {
          v23 = 0;
        }

        v8 = v28;
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
  v2 = [(HMDMediaGroupsAggregateData *)self sentinelIdentifier];
  v3 = objc_alloc(MEMORY[0x277CD1BA0]);
  v4 = [v3 initWithIdentifier:v2 parentIdentifier:v2 name:&stru_286509E58 defaultName:0 destinationIdentifiers:MEMORY[0x277CBEBF8] associatedGroupIdentifier:0];

  return v4;
}

- (id)sentinelDestination
{
  v2 = [(HMDMediaGroupsAggregateData *)self sentinelIdentifier];
  v3 = [objc_alloc(MEMORY[0x277CD1B80]) initWithUniqueIdentifier:v2 parentIdentifier:v2 supportedOptions:0];

  return v3;
}

- (id)sentinelDestinationControllerData
{
  v2 = [(HMDMediaGroupsAggregateData *)self sentinelIdentifier];
  v3 = objc_alloc(MEMORY[0x277CD1B90]);
  v4 = [v3 initWithIdentifier:v2 parentIdentifier:v2 destinationIdentifier:0 supportedOptions:0 availableDestinationIdentifiers:MEMORY[0x277CBEBF8]];

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
  v3 = [(HMDMediaGroupsAggregateData *)self groups];
  v4 = [v3 count];

  if (v4)
  {
    v5 = MEMORY[0x277CBEB18];
    v6 = [(HMDMediaGroupsAggregateData *)self groups];
    v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [(HMDMediaGroupsAggregateData *)self groups];
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = objc_alloc(MEMORY[0x277CD1BC0]);
          v15 = [v13 encodeToProtoBufferData];
          v16 = [v14 initWithData:v15];

          if (v16)
          {
            [v7 addObject:v16];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v8 = [(HMDMediaGroupsAggregateData *)self sentinelGroup];
    v17 = objc_alloc(MEMORY[0x277CD1BC0]);
    v18 = [v8 encodeToProtoBufferData];
    v19 = [v17 initWithData:v18];

    v27[0] = v19;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)encodedDestinationControllerEvents
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDMediaGroupsAggregateData *)self destinationControllersData];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(HMDMediaGroupsAggregateData *)self destinationControllersData];
    v6 = [v5 na_map:&__block_literal_global_20_116997];
  }

  else
  {
    v5 = [(HMDMediaGroupsAggregateData *)self sentinelDestinationControllerData];
    v7 = objc_alloc(MEMORY[0x277CD1BB8]);
    v8 = [v5 encodeToProtoBufferData];
    v9 = [v7 initWithData:v8];
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
  v3 = [(HMDMediaGroupsAggregateData *)self destinations];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(HMDMediaGroupsAggregateData *)self destinations];
    v6 = [v5 na_map:&__block_literal_global_16_117001];
  }

  else
  {
    v5 = [(HMDMediaGroupsAggregateData *)self sentinelDestination];
    v7 = objc_alloc(MEMORY[0x277CD1BA8]);
    v8 = [v5 encodeToProtoBufferData];
    v9 = [v7 initWithData:v8];
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
  v4 = [(HMDMediaGroupsAggregateData *)self encodedDestinationEvents];
  v5 = [v4 mutableCopy];
  [v3 setDestinations:v5];

  v6 = [(HMDMediaGroupsAggregateData *)self encodedDestinationControllerEvents];
  v7 = [v6 mutableCopy];
  [v3 setDestinationControllerDatas:v7];

  v8 = [(HMDMediaGroupsAggregateData *)self encodedMediaGroupEvents];
  v9 = [v8 mutableCopy];
  [v3 setGroups:v9];

  v10 = [v3 data];

  return v10;
}

- (id)decodeMediaGroupsWithEncodedMediaGroups:(id)a3
{
  v4 = [a3 na_map:&__block_literal_global_10_117005];
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

- (id)decodeDestinationControllersWithEncodedDestinationControllers:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 na_map:&__block_literal_global_6_117008];
  v6 = [v5 count];
  if (v6 == [v4 count])
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
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v4;
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

- (id)decodeDestinationsWithEncodedDestinations:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 na_map:&__block_literal_global_117012];
  v6 = [v5 count];
  if (v6 == [v4 count])
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
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v14;
      v19 = 2112;
      v20 = v4;
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

- (HMDMediaGroupsAggregateData)initWithProtoBufferData:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CD1BB0]) initWithData:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 destinations];
    v8 = [(HMDMediaGroupsAggregateData *)self decodeDestinationsWithEncodedDestinations:v7];

    v9 = [v6 destinationControllerDatas];
    v10 = [(HMDMediaGroupsAggregateData *)self decodeDestinationControllersWithEncodedDestinationControllers:v9];

    v11 = [v6 groups];
    v12 = [(HMDMediaGroupsAggregateData *)self decodeMediaGroupsWithEncodedMediaGroups:v11];

    v13 = [(HMDMediaGroupsAggregateData *)self initWithDestinations:v8 destinationControllersData:v10 groups:v12];
    v14 = v13;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v13 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v17;
      v22 = 2112;
      v23 = v4;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode event data: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v14 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)groupWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMDMediaGroupsAggregateData *)self groups];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__HMDMediaGroupsAggregateData_groupWithIdentifier___block_invoke;
  v9[3] = &unk_27972E038;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __51__HMDMediaGroupsAggregateData_groupWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (HMDMediaGroupsAggregateData)initWithDestinations:(id)a3 destinationControllersData:(id)a4 groups:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HMDMediaGroupsAggregateData;
  v11 = [(HMDMediaGroupsAggregateData *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    destinations = v11->_destinations;
    v11->_destinations = v12;

    v14 = [v9 copy];
    destinationControllersData = v11->_destinationControllersData;
    v11->_destinationControllersData = v14;

    v16 = [v10 copy];
    groups = v11->_groups;
    v11->_groups = v16;
  }

  return v11;
}

@end