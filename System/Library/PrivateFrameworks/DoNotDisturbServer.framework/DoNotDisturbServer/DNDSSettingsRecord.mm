@interface DNDSSettingsRecord
+ (id)backingStoreWithFileURL:(id)l;
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
+ (id)recordWithEncodedInfo:(id)info error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_initWithBehaviorSettings:(id)settings phoneCallBypassSettings:(id)bypassSettings scheduleSettings:(id)scheduleSettings configurations:(id)configurations;
- (id)_initWithRecord:(id)record;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation DNDSSettingsRecord

+ (id)backingStoreWithFileURL:(id)l
{
  lCopy = l;
  v5 = [[DNDSJSONBackingStore alloc] initWithRecordClass:self fileURL:lCopy versionNumber:2];

  return v5;
}

+ (id)recordWithEncodedInfo:(id)info error:(id *)error
{
  infoCopy = info;
  v6 = [DNDSBehaviorSettingsRecord _recordWithEncodedInfo:infoCopy error:error];
  v7 = [DNDSScheduleSettingsRecord _recordWithEncodedInfo:infoCopy error:error];
  v8 = [DNDSBypassSettingsRecord _recordWithEncodedInfo:infoCopy error:error];

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

- (id)_initWithRecord:(id)record
{
  recordCopy = record;
  behaviorSettings = [recordCopy behaviorSettings];
  phoneCallBypassSettings = [recordCopy phoneCallBypassSettings];
  scheduleSettings = [recordCopy scheduleSettings];
  configurations = [recordCopy configurations];

  v9 = [(DNDSSettingsRecord *)self _initWithBehaviorSettings:behaviorSettings phoneCallBypassSettings:phoneCallBypassSettings scheduleSettings:scheduleSettings configurations:configurations];
  return v9;
}

- (id)_initWithBehaviorSettings:(id)settings phoneCallBypassSettings:(id)bypassSettings scheduleSettings:(id)scheduleSettings configurations:(id)configurations
{
  settingsCopy = settings;
  bypassSettingsCopy = bypassSettings;
  scheduleSettingsCopy = scheduleSettings;
  configurationsCopy = configurations;
  v32.receiver = self;
  v32.super_class = DNDSSettingsRecord;
  v14 = [(DNDSSettingsRecord *)&v32 init];
  if (v14)
  {
    v15 = [settingsCopy copy];
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

    v19 = [bypassSettingsCopy copy];
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

    v23 = [scheduleSettingsCopy copy];
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

    v27 = [configurationsCopy copy];
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
  behaviorSettings = [(DNDSSettingsRecord *)self behaviorSettings];
  v4 = [behaviorSettings hash];
  phoneCallBypassSettings = [(DNDSSettingsRecord *)self phoneCallBypassSettings];
  v6 = [phoneCallBypassSettings hash] ^ v4;
  scheduleSettings = [(DNDSSettingsRecord *)self scheduleSettings];
  v8 = [scheduleSettings hash];
  configurations = [(DNDSSettingsRecord *)self configurations];
  v10 = v8 ^ [configurations hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      behaviorSettings = [(DNDSSettingsRecord *)self behaviorSettings];
      behaviorSettings2 = [(DNDSSettingsRecord *)v6 behaviorSettings];
      if (behaviorSettings != behaviorSettings2)
      {
        behaviorSettings3 = [(DNDSSettingsRecord *)self behaviorSettings];
        if (!behaviorSettings3)
        {
          v13 = 0;
          goto LABEL_50;
        }

        v10 = behaviorSettings3;
        behaviorSettings4 = [(DNDSSettingsRecord *)v6 behaviorSettings];
        if (!behaviorSettings4)
        {
          v13 = 0;
LABEL_49:

          goto LABEL_50;
        }

        behaviorSettings5 = [(DNDSSettingsRecord *)self behaviorSettings];
        behaviorSettings6 = [(DNDSSettingsRecord *)v6 behaviorSettings];
        if (![behaviorSettings5 isEqual:behaviorSettings6])
        {
          v13 = 0;
LABEL_48:

          goto LABEL_49;
        }

        v48 = behaviorSettings6;
        v49 = behaviorSettings5;
        v50 = behaviorSettings4;
        v51 = v10;
      }

      phoneCallBypassSettings = [(DNDSSettingsRecord *)self phoneCallBypassSettings];
      phoneCallBypassSettings2 = [(DNDSSettingsRecord *)v6 phoneCallBypassSettings];
      if (phoneCallBypassSettings != phoneCallBypassSettings2)
      {
        phoneCallBypassSettings3 = [(DNDSSettingsRecord *)self phoneCallBypassSettings];
        if (phoneCallBypassSettings3)
        {
          v17 = phoneCallBypassSettings3;
          phoneCallBypassSettings4 = [(DNDSSettingsRecord *)v6 phoneCallBypassSettings];
          if (phoneCallBypassSettings4)
          {
            v19 = phoneCallBypassSettings4;
            v47 = phoneCallBypassSettings;
            phoneCallBypassSettings5 = [(DNDSSettingsRecord *)self phoneCallBypassSettings];
            behaviorSettings6 = [(DNDSSettingsRecord *)v6 phoneCallBypassSettings];
            if (([phoneCallBypassSettings5 isEqual:behaviorSettings6] & 1) == 0)
            {

              goto LABEL_38;
            }

            v41 = phoneCallBypassSettings5;
            v42 = v19;
            v43 = v17;
            goto LABEL_17;
          }
        }

        goto LABEL_38;
      }

      v47 = phoneCallBypassSettings;
LABEL_17:
      scheduleSettings = [(DNDSSettingsRecord *)self scheduleSettings];
      scheduleSettings2 = [(DNDSSettingsRecord *)v6 scheduleSettings];
      if (scheduleSettings == scheduleSettings2)
      {
        v44 = scheduleSettings;
        v45 = behaviorSettings6;
        goto LABEL_25;
      }

      scheduleSettings3 = [(DNDSSettingsRecord *)self scheduleSettings];
      if (scheduleSettings3)
      {
        v23 = scheduleSettings3;
        scheduleSettings4 = [(DNDSSettingsRecord *)v6 scheduleSettings];
        if (scheduleSettings4)
        {
          v45 = behaviorSettings6;
          v40 = scheduleSettings4;
          scheduleSettings5 = [(DNDSSettingsRecord *)self scheduleSettings];
          scheduleSettings6 = [(DNDSSettingsRecord *)v6 scheduleSettings];
          if ([scheduleSettings5 isEqual:scheduleSettings6])
          {
            v37 = scheduleSettings6;
            v38 = scheduleSettings5;
            v39 = v23;
            v44 = scheduleSettings;
LABEL_25:
            configurations = [(DNDSSettingsRecord *)self configurations];
            configurations2 = [(DNDSSettingsRecord *)v6 configurations];
            v29 = configurations2;
            if (configurations == configurations2)
            {

              v13 = 1;
            }

            else
            {
              configurations3 = [(DNDSSettingsRecord *)self configurations];
              if (configurations3)
              {
                v36 = configurations3;
                configurations4 = [(DNDSSettingsRecord *)v6 configurations];
                if (configurations4)
                {
                  v35 = configurations4;
                  configurations5 = [(DNDSSettingsRecord *)self configurations];
                  configurations6 = [(DNDSSettingsRecord *)v6 configurations];
                  v13 = [configurations5 isEqual:configurations6];

                  configurations4 = v35;
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

            if (v44 != scheduleSettings2)
            {
            }

            if (v47 != phoneCallBypassSettings2)
            {
            }

LABEL_47:
            behaviorSettings4 = v50;
            v10 = v51;
            behaviorSettings5 = v49;
            behaviorSettings6 = v48;
            if (behaviorSettings != behaviorSettings2)
            {
              goto LABEL_48;
            }

LABEL_50:

            goto LABEL_51;
          }

          scheduleSettings4 = v40;
          behaviorSettings6 = v45;
        }
      }

      if (v47 != phoneCallBypassSettings2)
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
  behaviorSettings = [(DNDSSettingsRecord *)self behaviorSettings];
  phoneCallBypassSettings = [(DNDSSettingsRecord *)self phoneCallBypassSettings];
  scheduleSettings = [(DNDSSettingsRecord *)self scheduleSettings];
  configurations = [(DNDSSettingsRecord *)self configurations];
  v9 = [v3 stringWithFormat:@"<%@: %p behaviorSettings: %@; phoneCallBypassSettings: %@; scheduleSettings: %@; configurations: %@>", v4, self, behaviorSettings, phoneCallBypassSettings, scheduleSettings, configurations];;

  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableSettingsRecord alloc];

  return [(DNDSSettingsRecord *)v4 _initWithRecord:self];
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  contextCopy = context;
  representationCopy = representation;
  v8 = [representationCopy bs_safeObjectForKey:@"behaviorSettings" ofType:objc_opt_class()];
  v9 = [DNDSBehaviorSettingsRecord newWithDictionaryRepresentation:v8 context:contextCopy];
  v10 = [representationCopy bs_safeObjectForKey:@"phoneCallBypassSettings" ofType:objc_opt_class()];
  v11 = [DNDSBypassSettingsRecord newWithDictionaryRepresentation:v10 context:contextCopy];
  v12 = [representationCopy bs_safeObjectForKey:@"scheduleSettings" ofType:objc_opt_class()];
  v13 = [DNDSScheduleSettingsRecord newWithDictionaryRepresentation:v12 context:contextCopy];
  v14 = [representationCopy bs_safeObjectForKey:@"configurations" ofType:objc_opt_class()];

  v15 = [DNDSConfigurationsRecord newWithDictionaryRepresentation:v14 context:contextCopy];
  v16 = [[self alloc] _initWithBehaviorSettings:v9 phoneCallBypassSettings:v11 scheduleSettings:v13 configurations:v15];

  return v16;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  v4 = MEMORY[0x277CBEB38];
  contextCopy = context;
  dictionary = [v4 dictionary];
  behaviorSettings = [(DNDSSettingsRecord *)self behaviorSettings];
  v8 = [behaviorSettings dictionaryRepresentationWithContext:contextCopy];

  [dictionary setObject:v8 forKey:@"behaviorSettings"];
  phoneCallBypassSettings = [(DNDSSettingsRecord *)self phoneCallBypassSettings];
  v10 = [phoneCallBypassSettings dictionaryRepresentationWithContext:contextCopy];

  [dictionary setObject:v10 forKey:@"phoneCallBypassSettings"];
  scheduleSettings = [(DNDSSettingsRecord *)self scheduleSettings];
  v12 = [scheduleSettings dictionaryRepresentationWithContext:contextCopy];

  [dictionary setObject:v12 forKey:@"scheduleSettings"];
  configurations = [(DNDSSettingsRecord *)self configurations];
  v14 = [configurations dictionaryRepresentationWithContext:contextCopy];

  [dictionary setObject:v14 forKey:@"configurations"];

  return dictionary;
}

@end