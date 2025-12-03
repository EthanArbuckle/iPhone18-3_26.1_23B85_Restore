@interface ICPersistenceConfiguration
- (NSManagedObjectContext)legacyBackgroundContext;
- (NSManagedObjectContext)modernBackgroundContext;
@end

@implementation ICPersistenceConfiguration

- (NSManagedObjectContext)modernBackgroundContext
{
  makeModernBackgroundContext = [(ICPersistenceConfiguration *)self makeModernBackgroundContext];
  v3 = makeModernBackgroundContext[2]();

  return v3;
}

- (NSManagedObjectContext)legacyBackgroundContext
{
  makeLegacyBackgroundContext = [(ICPersistenceConfiguration *)self makeLegacyBackgroundContext];
  v3 = makeLegacyBackgroundContext[2]();

  return v3;
}

@end