@interface DNDSMutableExplicitRegionStore
- (id)copyWithZone:(_NSZone *)zone;
- (void)setEnteredRegionIdentifiersPendingExit:(id)exit;
@end

@implementation DNDSMutableExplicitRegionStore

- (void)setEnteredRegionIdentifiersPendingExit:(id)exit
{
  v4 = [exit copy];
  enteredRegionIdentifiersPendingExit = self->super._enteredRegionIdentifiersPendingExit;
  self->super._enteredRegionIdentifiersPendingExit = v4;

  MEMORY[0x2821F96F8](v4, enteredRegionIdentifiersPendingExit);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DNDSExplicitRegionStore alloc];

  return [(DNDSExplicitRegionStore *)v4 _initWithStore:self];
}

@end