@interface HPIntegerSettingValue
- (BOOL)isEqual:(id)a3;
- (HPIntegerSettingValue)initWithCoder:(id)a3;
- (HPIntegerSettingValue)initWithKeyPath:(id)a3 numberValue:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HPIntegerSettingValue

- (HPIntegerSettingValue)initWithKeyPath:(id)a3 numberValue:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HPIntegerSettingValue;
  v8 = [(HPSettingValue *)&v11 initWithKeyPath:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_numberValue, a4);
  }

  return v9;
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
      v6 = [(HPIntegerSettingValue *)v5 integerValue];
      v7 = [(HPIntegerSettingValue *)self numberValue];
      if (v6 == [v7 integerValue])
      {
        v8 = 1;
      }

      else
      {
        [(HPIntegerSettingValue *)v5 floatValue];
        v10 = v9;
        v11 = [(HPIntegerSettingValue *)self numberValue];
        [v11 floatValue];
        if (v10 == v12)
        {
          v8 = 1;
        }

        else
        {
          [(HPIntegerSettingValue *)v5 doubleValue];
          v14 = v13;
          v15 = [(HPIntegerSettingValue *)self numberValue];
          [v15 doubleValue];
          v8 = v14 == v16;
        }
      }
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
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HPIntegerSettingValue integerValue](self, "integerValue")}];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HPIntegerSettingValue *)self numberValue];
  [v4 encodeObject:v5 forKey:@"setting.integerkey"];

  v6 = [(HPSettingValue *)self keyPath];
  [v4 encodeObject:v6 forKey:@"setting.keypath"];
}

- (HPIntegerSettingValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HPSettingValue *)self keyPath];
  v12.receiver = self;
  v12.super_class = HPIntegerSettingValue;
  v6 = [(HPSettingValue *)&v12 initWithKeyPath:v5];

  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setting.integerkey"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setting.keypath"];
    [(HPSettingValue *)v6 setKeyPath:v8];

    v6->_integerValue = [v7 integerValue];
    [v7 floatValue];
    v6->_floatValue = v9;
    [v7 doubleValue];
    v6->_doubleValue = v10;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HPSettingValue *)self keyPath];
  v5 = [(HPIntegerSettingValue *)self integerValue];
  [(HPIntegerSettingValue *)self floatValue];
  v7 = v6;
  [(HPIntegerSettingValue *)self doubleValue];
  v9 = [v3 stringWithFormat:@"\n KeyPath %@ \n IntegerValue %ld Float Value %f Double Value %f", v4, v5, *&v7, v8];

  return v9;
}

@end