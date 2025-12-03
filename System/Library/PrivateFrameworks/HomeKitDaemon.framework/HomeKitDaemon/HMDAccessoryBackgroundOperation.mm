@interface HMDAccessoryBackgroundOperation
+ (id)logCategory;
+ (id)predicate;
- (HMDAccessoryBackgroundOperation)initWithAccessory:(id)accessory userData:(id)data;
- (HMDAccessoryBackgroundOperation)initWithAccessoryUUID:(id)d accessoryIdentifier:(id)identifier homeUUIDWhereAccessoryWasPaired:(id)paired userData:(id)data;
- (NSString)accessoryIdentifier;
- (NSUUID)accessoryUUID;
- (NSUUID)homeUUID;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (unint64_t)accessoryOperationStatus;
@end

@implementation HMDAccessoryBackgroundOperation

- (id)logIdentifier
{
  operationUUID = [(HMDBackgroundOperation *)self operationUUID];
  uUIDString = [operationUUID UUIDString];

  return uUIDString;
}

- (id)attributeDescriptions
{
  v18[3] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HMDAccessoryBackgroundOperation;
  attributeDescriptions = [(HMDBackgroundOperation *)&v17 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  accessoryUUID = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  v6 = [v4 initWithName:@"accessoryUUID" value:accessoryUUID];
  v18[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  accessoryIdentifier = [(HMDAccessoryBackgroundOperation *)self accessoryIdentifier];
  v9 = [v7 initWithName:@"accessoryIdentifier" value:accessoryIdentifier];
  v18[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  homeUUID = [(HMDAccessoryBackgroundOperation *)self homeUUID];
  v12 = [v10 initWithName:@"homeUUID" value:homeUUID];
  v18[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v14 = [attributeDescriptions arrayByAddingObjectsFromArray:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (NSUUID)homeUUID
{
  userData = [(HMDBackgroundOperation *)self userData];
  v3 = [userData objectForKeyedSubscript:@"homeUUID"];

  if (v3)
  {

    return v3;
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    return [(HMDAccessoryBackgroundOperation *)v5 accessoryIdentifier];
  }
}

- (NSString)accessoryIdentifier
{
  userData = [(HMDBackgroundOperation *)self userData];
  v3 = [userData objectForKeyedSubscript:@"accessoryIdentifier"];

  if (v3)
  {

    return v3;
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    return [(HMDAccessoryBackgroundOperation *)v5 accessoryUUID];
  }
}

- (NSUUID)accessoryUUID
{
  userData = [(HMDBackgroundOperation *)self userData];
  v3 = [userData objectForKeyedSubscript:@"accessoryUUIDWhenPaired"];

  if (v3)
  {

    return v3;
  }

  else
  {
    v5 = _HMFPreconditionFailure();
    return [(HMDAccessoryBackgroundOperation *)v5 isAccessoryOperation];
  }
}

- (unint64_t)accessoryOperationStatus
{
  v65 = *MEMORY[0x277D85DE8];
  accessoryIdentifier = [(HMDAccessoryBackgroundOperation *)self accessoryIdentifier];
  userData = [(HMDBackgroundOperation *)self userData];
  v6 = [userData objectForKeyedSubscript:@"homeUUID"];

  accessoryUUID = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  v8 = objc_opt_class();
  accessoryUUID2 = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  homeManager = [(HMDBackgroundOperation *)self homeManager];
  v11 = [v8 findAccessoryUsing:accessoryUUID2 homeManager:homeManager];

  v12 = v11;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  v18 = v15;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (!v20 && !v14 && !v17)
  {
    goto LABEL_13;
  }

  if (v14)
  {
    publicKey = [v14 publicKey];
    if (!publicKey)
    {
LABEL_13:
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v49 = v6;
        v51 = v17;
        v25 = v24 = accessoryIdentifier;
        [v18 shortDescription];
        v26 = v20;
        v27 = v14;
        v29 = v28 = accessoryUUID;
        *buf = 138543618;
        v54 = v25;
        v55 = 2112;
        v56 = v29;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@We will need a valid instance of HAP/AirPlay/Matter : [%@]", buf, 0x16u);

        accessoryUUID = v28;
        v14 = v27;
        v20 = v26;

        accessoryIdentifier = v24;
        v6 = v49;
        v17 = v51;
      }

      objc_autoreleasePoolPop(v21);
      v30 = 0;
      goto LABEL_31;
    }

    v2 = publicKey;
    if (!v20)
    {

      goto LABEL_24;
    }
  }

  else if (!v20)
  {
    goto LABEL_24;
  }

  publicKey2 = [v20 publicKey];

  if (v14)
  {
  }

  if (!publicKey2)
  {
    goto LABEL_13;
  }

LABEL_24:
  v48 = v20;
  v50 = accessoryIdentifier;
  v52 = v17;
  v33 = accessoryUUID;
  home = [v18 home];
  uuid = [home uuid];
  v36 = HMFEqualObjects();

  if (v36 && ([v18 uuid], v37 = objc_claimAutoreleasedReturnValue(), v38 = HMFEqualObjects(), v37, (v38 & 1) != 0))
  {
    v30 = 2;
  }

  else
  {
    v39 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = HMFGetLogIdentifier();
      [home uuid];
      v43 = v47 = v39;
      uuid2 = [v18 uuid];
      *buf = 138544642;
      v54 = v42;
      v55 = 2112;
      v56 = v50;
      v57 = 2112;
      v58 = v6;
      v59 = 2112;
      v60 = v33;
      v61 = 2112;
      v62 = v43;
      v63 = 2112;
      v64 = uuid2;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Cannot execute accessory operation as the home or accessory UUIDs are different. Expected : [home: %@, accessory: %@], Got : [home: %@, accessory: %@]", buf, 0x3Eu);

      v39 = v47;
    }

    objc_autoreleasePoolPop(v39);
    v30 = 1;
  }

  accessoryIdentifier = v50;
  accessoryUUID = v33;

  v17 = v52;
  v20 = v48;
LABEL_31:

  v45 = *MEMORY[0x277D85DE8];
  return v30;
}

- (HMDAccessoryBackgroundOperation)initWithAccessoryUUID:(id)d accessoryIdentifier:(id)identifier homeUUIDWhereAccessoryWasPaired:(id)paired userData:(id)data
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  pairedCopy = paired;
  dataCopy = data;
  if (!dataCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!dCopy)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!identifierCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  v14 = dataCopy;
  v15 = [dataCopy objectForKeyedSubscript:@"accessoryIdentifier"];

  if (v15)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  v16 = [v14 objectForKeyedSubscript:@"homeUUID"];

  if (v16)
  {
LABEL_17:
    _HMFPreconditionFailure();
LABEL_18:
    _HMFPreconditionFailure();
  }

  v17 = [v14 objectForKeyedSubscript:@"accessoryUUIDWhenPaired"];

  if (v17)
  {
    goto LABEL_18;
  }

  if (pairedCopy)
  {
    v18 = [v14 mutableCopy];
    [v18 setObject:identifierCopy forKeyedSubscript:@"accessoryIdentifier"];
    [v18 setObject:pairedCopy forKeyedSubscript:@"homeUUID"];
    [v18 setObject:dCopy forKeyedSubscript:@"accessoryUUIDWhenPaired"];
    v19 = [v18 copy];
    v27.receiver = self;
    v27.super_class = HMDAccessoryBackgroundOperation;
    selfCopy = [(HMDBackgroundOperation *)&v27 initWithUserData:v19];

    v21 = selfCopy;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543874;
      v29 = v24;
      v30 = 2112;
      v31 = dCopy;
      v32 = 2112;
      v33 = identifierCopy;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Accessory is not associated with a home, cannot create background operation for accessory: %@/%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    v21 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

- (HMDAccessoryBackgroundOperation)initWithAccessory:(id)accessory userData:(id)data
{
  accessoryCopy = accessory;
  dataCopy = data;
  if (accessoryCopy)
  {
    v8 = dataCopy;
    uuid = [accessoryCopy uuid];
    identifier = [accessoryCopy identifier];
    home = [accessoryCopy home];
    uuid2 = [home uuid];
    v13 = [(HMDAccessoryBackgroundOperation *)self initWithAccessoryUUID:uuid accessoryIdentifier:identifier homeUUIDWhereAccessoryWasPaired:uuid2 userData:v8];

    return v13;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    return +[(HMDAccessoryBackgroundOperation *)v15];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_249047 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_249047, &__block_literal_global_249048);
  }

  v3 = logCategory__hmf_once_v7_249049;

  return v3;
}

void __46__HMDAccessoryBackgroundOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v7_249049;
  logCategory__hmf_once_v7_249049 = v1;
}

+ (id)predicate
{
  v2 = MEMORY[0x277CCAC30];
  v3 = +[HMDBackgroundOperationAccessoryManagerDataSource name];
  v4 = [v2 predicateWithFormat:@"%K.%K contains %K.%K", v3, @"visibleAccessories", @"userData", @"accessoryUUIDWhenPaired"];

  return v4;
}

@end