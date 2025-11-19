@interface HPBooleanSettingValue
- (BOOL)isEqual:(id)a3;
- (HPBooleanSettingValue)initWithCoder:(id)a3;
- (HPBooleanSettingValue)initWithKeyPath:(id)a3 BOOLValue:(BOOL)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HPBooleanSettingValue

- (HPBooleanSettingValue)initWithKeyPath:(id)a3 BOOLValue:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = HPBooleanSettingValue;
  result = [(HPSettingValue *)&v6 initWithKeyPath:a3];
  if (result)
  {
    result->_BOOLeanValue = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HPBooleanSettingValue *)v4 BOOLeanValue];
      v6 = v5 ^ [(HPBooleanSettingValue *)self BOOLeanValue]^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:{-[HPBooleanSettingValue BOOLeanValue](self, "BOOLeanValue")}];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [v4 numberWithBool:{-[HPBooleanSettingValue BOOLeanValue](self, "BOOLeanValue")}];
  [v5 encodeObject:v6 forKey:@"setting.BOOLkey"];

  v7 = [(HPSettingValue *)self keyPath];
  [v5 encodeObject:v7 forKey:@"setting.keypath"];
}

- (HPBooleanSettingValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HPSettingValue *)self keyPath];
  v10.receiver = self;
  v10.super_class = HPBooleanSettingValue;
  v6 = [(HPSettingValue *)&v10 initWithKeyPath:v5];

  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setting.BOOLkey"];
    v6->_BOOLeanValue = [v7 BOOLValue];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setting.keypath"];
    [(HPSettingValue *)v6 setKeyPath:v8];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HPSettingValue *)self keyPath];
  v5 = [(HPBooleanSettingValue *)self BOOLeanValue];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"\n KeyPath %@ \n Boolean Value %@", v4, v6];

  return v7;
}

@end