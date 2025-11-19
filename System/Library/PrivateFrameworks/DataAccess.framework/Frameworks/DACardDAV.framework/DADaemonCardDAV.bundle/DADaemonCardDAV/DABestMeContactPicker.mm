@interface DABestMeContactPicker
+ (DABestMeContactPicker)pickerWithAddressBook:(void *)a3;
+ (DABestMeContactPicker)pickerWithContactStore:(id)a3;
- (BOOL)pickBestMeContactForGivenName:(id)a3 familyName:(id)a4 primaryEmail:(id)a5;
@end

@implementation DABestMeContactPicker

+ (DABestMeContactPicker)pickerWithContactStore:(id)a3
{
  v3 = a3;
  v4 = [[_DABestMeContactContactsPicker alloc] initWithContactStore:v3];

  return v4;
}

+ (DABestMeContactPicker)pickerWithAddressBook:(void *)a3
{
  v3 = [[_DABestMeContactABLegacyPicker alloc] initWithAddressBook:a3];

  return v3;
}

- (BOOL)pickBestMeContactForGivenName:(id)a3 familyName:(id)a4 primaryEmail:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"pickBestMeContactForGivenName" userInfo:0];
  objc_exception_throw(v10);
}

@end