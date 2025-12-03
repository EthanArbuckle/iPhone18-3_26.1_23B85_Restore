@interface DNDBypassSettings
- (BOOL)isEqual:(id)equal;
- (DNDBypassSettings)initWithCoder:(id)coder;
- (id)_initWithImmediateBypassEventSourceType:(unint64_t)type immediateBypassCNGroupIdentifier:(id)identifier repeatEventSourceBehaviorEnabledSetting:(unint64_t)setting;
- (id)_initWithSettings:(id)settings;
- (id)description;
- (id)diffDescription;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDBypassSettings

- (id)_initWithSettings:(id)settings
{
  settingsCopy = settings;
  immediateBypassEventSourceType = [settingsCopy immediateBypassEventSourceType];
  immediateBypassCNGroupIdentifier = [settingsCopy immediateBypassCNGroupIdentifier];
  repeatEventSourceBehaviorEnabledSetting = [settingsCopy repeatEventSourceBehaviorEnabledSetting];

  v8 = [(DNDBypassSettings *)self _initWithImmediateBypassEventSourceType:immediateBypassEventSourceType immediateBypassCNGroupIdentifier:immediateBypassCNGroupIdentifier repeatEventSourceBehaviorEnabledSetting:repeatEventSourceBehaviorEnabledSetting];
  return v8;
}

- (id)_initWithImmediateBypassEventSourceType:(unint64_t)type immediateBypassCNGroupIdentifier:(id)identifier repeatEventSourceBehaviorEnabledSetting:(unint64_t)setting
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = DNDBypassSettings;
  v9 = [(DNDBypassSettings *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_immediateBypassEventSourceType = type;
    v11 = [identifierCopy copy];
    immediateBypassCNGroupIdentifier = v10->_immediateBypassCNGroupIdentifier;
    v10->_immediateBypassCNGroupIdentifier = v11;

    v10->_repeatEventSourceBehaviorEnabledSetting = setting;
  }

  return v10;
}

- (unint64_t)hash
{
  immediateBypassEventSourceType = [(DNDBypassSettings *)self immediateBypassEventSourceType];
  immediateBypassCNGroupIdentifier = [(DNDBypassSettings *)self immediateBypassCNGroupIdentifier];
  v5 = [immediateBypassCNGroupIdentifier hash];
  v6 = immediateBypassEventSourceType ^ [(DNDBypassSettings *)self repeatEventSourceBehaviorEnabledSetting];

  return v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = equalCopy;
      immediateBypassEventSourceType = [(DNDBypassSettings *)self immediateBypassEventSourceType];
      if (immediateBypassEventSourceType != [(DNDBypassSettings *)v9 immediateBypassEventSourceType])
      {
        v15 = 0;
LABEL_18:

        goto LABEL_19;
      }

      immediateBypassCNGroupIdentifier = [(DNDBypassSettings *)self immediateBypassCNGroupIdentifier];
      immediateBypassCNGroupIdentifier2 = [(DNDBypassSettings *)v9 immediateBypassCNGroupIdentifier];
      if (immediateBypassCNGroupIdentifier != immediateBypassCNGroupIdentifier2)
      {
        immediateBypassCNGroupIdentifier3 = [(DNDBypassSettings *)self immediateBypassCNGroupIdentifier];
        if (!immediateBypassCNGroupIdentifier3)
        {
          v15 = 0;
          goto LABEL_17;
        }

        v3 = immediateBypassCNGroupIdentifier3;
        immediateBypassCNGroupIdentifier4 = [(DNDBypassSettings *)v9 immediateBypassCNGroupIdentifier];
        if (!immediateBypassCNGroupIdentifier4)
        {
          v15 = 0;
          goto LABEL_16;
        }

        v4 = immediateBypassCNGroupIdentifier4;
        immediateBypassCNGroupIdentifier5 = [(DNDBypassSettings *)self immediateBypassCNGroupIdentifier];
        immediateBypassCNGroupIdentifier6 = [(DNDBypassSettings *)v9 immediateBypassCNGroupIdentifier];
        if (![immediateBypassCNGroupIdentifier5 isEqual:immediateBypassCNGroupIdentifier6])
        {
          v15 = 0;
LABEL_13:

LABEL_16:
          goto LABEL_17;
        }
      }

      repeatEventSourceBehaviorEnabledSetting = [(DNDBypassSettings *)self repeatEventSourceBehaviorEnabledSetting];
      v15 = repeatEventSourceBehaviorEnabledSetting == [(DNDBypassSettings *)v9 repeatEventSourceBehaviorEnabledSetting];
      if (immediateBypassCNGroupIdentifier != immediateBypassCNGroupIdentifier2)
      {
        goto LABEL_13;
      }

LABEL_17:

      goto LABEL_18;
    }

    v15 = 0;
  }

LABEL_19:

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = DNDEventSourceTypeToString([(DNDBypassSettings *)self immediateBypassEventSourceType]);
  immediateBypassCNGroupIdentifier = [(DNDBypassSettings *)self immediateBypassCNGroupIdentifier];
  v7 = DNDEnabledSettingToString([(DNDBypassSettings *)self repeatEventSourceBehaviorEnabledSetting]);
  v8 = [v3 stringWithFormat:@"<%@: %p immediateBypassEventSourceType: %@; immediateBypassCNGroupIdentifier: '%@'; repeatEventSourceBehaviorEnabledSetting: %@>", v4, self, v5, immediateBypassCNGroupIdentifier, v7];;

  return v8;
}

- (id)diffDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = DNDEventSourceTypeToString([(DNDBypassSettings *)self immediateBypassEventSourceType]);
  immediateBypassCNGroupIdentifier = [(DNDBypassSettings *)self immediateBypassCNGroupIdentifier];
  v6 = DNDEnabledSettingToString([(DNDBypassSettings *)self repeatEventSourceBehaviorEnabledSetting]);
  v7 = [v3 stringWithFormat:@"immediateBypassEventSourceType:%@immediateBypassCNGroupIdentifier:%@;repeatEventSourceBehaviorEnabledSetting:%@", v4, immediateBypassCNGroupIdentifier, v6];;

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDMutableBypassSettings alloc];

  return [(DNDBypassSettings *)v4 _initWithSettings:self];
}

- (DNDBypassSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"immediateBypassEventSourceType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"immediateBypassCNGroupIdentifier"];
  v7 = [coderCopy decodeIntegerForKey:@"repeatEventSourceBehaviorEnabledSetting"];

  v8 = [(DNDBypassSettings *)self _initWithImmediateBypassEventSourceType:v5 immediateBypassCNGroupIdentifier:v6 repeatEventSourceBehaviorEnabledSetting:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[DNDBypassSettings immediateBypassEventSourceType](self forKey:{"immediateBypassEventSourceType"), @"immediateBypassEventSourceType"}];
  immediateBypassCNGroupIdentifier = [(DNDBypassSettings *)self immediateBypassCNGroupIdentifier];
  [coderCopy encodeObject:immediateBypassCNGroupIdentifier forKey:@"immediateBypassCNGroupIdentifier"];

  [coderCopy encodeInteger:-[DNDBypassSettings repeatEventSourceBehaviorEnabledSetting](self forKey:{"repeatEventSourceBehaviorEnabledSetting"), @"repeatEventSourceBehaviorEnabledSetting"}];
}

@end