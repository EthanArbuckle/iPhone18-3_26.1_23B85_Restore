@interface HMDOutgoingHomeInvitation
- (BOOL)isComplete;
- (BOOL)refreshDisplayName;
- (BOOL)responseReceived;
- (BOOL)shouldRetrySendingInvitationForError:(id)error;
- (HMDOutgoingHomeInvitation)initWithCoder:(id)coder;
- (HMDOutgoingHomeInvitation)initWithUUID:(id)d invitee:(id)invitee invitationState:(int64_t)state forHome:(id)home expiryDate:(id)date messageIdentifier:(id)identifier;
- (NSArray)accessoryInvitationsInformation;
- (NSArray)operationIdentifiers;
- (NSArray)operations;
- (NSString)debugDescription;
- (NSString)description;
- (id)describeWithFormat;
- (id)emptyModelObjectWithChangeType:(unint64_t)type;
- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version;
- (id)shortDescription;
- (void)_transactionOutgoingInvitationUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)cancel;
- (void)encodeWithCoder:(id)coder;
- (void)notifyStateChangedForMessage:(id)message;
- (void)processUserManagementOperationIdentifiers:(id)identifiers;
- (void)setOperationIdentifiers:(id)identifiers;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)updateInvitationState:(int64_t)state;
- (void)updateUserManagementOperations:(id)operations;
@end

@implementation HMDOutgoingHomeInvitation

- (BOOL)shouldRetrySendingInvitationForError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_8;
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CBBF50]])
  {
    code = [v4 code];

    if (code == 33)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  domain2 = [v4 domain];
  if (![domain2 isEqualToString:*MEMORY[0x277CCFD28]])
  {

    goto LABEL_10;
  }

  code2 = [v4 code];

  if (code2 != 3511)
  {
LABEL_10:
    v9 = 1;
    goto LABEL_11;
  }

LABEL_8:
  v9 = 0;
LABEL_11:

  return v9;
}

- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = [(HMDOutgoingHomeInvitation *)self emptyModelObjectWithChangeType:type];
  user = [(HMDOutgoingHomeInvitation *)self user];
  dictionaryEncoding = [user dictionaryEncoding];
  [v6 setUser:dictionaryEncoding];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeInvitation invitationState](self, "invitationState")}];
  [v6 setInvitationState:v9];

  endDate = [(HMDHomeInvitation *)self endDate];
  [v6 setExpiryDate:endDate];

  messageIdentifier = [(HMDOutgoingHomeInvitation *)self messageIdentifier];
  uUIDString = [messageIdentifier UUIDString];
  [v6 setMessageIdentifier:uUIDString];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDOutgoingHomeInvitation responseReceived](self, "responseReceived")}];
  [v6 setResponseReceived:v13];

  inviteeDestinationAddress = [(HMDOutgoingHomeInvitation *)self inviteeDestinationAddress];
  [v6 setInviteeDestinationAddress:inviteeDestinationAddress];

  operationIdentifiers = [(HMDOutgoingHomeInvitation *)self operationIdentifiers];
  v16 = [operationIdentifiers mutableCopy];

  if (version <= 3)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    operations = [(HMDOutgoingHomeInvitation *)self operations];
    v18 = [operations countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(operations);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          accessory = [v22 accessory];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0 || !accessory)
          {
            identifier = [v22 identifier];
            uUIDString2 = [identifier UUIDString];
            [v16 removeObject:uUIDString2];
          }
        }

        v19 = [operations countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v19);
    }
  }

  if ([v16 count])
  {
    v27 = [v16 copy];
    [v6 setOperationIdentifiers:v27];
  }

  v28 = *MEMORY[0x277D85DE8];

  return v6;
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
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Outgoing invitations have no objects to remove. Transaction UUID: %@, Parent UUID: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_transactionOutgoingInvitationUpdated:(id)updated newValues:(id)values message:(id)message
{
  v50 = *MEMORY[0x277D85DE8];
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
      v44 = 138543874;
      v45 = v17;
      v46 = 2112;
      v47 = endDate;
      v48 = 2112;
      v49 = expiryDate2;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Expiry date is updated from: %@ to %@", &v44, 0x20u);
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

  invitationState = [valuesCopy invitationState];

  if (invitationState)
  {
    invitationState2 = [valuesCopy invitationState];
    if ([invitationState2 integerValue] == 2)
    {
      invitationState3 = [(HMDHomeInvitation *)self invitationState];

      if (invitationState3 != 2)
      {
        v31 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          invitationState4 = [(HMDHomeInvitation *)selfCopy2 invitationState];
          v44 = 138543618;
          v45 = v34;
          v46 = 2048;
          v47 = invitationState4;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Invitation state cannot be set back to pending, maintaining current state as %lu", &v44, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        goto LABEL_19;
      }
    }

    else
    {
    }

    invitationState5 = [valuesCopy invitationState];
    -[HMDOutgoingHomeInvitation updateInvitationState:](self, "updateInvitationState:", [invitationState5 integerValue]);
  }

LABEL_19:
  operationIdentifiers = [valuesCopy operationIdentifiers];

  if (operationIdentifiers)
  {
    operationIdentifiers2 = [valuesCopy operationIdentifiers];
    [(HMDOutgoingHomeInvitation *)self processUserManagementOperationIdentifiers:operationIdentifiers2];
  }

  else
  {
    operations = [valuesCopy operations];

    if (!operations)
    {
      goto LABEL_24;
    }

    operationIdentifiers2 = [valuesCopy operations];
    [(HMDOutgoingHomeInvitation *)self updateUserManagementOperations:operationIdentifiers2];
  }

LABEL_24:
  transactionResult = [messageCopy transactionResult];
  [transactionResult markChanged];
  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [messageCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }

  v43 = *MEMORY[0x277D85DE8];
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

- (void)processUserManagementOperationIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  home = [(HMDHomeInvitation *)self home];
  homeManager = [home homeManager];
  v6 = [homeManager operationsWithIdentifiers:identifiersCopy outOperations:0];

  if (v6)
  {
    [(HMDOutgoingHomeInvitation *)self setOperationIdentifiers:identifiersCopy];
  }

  else
  {
    backingStore = [home backingStore];
    v8 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v9 = [backingStore transaction:@"kInviteAcceptedKey" options:v8];

    v10 = [(HMDOutgoingHomeInvitation *)self modelObjectWithChangeType:3 version:4];
    [v9 add:v10];

    [v9 run];
  }
}

- (void)updateUserManagementOperations:(id)operations
{
  v46 = *MEMORY[0x277D85DE8];
  operationsCopy = operations;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Migrating operations to models", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDHomeInvitation *)selfCopy home];
  homeManager = [home homeManager];
  backingStore = [homeManager backingStore];
  v12 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v13 = [backingStore transaction:@"kUserManagementOperationAddedKey" options:v12];

  v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(operationsCopy, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v14 = operationsCopy;
  v15 = [v14 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v38;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [HMDUserManagementOperation operationWithDictionary:*(*(&v37 + 1) + 8 * i) home:home];
        v20 = v19;
        if (v19 && ([v19 isFinished] & 1) == 0)
        {
          identifier = [v20 identifier];
          uUIDString = [identifier UUIDString];
          [v36 addObject:uUIDString];

          v23 = [v20 modelObjectWithChangeType:1];
          [v13 add:v23];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v16);
  }

  v24 = objc_autoreleasePoolPush();
  v25 = selfCopy;
  v26 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = HMFGetLogIdentifier();
    *buf = 138543618;
    v42 = v27;
    v43 = 2112;
    v44 = v36;
    _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Migrating operations with identifiers: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v24);
  [v13 run];
  v28 = [HMDOutgoingHomeInvitationModel alloc];
  identifier2 = [(HMDHomeInvitation *)v25 identifier];
  uuid = [home uuid];
  v31 = [(HMDBackingStoreModelObject *)v28 initWithObjectChangeType:2 uuid:identifier2 parentUUID:uuid];

  [(HMDOutgoingHomeInvitationModel *)v31 setOperations:0];
  [(HMDOutgoingHomeInvitationModel *)v31 setOperationIdentifiers:v36];
  backingStore2 = [home backingStore];
  v33 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v34 = [backingStore2 transaction:@"kUserManagementOperationAddedKey" options:v33];

  [v34 add:v31];
  [v34 run];

  v35 = *MEMORY[0x277D85DE8];
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

- (NSArray)operations
{
  home = [(HMDHomeInvitation *)self home];
  homeManager = [home homeManager];
  operationIdentifiers = [(HMDOutgoingHomeInvitation *)self operationIdentifiers];
  v9 = 0;
  [homeManager operationsWithIdentifiers:operationIdentifiers outOperations:&v9];
  v6 = v9;
  v7 = v9;

  return v6;
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
  v47 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v44.receiver = self;
  v44.super_class = HMDOutgoingHomeInvitation;
  [(HMDHomeInvitation *)&v44 encodeWithCoder:coderCopy];
  if ([coderCopy hmd_isForXPCTransport])
  {
    v5 = MEMORY[0x277CBEB18];
    operations = [(HMDOutgoingHomeInvitation *)self operations];
    v7 = [v5 arrayWithCapacity:{objc_msgSend(operations, "count")}];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    operations2 = [(HMDOutgoingHomeInvitation *)self operations];
    v9 = [operations2 copy];

    v10 = [v9 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v41;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(v9);
          }

          accessoryInvitation = [*(*(&v40 + 1) + 8 * i) accessoryInvitation];
          if (accessoryInvitation)
          {
            [v7 addObject:accessoryInvitation];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v11);
    }

    [coderCopy encodeObject:v7 forKey:@"HM.accessoryInvitations"];
  }

  user = [(HMDOutgoingHomeInvitation *)self user];
  isRemoteGateway = [user isRemoteGateway];

  user2 = [(HMDOutgoingHomeInvitation *)self user];
  if (isRemoteGateway)
  {
    v18 = @"HM.residentDevice";
  }

  else
  {
    v18 = @"HM.user";
  }

  [coderCopy encodeObject:user2 forKey:v18];

  operations3 = [(HMDOutgoingHomeInvitation *)self operations];
  if ([coderCopy hmd_isForRemoteTransportOnSameAccount])
  {
    hmd_supportedFeatures = [coderCopy hmd_supportedFeatures];
    v21 = [hmd_supportedFeatures containsObject:&unk_2866277C0];

    if ((v21 & 1) == 0)
    {
      selfCopy = self;
      v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(operations3, "count")}];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v23 = operations3;
      v24 = [v23 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v37;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v37 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v36 + 1) + 8 * j);
            accessory = [v28 accessory];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) != 0 && accessory)
            {
              [v22 addObject:v28];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v25);
      }

      operations3 = [v22 copy];
      self = selfCopy;
    }
  }

  [coderCopy encodeObject:operations3 forKey:@"kUserManagementOperationsKey"];
  operationIdentifiers = [(HMDOutgoingHomeInvitation *)self operationIdentifiers];
  [coderCopy encodeObject:operationIdentifiers forKey:@"kUserManagementOperationIdentifiersKey"];

  inviteeDestinationAddress = [(HMDOutgoingHomeInvitation *)self inviteeDestinationAddress];

  if (inviteeDestinationAddress)
  {
    inviteeDestinationAddress2 = [(HMDOutgoingHomeInvitation *)self inviteeDestinationAddress];
    [coderCopy encodeObject:inviteeDestinationAddress2 forKey:@"HM.inviteeDestinationAddress"];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (HMDOutgoingHomeInvitation)initWithCoder:(id)coder
{
  v45[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.invitationData"];
  v6 = MEMORY[0x277CBEB98];
  v45[0] = objc_opt_class();
  v45[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kUserManagementOperationsKey"];

  v10 = MEMORY[0x277CBEB98];
  v44[0] = objc_opt_class();
  v44[1] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"kUserManagementOperationIdentifiersKey"];

  v42.receiver = self;
  v42.super_class = HMDOutgoingHomeInvitation;
  v14 = [(HMDHomeInvitation *)&v42 initWithCoder:coderCopy invitationData:v5];
  if (v14)
  {
    if ([coderCopy containsValueForKey:@"HM.residentDevice"])
    {
      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.residentDevice"];
      user = v14->_user;
      v14->_user = v15;
    }

    else
    {
      v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.user"];
      v18 = v14->_user;
      v14->_user = v17;

      user = [(HMDUser *)v14->_user displayName];
      inviteeName = [v5 inviteeName];
      v20 = [user isEqual:inviteeName];

      if ((v20 & 1) == 0)
      {
        [v5 setInviteeName:user];
      }
    }

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.inviteeDestinationAddress"];
    inviteeDestinationAddress = v14->_inviteeDestinationAddress;
    v14->_inviteeDestinationAddress = v21;

    if (v13)
    {
      v23 = v13;
      operationIdentifiers = v14->_operationIdentifiers;
      v14->_operationIdentifiers = v23;
LABEL_17:

      goto LABEL_18;
    }

    if (v9)
    {
      v37 = v5;
      operationIdentifiers = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v9, "count")}];
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v36 = v9;
      v25 = v9;
      v26 = [v25 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v39;
        do
        {
          v29 = 0;
          do
          {
            if (*v39 != v28)
            {
              objc_enumerationMutation(v25);
            }

            identifier = [*(*(&v38 + 1) + 8 * v29) identifier];
            uUIDString = [identifier UUIDString];
            [operationIdentifiers addObject:uUIDString];

            ++v29;
          }

          while (v27 != v29);
          v27 = [v25 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v27);
      }

      allObjects = [operationIdentifiers allObjects];
      v33 = v14->_operationIdentifiers;
      v14->_operationIdentifiers = allObjects;

      v9 = v36;
      v5 = v37;
      goto LABEL_17;
    }
  }

LABEL_18:

  v34 = *MEMORY[0x277D85DE8];
  return v14;
}

- (NSArray)accessoryInvitationsInformation
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  operations = [(HMDOutgoingHomeInvitation *)self operations];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(operations, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  operations2 = [(HMDOutgoingHomeInvitation *)self operations];
  v7 = [operations2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(operations2);
        }

        accessoryInvitationInformation = [*(*(&v14 + 1) + 8 * i) accessoryInvitationInformation];
        if (accessoryInvitationInformation)
        {
          [v5 addObject:accessoryInvitationInformation];
        }
      }

      v8 = [operations2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)cancel
{
  v14 = *MEMORY[0x277D85DE8];
  [(HMDOutgoingHomeInvitation *)self updateInvitationState:1];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  operations = [(HMDOutgoingHomeInvitation *)self operations];
  v4 = [operations countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(operations);
        }

        [*(*(&v9 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [operations countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isComplete
{
  if ([(HMDOutgoingHomeInvitation *)self responseReceived]&& [(HMDHomeInvitation *)self isAccepted]&& ![(HMDHomeInvitation *)self isDeclined])
  {
    operationIdentifiers = [(HMDOutgoingHomeInvitation *)self operationIdentifiers];
    v6 = [operationIdentifiers count];

    if (v6)
    {
      home = [(HMDHomeInvitation *)self home];
      homeManager = [home homeManager];
      operationIdentifiers2 = [(HMDOutgoingHomeInvitation *)self operationIdentifiers];
      v3 = [homeManager operationsWithIdentifiers:operationIdentifiers2 outOperations:0] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
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
  operations = [(HMDOutgoingHomeInvitation *)self operations];
  v8 = [v3 stringWithFormat:@"<%@, Invitee = %@, State = %tu, Operations = %@>", shortDescription, user, invitationState, operations];

  return v8;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(HMDHomeInvitation *)self identifier];
  user = [(HMDOutgoingHomeInvitation *)self user];
  invitationState = [(HMDHomeInvitation *)self invitationState];
  operations = [(HMDOutgoingHomeInvitation *)self operations];
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