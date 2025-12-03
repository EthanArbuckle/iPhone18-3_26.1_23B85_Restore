@interface DNDModeConfigurationAppForegroundTrigger
- (BOOL)isEqual:(id)equal;
- (DNDModeConfigurationAppForegroundTrigger)initWithApplicationIdentifier:(id)identifier enabledSetting:(unint64_t)setting;
- (DNDModeConfigurationAppForegroundTrigger)initWithBundleIdentifier:(id)identifier enabledSetting:(unint64_t)setting;
- (DNDModeConfigurationAppForegroundTrigger)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDModeConfigurationAppForegroundTrigger

- (DNDModeConfigurationAppForegroundTrigger)initWithBundleIdentifier:(id)identifier enabledSetting:(unint64_t)setting
{
  identifierCopy = identifier;
  v7 = [[DNDApplicationIdentifier alloc] initWithBundleID:identifierCopy];

  v8 = [(DNDModeConfigurationAppForegroundTrigger *)self initWithApplicationIdentifier:v7 enabledSetting:setting];
  return v8;
}

- (DNDModeConfigurationAppForegroundTrigger)initWithApplicationIdentifier:(id)identifier enabledSetting:(unint64_t)setting
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = DNDModeConfigurationAppForegroundTrigger;
  v7 = [(DNDModeConfigurationTrigger *)&v11 initWithEnabledSetting:setting];
  if (v7)
  {
    v8 = [identifierCopy copy];
    applicationIdentifier = v7->_applicationIdentifier;
    v7->_applicationIdentifier = v8;
  }

  return v7;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = DNDModeConfigurationAppForegroundTrigger;
  v3 = [(DNDModeConfigurationTrigger *)&v5 hash];
  return [(DNDApplicationIdentifier *)self->_applicationIdentifier hash]^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v14.receiver = self;
      v14.super_class = DNDModeConfigurationAppForegroundTrigger;
      if ([(DNDModeConfigurationTrigger *)&v14 isEqual:v5])
      {
        applicationIdentifier = [(DNDModeConfigurationAppForegroundTrigger *)self applicationIdentifier];
        applicationIdentifier2 = [(DNDModeConfigurationAppForegroundTrigger *)v5 applicationIdentifier];
        if (applicationIdentifier == applicationIdentifier2)
        {
          v12 = 1;
        }

        else
        {
          applicationIdentifier3 = [(DNDModeConfigurationAppForegroundTrigger *)self applicationIdentifier];
          if (applicationIdentifier3)
          {
            applicationIdentifier4 = [(DNDModeConfigurationAppForegroundTrigger *)v5 applicationIdentifier];
            if (applicationIdentifier4)
            {
              applicationIdentifier5 = [(DNDModeConfigurationAppForegroundTrigger *)self applicationIdentifier];
              applicationIdentifier6 = [(DNDModeConfigurationAppForegroundTrigger *)v5 applicationIdentifier];
              v12 = [applicationIdentifier5 isEqual:applicationIdentifier6];
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  enabledSetting = [(DNDModeConfigurationTrigger *)self enabledSetting];
  applicationIdentifier = [(DNDModeConfigurationAppForegroundTrigger *)self applicationIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p enabledSetting: %llu; applicationIdentifier: %@>", v4, self, enabledSetting, applicationIdentifier];;

  return v7;
}

- (DNDModeConfigurationAppForegroundTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DNDModeConfigurationAppForegroundTrigger;
  v5 = [(DNDModeConfigurationTrigger *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DNDModeConfigurationAppForegroundTrigger;
  coderCopy = coder;
  [(DNDModeConfigurationTrigger *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DNDModeConfigurationAppForegroundTrigger *)self applicationIdentifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"applicationIdentifier"];
}

@end