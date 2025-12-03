@interface HPSBooleanSetting
- (BOOL)BOOLeanValue;
- (id)description;
- (id)homeAdapterLegacySettingValue;
@end

@implementation HPSBooleanSetting

- (BOOL)BOOLeanValue
{
  value = [(HPSSetting *)self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [value BOOLValue];
  }

  else
  {
    bOOLValue = value != 0;
  }

  return bOOLValue;
}

- (id)homeAdapterLegacySettingValue
{
  v2 = MEMORY[0x277CCABB0];
  bOOLeanValue = [(HPSBooleanSetting *)self BOOLeanValue];

  return [v2 numberWithBool:bOOLeanValue];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  keyPath = [(HPSSetting *)self keyPath];
  if ([(HPSBooleanSetting *)self BOOLeanValue])
  {
    v7 = @"true";
  }

  else
  {
    v7 = @"false";
  }

  lastModifiedDescription = [(HPSSetting *)self lastModifiedDescription];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@ = %@%@>", v5, self, keyPath, v7, lastModifiedDescription];

  return v9;
}

@end