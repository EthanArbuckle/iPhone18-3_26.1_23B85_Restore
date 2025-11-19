@interface CNFamilyCircleAccountSource
- (CNFamilyCircleAccountSource)initWithFamilyCircle:(id)a3;
- (NSString)description;
- (id)delegateAccounts;
- (id)myFamilyMemberRecord;
- (id)primaryAccount;
@end

@implementation CNFamilyCircleAccountSource

- (CNFamilyCircleAccountSource)initWithFamilyCircle:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNFamilyCircleAccountSource;
  v6 = [(CNFamilyCircleAccountSource *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_familyCircle, a3);
    v8 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"familyCircle" object:self->_familyCircle];
  v5 = [v3 build];

  return v5;
}

- (id)myFamilyMemberRecord
{
  v2 = [(FAFamilyCircle *)self->_familyCircle members];
  v3 = [v2 _cn_firstObjectPassingTest:&__block_literal_global_61];

  return v3;
}

- (id)primaryAccount
{
  v2 = [(CNFamilyCircleAccountSource *)self myFamilyMemberRecord];
  if (v2)
  {
    v3 = (*(CNCoreDelegateInfoFromFamilyMember + 2))(CNCoreDelegateInfoFromFamilyMember, v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)delegateAccounts
{
  v3 = [(CNFamilyCircleAccountSource *)self myFamilyMemberRecord];
  if ([CNFamilyMember isAdministrativeGuardianFamilyMember:v3])
  {
    v4 = [(FAFamilyCircle *)self->_familyCircle members];
    v5 = [v4 _cn_filter:CNFamilyMemberIsDelegateChild];
    v6 = [v5 _cn_map:CNCoreDelegateInfoFromFamilyMember];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

@end