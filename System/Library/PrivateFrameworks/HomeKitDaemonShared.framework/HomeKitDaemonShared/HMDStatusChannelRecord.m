@interface HMDStatusChannelRecord
- (BOOL)isEqual:(id)a3;
- (HMDStatusChannelRecord)initWithIdsIdentifier:(id)a3 idsDestination:(id)a4 payload:(id)a5 assertionTime:(id)a6;
- (HMDStatusChannelRecord)initWithPresentDevice:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMDStatusChannelRecord

- (unint64_t)hash
{
  v2 = [(HMDStatusChannelRecord *)self idsIdentifier];
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
    v7 = [(HMDStatusChannelRecord *)self idsIdentifier];
    v8 = [v6 idsIdentifier];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMDStatusChannelRecord *)self idsDestination];
      v10 = [v6 idsDestination];
      if ([v9 isEqual:v10])
      {
        v11 = [(HMDStatusChannelRecord *)self payload];
        v12 = [v6 payload];
        if ([v11 isEqual:v12])
        {
          v16 = [(HMDStatusChannelRecord *)self assertionTime];
          v13 = [v6 assertionTime];
          v14 = HMFEqualObjects();
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDStatusChannelRecord *)self idsIdentifier];
  v5 = [(HMDStatusChannelRecord *)self idsDestination];
  v6 = [(HMDStatusChannelRecord *)self assertionTime];
  v7 = [(HMDStatusChannelRecord *)self payload];
  v8 = [v3 stringWithFormat:@"device:%@ %@ assertionTime:%@ payload:%@", v4, v5, v6, v7];

  return v8;
}

- (HMDStatusChannelRecord)initWithPresentDevice:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 presencePayload];
  v6 = [v4 deviceTokenURI];
  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = [v5 payloadDictionary];
  v9 = [v8 hmf_stringForKey:@"statusChannelDeviceIdKey"];
  v10 = [v7 initWithUUIDString:v9];

  if (v10)
  {
    v11 = [v5 payloadDictionary];
    v12 = [v11 hmf_dateForKey:@"SC.ck.pt"];

    if (v12)
    {
      v13 = [v5 payloadDictionary];
      v14 = [(HMDStatusChannelRecord *)self initWithIdsIdentifier:v10 idsDestination:v6 payload:v13 assertionTime:v12];
    }

    else
    {
      v13 = [v4 assertionTime];
      v20 = [v5 payloadDictionary];
      v14 = [(HMDStatusChannelRecord *)self initWithIdsIdentifier:v10 idsDestination:v6 payload:v20 assertionTime:v13];
    }

    v19 = v14;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v14 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v5 payloadDictionary];
      v23 = 138543618;
      v24 = v17;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_2540F2000, v16, OS_LOG_TYPE_ERROR, "%{public}@Attempt to create ChannelRecord with invalid payload: missing/bad deviceID %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (HMDStatusChannelRecord)initWithIdsIdentifier:(id)a3 idsDestination:(id)a4 payload:(id)a5 assertionTime:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = HMDStatusChannelRecord;
  v15 = [(HMDStatusChannelRecord *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_idsIdentifier, a3);
    objc_storeStrong(&v16->_idsDestination, a4);
    payload = v16->_payload;
    v16->_payload = MEMORY[0x277CBEC10];

    if (v13)
    {
      objc_storeStrong(&v16->_payload, a5);
    }

    objc_storeStrong(&v16->_assertionTime, a6);
  }

  return v16;
}

@end