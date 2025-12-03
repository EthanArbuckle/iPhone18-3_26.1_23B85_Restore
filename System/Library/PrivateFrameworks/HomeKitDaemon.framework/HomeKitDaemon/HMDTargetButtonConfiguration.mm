@interface HMDTargetButtonConfiguration
- (BOOL)isEqual:(id)equal;
- (HMDTargetButtonConfiguration)init;
- (HMDTargetButtonConfiguration)initWithType:(int64_t)type identifier:(id)identifier name:(id)name;
- (id)buttonName;
- (id)description;
- (id)shortDescription;
@end

@implementation HMDTargetButtonConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      if (v7 && (v8 = [(HMDTargetButtonConfiguration *)self identifier], v8 == [(HMDTargetButtonConfiguration *)v7 identifier]))
      {
        type = [(HMDTargetButtonConfiguration *)self type];
        v10 = type == [(HMDTargetButtonConfiguration *)v7 type];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(HMDTargetButtonConfiguration *)self identifier];
  type = [(HMDTargetButtonConfiguration *)self type];
  if ((type - 1) > 0xC)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_278675260[type - 1];
  }

  v7 = identifier;
  v8 = v6;
  v9 = [v3 stringWithFormat:@"%lu/%@", v7, v8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(HMDTargetButtonConfiguration *)self identifier];
  type = [(HMDTargetButtonConfiguration *)self type];
  if ((type - 1) > 0xC)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_278675260[type - 1];
  }

  v7 = identifier;
  v8 = v6;
  buttonName = [(HMDTargetButtonConfiguration *)self buttonName];
  v10 = [v3 stringWithFormat:@"(%lu, %@, %@)", v7, v8, buttonName];

  return v10;
}

- (id)buttonName
{
  if (([(HMDTargetButtonConfiguration *)self type]- 1) > 0xC)
  {
    name = [(HMDTargetButtonConfiguration *)self name];
    v6 = name;
    v7 = @"Undefined";
    if (name)
    {
      v7 = name;
    }

    v8 = v7;
  }

  else
  {
    type = [(HMDTargetButtonConfiguration *)self type];
    if ((type - 1) > 0xC)
    {
      v4 = @"Unknown";
    }

    else
    {
      v4 = off_278675260[type - 1];
    }

    v8 = v4;
  }

  return v8;
}

- (HMDTargetButtonConfiguration)initWithType:(int64_t)type identifier:(id)identifier name:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = HMDTargetButtonConfiguration;
  v10 = [(HMDTargetButtonConfiguration *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v10->_identifier = [identifierCopy unsignedCharValue];
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;
  }

  return v11;
}

- (HMDTargetButtonConfiguration)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end