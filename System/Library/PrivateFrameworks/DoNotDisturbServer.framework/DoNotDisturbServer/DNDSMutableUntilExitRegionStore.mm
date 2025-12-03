@interface DNDSMutableUntilExitRegionStore
- (id)copyWithZone:(_NSZone *)zone;
- (void)setActiveLifetimeAssertionUUIDs:(id)ds;
- (void)setCurrentRegion:(id)region;
@end

@implementation DNDSMutableUntilExitRegionStore

- (void)setActiveLifetimeAssertionUUIDs:(id)ds
{
  v4 = [ds copy];
  activeLifetimeAssertionUUIDs = self->super._activeLifetimeAssertionUUIDs;
  self->super._activeLifetimeAssertionUUIDs = v4;

  MEMORY[0x2821F96F8](v4, activeLifetimeAssertionUUIDs);
}

- (void)setCurrentRegion:(id)region
{
  v4 = [region copy];
  currentRegion = self->super._currentRegion;
  self->super._currentRegion = v4;

  MEMORY[0x2821F96F8](v4, currentRegion);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSUntilExitRegionStore alloc];

  return [(DNDSUntilExitRegionStore *)v4 _initWithStore:self];
}

@end