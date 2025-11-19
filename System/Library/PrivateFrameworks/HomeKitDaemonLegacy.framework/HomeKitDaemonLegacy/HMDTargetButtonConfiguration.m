@interface HMDTargetButtonConfiguration
- (BOOL)isEqual:(id)a3;
- (HMDTargetButtonConfiguration)init;
- (HMDTargetButtonConfiguration)initWithType:(int64_t)a3 identifier:(id)a4 name:(id)a5;
- (id)buttonName;
- (id)description;
- (id)shortDescription;
@end

@implementation HMDTargetButtonConfiguration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
        v9 = [(HMDTargetButtonConfiguration *)self type];
        v10 = v9 == [(HMDTargetButtonConfiguration *)v7 type];
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
  v4 = [(HMDTargetButtonConfiguration *)self identifier];
  v5 = [(HMDTargetButtonConfiguration *)self type];
  if ((v5 - 1) > 0xC)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_279725FC0[v5 - 1];
  }

  v7 = v4;
  v8 = v6;
  v9 = [v3 stringWithFormat:@"%lu/%@", v7, v8];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDTargetButtonConfiguration *)self identifier];
  v5 = [(HMDTargetButtonConfiguration *)self type];
  if ((v5 - 1) > 0xC)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_279725FC0[v5 - 1];
  }

  v7 = v4;
  v8 = v6;
  v9 = [(HMDTargetButtonConfiguration *)self buttonName];
  v10 = [v3 stringWithFormat:@"(%lu, %@, %@)", v7, v8, v9];

  return v10;
}

- (id)buttonName
{
  if (([(HMDTargetButtonConfiguration *)self type]- 1) > 0xC)
  {
    v5 = [(HMDTargetButtonConfiguration *)self name];
    v6 = v5;
    v7 = @"Undefined";
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;
  }

  else
  {
    v3 = [(HMDTargetButtonConfiguration *)self type];
    if ((v3 - 1) > 0xC)
    {
      v4 = @"Unknown";
    }

    else
    {
      v4 = off_279725FC0[v3 - 1];
    }

    v8 = v4;
  }

  return v8;
}

- (HMDTargetButtonConfiguration)initWithType:(int64_t)a3 identifier:(id)a4 name:(id)a5
{
  v8 = a4;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = HMDTargetButtonConfiguration;
  v10 = [(HMDTargetButtonConfiguration *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v10->_identifier = [v8 unsignedCharValue];
    v12 = [v9 copy];
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