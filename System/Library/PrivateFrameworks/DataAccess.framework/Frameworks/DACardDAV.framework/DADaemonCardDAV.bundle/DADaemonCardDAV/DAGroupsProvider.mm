@interface DAGroupsProvider
+ (DAGroupsProvider)providerWithAddressBook:(void *)a3;
+ (DAGroupsProvider)providerWithContactStore:(id)a3;
- (id)groupsInContainer:(id)a3;
- (id)groupsWithExternalHREFs:(id)a3 container:(id)a4;
- (id)groupsWithExternalUUIDs:(id)a3 container:(id)a4;
@end

@implementation DAGroupsProvider

+ (DAGroupsProvider)providerWithContactStore:(id)a3
{
  v3 = a3;
  v4 = [[_DAContactsGroupsProvider alloc] initWithContactStore:v3];

  return v4;
}

+ (DAGroupsProvider)providerWithAddressBook:(void *)a3
{
  v3 = [[_DAABLegacyGroupsProvider alloc] initWithAddressBook:a3];

  return v3;
}

- (id)groupsInContainer:(id)a3
{
  v3 = a3;
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"groupsInContainer: is abstract" userInfo:0];
  objc_exception_throw(v4);
}

- (id)groupsWithExternalHREFs:(id)a3 container:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"groupsWithExternalHREFs: is abstract" userInfo:0];
  objc_exception_throw(v7);
}

- (id)groupsWithExternalUUIDs:(id)a3 container:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"groupsWithExternalUUIDs: is abstract" userInfo:0];
  objc_exception_throw(v7);
}

@end