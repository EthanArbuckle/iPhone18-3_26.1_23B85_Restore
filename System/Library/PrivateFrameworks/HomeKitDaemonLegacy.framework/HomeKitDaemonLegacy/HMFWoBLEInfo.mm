@interface HMFWoBLEInfo
- (BOOL)isEqual:(id)a3;
- (HMFWoBLEInfo)initWithBLEIdentifier:(id)a3;
- (HMFWoBLEInfo)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMFWoBLEInfo

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMFWoBLEInfo *)self bleIdentifier];
  v4 = [v2 stringWithFormat:@"<BTLE Identifier: %@>", v3];

  return v4;
}

- (HMFWoBLEInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMFCI.woBLE.ID"];

  v6 = [(HMFWoBLEInfo *)self initWithBLEIdentifier:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMFWoBLEInfo *)self bleIdentifier];
  [v4 encodeObject:v5 forKey:@"HMFCI.woBLE.ID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
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
      v7 = [(HMFWoBLEInfo *)self bleIdentifier];
      v8 = [(HMFWoBLEInfo *)v6 bleIdentifier];
      v9 = HMFEqualObjects();
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v2 = [(HMFWoBLEInfo *)self bleIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (HMFWoBLEInfo)initWithBLEIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMFWoBLEInfo;
  v6 = [(HMFWoBLEInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bleIdentifier, a3);
  }

  return v7;
}

@end