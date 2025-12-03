@interface DNDMutableModeConfiguration
- (id)copyWithZone:(_NSZone *)zone;
- (void)_configurationWasModified;
- (void)setConfiguration:(id)configuration;
- (void)setCreated:(id)created;
- (void)setLastModified:(id)modified;
- (void)setLastModifiedByDeviceID:(id)d;
- (void)setLastModifiedByVersion:(id *)version;
- (void)setMode:(id)mode;
- (void)setTriggers:(id)triggers;
@end

@implementation DNDMutableModeConfiguration

- (void)setMode:(id)mode
{
  v4 = [mode copy];
  mode = self->super._mode;
  self->super._mode = v4;

  [(DNDMutableModeConfiguration *)self _configurationWasModified];
}

- (void)setConfiguration:(id)configuration
{
  v4 = [configuration copy];
  configuration = self->super._configuration;
  self->super._configuration = v4;

  [(DNDMutableModeConfiguration *)self _configurationWasModified];
  v6 = ([(DNDConfiguration *)self->super._configuration hasSecureData]& 1) != 0 || [(DNDModeConfiguration *)self _containsSecureTriggers:self->super._triggers];
  self->super._hasSecureData = v6;
}

- (void)setTriggers:(id)triggers
{
  v4 = [triggers copy];
  triggers = self->super._triggers;
  self->super._triggers = v4;

  [(DNDMutableModeConfiguration *)self _configurationWasModified];
  v6 = ([(DNDConfiguration *)self->super._configuration hasSecureData]& 1) != 0 || [(DNDModeConfiguration *)self _containsSecureTriggers:self->super._triggers];
  self->super._hasSecureData = v6;
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
  v4 = [DNDModeConfiguration allocWithZone:zone];

  return [(DNDModeConfiguration *)v4 _initWithModeConfiguration:self];
}

- (void)_configurationWasModified
{
  self->super._automaticallyGenerated = 0;
  v3 = +[DNDDevice currentDevice];
  v4 = v3;
  if (v3)
  {
    [v3 frameworkVersion];
  }

  else
  {
    v6 = 0uLL;
    v7 = 0;
  }

  *&self->super._lastModifiedByVersion.majorVersion = v6;
  self->super._lastModifiedByVersion.patchVersion = v7;

  lastModifiedByDeviceID = self->super._lastModifiedByDeviceID;
  self->super._lastModifiedByDeviceID = 0;
}

@end