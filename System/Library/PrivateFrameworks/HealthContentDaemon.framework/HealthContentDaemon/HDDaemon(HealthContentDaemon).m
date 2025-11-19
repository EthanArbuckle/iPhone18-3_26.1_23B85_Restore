@interface HDDaemon(HealthContentDaemon)
- (id)ontologyBackingStore;
- (id)ontologyUpdateCoordinator;
@end

@implementation HDDaemon(HealthContentDaemon)

- (id)ontologyUpdateCoordinator
{
  v1 = [a1 daemonExtensionWithIdentifier:*MEMORY[0x277D10378]];
  if ([v1 conformsToProtocol:&unk_286387888])
  {
    v2 = [v1 ontologyUpdateCoordinator];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)ontologyBackingStore
{
  v1 = [a1 daemonExtensionWithIdentifier:*MEMORY[0x277D10378]];
  if ([v1 conformsToProtocol:&unk_286387888])
  {
    v2 = [v1 ontologyBackingStore];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end