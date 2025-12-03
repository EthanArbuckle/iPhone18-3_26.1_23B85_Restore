@interface CNFamilyMember
+ (BOOL)isAdministrativeGuardianFamilyMember:(id)member;
+ (BOOL)isDelegateChildFamilyMember:(id)member;
@end

@implementation CNFamilyMember

+ (BOOL)isDelegateChildFamilyMember:(id)member
{
  memberCopy = member;
  v4 = ([memberCopy isParent] & 1) == 0 && (objc_msgSend(memberCopy, "isOrganizer") & 1) == 0 && (objc_msgSend(memberCopy, "memberType") - 1) < 2;

  return v4;
}

+ (BOOL)isAdministrativeGuardianFamilyMember:(id)member
{
  memberCopy = member;
  if ([memberCopy isParent])
  {
    isOrganizer = 1;
  }

  else
  {
    isOrganizer = [memberCopy isOrganizer];
  }

  return isOrganizer;
}

@end