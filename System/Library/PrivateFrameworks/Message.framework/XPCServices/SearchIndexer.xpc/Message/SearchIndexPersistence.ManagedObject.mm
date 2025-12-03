@interface SearchIndexPersistence.ManagedObject
- (_TtCC17IMAPSearchIndexer22SearchIndexPersistence13ManagedObject)initWithContext:(id)context;
- (_TtCC17IMAPSearchIndexer22SearchIndexPersistence13ManagedObject)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation SearchIndexPersistence.ManagedObject

- (_TtCC17IMAPSearchIndexer22SearchIndexPersistence13ManagedObject)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = _s13ManagedObjectCMa();
  return [(SearchIndexPersistence.ManagedObject *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

- (_TtCC17IMAPSearchIndexer22SearchIndexPersistence13ManagedObject)initWithContext:(id)context
{
  contextCopy = context;
  v4 = sub_100340328(contextCopy);

  return v4;
}

@end