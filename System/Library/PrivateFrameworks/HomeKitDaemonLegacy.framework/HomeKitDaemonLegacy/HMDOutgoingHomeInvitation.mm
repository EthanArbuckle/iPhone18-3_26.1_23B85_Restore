@interface HMDOutgoingHomeInvitation
- (BOOL)isComplete;
- (BOOL)refreshDisplayName;
- (BOOL)responseReceived;
- (BOOL)shouldRetrySendingInvitationForError:(id)a3;
- (HMDOutgoingHomeInvitation)initWithCoder:(id)a3;
- (HMDOutgoingHomeInvitation)initWithUUID:(id)a3 invitee:(id)a4 invitationState:(int64_t)a5 forHome:(id)a6 expiryDate:(id)a7 messageIdentifier:(id)a8;
- (NSArray)accessoryInvitationsInformation;
- (NSArray)operationIdentifiers;
- (NSArray)operations;
- (NSString)debugDescription;
- (NSString)description;
- (id)describeWithFormat;
- (id)emptyModelObjectWithChangeType:(unint64_t)a3;
- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (id)shortDescription;
- (void)_transactionOutgoingInvitationUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)cancel;
- (void)encodeWithCoder:(id)a3;
- (void)notifyStateChangedForMessage:(id)a3;
- (void)processUserManagementOperationIdentifiers:(id)a3;
- (void)setOperationIdentifiers:(id)a3;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)updateInvitationState:(int64_t)a3;
- (void)updateUserManagementOperations:(id)a3;
@end

@implementation HMDOutgoingHomeInvitation

- (BOOL)shouldRetrySendingInvitationForError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = [v3 domain];
  if ([v5 isEqualToString:*MEMORY[0x277CBBF50]])
  {
    v6 = [v4 code];

    if (v6 == 33)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = [v4 domain];
  if (![v7 isEqualToString:*MEMORY[0x277CCFD28]])
  {

    goto LABEL_10;
  }

  v8 = [v4 code];

  if (v8 != 3511)
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

- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = [(HMDOutgoingHomeInvitation *)self emptyModelObjectWithChangeType:a3];
  v7 = [(HMDOutgoingHomeInvitation *)self user];
  v8 = [v7 dictionaryEncoding];
  [v6 setUser:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeInvitation invitationState](self, "invitationState")}];
  [v6 setInvitationState:v9];

  v10 = [(HMDHomeInvitation *)self endDate];
  [v6 setExpiryDate:v10];

  v11 = [(HMDOutgoingHomeInvitation *)self messageIdentifier];
  v12 = [v11 UUIDString];
  [v6 setMessageIdentifier:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDOutgoingHomeInvitation responseReceived](self, "responseReceived")}];
  [v6 setResponseReceived:v13];

  v14 = [(HMDOutgoingHomeInvitation *)self inviteeDestinationAddress];
  [v6 setInviteeDestinationAddress:v14];

  v15 = [(HMDOutgoingHomeInvitation *)self operationIdentifiers];
  v16 = [v15 mutableCopy];

  if (a4 <= 3)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = [(HMDOutgoingHomeInvitation *)self operations];
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          v23 = [v22 accessory];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0 || !v23)
          {
            v25 = [v22 identifier];
            v26 = [v25 UUIDString];
            [v16 removeObject:v26];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
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

- (id)emptyModelObjectWithChangeType:(unint64_t)a3
{
  v5 = [HMDOutgoingHomeInvitationModel alloc];
  v6 = [(HMDHomeInvitation *)self identifier];
  v7 = [(HMDHomeInvitation *)self home];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  return v9;
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 uuid];
    v13 = [v6 parentUUID];
    v15 = 138543874;
    v16 = v11;
    v17 = 2112;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Outgoing invitations have no objects to remove. Transaction UUID: %@, Parent UUID: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_transactionOutgoingInvitationUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 user];

  if (v11)
  {
    v12 = [v9 user];
    [(HMDOutgoingHomeInvitation *)self updateUser:v12];
  }

  v13 = [v9 expiryDate];

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [(HMDHomeInvitation *)v15 endDate];
      v19 = [v9 expiryDate];
      v44 = 138543874;
      v45 = v17;
      v46 = 2112;
      v47 = v18;
      v48 = 2112;
      v49 = v19;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Expiry date is updated from: %@ to %@", &v44, 0x20u);
    }

    objc_autoreleasePoolPop(v14);
    v20 = [v9 expiryDate];
    [(HMDHomeInvitation *)v15 setEndDate:v20];
  }

  v21 = [v9 messageIdentifier];

  if (v21)
  {
    v22 = objc_alloc(MEMORY[0x277CCAD78]);
    v23 = [v9 messageIdentifier];
    v24 = [v22 initWithUUIDString:v23];
    messageIdentifier = self->_messageIdentifier;
    self->_messageIdentifier = v24;
  }

  v26 = [v9 inviteeDestinationAddress];

  if (v26)
  {
    v27 = [v9 inviteeDestinationAddress];
    [(HMDOutgoingHomeInvitation *)self setInviteeDestinationAddress:v27];
  }

  v28 = [v9 invitationState];

  if (v28)
  {
    v29 = [v9 invitationState];
    if ([v29 integerValue] == 2)
    {
      v30 = [(HMDHomeInvitation *)self invitationState];

      if (v30 != 2)
      {
        v31 = objc_autoreleasePoolPush();
        v32 = self;
        v33 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v34 = HMFGetLogIdentifier();
          v35 = [(HMDHomeInvitation *)v32 invitationState];
          v44 = 138543618;
          v45 = v34;
          v46 = 2048;
          v47 = v35;
          _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Invitation state cannot be set back to pending, maintaining current state as %lu", &v44, 0x16u);
        }

        objc_autoreleasePoolPop(v31);
        goto LABEL_19;
      }
    }

    else
    {
    }

    v36 = [v9 invitationState];
    -[HMDOutgoingHomeInvitation updateInvitationState:](self, "updateInvitationState:", [v36 integerValue]);
  }

LABEL_19:
  v37 = [v9 operationIdentifiers];

  if (v37)
  {
    v38 = [v9 operationIdentifiers];
    [(HMDOutgoingHomeInvitation *)self processUserManagementOperationIdentifiers:v38];
  }

  else
  {
    v39 = [v9 operations];

    if (!v39)
    {
      goto LABEL_24;
    }

    v38 = [v9 operations];
    [(HMDOutgoingHomeInvitation *)self updateUserManagementOperations:v38];
  }

LABEL_24:
  v40 = [v10 transactionResult];
  [v40 markChanged];
  v41 = [v10 responseHandler];

  if (v41)
  {
    v42 = [v10 responseHandler];
    v42[2](v42, 0, 0);
  }

  v43 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v10 = a4;
  v7 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v10;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v9)
  {
    [(HMDOutgoingHomeInvitation *)self _transactionOutgoingInvitationUpdated:0 newValues:v9 message:v7];
  }
}

- (void)processUserManagementOperationIdentifiers:(id)a3
{
  v11 = a3;
  v4 = [(HMDHomeInvitation *)self home];
  v5 = [v4 homeManager];
  v6 = [v5 operationsWithIdentifiers:v11 outOperations:0];

  if (v6)
  {
    [(HMDOutgoingHomeInvitation *)self setOperationIdentifiers:v11];
  }

  else
  {
    v7 = [v4 backingStore];
    v8 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v9 = [v7 transaction:@"kInviteAcceptedKey" options:v8];

    v10 = [(HMDOutgoingHomeInvitation *)self modelObjectWithChangeType:3 version:4];
    [v9 add:v10];

    [v9 run];
  }
}

- (void)updateUserManagementOperations:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Migrating operations to models", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMDHomeInvitation *)v6 home];
  v10 = [v9 homeManager];
  v11 = [v10 backingStore];
  v12 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v13 = [v11 transaction:@"kUserManagementOperationAddedKey" options:v12];

  v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v14 = v4;
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

        v19 = [HMDUserManagementOperation operationWithDictionary:*(*(&v37 + 1) + 8 * i) home:v9];
        v20 = v19;
        if (v19 && ([v19 isFinished] & 1) == 0)
        {
          v21 = [v20 identifier];
          v22 = [v21 UUIDString];
          [v36 addObject:v22];

          v23 = [v20 modelObjectWithChangeType:1];
          [v13 add:v23];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v16);
  }

  v24 = objc_autoreleasePoolPush();
  v25 = v6;
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
  v29 = [(HMDHomeInvitation *)v25 identifier];
  v30 = [v9 uuid];
  v31 = [(HMDBackingStoreModelObject *)v28 initWithObjectChangeType:2 uuid:v29 parentUUID:v30];

  [(HMDOutgoingHomeInvitationModel *)v31 setOperations:0];
  [(HMDOutgoingHomeInvitationModel *)v31 setOperationIdentifiers:v36];
  v32 = [v9 backingStore];
  v33 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v34 = [v32 transaction:@"kUserManagementOperationAddedKey" options:v33];

  [v34 add:v31];
  [v34 run];

  v35 = *MEMORY[0x277D85DE8];
}

- (void)setOperationIdentifiers:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  operationIdentifiers = self->_operationIdentifiers;
  self->_operationIdentifiers = v4;

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
  v3 = [(HMDHomeInvitation *)self home];
  v4 = [v3 homeManager];
  v5 = [(HMDOutgoingHomeInvitation *)self operationIdentifiers];
  v9 = 0;
  [v4 operationsWithIdentifiers:v5 outOperations:&v9];
  v6 = v9;
  v7 = v9;

  return v6;
}

- (void)updateInvitationState:(int64_t)a3
{
  v5 = [(HMDHomeInvitation *)self invitationState];
  v6.receiver = self;
  v6.super_class = HMDOutgoingHomeInvitation;
  [(HMDHomeInvitation *)&v6 updateInvitationState:a3];
  if ([(HMDHomeInvitation *)self invitationState]!= v5)
  {
    [(HMDOutgoingHomeInvitation *)self notifyStateChangedForMessage:0];
  }
}

- (void)notifyStateChangedForMessage:(id)a3
{
  v27[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDHomeInvitation *)self invitationData];
  v27[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
  v7 = encodeRootObject();

  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  v9 = [(HMDOutgoingHomeInvitation *)self accessoryInvitationsInformation];
  if (v9)
  {
    v25[0] = @"kInvitationIdentifierKey";
    v10 = [(HMDHomeInvitation *)self identifier];
    v11 = [v10 UUIDString];
    v25[1] = @"kAccessoryInvitationsKey";
    v26[0] = v11;
    v26[1] = v9;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v8 addObject:v12];
  }

  v13 = encodeRootObject();
  v23[0] = @"kInvitationsDataKey";
  v23[1] = @"kAccessoryInvitationsDataKey";
  v24[0] = v7;
  v24[1] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v15 = [v4 identifier];

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = [MEMORY[0x277CCAD78] UUID];
  }

  v17 = v16;

  v18 = [MEMORY[0x277D0F818] entitledMessageWithName:@"kUserInvitationsUpdatedNotificationKey" identifier:v17 messagePayload:v14];
  v19 = [(HMDHomeInvitation *)self home];
  v20 = [v19 msgDispatcher];
  v21 = [v19 uuid];
  [v20 sendMessage:v18 target:v21];

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)refreshDisplayName
{
  v3 = [(HMDOutgoingHomeInvitation *)self user];
  v4 = [v3 refreshDisplayName];

  if (!v4)
  {
    return 0;
  }

  v5 = [(HMDHomeInvitation *)self invitationData];
  objc_opt_class();
  v6 = (objc_opt_isKindOfClass() & 1) != 0 ? v5 : 0;
  v7 = v6;

  if (!v7)
  {
    return 0;
  }

  v8 = [(HMDOutgoingHomeInvitation *)self user];
  v9 = [v8 displayName];
  [v7 setInviteeName:v9];

  return 1;
}

- (id)describeWithFormat
{
  v3 = [MEMORY[0x277CCAB68] string];
  v10.receiver = self;
  v10.super_class = HMDOutgoingHomeInvitation;
  v4 = [(HMDHomeInvitation *)&v10 describeWithFormat];
  [v3 appendFormat:@"%@", v4];

  v5 = [(HMDOutgoingHomeInvitation *)self user];
  v6 = [v5 userID];
  v7 = [(HMDOutgoingHomeInvitation *)self user];
  v8 = [v7 displayName];
  [v3 appendFormat:@"type = Outgoing, invitee email = %@ invitee name = %@", v6, v8];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v44.receiver = self;
  v44.super_class = HMDOutgoingHomeInvitation;
  [(HMDHomeInvitation *)&v44 encodeWithCoder:v4];
  if ([v4 hmd_isForXPCTransport])
  {
    v5 = MEMORY[0x277CBEB18];
    v6 = [(HMDOutgoingHomeInvitation *)self operations];
    v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v8 = [(HMDOutgoingHomeInvitation *)self operations];
    v9 = [v8 copy];

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

          v14 = [*(*(&v40 + 1) + 8 * i) accessoryInvitation];
          if (v14)
          {
            [v7 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v11);
    }

    [v4 encodeObject:v7 forKey:@"HM.accessoryInvitations"];
  }

  v15 = [(HMDOutgoingHomeInvitation *)self user];
  v16 = [v15 isRemoteGateway];

  v17 = [(HMDOutgoingHomeInvitation *)self user];
  if (v16)
  {
    v18 = @"HM.residentDevice";
  }

  else
  {
    v18 = @"HM.user";
  }

  [v4 encodeObject:v17 forKey:v18];

  v19 = [(HMDOutgoingHomeInvitation *)self operations];
  if ([v4 hmd_isForRemoteTransportOnSameAccount])
  {
    v20 = [v4 hmd_supportedFeatures];
    v21 = [v20 containsObject:&unk_2866277C0];

    if ((v21 & 1) == 0)
    {
      v35 = self;
      v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v19, "count")}];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v23 = v19;
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
            v29 = [v28 accessory];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) != 0 && v29)
            {
              [v22 addObject:v28];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v25);
      }

      v19 = [v22 copy];
      self = v35;
    }
  }

  [v4 encodeObject:v19 forKey:@"kUserManagementOperationsKey"];
  v31 = [(HMDOutgoingHomeInvitation *)self operationIdentifiers];
  [v4 encodeObject:v31 forKey:@"kUserManagementOperationIdentifiersKey"];

  v32 = [(HMDOutgoingHomeInvitation *)self inviteeDestinationAddress];

  if (v32)
  {
    v33 = [(HMDOutgoingHomeInvitation *)self inviteeDestinationAddress];
    [v4 encodeObject:v33 forKey:@"HM.inviteeDestinationAddress"];
  }

  v34 = *MEMORY[0x277D85DE8];
}

- (HMDOutgoingHomeInvitation)initWithCoder:(id)a3
{
  v45[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.invitationData"];
  v6 = MEMORY[0x277CBEB98];
  v45[0] = objc_opt_class();
  v45[1] = objc_opt_class();
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kUserManagementOperationsKey"];

  v10 = MEMORY[0x277CBEB98];
  v44[0] = objc_opt_class();
  v44[1] = objc_opt_class();
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"kUserManagementOperationIdentifiersKey"];

  v42.receiver = self;
  v42.super_class = HMDOutgoingHomeInvitation;
  v14 = [(HMDHomeInvitation *)&v42 initWithCoder:v4 invitationData:v5];
  if (v14)
  {
    if ([v4 containsValueForKey:@"HM.residentDevice"])
    {
      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.residentDevice"];
      user = v14->_user;
      v14->_user = v15;
    }

    else
    {
      v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.user"];
      v18 = v14->_user;
      v14->_user = v17;

      user = [(HMDUser *)v14->_user displayName];
      v19 = [v5 inviteeName];
      v20 = [user isEqual:v19];

      if ((v20 & 1) == 0)
      {
        [v5 setInviteeName:user];
      }
    }

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.inviteeDestinationAddress"];
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

            v30 = [*(*(&v38 + 1) + 8 * v29) identifier];
            v31 = [v30 UUIDString];
            [operationIdentifiers addObject:v31];

            ++v29;
          }

          while (v27 != v29);
          v27 = [v25 countByEnumeratingWithState:&v38 objects:v43 count:16];
        }

        while (v27);
      }

      v32 = [operationIdentifiers allObjects];
      v33 = v14->_operationIdentifiers;
      v14->_operationIdentifiers = v32;

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
  v4 = [(HMDOutgoingHomeInvitation *)self operations];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(HMDOutgoingHomeInvitation *)self operations];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) accessoryInvitationInformation];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v3 = [(HMDOutgoingHomeInvitation *)self operations];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isComplete
{
  if ([(HMDOutgoingHomeInvitation *)self responseReceived]&& [(HMDHomeInvitation *)self isAccepted]&& ![(HMDHomeInvitation *)self isDeclined])
  {
    v5 = [(HMDOutgoingHomeInvitation *)self operationIdentifiers];
    v6 = [v5 count];

    if (v6)
    {
      v7 = [(HMDHomeInvitation *)self home];
      v8 = [v7 homeManager];
      v9 = [(HMDOutgoingHomeInvitation *)self operationIdentifiers];
      v3 = [v8 operationsWithIdentifiers:v9 outOperations:0] ^ 1;
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
  v4 = [(HMDOutgoingHomeInvitation *)self shortDescription];
  v5 = [(HMDOutgoingHomeInvitation *)self user];
  v6 = [(HMDHomeInvitation *)self invitationState];
  v7 = [(HMDOutgoingHomeInvitation *)self operations];
  v8 = [v3 stringWithFormat:@"<%@, Invitee = %@, State = %tu, Operations = %@>", v4, v5, v6, v7];

  return v8;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HMDHomeInvitation *)self identifier];
  v6 = [(HMDOutgoingHomeInvitation *)self user];
  v7 = [(HMDHomeInvitation *)self invitationState];
  v8 = [(HMDOutgoingHomeInvitation *)self operations];
  v9 = [v3 stringWithFormat:@"<%@ %p, Identifier = %@, Invitee = %@, State = %tu, Operations = %@>", v4, self, v5, v6, v7, v8];

  return v9;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HMDHomeInvitation *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (HMDOutgoingHomeInvitation)initWithUUID:(id)a3 invitee:(id)a4 invitationState:(int64_t)a5 forHome:(id)a6 expiryDate:(id)a7 messageIdentifier:(id)a8
{
  v15 = a4;
  obj = a8;
  v27 = a8;
  v16 = MEMORY[0x277CD1CC0];
  v17 = a7;
  v18 = a6;
  v19 = a3;
  v20 = [v16 alloc];
  v21 = [v15 userID];
  v22 = [v15 displayName];
  v23 = [v20 initWithUUID:v19 inviteeUserID:v21 inviteeName:v22 invitationState:a5 expiryDate:v17];

  v28.receiver = self;
  v28.super_class = HMDOutgoingHomeInvitation;
  v24 = [(HMDHomeInvitation *)&v28 initWithInvitationData:v23 forHome:v18];

  if (v24)
  {
    objc_storeStrong(&v24->_user, a4);
    objc_storeStrong(&v24->_messageIdentifier, obj);
  }

  return v24;
}

@end