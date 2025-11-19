@interface DNDSMutableStateProviderSystemSnapshot
- (id)copyWithZone:(_NSZone *)a3;
- (void)setActiveAssertionUUIDs:(id)a3;
- (void)setActiveDateIntervalByAssertionUUID:(id)a3;
- (void)setAssertions:(id)a3;
@end

@implementation DNDSMutableStateProviderSystemSnapshot

- (void)setAssertions:(id)a3
{
  v4 = [a3 copy];
  assertions = self->super._assertions;
  self->super._assertions = v4;

  MEMORY[0x2821F96F8](v4, assertions);
}

- (void)setActiveAssertionUUIDs:(id)a3
{
  v4 = [a3 copy];
  activeAssertionUUIDs = self->super._activeAssertionUUIDs;
  self->super._activeAssertionUUIDs = v4;

  MEMORY[0x2821F96F8](v4, activeAssertionUUIDs);
}

- (void)setActiveDateIntervalByAssertionUUID:(id)a3
{
  v4 = [a3 copy];
  activeDateIntervalByAssertionUUID = self->super._activeDateIntervalByAssertionUUID;
  self->super._activeDateIntervalByAssertionUUID = v4;

  MEMORY[0x2821F96F8](v4, activeDateIntervalByAssertionUUID);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSStateProviderSystemSnapshot alloc];

  return [(DNDSStateProviderSystemSnapshot *)v4 _initWithSnapshot:self];
}

@end