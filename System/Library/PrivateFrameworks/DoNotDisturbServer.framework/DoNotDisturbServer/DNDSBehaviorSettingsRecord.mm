@interface DNDSBehaviorSettingsRecord
+ (id)_recordWithEncodedInfo:(id)info error:(id *)error;
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_initWithInterruptionBehaviorSetting:(id)setting;
- (id)_initWithRecord:(id)record;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation DNDSBehaviorSettingsRecord

- (id)_initWithRecord:(id)record
{
  interruptionBehaviorSetting = [record interruptionBehaviorSetting];
  v5 = [(DNDSBehaviorSettingsRecord *)self _initWithInterruptionBehaviorSetting:interruptionBehaviorSetting];

  return v5;
}

- (id)_initWithInterruptionBehaviorSetting:(id)setting
{
  settingCopy = setting;
  v10.receiver = self;
  v10.super_class = DNDSBehaviorSettingsRecord;
  v5 = [(DNDSBehaviorSettingsRecord *)&v10 init];
  if (v5)
  {
    v6 = [settingCopy copy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &unk_285C533E8;
    }

    objc_storeStrong(&v5->_interruptionBehaviorSetting, v8);
  }

  return v5;
}

- (unint64_t)hash
{
  interruptionBehaviorSetting = [(DNDSBehaviorSettingsRecord *)self interruptionBehaviorSetting];
  v3 = [interruptionBehaviorSetting hash];

  return v3;
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
      interruptionBehaviorSetting = [(DNDSBehaviorSettingsRecord *)self interruptionBehaviorSetting];
      interruptionBehaviorSetting2 = [(DNDSBehaviorSettingsRecord *)v5 interruptionBehaviorSetting];
      if (interruptionBehaviorSetting == interruptionBehaviorSetting2)
      {
        v12 = 1;
      }

      else
      {
        interruptionBehaviorSetting3 = [(DNDSBehaviorSettingsRecord *)self interruptionBehaviorSetting];
        if (interruptionBehaviorSetting3)
        {
          interruptionBehaviorSetting4 = [(DNDSBehaviorSettingsRecord *)v5 interruptionBehaviorSetting];
          if (interruptionBehaviorSetting4)
          {
            interruptionBehaviorSetting5 = [(DNDSBehaviorSettingsRecord *)self interruptionBehaviorSetting];
            interruptionBehaviorSetting6 = [(DNDSBehaviorSettingsRecord *)v5 interruptionBehaviorSetting];
            v12 = [interruptionBehaviorSetting5 isEqual:interruptionBehaviorSetting6];
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

  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  interruptionBehaviorSetting = [(DNDSBehaviorSettingsRecord *)self interruptionBehaviorSetting];
  v6 = [v3 stringWithFormat:@"<%@: %p interruptionBehaviorSetting: %@>", v4, self, interruptionBehaviorSetting];;

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableBehaviorSettingsRecord alloc];

  return [(DNDSBehaviorSettingsRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  representationCopy = representation;
  v6 = [representationCopy bs_safeObjectForKey:@"interruptionBehaviorSetting" ofType:objc_opt_class()];

  v7 = [[self alloc] _initWithInterruptionBehaviorSetting:v6];
  return v7;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  interruptionBehaviorSetting = [(DNDSBehaviorSettingsRecord *)self interruptionBehaviorSetting];
  [dictionary setObject:interruptionBehaviorSetting forKey:@"interruptionBehaviorSetting"];

  return dictionary;
}

+ (id)_recordWithEncodedInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v5 = objc_alloc_init(DNDSMutableBehaviorSettingsRecord);
  v6 = [infoCopy bs_safeObjectForKey:@"effectiveWhileUnlocked" ofType:objc_opt_class()];

  if ([v6 BOOLValue])
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
  [(DNDSMutableBehaviorSettingsRecord *)v5 setInterruptionBehaviorSetting:v8];

  return v5;
}

@end