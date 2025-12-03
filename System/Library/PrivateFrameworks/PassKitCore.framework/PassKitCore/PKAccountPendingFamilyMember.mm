@interface PKAccountPendingFamilyMember
- (BOOL)_isEqualToAccountPendingFamilyMember:(id)member;
- (BOOL)isEqual:(id)equal;
- (PKAccountPendingFamilyMember)initWithCoder:(id)coder;
- (PKAccountPendingFamilyMember)initWithPendingFamilyMember:(id)member accountIdentifier:(id)identifier;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountPendingFamilyMember

- (PKAccountPendingFamilyMember)initWithPendingFamilyMember:(id)member accountIdentifier:(id)identifier
{
  memberCopy = member;
  identifierCopy = identifier;
  v17.receiver = self;
  v17.super_class = PKAccountPendingFamilyMember;
  v8 = [(PKAccountPendingFamilyMember *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accountIdentifier, identifier);
    invitationDate = [memberCopy invitationDate];
    inviteDate = v9->_inviteDate;
    v9->_inviteDate = invitationDate;

    inviteEmail = [memberCopy inviteEmail];
    inviteEmail = v9->_inviteEmail;
    v9->_inviteEmail = inviteEmail;

    v9->_displayedNotification = 0;
    altDSID = [memberCopy altDSID];
    altDSID = v9->_altDSID;
    v9->_altDSID = altDSID;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountPendingFamilyMember *)self _isEqualToAccountPendingFamilyMember:v5];
  }

  return v6;
}

- (BOOL)_isEqualToAccountPendingFamilyMember:(id)member
{
  memberCopy = member;
  v5 = memberCopy;
  if (!memberCopy)
  {
    goto LABEL_19;
  }

  v6 = *(memberCopy + 3);
  v7 = self->_inviteEmail;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    LOBYTE(v10) = 0;
    if (!v7 || !v8)
    {
      goto LABEL_26;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_27;
    }
  }

  inviteDate = self->_inviteDate;
  v12 = *(v5 + 4);
  if (inviteDate && v12)
  {
    if (([(NSDate *)inviteDate isEqual:?]& 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (inviteDate != v12)
  {
    goto LABEL_19;
  }

  if (self->_displayedNotification == v5[8])
  {
    v13 = *(v5 + 2);
    v7 = self->_accountIdentifier;
    v14 = v13;
    v9 = v14;
    if (v7 == v14)
    {

LABEL_21:
      altDSID = self->_altDSID;
      v16 = *(v5 + 5);
      v7 = altDSID;
      v17 = v16;
      v9 = v17;
      if (v7 == v17)
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        LOBYTE(v10) = 0;
        if (v7 && v17)
        {
          LOBYTE(v10) = [(NSString *)v7 isEqualToString:v17];
        }
      }

      goto LABEL_26;
    }

    LOBYTE(v10) = 0;
    if (v7 && v14)
    {
      v10 = [(NSString *)v7 isEqualToString:v14];

      if (!v10)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

LABEL_26:

    goto LABEL_27;
  }

LABEL_19:
  LOBYTE(v10) = 0;
LABEL_27:

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_inviteEmail];
  [v3 safelyAddObject:self->_inviteDate];
  [v3 safelyAddObject:self->_accountIdentifier];
  [v3 safelyAddObject:self->_altDSID];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_displayedNotification - v4 + 32 * v4;

  return v5;
}

- (PKAccountPendingFamilyMember)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKAccountPendingFamilyMember;
  v5 = [(PKAccountPendingFamilyMember *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inviteDate"];
    inviteDate = v5->_inviteDate;
    v5->_inviteDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inviteEmail"];
    inviteEmail = v5->_inviteEmail;
    v5->_inviteEmail = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v10;

    v5->_displayedNotification = [coderCopy decodeBoolForKey:@"displayedNotification"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  displayedNotification = self->_displayedNotification;
  coderCopy = coder;
  [coderCopy encodeBool:displayedNotification forKey:@"displayedNotification"];
  [coderCopy encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [coderCopy encodeObject:self->_inviteEmail forKey:@"inviteEmail"];
  [coderCopy encodeObject:self->_inviteDate forKey:@"inviteDate"];
  [coderCopy encodeObject:self->_altDSID forKey:@"altDSID"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"inviteEmail: '%@'; ", self->_inviteEmail];
  [v3 appendFormat:@"inviteDate: '%@'; ", self->_inviteDate];
  [v3 appendFormat:@"accountIdentifier: '%@'; ", self->_accountIdentifier];
  [v3 appendFormat:@"altDSID: '%@'; ", self->_altDSID];
  if (self->_displayedNotification)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"displayedNotification: '%@'; ", v4];
  [v3 appendFormat:@">"];

  return v3;
}

@end