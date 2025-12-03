@interface HPStringSettingValue
- (BOOL)isEqual:(id)equal;
- (HPStringSettingValue)initWithCoder:(id)coder;
- (HPStringSettingValue)initWithKeyPath:(id)path settingStringValue:(id)value;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HPStringSettingValue

- (HPStringSettingValue)initWithKeyPath:(id)path settingStringValue:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = HPStringSettingValue;
  v8 = [(HPSettingValue *)&v11 initWithKeyPath:path];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_stringValue, value);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = [(HPStringSettingValue *)equalCopy stringValue];
      stringValue2 = [(HPStringSettingValue *)self stringValue];
      v7 = stringValue == stringValue2;
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
  stringValue = [(HPStringSettingValue *)self stringValue];
  v3 = [stringValue hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stringValue = [(HPStringSettingValue *)self stringValue];
  [coderCopy encodeObject:stringValue forKey:@"setting.stringkey"];

  keyPath = [(HPSettingValue *)self keyPath];
  [coderCopy encodeObject:keyPath forKey:@"setting.keypath"];
}

- (HPStringSettingValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  keyPath = [(HPSettingValue *)self keyPath];
  v11.receiver = self;
  v11.super_class = HPStringSettingValue;
  v6 = [(HPSettingValue *)&v11 initWithKeyPath:keyPath];

  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setting.stringkey"];
    stringValue = v6->_stringValue;
    v6->_stringValue = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setting.keypath"];
    [(HPSettingValue *)v6 setKeyPath:v9];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  keyPath = [(HPSettingValue *)self keyPath];
  stringValue = [(HPStringSettingValue *)self stringValue];
  v6 = [v3 stringWithFormat:@"\n KeyPath %@ \n StringValue %@", keyPath, stringValue];

  return v6;
}

@end