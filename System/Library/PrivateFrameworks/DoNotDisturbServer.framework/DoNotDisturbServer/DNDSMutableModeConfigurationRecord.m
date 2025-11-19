@interface DNDSMutableModeConfigurationRecord
- (id)copyWithZone:(_NSZone *)a3;
- (void)setConfiguration:(id)a3;
- (void)setCreated:(id)a3;
- (void)setLastModified:(id)a3;
- (void)setLastModifiedByDeviceID:(id)a3;
- (void)setLastModifiedByVersion:(id *)a3;
- (void)setMode:(id)a3;
- (void)setSecureConfiguration:(id)a3;
- (void)setTriggers:(id)a3;
@end

@implementation DNDSMutableModeConfigurationRecord

- (void)setMode:(id)a3
{
  v4 = [a3 copy];
  mode = self->super._mode;
  self->super._mode = v4;

  MEMORY[0x2821F96F8](v4, mode);
}

- (void)setConfiguration:(id)a3
{
  v4 = [a3 copy];
  configuration = self->super._configuration;
  self->super._configuration = v4;

  MEMORY[0x2821F96F8](v4, configuration);
}

- (void)setSecureConfiguration:(id)a3
{
  v4 = [a3 copy];
  secureConfiguration = self->super._secureConfiguration;
  self->super._secureConfiguration = v4;

  MEMORY[0x2821F96F8](v4, secureConfiguration);
}

- (void)setTriggers:(id)a3
{
  v4 = [a3 copy];
  triggers = self->super._triggers;
  self->super._triggers = v4;

  MEMORY[0x2821F96F8](v4, triggers);
}

- (void)setCreated:(id)a3
{
  v4 = [a3 copy];
  created = self->super._created;
  self->super._created = v4;

  MEMORY[0x2821F96F8](v4, created);
}

- (void)setLastModified:(id)a3
{
  v4 = [a3 copy];
  lastModified = self->super._lastModified;
  self->super._lastModified = v4;

  MEMORY[0x2821F96F8](v4, lastModified);
}

- (void)setLastModifiedByVersion:(id *)a3
{
  v3 = *&a3->var0;
  self->super._lastModifiedByVersion.patchVersion = a3->var2;
  *&self->super._lastModifiedByVersion.majorVersion = v3;
}

- (void)setLastModifiedByDeviceID:(id)a3
{
  v4 = [a3 copy];
  lastModifiedByDeviceID = self->super._lastModifiedByDeviceID;
  self->super._lastModifiedByDeviceID = v4;

  MEMORY[0x2821F96F8](v4, lastModifiedByDeviceID);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
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