@interface FCCKPrivateDatabaseCKProperties
- (id)initWithContainers:(void *)containers database:(void *)database databaseWithZoneWidePCS:(void *)s secureDatabase:;
@end

@implementation FCCKPrivateDatabaseCKProperties

- (id)initWithContainers:(void *)containers database:(void *)database databaseWithZoneWidePCS:(void *)s secureDatabase:
{
  v9 = a2;
  containersCopy = containers;
  databaseCopy = database;
  sCopy = s;
  if (self)
  {
    v16.receiver = self;
    v16.super_class = FCCKPrivateDatabaseCKProperties;
    self = objc_msgSendSuper2(&v16, sel_init);
    if (self)
    {
      v13 = [v9 copy];
      v14 = self[4];
      self[4] = v13;

      objc_storeStrong(self + 1, containers);
      objc_storeStrong(self + 2, database);
      objc_storeStrong(self + 3, s);
    }
  }

  return self;
}

@end