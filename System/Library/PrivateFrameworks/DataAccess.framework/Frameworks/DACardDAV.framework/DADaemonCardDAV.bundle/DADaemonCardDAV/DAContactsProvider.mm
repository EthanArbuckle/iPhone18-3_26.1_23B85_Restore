@interface DAContactsProvider
+ (DAContactsProvider)providerWithAddressBook:(void *)book;
+ (DAContactsProvider)providerWithContactStore:(id)store;
- (id)contactFromItem:(id)item;
- (id)contactsInContainer:(id)container;
- (id)contactsWithExternalHREFs:(id)fs container:(id)container;
- (id)contactsWithExternalUUIDs:(id)ds container:(id)container;
- (id)meContactInContainer:(id)container;
- (unint64_t)countOfContacts;
- (unint64_t)countOfGroups;
@end

@implementation DAContactsProvider

+ (DAContactsProvider)providerWithContactStore:(id)store
{
  storeCopy = store;
  v4 = [[_DAContactsContactsProvider alloc] initWithContactStore:storeCopy];

  return v4;
}

+ (DAContactsProvider)providerWithAddressBook:(void *)book
{
  v3 = [[_DAABLegacyContactsProvider alloc] initWithAddressBook:book];

  return v3;
}

- (id)contactsInContainer:(id)container
{
  containerCopy = container;
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"contactsInContainer: is abstract" userInfo:0];
  objc_exception_throw(v4);
}

- (id)meContactInContainer:(id)container
{
  containerCopy = container;
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"meContactInContainer: is abstract" userInfo:0];
  objc_exception_throw(v4);
}

- (id)contactFromItem:(id)item
{
  itemCopy = item;
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"contactFromItem: is abstract" userInfo:0];
  objc_exception_throw(v4);
}

- (id)contactsWithExternalHREFs:(id)fs container:(id)container
{
  fsCopy = fs;
  containerCopy = container;
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"contactsWithHREFs: is abstract" userInfo:0];
  objc_exception_throw(v7);
}

- (id)contactsWithExternalUUIDs:(id)ds container:(id)container
{
  dsCopy = ds;
  containerCopy = container;
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