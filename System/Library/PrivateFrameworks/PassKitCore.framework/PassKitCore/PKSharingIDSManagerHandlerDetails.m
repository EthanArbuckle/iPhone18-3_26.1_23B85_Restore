@interface PKSharingIDSManagerHandlerDetails
- (PKSharingIDSManagerHandlerDetails)initWithFamilyMember:(id)a3;
- (PKSharingIDSManagerHandlerDetails)initWithFamilyMember:(id)a3 accountUser:(id)a4;
- (id)aliases;
- (id)allHandles;
- (id)description;
- (id)primaryAppleID;
@end

@implementation PKSharingIDSManagerHandlerDetails

- (PKSharingIDSManagerHandlerDetails)initWithFamilyMember:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKSharingIDSManagerHandlerDetails;
  v6 = [(PKSharingIDSManagerHandlerDetails *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_familyMember, a3);
  }

  return v7;
}

- (PKSharingIDSManagerHandlerDetails)initWithFamilyMember:(id)a3 accountUser:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKSharingIDSManagerHandlerDetails;
  v9 = [(PKSharingIDSManagerHandlerDetails *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_familyMember, a3);
    objc_storeStrong(&v10->_accountUser, a4);
  }

  return v10;
}

- (id)allHandles
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PKSharingIDSManagerHandlerDetails *)self aliases];
  if ([v4 count])
  {
    v5 = [v4 allObjects];
    [v3 addObjectsFromArray:v5];
  }

  v6 = [(PKSharingIDSManagerHandlerDetails *)self primaryAppleID];
  if (v6 && ([v4 containsObject:v6] & 1) == 0)
  {
    [v3 insertObject:v6 atIndex:0];
  }

  v7 = [v3 copy];

  return v7;
}

- (id)primaryAppleID
{
  familyMember = self->_familyMember;
  if (familyMember || (familyMember = self->_accountUser) != 0)
  {
    familyMember = [familyMember appleID];
    v2 = vars8;
  }

  return familyMember;
}

- (id)aliases
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(PKFamilyMember *)self->_familyMember appleIDAliases];
  if (v4)
  {
    [v3 unionSet:v4];
  }

  v5 = [(PKAccountUser *)self->_accountUser addressableHandles];
  if (v5)
  {
    [v3 unionSet:v5];
  }

  v6 = [v3 copy];

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"familyMember: '%@'; ", self->_familyMember];
  [v3 appendFormat:@"accountUser: '%@'; ", self->_accountUser];
  v4 = [(PKSharingIDSManagerHandlerDetails *)self allHandles];
  [v3 appendFormat:@"handles: '%@'; ", v4];

  return v3;
}

@end