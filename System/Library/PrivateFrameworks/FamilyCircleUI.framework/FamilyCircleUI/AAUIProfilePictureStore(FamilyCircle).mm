@interface AAUIProfilePictureStore(FamilyCircle)
- (id)fa_profilePictureForFamilyMember:()FamilyCircle;
@end

@implementation AAUIProfilePictureStore(FamilyCircle)

- (id)fa_profilePictureForFamilyMember:()FamilyCircle
{
  v4 = a3;
  v5 = objc_opt_new();
  firstName = [v4 firstName];
  [v5 setFirstName:firstName];

  lastName = [v4 lastName];
  [v5 setLastName:lastName];

  dsid = [v4 dsid];
  [v5 setPersonID:dsid];

  appleID = [v4 appleID];

  [v5 setAppleID:appleID];
  v10 = [self profilePictureForFamilyMember:v5];

  return v10;
}

@end