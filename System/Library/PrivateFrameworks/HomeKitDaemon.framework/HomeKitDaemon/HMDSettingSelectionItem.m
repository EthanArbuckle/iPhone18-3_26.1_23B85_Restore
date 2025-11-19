@interface HMDSettingSelectionItem
- (BOOL)isEqual:(id)a3;
- (HMDSettingSelectionItem)initWithCoder:(id)a3;
- (HMDSettingSelectionItem)initWithTitle:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDSettingSelectionItem

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDSettingSelectionItem *)self identifier];
  [v4 encodeObject:v5 forKey:@"HM.identifier"];

  v6 = [(HMDSettingSelectionItem *)self title];
  [v4 encodeObject:v6 forKey:@"HM.title"];
}

- (HMDSettingSelectionItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.title"];
  v6 = [(HMDSettingSelectionItem *)self initWithTitle:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v7;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDSettingSelectionItem *)self title];
  v5 = [(HMDSettingSelectionItem *)self identifier];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@ (%@)", v4, v6];

  return v7;
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
      v7 = [(HMDSettingSelectionItem *)self title];
      v8 = [(HMDSettingSelectionItem *)v6 title];
      v9 = [v7 isEqual:v8];
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
  v2 = [(HMDSettingSelectionItem *)self title];
  v3 = [v2 hash];

  return v3;
}

- (HMDSettingSelectionItem)initWithTitle:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v12.receiver = self;
    v12.super_class = HMDSettingSelectionItem;
    v5 = [(HMDSettingSelectionItem *)&v12 init];
    if (v5)
    {
      v6 = [MEMORY[0x277CCAD78] UUID];
      identifier = v5->_identifier;
      v5->_identifier = v6;

      v8 = [v4 copy];
      title = v5->_title;
      v5->_title = v8;
    }

    self = v5;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end