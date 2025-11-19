@interface DASharingSecondFactorRequestConfiguration
- (DASharingSecondFactorRequestConfiguration)initWithCoder:(id)a3;
- (DASharingSecondFactorRequestConfiguration)initWithInvitationIdentifier:(id)a3 keyIdentifier:(id)a4 recipientFlow:(BOOL)a5 secondFactorList:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DASharingSecondFactorRequestConfiguration

- (DASharingSecondFactorRequestConfiguration)initWithInvitationIdentifier:(id)a3 keyIdentifier:(id)a4 recipientFlow:(BOOL)a5 secondFactorList:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = DASharingSecondFactorRequestConfiguration;
  v14 = [(DASharingSecondFactorRequestConfiguration *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_invitationIdentifier, a3);
    objc_storeStrong(&v15->_keyIdentifier, a4);
    v15->_recipientFlow = a5;
    objc_storeStrong(&v15->_secondFactorList, a6);
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DASharingSecondFactorRequestConfiguration *)self invitationIdentifier];
  [v4 encodeObject:v5 forKey:@"invitationIdentifier"];

  v6 = [(DASharingSecondFactorRequestConfiguration *)self keyIdentifier];
  [v4 encodeObject:v6 forKey:@"keyIdentifier"];

  [v4 encodeBool:-[DASharingSecondFactorRequestConfiguration recipientFlow](self forKey:{"recipientFlow"), @"recipientFlow"}];
  v7 = [(DASharingSecondFactorRequestConfiguration *)self secondFactorList];
  [v4 encodeObject:v7 forKey:@"secondFactorList"];
}

- (DASharingSecondFactorRequestConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = DASharingSecondFactorRequestConfiguration;
  v5 = [(DASharingSecondFactorRequestConfiguration *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitationIdentifier"];
    invitationIdentifier = v5->_invitationIdentifier;
    v5->_invitationIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"keyIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v8;

    v5->_recipientFlow = [v4 decodeBoolForKey:@"recipientFlow"];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"secondFactorList"];
    secondFactorList = v5->_secondFactorList;
    v5->_secondFactorList = v13;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invitation ID              : %@\n", self->_invitationIdentifier];
  [v3 appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Key ID                     : %@\n", self->_keyIdentifier];
  [v3 appendString:v5];

  if (self->_recipientFlow)
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Recipient Flow             : %@\n", v6];
  [v3 appendString:v7];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Second factor config count : %ld\n", -[NSArray count](self->_secondFactorList, "count")];
  [v3 appendString:v8];

  return v3;
}

@end