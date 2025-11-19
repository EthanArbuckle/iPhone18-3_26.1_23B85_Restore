@interface HMBShareParticipant
+ (id)hmbDecodeData:(id)a3 fromStorageLocation:(unint64_t)a4 error:(id *)a5;
- (BOOL)hasAccepted;
- (BOOL)hasWriteAccess;
- (BOOL)isEqual:(id)a3;
- (HMBShareParticipant)initWithCKShareParticipant:(id)a3 clientIdentifier:(id)a4;
- (HMBShareParticipant)initWithCoder:(id)a3;
- (HMBShareUserID)cloudShareID;
- (id)attributeDescriptions;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMBShareParticipant

+ (id)hmbDecodeData:(id)a3 fromStorageLocation:(unint64_t)a4 error:(id *)a5
{
  v7 = MEMORY[0x277CCAAC8];
  v8 = MEMORY[0x277CBEB98];
  v9 = a3;
  v10 = [v8 setWithObject:a1];
  v11 = [v7 _strictlyUnarchivedObjectOfClasses:v10 fromData:v9 error:a5];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMBShareParticipant *)self ckShareParticipant];
  [v4 encodeObject:v5 forKey:@"HMBUI.cksp"];

  v6 = [(HMBShareParticipant *)self clientIdentifier];
  [v4 encodeObject:v6 forKey:@"HMBUI.ci"];

  v7 = [(HMBShareParticipant *)self pendingInvitation];
  [v4 encodeObject:v7 forKey:@"HMBUI.pi"];
}

- (HMBShareParticipant)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMBUI.cksp"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMBUI.ci"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMBUI.pi"];

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
    self = [(HMBShareParticipant *)self initWithCKShareParticipant:v5 clientIdentifier:v6];
    [(HMBShareParticipant *)self setPendingInvitation:v7];
    v9 = self;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMBShareParticipant allocWithZone:a3];
  v5 = [(HMBShareParticipant *)self ckShareParticipant];
  v6 = [(HMBShareParticipant *)self clientIdentifier];
  v7 = [(HMBShareParticipant *)v4 initWithCKShareParticipant:v5 clientIdentifier:v6];

  v8 = [(HMBShareParticipant *)self pendingInvitation];
  [(HMBShareParticipant *)v7 setPendingInvitation:v8];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(HMBShareParticipant *)self ckShareParticipant];
  v4 = [v3 hash];

  v5 = [(HMBShareParticipant *)self clientIdentifier];
  v6 = [v5 hash] ^ v4;

  v7 = [(HMBShareParticipant *)self pendingInvitation];
  v8 = [v7 hash];

  return v6 ^ v8;
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
    v7 = [(HMBShareParticipant *)self ckShareParticipant];
    v8 = [v6 ckShareParticipant];
    if ([v7 isEqual:v8])
    {
      v9 = [(HMBShareParticipant *)self clientIdentifier];
      v10 = [v6 clientIdentifier];
      if ([v9 isEqual:v10])
      {
        v11 = [(HMBShareParticipant *)self pendingInvitation];
        v12 = [v6 pendingInvitation];
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
  v2 = [(HMBShareParticipant *)self ckShareParticipant];
  v3 = [v2 acceptanceStatus] == 2;

  return v3;
}

- (BOOL)hasWriteAccess
{
  v2 = [(HMBShareParticipant *)self ckShareParticipant];
  v3 = [v2 permission] == 3;

  return v3;
}

- (HMBShareUserID)cloudShareID
{
  v2 = [(HMBShareParticipant *)self ckShareParticipant];
  v3 = [v2 userIdentity];
  v4 = [v3 userRecordID];

  if (v4)
  {
    v5 = [[HMBShareUserID alloc] initWithUserRecordID:v4];
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
  v4 = [(HMBShareParticipant *)self ckShareParticipant];
  v5 = [v3 initWithName:@"CK Share Participant" value:v4 options:2 formatter:0];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMBShareParticipant *)self clientIdentifier];
  v8 = [v6 initWithName:@"Client Identifier" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  v10 = [(HMBShareParticipant *)self pendingInvitation];
  v11 = [v9 initWithName:@"Pending Invitation" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (HMBShareParticipant)initWithCKShareParticipant:(id)a3 clientIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HMBShareParticipant;
  v8 = [(HMBShareParticipant *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    ckShareParticipant = v8->_ckShareParticipant;
    v8->_ckShareParticipant = v9;

    v11 = [v7 copy];
    clientIdentifier = v8->_clientIdentifier;
    v8->_clientIdentifier = v11;
  }

  return v8;
}

@end