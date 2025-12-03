@interface HMDIncomingHomeInvitation
- (BOOL)refreshDisplayName;
- (HMDIncomingHomeInvitation)initWithCoder:(id)coder;
- (HMDIncomingHomeInvitation)initWithInviterAccount:(id)account invitationIdentifier:(id)identifier invitationState:(int64_t)state homeName:(id)name homeUUID:(id)d inviterIdentity:(id)identity inviterMergeID:(id)iD expiryDate:(id)self0;
- (NSDictionary)bulletinContext;
- (NSString)homeName;
- (NSString)inviterUserID;
- (NSUUID)homeUUID;
- (id)describeWithFormat;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDIncomingHomeInvitation

- (NSDictionary)bulletinContext
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = @"homeIncomingInvitation";
  identifier = [(HMDHomeInvitation *)self identifier];
  uUIDString = [identifier UUIDString];
  v8[0] = uUIDString;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)describeWithFormat
{
  v3 = objc_autoreleasePoolPush();
  string = [MEMORY[0x277CCAB68] string];
  v16.receiver = self;
  v16.super_class = HMDIncomingHomeInvitation;
  describeWithFormat = [(HMDHomeInvitation *)&v16 describeWithFormat];
  [string appendFormat:@"%@", describeWithFormat];

  invitationData = [(HMDHomeInvitation *)self invitationData];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = invitationData;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  inviterUserID = [(HMDIncomingHomeInvitation *)self inviterUserID];
  inviterName = [v8 inviterName];

  homeName = [(HMDIncomingHomeInvitation *)self homeName];
  homeUUID = [(HMDIncomingHomeInvitation *)self homeUUID];
  uUIDString = [homeUUID UUIDString];
  [string appendFormat:@"type = Incoming, inviter email = %@ inviter name = %@ home = %@ (%@)", inviterUserID, inviterName, homeName, uUIDString];

  v14 = [string copy];
  objc_autoreleasePoolPop(v3);

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = HMDIncomingHomeInvitation;
  [(HMDHomeInvitation *)&v12 encodeWithCoder:coderCopy];
  if (([coderCopy hmd_isForLocalStore] & 1) != 0 || objc_msgSend(coderCopy, "hmd_isForRemoteTransportOnSameAccount"))
  {
    inviterIdentity = [(HMDIncomingHomeInvitation *)self inviterIdentity];
    identifier = [inviterIdentity identifier];
    [coderCopy encodeObject:identifier forKey:@"pairingUsername"];

    inviterIdentity2 = [(HMDIncomingHomeInvitation *)self inviterIdentity];
    publicKey = [inviterIdentity2 publicKey];
    data = [publicKey data];
    [coderCopy encodeObject:data forKey:@"userPublicKey"];

    inviterAccount = [(HMDIncomingHomeInvitation *)self inviterAccount];
    [coderCopy encodeObject:inviterAccount forKey:@"HM.account"];

    inviterMergeID = [(HMDIncomingHomeInvitation *)self inviterMergeID];
    [coderCopy encodeObject:inviterMergeID forKey:@"mergeID"];
  }
}

- (HMDIncomingHomeInvitation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.invitationData"];
  v24.receiver = self;
  v24.super_class = HMDIncomingHomeInvitation;
  v6 = [(HMDHomeInvitation *)&v24 initWithCoder:coderCopy invitationData:v5];
  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D0F8B0]);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userPublicKey"];
    v9 = [v7 initWithPairingKeyData:v8];

    v10 = objc_alloc(MEMORY[0x277D0F8A8]);
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingUsername"];
    v12 = [v10 initWithIdentifier:v11 publicKey:v9 privateKey:0];
    inviterIdentity = v6->_inviterIdentity;
    v6->_inviterIdentity = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mergeID"];
    inviterMergeID = v6->_inviterMergeID;
    v6->_inviterMergeID = v14;

    if ([coderCopy containsValueForKey:@"HM.account"])
    {
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.account"];
      inviterAccount = v6->_inviterAccount;
      v6->_inviterAccount = v16;
    }

    else
    {
      v18 = +[HMDAccountHandleFormatter defaultFormatter];
      inviterUserID = [v5 inviterUserID];
      inviterAccount = [v18 accountHandleFromString:inviterUserID];

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
  invitationData = [(HMDHomeInvitation *)self invitationData];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = invitationData;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    inviterAccount = [(HMDIncomingHomeInvitation *)self inviterAccount];
    name = [inviterAccount name];

    inviterName = [v5 inviterName];
    v9 = HMFEqualObjects();
    if ((v9 & 1) == 0)
    {
      [v5 setInviterName:name];
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
  invitationData = [(HMDHomeInvitation *)self invitationData];
  inviterUserID = [invitationData inviterUserID];

  return inviterUserID;
}

- (NSUUID)homeUUID
{
  invitationData = [(HMDHomeInvitation *)self invitationData];
  homeUUID = [invitationData homeUUID];

  return homeUUID;
}

- (NSString)homeName
{
  invitationData = [(HMDHomeInvitation *)self invitationData];
  homeName = [invitationData homeName];

  return homeName;
}

- (HMDIncomingHomeInvitation)initWithInviterAccount:(id)account invitationIdentifier:(id)identifier invitationState:(int64_t)state homeName:(id)name homeUUID:(id)d inviterIdentity:(id)identity inviterMergeID:(id)iD expiryDate:(id)self0
{
  accountCopy = account;
  identityCopy = identity;
  iDCopy = iD;
  dateCopy = date;
  dCopy = d;
  nameCopy = name;
  identifierCopy = identifier;
  name = [accountCopy name];
  v20 = objc_alloc(MEMORY[0x277CD1AF0]);
  v37 = accountCopy;
  handles = [accountCopy handles];
  firstObject = [handles firstObject];
  remoteDestinationString = [firstObject remoteDestinationString];
  v24 = [v20 initWithInviterUserID:remoteDestinationString invitationIdentifier:identifierCopy inviterName:name invitationState:state homeName:nameCopy homeUUID:dCopy expiryDate:dateCopy];

  v38.receiver = self;
  v38.super_class = HMDIncomingHomeInvitation;
  v25 = [(HMDHomeInvitation *)&v38 initWithInvitationData:v24 forHome:0];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_inviterAccount, account);
    v27 = [identityCopy copy];
    inviterIdentity = v26->_inviterIdentity;
    v26->_inviterIdentity = v27;

    v29 = [iDCopy copy];
    inviterMergeID = v26->_inviterMergeID;
    v26->_inviterMergeID = v29;
  }

  return v26;
}

@end