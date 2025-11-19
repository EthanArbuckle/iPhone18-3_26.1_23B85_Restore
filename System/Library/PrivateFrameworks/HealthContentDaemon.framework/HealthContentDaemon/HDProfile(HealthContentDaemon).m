@interface HDProfile(HealthContentDaemon)
- (id)ontologyConceptManager;
- (id)ontologyDatabase;
@end

@implementation HDProfile(HealthContentDaemon)

- (id)ontologyConceptManager
{
  v1 = [a1 profileExtensionWithIdentifier:*MEMORY[0x277D10378]];
  if ([v1 conformsToProtocol:&unk_2863878E8])
  {
    v2 = [v1 ontologyConceptManager];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)ontologyDatabase
{
  v1 = [a1 profileExtensionWithIdentifier:*MEMORY[0x277D10378]];
  if ([v1 conformsToProtocol:&unk_2863878E8])
  {
    v2 = [v1 ontologyDatabase];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end