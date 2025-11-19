@interface ICPersistenceConfiguration
- (NSManagedObjectContext)legacyBackgroundContext;
- (NSManagedObjectContext)modernBackgroundContext;
@end

@implementation ICPersistenceConfiguration

- (NSManagedObjectContext)modernBackgroundContext
{
  v2 = [(ICPersistenceConfiguration *)self makeModernBackgroundContext];
  v3 = v2[2]();

  return v3;
}

- (NSManagedObjectContext)legacyBackgroundContext
{
  v2 = [(ICPersistenceConfiguration *)self makeLegacyBackgroundContext];
  v3 = v2[2]();

  return v3;
}

@end