@interface DNDSMutableGlobalConfiguration
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBypassSettings:(id)settings;
- (void)setLastModified:(id)modified;
@end

@implementation DNDSMutableGlobalConfiguration

- (void)setBypassSettings:(id)settings
{
  v4 = [settings copy];
  bypassSettings = self->super._bypassSettings;
  self->super._bypassSettings = v4;

  self->super._automaticallyGenerated = 0;
}

- (void)setLastModified:(id)modified
{
  v4 = [modified copy];
  lastModified = self->super._lastModified;
  self->super._lastModified = v4;

  MEMORY[0x2821F96F8](v4, lastModified);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSGlobalConfiguration allocWithZone:zone];

  return [(DNDSGlobalConfiguration *)v4 _initWithConfiguration:self];
}

@end