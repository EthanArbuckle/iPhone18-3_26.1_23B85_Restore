@interface DNDSSettingsRecord
+ (id)backingStoreWithFileURL:(id)a3;
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
+ (id)recordWithEncodedInfo:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_initWithBehaviorSettings:(id)a3 phoneCallBypassSettings:(id)a4 scheduleSettings:(id)a5 configurations:(id)a6;
- (id)_initWithRecord:(id)a3;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation DNDSSettingsRecord

+ (id)backingStoreWithFileURL:(id)a3
{
  v4 = a3;
  v5 = [[DNDSJSONBackingStore alloc] initWithRecordClass:a1 fileURL:v4 versionNumber:2];

  return v5;
}

+ (id)recordWithEncodedInfo:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [DNDSBehaviorSettingsRecord _recordWithEncodedInfo:v5 error:a4];
  v7 = [DNDSScheduleSettingsRecord _recordWithEncodedInfo:v5 error:a4];
  v8 = [DNDSBypassSettingsRecord _recordWithEncodedInfo:v5 error:a4];

  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9 || v8 == 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = objc_alloc_init(DNDSMutableSettingsRecord);
    [(DNDSMutableSettingsRecord *)v11 setBehaviorSettings:v6];
    [(DNDSMutableSettingsRecord *)v11 setScheduleSettings:v7];
    [(DNDSMutableSettingsRecord *)v11 setPhoneCallBypassSettings:v8];
  }

  return v11;
}

- (id)_initWithRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 behaviorSettings];
  v6 = [v4 phoneCallBypassSettings];
  v7 = [v4 scheduleSettings];
  v8 = [v4 configurations];

  v9 = [(DNDSSettingsRecord *)self _initWithBehaviorSettings:v5 phoneCallBypassSettings:v6 scheduleSettings:v7 configurations:v8];
  return v9;
}

- (id)_initWithBehaviorSettings:(id)a3 phoneCallBypassSettings:(id)a4 scheduleSettings:(id)a5 configurations:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v32.receiver = self;
  v32.super_class = DNDSSettingsRecord;
  v14 = [(DNDSSettingsRecord *)&v32 init];
  if (v14)
  {
    v15 = [v10 copy];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = objc_alloc_init(DNDSBehaviorSettingsRecord);
    }

    behaviorSettings = v14->_behaviorSettings;
    v14->_behaviorSettings = v17;

    v19 = [v11 copy];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = objc_alloc_init(DNDSBypassSettingsRecord);
    }

    phoneCallBypassSettings = v14->_phoneCallBypassSettings;
    v14->_phoneCallBypassSettings = v21;

    v23 = [v12 copy];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = objc_alloc_init(DNDSScheduleSettingsRecord);
    }

    scheduleSettings = v14->_scheduleSettings;
    v14->_scheduleSettings = v25;

    v27 = [v13 copy];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = objc_alloc_init(DNDSConfigurationsRecord);
    }

    configurations = v14->_configurations;
    v14->_configurations = v29;
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(DNDSSettingsRecord *)self behaviorSettings];
  v4 = [v3 hash];
  v5 = [(DNDSSettingsRecord *)self phoneCallBypassSettings];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDSSettingsRecord *)self scheduleSettings];
  v8 = [v7 hash];
  v9 = [(DNDSSettingsRecord *)self configurations];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(DNDSSettingsRecord *)self behaviorSettings];
      v8 = [(DNDSSettingsRecord *)v6 behaviorSettings];
      if (v7 != v8)
      {
        v9 = [(DNDSSettingsRecord *)self behaviorSettings];
        if (!v9)
        {
          v13 = 0;
          goto LABEL_50;
        }

        v10 = v9;
        v11 = [(DNDSSettingsRecord *)v6 behaviorSettings];
        if (!v11)
        {
          v13 = 0;
LABEL_49:

          goto LABEL_50;
        }

        v12 = [(DNDSSettingsRecord *)self behaviorSettings];
        v3 = [(DNDSSettingsRecord *)v6 behaviorSettings];
        if (![v12 isEqual:v3])
        {
          v13 = 0;
LABEL_48:

          goto LABEL_49;
        }

        v48 = v3;
        v49 = v12;
        v50 = v11;
        v51 = v10;
      }

      v14 = [(DNDSSettingsRecord *)self phoneCallBypassSettings];
      v15 = [(DNDSSettingsRecord *)v6 phoneCallBypassSettings];
      if (v14 != v15)
      {
        v16 = [(DNDSSettingsRecord *)self phoneCallBypassSettings];
        if (v16)
        {
          v17 = v16;
          v18 = [(DNDSSettingsRecord *)v6 phoneCallBypassSettings];
          if (v18)
          {
            v19 = v18;
            v47 = v14;
            v20 = [(DNDSSettingsRecord *)self phoneCallBypassSettings];
            v3 = [(DNDSSettingsRecord *)v6 phoneCallBypassSettings];
            if (([v20 isEqual:v3] & 1) == 0)
            {

              goto LABEL_38;
            }

            v41 = v20;
            v42 = v19;
            v43 = v17;
            goto LABEL_17;
          }
        }

        goto LABEL_38;
      }

      v47 = v14;
LABEL_17:
      v21 = [(DNDSSettingsRecord *)self scheduleSettings];
      v46 = [(DNDSSettingsRecord *)v6 scheduleSettings];
      if (v21 == v46)
      {
        v44 = v21;
        v45 = v3;
        goto LABEL_25;
      }

      v22 = [(DNDSSettingsRecord *)self scheduleSettings];
      if (v22)
      {
        v23 = v22;
        v24 = [(DNDSSettingsRecord *)v6 scheduleSettings];
        if (v24)
        {
          v45 = v3;
          v40 = v24;
          v25 = [(DNDSSettingsRecord *)self scheduleSettings];
          v26 = [(DNDSSettingsRecord *)v6 scheduleSettings];
          if ([v25 isEqual:v26])
          {
            v37 = v26;
            v38 = v25;
            v39 = v23;
            v44 = v21;
LABEL_25:
            v27 = [(DNDSSettingsRecord *)self configurations];
            v28 = [(DNDSSettingsRecord *)v6 configurations];
            v29 = v28;
            if (v27 == v28)
            {

              v13 = 1;
            }

            else
            {
              v30 = [(DNDSSettingsRecord *)self configurations];
              if (v30)
              {
                v36 = v30;
                v31 = [(DNDSSettingsRecord *)v6 configurations];
                if (v31)
                {
                  v35 = v31;
                  v32 = [(DNDSSettingsRecord *)self configurations];
                  v33 = [(DNDSSettingsRecord *)v6 configurations];
                  v13 = [v32 isEqual:v33];

                  v31 = v35;
                }

                else
                {
                  v13 = 0;
                }
              }

              else
              {

                v13 = 0;
              }
            }

            if (v44 != v46)
            {
            }

            if (v47 != v15)
            {
            }

LABEL_47:
            v11 = v50;
            v10 = v51;
            v12 = v49;
            v3 = v48;
            if (v7 != v8)
            {
              goto LABEL_48;
            }

LABEL_50:

            goto LABEL_51;
          }

          v24 = v40;
          v3 = v45;
        }
      }

      if (v47 != v15)
      {
      }

LABEL_38:
      v13 = 0;
      goto LABEL_47;
    }

    v13 = 0;
  }

LABEL_51:

  return v13;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DNDSSettingsRecord *)self behaviorSettings];
  v6 = [(DNDSSettingsRecord *)self phoneCallBypassSettings];
  v7 = [(DNDSSettingsRecord *)self scheduleSettings];
  v8 = [(DNDSSettingsRecord *)self configurations];
  v9 = [v3 stringWithFormat:@"<%@: %p behaviorSettings: %@; phoneCallBypassSettings: %@; scheduleSettings: %@; configurations: %@>", v4, self, v5, v6, v7, v8];;

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableSettingsRecord alloc];

  return [(DNDSSettingsRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 bs_safeObjectForKey:@"behaviorSettings" ofType:objc_opt_class()];
  v9 = [DNDSBehaviorSettingsRecord newWithDictionaryRepresentation:v8 context:v6];
  v10 = [v7 bs_safeObjectForKey:@"phoneCallBypassSettings" ofType:objc_opt_class()];
  v11 = [DNDSBypassSettingsRecord newWithDictionaryRepresentation:v10 context:v6];
  v12 = [v7 bs_safeObjectForKey:@"scheduleSettings" ofType:objc_opt_class()];
  v13 = [DNDSScheduleSettingsRecord newWithDictionaryRepresentation:v12 context:v6];
  v14 = [v7 bs_safeObjectForKey:@"configurations" ofType:objc_opt_class()];

  v15 = [DNDSConfigurationsRecord newWithDictionaryRepresentation:v14 context:v6];
  v16 = [[a1 alloc] _initWithBehaviorSettings:v9 phoneCallBypassSettings:v11 scheduleSettings:v13 configurations:v15];

  return v16;
}

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v4 = MEMORY[0x277CBEB38];
  v5 = a3;
  v6 = [v4 dictionary];
  v7 = [(DNDSSettingsRecord *)self behaviorSettings];
  v8 = [v7 dictionaryRepresentationWithContext:v5];

  [v6 setObject:v8 forKey:@"behaviorSettings"];
  v9 = [(DNDSSettingsRecord *)self phoneCallBypassSettings];
  v10 = [v9 dictionaryRepresentationWithContext:v5];

  [v6 setObject:v10 forKey:@"phoneCallBypassSettings"];
  v11 = [(DNDSSettingsRecord *)self scheduleSettings];
  v12 = [v11 dictionaryRepresentationWithContext:v5];

  [v6 setObject:v12 forKey:@"scheduleSettings"];
  v13 = [(DNDSSettingsRecord *)self configurations];
  v14 = [v13 dictionaryRepresentationWithContext:v5];

  [v6 setObject:v14 forKey:@"configurations"];

  return v6;
}

@end