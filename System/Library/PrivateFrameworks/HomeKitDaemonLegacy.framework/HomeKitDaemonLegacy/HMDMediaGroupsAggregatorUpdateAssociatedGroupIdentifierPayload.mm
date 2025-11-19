@interface HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload
- (BOOL)isEqual:(id)a3;
- (HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload)initWithGroupIdentifier:(id)a3 associatedGroupIdentifier:(id)a4;
- (HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload)initWithPayload:(id)a3;
- (id)attributeDescriptions;
- (id)payloadCopy;
- (unint64_t)hash;
@end

@implementation HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
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
      v7 = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)self groupIdentifier];
      v8 = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)v6 groupIdentifier];
      if ([v7 hmf_isEqualToUUID:v8])
      {
        v9 = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)self associatedGroupIdentifier];
        v10 = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)v6 associatedGroupIdentifier];
        v11 = HMFEqualObjects();
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v2 = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)self groupIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (id)payloadCopy
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"groupIdentifier";
  v3 = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)self groupIdentifier];
  v4 = [v3 UUIDString];
  v12[1] = @"associatedGroupIdentifier";
  v13[0] = v4;
  v5 = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)self associatedGroupIdentifier];
  v6 = [v5 UUIDString];
  v7 = v6;
  v8 = &stru_286509E58;
  if (v6)
  {
    v8 = v6;
  }

  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload)initWithPayload:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hmf_UUIDForKey:@"groupIdentifier"];
  v6 = [v4 hmf_UUIDForKey:@"associatedGroupIdentifier"];
  if (v5)
  {
    v7 = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)self initWithGroupIdentifier:v5 associatedGroupIdentifier:v6];
    v8 = v7;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v7 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = 0;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to get decode dependencies group identifier: %@ payload: %@ due", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)attributeDescriptions
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)self groupIdentifier];
  v5 = [v3 initWithName:@"groupIdentifier" value:v4];
  v14[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)self associatedGroupIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"nil";
  }

  v10 = [v6 initWithName:@"associatedGroupIdentifier" value:v9];
  v14[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload)initWithGroupIdentifier:(id)a3 associatedGroupIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = v8;
    v15.receiver = self;
    v15.super_class = HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload;
    v10 = [(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)&v15 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_groupIdentifier, a3);
      objc_storeStrong(&v11->_associatedGroupIdentifier, a4);
    }

    return v11;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return +[(HMDMediaGroupsAggregatorUpdateAssociatedGroupIdentifierPayload *)v13];
  }
}

@end