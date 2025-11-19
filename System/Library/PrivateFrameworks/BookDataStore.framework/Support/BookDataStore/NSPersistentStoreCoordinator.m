@interface NSPersistentStoreCoordinator
- (BOOL)hasStoreInCommonWith:(id)a3;
@end

@implementation NSPersistentStoreCoordinator

- (BOOL)hasStoreInCommonWith:(id)a3
{
  v4 = a3;
  v5 = [(NSPersistentStoreCoordinator *)self persistentStores];
  v6 = [v5 valueForKey:@"URL"];
  v7 = [NSSet setWithArray:v6];

  v8 = [v4 persistentStores];

  v9 = [v8 valueForKey:@"URL"];
  v10 = [NSSet setWithArray:v9];

  LOBYTE(v9) = [v7 intersectsSet:v10];
  return v9;
}

@end