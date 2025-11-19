@interface HMDDeviceAssociationInfoProto
- (BOOL)isEqual:(id)a3;
- (HMDDeviceAssociationInfoProto)initWithAccessoryUUID:(id)a3 idsIdentifier:(id)a4 idsDestination:(id)a5;
- (HMDDeviceAssociationInfoProto)initWithProtoData:(id)a3;
- (HMDDeviceAssociationInfoProto)initWithProtoPayload:(id)a3;
- (id)description;
- (id)protoData;
- (id)protoPayload;
- (unint64_t)hash;
@end

@implementation HMDDeviceAssociationInfoProto

- (id)protoData
{
  v2 = [(HMDDeviceAssociationInfoProto *)self protoPayload];
  v3 = [v2 data];

  return v3;
}

- (id)protoPayload
{
  v3 = objc_alloc_init(HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo);
  v4 = [(HMDDeviceAssociationInfoProto *)self accessoryUUID];
  v5 = [v4 UUIDString];
  [(HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo *)v3 setAccessoryUUID:v5];

  v6 = [(HMDDeviceAssociationInfoProto *)self idsIdentifier];
  v7 = [v6 UUIDString];
  [(HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo *)v3 setIdsIdentifier:v7];

  v8 = [(HMDDeviceAssociationInfoProto *)self idsDestination];
  [(HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo *)v3 setIdsDestination:v8];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(HMDDeviceAssociationInfoProto *)self accessoryUUID];
  v4 = [v3 hash];

  v5 = [(HMDDeviceAssociationInfoProto *)self idsIdentifier];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMDDeviceAssociationInfoProto *)self idsDestination];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
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
      v7 = [(HMDDeviceAssociationInfoProto *)self accessoryUUID];
      v8 = [(HMDDeviceAssociationInfoProto *)v6 accessoryUUID];
      if (HMFEqualObjects())
      {
        v9 = [(HMDDeviceAssociationInfoProto *)self idsIdentifier];
        v10 = [(HMDDeviceAssociationInfoProto *)v6 idsIdentifier];
        if (HMFEqualObjects())
        {
          v11 = [(HMDDeviceAssociationInfoProto *)self idsDestination];
          v12 = [(HMDDeviceAssociationInfoProto *)v6 idsDestination];
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
  v4 = [(HMDDeviceAssociationInfoProto *)self accessoryUUID];
  v5 = [(HMDDeviceAssociationInfoProto *)self idsIdentifier];
  v6 = [(HMDDeviceAssociationInfoProto *)self idsDestination];
  v7 = [v3 stringWithFormat:@"accessory uuid: %@ ids identifier: %@ ids destination: %@", v4, v5, v6];

  return v7;
}

- (HMDDeviceAssociationInfoProto)initWithProtoData:(id)a3
{
  v4 = a3;
  v5 = [[HMDAppleMediaDeviceAssociationInfoDeviceAssociationInfo alloc] initWithData:v4];

  v6 = [(HMDDeviceAssociationInfoProto *)self initWithProtoPayload:v5];
  return v6;
}

- (HMDDeviceAssociationInfoProto)initWithProtoPayload:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 accessoryUUID];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 idsIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = [v4 idsDestination];

      if (v9)
      {
        v10 = objc_alloc(MEMORY[0x277CCAD78]);
        v11 = [v4 accessoryUUID];
        v12 = [v10 initWithUUIDString:v11];
        v13 = objc_alloc(MEMORY[0x277CCAD78]);
        v14 = [v4 idsIdentifier];
        v15 = [v13 initWithUUIDString:v14];
        v16 = [v4 idsDestination];
        v17 = [(HMDDeviceAssociationInfoProto *)self initWithAccessoryUUID:v12 idsIdentifier:v15 idsDestination:v16];

        v18 = v17;
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  v19 = objc_autoreleasePoolPush();
  v17 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [v4 accessoryUUID];
    v23 = [v4 idsIdentifier];
    v24 = [v4 idsDestination];
    v27 = 138544130;
    v28 = v21;
    v29 = 2112;
    v30 = v22;
    v31 = 2112;
    v32 = v23;
    v33 = 2112;
    v34 = v24;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, "%{public}@Proto payload is missing some fields, accessoryUUID: %@ idsIdentifier: %@ idsDestination: %@", &v27, 0x2Au);
  }

  objc_autoreleasePoolPop(v19);
  v18 = 0;
LABEL_9:

  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

- (HMDDeviceAssociationInfoProto)initWithAccessoryUUID:(id)a3 idsIdentifier:(id)a4 idsDestination:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMDDeviceAssociationInfoProto;
  v12 = [(HMDDeviceAssociationInfoProto *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accessoryUUID, a3);
    objc_storeStrong(&v13->_idsIdentifier, a4);
    objc_storeStrong(&v13->_idsDestination, a5);
  }

  return v13;
}

@end