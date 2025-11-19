@interface HMDIncomingHomeInvitation
- (BOOL)refreshDisplayName;
- (HMDIncomingHomeInvitation)initWithCoder:(id)a3;
- (HMDIncomingHomeInvitation)initWithInviterAccount:(id)a3 invitationIdentifier:(id)a4 invitationState:(int64_t)a5 homeName:(id)a6 homeUUID:(id)a7 inviterIdentity:(id)a8 inviterMergeID:(id)a9 expiryDate:(id)a10;
- (NSDictionary)bulletinContext;
- (NSString)homeName;
- (NSString)inviterUserID;
- (NSUUID)homeUUID;
- (id)describeWithFormat;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMDIncomingHomeInvitation

- (NSDictionary)bulletinContext
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"homeIncomingInvitation";
  v2 = [(HMDHomeInvitation *)self identifier];
  v3 = [v2 UUIDString];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)describeWithFormat
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CCAB68] string];
  v16.receiver = self;
  v16.super_class = HMDIncomingHomeInvitation;
  v5 = [(HMDHomeInvitation *)&v16 describeWithFormat];
  [v4 appendFormat:@"%@", v5];

  v6 = [(HMDHomeInvitation *)self invitationData];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = [(HMDIncomingHomeInvitation *)self inviterUserID];
  v10 = [v8 inviterName];

  v11 = [(HMDIncomingHomeInvitation *)self homeName];
  v12 = [(HMDIncomingHomeInvitation *)self homeUUID];
  v13 = [v12 UUIDString];
  [v4 appendFormat:@"type = Incoming, inviter email = %@ inviter name = %@ home = %@ (%@)", v9, v10, v11, v13];

  v14 = [v4 copy];
  objc_autoreleasePoolPop(v3);

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HMDIncomingHomeInvitation;
  [(HMDHomeInvitation *)&v12 encodeWithCoder:v4];
  if (([v4 hmd_isForLocalStore] & 1) != 0 || objc_msgSend(v4, "hmd_isForRemoteTransportOnSameAccount"))
  {
    v5 = [(HMDIncomingHomeInvitation *)self inviterIdentity];
    v6 = [v5 identifier];
    [v4 encodeObject:v6 forKey:@"pairingUsername"];

    v7 = [(HMDIncomingHomeInvitation *)self inviterIdentity];
    v8 = [v7 publicKey];
    v9 = [v8 data];
    [v4 encodeObject:v9 forKey:@"userPublicKey"];

    v10 = [(HMDIncomingHomeInvitation *)self inviterAccount];
    [v4 encodeObject:v10 forKey:@"HM.account"];

    v11 = [(HMDIncomingHomeInvitation *)self inviterMergeID];
    [v4 encodeObject:v11 forKey:@"mergeID"];
  }
}

- (HMDIncomingHomeInvitation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.invitationData"];
  v24.receiver = self;
  v24.super_class = HMDIncomingHomeInvitation;
  v6 = [(HMDHomeInvitation *)&v24 initWithCoder:v4 invitationData:v5];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D0F8B0]);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userPublicKey"];
    v9 = [v7 initWithPairingKeyData:v8];

    v10 = objc_alloc(MEMORY[0x277D0F8A8]);
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairingUsername"];
    v12 = [v10 initWithIdentifier:v11 publicKey:v9 privateKey:0];
    inviterIdentity = v6->_inviterIdentity;
    v6->_inviterIdentity = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mergeID"];
    inviterMergeID = v6->_inviterMergeID;
    v6->_inviterMergeID = v14;

    if ([v4 containsValueForKey:@"HM.account"])
    {
      v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.account"];
      inviterAccount = v6->_inviterAccount;
      v6->_inviterAccount = v16;
    }

    else
    {
      v18 = +[HMDAccountHandleFormatter defaultFormatter];
      v19 = [v5 inviterUserID];
      inviterAccount = [v18 accountHandleFromString:v19];

      v20 = +[HMDAccountRegistry sharedRegistry];
      v21 = [v20 accountForHandle:inviterAccount];
      v22 = v6->_inviterAccount;
      v6->_inviterAccount = v21;
    }

    [(HMDIncomingHomeInvitation *)v6 refreshDisplayName];
  }

  return v6;
}

- (BOOL)refreshDisplayName
{
  v3 = [(HMDHomeInvitation *)self invitationData];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [(HMDIncomingHomeInvitation *)self inviterAccount];
    v7 = [v6 name];

    v8 = [v5 inviterName];
    v9 = HMFEqualObjects();
    if ((v9 & 1) == 0)
    {
      [v5 setInviterName:v7];
    }

    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)inviterUserID
{
  v2 = [(HMDHomeInvitation *)self invitationData];
  v3 = [v2 inviterUserID];

  return v3;
}

- (NSUUID)homeUUID
{
  v2 = [(HMDHomeInvitation *)self invitationData];
  v3 = [v2 homeUUID];

  return v3;
}

- (NSString)homeName
{
  v2 = [(HMDHomeInvitation *)self invitationData];
  v3 = [v2 homeName];

  return v3;
}

- (HMDIncomingHomeInvitation)initWithInviterAccount:(id)a3 invitationIdentifier:(id)a4 invitationState:(int64_t)a5 homeName:(id)a6 homeUUID:(id)a7 inviterIdentity:(id)a8 inviterMergeID:(id)a9 expiryDate:(id)a10
{
  v14 = a3;
  v35 = a8;
  v33 = a9;
  v15 = a10;
  v16 = a7;
  v17 = a6;
  v18 = a4;
  v19 = [v14 name];
  v20 = objc_alloc(MEMORY[0x277CD1AF0]);
  v37 = v14;
  v21 = [v14 handles];
  v22 = [v21 firstObject];
  v23 = [v22 remoteDestinationString];
  v24 = [v20 initWithInviterUserID:v23 invitationIdentifier:v18 inviterName:v19 invitationState:a5 homeName:v17 homeUUID:v16 expiryDate:v15];

  v38.receiver = self;
  v38.super_class = HMDIncomingHomeInvitation;
  v25 = [(HMDHomeInvitation *)&v38 initWithInvitationData:v24 forHome:0];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_inviterAccount, a3);
    v27 = [v35 copy];
    inviterIdentity = v26->_inviterIdentity;
    v26->_inviterIdentity = v27;

    v29 = [v33 copy];
    inviterMergeID = v26->_inviterMergeID;
    v26->_inviterMergeID = v29;
  }

  return v26;
}

@end