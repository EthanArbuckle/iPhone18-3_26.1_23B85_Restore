@interface HPStringSettingValue
- (BOOL)isEqual:(id)a3;
- (HPStringSettingValue)initWithCoder:(id)a3;
- (HPStringSettingValue)initWithKeyPath:(id)a3 settingStringValue:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HPStringSettingValue

- (HPStringSettingValue)initWithKeyPath:(id)a3 settingStringValue:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HPStringSettingValue;
  v8 = [(HPSettingValue *)&v11 initWithKeyPath:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_stringValue, a4);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HPStringSettingValue *)v4 stringValue];
      v6 = [(HPStringSettingValue *)self stringValue];
      v7 = v5 == v6;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(HPStringSettingValue *)self stringValue];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HPStringSettingValue *)self stringValue];
  [v4 encodeObject:v5 forKey:@"setting.stringkey"];

  v6 = [(HPSettingValue *)self keyPath];
  [v4 encodeObject:v6 forKey:@"setting.keypath"];
}

- (HPStringSettingValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HPSettingValue *)self keyPath];
  v11.receiver = self;
  v11.super_class = HPStringSettingValue;
  v6 = [(HPSettingValue *)&v11 initWithKeyPath:v5];

  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setting.stringkey"];
    stringValue = v6->_stringValue;
    v6->_stringValue = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setting.keypath"];
    [(HPSettingValue *)v6 setKeyPath:v9];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HPSettingValue *)self keyPath];
  v5 = [(HPStringSettingValue *)self stringValue];
  v6 = [v3 stringWithFormat:@"\n KeyPath %@ \n StringValue %@", v4, v5];

  return v6;
}

@end