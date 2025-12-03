@interface DNDSMutableStateProviderSystemSnapshot
- (id)copyWithZone:(_NSZone *)zone;
- (void)setActiveAssertionUUIDs:(id)ds;
- (void)setActiveDateIntervalByAssertionUUID:(id)d;
- (void)setAssertions:(id)assertions;
@end

@implementation DNDSMutableStateProviderSystemSnapshot

- (void)setAssertions:(id)assertions
{
  v4 = [assertions copy];
  assertions = self->super._assertions;
  self->super._assertions = v4;

  MEMORY[0x2821F96F8](v4, assertions);
}

- (void)setActiveAssertionUUIDs:(id)ds
{
  v4 = [ds copy];
  activeAssertionUUIDs = self->super._activeAssertionUUIDs;
  self->super._activeAssertionUUIDs = v4;

  MEMORY[0x2821F96F8](v4, activeAssertionUUIDs);
}

- (void)setActiveDateIntervalByAssertionUUID:(id)d
{
  v4 = [d copy];
  activeDateIntervalByAssertionUUID = self->super._activeDateIntervalByAssertionUUID;
  self->super._activeDateIntervalByAssertionUUID = v4;

  MEMORY[0x2821F96F8](v4, activeDateIntervalByAssertionUUID);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSStateProviderSystemSnapshot alloc];

  return [(DNDSStateProviderSystemSnapshot *)v4 _initWithSnapshot:self];
}

@end