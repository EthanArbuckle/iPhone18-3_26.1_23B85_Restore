@interface DNDSMutableModeConfigurationRecord
- (id)copyWithZone:(_NSZone *)zone;
- (void)setConfiguration:(id)configuration;
- (void)setCreated:(id)created;
- (void)setLastModified:(id)modified;
- (void)setLastModifiedByDeviceID:(id)d;
- (void)setLastModifiedByVersion:(id *)version;
- (void)setMode:(id)mode;
- (void)setSecureConfiguration:(id)configuration;
- (void)setTriggers:(id)triggers;
@end

@implementation DNDSMutableModeConfigurationRecord

- (void)setMode:(id)mode
{
  v4 = [mode copy];
  mode = self->super._mode;
  self->super._mode = v4;

  MEMORY[0x2821F96F8](v4, mode);
}

- (void)setConfiguration:(id)configuration
{
  v4 = [configuration copy];
  configuration = self->super._configuration;
  self->super._configuration = v4;

  MEMORY[0x2821F96F8](v4, configuration);
}

- (void)setSecureConfiguration:(id)configuration
{
  v4 = [configuration copy];
  secureConfiguration = self->super._secureConfiguration;
  self->super._secureConfiguration = v4;

  MEMORY[0x2821F96F8](v4, secureConfiguration);
}

- (void)setTriggers:(id)triggers
{
  v4 = [triggers copy];
  triggers = self->super._triggers;
  self->super._triggers = v4;

  MEMORY[0x2821F96F8](v4, triggers);
}

- (void)setCreated:(id)created
{
  v4 = [created copy];
  created = self->super._created;
  self->super._created = v4;

  MEMORY[0x2821F96F8](v4, created);
}

- (void)setLastModified:(id)modified
{
  v4 = [modified copy];
  lastModified = self->super._lastModified;
  self->super._lastModified = v4;

  MEMORY[0x2821F96F8](v4, lastModified);
}

- (void)setLastModifiedByVersion:(id *)version
{
  v3 = *&version->var0;
  self->super._lastModifiedByVersion.patchVersion = version->var2;
  *&self->super._lastModifiedByVersion.majorVersion = v3;
}

- (void)setLastModifiedByDeviceID:(id)d
{
  v4 = [d copy];
  lastModifiedByDeviceID = self->super._lastModifiedByDeviceID;
  self->super._lastModifiedByDeviceID = v4;

  MEMORY[0x2821F96F8](v4, lastModifiedByDeviceID);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  mode = self->super._mode;
  configuration = self->super._configuration;
  secureConfiguration = self->super._secureConfiguration;
  triggers = self->super._triggers;
  impactsAvailability = self->super._impactsAvailability;
  dimsLockScreen = self->super._dimsLockScreen;
  created = self->super._created;
  lastModified = self->super._lastModified;
  automaticallyGenerated = self->super._automaticallyGenerated;
  compatibilityVersion = self->super._compatibilityVersion;
  ephemeralResolvedCompatibilityVersion = self->super._ephemeralResolvedCompatibilityVersion;
  hasSecureData = self->super._hasSecureData;
  v21 = *&self->super._lastModifiedByVersion.majorVersion;
  lastModifiedByDeviceID = self->super._lastModifiedByDeviceID;
  patchVersion = self->super._lastModifiedByVersion.patchVersion;
  LOBYTE(v20) = hasSecureData;
  LOBYTE(v19) = automaticallyGenerated;
  return [v4 _initWithMode:mode configuration:configuration secureConfiguration:secureConfiguration triggers:triggers impactsAvailability:impactsAvailability dimsLockScreen:dimsLockScreen created:created lastModified:lastModified lastModifiedByVersion:&v21 lastModifiedByDeviceID:lastModifiedByDeviceID automaticallyGenerated:v19 compatibilityVersion:compatibilityVersion ephemeralResolvedCompatibilityVersion:ephemeralResolvedCompatibilityVersion hasSecureData:v20];
}

@end