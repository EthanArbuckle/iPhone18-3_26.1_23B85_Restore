@interface HPIntegerSettingValue
- (BOOL)isEqual:(id)equal;
- (HPIntegerSettingValue)initWithCoder:(id)coder;
- (HPIntegerSettingValue)initWithKeyPath:(id)path numberValue:(id)value;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HPIntegerSettingValue

- (HPIntegerSettingValue)initWithKeyPath:(id)path numberValue:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = HPIntegerSettingValue;
  v8 = [(HPSettingValue *)&v11 initWithKeyPath:path];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_numberValue, value);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      integerValue = [(HPIntegerSettingValue *)v5 integerValue];
      numberValue = [(HPIntegerSettingValue *)self numberValue];
      if (integerValue == [numberValue integerValue])
      {
        v8 = 1;
      }

      else
      {
        [(HPIntegerSettingValue *)v5 floatValue];
        v10 = v9;
        numberValue2 = [(HPIntegerSettingValue *)self numberValue];
        [numberValue2 floatValue];
        if (v10 == v12)
        {
          v8 = 1;
        }

        else
        {
          [(HPIntegerSettingValue *)v5 doubleValue];
          v14 = v13;
          numberValue3 = [(HPIntegerSettingValue *)self numberValue];
          [numberValue3 doubleValue];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  numberValue = [(HPIntegerSettingValue *)self numberValue];
  [coderCopy encodeObject:numberValue forKey:@"setting.integerkey"];

  keyPath = [(HPSettingValue *)self keyPath];
  [coderCopy encodeObject:keyPath forKey:@"setting.keypath"];
}

- (HPIntegerSettingValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  keyPath = [(HPSettingValue *)self keyPath];
  v12.receiver = self;
  v12.super_class = HPIntegerSettingValue;
  v6 = [(HPSettingValue *)&v12 initWithKeyPath:keyPath];

  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setting.integerkey"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setting.keypath"];
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
  keyPath = [(HPSettingValue *)self keyPath];
  integerValue = [(HPIntegerSettingValue *)self integerValue];
  [(HPIntegerSettingValue *)self floatValue];
  v7 = v6;
  [(HPIntegerSettingValue *)self doubleValue];
  v9 = [v3 stringWithFormat:@"\n KeyPath %@ \n IntegerValue %ld Float Value %f Double Value %f", keyPath, integerValue, *&v7, v8];

  return v9;
}

@end