@interface HPBooleanSettingValue
- (BOOL)isEqual:(id)equal;
- (HPBooleanSettingValue)initWithCoder:(id)coder;
- (HPBooleanSettingValue)initWithKeyPath:(id)path BOOLValue:(BOOL)value;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HPBooleanSettingValue

- (HPBooleanSettingValue)initWithKeyPath:(id)path BOOLValue:(BOOL)value
{
  v6.receiver = self;
  v6.super_class = HPBooleanSettingValue;
  result = [(HPSettingValue *)&v6 initWithKeyPath:path];
  if (result)
  {
    result->_BOOLeanValue = value;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLeanValue = [(HPBooleanSettingValue *)equalCopy BOOLeanValue];
      v6 = bOOLeanValue ^ [(HPBooleanSettingValue *)self BOOLeanValue]^ 1;
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

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  coderCopy = coder;
  v6 = [v4 numberWithBool:{-[HPBooleanSettingValue BOOLeanValue](self, "BOOLeanValue")}];
  [coderCopy encodeObject:v6 forKey:@"setting.BOOLkey"];

  keyPath = [(HPSettingValue *)self keyPath];
  [coderCopy encodeObject:keyPath forKey:@"setting.keypath"];
}

- (HPBooleanSettingValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  keyPath = [(HPSettingValue *)self keyPath];
  v10.receiver = self;
  v10.super_class = HPBooleanSettingValue;
  v6 = [(HPSettingValue *)&v10 initWithKeyPath:keyPath];

  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setting.BOOLkey"];
    v6->_BOOLeanValue = [v7 BOOLValue];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setting.keypath"];
    [(HPSettingValue *)v6 setKeyPath:v8];
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  keyPath = [(HPSettingValue *)self keyPath];
  bOOLeanValue = [(HPBooleanSettingValue *)self BOOLeanValue];
  v6 = @"NO";
  if (bOOLeanValue)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"\n KeyPath %@ \n Boolean Value %@", keyPath, v6];

  return v7;
}

@end