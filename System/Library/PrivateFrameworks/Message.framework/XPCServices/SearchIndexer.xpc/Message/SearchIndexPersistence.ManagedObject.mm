@interface SearchIndexPersistence.ManagedObject
- (_TtCC17IMAPSearchIndexer22SearchIndexPersistence13ManagedObject)initWithContext:(id)a3;
- (_TtCC17IMAPSearchIndexer22SearchIndexPersistence13ManagedObject)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation SearchIndexPersistence.ManagedObject

- (_TtCC17IMAPSearchIndexer22SearchIndexPersistence13ManagedObject)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = _s13ManagedObjectCMa();
  return [(SearchIndexPersistence.ManagedObject *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

- (_TtCC17IMAPSearchIndexer22SearchIndexPersistence13ManagedObject)initWithContext:(id)a3
{
  v3 = a3;
  v4 = sub_100340328(v3);

  return v4;
}

@end