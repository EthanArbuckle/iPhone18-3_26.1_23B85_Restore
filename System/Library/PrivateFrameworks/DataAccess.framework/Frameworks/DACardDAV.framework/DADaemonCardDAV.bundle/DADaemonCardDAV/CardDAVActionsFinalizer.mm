@interface CardDAVActionsFinalizer
+ (id)finalizerWithAddressBook:(void *)a3;
+ (id)finalizerWithContactStore:(id)a3;
- (BOOL)clearChangeHistoriesWithChangeIdContext:(id)a3 pushedActions:(id)a4 inContainer:(id)a5 changeTrackingID:(id)a6;
@end

@implementation CardDAVActionsFinalizer

+ (id)finalizerWithAddressBook:(void *)a3
{
  v3 = [[_CardDAVActionsABLegacyFinalizer alloc] initWithAddressBook:a3];

  return v3;
}

+ (id)finalizerWithContactStore:(id)a3
{
  v3 = a3;
  v4 = [[_CardDAVActionsContactsFinalizer alloc] initWithContactStore:v3];

  return v4;
}

- (BOOL)clearChangeHistoriesWithChangeIdContext:(id)a3 pushedActions:(id)a4 inContainer:(id)a5 changeTrackingID:(id)a6
{
  v8 = [NSAssertionHandler currentHandler:a3];
  [v8 handleFailureInMethod:a2 object:self file:@"CardDAVActionsFinalizer.m" lineNumber:27 description:@"Subclasses implement"];

  return 0;
}

@end