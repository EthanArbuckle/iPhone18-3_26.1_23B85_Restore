@interface DABestMeContactPicker
+ (DABestMeContactPicker)pickerWithAddressBook:(void *)book;
+ (DABestMeContactPicker)pickerWithContactStore:(id)store;
- (BOOL)pickBestMeContactForGivenName:(id)name familyName:(id)familyName primaryEmail:(id)email;
@end

@implementation DABestMeContactPicker

+ (DABestMeContactPicker)pickerWithContactStore:(id)store
{
  storeCopy = store;
  v4 = [[_DABestMeContactContactsPicker alloc] initWithContactStore:storeCopy];

  return v4;
}

+ (DABestMeContactPicker)pickerWithAddressBook:(void *)book
{
  v3 = [[_DABestMeContactABLegacyPicker alloc] initWithAddressBook:book];

  return v3;
}

- (BOOL)pickBestMeContactForGivenName:(id)name familyName:(id)familyName primaryEmail:(id)email
{
  nameCopy = name;
  familyNameCopy = familyName;
  emailCopy = email;
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"pickBestMeContactForGivenName" userInfo:0];
  objc_exception_throw(v10);
}

@end