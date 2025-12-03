@interface HDProfile(HealthContentDaemon)
- (id)ontologyConceptManager;
- (id)ontologyDatabase;
@end

@implementation HDProfile(HealthContentDaemon)

- (id)ontologyConceptManager
{
  v1 = [self profileExtensionWithIdentifier:*MEMORY[0x277D10378]];
  if ([v1 conformsToProtocol:&unk_2863878E8])
  {
    ontologyConceptManager = [v1 ontologyConceptManager];
  }

  else
  {
    ontologyConceptManager = 0;
  }

  return ontologyConceptManager;
}

- (id)ontologyDatabase
{
  v1 = [self profileExtensionWithIdentifier:*MEMORY[0x277D10378]];
  if ([v1 conformsToProtocol:&unk_2863878E8])
  {
    ontologyDatabase = [v1 ontologyDatabase];
  }

  else
  {
    ontologyDatabase = 0;
  }

  return ontologyDatabase;
}

@end