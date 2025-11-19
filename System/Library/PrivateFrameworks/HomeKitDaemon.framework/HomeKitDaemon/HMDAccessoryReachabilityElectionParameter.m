@interface HMDAccessoryReachabilityElectionParameter
- (BOOL)isEqual:(id)a3;
- (HMDAccessoryReachabilityElectionParameter)initWithDictionaryRepresentation:(id)a3;
- (HMDAccessoryReachabilityElectionParameter)initWithIdentifier:(id)a3 isReachable:(BOOL)a4;
- (NSDictionary)dictionaryRepresentation;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDAccessoryReachabilityElectionParameter

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDAccessoryReachabilityElectionParameter *)self identifier];
  v5 = [v3 initWithName:@"Identifier" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDAccessoryReachabilityElectionParameter *)self isReachable];
  v7 = HMFBooleanToString();
  v8 = [v6 initWithName:@"Reachable" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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
    v7 = [(HMDAccessoryReachabilityElectionParameter *)self identifier];
    v8 = [v6 identifier];
    if ([v7 hmf_isEqualToUUID:v8])
    {
      v9 = [(HMDAccessoryReachabilityElectionParameter *)self isReachable];
      v10 = v9 ^ [v6 isReachable] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v2 = [(HMDAccessoryReachabilityElectionParameter *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(HMDAccessoryReachabilityElectionParameter *)self identifier];
  v4 = [v3 UUIDString];
  v10 = v4;
  v5 = [(HMDAccessoryReachabilityElectionParameter *)self isReachable];
  v6 = &unk_283E74F00;
  if (v5)
  {
    v6 = &unk_283E74EE8;
  }

  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMDAccessoryReachabilityElectionParameter)initWithIdentifier:(id)a3 isReachable:(BOOL)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v15.receiver = self;
    v15.super_class = HMDAccessoryReachabilityElectionParameter;
    v8 = [(HMDAccessoryReachabilityElectionParameter *)&v15 init];
    if (v8)
    {
      v9 = [v7 copy];
      identifier = v8->_identifier;
      v8->_identifier = v9;

      v8->_reachable = a4;
    }

    return v8;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return [(HMDAccessoryReachabilityElectionParameter *)v12 initWithDictionaryRepresentation:v13, v14];
  }
}

- (HMDAccessoryReachabilityElectionParameter)initWithDictionaryRepresentation:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 allKeys];
    if ([v6 count] != 1)
    {
      v17 = objc_autoreleasePoolPush();
      self = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v33 = 138543618;
        v34 = v19;
        v35 = 2112;
        v36 = v5;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unexpected representation, invalid keys: %@", &v33, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      goto LABEL_23;
    }

    v7 = [v6 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
      if (v10)
      {
        v11 = v10;

        v12 = [v5 allValues];
        v13 = [v12 firstObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (v15)
        {
          self = -[HMDAccessoryReachabilityElectionParameter initWithIdentifier:isReachable:](self, "initWithIdentifier:isReachable:", v11, [v15 BOOLValue]);
          v16 = self;
        }

        else
        {
          v28 = objc_autoreleasePoolPush();
          self = self;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = HMFGetLogIdentifier();
            v31 = [v5 allValues];
            v32 = [v31 firstObject];
            v33 = 138543618;
            v34 = v30;
            v35 = 2112;
            v36 = v32;
            _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid reachability: %@", &v33, 0x16u);
          }

          objc_autoreleasePoolPop(v28);
          v16 = 0;
        }

        v6 = v11;
        goto LABEL_24;
      }

      v20 = objc_autoreleasePoolPush();
      v25 = self;
      v22 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      v23 = HMFGetLogIdentifier();
      v33 = 138543618;
      v34 = v23;
      v35 = 2112;
      v36 = v9;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Invalid identifier: %@", &v33, 0x16u);
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

        objc_autoreleasePoolPop(v20);
LABEL_23:
        v16 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v23 = HMFGetLogIdentifier();
      v24 = [v6 firstObject];
      v33 = 138543618;
      v34 = v23;
      v35 = 2112;
      v36 = v24;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Invalid key type: %@", &v33, 0x16u);
    }

    goto LABEL_22;
  }

  v16 = 0;
LABEL_25:

  v26 = *MEMORY[0x277D85DE8];
  return v16;
}

@end