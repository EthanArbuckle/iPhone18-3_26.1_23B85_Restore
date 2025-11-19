@interface DNDMutableModeConfiguration
- (id)copyWithZone:(_NSZone *)a3;
- (void)_configurationWasModified;
- (void)setConfiguration:(id)a3;
- (void)setCreated:(id)a3;
- (void)setLastModified:(id)a3;
- (void)setLastModifiedByDeviceID:(id)a3;
- (void)setLastModifiedByVersion:(id *)a3;
- (void)setMode:(id)a3;
- (void)setTriggers:(id)a3;
@end

@implementation DNDMutableModeConfiguration

- (void)setMode:(id)a3
{
  v4 = [a3 copy];
  mode = self->super._mode;
  self->super._mode = v4;

  [(DNDMutableModeConfiguration *)self _configurationWasModified];
}

- (void)setConfiguration:(id)a3
{
  v4 = [a3 copy];
  configuration = self->super._configuration;
  self->super._configuration = v4;

  [(DNDMutableModeConfiguration *)self _configurationWasModified];
  v6 = ([(DNDConfiguration *)self->super._configuration hasSecureData]& 1) != 0 || [(DNDModeConfiguration *)self _containsSecureTriggers:self->super._triggers];
  self->super._hasSecureData = v6;
}

- (void)setTriggers:(id)a3
{
  v4 = [a3 copy];
  triggers = self->super._triggers;
  self->super._triggers = v4;

  [(DNDMutableModeConfiguration *)self _configurationWasModified];
  v6 = ([(DNDConfiguration *)self->super._configuration hasSecureData]& 1) != 0 || [(DNDModeConfiguration *)self _containsSecureTriggers:self->super._triggers];
  self->super._hasSecureData = v6;
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
  v4 = [DNDModeConfiguration allocWithZone:a3];

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