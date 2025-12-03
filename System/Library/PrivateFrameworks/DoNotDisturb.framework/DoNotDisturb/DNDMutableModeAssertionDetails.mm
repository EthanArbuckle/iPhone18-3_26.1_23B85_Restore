@interface DNDMutableModeAssertionDetails
- (id)copyWithZone:(_NSZone *)zone;
- (void)setIdentifier:(id)identifier;
- (void)setLifetime:(id)lifetime;
- (void)setModeConfigurationModifiedDate:(id)date;
- (void)setModeIdentifier:(id)identifier;
- (void)setUserVisibleEndDate:(id)date;
@end

@implementation DNDMutableModeAssertionDetails

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->super._identifier;
  self->super._identifier = v4;

  MEMORY[0x2821F96F8](v4, identifier);
}

- (void)setModeIdentifier:(id)identifier
{
  v4 = [identifier copy];
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

- (void)setModeConfigurationModifiedDate:(id)date
{
  v4 = [date copy];
  modeConfigurationModifiedDate = self->super._modeConfigurationModifiedDate;
  self->super._modeConfigurationModifiedDate = v4;

  MEMORY[0x2821F96F8](v4, modeConfigurationModifiedDate);
}

- (void)setLifetime:(id)lifetime
{
  v4 = [lifetime copy];
  lifetime = self->super._lifetime;
  self->super._lifetime = v4;

  MEMORY[0x2821F96F8](v4, lifetime);
}

- (void)setUserVisibleEndDate:(id)date
{
  v4 = [date copy];
  userVisibleEndDate = self->super._userVisibleEndDate;
  self->super._userVisibleEndDate = v4;

  MEMORY[0x2821F96F8](v4, userVisibleEndDate);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDModeAssertionDetails alloc];

  return [(DNDModeAssertionDetails *)v4 _initWithDetails:self];
}

@end