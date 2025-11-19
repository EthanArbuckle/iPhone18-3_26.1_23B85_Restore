@interface DNDMutableModeAssertionDetails
- (id)copyWithZone:(_NSZone *)a3;
- (void)setIdentifier:(id)a3;
- (void)setLifetime:(id)a3;
- (void)setModeConfigurationModifiedDate:(id)a3;
- (void)setModeIdentifier:(id)a3;
- (void)setUserVisibleEndDate:(id)a3;
@end

@implementation DNDMutableModeAssertionDetails

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->super._identifier;
  self->super._identifier = v4;

  MEMORY[0x2821F96F8](v4, identifier);
}

- (void)setModeIdentifier:(id)a3
{
  v4 = [a3 copy];
  v6 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"com.apple.donotdisturb.mode.default";
  }

  objc_storeStrong(&self->super._modeIdentifier, v5);
}

- (void)setModeConfigurationModifiedDate:(id)a3
{
  v4 = [a3 copy];
  modeConfigurationModifiedDate = self->super._modeConfigurationModifiedDate;
  self->super._modeConfigurationModifiedDate = v4;

  MEMORY[0x2821F96F8](v4, modeConfigurationModifiedDate);
}

- (void)setLifetime:(id)a3
{
  v4 = [a3 copy];
  lifetime = self->super._lifetime;
  self->super._lifetime = v4;

  MEMORY[0x2821F96F8](v4, lifetime);
}

- (void)setUserVisibleEndDate:(id)a3
{
  v4 = [a3 copy];
  userVisibleEndDate = self->super._userVisibleEndDate;
  self->super._userVisibleEndDate = v4;

  MEMORY[0x2821F96F8](v4, userVisibleEndDate);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDModeAssertionDetails alloc];

  return [(DNDModeAssertionDetails *)v4 _initWithDetails:self];
}

@end