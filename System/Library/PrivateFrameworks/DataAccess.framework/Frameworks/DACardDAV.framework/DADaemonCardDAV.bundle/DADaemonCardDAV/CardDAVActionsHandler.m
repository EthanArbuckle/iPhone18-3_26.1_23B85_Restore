@interface CardDAVActionsHandler
+ (id)handlerWithAddressBook:(void *)a3;
+ (id)handlerWithContactStore:(id)a3;
@end

@implementation CardDAVActionsHandler

+ (id)handlerWithAddressBook:(void *)a3
{
  v3 = [[_CardDAVActionsABLegacyHandler alloc] initWithAddressBook:a3];

  return v3;
}

+ (id)handlerWithContactStore:(id)a3
{
  v3 = a3;
  v4 = [[_CardDAVActionsContactsHandler alloc] initWithContactStore:v3];

  return v4;
}

@end