@interface HPSettingValue
- (BOOL)isEqual:(id)a3;
- (HPSettingValue)initWithCoder:(id)a3;
- (HPSettingValue)initWithKeyPath:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HPSettingValue

- (HPSettingValue)initWithKeyPath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HPSettingValue;
  v6 = [(HPSettingValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyPath, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HPSettingValue *)self keyPath];
      v7 = [(HPSettingValue *)v5 keyPath];

      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(HPSettingValue *)self keyPath];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HPSettingValue *)self keyPath];
  [v4 encodeObject:v5 forKey:@"setting.keypath"];
}

- (HPSettingValue)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HPSettingValue;
  v5 = [(HPSettingValue *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setting.keypath"];
    keyPath = v5->_keyPath;
    v5->_keyPath = v6;
  }

  return v5;
}

@end