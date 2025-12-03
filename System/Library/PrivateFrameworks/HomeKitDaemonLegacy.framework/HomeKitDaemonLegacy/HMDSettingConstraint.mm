@interface HMDSettingConstraint
- (HMDSettingConstraint)initWithCoder:(id)coder;
- (HMDSettingConstraint)initWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier type:(id)type numberValue:(id)value dataValue:(id)dataValue;
- (NSString)name;
- (id)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDSettingConstraint

- (HMDSettingConstraint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)encodeWithCoder:(id)coder
{
  v15 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if ([coderCopy hmd_isForXPCTransport])
  {
    identifier = [(HMDSettingConstraint *)self identifier];
    [coderCopy encodeObject:identifier forKey:*MEMORY[0x277CD0F70]];

    type = [(HMDSettingConstraint *)self type];
    [coderCopy encodeObject:type forKey:*MEMORY[0x277CD0F78]];

    value = [(HMDSettingConstraint *)self value];
    [coderCopy encodeObject:value forKey:*MEMORY[0x277CD0F80]];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
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
  type = [(HMDSettingConstraint *)self type];
  [type integerValue];
  v4 = HMSettingConstraintTypeToString();

  type2 = [(HMDSettingConstraint *)self type];
  integerValue = [type2 integerValue];

  if (integerValue == 4)
  {
    v7 = MEMORY[0x277CCACA8];
    value = [(HMDSettingConstraint *)self value];
    v9 = [v7 stringWithFormat:@"%@.%@", v4, value];

    v4 = v9;
  }

  return v4;
}

- (id)value
{
  type = [(HMDSettingConstraint *)self type];
  integerValue = [type integerValue];

  if ((integerValue - 1) < 3)
  {
    numberValue = [(HMDSettingConstraint *)self numberValue];
LABEL_5:
    v6 = numberValue;
    v7 = [numberValue copy];

    goto LABEL_6;
  }

  if (integerValue == 4)
  {
    numberValue = [(HMDSettingConstraint *)self dataValue];
    goto LABEL_5;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (HMDSettingConstraint)initWithIdentifier:(id)identifier parentIdentifier:(id)parentIdentifier type:(id)type numberValue:(id)value dataValue:(id)dataValue
{
  identifierCopy = identifier;
  parentIdentifierCopy = parentIdentifier;
  typeCopy = type;
  valueCopy = value;
  dataValueCopy = dataValue;
  v29.receiver = self;
  v29.super_class = HMDSettingConstraint;
  v17 = [(HMDSettingConstraint *)&v29 init];
  if (v17)
  {
    v18 = [identifierCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    v20 = [parentIdentifierCopy copy];
    parentIdentifier = v17->_parentIdentifier;
    v17->_parentIdentifier = v20;

    v22 = [typeCopy copy];
    type = v17->_type;
    v17->_type = v22;

    v24 = [valueCopy copy];
    numberValue = v17->_numberValue;
    v17->_numberValue = v24;

    v26 = [dataValueCopy copy];
    dataValue = v17->_dataValue;
    v17->_dataValue = v26;
  }

  return v17;
}

@end