@interface CRKASMConcreteUser
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConcreteUser:(id)a3;
- (CRKASMConcreteUser)initWithBackingPerson:(id)a3;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation CRKASMConcreteUser

- (CRKASMConcreteUser)initWithBackingPerson:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = CRKASMConcreteUser;
  v6 = [(CRKASMConcreteUser *)&v16 init];
  if (v6)
  {
    v7 = [v5 objectID];
    identifier = v6->_identifier;
    v6->_identifier = v7;

    v9 = [v5 appleID];
    appleID = v6->_appleID;
    v6->_appleID = v9;

    v11 = [[CRKASMConcreteNameComponents alloc] initWithPerson:v5];
    nameComponents = v6->_nameComponents;
    v6->_nameComponents = v11;

    objc_storeStrong(&v6->_backingPerson, a3);
    v13 = [v5 dateLastModified];
    backingPersonInitialModificationDate = v6->_backingPersonInitialModificationDate;
    v6->_backingPersonInitialModificationDate = v13;

    v6->_federated = [v5 isFederatedAccount];
    v6->_accountLockedDueToFailedLoginAttempts = [v5 isAccountFailedPasswordLocked];
    v6->_accountATOLocked = [v5 isAccountATOLocked];
  }

  return v6;
}

- (BOOL)isEqualToConcreteUser:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    LOBYTE(v11) = 0;
    goto LABEL_36;
  }

  v9 = [(CRKASMConcreteUser *)self identifier];
  if (v9 || ([v8 identifier], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(CRKASMConcreteUser *)self identifier];
    v4 = [v8 identifier];
    if (![v3 isEqual:v4])
    {
      LOBYTE(v11) = 0;
      goto LABEL_32;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v12 = [(CRKASMConcreteUser *)self appleID];
  if (v12 || ([v8 appleID], (v24 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = [(CRKASMConcreteUser *)self appleID];
    v5 = [v8 appleID];
    if (![v13 isEqual:v5])
    {
      LOBYTE(v11) = 0;
      goto LABEL_29;
    }

    v23 = v13;
    v25 = 1;
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v26 = v5;
  v27 = v10;
  v14 = [(CRKASMConcreteUser *)self nameComponents];
  if (v14 || ([v8 nameComponents], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = [(CRKASMConcreteUser *)self nameComponents];
    v5 = [v8 nameComponents];
    if (![v10 isEqual:v5])
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

  v15 = [(CRKASMConcreteUser *)self isFederated];
  if (v15 != [v8 isFederated] || (v16 = -[CRKASMConcreteUser isAccountLockedDueToFailedLoginAttempts](self, "isAccountLockedDueToFailedLoginAttempts"), v16 != objc_msgSend(v8, "isAccountLockedDueToFailedLoginAttempts")))
  {
    LOBYTE(v11) = 0;
    v6 = v22;
    if (!v21)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v18 = [(CRKASMConcreteUser *)self isAccountATOLocked];
  v11 = v18 ^ [v8 isAccountATOLocked] ^ 1;
  v6 = v22;
  if (v21)
  {
LABEL_24:
  }

LABEL_25:
  LODWORD(v10) = v27;
  v5 = v26;
  if (v14)
  {

    if (!v25)
    {
      goto LABEL_30;
    }

    v13 = v23;
  }

  else
  {

    v13 = v23;
    if ((v25 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

LABEL_29:

LABEL_30:
  if (!v12)
  {

    if ((v10 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (v10)
  {
LABEL_32:
  }

LABEL_33:
  if (!v9)
  {
  }

LABEL_36:
  return v11;
}

- (unint64_t)hash
{
  v3 = [(CRKASMConcreteUser *)self identifier];
  v4 = [v3 hash];
  v5 = [(CRKASMConcreteUser *)self appleID];
  v6 = [v5 hash] ^ v4;
  v7 = [(CRKASMConcreteUser *)self nameComponents];
  v8 = v6 ^ [v7 hash];
  v9 = [(CRKASMConcreteUser *)self isFederated];
  v10 = v8 ^ v9 ^ [(CRKASMConcreteUser *)self isAccountLockedDueToFailedLoginAttempts];
  v11 = [(CRKASMConcreteUser *)self isAccountATOLocked];

  return v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else if ([(CRKASMConcreteUser *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(CRKASMConcreteUser *)self isEqualToConcreteUser:v4];
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
  v5 = [(CRKASMConcreteUser *)self identifier];
  v6 = [(CRKASMConcreteUser *)self appleID];
  v7 = [(CRKASMConcreteUser *)self nameComponents];
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

  v13 = [v3 stringWithFormat:@"<%@: %p { identifier = %@, appleID = %@, nameComponents = %@, isFederated = %@, isAccountLockedDueToFailedLoginAttempts = %@, isAccountATOLocked = %@ }>", v4, self, v5, v6, v7, v9, v11, v12];

  return v13;
}

@end