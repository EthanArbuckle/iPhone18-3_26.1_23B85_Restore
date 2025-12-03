@interface NSPersistentStoreCoordinator
- (BOOL)hasStoreInCommonWith:(id)with;
@end

@implementation NSPersistentStoreCoordinator

- (BOOL)hasStoreInCommonWith:(id)with
{
  withCopy = with;
  persistentStores = [(NSPersistentStoreCoordinator *)self persistentStores];
  v6 = [persistentStores valueForKey:@"URL"];
  v7 = [NSSet setWithArray:v6];

  persistentStores2 = [withCopy persistentStores];

  v9 = [persistentStores2 valueForKey:@"URL"];
  v10 = [NSSet setWithArray:v9];

  LOBYTE(v9) = [v7 intersectsSet:v10];
  return v9;
}

@end