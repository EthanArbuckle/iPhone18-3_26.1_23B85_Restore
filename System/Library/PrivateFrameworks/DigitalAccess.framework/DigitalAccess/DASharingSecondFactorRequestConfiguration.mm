@interface DASharingSecondFactorRequestConfiguration
- (DASharingSecondFactorRequestConfiguration)initWithCoder:(id)coder;
- (DASharingSecondFactorRequestConfiguration)initWithInvitationIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier recipientFlow:(BOOL)flow secondFactorList:(id)list;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DASharingSecondFactorRequestConfiguration

- (DASharingSecondFactorRequestConfiguration)initWithInvitationIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier recipientFlow:(BOOL)flow secondFactorList:(id)list
{
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  listCopy = list;
  v17.receiver = self;
  v17.super_class = DASharingSecondFactorRequestConfiguration;
  v14 = [(DASharingSecondFactorRequestConfiguration *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_invitationIdentifier, identifier);
    objc_storeStrong(&v15->_keyIdentifier, keyIdentifier);
    v15->_recipientFlow = flow;
    objc_storeStrong(&v15->_secondFactorList, list);
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  invitationIdentifier = [(DASharingSecondFactorRequestConfiguration *)self invitationIdentifier];
  [coderCopy encodeObject:invitationIdentifier forKey:@"invitationIdentifier"];

  keyIdentifier = [(DASharingSecondFactorRequestConfiguration *)self keyIdentifier];
  [coderCopy encodeObject:keyIdentifier forKey:@"keyIdentifier"];

  [coderCopy encodeBool:-[DASharingSecondFactorRequestConfiguration recipientFlow](self forKey:{"recipientFlow"), @"recipientFlow"}];
  secondFactorList = [(DASharingSecondFactorRequestConfiguration *)self secondFactorList];
  [coderCopy encodeObject:secondFactorList forKey:@"secondFactorList"];
}

- (DASharingSecondFactorRequestConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = DASharingSecondFactorRequestConfiguration;
  v5 = [(DASharingSecondFactorRequestConfiguration *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitationIdentifier"];
    invitationIdentifier = v5->_invitationIdentifier;
    v5->_invitationIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyIdentifier"];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v8;

    v5->_recipientFlow = [coderCopy decodeBoolForKey:@"recipientFlow"];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"secondFactorList"];
    secondFactorList = v5->_secondFactorList;
    v5->_secondFactorList = v13;
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invitation ID              : %@\n", self->_invitationIdentifier];
  [string appendString:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Key ID                     : %@\n", self->_keyIdentifier];
  [string appendString:v5];

  if (self->_recipientFlow)
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Recipient Flow             : %@\n", v6];
  [string appendString:v7];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Second factor config count : %ld\n", -[NSArray count](self->_secondFactorList, "count")];
  [string appendString:v8];

  return string;
}

@end