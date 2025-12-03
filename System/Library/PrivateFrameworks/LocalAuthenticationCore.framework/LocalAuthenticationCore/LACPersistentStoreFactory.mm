@interface LACPersistentStoreFactory
+ (id)makePersistentStoreWithSuiteName:(id)name;
@end

@implementation LACPersistentStoreFactory

+ (id)makePersistentStoreWithSuiteName:(id)name
{
  nameCopy = name;
  v4 = [[_TtC23LocalAuthenticationCore30LACUserDefaultsPersistentStore alloc] initWithSuiteName:nameCopy];

  return v4;
}

@end