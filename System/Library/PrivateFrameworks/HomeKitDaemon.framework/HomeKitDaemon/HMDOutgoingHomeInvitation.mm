@interface HMDOutgoingHomeInvitation
- (BOOL)isComplete;
- (BOOL)isMigrationInvitation;
- (BOOL)refreshDisplayName;
- (BOOL)responseReceived;
- (BOOL)shouldRetrySendingInvitationForError:(id)a3;
- (HMDOutgoingHomeInvitation)initWithCoder:(id)a3;
- (HMDOutgoingHomeInvitation)initWithUUID:(id)a3 invitee:(id)a4 invitationState:(int64_t)a5 forHome:(id)a6 expiryDate:(id)a7 messageIdentifier:(id)a8;
- (NSArray)accessoryInvitationsInformation;
- (NSArray)operationIdentifiers;
- (NSString)debugDescription;
- (NSString)description;
- (id)describeWithFormat;
- (id)emptyModelObjectWithChangeType:(unint64_t)a3;
- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (id)shortDescription;
- (void)_transactionOutgoingInvitationUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)notifyStateChangedForMessage:(id)a3;
- (void)setOperationIdentifiers:(id)a3;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)updateInvitationState:(int64_t)a3;
@end

@implementation HMDOutgoingHomeInvitation

- (BOOL)isMigrationInvitation
{
  v2 = [(HMDOutgoingHomeInvitation *)self user];
  v3 = [v2 isPending];

  return v3;
}

- (BOOL)shouldRetrySendingInvitationForError:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_10;
  }

  if ([(HMDOutgoingHomeInvitation *)self isMigrationInvitation])
  {
    v5 = [v4 domain];
    if ([v5 isEqualToString:*MEMORY[0x277CBBF50]])
    {
      v6 = [v4 code];

      if (v6 == 33)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v8 = [v4 domain];
    if ([v8 isEqualToString:*MEMORY[0x277CCFD28]])
    {
      v9 = [v4 code];

      if (v9 == 3511)
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

- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4
{
  v5 = [(HMDOutgoingHomeInvitation *)self emptyModelObjectWithChangeType:a3, a4];
  v6 = [(HMDOutgoingHomeInvitation *)self user];
  v7 = [v6 dictionaryEncoding];
  [v5 setUser:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDHomeInvitation invitationState](self, "invitationState")}];
  [v5 setInvitationState:v8];

  v9 = [(HMDHomeInvitation *)self endDate];
  [v5 setExpiryDate:v9];

  v10 = [(HMDOutgoingHomeInvitation *)self messageIdentifier];
  v11 = [v10 UUIDString];
  [v5 setMessageIdentifier:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDOutgoingHomeInvitation responseReceived](self, "responseReceived")}];
  [v5 setResponseReceived:v12];

  v13 = [(HMDOutgoingHomeInvitation *)self inviteeDestinationAddress];
  [v5 setInviteeDestinationAddress:v13];

  v14 = [(HMDHomeInvitation *)self idsInvitationUUID];
  [v5 setIdsInvitationUUID:v14];

  v15 = MEMORY[0x277CCABB0];
  v16 = [(HMDOutgoingHomeInvitation *)self user];
  v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "announceAccessLevel")}];
  [v5 setAnnounceAccessLevel:v17];

  v18 = [(HMDOutgoingHomeInvitation *)self user];
  v19 = [v18 accessCode];
  [v5 setAccessCode:v19];

  v20 = [(HMDOutgoingHomeInvitation *)self user];
  v21 = [v20 uuid];
  [v5 setPendingUserUUID:v21];

  v22 = [(HMDOutgoingHomeInvitation *)self user];
  v23 = [v22 restrictedGuestAccessSettings];
  v24 = [v23 uuidsOfAllowedAccessories];
  [v5 setUuidsOfAllowedAccessories:v24];

  return v5;
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
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Outgoing invitations have no objects to remove. Transaction UUID: %@, Parent UUID: %@", &v15, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_transactionOutgoingInvitationUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v59 = *MEMORY[0x277D85DE8];
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
      v53 = 138543874;
      v54 = v17;
      v55 = 2112;
      v56 = v18;
      v57 = 2112;
      v58 = v19;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Expiry date is updated from: %@ to %@", &v53, 0x20u);
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

  v28 = [v9 idsInvitationUUID];

  if (v28)
  {
    v29 = [v9 idsInvitationUUID];
    [(HMDHomeInvitation *)self setIdsInvitationUUID:v29];
  }

  v30 = [v9 dateSent];

  if (v30)
  {
    v31 = [v9 dateSent];
    [(HMDOutgoingHomeInvitation *)self setDateSent:v31];
  }

  v32 = [v9 accessCode];

  if (v32)
  {
    v33 = [v9 accessCode];
    [(HMDOutgoingHomeInvitation *)self setAccessCode:v33];
  }

  v34 = [v9 announceAccessLevel];

  if (v34)
  {
    v35 = [v9 announceAccessLevel];
    [(HMDOutgoingHomeInvitation *)self setAnnounceAccessLevel:v35];
  }

  v36 = [v9 pendingUserUUID];

  if (v36)
  {
    v37 = [v9 pendingUserUUID];
    [(HMDOutgoingHomeInvitation *)self setPendingUserUUID:v37];
  }

  v38 = [v9 invitationState];

  if (v38)
  {
    v39 = [v9 invitationState];
    if ([v39 integerValue] == 2)
    {
      v40 = [(HMDHomeInvitation *)self invitationState];

      if (v40 != 2)
      {
        v41 = objc_autoreleasePoolPush();
        v42 = self;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = HMFGetLogIdentifier();
          v45 = [(HMDHomeInvitation *)v42 invitationState];
          v53 = 138543618;
          v54 = v44;
          v55 = 2048;
          v56 = v45;
          _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_INFO, "%{public}@Invitation state cannot be set back to pending, maintaining current state as %lu", &v53, 0x16u);
        }

        objc_autoreleasePoolPop(v41);
        goto LABEL_29;
      }
    }

    else
    {
    }

    v46 = [v9 invitationState];
    -[HMDOutgoingHomeInvitation updateInvitationState:](self, "updateInvitationState:", [v46 integerValue]);
  }

LABEL_29:
  v47 = [v9 uuidsOfAllowedAccessories];

  if (v47)
  {
    v48 = [v9 uuidsOfAllowedAccessories];
    [(HMDOutgoingHomeInvitation *)self setUuidsOfAllowedAccessories:v48];
  }

  v49 = [v10 transactionResult];
  [v49 markChanged];
  v50 = [v10 responseHandler];

  if (v50)
  {
    v51 = [v10 responseHandler];
    v51[2](v51, 0, 0);
  }

  v52 = *MEMORY[0x277D85DE8];
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
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HMDOutgoingHomeInvitation;
  [(HMDHomeInvitation *)&v16 encodeWithCoder:v4];
  if ([v4 hmd_isForXPCTransport])
  {
    v5 = MEMORY[0x277CBEB18];
    v6 = [(HMDHomeInvitation *)self operations];
    v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

    [v4 encodeObject:v7 forKey:@"HM.accessoryInvitations"];
  }

  v8 = [(HMDOutgoingHomeInvitation *)self user];
  v9 = [v8 isRemoteGateway];

  v10 = [(HMDOutgoingHomeInvitation *)self user];
  if (v9)
  {
    v11 = @"HM.residentDevice";
  }

  else
  {
    v11 = @"HM.user";
  }

  [v4 encodeObject:v10 forKey:v11];

  v12 = [(HMDOutgoingHomeInvitation *)self inviteeDestinationAddress];

  if (v12)
  {
    v13 = [(HMDOutgoingHomeInvitation *)self inviteeDestinationAddress];
    [v4 encodeObject:v13 forKey:@"HM.inviteeDestinationAddress"];
  }

  v14 = [(HMDOutgoingHomeInvitation *)self user];
  v15 = [v14 restrictedGuestAccessSettings];
  [v4 encodeObject:v15 forKey:*MEMORY[0x277CD0D20]];
}

- (HMDOutgoingHomeInvitation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.invitationData"];
  v20.receiver = self;
  v20.super_class = HMDOutgoingHomeInvitation;
  v6 = [(HMDHomeInvitation *)&v20 initWithCoder:v4 invitationData:v5];
  if (v6)
  {
    if ([v4 containsValueForKey:@"HM.residentDevice"])
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.residentDevice"];
      user = v6->_user;
      v6->_user = v7;
    }

    else
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.user"];
      v10 = v6->_user;
      v6->_user = v9;

      user = [(HMDUser *)v6->_user displayName];
      v11 = [v5 inviteeName];
      v12 = [user isEqual:v11];

      if ((v12 & 1) == 0)
      {
        [v5 setInviteeName:user];
      }
    }

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.inviteeDestinationAddress"];
    inviteeDestinationAddress = v6->_inviteeDestinationAddress;
    v6->_inviteeDestinationAddress = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD0D20]];
    [(HMDUser *)v6->_user setRestrictedGuestAccessSettings:v15];

    v16 = [(HMDUser *)v6->_user restrictedGuestAccessSettings];
    v17 = [v16 uuidsOfAllowedAccessories];
    uuidsOfAllowedAccessories = v6->_uuidsOfAllowedAccessories;
    v6->_uuidsOfAllowedAccessories = v17;
  }

  return v6;
}

- (NSArray)accessoryInvitationsInformation
{
  v2 = MEMORY[0x277CBEB18];
  v3 = [(HMDHomeInvitation *)self operations];
  v4 = [v2 arrayWithCapacity:{objc_msgSend(v3, "count")}];

  return v4;
}

- (BOOL)isComplete
{
  v3 = [(HMDOutgoingHomeInvitation *)self responseReceived];
  if (v3)
  {
    v3 = [(HMDHomeInvitation *)self isAccepted];
    if (v3)
    {
      LOBYTE(v3) = ![(HMDHomeInvitation *)self isDeclined];
    }
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
  v7 = [(HMDHomeInvitation *)self operations];
  v8 = [(HMDOutgoingHomeInvitation *)self dateSent];
  v9 = [v3 stringWithFormat:@"<%@, Invitee = %@, State = %tu, Operations = %@ dateSent = %@>", v4, v5, v6, v7, v8];

  return v9;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HMDHomeInvitation *)self identifier];
  v6 = [(HMDOutgoingHomeInvitation *)self user];
  v7 = [(HMDHomeInvitation *)self invitationState];
  v8 = [(HMDHomeInvitation *)self operations];
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