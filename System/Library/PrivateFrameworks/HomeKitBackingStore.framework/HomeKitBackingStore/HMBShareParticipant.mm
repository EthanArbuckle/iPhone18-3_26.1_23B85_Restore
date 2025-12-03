@interface HMBShareParticipant
+ (id)hmbDecodeData:(id)data fromStorageLocation:(unint64_t)location error:(id *)error;
- (BOOL)hasAccepted;
- (BOOL)hasWriteAccess;
- (BOOL)isEqual:(id)equal;
- (HMBShareParticipant)initWithCKShareParticipant:(id)participant clientIdentifier:(id)identifier;
- (HMBShareParticipant)initWithCoder:(id)coder;
- (HMBShareUserID)cloudShareID;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMBShareParticipant

+ (id)hmbDecodeData:(id)data fromStorageLocation:(unint64_t)location error:(id *)error
{
  v7 = MEMORY[0x277CCAAC8];
  v8 = MEMORY[0x277CBEB98];
  dataCopy = data;
  v10 = [v8 setWithObject:self];
  v11 = [v7 _strictlyUnarchivedObjectOfClasses:v10 fromData:dataCopy error:error];

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ckShareParticipant = [(HMBShareParticipant *)self ckShareParticipant];
  [coderCopy encodeObject:ckShareParticipant forKey:@"HMBUI.cksp"];

  clientIdentifier = [(HMBShareParticipant *)self clientIdentifier];
  [coderCopy encodeObject:clientIdentifier forKey:@"HMBUI.ci"];

  pendingInvitation = [(HMBShareParticipant *)self pendingInvitation];
  [coderCopy encodeObject:pendingInvitation forKey:@"HMBUI.pi"];
}

- (HMBShareParticipant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMBUI.cksp"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMBUI.ci"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMBUI.pi"];

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
    self = [(HMBShareParticipant *)self initWithCKShareParticipant:v5 clientIdentifier:v6];
    [(HMBShareParticipant *)self setPendingInvitation:v7];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMBShareParticipant allocWithZone:zone];
  ckShareParticipant = [(HMBShareParticipant *)self ckShareParticipant];
  clientIdentifier = [(HMBShareParticipant *)self clientIdentifier];
  v7 = [(HMBShareParticipant *)v4 initWithCKShareParticipant:ckShareParticipant clientIdentifier:clientIdentifier];

  pendingInvitation = [(HMBShareParticipant *)self pendingInvitation];
  [(HMBShareParticipant *)v7 setPendingInvitation:pendingInvitation];

  return v7;
}

- (unint64_t)hash
{
  ckShareParticipant = [(HMBShareParticipant *)self ckShareParticipant];
  v4 = [ckShareParticipant hash];

  clientIdentifier = [(HMBShareParticipant *)self clientIdentifier];
  v6 = [clientIdentifier hash] ^ v4;

  pendingInvitation = [(HMBShareParticipant *)self pendingInvitation];
  v8 = [pendingInvitation hash];

  return v6 ^ v8;
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
    ckShareParticipant = [(HMBShareParticipant *)self ckShareParticipant];
    ckShareParticipant2 = [v6 ckShareParticipant];
    if ([ckShareParticipant isEqual:ckShareParticipant2])
    {
      clientIdentifier = [(HMBShareParticipant *)self clientIdentifier];
      clientIdentifier2 = [v6 clientIdentifier];
      if ([clientIdentifier isEqual:clientIdentifier2])
      {
        pendingInvitation = [(HMBShareParticipant *)self pendingInvitation];
        pendingInvitation2 = [v6 pendingInvitation];
        v13 = HMFEqualObjects();
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)hasAccepted
{
  ckShareParticipant = [(HMBShareParticipant *)self ckShareParticipant];
  v3 = [ckShareParticipant acceptanceStatus] == 2;

  return v3;
}

- (BOOL)hasWriteAccess
{
  ckShareParticipant = [(HMBShareParticipant *)self ckShareParticipant];
  v3 = [ckShareParticipant permission] == 3;

  return v3;
}

- (HMBShareUserID)cloudShareID
{
  ckShareParticipant = [(HMBShareParticipant *)self ckShareParticipant];
  userIdentity = [ckShareParticipant userIdentity];
  userRecordID = [userIdentity userRecordID];

  if (userRecordID)
  {
    v5 = [[HMBShareUserID alloc] initWithUserRecordID:userRecordID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  ckShareParticipant = [(HMBShareParticipant *)self ckShareParticipant];
  v5 = [v3 initWithName:@"CK Share Participant" value:ckShareParticipant options:2 formatter:0];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  clientIdentifier = [(HMBShareParticipant *)self clientIdentifier];
  v8 = [v6 initWithName:@"Client Identifier" value:clientIdentifier];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  pendingInvitation = [(HMBShareParticipant *)self pendingInvitation];
  v11 = [v9 initWithName:@"Pending Invitation" value:pendingInvitation];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (HMBShareParticipant)initWithCKShareParticipant:(id)participant clientIdentifier:(id)identifier
{
  participantCopy = participant;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = HMBShareParticipant;
  v8 = [(HMBShareParticipant *)&v14 init];
  if (v8)
  {
    v9 = [participantCopy copy];
    ckShareParticipant = v8->_ckShareParticipant;
    v8->_ckShareParticipant = v9;

    v11 = [identifierCopy copy];
    clientIdentifier = v8->_clientIdentifier;
    v8->_clientIdentifier = v11;
  }

  return v8;
}

@end