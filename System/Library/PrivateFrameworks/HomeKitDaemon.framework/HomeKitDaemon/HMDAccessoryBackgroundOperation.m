@interface HMDAccessoryBackgroundOperation
+ (id)logCategory;
+ (id)predicate;
- (HMDAccessoryBackgroundOperation)initWithAccessory:(id)a3 userData:(id)a4;
- (HMDAccessoryBackgroundOperation)initWithAccessoryUUID:(id)a3 accessoryIdentifier:(id)a4 homeUUIDWhereAccessoryWasPaired:(id)a5 userData:(id)a6;
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
  v2 = [(HMDBackgroundOperation *)self operationUUID];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)attributeDescriptions
{
  v18[3] = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = HMDAccessoryBackgroundOperation;
  v3 = [(HMDBackgroundOperation *)&v17 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  v6 = [v4 initWithName:@"accessoryUUID" value:v5];
  v18[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  v8 = [(HMDAccessoryBackgroundOperation *)self accessoryIdentifier];
  v9 = [v7 initWithName:@"accessoryIdentifier" value:v8];
  v18[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  v11 = [(HMDAccessoryBackgroundOperation *)self homeUUID];
  v12 = [v10 initWithName:@"homeUUID" value:v11];
  v18[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v14 = [v3 arrayByAddingObjectsFromArray:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (NSUUID)homeUUID
{
  v2 = [(HMDBackgroundOperation *)self userData];
  v3 = [v2 objectForKeyedSubscript:@"homeUUID"];

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
  v2 = [(HMDBackgroundOperation *)self userData];
  v3 = [v2 objectForKeyedSubscript:@"accessoryIdentifier"];

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
  v2 = [(HMDBackgroundOperation *)self userData];
  v3 = [v2 objectForKeyedSubscript:@"accessoryUUIDWhenPaired"];

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
  v4 = [(HMDAccessoryBackgroundOperation *)self accessoryIdentifier];
  v5 = [(HMDBackgroundOperation *)self userData];
  v6 = [v5 objectForKeyedSubscript:@"homeUUID"];

  v7 = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  v8 = objc_opt_class();
  v9 = [(HMDAccessoryBackgroundOperation *)self accessoryUUID];
  v10 = [(HMDBackgroundOperation *)self homeManager];
  v11 = [v8 findAccessoryUsing:v9 homeManager:v10];

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
    v31 = [v14 publicKey];
    if (!v31)
    {
LABEL_13:
      v21 = objc_autoreleasePoolPush();
      v22 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v49 = v6;
        v51 = v17;
        v25 = v24 = v4;
        [v18 shortDescription];
        v26 = v20;
        v27 = v14;
        v29 = v28 = v7;
        *buf = 138543618;
        v54 = v25;
        v55 = 2112;
        v56 = v29;
        _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@We will need a valid instance of HAP/AirPlay/Matter : [%@]", buf, 0x16u);

        v7 = v28;
        v14 = v27;
        v20 = v26;

        v4 = v24;
        v6 = v49;
        v17 = v51;
      }

      objc_autoreleasePoolPop(v21);
      v30 = 0;
      goto LABEL_31;
    }

    v2 = v31;
    if (!v20)
    {

      goto LABEL_24;
    }
  }

  else if (!v20)
  {
    goto LABEL_24;
  }

  v32 = [v20 publicKey];

  if (v14)
  {
  }

  if (!v32)
  {
    goto LABEL_13;
  }

LABEL_24:
  v48 = v20;
  v50 = v4;
  v52 = v17;
  v33 = v7;
  v34 = [v18 home];
  v35 = [v34 uuid];
  v36 = HMFEqualObjects();

  if (v36 && ([v18 uuid], v37 = objc_claimAutoreleasedReturnValue(), v38 = HMFEqualObjects(), v37, (v38 & 1) != 0))
  {
    v30 = 2;
  }

  else
  {
    v39 = objc_autoreleasePoolPush();
    v40 = self;
    v41 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = HMFGetLogIdentifier();
      [v34 uuid];
      v43 = v47 = v39;
      v44 = [v18 uuid];
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
      v64 = v44;
      _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Cannot execute accessory operation as the home or accessory UUIDs are different. Expected : [home: %@, accessory: %@], Got : [home: %@, accessory: %@]", buf, 0x3Eu);

      v39 = v47;
    }

    objc_autoreleasePoolPop(v39);
    v30 = 1;
  }

  v4 = v50;
  v7 = v33;

  v17 = v52;
  v20 = v48;
LABEL_31:

  v45 = *MEMORY[0x277D85DE8];
  return v30;
}

- (HMDAccessoryBackgroundOperation)initWithAccessoryUUID:(id)a3 accessoryIdentifier:(id)a4 homeUUIDWhereAccessoryWasPaired:(id)a5 userData:(id)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v13)
  {
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v10)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!v11)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  v14 = v13;
  v15 = [v13 objectForKeyedSubscript:@"accessoryIdentifier"];

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

  if (v12)
  {
    v18 = [v14 mutableCopy];
    [v18 setObject:v11 forKeyedSubscript:@"accessoryIdentifier"];
    [v18 setObject:v12 forKeyedSubscript:@"homeUUID"];
    [v18 setObject:v10 forKeyedSubscript:@"accessoryUUIDWhenPaired"];
    v19 = [v18 copy];
    v27.receiver = self;
    v27.super_class = HMDAccessoryBackgroundOperation;
    v20 = [(HMDBackgroundOperation *)&v27 initWithUserData:v19];

    v21 = v20;
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v20 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543874;
      v29 = v24;
      v30 = 2112;
      v31 = v10;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Accessory is not associated with a home, cannot create background operation for accessory: %@/%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    v21 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v21;
}

- (HMDAccessoryBackgroundOperation)initWithAccessory:(id)a3 userData:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = v7;
    v9 = [v6 uuid];
    v10 = [v6 identifier];
    v11 = [v6 home];
    v12 = [v11 uuid];
    v13 = [(HMDAccessoryBackgroundOperation *)self initWithAccessoryUUID:v9 accessoryIdentifier:v10 homeUUIDWhereAccessoryWasPaired:v12 userData:v8];

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