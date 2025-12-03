@interface DAGroupsProvider
+ (DAGroupsProvider)providerWithAddressBook:(void *)book;
+ (DAGroupsProvider)providerWithContactStore:(id)store;
- (id)groupsInContainer:(id)container;
- (id)groupsWithExternalHREFs:(id)fs container:(id)container;
- (id)groupsWithExternalUUIDs:(id)ds container:(id)container;
@end

@implementation DAGroupsProvider

+ (DAGroupsProvider)providerWithContactStore:(id)store
{
  storeCopy = store;
  v4 = [[_DAContactsGroupsProvider alloc] initWithContactStore:storeCopy];

  return v4;
}

+ (DAGroupsProvider)providerWithAddressBook:(void *)book
{
  v3 = [[_DAABLegacyGroupsProvider alloc] initWithAddressBook:book];

  return v3;
}

- (id)groupsInContainer:(id)container
{
  containerCopy = container;
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"groupsInContainer: is abstract" userInfo:0];
  objc_exception_throw(v4);
}

- (id)groupsWithExternalHREFs:(id)fs container:(id)container
{
  fsCopy = fs;
  containerCopy = container;
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"groupsWithExternalHREFs: is abstract" userInfo:0];
  objc_exception_throw(v7);
}

- (id)groupsWithExternalUUIDs:(id)ds container:(id)container
{
  dsCopy = ds;
  containerCopy = container;
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"groupsWithExternalUUIDs: is abstract" userInfo:0];
  objc_exception_throw(v7);
}

@end