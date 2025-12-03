@interface HDDatabaseTransaction(HDOntologyDatabase)
- (id)ontologyDatabase;
@end

@implementation HDDatabaseTransaction(HDOntologyDatabase)

- (id)ontologyDatabase
{
  protectedResources = [self protectedResources];
  v2 = [protectedResources objectForKeyedSubscript:@"OntologyDatabase"];

  return v2;
}

@end