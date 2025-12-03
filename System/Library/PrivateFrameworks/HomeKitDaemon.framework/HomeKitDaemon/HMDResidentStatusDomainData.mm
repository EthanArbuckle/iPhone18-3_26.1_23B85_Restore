@interface HMDResidentStatusDomainData
- (BOOL)hasChangedFrom:(id)from;
- (BOOL)isEqual:(id)equal;
- (HMDResidentStatusDomainData)initWithChannelRecord:(id)record;
- (HMDResidentStatusDomainData)initWithIDSIdentifier:(id)identifier idsDestination:(id)destination assertionTime:(id)time dataByDomain:(id)domain;
- (unint64_t)hash;
@end

@implementation HMDResidentStatusDomainData

- (BOOL)hasChangedFrom:(id)from
{
  fromCopy = from;
  if ([(HMDResidentStatusDomainData *)self isEqual:fromCopy])
  {
    assertionTime = [(HMDResidentStatusDomainData *)self assertionTime];
    assertionTime2 = [fromCopy assertionTime];
    v7 = HMFEqualObjects();

    if (v7)
    {
      dataByDomain = [(HMDResidentStatusDomainData *)self dataByDomain];
      dataByDomain2 = [fromCopy dataByDomain];
      v10 = [dataByDomain isEqualToDictionary:dataByDomain2] ^ 1;
    }

    else
    {
      LOBYTE(v10) = 1;
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
  idsIdentifier = [(HMDResidentStatusDomainData *)self idsIdentifier];
  v3 = [idsIdentifier hash];

  return v3;
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
    idsIdentifier = [(HMDResidentStatusDomainData *)self idsIdentifier];
    idsIdentifier2 = [v6 idsIdentifier];
    if ([idsIdentifier isEqual:idsIdentifier2])
    {
      idsDestination = [(HMDResidentStatusDomainData *)self idsDestination];
      idsDestination2 = [v6 idsDestination];
      v11 = [idsDestination isEqual:idsDestination2];
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

  return v11;
}

- (HMDResidentStatusDomainData)initWithChannelRecord:(id)record
{
  v22 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  payload = [recordCopy payload];
  v6 = [payload hmf_dataForKey:@"ddp"];

  if (v6)
  {
    *v19 = 0;
    v7 = OPACKDecodeData();
    idsIdentifier = [recordCopy idsIdentifier];
    idsDestination = [recordCopy idsDestination];
    assertionTime = [recordCopy assertionTime];
    selfCopy = [(HMDResidentStatusDomainData *)self initWithIDSIdentifier:idsIdentifier idsDestination:idsDestination assertionTime:assertionTime dataByDomain:v7];

    v12 = selfCopy;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      payload2 = [recordCopy payload];
      *v19 = 138543618;
      *&v19[4] = v15;
      v20 = 2112;
      v21 = payload2;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@No domain data pairs present in %@", v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (HMDResidentStatusDomainData)initWithIDSIdentifier:(id)identifier idsDestination:(id)destination assertionTime:(id)time dataByDomain:(id)domain
{
  identifierCopy = identifier;
  destinationCopy = destination;
  timeCopy = time;
  domainCopy = domain;
  v18.receiver = self;
  v18.super_class = HMDResidentStatusDomainData;
  v15 = [(HMDResidentStatusDomainData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_idsIdentifier, identifier);
    objc_storeStrong(&v16->_idsDestination, destination);
    objc_storeStrong(&v16->_assertionTime, time);
    objc_storeStrong(&v16->_dataByDomain, domain);
  }

  return v16;
}

@end