@interface DNDModeConfiguration(Record)
+ (id)modeConfigurationForRecord:()Record;
- (DNDSMutableModeConfigurationRecord)makeRecord;
@end

@implementation DNDModeConfiguration(Record)

+ (id)modeConfigurationForRecord:()Record
{
  if (a3)
  {
    v3 = MEMORY[0x277D05A50];
    v4 = a3;
    v5 = objc_alloc_init(v3);
    v6 = MEMORY[0x277D058E8];
    configuration = [v4 configuration];
    secureConfiguration = [v4 secureConfiguration];
    v9 = [v6 configurationForRecord:configuration secureRecord:secureConfiguration];
    [v5 setConfiguration:v9];

    v10 = MEMORY[0x277D05930];
    mode = [v4 mode];
    v12 = [v10 modeForRecord:mode];
    [v5 setMode:v12];

    triggers = [v4 triggers];
    v13Triggers = [triggers triggers];
    [v5 setTriggers:v13Triggers];

    [v5 setImpactsAvailability:{objc_msgSend(v4, "impactsAvailability")}];
    dimsLockScreen = [v4 dimsLockScreen];
    mode2 = [v5 mode];
    semanticType = [mode2 semanticType];

    if (semanticType == 1)
    {
      v18 = 2;
    }

    else
    {
      v18 = dimsLockScreen;
    }

    [v5 setDimsLockScreen:v18];
    created = [v4 created];
    [v5 setCreated:created];

    lastModified = [v4 lastModified];
    [v5 setLastModified:lastModified];

    [v5 setCompatibilityVersion:{objc_msgSend(v4, "compatibilityVersion")}];
    [v5 setAutomaticallyGenerated:{objc_msgSend(v4, "isAutomaticallyGenerated")}];
    [v4 lastModifiedByVersion];
    [v5 setLastModifiedByVersion:v23];
    lastModifiedByDeviceID = [v4 lastModifiedByDeviceID];

    [v5 setLastModifiedByDeviceID:lastModifiedByDeviceID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (DNDSMutableModeConfigurationRecord)makeRecord
{
  v2 = objc_alloc_init(DNDSMutableModeConfigurationRecord);
  mode = [self mode];
  makeRecord = [mode makeRecord];
  [(DNDSMutableModeConfigurationRecord *)v2 setMode:makeRecord];

  configuration = [self configuration];
  makeRecord2 = [configuration makeRecord];
  [(DNDSMutableModeConfigurationRecord *)v2 setConfiguration:makeRecord2];

  configuration2 = [self configuration];
  makeSecureRecord = [configuration2 makeSecureRecord];
  [(DNDSMutableModeConfigurationRecord *)v2 setSecureConfiguration:makeSecureRecord];

  v9 = [DNDSModeConfigurationTriggersRecord alloc];
  triggers = [self triggers];
  v11 = [(DNDSModeConfigurationTriggersRecord *)v9 initWithTriggers:triggers];
  [(DNDSMutableModeConfigurationRecord *)v2 setTriggers:v11];

  -[DNDSMutableModeConfigurationRecord setImpactsAvailability:](v2, "setImpactsAvailability:", [self impactsAvailability]);
  dimsLockScreen = [self dimsLockScreen];
  mode2 = [self mode];
  semanticType = [mode2 semanticType];

  if (semanticType == 1)
  {
    v15 = 2;
  }

  else
  {
    v15 = dimsLockScreen;
  }

  [(DNDSMutableModeConfigurationRecord *)v2 setDimsLockScreen:v15];
  created = [self created];
  [(DNDSMutableModeConfigurationRecord *)v2 setCreated:created];

  lastModified = [self lastModified];
  [(DNDSMutableModeConfigurationRecord *)v2 setLastModified:lastModified];

  [self lastModifiedByVersion];
  [(DNDSMutableModeConfigurationRecord *)v2 setLastModifiedByVersion:v20];
  lastModifiedByDeviceID = [self lastModifiedByDeviceID];
  [(DNDSMutableModeConfigurationRecord *)v2 setLastModifiedByDeviceID:lastModifiedByDeviceID];

  -[DNDSMutableModeConfigurationRecord setHasSecureData:](v2, "setHasSecureData:", [self hasSecureData]);
  -[DNDSMutableModeConfigurationRecord setCompatibilityVersion:](v2, "setCompatibilityVersion:", [self compatibilityVersion]);
  -[DNDSMutableModeConfigurationRecord setEphemeralResolvedCompatibilityVersion:](v2, "setEphemeralResolvedCompatibilityVersion:", [self resolvedCompatibilityVersion]);
  -[DNDSMutableModeConfigurationRecord setAutomaticallyGenerated:](v2, "setAutomaticallyGenerated:", [self isAutomaticallyGenerated]);

  return v2;
}

@end