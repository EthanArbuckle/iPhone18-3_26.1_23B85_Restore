@interface DNDSMutableUntilExitRegionStore
- (id)copyWithZone:(_NSZone *)a3;
- (void)setActiveLifetimeAssertionUUIDs:(id)a3;
- (void)setCurrentRegion:(id)a3;
@end

@implementation DNDSMutableUntilExitRegionStore

- (void)setActiveLifetimeAssertionUUIDs:(id)a3
{
  v4 = [a3 copy];
  activeLifetimeAssertionUUIDs = self->super._activeLifetimeAssertionUUIDs;
  self->super._activeLifetimeAssertionUUIDs = v4;

  MEMORY[0x2821F96F8](v4, activeLifetimeAssertionUUIDs);
}

- (void)setCurrentRegion:(id)a3
{
  v4 = [a3 copy];
  currentRegion = self->super._currentRegion;
  self->super._currentRegion = v4;

  MEMORY[0x2821F96F8](v4, currentRegion);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSUntilExitRegionStore alloc];

  return [(DNDSUntilExitRegionStore *)v4 _initWithStore:self];
}

@end