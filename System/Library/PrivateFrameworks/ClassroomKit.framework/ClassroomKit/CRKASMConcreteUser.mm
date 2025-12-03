@interface CRKASMConcreteUser
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConcreteUser:(id)user;
- (CRKASMConcreteUser)initWithBackingPerson:(id)person;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation CRKASMConcreteUser

- (CRKASMConcreteUser)initWithBackingPerson:(id)person
{
  personCopy = person;
  v16.receiver = self;
  v16.super_class = CRKASMConcreteUser;
  v6 = [(CRKASMConcreteUser *)&v16 init];
  if (v6)
  {
    objectID = [personCopy objectID];
    identifier = v6->_identifier;
    v6->_identifier = objectID;

    appleID = [personCopy appleID];
    appleID = v6->_appleID;
    v6->_appleID = appleID;

    v11 = [[CRKASMConcreteNameComponents alloc] initWithPerson:personCopy];
    nameComponents = v6->_nameComponents;
    v6->_nameComponents = v11;

    objc_storeStrong(&v6->_backingPerson, person);
    dateLastModified = [personCopy dateLastModified];
    backingPersonInitialModificationDate = v6->_backingPersonInitialModificationDate;
    v6->_backingPersonInitialModificationDate = dateLastModified;

    v6->_federated = [personCopy isFederatedAccount];
    v6->_accountLockedDueToFailedLoginAttempts = [personCopy isAccountFailedPasswordLocked];
    v6->_accountATOLocked = [personCopy isAccountATOLocked];
  }

  return v6;
}

- (BOOL)isEqualToConcreteUser:(id)user
{
  userCopy = user;
  if (!userCopy)
  {
    LOBYTE(v11) = 0;
    goto LABEL_36;
  }

  identifier = [(CRKASMConcreteUser *)self identifier];
  if (identifier || ([userCopy identifier], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    identifier2 = [(CRKASMConcreteUser *)self identifier];
    identifier3 = [userCopy identifier];
    if (![identifier2 isEqual:identifier3])
    {
      LOBYTE(v11) = 0;
      goto LABEL_32;
    }

    nameComponents2 = 1;
  }

  else
  {
    nameComponents2 = 0;
  }

  appleID = [(CRKASMConcreteUser *)self appleID];
  if (appleID || ([userCopy appleID], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    appleID2 = [(CRKASMConcreteUser *)self appleID];
    appleID3 = [userCopy appleID];
    if (![appleID2 isEqual:appleID3])
    {
      LOBYTE(v11) = 0;
      goto LABEL_29;
    }

    v23 = appleID2;
    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v26 = appleID3;
  v27 = nameComponents2;
  nameComponents = [(CRKASMConcreteUser *)self nameComponents];
  if (nameComponents || ([userCopy nameComponents], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    nameComponents2 = [(CRKASMConcreteUser *)self nameComponents];
    appleID3 = [userCopy nameComponents];
    if (![nameComponents2 isEqual:appleID3])
    {
      LOBYTE(v11) = 0;
      goto LABEL_24;
    }

    v22 = v6;
    v21 = 1;
  }

  else
  {
    v22 = v6;
    v20 = 0;
    v21 = 0;
  }

  isFederated = [(CRKASMConcreteUser *)self isFederated];
  if (isFederated != [userCopy isFederated] || (v16 = -[CRKASMConcreteUser isAccountLockedDueToFailedLoginAttempts](self, "isAccountLockedDueToFailedLoginAttempts"), v16 != objc_msgSend(userCopy, "isAccountLockedDueToFailedLoginAttempts")))
  {
    LOBYTE(v11) = 0;
    v6 = v22;
    if (!v21)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  isAccountATOLocked = [(CRKASMConcreteUser *)self isAccountATOLocked];
  v11 = isAccountATOLocked ^ [userCopy isAccountATOLocked] ^ 1;
  v6 = v22;
  if (v21)
  {
LABEL_24:
  }

LABEL_25:
  LODWORD(nameComponents2) = v27;
  appleID3 = v26;
  if (nameComponents)
  {

    if (!v25)
    {
      goto LABEL_30;
    }

    appleID2 = v23;
  }

  else
  {

    appleID2 = v23;
    if ((v25 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_29:

LABEL_30:
  if (!appleID)
  {

    if ((nameComponents2 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (nameComponents2)
  {
LABEL_32:
  }

LABEL_33:
  if (!identifier)
  {
  }

LABEL_36:
  return v11;
}

- (unint64_t)hash
{
  identifier = [(CRKASMConcreteUser *)self identifier];
  v4 = [identifier hash];
  appleID = [(CRKASMConcreteUser *)self appleID];
  v6 = [appleID hash] ^ v4;
  nameComponents = [(CRKASMConcreteUser *)self nameComponents];
  v8 = v6 ^ [nameComponents hash];
  isFederated = [(CRKASMConcreteUser *)self isFederated];
  v10 = v8 ^ isFederated ^ [(CRKASMConcreteUser *)self isAccountLockedDueToFailedLoginAttempts];
  isAccountATOLocked = [(CRKASMConcreteUser *)self isAccountATOLocked];

  return v10 ^ isAccountATOLocked;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else if ([(CRKASMConcreteUser *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(CRKASMConcreteUser *)self isEqualToConcreteUser:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(CRKASMConcreteUser *)self identifier];
  appleID = [(CRKASMConcreteUser *)self appleID];
  nameComponents = [(CRKASMConcreteUser *)self nameComponents];
  if ([(CRKASMConcreteUser *)self isFederated])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = v8;
  if ([(CRKASMConcreteUser *)self isAccountLockedDueToFailedLoginAttempts])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = v10;
  if ([(CRKASMConcreteUser *)self isAccountATOLocked])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v13 = [v3 stringWithFormat:@"<%@: %p { identifier = %@, appleID = %@, nameComponents = %@, isFederated = %@, isAccountLockedDueToFailedLoginAttempts = %@, isAccountATOLocked = %@ }>", v4, self, identifier, appleID, nameComponents, v9, v11, v12];

  return v13;
}

@end