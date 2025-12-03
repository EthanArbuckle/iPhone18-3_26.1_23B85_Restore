@interface HMDOutgoingHomeInvitation
- (BOOL)isComplete;
- (BOOL)isMigrationInvitation;
- (BOOL)refreshDisplayName;
- (BOOL)responseReceived;
- (BOOL)shouldRetrySendingInvitationForError:(id)error;
- (HMDOutgoingHomeInvitation)initWithCoder:(id)coder;
- (HMDOutgoingHomeInvitation)initWithUUID:(id)d invitee:(id)invitee invitationState:(int64_t)state forHome:(id)home expiryDate:(id)date messageIdentifier:(id)identifier;
- (NSArray)accessoryInvitationsInformation;
- (NSArray)operationIdentifiers;
- (NSString)debugDescription;
- (NSString)description;
- (id)describeWithFormat;
- (id)emptyModelObjectWithChangeType:(unint64_t)type;
- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version;
- (id)shortDescription;
- (void)_transactionOutgoingInvitationUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)encodeWithCoder:(id)coder;
- (void)notifyStateChangedForMessage:(id)message;
- (void)setOperationIdentifiers:(id)identifiers;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)updateInvitationState:(int64_t)state;
@end

@implementation HMDOutgoingHomeInvitation

- (BOOL)isMigrationInvitation
{
  user = [(HMDOutgoingHomeInvitation *)self user];
  isPending = [user isPending];

  return isPending;
}

- (BOOL)shouldRetrySendingInvitationForError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    goto LABEL_10;
  }

  if ([(HMDOutgoingHomeInvitation *)self isMigrationInvitation])
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277CBBF50]])
    {
      code = [errorCopy code];

      if (code == 33)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    domain2 = [errorCopy domain];
    if ([domain2 isEqualToString:*MEMORY[0x277CCFD28]])
    {
      code2 = [errorCopy code];

      if (code2 == 3511)
      {
LABEL_10:
        v7 = 0;
        goto LABEL_13;
      }
    }

    else
    {
    }

    v7 = 1;
    goto LABEL_13;
  }

  v7 = [(HMDOutgoingHomeInvitation *)self sendAttemptCount]< 4;
LABEL_13:

  return v7;
}

- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version
{
  version = [(HMDOutgoingHomeInvitation *)self emptyModelObjectWithChangeType:type, version];
  user = [(HMDOutgoingHomeInvitation *)self user];
  dictionaryEncoding = [user dictionaryEncoding];
  [version setUser:dictionaryEncoding];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeInvitation invitationState](self, "invitationState")}];
  [version setInvitationState:v8];

  endDate = [(HMDHomeInvitation *)self endDate];
  [version setExpiryDate:endDate];

  messageIdentifier = [(HMDOutgoingHomeInvitation *)self messageIdentifier];
  uUIDString = [messageIdentifier UUIDString];
  [version setMessageIdentifier:uUIDString];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDOutgoingHomeInvitation responseReceived](self, "responseReceived")}];
  [version setResponseReceived:v12];

  inviteeDestinationAddress = [(HMDOutgoingHomeInvitation *)self inviteeDestinationAddress];
  [version setInviteeDestinationAddress:inviteeDestinationAddress];

  idsInvitationUUID = [(HMDHomeInvitation *)self idsInvitationUUID];
  [version setIdsInvitationUUID:idsInvitationUUID];

  v15 = MEMORY[0x277CCABB0];
  user2 = [(HMDOutgoingHomeInvitation *)self user];
  v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(user2, "announceAccessLevel")}];
  [version setAnnounceAccessLevel:v17];

  user3 = [(HMDOutgoingHomeInvitation *)self user];
  accessCode = [user3 accessCode];
  [version setAccessCode:accessCode];

  user4 = [(HMDOutgoingHomeInvitation *)self user];
  uuid = [user4 uuid];
  [version setPendingUserUUID:uuid];

  user5 = [(HMDOutgoingHomeInvitation *)self user];
  restrictedGuestAccessSettings = [user5 restrictedGuestAccessSettings];
  uuidsOfAllowedAccessories = [restrictedGuestAccessSettings uuidsOfAllowedAccessories];
  [version setUuidsOfAllowedAccessories:uuidsOfAllowedAccessories];

  return version;
}

- (id)emptyModelObjectWithChangeType:(unint64_t)type
{
  v5 = [HMDOutgoingHomeInvitationModel alloc];
  identifier = [(HMDHomeInvitation *)self identifier];
  home = [(HMDHomeInvitation *)self home];
  uuid = [home uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:identifier parentUUID:uuid];

  return v9;
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
  v21 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    uuid = [removedCopy uuid];
    parentUUID = [removedCopy parentUUID];
    v15 = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = uuid;
    v19 = 2112;
    v20 = parentUUID;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Outgoing invitations have no objects to remove. Transaction UUID: %@, Parent UUID: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_transactionOutgoingInvitationUpdated:(id)updated newValues:(id)values message:(id)message
{
  v59 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  user = [valuesCopy user];

  if (user)
  {
    user2 = [valuesCopy user];
    [(HMDOutgoingHomeInvitation *)self updateUser:user2];
  }

  expiryDate = [valuesCopy expiryDate];

  if (expiryDate)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      endDate = [(HMDHomeInvitation *)selfCopy endDate];
      expiryDate2 = [valuesCopy expiryDate];
      v53 = 138543874;
      v54 = v17;
      v55 = 2112;
      v56 = endDate;
      v57 = 2112;
      v58 = expiryDate2;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Expiry date is updated from: %@ to %@", &v53, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    expiryDate3 = [valuesCopy expiryDate];
    [(HMDHomeInvitation *)selfCopy setEndDate:expiryDate3];
  }

  messageIdentifier = [valuesCopy messageIdentifier];

  if (messageIdentifier)
  {
    v22 = objc_alloc(MEMORY[0x277CCAD78]);
    messageIdentifier2 = [valuesCopy messageIdentifier];
    v24 = [v22 initWithUUIDString:messageIdentifier2];
    messageIdentifier = self->_messageIdentifier;
    self->_messageIdentifier = v24;
  }

  inviteeDestinationAddress = [valuesCopy inviteeDestinationAddress];

  if (inviteeDestinationAddress)
  {
    inviteeDestinationAddress2 = [valuesCopy inviteeDestinationAddress];
    [(HMDOutgoingHomeInvitation *)self setInviteeDestinationAddress:inviteeDestinationAddress2];
  }

  idsInvitationUUID = [valuesCopy idsInvitationUUID];

  if (idsInvitationUUID)
  {
    idsInvitationUUID2 = [valuesCopy idsInvitationUUID];
    [(HMDHomeInvitation *)self setIdsInvitationUUID:idsInvitationUUID2];
  }

  dateSent = [valuesCopy dateSent];

  if (dateSent)
  {
    dateSent2 = [valuesCopy dateSent];
    [(HMDOutgoingHomeInvitation *)self setDateSent:dateSent2];
  }

  accessCode = [valuesCopy accessCode];

  if (accessCode)
  {
    accessCode2 = [valuesCopy accessCode];
    [(HMDOutgoingHomeInvitation *)self setAccessCode:accessCode2];
  }

  announceAccessLevel = [valuesCopy announceAccessLevel];

  if (announceAccessLevel)
  {
    announceAccessLevel2 = [valuesCopy announceAccessLevel];
    [(HMDOutgoingHomeInvitation *)self setAnnounceAccessLevel:announceAccessLevel2];
  }

  pendingUserUUID = [valuesCopy pendingUserUUID];

  if (pendingUserUUID)
  {
    pendingUserUUID2 = [valuesCopy pendingUserUUID];
    [(HMDOutgoingHomeInvitation *)self setPendingUserUUID:pendingUserUUID2];
  }

  invitationState = [valuesCopy invitationState];

  if (invitationState)
  {
    invitationState2 = [valuesCopy invitationState];
    if ([invitationState2 integerValue] == 2)
    {
      invitationState3 = [(HMDHomeInvitation *)self invitationState];

      if (invitationState3 != 2)
      {
        v41 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = HMFGetLogIdentifier();
          invitationState4 = [(HMDHomeInvitation *)selfCopy2 invitationState];
          v53 = 138543618;
          v54 = v44;
          v55 = 2048;
          v56 = invitationState4;
          _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Invitation state cannot be set back to pending, maintaining current state as %lu", &v53, 0x16u);
        }

        objc_autoreleasePoolPop(v41);
        goto LABEL_29;
      }
    }

    else
    {
    }

    invitationState5 = [valuesCopy invitationState];
    -[HMDOutgoingHomeInvitation updateInvitationState:](self, "updateInvitationState:", [invitationState5 integerValue]);
  }

LABEL_29:
  uuidsOfAllowedAccessories = [valuesCopy uuidsOfAllowedAccessories];

  if (uuidsOfAllowedAccessories)
  {
    uuidsOfAllowedAccessories2 = [valuesCopy uuidsOfAllowedAccessories];
    [(HMDOutgoingHomeInvitation *)self setUuidsOfAllowedAccessories:uuidsOfAllowedAccessories2];
  }

  transactionResult = [messageCopy transactionResult];
  [transactionResult markChanged];
  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [messageCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  valuesCopy = values;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = valuesCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v9)
  {
    [(HMDOutgoingHomeInvitation *)self _transactionOutgoingInvitationUpdated:0 newValues:v9 message:messageCopy];
  }
}

- (void)setOperationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  os_unfair_lock_lock_with_options();
  operationIdentifiers = self->_operationIdentifiers;
  self->_operationIdentifiers = identifiersCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)operationIdentifiers
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSArray *)self->_operationIdentifiers copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateInvitationState:(int64_t)state
{
  invitationState = [(HMDHomeInvitation *)self invitationState];
  v6.receiver = self;
  v6.super_class = HMDOutgoingHomeInvitation;
  [(HMDHomeInvitation *)&v6 updateInvitationState:state];
  if ([(HMDHomeInvitation *)self invitationState]!= invitationState)
  {
    [(HMDOutgoingHomeInvitation *)self notifyStateChangedForMessage:0];
  }
}

- (void)notifyStateChangedForMessage:(id)message
{
  v27[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  invitationData = [(HMDHomeInvitation *)self invitationData];
  v27[0] = invitationData;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v7 = encodeRootObject();

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  accessoryInvitationsInformation = [(HMDOutgoingHomeInvitation *)self accessoryInvitationsInformation];
  if (accessoryInvitationsInformation)
  {
    v25[0] = @"kInvitationIdentifierKey";
    identifier = [(HMDHomeInvitation *)self identifier];
    uUIDString = [identifier UUIDString];
    v25[1] = @"kAccessoryInvitationsKey";
    v26[0] = uUIDString;
    v26[1] = accessoryInvitationsInformation;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v8 addObject:v12];
  }

  v13 = encodeRootObject();
  v23[0] = @"kInvitationsDataKey";
  v23[1] = @"kAccessoryInvitationsDataKey";
  v24[0] = v7;
  v24[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  identifier2 = [messageCopy identifier];

  if (identifier2)
  {
    uUID = identifier2;
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
  }

  v17 = uUID;

  v18 = [MEMORY[0x277D0F818] entitledMessageWithName:@"kUserInvitationsUpdatedNotificationKey" identifier:v17 messagePayload:v14];
  home = [(HMDHomeInvitation *)self home];
  msgDispatcher = [home msgDispatcher];
  uuid = [home uuid];
  [msgDispatcher sendMessage:v18 target:uuid];

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)refreshDisplayName
{
  user = [(HMDOutgoingHomeInvitation *)self user];
  refreshDisplayName = [user refreshDisplayName];

  if (!refreshDisplayName)
  {
    return 0;
  }

  invitationData = [(HMDHomeInvitation *)self invitationData];
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 ? invitationData : 0;
  v7 = v6;

  if (!v7)
  {
    return 0;
  }

  user2 = [(HMDOutgoingHomeInvitation *)self user];
  displayName = [user2 displayName];
  [v7 setInviteeName:displayName];

  return 1;
}

- (id)describeWithFormat
{
  string = [MEMORY[0x277CCAB68] string];
  v10.receiver = self;
  v10.super_class = HMDOutgoingHomeInvitation;
  describeWithFormat = [(HMDHomeInvitation *)&v10 describeWithFormat];
  [string appendFormat:@"%@", describeWithFormat];

  user = [(HMDOutgoingHomeInvitation *)self user];
  userID = [user userID];
  user2 = [(HMDOutgoingHomeInvitation *)self user];
  displayName = [user2 displayName];
  [string appendFormat:@"type = Outgoing, invitee email = %@ invitee name = %@", userID, displayName];

  return string;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = HMDOutgoingHomeInvitation;
  [(HMDHomeInvitation *)&v16 encodeWithCoder:coderCopy];
  if ([coderCopy hmd_isForXPCTransport])
  {
    v5 = MEMORY[0x277CBEB18];
    operations = [(HMDHomeInvitation *)self operations];
    v7 = [v5 arrayWithCapacity:{objc_msgSend(operations, "count")}];

    [coderCopy encodeObject:v7 forKey:@"HM.accessoryInvitations"];
  }

  user = [(HMDOutgoingHomeInvitation *)self user];
  isRemoteGateway = [user isRemoteGateway];

  user2 = [(HMDOutgoingHomeInvitation *)self user];
  if (isRemoteGateway)
  {
    v11 = @"HM.residentDevice";
  }

  else
  {
    v11 = @"HM.user";
  }

  [coderCopy encodeObject:user2 forKey:v11];

  inviteeDestinationAddress = [(HMDOutgoingHomeInvitation *)self inviteeDestinationAddress];

  if (inviteeDestinationAddress)
  {
    inviteeDestinationAddress2 = [(HMDOutgoingHomeInvitation *)self inviteeDestinationAddress];
    [coderCopy encodeObject:inviteeDestinationAddress2 forKey:@"HM.inviteeDestinationAddress"];
  }

  user3 = [(HMDOutgoingHomeInvitation *)self user];
  restrictedGuestAccessSettings = [user3 restrictedGuestAccessSettings];
  [coderCopy encodeObject:restrictedGuestAccessSettings forKey:*MEMORY[0x277CD0D20]];
}

- (HMDOutgoingHomeInvitation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.invitationData"];
  v20.receiver = self;
  v20.super_class = HMDOutgoingHomeInvitation;
  v6 = [(HMDHomeInvitation *)&v20 initWithCoder:coderCopy invitationData:v5];
  if (v6)
  {
    if ([coderCopy containsValueForKey:@"HM.residentDevice"])
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.residentDevice"];
      user = v6->_user;
      v6->_user = v7;
    }

    else
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.user"];
      v10 = v6->_user;
      v6->_user = v9;

      user = [(HMDUser *)v6->_user displayName];
      inviteeName = [v5 inviteeName];
      v12 = [user isEqual:inviteeName];

      if ((v12 & 1) == 0)
      {
        [v5 setInviteeName:user];
      }
    }

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.inviteeDestinationAddress"];
    inviteeDestinationAddress = v6->_inviteeDestinationAddress;
    v6->_inviteeDestinationAddress = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD0D20]];
    [(HMDUser *)v6->_user setRestrictedGuestAccessSettings:v15];

    restrictedGuestAccessSettings = [(HMDUser *)v6->_user restrictedGuestAccessSettings];
    uuidsOfAllowedAccessories = [restrictedGuestAccessSettings uuidsOfAllowedAccessories];
    uuidsOfAllowedAccessories = v6->_uuidsOfAllowedAccessories;
    v6->_uuidsOfAllowedAccessories = uuidsOfAllowedAccessories;
  }

  return v6;
}

- (NSArray)accessoryInvitationsInformation
{
  v2 = MEMORY[0x277CBEB18];
  operations = [(HMDHomeInvitation *)self operations];
  v4 = [v2 arrayWithCapacity:{objc_msgSend(operations, "count")}];

  return v4;
}

- (BOOL)isComplete
{
  responseReceived = [(HMDOutgoingHomeInvitation *)self responseReceived];
  if (responseReceived)
  {
    responseReceived = [(HMDHomeInvitation *)self isAccepted];
    if (responseReceived)
    {
      LOBYTE(responseReceived) = ![(HMDHomeInvitation *)self isDeclined];
    }
  }

  return responseReceived;
}

- (BOOL)responseReceived
{
  if ([(HMDHomeInvitation *)self isAccepted])
  {
    return 1;
  }

  return [(HMDHomeInvitation *)self isDeclined];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [(HMDOutgoingHomeInvitation *)self shortDescription];
  user = [(HMDOutgoingHomeInvitation *)self user];
  invitationState = [(HMDHomeInvitation *)self invitationState];
  operations = [(HMDHomeInvitation *)self operations];
  dateSent = [(HMDOutgoingHomeInvitation *)self dateSent];
  v9 = [v3 stringWithFormat:@"<%@, Invitee = %@, State = %tu, Operations = %@ dateSent = %@>", shortDescription, user, invitationState, operations, dateSent];

  return v9;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(HMDHomeInvitation *)self identifier];
  user = [(HMDOutgoingHomeInvitation *)self user];
  invitationState = [(HMDHomeInvitation *)self invitationState];
  operations = [(HMDHomeInvitation *)self operations];
  v9 = [v3 stringWithFormat:@"<%@ %p, Identifier = %@, Invitee = %@, State = %tu, Operations = %@>", v4, self, identifier, user, invitationState, operations];

  return v9;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(HMDHomeInvitation *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, identifier];

  return v6;
}

- (HMDOutgoingHomeInvitation)initWithUUID:(id)d invitee:(id)invitee invitationState:(int64_t)state forHome:(id)home expiryDate:(id)date messageIdentifier:(id)identifier
{
  inviteeCopy = invitee;
  obj = identifier;
  identifierCopy = identifier;
  v16 = MEMORY[0x277CD1CC0];
  dateCopy = date;
  homeCopy = home;
  dCopy = d;
  v20 = [v16 alloc];
  userID = [inviteeCopy userID];
  displayName = [inviteeCopy displayName];
  v23 = [v20 initWithUUID:dCopy inviteeUserID:userID inviteeName:displayName invitationState:state expiryDate:dateCopy];

  v28.receiver = self;
  v28.super_class = HMDOutgoingHomeInvitation;
  v24 = [(HMDHomeInvitation *)&v28 initWithInvitationData:v23 forHome:homeCopy];

  if (v24)
  {
    objc_storeStrong(&v24->_user, invitee);
    objc_storeStrong(&v24->_messageIdentifier, obj);
  }

  return v24;
}

@end