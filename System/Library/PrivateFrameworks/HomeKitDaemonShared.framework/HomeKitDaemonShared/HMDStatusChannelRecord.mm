@interface HMDStatusChannelRecord
- (BOOL)isEqual:(id)equal;
- (HMDStatusChannelRecord)initWithIdsIdentifier:(id)identifier idsDestination:(id)destination payload:(id)payload assertionTime:(id)time;
- (HMDStatusChannelRecord)initWithPresentDevice:(id)device;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMDStatusChannelRecord

- (unint64_t)hash
{
  idsIdentifier = [(HMDStatusChannelRecord *)self idsIdentifier];
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
    idsIdentifier = [(HMDStatusChannelRecord *)self idsIdentifier];
    idsIdentifier2 = [v6 idsIdentifier];
    if ([idsIdentifier isEqual:idsIdentifier2])
    {
      idsDestination = [(HMDStatusChannelRecord *)self idsDestination];
      idsDestination2 = [v6 idsDestination];
      if ([idsDestination isEqual:idsDestination2])
      {
        payload = [(HMDStatusChannelRecord *)self payload];
        payload2 = [v6 payload];
        if ([payload isEqual:payload2])
        {
          assertionTime = [(HMDStatusChannelRecord *)self assertionTime];
          assertionTime2 = [v6 assertionTime];
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
  idsIdentifier = [(HMDStatusChannelRecord *)self idsIdentifier];
  idsDestination = [(HMDStatusChannelRecord *)self idsDestination];
  assertionTime = [(HMDStatusChannelRecord *)self assertionTime];
  payload = [(HMDStatusChannelRecord *)self payload];
  v8 = [v3 stringWithFormat:@"device:%@ %@ assertionTime:%@ payload:%@", idsIdentifier, idsDestination, assertionTime, payload];

  return v8;
}

- (HMDStatusChannelRecord)initWithPresentDevice:(id)device
{
  v27 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  presencePayload = [deviceCopy presencePayload];
  deviceTokenURI = [deviceCopy deviceTokenURI];
  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  payloadDictionary = [presencePayload payloadDictionary];
  v9 = [payloadDictionary hmf_stringForKey:@"statusChannelDeviceIdKey"];
  v10 = [v7 initWithUUIDString:v9];

  if (v10)
  {
    payloadDictionary2 = [presencePayload payloadDictionary];
    v12 = [payloadDictionary2 hmf_dateForKey:@"SC.ck.pt"];

    if (v12)
    {
      payloadDictionary3 = [presencePayload payloadDictionary];
      selfCopy = [(HMDStatusChannelRecord *)self initWithIdsIdentifier:v10 idsDestination:deviceTokenURI payload:payloadDictionary3 assertionTime:v12];
    }

    else
    {
      payloadDictionary3 = [deviceCopy assertionTime];
      payloadDictionary4 = [presencePayload payloadDictionary];
      selfCopy = [(HMDStatusChannelRecord *)self initWithIdsIdentifier:v10 idsDestination:deviceTokenURI payload:payloadDictionary4 assertionTime:payloadDictionary3];
    }

    v19 = selfCopy;
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      payloadDictionary5 = [presencePayload payloadDictionary];
      v23 = 138543618;
      v24 = v17;
      v25 = 2112;
      v26 = payloadDictionary5;
      _os_log_impl(&dword_2540F2000, v16, OS_LOG_TYPE_ERROR, "%{public}@Attempt to create ChannelRecord with invalid payload: missing/bad deviceID %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (HMDStatusChannelRecord)initWithIdsIdentifier:(id)identifier idsDestination:(id)destination payload:(id)payload assertionTime:(id)time
{
  identifierCopy = identifier;
  destinationCopy = destination;
  payloadCopy = payload;
  timeCopy = time;
  v19.receiver = self;
  v19.super_class = HMDStatusChannelRecord;
  v15 = [(HMDStatusChannelRecord *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_idsIdentifier, identifier);
    objc_storeStrong(&v16->_idsDestination, destination);
    payload = v16->_payload;
    v16->_payload = MEMORY[0x277CBEC10];

    if (payloadCopy)
    {
      objc_storeStrong(&v16->_payload, payload);
    }

    objc_storeStrong(&v16->_assertionTime, time);
  }

  return v16;
}

@end