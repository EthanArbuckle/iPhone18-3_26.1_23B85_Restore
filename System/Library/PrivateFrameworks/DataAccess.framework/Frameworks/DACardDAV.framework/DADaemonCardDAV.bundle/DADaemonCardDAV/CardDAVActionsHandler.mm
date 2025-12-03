@interface CardDAVActionsHandler
+ (id)handlerWithAddressBook:(void *)book;
+ (id)handlerWithContactStore:(id)store;
@end

@implementation CardDAVActionsHandler

+ (id)handlerWithAddressBook:(void *)book
{
  v3 = [[_CardDAVActionsABLegacyHandler alloc] initWithAddressBook:book];

  return v3;
}

+ (id)handlerWithContactStore:(id)store
{
  storeCopy = store;
  v4 = [[_CardDAVActionsContactsHandler alloc] initWithContactStore:storeCopy];

  return v4;
}

@end