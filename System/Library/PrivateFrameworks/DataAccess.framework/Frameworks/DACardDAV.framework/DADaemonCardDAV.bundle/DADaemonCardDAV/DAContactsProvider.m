@interface DAContactsProvider
+ (DAContactsProvider)providerWithAddressBook:(void *)a3;
+ (DAContactsProvider)providerWithContactStore:(id)a3;
- (id)contactFromItem:(id)a3;
- (id)contactsInContainer:(id)a3;
- (id)contactsWithExternalHREFs:(id)a3 container:(id)a4;
- (id)contactsWithExternalUUIDs:(id)a3 container:(id)a4;
- (id)meContactInContainer:(id)a3;
- (unint64_t)countOfContacts;
- (unint64_t)countOfGroups;
@end

@implementation DAContactsProvider

+ (DAContactsProvider)providerWithContactStore:(id)a3
{
  v3 = a3;
  v4 = [[_DAContactsContactsProvider alloc] initWithContactStore:v3];

  return v4;
}

+ (DAContactsProvider)providerWithAddressBook:(void *)a3
{
  v3 = [[_DAABLegacyContactsProvider alloc] initWithAddressBook:a3];

  return v3;
}

- (id)contactsInContainer:(id)a3
{
  v3 = a3;
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"contactsInContainer: is abstract" userInfo:0];
  objc_exception_throw(v4);
}

- (id)meContactInContainer:(id)a3
{
  v3 = a3;
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"meContactInContainer: is abstract" userInfo:0];
  objc_exception_throw(v4);
}

- (id)contactFromItem:(id)a3
{
  v3 = a3;
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"contactFromItem: is abstract" userInfo:0];
  objc_exception_throw(v4);
}

- (id)contactsWithExternalHREFs:(id)a3 container:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"contactsWithHREFs: is abstract" userInfo:0];
  objc_exception_throw(v7);
}

- (id)contactsWithExternalUUIDs:(id)a3 container:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"contactsWithExternalUUIDs: is abstract" userInfo:0];
  objc_exception_throw(v7);
}

- (unint64_t)countOfContacts
{
  v2 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"countOfContacts: is abstract" userInfo:0];
  objc_exception_throw(v2);
}

- (unint64_t)countOfGroups
{
  v2 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"countOfGroups: is abstract" userInfo:0];
  objc_exception_throw(v2);
}

@end