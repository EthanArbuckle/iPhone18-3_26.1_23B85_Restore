@interface DNDBypassSettings
- (BOOL)isEqual:(id)a3;
- (DNDBypassSettings)initWithCoder:(id)a3;
- (id)_initWithImmediateBypassEventSourceType:(unint64_t)a3 immediateBypassCNGroupIdentifier:(id)a4 repeatEventSourceBehaviorEnabledSetting:(unint64_t)a5;
- (id)_initWithSettings:(id)a3;
- (id)description;
- (id)diffDescription;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDBypassSettings

- (id)_initWithSettings:(id)a3
{
  v4 = a3;
  v5 = [v4 immediateBypassEventSourceType];
  v6 = [v4 immediateBypassCNGroupIdentifier];
  v7 = [v4 repeatEventSourceBehaviorEnabledSetting];

  v8 = [(DNDBypassSettings *)self _initWithImmediateBypassEventSourceType:v5 immediateBypassCNGroupIdentifier:v6 repeatEventSourceBehaviorEnabledSetting:v7];
  return v8;
}

- (id)_initWithImmediateBypassEventSourceType:(unint64_t)a3 immediateBypassCNGroupIdentifier:(id)a4 repeatEventSourceBehaviorEnabledSetting:(unint64_t)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = DNDBypassSettings;
  v9 = [(DNDBypassSettings *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_immediateBypassEventSourceType = a3;
    v11 = [v8 copy];
    immediateBypassCNGroupIdentifier = v10->_immediateBypassCNGroupIdentifier;
    v10->_immediateBypassCNGroupIdentifier = v11;

    v10->_repeatEventSourceBehaviorEnabledSetting = a5;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(DNDBypassSettings *)self immediateBypassEventSourceType];
  v4 = [(DNDBypassSettings *)self immediateBypassCNGroupIdentifier];
  v5 = [v4 hash];
  v6 = v3 ^ [(DNDBypassSettings *)self repeatEventSourceBehaviorEnabledSetting];

  return v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v8 = a3;
  if (self == v8)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = [(DNDBypassSettings *)self immediateBypassEventSourceType];
      if (v10 != [(DNDBypassSettings *)v9 immediateBypassEventSourceType])
      {
        v15 = 0;
LABEL_18:

        goto LABEL_19;
      }

      v11 = [(DNDBypassSettings *)self immediateBypassCNGroupIdentifier];
      v12 = [(DNDBypassSettings *)v9 immediateBypassCNGroupIdentifier];
      if (v11 != v12)
      {
        v13 = [(DNDBypassSettings *)self immediateBypassCNGroupIdentifier];
        if (!v13)
        {
          v15 = 0;
          goto LABEL_17;
        }

        v3 = v13;
        v14 = [(DNDBypassSettings *)v9 immediateBypassCNGroupIdentifier];
        if (!v14)
        {
          v15 = 0;
          goto LABEL_16;
        }

        v4 = v14;
        v5 = [(DNDBypassSettings *)self immediateBypassCNGroupIdentifier];
        v6 = [(DNDBypassSettings *)v9 immediateBypassCNGroupIdentifier];
        if (![v5 isEqual:v6])
        {
          v15 = 0;
LABEL_13:

LABEL_16:
          goto LABEL_17;
        }
      }

      v16 = [(DNDBypassSettings *)self repeatEventSourceBehaviorEnabledSetting];
      v15 = v16 == [(DNDBypassSettings *)v9 repeatEventSourceBehaviorEnabledSetting];
      if (v11 != v12)
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
  v6 = [(DNDBypassSettings *)self immediateBypassCNGroupIdentifier];
  v7 = DNDEnabledSettingToString([(DNDBypassSettings *)self repeatEventSourceBehaviorEnabledSetting]);
  v8 = [v3 stringWithFormat:@"<%@: %p immediateBypassEventSourceType: %@; immediateBypassCNGroupIdentifier: '%@'; repeatEventSourceBehaviorEnabledSetting: %@>", v4, self, v5, v6, v7];;

  return v8;
}

- (id)diffDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = DNDEventSourceTypeToString([(DNDBypassSettings *)self immediateBypassEventSourceType]);
  v5 = [(DNDBypassSettings *)self immediateBypassCNGroupIdentifier];
  v6 = DNDEnabledSettingToString([(DNDBypassSettings *)self repeatEventSourceBehaviorEnabledSetting]);
  v7 = [v3 stringWithFormat:@"immediateBypassEventSourceType:%@immediateBypassCNGroupIdentifier:%@;repeatEventSourceBehaviorEnabledSetting:%@", v4, v5, v6];;

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDMutableBypassSettings alloc];

  return [(DNDBypassSettings *)v4 _initWithSettings:self];
}

- (DNDBypassSettings)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"immediateBypassEventSourceType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"immediateBypassCNGroupIdentifier"];
  v7 = [v4 decodeIntegerForKey:@"repeatEventSourceBehaviorEnabledSetting"];

  v8 = [(DNDBypassSettings *)self _initWithImmediateBypassEventSourceType:v5 immediateBypassCNGroupIdentifier:v6 repeatEventSourceBehaviorEnabledSetting:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[DNDBypassSettings immediateBypassEventSourceType](self forKey:{"immediateBypassEventSourceType"), @"immediateBypassEventSourceType"}];
  v4 = [(DNDBypassSettings *)self immediateBypassCNGroupIdentifier];
  [v5 encodeObject:v4 forKey:@"immediateBypassCNGroupIdentifier"];

  [v5 encodeInteger:-[DNDBypassSettings repeatEventSourceBehaviorEnabledSetting](self forKey:{"repeatEventSourceBehaviorEnabledSetting"), @"repeatEventSourceBehaviorEnabledSetting"}];
}

@end