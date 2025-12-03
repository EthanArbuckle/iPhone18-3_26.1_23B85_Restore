@interface CardDAVActionsFinalizer
+ (id)finalizerWithAddressBook:(void *)book;
+ (id)finalizerWithContactStore:(id)store;
- (BOOL)clearChangeHistoriesWithChangeIdContext:(id)context pushedActions:(id)actions inContainer:(id)container changeTrackingID:(id)d;
@end

@implementation CardDAVActionsFinalizer

+ (id)finalizerWithAddressBook:(void *)book
{
  v3 = [[_CardDAVActionsABLegacyFinalizer alloc] initWithAddressBook:book];

  return v3;
}

+ (id)finalizerWithContactStore:(id)store
{
  storeCopy = store;
  v4 = [[_CardDAVActionsContactsFinalizer alloc] initWithContactStore:storeCopy];

  return v4;
}

- (BOOL)clearChangeHistoriesWithChangeIdContext:(id)context pushedActions:(id)actions inContainer:(id)container changeTrackingID:(id)d
{
  v8 = [NSAssertionHandler currentHandler:context];
  [v8 handleFailureInMethod:a2 object:self file:@"CardDAVActionsFinalizer.m" lineNumber:27 description:@"Subclasses implement"];

  return 0;
}

@end