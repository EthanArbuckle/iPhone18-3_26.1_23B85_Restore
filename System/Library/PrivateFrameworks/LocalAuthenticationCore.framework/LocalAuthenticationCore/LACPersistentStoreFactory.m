@interface LACPersistentStoreFactory
+ (id)makePersistentStoreWithSuiteName:(id)a3;
@end

@implementation LACPersistentStoreFactory

+ (id)makePersistentStoreWithSuiteName:(id)a3
{
  v3 = a3;
  v4 = [[_TtC23LocalAuthenticationCore30LACUserDefaultsPersistentStore alloc] initWithSuiteName:v3];

  return v4;
}

@end