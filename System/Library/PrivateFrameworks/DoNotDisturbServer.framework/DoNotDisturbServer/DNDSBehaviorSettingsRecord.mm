@interface DNDSBehaviorSettingsRecord
+ (id)_recordWithEncodedInfo:(id)a3 error:(id *)a4;
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_initWithInterruptionBehaviorSetting:(id)a3;
- (id)_initWithRecord:(id)a3;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation DNDSBehaviorSettingsRecord

- (id)_initWithRecord:(id)a3
{
  v4 = [a3 interruptionBehaviorSetting];
  v5 = [(DNDSBehaviorSettingsRecord *)self _initWithInterruptionBehaviorSetting:v4];

  return v5;
}

- (id)_initWithInterruptionBehaviorSetting:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DNDSBehaviorSettingsRecord;
  v5 = [(DNDSBehaviorSettingsRecord *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  v2 = [(DNDSBehaviorSettingsRecord *)self interruptionBehaviorSetting];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DNDSBehaviorSettingsRecord *)self interruptionBehaviorSetting];
      v7 = [(DNDSBehaviorSettingsRecord *)v5 interruptionBehaviorSetting];
      if (v6 == v7)
      {
        v12 = 1;
      }

      else
      {
        v8 = [(DNDSBehaviorSettingsRecord *)self interruptionBehaviorSetting];
        if (v8)
        {
          v9 = [(DNDSBehaviorSettingsRecord *)v5 interruptionBehaviorSetting];
          if (v9)
          {
            v10 = [(DNDSBehaviorSettingsRecord *)self interruptionBehaviorSetting];
            v11 = [(DNDSBehaviorSettingsRecord *)v5 interruptionBehaviorSetting];
            v12 = [v10 isEqual:v11];
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
  v5 = [(DNDSBehaviorSettingsRecord *)self interruptionBehaviorSetting];
  v6 = [v3 stringWithFormat:@"<%@: %p interruptionBehaviorSetting: %@>", v4, self, v5];;

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableBehaviorSettingsRecord alloc];

  return [(DNDSBehaviorSettingsRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = [v5 bs_safeObjectForKey:@"interruptionBehaviorSetting" ofType:objc_opt_class()];

  v7 = [[a1 alloc] _initWithInterruptionBehaviorSetting:v6];
  return v7;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(DNDSBehaviorSettingsRecord *)self interruptionBehaviorSetting];
  [v4 setObject:v5 forKey:@"interruptionBehaviorSetting"];

  return v4;
}

+ (id)_recordWithEncodedInfo:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_alloc_init(DNDSMutableBehaviorSettingsRecord);
  v6 = [v4 bs_safeObjectForKey:@"effectiveWhileUnlocked" ofType:objc_opt_class()];

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