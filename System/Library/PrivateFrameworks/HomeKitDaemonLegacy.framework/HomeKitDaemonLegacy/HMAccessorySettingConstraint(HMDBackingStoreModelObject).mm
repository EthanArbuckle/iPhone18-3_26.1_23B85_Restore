@interface HMAccessorySettingConstraint(HMDBackingStoreModelObject)
- (HMDAccessorySettingConstraintModel)modelWithParentIdentifier:()HMDBackingStoreModelObject;
- (char)initWithModel:()HMDBackingStoreModelObject;
@end

@implementation HMAccessorySettingConstraint(HMDBackingStoreModelObject)

- (HMDAccessorySettingConstraintModel)modelWithParentIdentifier:()HMDBackingStoreModelObject
{
  v4 = a3;
  v5 = [HMDAccessorySettingConstraintModel alloc];
  v6 = [a1 identifier];
  v7 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:0 uuid:v6 parentUUID:v4];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "type")}];
  [(HMDAccessorySettingConstraintModel *)v7 setType:v8];

  v9 = [a1 value];
  v10 = encodeRootObject();
  [(HMDAccessorySettingConstraintModel *)v7 setValue:v10];

  return v7;
}

- (char)initWithModel:()HMDBackingStoreModelObject
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_19;
  }

  v6 = [v4 type];

  if (!v6)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = a1;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v33;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Model missing 'type'", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v30);
    v34 = [[HMDAssertionLogEvent alloc] initWithReason:@"Model missing 'type'"];
    v35 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v35 submitLogEvent:v34];
  }

  v7 = [v5 type];

  if (!v7)
  {
    v24 = objc_autoreleasePoolPush();
    a1 = a1;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v26;
      v27 = "%{public}@Model missing 'type'";
LABEL_17:
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, v27, buf, 0xCu);
    }

LABEL_18:

    objc_autoreleasePoolPop(v24);
LABEL_19:
    v23 = 0;
    goto LABEL_20;
  }

  v8 = [v5 type];
  v9 = [v8 integerValue];

  v10 = [v5 value];

  if (!v10)
  {
    v36 = objc_autoreleasePoolPush();
    v37 = a1;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v39;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Model missing 'value'", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v36);
    v40 = [[HMDAssertionLogEvent alloc] initWithReason:@"Model missing 'value'"];
    v41 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v41 submitLogEvent:v40];
  }

  v11 = [v5 value];

  if (!v11)
  {
    v24 = objc_autoreleasePoolPush();
    a1 = a1;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v26;
      v27 = "%{public}@Model missing 'value'";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v12 = MEMORY[0x277CCAAC8];
  v13 = [objc_opt_class() supportedValueClasses];
  v14 = [v5 value];
  v42 = 0;
  v15 = [v12 unarchivedObjectOfClasses:v13 fromData:v14 error:&v42];
  v16 = v42;

  if (!v15)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = a1;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v20;
      v45 = 2112;
      v46 = v16;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive accessory setting constraint model supported value from the model's value: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = [a1 initWithType:v9 value:v15];
  if (v21)
  {
    v22 = [v5 uuid];
    [v22 getUUIDBytes:&v21[*MEMORY[0x277CD1F70]]];
  }

  a1 = v21;

  v23 = a1;
LABEL_20:

  v28 = *MEMORY[0x277D85DE8];
  return v23;
}

@end