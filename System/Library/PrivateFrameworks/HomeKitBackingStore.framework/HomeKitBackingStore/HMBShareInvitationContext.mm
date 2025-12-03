@interface HMBShareInvitationContext
- (BOOL)isEqual:(id)equal;
- (HMBShareInvitationContext)initWithCoder:(id)coder;
- (HMBShareInvitationContext)initWithParticipantClientIdentifier:(id)identifier cloudShareID:(id)d;
- (HMBShareInvitationContext)initWithParticipantClientIdentifier:(id)identifier emailAddress:(id)address;
- (HMBShareInvitationContext)initWithParticipantClientIdentifier:(id)identifier lookupInfo:(id)info;
- (HMBShareInvitationContext)initWithParticipantClientIdentifier:(id)identifier phoneNumber:(id)number;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMBShareInvitationContext

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  participantClientIdentifier = [(HMBShareInvitationContext *)self participantClientIdentifier];
  [coderCopy encodeObject:participantClientIdentifier forKey:@"HMBUIC.pci"];

  [coderCopy encodeBool:-[HMBShareInvitationContext shouldGrantWriteAccess](self forKey:{"shouldGrantWriteAccess"), @"HMBUIC.sgwa"}];
  lookupInfo = [(HMBShareInvitationContext *)self lookupInfo];
  [coderCopy encodeObject:lookupInfo forKey:@"HMBUIC.li"];
}

- (HMBShareInvitationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMBUIC.pci"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMBUIC.li"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    v10 = [(HMBShareInvitationContext *)self initWithParticipantClientIdentifier:v5 lookupInfo:v6];
    v11 = v10;
    if (v10)
    {
      v10->_shouldGrantWriteAccess = [coderCopy decodeBoolForKey:@"HMBUIC.sgwa"];
    }

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMBShareInvitationContext allocWithZone:zone];
  participantClientIdentifier = [(HMBShareInvitationContext *)self participantClientIdentifier];
  lookupInfo = [(HMBShareInvitationContext *)self lookupInfo];
  v7 = [(HMBShareInvitationContext *)v4 initWithParticipantClientIdentifier:participantClientIdentifier lookupInfo:lookupInfo];

  [(HMBShareInvitationContext *)v7 setShouldGrantWriteAccess:[(HMBShareInvitationContext *)self shouldGrantWriteAccess]];
  return v7;
}

- (unint64_t)hash
{
  participantClientIdentifier = [(HMBShareInvitationContext *)self participantClientIdentifier];
  v4 = [participantClientIdentifier hash];

  shouldGrantWriteAccess = [(HMBShareInvitationContext *)self shouldGrantWriteAccess];
  lookupInfo = [(HMBShareInvitationContext *)self lookupInfo];
  v7 = v4 ^ [lookupInfo hash];

  return v7 ^ shouldGrantWriteAccess;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    participantClientIdentifier = [(HMBShareInvitationContext *)self participantClientIdentifier];
    participantClientIdentifier2 = [v6 participantClientIdentifier];
    if ([participantClientIdentifier isEqual:participantClientIdentifier2] && (v9 = -[HMBShareInvitationContext shouldGrantWriteAccess](self, "shouldGrantWriteAccess"), v9 == objc_msgSend(v6, "shouldGrantWriteAccess")))
    {
      lookupInfo = [(HMBShareInvitationContext *)self lookupInfo];
      lookupInfo2 = [v6 lookupInfo];
      v10 = [lookupInfo isEqual:lookupInfo2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)attributeDescriptions
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  participantClientIdentifier = [(HMBShareInvitationContext *)self participantClientIdentifier];
  v5 = [v3 initWithName:@"User Client Identifier" value:participantClientIdentifier];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMBShareInvitationContext *)self shouldGrantWriteAccess];
  v7 = HMFBooleanToString();
  v8 = [v6 initWithName:@"Should Grant Write Access" value:v7];
  v16[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  lookupInfo = [(HMBShareInvitationContext *)self lookupInfo];
  defaultFormatter = [MEMORY[0x277D0F8D8] defaultFormatter];
  v12 = [v9 initWithName:@"Lookup Info" value:lookupInfo options:2 formatter:defaultFormatter];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (HMBShareInvitationContext)initWithParticipantClientIdentifier:(id)identifier lookupInfo:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = HMBShareInvitationContext;
  v9 = [(HMBShareInvitationContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_participantClientIdentifier, identifier);
    objc_storeStrong(&v10->_lookupInfo, info);
  }

  return v10;
}

- (HMBShareInvitationContext)initWithParticipantClientIdentifier:(id)identifier cloudShareID:(id)d
{
  v6 = MEMORY[0x277CBC7C8];
  dCopy = d;
  identifierCopy = identifier;
  v9 = [v6 alloc];
  userRecordID = [dCopy userRecordID];

  v11 = [v9 initWithUserRecordID:userRecordID];
  v12 = [(HMBShareInvitationContext *)self initWithParticipantClientIdentifier:identifierCopy lookupInfo:v11];

  return v12;
}

- (HMBShareInvitationContext)initWithParticipantClientIdentifier:(id)identifier phoneNumber:(id)number
{
  v6 = MEMORY[0x277CBC7C8];
  numberCopy = number;
  identifierCopy = identifier;
  v9 = [[v6 alloc] initWithPhoneNumber:numberCopy];

  v10 = [(HMBShareInvitationContext *)self initWithParticipantClientIdentifier:identifierCopy lookupInfo:v9];
  return v10;
}

- (HMBShareInvitationContext)initWithParticipantClientIdentifier:(id)identifier emailAddress:(id)address
{
  v6 = MEMORY[0x277CBC7C8];
  addressCopy = address;
  identifierCopy = identifier;
  v9 = [[v6 alloc] initWithEmailAddress:addressCopy];

  v10 = [(HMBShareInvitationContext *)self initWithParticipantClientIdentifier:identifierCopy lookupInfo:v9];
  return v10;
}

@end