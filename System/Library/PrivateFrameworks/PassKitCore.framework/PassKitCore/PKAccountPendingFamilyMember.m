@interface PKAccountPendingFamilyMember
- (BOOL)_isEqualToAccountPendingFamilyMember:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKAccountPendingFamilyMember)initWithCoder:(id)a3;
- (PKAccountPendingFamilyMember)initWithPendingFamilyMember:(id)a3 accountIdentifier:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountPendingFamilyMember

- (PKAccountPendingFamilyMember)initWithPendingFamilyMember:(id)a3 accountIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = PKAccountPendingFamilyMember;
  v8 = [(PKAccountPendingFamilyMember *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_accountIdentifier, a4);
    v10 = [v6 invitationDate];
    inviteDate = v9->_inviteDate;
    v9->_inviteDate = v10;

    v12 = [v6 inviteEmail];
    inviteEmail = v9->_inviteEmail;
    v9->_inviteEmail = v12;

    v9->_displayedNotification = 0;
    v14 = [v6 altDSID];
    altDSID = v9->_altDSID;
    v9->_altDSID = v14;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountPendingFamilyMember *)self _isEqualToAccountPendingFamilyMember:v5];
  }

  return v6;
}

- (BOOL)_isEqualToAccountPendingFamilyMember:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_19;
  }

  v6 = *(v4 + 3);
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

- (PKAccountPendingFamilyMember)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKAccountPendingFamilyMember;
  v5 = [(PKAccountPendingFamilyMember *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inviteDate"];
    inviteDate = v5->_inviteDate;
    v5->_inviteDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inviteEmail"];
    inviteEmail = v5->_inviteEmail;
    v5->_inviteEmail = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v10;

    v5->_displayedNotification = [v4 decodeBoolForKey:@"displayedNotification"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  displayedNotification = self->_displayedNotification;
  v5 = a3;
  [v5 encodeBool:displayedNotification forKey:@"displayedNotification"];
  [v5 encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
  [v5 encodeObject:self->_inviteEmail forKey:@"inviteEmail"];
  [v5 encodeObject:self->_inviteDate forKey:@"inviteDate"];
  [v5 encodeObject:self->_altDSID forKey:@"altDSID"];
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