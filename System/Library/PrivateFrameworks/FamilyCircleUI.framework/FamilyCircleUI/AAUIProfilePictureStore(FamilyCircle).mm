@interface AAUIProfilePictureStore(FamilyCircle)
- (id)fa_profilePictureForFamilyMember:()FamilyCircle;
@end

@implementation AAUIProfilePictureStore(FamilyCircle)

- (id)fa_profilePictureForFamilyMember:()FamilyCircle
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [v4 firstName];
  [v5 setFirstName:v6];

  v7 = [v4 lastName];
  [v5 setLastName:v7];

  v8 = [v4 dsid];
  [v5 setPersonID:v8];

  v9 = [v4 appleID];

  [v5 setAppleID:v9];
  v10 = [a1 profilePictureForFamilyMember:v5];

  return v10;
}

@end