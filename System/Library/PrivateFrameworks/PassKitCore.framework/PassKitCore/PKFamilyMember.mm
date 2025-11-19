@interface PKFamilyMember
- (BOOL)hasAppleIDAlias:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFamilyMember:(id)a3;
- (CNContact)contact;
- (NSString)firstName;
- (NSString)lastName;
- (PKFamilyMember)initWithCoder:(id)a3;
- (PKFamilyMember)initWithFAFamilyMember:(id)a3;
- (id)description;
- (id)labelName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFamilyMember

- (PKFamilyMember)initWithFAFamilyMember:(id)a3
{
  v5 = a3;
  v45.receiver = self;
  v45.super_class = PKFamilyMember;
  v6 = [(PKFamilyMember *)&v45 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_18;
  }

  objc_storeStrong(&v6->_member, a3);
  v8 = [v5 statusString];
  v9 = [v8 lowercaseString];
  v10 = v9;
  if (v9 == @"accepted")
  {
    goto LABEL_5;
  }

  if (!v9)
  {
    goto LABEL_9;
  }

  v11 = [(__CFString *)v9 isEqualToString:@"accepted"];

  if (v11)
  {
LABEL_5:
    v12 = 2;
    goto LABEL_10;
  }

  v13 = v10;
  if (v13 == @"pending" || (v14 = v13, v15 = [(__CFString *)v13 isEqualToString:@"pending"], v14, v15))
  {
    v12 = 1;
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

LABEL_10:

  v7->_status = v12;
  v7->_me = [v5 isMe];
  v16 = [v5 appleID];
  appleID = v7->_appleID;
  v7->_appleID = v16;

  v18 = [v5 dsid];
  dsid = v7->_dsid;
  v7->_dsid = v18;

  v20 = [v5 altDSID];
  altDSID = v7->_altDSID;
  v7->_altDSID = v20;

  v22 = [v5 firstName];
  firstName = v7->_firstName;
  v7->_firstName = v22;

  v24 = [v5 lastName];
  lastName = v7->_lastName;
  v7->_lastName = v24;

  v26 = [v5 joinedDate];
  joinedDate = v7->_joinedDate;
  v7->_joinedDate = v26;

  v7->_parentalControlsEnabled = [v5 hasParentalControlsEnabled];
  v7->_askToBuyEnabled = [v5 hasAskToBuyEnabled];
  v7->_parent = [v5 isParent];
  v7->_organizer = [v5 isOrganizer];
  v28 = [v5 dictionary];
  v29 = [v28 PKSetContaining:objc_opt_class() forKey:@"member-appleID-aliases"];
  appleIDAliases = v7->_appleIDAliases;
  v7->_appleIDAliases = v29;

  v31 = [v5 inviteEmail];
  inviteEmail = v7->_inviteEmail;
  v7->_inviteEmail = v31;

  v33 = [v5 invitationDate];
  invitationDate = v7->_invitationDate;
  v7->_invitationDate = v33;

  if (PKPreferenceBOOLforKey(@"PKForceU13AccountKey"))
  {
    v35 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-378432000.0];
    dateOfBirth = v7->_dateOfBirth;
    v7->_dateOfBirth = v35;

    v7->_childAccount = 1;
    v7->_memberType = 2;
    v7->_age = 12;
  }

  else
  {
    v37 = [v5 dictionary];
    v38 = [v37 objectForKey:@"member-date-of-birth"];

    if (v38)
    {
      [v38 doubleValue];
      v40 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v39 / 1000.0];
      v41 = v7->_dateOfBirth;
      v7->_dateOfBirth = v40;
    }

    v7->_childAccount = [v5 isChildAccount];
    v42 = [v5 memberType];
    if (v42 >= 3)
    {
      v43 = -1;
    }

    else
    {
      v43 = v42;
    }

    v7->_memberType = v43;
    v7->_age = [v5 age];
  }

LABEL_18:

  return v7;
}

- (PKFamilyMember)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = PKFamilyMember;
  v5 = [(PKFamilyMember *)&v35 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"member"];
    member = v5->_member;
    v5->_member = v6;

    v5->_status = [v4 decodeIntegerForKey:@"status"];
    v5->_me = [v4 decodeBoolForKey:@"me"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dsid"];
    dsid = v5->_dsid;
    v5->_dsid = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
    firstName = v5->_firstName;
    v5->_firstName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
    lastName = v5->_lastName;
    v5->_lastName = v16;

    v5->_age = [v4 decodeIntegerForKey:@"age"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"memberType"];
    v5->_memberType = PKFamilyMemberTypeFromString(v18);

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"joinedDate"];
    joinedDate = v5->_joinedDate;
    v5->_joinedDate = v19;

    v5->_childAccount = [v4 decodeBoolForKey:@"childAccount"];
    v5->_parentalControlsEnabled = [v4 decodeBoolForKey:@"parentalControlsEnabled"];
    v5->_askToBuyEnabled = [v4 decodeBoolForKey:@"askToBuyEnabled"];
    v5->_parent = [v4 decodeBoolForKey:@"parent"];
    v5->_organizer = [v4 decodeBoolForKey:@"organizer"];
    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateOfBirth"];
    dateOfBirth = v5->_dateOfBirth;
    v5->_dateOfBirth = v21;

    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"appleIDAliases"];
    appleIDAliases = v5->_appleIDAliases;
    v5->_appleIDAliases = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contact"];
    contact = v5->_contact;
    v5->_contact = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inviteEmail"];
    inviteEmail = v5->_inviteEmail;
    v5->_inviteEmail = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitationDate"];
    invitationDate = v5->_invitationDate;
    v5->_invitationDate = v32;
  }

  return v5;
}

- (CNContact)contact
{
  contact = self->_contact;
  if (!contact)
  {
    v4 = [(FAFamilyMember *)self->_member contact];
    v5 = self->_contact;
    self->_contact = v4;

    contact = self->_contact;
  }

  return contact;
}

- (NSString)firstName
{
  firstName = self->_firstName;
  if (firstName)
  {
    v3 = firstName;
  }

  else
  {
    v4 = [(PKFamilyMember *)self contact];
    v3 = [v4 givenName];
  }

  return v3;
}

- (NSString)lastName
{
  lastName = self->_lastName;
  if (lastName)
  {
    v3 = lastName;
  }

  else
  {
    v4 = [(PKFamilyMember *)self contact];
    v3 = [v4 familyName];
  }

  return v3;
}

- (id)labelName
{
  v3 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  v4 = [(PKFamilyMember *)self lastName];
  [v3 setFamilyName:v4];

  v5 = [(PKFamilyMember *)self firstName];
  [v3 setGivenName:v5];

  v6 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v3 style:2 options:0];

  return v6;
}

- (BOOL)hasAppleIDAlias:(id)a3
{
  v4 = a3;
  appleID = self->_appleID;
  v6 = v4;
  v7 = appleID;
  v8 = v7;
  if (v7 == v6)
  {
  }

  else
  {
    if (!v6 || !v7)
    {

LABEL_9:
      v10 = [(NSSet *)self->_appleIDAliases containsObject:v6];
      goto LABEL_10;
    }

    v9 = [(NSString *)v6 isEqualToString:v7];

    if (!v9)
    {
      goto LABEL_9;
    }
  }

  v10 = 1;
LABEL_10:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeObject:self->_member forKey:@"member"];
  [v6 encodeInteger:self->_status forKey:@"status"];
  [v6 encodeBool:self->_me forKey:@"me"];
  [v6 encodeObject:self->_appleID forKey:@"appleID"];
  [v6 encodeObject:self->_dsid forKey:@"dsid"];
  [v6 encodeObject:self->_altDSID forKey:@"altDSID"];
  [v6 encodeObject:self->_firstName forKey:@"firstName"];
  [v6 encodeObject:self->_lastName forKey:@"lastName"];
  [v6 encodeInteger:self->_age forKey:@"age"];
  memberType = self->_memberType;
  if (memberType > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E79DF5A8[memberType];
  }

  [v6 encodeObject:v5 forKey:@"memberType"];
  [v6 encodeObject:self->_joinedDate forKey:@"joinedDate"];
  [v6 encodeBool:self->_childAccount forKey:@"childAccount"];
  [v6 encodeBool:self->_parentalControlsEnabled forKey:@"parentalControlsEnabled"];
  [v6 encodeBool:self->_askToBuyEnabled forKey:@"askToBuyEnabled"];
  [v6 encodeBool:self->_parent forKey:@"parent"];
  [v6 encodeBool:self->_organizer forKey:@"organizer"];
  [v6 encodeObject:self->_dateOfBirth forKey:@"dateOfBirth"];
  [v6 encodeObject:self->_appleIDAliases forKey:@"appleIDAliases"];
  [v6 encodeObject:self->_contact forKey:@"contact"];
  [v6 encodeObject:self->_invitationDate forKey:@"invitationDate"];
  [v6 encodeObject:self->_inviteEmail forKey:@"inviteEmail"];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKFamilyMember *)self isEqualToFamilyMember:v5];
  }

  return v6;
}

- (BOOL)isEqualToFamilyMember:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v3 = 0;
    goto LABEL_16;
  }

  status = self->_status;
  if (status == 2)
  {
LABEL_5:
    dsid = self->_dsid;
    v9 = v6[6];
    if (dsid && v9)
    {
      v3 = [(NSNumber *)dsid isEqual:?];
    }

    else
    {
      v3 = dsid == v9;
    }

    goto LABEL_16;
  }

  if (status != 1)
  {
    if (status)
    {
      goto LABEL_16;
    }

    goto LABEL_5;
  }

  v10 = v5[15];
  v11 = self->_inviteEmail;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
    if (v11 && v12)
    {
      v3 = [(NSString *)v11 isEqualToString:v12];
    }
  }

LABEL_16:
  return v3 & 1;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = v3;
  status = self->_status;
  if (status <= 2)
  {
    [v3 safelyAddObject:*(&self->super.isa + qword_1ADB9B130[status])];
  }

  v6 = PKCombinedHash(17, v4);

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_me)
  {
    [v3 appendFormat:@"isMe: '%@'; ", @"YES"];
  }

  memberType = self->_memberType;
  if (memberType > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E79DF5A8[memberType];
  }

  [v4 appendFormat:@"memberType: '%@'; ", v6];
  [v4 appendFormat:@"dsid: '%@'; ", self->_dsid];
  [v4 appendFormat:@"altDSID: '%@'; ", self->_altDSID];
  if (self->_childAccount)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v4 appendFormat:@"childAccount: '%@'; ", v7];
  if (self->_parent)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v4 appendFormat:@"parent: '%@'; ", v8];
  if (self->_organizer)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v4 appendFormat:@"organizer: '%@'; ", v9];
  if (self->_status == 1)
  {
    [v4 appendFormat:@"inviteEmail: '%@'; ", self->_inviteEmail];
    [v4 appendFormat:@"invitationDate: '%@'; ", self->_invitationDate];
  }

  [v4 appendFormat:@">"];

  return v4;
}

@end