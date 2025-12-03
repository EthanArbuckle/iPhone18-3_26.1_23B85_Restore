@interface HMDAccessoryReachabilityElectionParameter
- (BOOL)isEqual:(id)equal;
- (HMDAccessoryReachabilityElectionParameter)initWithDictionaryRepresentation:(id)representation;
- (HMDAccessoryReachabilityElectionParameter)initWithIdentifier:(id)identifier isReachable:(BOOL)reachable;
- (NSDictionary)dictionaryRepresentation;
- (id)attributeDescriptions;
- (unint64_t)hash;
@end

@implementation HMDAccessoryReachabilityElectionParameter

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  identifier = [(HMDAccessoryReachabilityElectionParameter *)self identifier];
  v5 = [v3 initWithName:@"Identifier" value:identifier];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
    identifier = [(HMDAccessoryReachabilityElectionParameter *)self identifier];
    identifier2 = [v6 identifier];
    if ([identifier hmf_isEqualToUUID:identifier2])
    {
      isReachable = [(HMDAccessoryReachabilityElectionParameter *)self isReachable];
      v10 = isReachable ^ [v6 isReachable] ^ 1;
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
  identifier = [(HMDAccessoryReachabilityElectionParameter *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v11[1] = *MEMORY[0x277D85DE8];
  identifier = [(HMDAccessoryReachabilityElectionParameter *)self identifier];
  uUIDString = [identifier UUIDString];
  v10 = uUIDString;
  isReachable = [(HMDAccessoryReachabilityElectionParameter *)self isReachable];
  v6 = &unk_283E74F00;
  if (isReachable)
  {
    v6 = &unk_283E74EE8;
  }

  v11[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (HMDAccessoryReachabilityElectionParameter)initWithIdentifier:(id)identifier isReachable:(BOOL)reachable
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v7 = identifierCopy;
    v15.receiver = self;
    v15.super_class = HMDAccessoryReachabilityElectionParameter;
    v8 = [(HMDAccessoryReachabilityElectionParameter *)&v15 init];
    if (v8)
    {
      v9 = [v7 copy];
      identifier = v8->_identifier;
      v8->_identifier = v9;

      v8->_reachable = reachable;
    }

    return v8;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return [(HMDAccessoryReachabilityElectionParameter *)v12 initWithDictionaryRepresentation:v13, v14];
  }
}

- (HMDAccessoryReachabilityElectionParameter)initWithDictionaryRepresentation:(id)representation
{
  v37 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    allKeys = [representationCopy allKeys];
    if ([allKeys count] != 1)
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

    firstObject = [allKeys firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = firstObject;
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

        allValues = [v5 allValues];
        firstObject2 = [allValues firstObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = firstObject2;
        }

        else
        {
          v14 = 0;
        }

        v15 = v14;

        if (v15)
        {
          self = -[HMDAccessoryReachabilityElectionParameter initWithIdentifier:isReachable:](self, "initWithIdentifier:isReachable:", v11, [v15 BOOLValue]);
          selfCopy = self;
        }

        else
        {
          v28 = objc_autoreleasePoolPush();
          self = self;
          v29 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v30 = HMFGetLogIdentifier();
            allValues2 = [v5 allValues];
            firstObject3 = [allValues2 firstObject];
            v33 = 138543618;
            v34 = v30;
            v35 = 2112;
            v36 = firstObject3;
            _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Invalid reachability: %@", &v33, 0x16u);
          }

          objc_autoreleasePoolPop(v28);
          selfCopy = 0;
        }

        allKeys = v11;
        goto LABEL_24;
      }

      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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
      selfCopy3 = self;
      v22 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_22:

        objc_autoreleasePoolPop(v20);
LABEL_23:
        selfCopy = 0;
LABEL_24:

        goto LABEL_25;
      }

      v23 = HMFGetLogIdentifier();
      firstObject4 = [allKeys firstObject];
      v33 = 138543618;
      v34 = v23;
      v35 = 2112;
      v36 = firstObject4;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Invalid key type: %@", &v33, 0x16u);
    }

    goto LABEL_22;
  }

  selfCopy = 0;
LABEL_25:

  v26 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

@end