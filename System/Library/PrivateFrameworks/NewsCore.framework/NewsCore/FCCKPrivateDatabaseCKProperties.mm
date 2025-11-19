@interface FCCKPrivateDatabaseCKProperties
- (id)initWithContainers:(void *)a3 database:(void *)a4 databaseWithZoneWidePCS:(void *)a5 secureDatabase:;
@end

@implementation FCCKPrivateDatabaseCKProperties

- (id)initWithContainers:(void *)a3 database:(void *)a4 databaseWithZoneWidePCS:(void *)a5 secureDatabase:
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = FCCKPrivateDatabaseCKProperties;
    a1 = objc_msgSendSuper2(&v16, sel_init);
    if (a1)
    {
      v13 = [v9 copy];
      v14 = a1[4];
      a1[4] = v13;

      objc_storeStrong(a1 + 1, a3);
      objc_storeStrong(a1 + 2, a4);
      objc_storeStrong(a1 + 3, a5);
    }
  }

  return a1;
}

@end