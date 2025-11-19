@interface DNDSMutableGlobalConfiguration
- (id)copyWithZone:(_NSZone *)a3;
- (void)setBypassSettings:(id)a3;
- (void)setLastModified:(id)a3;
@end

@implementation DNDSMutableGlobalConfiguration

- (void)setBypassSettings:(id)a3
{
  v4 = [a3 copy];
  bypassSettings = self->super._bypassSettings;
  self->super._bypassSettings = v4;

  self->super._automaticallyGenerated = 0;
}

- (void)setLastModified:(id)a3
{
  v4 = [a3 copy];
  lastModified = self->super._lastModified;
  self->super._lastModified = v4;

  MEMORY[0x2821F96F8](v4, lastModified);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSGlobalConfiguration allocWithZone:a3];

  return [(DNDSGlobalConfiguration *)v4 _initWithConfiguration:self];
}

@end