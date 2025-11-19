@interface HMDSettingConstraint
- (HMDSettingConstraint)initWithCoder:(id)a3;
- (HMDSettingConstraint)initWithIdentifier:(id)a3 parentIdentifier:(id)a4 type:(id)a5 numberValue:(id)a6 dataValue:(id)a7;
- (NSString)name;
- (id)value;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDSettingConstraint

- (HMDSettingConstraint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)encodeWithCoder:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 hmd_isForXPCTransport])
  {
    v5 = [(HMDSettingConstraint *)self identifier];
    [v4 encodeObject:v5 forKey:*MEMORY[0x277CD0F70]];

    v6 = [(HMDSettingConstraint *)self type];
    [v4 encodeObject:v6 forKey:*MEMORY[0x277CD0F78]];

    v7 = [(HMDSettingConstraint *)self value];
    [v4 encodeObject:v7 forKey:*MEMORY[0x277CD0F80]];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Did not encode setting constraint as transport is not XPC.", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSString)name
{
  v3 = [(HMDSettingConstraint *)self type];
  [v3 integerValue];
  v4 = HMSettingConstraintTypeToString();

  v5 = [(HMDSettingConstraint *)self type];
  v6 = [v5 integerValue];

  if (v6 == 4)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [(HMDSettingConstraint *)self value];
    v9 = [v7 stringWithFormat:@"%@.%@", v4, v8];

    v4 = v9;
  }

  return v4;
}

- (id)value
{
  v3 = [(HMDSettingConstraint *)self type];
  v4 = [v3 integerValue];

  if ((v4 - 1) < 3)
  {
    v5 = [(HMDSettingConstraint *)self numberValue];
LABEL_5:
    v6 = v5;
    v7 = [v5 copy];

    goto LABEL_6;
  }

  if (v4 == 4)
  {
    v5 = [(HMDSettingConstraint *)self dataValue];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (HMDSettingConstraint)initWithIdentifier:(id)a3 parentIdentifier:(id)a4 type:(id)a5 numberValue:(id)a6 dataValue:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = HMDSettingConstraint;
  v17 = [(HMDSettingConstraint *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [v13 copy];
    parentIdentifier = v17->_parentIdentifier;
    v17->_parentIdentifier = v20;

    v22 = [v14 copy];
    type = v17->_type;
    v17->_type = v22;

    v24 = [v15 copy];
    numberValue = v17->_numberValue;
    v17->_numberValue = v24;

    v26 = [v16 copy];
    dataValue = v17->_dataValue;
    v17->_dataValue = v26;
  }

  return v17;
}

@end