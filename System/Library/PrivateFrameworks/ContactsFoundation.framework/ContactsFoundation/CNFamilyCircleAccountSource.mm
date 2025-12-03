@interface CNFamilyCircleAccountSource
- (CNFamilyCircleAccountSource)initWithFamilyCircle:(id)circle;
- (NSString)description;
- (id)delegateAccounts;
- (id)myFamilyMemberRecord;
- (id)primaryAccount;
@end

@implementation CNFamilyCircleAccountSource

- (CNFamilyCircleAccountSource)initWithFamilyCircle:(id)circle
{
  circleCopy = circle;
  v10.receiver = self;
  v10.super_class = CNFamilyCircleAccountSource;
  v6 = [(CNFamilyCircleAccountSource *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_familyCircle, circle);
    v8 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"familyCircle" object:self->_familyCircle];
  build = [v3 build];

  return build;
}

- (id)myFamilyMemberRecord
{
  members = [(FAFamilyCircle *)self->_familyCircle members];
  v3 = [members _cn_firstObjectPassingTest:&__block_literal_global_61];

  return v3;
}

- (id)primaryAccount
{
  myFamilyMemberRecord = [(CNFamilyCircleAccountSource *)self myFamilyMemberRecord];
  if (myFamilyMemberRecord)
  {
    v3 = (*(CNCoreDelegateInfoFromFamilyMember + 2))(CNCoreDelegateInfoFromFamilyMember, myFamilyMemberRecord);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)delegateAccounts
{
  myFamilyMemberRecord = [(CNFamilyCircleAccountSource *)self myFamilyMemberRecord];
  if ([CNFamilyMember isAdministrativeGuardianFamilyMember:myFamilyMemberRecord])
  {
    members = [(FAFamilyCircle *)self->_familyCircle members];
    v5 = [members _cn_filter:CNFamilyMemberIsDelegateChild];
    v6 = [v5 _cn_map:CNCoreDelegateInfoFromFamilyMember];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

@end