@interface DNDModeConfigurationTrigger
- (BOOL)isEqual:(id)equal;
- (DNDModeConfigurationTrigger)initWithCoder:(id)coder;
- (DNDModeConfigurationTrigger)initWithEnabledSetting:(unint64_t)setting;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDModeConfigurationTrigger

- (DNDModeConfigurationTrigger)initWithEnabledSetting:(unint64_t)setting
{
  v5.receiver = self;
  v5.super_class = DNDModeConfigurationTrigger;
  result = [(DNDModeConfigurationTrigger *)&v5 init];
  if (result)
  {
    result->_enabledSetting = setting;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      enabledSetting = [(DNDModeConfigurationTrigger *)self enabledSetting];
      enabledSetting2 = [(DNDModeConfigurationTrigger *)v5 enabledSetting];
      compatibilityVersion = [(DNDModeConfigurationTrigger *)self compatibilityVersion];
      compatibilityVersion2 = [(DNDModeConfigurationTrigger *)v5 compatibilityVersion];

      v11 = enabledSetting == enabledSetting2 && compatibilityVersion == compatibilityVersion2;
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
  enabledSetting = [(DNDModeConfigurationTrigger *)self enabledSetting];
  v6 = DNDEnabledSettingToString([(DNDModeConfigurationTrigger *)self enabledSetting]);
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[DNDModeConfigurationTrigger compatibilityVersion](self, "compatibilityVersion")}];
  v8 = [v3 stringWithFormat:@"<%@: %p enabledSetting: %llu (%@); compatibilityVersion: %@>", v4, self, enabledSetting, v6, v7];;

  return v8;
}

- (DNDModeConfigurationTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_enabledSetting = [coderCopy decodeIntegerForKey:@"enabledSetting"];
  v5 = [coderCopy decodeIntegerForKey:@"compatibilityVersion"];

  self->_compatibilityVersion = v5;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[DNDModeConfigurationTrigger enabledSetting](self forKey:{"enabledSetting"), @"enabledSetting"}];
  [coderCopy encodeInteger:-[DNDModeConfigurationTrigger compatibilityVersion](self forKey:{"compatibilityVersion"), @"compatibilityVersion"}];
}

@end