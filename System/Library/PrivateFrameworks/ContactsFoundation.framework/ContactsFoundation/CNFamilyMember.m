@interface CNFamilyMember
+ (BOOL)isAdministrativeGuardianFamilyMember:(id)a3;
+ (BOOL)isDelegateChildFamilyMember:(id)a3;
@end

@implementation CNFamilyMember

+ (BOOL)isDelegateChildFamilyMember:(id)a3
{
  v3 = a3;
  v4 = ([v3 isParent] & 1) == 0 && (objc_msgSend(v3, "isOrganizer") & 1) == 0 && (objc_msgSend(v3, "memberType") - 1) < 2;

  return v4;
}

+ (BOOL)isAdministrativeGuardianFamilyMember:(id)a3
{
  v3 = a3;
  if ([v3 isParent])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isOrganizer];
  }

  return v4;
}

@end