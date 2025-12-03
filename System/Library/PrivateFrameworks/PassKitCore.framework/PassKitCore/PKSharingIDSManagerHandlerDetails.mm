@interface PKSharingIDSManagerHandlerDetails
- (PKSharingIDSManagerHandlerDetails)initWithFamilyMember:(id)member;
- (PKSharingIDSManagerHandlerDetails)initWithFamilyMember:(id)member accountUser:(id)user;
- (id)aliases;
- (id)allHandles;
- (id)description;
- (id)primaryAppleID;
@end

@implementation PKSharingIDSManagerHandlerDetails

- (PKSharingIDSManagerHandlerDetails)initWithFamilyMember:(id)member
{
  memberCopy = member;
  v9.receiver = self;
  v9.super_class = PKSharingIDSManagerHandlerDetails;
  v6 = [(PKSharingIDSManagerHandlerDetails *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_familyMember, member);
  }

  return v7;
}

- (PKSharingIDSManagerHandlerDetails)initWithFamilyMember:(id)member accountUser:(id)user
{
  memberCopy = member;
  userCopy = user;
  v12.receiver = self;
  v12.super_class = PKSharingIDSManagerHandlerDetails;
  v9 = [(PKSharingIDSManagerHandlerDetails *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_familyMember, member);
    objc_storeStrong(&v10->_accountUser, user);
  }

  return v10;
}

- (id)allHandles
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  aliases = [(PKSharingIDSManagerHandlerDetails *)self aliases];
  if ([aliases count])
  {
    allObjects = [aliases allObjects];
    [v3 addObjectsFromArray:allObjects];
  }

  primaryAppleID = [(PKSharingIDSManagerHandlerDetails *)self primaryAppleID];
  if (primaryAppleID && ([aliases containsObject:primaryAppleID] & 1) == 0)
  {
    [v3 insertObject:primaryAppleID atIndex:0];
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
  appleIDAliases = [(PKFamilyMember *)self->_familyMember appleIDAliases];
  if (appleIDAliases)
  {
    [v3 unionSet:appleIDAliases];
  }

  addressableHandles = [(PKAccountUser *)self->_accountUser addressableHandles];
  if (addressableHandles)
  {
    [v3 unionSet:addressableHandles];
  }

  v6 = [v3 copy];

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"familyMember: '%@'; ", self->_familyMember];
  [v3 appendFormat:@"accountUser: '%@'; ", self->_accountUser];
  allHandles = [(PKSharingIDSManagerHandlerDetails *)self allHandles];
  [v3 appendFormat:@"handles: '%@'; ", allHandles];

  return v3;
}

@end