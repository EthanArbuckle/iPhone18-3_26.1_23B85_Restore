@interface HDDaemon(HealthContentDaemon)
- (id)ontologyBackingStore;
- (id)ontologyUpdateCoordinator;
@end

@implementation HDDaemon(HealthContentDaemon)

- (id)ontologyUpdateCoordinator
{
  v1 = [self daemonExtensionWithIdentifier:*MEMORY[0x277D10378]];
  if ([v1 conformsToProtocol:&unk_286387888])
  {
    ontologyUpdateCoordinator = [v1 ontologyUpdateCoordinator];
  }

  else
  {
    ontologyUpdateCoordinator = 0;
  }

  return ontologyUpdateCoordinator;
}

- (id)ontologyBackingStore
{
  v1 = [self daemonExtensionWithIdentifier:*MEMORY[0x277D10378]];
  if ([v1 conformsToProtocol:&unk_286387888])
  {
    ontologyBackingStore = [v1 ontologyBackingStore];
  }

  else
  {
    ontologyBackingStore = 0;
  }

  return ontologyBackingStore;
}

@end