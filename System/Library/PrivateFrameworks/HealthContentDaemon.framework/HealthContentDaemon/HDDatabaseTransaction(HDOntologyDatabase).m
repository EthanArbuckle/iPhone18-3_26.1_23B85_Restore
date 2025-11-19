@interface HDDatabaseTransaction(HDOntologyDatabase)
- (id)ontologyDatabase;
@end

@implementation HDDatabaseTransaction(HDOntologyDatabase)

- (id)ontologyDatabase
{
  v1 = [a1 protectedResources];
  v2 = [v1 objectForKeyedSubscript:@"OntologyDatabase"];

  return v2;
}

@end