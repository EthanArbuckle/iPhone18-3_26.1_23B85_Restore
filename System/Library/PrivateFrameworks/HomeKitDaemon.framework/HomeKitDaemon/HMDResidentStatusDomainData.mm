@interface HMDResidentStatusDomainData
- (BOOL)hasChangedFrom:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMDResidentStatusDomainData)initWithChannelRecord:(id)a3;
- (HMDResidentStatusDomainData)initWithIDSIdentifier:(id)a3 idsDestination:(id)a4 assertionTime:(id)a5 dataByDomain:(id)a6;
- (unint64_t)hash;
@end

@implementation HMDResidentStatusDomainData

- (BOOL)hasChangedFrom:(id)a3
{
  v4 = a3;
  if ([(HMDResidentStatusDomainData *)self isEqual:v4])
  {
    v5 = [(HMDResidentStatusDomainData *)self assertionTime];
    v6 = [v4 assertionTime];
    v7 = HMFEqualObjects();

    if (v7)
    {
      v8 = [(HMDResidentStatusDomainData *)self dataByDomain];
      v9 = [v4 dataByDomain];
      v10 = [v8 isEqualToDictionary:v9] ^ 1;
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
  v2 = [(HMDResidentStatusDomainData *)self idsIdentifier];
  v3 = [v2 hash];

  return v3;
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
    v7 = [(HMDResidentStatusDomainData *)self idsIdentifier];
    v8 = [v6 idsIdentifier];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMDResidentStatusDomainData *)self idsDestination];
      v10 = [v6 idsDestination];
      v11 = [v9 isEqual:v10];
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

- (HMDResidentStatusDomainData)initWithChannelRecord:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 payload];
  v6 = [v5 hmf_dataForKey:@"ddp"];

  if (v6)
  {
    *v19 = 0;
    v7 = OPACKDecodeData();
    v8 = [v4 idsIdentifier];
    v9 = [v4 idsDestination];
    v10 = [v4 assertionTime];
    v11 = [(HMDResidentStatusDomainData *)self initWithIDSIdentifier:v8 idsDestination:v9 assertionTime:v10 dataByDomain:v7];

    v12 = v11;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v11 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v4 payload];
      *v19 = 138543618;
      *&v19[4] = v15;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@No domain data pairs present in %@", v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (HMDResidentStatusDomainData)initWithIDSIdentifier:(id)a3 idsDestination:(id)a4 assertionTime:(id)a5 dataByDomain:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HMDResidentStatusDomainData;
  v15 = [(HMDResidentStatusDomainData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_idsIdentifier, a3);
    objc_storeStrong(&v16->_idsDestination, a4);
    objc_storeStrong(&v16->_assertionTime, a5);
    objc_storeStrong(&v16->_dataByDomain, a6);
  }

  return v16;
}

@end