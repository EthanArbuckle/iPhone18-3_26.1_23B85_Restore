@interface HMFWoBLEInfo
- (BOOL)isEqual:(id)equal;
- (HMFWoBLEInfo)initWithBLEIdentifier:(id)identifier;
- (HMFWoBLEInfo)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMFWoBLEInfo

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  bleIdentifier = [(HMFWoBLEInfo *)self bleIdentifier];
  v4 = [v2 stringWithFormat:@"<BTLE Identifier: %@>", bleIdentifier];

  return v4;
}

- (HMFWoBLEInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMFCI.woBLE.ID"];

  v6 = [(HMFWoBLEInfo *)self initWithBLEIdentifier:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bleIdentifier = [(HMFWoBLEInfo *)self bleIdentifier];
  [coderCopy encodeObject:bleIdentifier forKey:@"HMFCI.woBLE.ID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
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
      bleIdentifier = [(HMFWoBLEInfo *)self bleIdentifier];
      bleIdentifier2 = [(HMFWoBLEInfo *)v6 bleIdentifier];
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
  bleIdentifier = [(HMFWoBLEInfo *)self bleIdentifier];
  v3 = [bleIdentifier hash];

  return v3;
}

- (HMFWoBLEInfo)initWithBLEIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HMFWoBLEInfo;
  v6 = [(HMFWoBLEInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bleIdentifier, identifier);
  }

  return v7;
}

@end