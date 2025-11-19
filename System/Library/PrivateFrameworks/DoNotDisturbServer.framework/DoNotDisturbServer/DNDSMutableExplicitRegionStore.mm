@interface DNDSMutableExplicitRegionStore
- (id)copyWithZone:(_NSZone *)a3;
- (void)setEnteredRegionIdentifiersPendingExit:(id)a3;
@end

@implementation DNDSMutableExplicitRegionStore

- (void)setEnteredRegionIdentifiersPendingExit:(id)a3
{
  v4 = [a3 copy];
  enteredRegionIdentifiersPendingExit = self->super._enteredRegionIdentifiersPendingExit;
  self->super._enteredRegionIdentifiersPendingExit = v4;

  MEMORY[0x2821F96F8](v4, enteredRegionIdentifiersPendingExit);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [DNDSExplicitRegionStore alloc];

  return [(DNDSExplicitRegionStore *)v4 _initWithStore:self];
}

@end