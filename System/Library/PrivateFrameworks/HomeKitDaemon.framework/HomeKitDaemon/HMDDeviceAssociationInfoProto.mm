@interface HMDDeviceAssociationInfoProto
- (BOOL)isEqual:(id)equal;
- (HMDDeviceAssociationInfoProto)initWithAccessoryUUID:(id)d idsIdentifier:(id)identifier idsDestination:(id)destination;
- (HMDDeviceAssociationInfoProto)initWithProtoData:(id)data;
- (HMDDeviceAssociationInfoProto)initWithProtoPayload:(id)payload;
- (id)description;
- (id)protoData;
- (id)protoPayload;
- (unint64_t)hash;
@end

@implementation HMDDeviceAssociationInfoProto

- (id)protoData
{
  protoPayload = [(HMDDeviceAssociationInfoProto *)self protoPayload];
  data = [protoPayload data];

  return data;
}

- (id)protoPayload
{
  v3 = objc_alloc_init(HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo);
  accessoryUUID = [(HMDDeviceAssociationInfoProto *)self accessoryUUID];
  uUIDString = [accessoryUUID UUIDString];
  [(HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo *)v3 setAccessoryUUID:uUIDString];

  idsIdentifier = [(HMDDeviceAssociationInfoProto *)self idsIdentifier];
  uUIDString2 = [idsIdentifier UUIDString];
  [(HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo *)v3 setIdsIdentifier:uUIDString2];

  idsDestination = [(HMDDeviceAssociationInfoProto *)self idsDestination];
  [(HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo *)v3 setIdsDestination:idsDestination];

  return v3;
}

- (unint64_t)hash
{
  accessoryUUID = [(HMDDeviceAssociationInfoProto *)self accessoryUUID];
  v4 = [accessoryUUID hash];

  idsIdentifier = [(HMDDeviceAssociationInfoProto *)self idsIdentifier];
  v6 = [idsIdentifier hash] ^ v4;

  idsDestination = [(HMDDeviceAssociationInfoProto *)self idsDestination];
  v8 = [idsDestination hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
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
      accessoryUUID = [(HMDDeviceAssociationInfoProto *)self accessoryUUID];
      accessoryUUID2 = [(HMDDeviceAssociationInfoProto *)v6 accessoryUUID];
      if (HMFEqualObjects())
      {
        idsIdentifier = [(HMDDeviceAssociationInfoProto *)self idsIdentifier];
        idsIdentifier2 = [(HMDDeviceAssociationInfoProto *)v6 idsIdentifier];
        if (HMFEqualObjects())
        {
          idsDestination = [(HMDDeviceAssociationInfoProto *)self idsDestination];
          idsDestination2 = [(HMDDeviceAssociationInfoProto *)v6 idsDestination];
          v13 = HMFEqualObjects();
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  accessoryUUID = [(HMDDeviceAssociationInfoProto *)self accessoryUUID];
  idsIdentifier = [(HMDDeviceAssociationInfoProto *)self idsIdentifier];
  idsDestination = [(HMDDeviceAssociationInfoProto *)self idsDestination];
  v7 = [v3 stringWithFormat:@"accessory uuid: %@ ids identifier: %@ ids destination: %@", accessoryUUID, idsIdentifier, idsDestination];

  return v7;
}

- (HMDDeviceAssociationInfoProto)initWithProtoData:(id)data
{
  dataCopy = data;
  v5 = [[HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo alloc] initWithData:dataCopy];

  v6 = [(HMDDeviceAssociationInfoProto *)self initWithProtoPayload:v5];
  return v6;
}

- (HMDDeviceAssociationInfoProto)initWithProtoPayload:(id)payload
{
  v35 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  accessoryUUID = [payloadCopy accessoryUUID];
  if (accessoryUUID)
  {
    v6 = accessoryUUID;
    idsIdentifier = [payloadCopy idsIdentifier];
    if (idsIdentifier)
    {
      v8 = idsIdentifier;
      idsDestination = [payloadCopy idsDestination];

      if (idsDestination)
      {
        v10 = objc_alloc(MEMORY[0x277CCAD78]);
        accessoryUUID2 = [payloadCopy accessoryUUID];
        v12 = [v10 initWithUUIDString:accessoryUUID2];
        v13 = objc_alloc(MEMORY[0x277CCAD78]);
        idsIdentifier2 = [payloadCopy idsIdentifier];
        v15 = [v13 initWithUUIDString:idsIdentifier2];
        idsDestination2 = [payloadCopy idsDestination];
        selfCopy = [(HMDDeviceAssociationInfoProto *)self initWithAccessoryUUID:v12 idsIdentifier:v15 idsDestination:idsDestination2];

        v18 = selfCopy;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v19 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    accessoryUUID3 = [payloadCopy accessoryUUID];
    idsIdentifier3 = [payloadCopy idsIdentifier];
    idsDestination3 = [payloadCopy idsDestination];
    v27 = 138544130;
    v28 = v21;
    v29 = 2112;
    v30 = accessoryUUID3;
    v31 = 2112;
    v32 = idsIdentifier3;
    v33 = 2112;
    v34 = idsDestination3;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Proto payload is missing some fields, accessoryUUID: %@ idsIdentifier: %@ idsDestination: %@", &v27, 0x2Au);
  }

  objc_autoreleasePoolPop(v19);
  v18 = 0;
LABEL_9:

  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

- (HMDDeviceAssociationInfoProto)initWithAccessoryUUID:(id)d idsIdentifier:(id)identifier idsDestination:(id)destination
{
  dCopy = d;
  identifierCopy = identifier;
  destinationCopy = destination;
  v15.receiver = self;
  v15.super_class = HMDDeviceAssociationInfoProto;
  v12 = [(HMDDeviceAssociationInfoProto *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accessoryUUID, d);
    objc_storeStrong(&v13->_idsIdentifier, identifier);
    objc_storeStrong(&v13->_idsDestination, destination);
  }

  return v13;
}

@end