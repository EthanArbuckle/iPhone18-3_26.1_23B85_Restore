@interface HMBShareInvitationContext
- (BOOL)isEqual:(id)a3;
- (HMBShareInvitationContext)initWithCoder:(id)a3;
- (HMBShareInvitationContext)initWithParticipantClientIdentifier:(id)a3 cloudShareID:(id)a4;
- (HMBShareInvitationContext)initWithParticipantClientIdentifier:(id)a3 emailAddress:(id)a4;
- (HMBShareInvitationContext)initWithParticipantClientIdentifier:(id)a3 lookupInfo:(id)a4;
- (HMBShareInvitationContext)initWithParticipantClientIdentifier:(id)a3 phoneNumber:(id)a4;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMBShareInvitationContext

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMBShareInvitationContext *)self participantClientIdentifier];
  [v4 encodeObject:v5 forKey:@"HMBUIC.pci"];

  [v4 encodeBool:-[HMBShareInvitationContext shouldGrantWriteAccess](self forKey:{"shouldGrantWriteAccess"), @"HMBUIC.sgwa"}];
  v6 = [(HMBShareInvitationContext *)self lookupInfo];
  [v4 encodeObject:v6 forKey:@"HMBUIC.li"];
}

- (HMBShareInvitationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMBUIC.pci"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMBUIC.li"];
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
    v9 = 0;
  }

  else
  {
    v10 = [(HMBShareInvitationContext *)self initWithParticipantClientIdentifier:v5 lookupInfo:v6];
    v11 = v10;
    if (v10)
    {
      v10->_shouldGrantWriteAccess = [v4 decodeBoolForKey:@"HMBUIC.sgwa"];
    }

    self = v11;
    v9 = self;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMBShareInvitationContext allocWithZone:a3];
  v5 = [(HMBShareInvitationContext *)self participantClientIdentifier];
  v6 = [(HMBShareInvitationContext *)self lookupInfo];
  v7 = [(HMBShareInvitationContext *)v4 initWithParticipantClientIdentifier:v5 lookupInfo:v6];

  [(HMBShareInvitationContext *)v7 setShouldGrantWriteAccess:[(HMBShareInvitationContext *)self shouldGrantWriteAccess]];
  return v7;
}

- (unint64_t)hash
{
  v3 = [(HMBShareInvitationContext *)self participantClientIdentifier];
  v4 = [v3 hash];

  v5 = [(HMBShareInvitationContext *)self shouldGrantWriteAccess];
  v6 = [(HMBShareInvitationContext *)self lookupInfo];
  v7 = v4 ^ [v6 hash];

  return v7 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(HMBShareInvitationContext *)self participantClientIdentifier];
    v8 = [v6 participantClientIdentifier];
    if ([v7 isEqual:v8] && (v9 = -[HMBShareInvitationContext shouldGrantWriteAccess](self, "shouldGrantWriteAccess"), v9 == objc_msgSend(v6, "shouldGrantWriteAccess")))
    {
      v11 = [(HMBShareInvitationContext *)self lookupInfo];
      v12 = [v6 lookupInfo];
      v10 = [v11 isEqual:v12];
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
  v4 = [(HMBShareInvitationContext *)self participantClientIdentifier];
  v5 = [v3 initWithName:@"User Client Identifier" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMBShareInvitationContext *)self shouldGrantWriteAccess];
  v7 = HMFBooleanToString();
  v8 = [v6 initWithName:@"Should Grant Write Access" value:v7];
  v16[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMBShareInvitationContext *)self lookupInfo];
  v11 = [MEMORY[0x277D0F8D8] defaultFormatter];
  v12 = [v9 initWithName:@"Lookup Info" value:v10 options:2 formatter:v11];
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (HMBShareInvitationContext)initWithParticipantClientIdentifier:(id)a3 lookupInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMBShareInvitationContext;
  v9 = [(HMBShareInvitationContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_participantClientIdentifier, a3);
    objc_storeStrong(&v10->_lookupInfo, a4);
  }

  return v10;
}

- (HMBShareInvitationContext)initWithParticipantClientIdentifier:(id)a3 cloudShareID:(id)a4
{
  v6 = MEMORY[0x277CBC7C8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = [v7 userRecordID];

  v11 = [v9 initWithUserRecordID:v10];
  v12 = [(HMBShareInvitationContext *)self initWithParticipantClientIdentifier:v8 lookupInfo:v11];

  return v12;
}

- (HMBShareInvitationContext)initWithParticipantClientIdentifier:(id)a3 phoneNumber:(id)a4
{
  v6 = MEMORY[0x277CBC7C8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithPhoneNumber:v7];

  v10 = [(HMBShareInvitationContext *)self initWithParticipantClientIdentifier:v8 lookupInfo:v9];
  return v10;
}

- (HMBShareInvitationContext)initWithParticipantClientIdentifier:(id)a3 emailAddress:(id)a4
{
  v6 = MEMORY[0x277CBC7C8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithEmailAddress:v7];

  v10 = [(HMBShareInvitationContext *)self initWithParticipantClientIdentifier:v8 lookupInfo:v9];
  return v10;
}

@end