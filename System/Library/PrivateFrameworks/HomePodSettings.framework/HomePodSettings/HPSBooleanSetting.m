@interface HPSBooleanSetting
- (BOOL)BOOLeanValue;
- (id)description;
- (id)homeAdapterLegacySettingValue;
@end

@implementation HPSBooleanSetting

- (BOOL)BOOLeanValue
{
  v2 = [(HPSSetting *)self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = v2 != 0;
  }

  return v3;
}

- (id)homeAdapterLegacySettingValue
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(HPSBooleanSetting *)self BOOLeanValue];

  return [v2 numberWithBool:v3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HPSSetting *)self keyPath];
  if ([(HPSBooleanSetting *)self BOOLeanValue])
  {
    v7 = @"true";
  }

  else
  {
    v7 = @"false";
  }

  v8 = [(HPSSetting *)self lastModifiedDescription];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@ = %@%@>", v5, self, v6, v7, v8];

  return v9;
}

@end