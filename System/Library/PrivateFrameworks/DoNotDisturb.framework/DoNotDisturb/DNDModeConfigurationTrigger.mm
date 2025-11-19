@interface DNDModeConfigurationTrigger
- (BOOL)isEqual:(id)a3;
- (DNDModeConfigurationTrigger)initWithCoder:(id)a3;
- (DNDModeConfigurationTrigger)initWithEnabledSetting:(unint64_t)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDModeConfigurationTrigger

- (DNDModeConfigurationTrigger)initWithEnabledSetting:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = DNDModeConfigurationTrigger;
  result = [(DNDModeConfigurationTrigger *)&v5 init];
  if (result)
  {
    result->_enabledSetting = a3;
  }

  return result;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_enabledSetting];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_compatibilityVersion];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DNDModeConfigurationTrigger *)self enabledSetting];
      v7 = [(DNDModeConfigurationTrigger *)v5 enabledSetting];
      v8 = [(DNDModeConfigurationTrigger *)self compatibilityVersion];
      v9 = [(DNDModeConfigurationTrigger *)v5 compatibilityVersion];

      v11 = v6 == v7 && v8 == v9;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DNDModeConfigurationTrigger *)self enabledSetting];
  v6 = DNDEnabledSettingToString([(DNDModeConfigurationTrigger *)self enabledSetting]);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DNDModeConfigurationTrigger compatibilityVersion](self, "compatibilityVersion")}];
  v8 = [v3 stringWithFormat:@"<%@: %p enabledSetting: %llu (%@); compatibilityVersion: %@>", v4, self, v5, v6, v7];;

  return v8;
}

- (DNDModeConfigurationTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  self->_enabledSetting = [v4 decodeIntegerForKey:@"enabledSetting"];
  v5 = [v4 decodeIntegerForKey:@"compatibilityVersion"];

  self->_compatibilityVersion = v5;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[DNDModeConfigurationTrigger enabledSetting](self forKey:{"enabledSetting"), @"enabledSetting"}];
  [v4 encodeInteger:-[DNDModeConfigurationTrigger compatibilityVersion](self forKey:{"compatibilityVersion"), @"compatibilityVersion"}];
}

@end