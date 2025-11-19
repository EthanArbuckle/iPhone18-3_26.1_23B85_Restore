@interface HMDUserManagementOperation
+ (id)addUserManagementOperationForUser:(id)a3 accessory:(id)a4 model:(id)a5;
+ (id)auditUserManagementOperationAccessory:(id)a3 model:(id)a4;
+ (id)operationWithDictionary:(id)a3 home:(id)a4;
+ (id)removeUserManagementOperationForUser:(id)a3 accessory:(id)a4 model:(id)a5;
+ (id)shortDescription;
+ (void)initialize;
- (BOOL)isBackingOff;
- (BOOL)isExecuting;
- (BOOL)isExpired;
- (BOOL)isFinished;
- (BOOL)isReady;
- (BOOL)isValid;
- (BOOL)lastOperationFailed;
- (BOOL)mergeWithOperation:(id)a3;
- (HMDAccessoryInvitation)accessoryInvitation;
- (HMDUserManagementOperation)init;
- (HMDUserManagementOperation)initWithCoder:(id)a3;
- (HMDUserManagementOperation)initWithOperationType:(unint64_t)a3 identifier:(id)a4 user:(id)a5 accessory:(id)a6 expiration:(id)a7;
- (HMDUserManagementOperationDelegate)delegate;
- (HMDUserManagementOperationManager)operationManager;
- (NSArray)dependencies;
- (NSDictionary)accessoryInvitationInformation;
- (double)nextBackoffInterval;
- (id)_findConflictingAccessory:(id)a3;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)dictionaryEncoding;
- (id)modelObjectWithChangeType:(unint64_t)a3;
- (id)modelObjectWithChangeType:(unint64_t)a3 parentUUID:(id)a4;
- (id)shortDescription;
- (id)transactionWithObjectChangeType:(unint64_t)a3 parentUUID:(id)a4;
- (int64_t)_accessoryInvitationState;
- (unint64_t)state;
- (void)_addPairingToHAPAccessory:(id)a3 completionHandler:(id)a4;
- (void)_auditPairingsForHAPAccessory:(id)a3 completionHandler:(id)a4;
- (void)_endBackoffTimer;
- (void)_removePairingFromHAPAccessory:(id)a3 completionHandler:(id)a4;
- (void)_setupExpirationTimer;
- (void)_startBackoffTimer;
- (void)addDependency:(id)a3;
- (void)cancel;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithCompletionQueue:(id)a3 completionHandler:(id)a4;
- (void)populateModelObjectWithChangeType:(id)a3 version:(int64_t)a4;
- (void)setBackingOff:(BOOL)a3;
- (void)setExecuting:(BOOL)a3;
- (void)setLastOperationFailed:(BOOL)a3;
- (void)setOperationManager:(id)a3;
- (void)setState:(unint64_t)a3;
- (void)timerDidFire:(id)a3;
- (void)updateDelegate:(id)a3;
@end

@implementation HMDUserManagementOperation

- (HMDUserManagementOperationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)populateModelObjectWithChangeType:(id)a3 version:(int64_t)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserManagementOperation operationType](self, "operationType")}];
  [v7 setOperationType:v8];

  v9 = [(HMDUserManagementOperation *)self user];
  v10 = [v9 pairingIdentity];
  [v7 setUserPairingIdentity:v10];

  v11 = [(HMDUserManagementOperation *)self ownerPairingIdentity];
  [v7 setOwnerPairingIdentity:v11];

  v12 = [(HMDUserManagementOperation *)self accessory];
  if ([v12 conformsToProtocol:&unk_286699670])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    v15 = [v14 pairingIdentity];
    [v7 setAccessoryPairingIdentity:v15];
  }

  v16 = [(HMDUserManagementOperation *)self expirationDate];
  [v7 setExpirationDate:v16];

  v17 = [(HMDUserManagementOperation *)self dependencies];
  v18 = [v17 count];

  if (v18)
  {
    v19 = MEMORY[0x277CBEB18];
    v20 = [(HMDUserManagementOperation *)self dependencies];
    v21 = [v19 arrayWithCapacity:{objc_msgSend(v20, "count")}];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v22 = [(HMDUserManagementOperation *)self dependencies];
    v23 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v32;
      do
      {
        v26 = 0;
        do
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v31 + 1) + 8 * v26) identifier];
          v28 = [v27 UUIDString];
          [v21 addObject:v28];

          ++v26;
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v24);
    }

    v29 = [v21 copy];
    [v7 setDependencies:v29];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)modelObjectWithChangeType:(unint64_t)a3
{
  v5 = objc_alloc(MEMORY[0x277CCAD78]);
  v6 = [v5 initWithUUIDString:*MEMORY[0x277CD23C8]];
  v7 = [(HMDUserManagementOperation *)self modelObjectWithChangeType:a3 parentUUID:v6];

  return v7;
}

- (id)modelObjectWithChangeType:(unint64_t)a3 parentUUID:(id)a4
{
  v5 = [(HMDUserManagementOperation *)self transactionWithObjectChangeType:a3 parentUUID:a4];
  [(HMDUserManagementOperation *)self populateModelObjectWithChangeType:v5 version:4];

  return v5;
}

- (id)transactionWithObjectChangeType:(unint64_t)a3 parentUUID:(id)a4
{
  v6 = a4;
  v7 = [HMDUserManagementOperationModel alloc];
  v8 = [(HMDUserManagementOperation *)self identifier];
  v9 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:a3 uuid:v8 parentUUID:v6];

  return v9;
}

- (void)timerDidFire:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserManagementOperation *)self clientQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HMDUserManagementOperation_timerDidFire___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __43__HMDUserManagementOperation_timerDidFire___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) expirationTimer];

  if (v2 == v3)
  {
    v6 = *(a1 + 40);

    [v6 setState:3];
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) backoffTimer];

    if (v4 == v5)
    {
      v7 = *(a1 + 40);

      [v7 _endBackoffTimer];
    }
  }
}

- (id)dictionaryEncoding
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(HMDUserManagementOperation *)self identifier];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKeyedSubscript:@"HM.identifier"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserManagementOperation operationType](self, "operationType")}];
  [v3 setObject:v6 forKeyedSubscript:@"HM.operationType"];

  v7 = [(HMDUserManagementOperation *)self user];
  v8 = [v7 uuid];
  v9 = [v8 UUIDString];
  [v3 setObject:v9 forKeyedSubscript:@"HM.user"];

  v10 = [(HMDUserManagementOperation *)self accessory];
  v11 = [v10 uuid];
  v12 = [v11 UUIDString];
  [v3 setObject:v12 forKeyedSubscript:@"accessory"];

  v13 = [(HMDUserManagementOperation *)self expirationDate];
  [v3 setObject:v13 forKeyedSubscript:@"HM.expiry"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDUserManagementOperation state](self, "state")}];
  [v3 setObject:v14 forKeyedSubscript:@"HM.state"];

  v15 = [v3 copy];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    [v4 encodeInteger:-[HMDUserManagementOperation operationType](self forKey:{"operationType"), @"HM.operationType"}];
    v5 = [(HMDUserManagementOperation *)self user];
    [v4 encodeObject:v5 forKey:@"HM.user"];

    v6 = [(HMDUserManagementOperation *)self accessory];
    [v4 encodeObject:v6 forKey:@"accessory"];

    v7 = [(HMDUserManagementOperation *)self identifier];
    [v4 encodeObject:v7 forKey:@"HM.identifier"];

    v8 = [(HMDUserManagementOperation *)self expirationDate];
    [v4 encodeObject:v8 forKey:@"HM.expiry"];

    v9 = [(HMDUserManagementOperation *)self ownerPairingIdentity];
    [v4 encodeObject:v9 forKey:@"HM.ownerPairingIdentity"];

    [v4 encodeBool:-[HMDUserManagementOperation state](self forKey:{"state") != 0, @"HM.state"}];
    v10 = [(HMDUserManagementOperation *)self dependencies];
    [v4 encodeObject:v10 forKey:@"kUserManagementOperationsKey"];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = objc_opt_class();
      v14 = v19;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_FAULT, "%{public}@%@ only supports NSKeyedArchiver coders", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (HMDUserManagementOperation)initWithCoder:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v5 = [v4 decodeIntegerForKey:@"HM.operationType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.user"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.expiry"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    self = [(HMDUserManagementOperation *)self initWithOperationType:v5 identifier:v9 user:v6 accessory:v7 expiration:v8];
    if (self)
    {
      self->_state = [v4 decodeBoolForKey:@"HM.state"];
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.ownerPairingIdentity"];
      ownerPairingIdentity = self->_ownerPairingIdentity;
      self->_ownerPairingIdentity = v10;

      v12 = MEMORY[0x277CBEB98];
      v21[0] = objc_opt_class();
      v21[1] = objc_opt_class();
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
      v14 = [v12 setWithArray:v13];

      v15 = [v4 decodeObjectOfClasses:v14 forKey:@"kUserManagementOperationsKey"];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 mutableCopy];
        dependencies = self->_dependencies;
        self->_dependencies = v17;
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return self;
}

- (NSDictionary)accessoryInvitationInformation
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserManagementOperation *)self identifier];
  v4 = [v3 UUIDString];

  v5 = [(HMDUserManagementOperation *)self accessory];
  v6 = [v5 uuid];
  v7 = [v6 UUIDString];

  v8 = [(HMDUserManagementOperation *)self _accessoryInvitationState];
  v9 = 0;
  if (v4 && v7)
  {
    v13[0] = @"HM.accessoryInvitationIdentifier";
    v13[1] = @"HM.accessoryInvitationAccessoryUUID";
    v14[0] = v4;
    v14[1] = v7;
    v13[2] = @"HM.accessoryInvitationState";
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
    v14[2] = v10;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (HMDAccessoryInvitation)accessoryInvitation
{
  v3 = [(HMDUserManagementOperation *)self _accessoryInvitationState];
  v4 = [HMDAccessoryInvitation alloc];
  v5 = [(HMDUserManagementOperation *)self accessory];
  v6 = [(HMDUserManagementOperation *)self identifier];
  v7 = [(HMDAccessoryInvitation *)v4 initWithAccessory:v5 identifier:v6 state:v3];

  return v7;
}

- (int64_t)_accessoryInvitationState
{
  result = [(HMDUserManagementOperation *)self state];
  if (result != 1)
  {
    if ((result & 0xFFFFFFFFFFFFFFFELL) == 2 || [(HMDUserManagementOperation *)self lastOperationFailed])
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

- (BOOL)mergeWithOperation:(id)a3
{
  v4 = a3;
  -[HMDUserManagementOperation setLastOperationFailed:](self, "setLastOperationFailed:", [v4 lastOperationFailed]);
  if (v4 && !-[HMDUserManagementOperation isFinished](self, "isFinished") && [v4 isFinished])
  {
    [(HMDUserManagementOperation *)self cancel];
  }

  return v4 != 0;
}

- (void)_auditPairingsForHAPAccessory:(id)a3 completionHandler:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 name];
    v13 = [v6 identifier];
    *buf = 138543874;
    v40 = v11;
    v41 = 2112;
    v42 = v12;
    v43 = 2112;
    v44 = v13;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Attempting to audit pairing for accessory %@(%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v14 = [(HMDUserManagementOperation *)v9 accessory];
  v15 = [v14 home];

  if (!v15)
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v9;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Accessory does not support user management", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    if (v7)
    {
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:12];
      v7[2](v7, v20);
    }
  }

  objc_initWeak(buf, v9);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__HMDUserManagementOperation__auditPairingsForHAPAccessory_completionHandler___block_invoke;
  aBlock[3] = &unk_27972B4B8;
  objc_copyWeak(&v38, buf);
  v21 = v7;
  v37 = v21;
  v22 = v6;
  v36 = v22;
  v23 = _Block_copy(aBlock);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __78__HMDUserManagementOperation__auditPairingsForHAPAccessory_completionHandler___block_invoke_2_219;
  v32[3] = &unk_27972B508;
  objc_copyWeak(&v34, buf);
  v24 = v23;
  v33 = v24;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __78__HMDUserManagementOperation__auditPairingsForHAPAccessory_completionHandler___block_invoke_222;
  v28[3] = &unk_2797346E0;
  objc_copyWeak(&v31, buf);
  v25 = v22;
  v29 = v25;
  v26 = v24;
  v30 = v26;
  [v25 performOperation:7 linkType:0 operationBlock:v32 errorBlock:v28];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&v34);

  objc_destroyWeak(&v38);
  objc_destroyWeak(buf);

  v27 = *MEMORY[0x277D85DE8];
}

void __78__HMDUserManagementOperation__auditPairingsForHAPAccessory_completionHandler___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v11 = v9;
    if (v11)
    {
      v12 = v11;
      if (([v11 isHMError] & 1) == 0)
      {
        v13 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"List pairing failed." reason:0 suggestion:0 underlyingError:v12];

        v12 = v13;
      }

      v14 = a1[5];
      if (v14)
      {
        v14[2](v14, v12);
      }
    }

    else
    {
      v42[0] = 0;
      v42[1] = v42;
      v42[2] = 0x3032000000;
      v42[3] = __Block_byref_object_copy__112425;
      v42[4] = __Block_byref_object_dispose__112426;
      v43 = 0;
      v16 = dispatch_group_create();
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __78__HMDUserManagementOperation__auditPairingsForHAPAccessory_completionHandler___block_invoke_216;
      aBlock[3] = &unk_27972C6F8;
      v41 = v42;
      v17 = v16;
      v40 = v17;
      v18 = _Block_copy(aBlock);
      if ([v8 count])
      {
        dispatch_group_enter(v17);
        v19 = a1[4];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __78__HMDUserManagementOperation__auditPairingsForHAPAccessory_completionHandler___block_invoke_2;
        v34[3] = &unk_27972B468;
        objc_copyWeak(&v38, a1 + 6);
        v23 = v18;
        v20 = v18;
        v37 = v20;
        v21 = v8;
        v35 = v21;
        v36 = v17;
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __78__HMDUserManagementOperation__auditPairingsForHAPAccessory_completionHandler___block_invoke_3;
        v29[3] = &unk_2797326E8;
        objc_copyWeak(&v33, a1 + 6);
        v30 = v21;
        v31 = a1[4];
        v32 = v20;
        [v19 performOperation:6 linkType:0 operationBlock:v34 errorBlock:v29];

        objc_destroyWeak(&v33);
        objc_destroyWeak(&v38);
        v18 = v23;
      }

      v22 = [WeakRetained clientQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __78__HMDUserManagementOperation__auditPairingsForHAPAccessory_completionHandler___block_invoke_217;
      block[3] = &unk_27972B490;
      objc_copyWeak(&v28, a1 + 6);
      v27 = v42;
      v25 = v7;
      v26 = a1[5];
      dispatch_group_notify(v17, v22, block);

      objc_destroyWeak(&v28);
      _Block_object_dispose(v42, 8);

      v12 = 0;
    }

    goto LABEL_13;
  }

  v15 = a1[5];
  if (v15)
  {
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    v15[2](v15, v12);
LABEL_13:
  }
}

void __78__HMDUserManagementOperation__auditPairingsForHAPAccessory_completionHandler___block_invoke_2_219(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [v3 server];
    if (v5)
    {
      v6 = [WeakRetained clientQueue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __78__HMDUserManagementOperation__auditPairingsForHAPAccessory_completionHandler___block_invoke_220;
      v16[3] = &unk_27972B4E0;
      v16[4] = WeakRetained;
      objc_copyWeak(&v18, (a1 + 40));
      v17 = *(a1 + 32);
      [v5 listPairingsWithCompletionQueue:v6 completionHandler:v16];

      objc_destroyWeak(&v18);
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = WeakRetained;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543362;
        v20 = v12;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Unable to list pairings without a reachable accessory server", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
      v13 = *(a1 + 32);
      v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
      (*(v13 + 16))(v13, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8], v14);
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v7 + 16))(v7, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8], v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __78__HMDUserManagementOperation__auditPairingsForHAPAccessory_completionHandler___block_invoke_222(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 32);
    v11 = 138543874;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unable to list pairings from accessory, %@, with error: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  (*(*(a1 + 40) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

void __78__HMDUserManagementOperation__auditPairingsForHAPAccessory_completionHandler___block_invoke_220(uint64_t a1, void *a2, void *a3)
{
  v95 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) accessory];
  v79 = [v7 home];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    v59 = *(a1 + 40);
    v60 = MEMORY[0x277CCA9B8];
    v61 = -1;
LABEL_36:
    v66 = [v60 hmErrorWithCode:v61];
    (*(v59 + 16))(v59, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8], v66);

    goto LABEL_37;
  }

  v70 = a1;
  if (!v79)
  {
    v62 = objc_autoreleasePoolPush();
    v63 = WeakRetained;
    v64 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      v65 = HMFGetLogIdentifier();
      *buf = 138543362;
      v85 = v65;
      _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_ERROR, "%{public}@Cannot manage users if accessory is not long associated with a home", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v62);
    v59 = *(v70 + 40);
    v60 = MEMORY[0x277CCA9B8];
    v61 = 12;
    goto LABEL_36;
  }

  v68 = v6;
  v8 = MEMORY[0x277CBEB18];
  v9 = [v79 users];
  v71 = [v8 arrayWithArray:v9];

  v75 = [MEMORY[0x277CBEB18] array];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v69 = v5;
  obj = v5;
  v10 = [obj countByEnumeratingWithState:&v80 objects:v94 count:16];
  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = v10;
  v12 = *v81;
  v72 = *v81;
  do
  {
    v13 = 0;
    v73 = v11;
    do
    {
      if (*v81 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v80 + 1) + 8 * v13);
      v15 = [v79 userWithPairingIdentity:v14];
      v16 = objc_autoreleasePoolPush();
      v17 = WeakRetained;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [v15 shortDescription];
        [v14 identifier];
        v21 = v76 = v16;
        [v14 publicKey];
        v22 = v77 = v15;
        [v22 data];
        v24 = v23 = v14;
        [v23 permissions];
        HMFBooleanToString();
        v26 = v25 = v13;
        *buf = 138544386;
        v85 = v19;
        v86 = 2112;
        v87 = v20;
        v88 = 2112;
        v89 = v21;
        v90 = 2112;
        v91 = v24;
        v92 = 2112;
        v93 = v26;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Found user %@ for pairing Identifier = %@, PublicKey = %@, Admin = %@", buf, 0x34u);

        v15 = v77;
        v13 = v25;

        v14 = v23;
        v12 = v72;

        v16 = v76;
        v11 = v73;
      }

      objc_autoreleasePoolPop(v16);
      if (!v15)
      {
        v43 = objc_autoreleasePoolPush();
        v44 = v17;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v46 = HMFGetLogIdentifier();
          [v14 identifier];
          v48 = v47 = v13;
          *buf = 138543618;
          v85 = v46;
          v86 = 2112;
          v87 = v48;
          _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "%{public}@Unknown user, pairing must be remove %@", buf, 0x16u);

          v13 = v47;
          v15 = 0;
        }

        goto LABEL_28;
      }

      if ([v15 isOwner])
      {
        v27 = objc_autoreleasePoolPush();
        v28 = v17;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v31 = v30 = v15;
          [v14 identifier];
          v33 = v32 = v13;
          *buf = 138543618;
          v85 = v31;
          v86 = 2112;
          v87 = v33;
          _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Found owner pairing %@", buf, 0x16u);

          v13 = v32;
          v15 = v30;
        }

        objc_autoreleasePoolPop(v27);
        [v71 removeObject:v15];
        if (([v14 permissions] & 1) == 0)
        {
          v34 = objc_autoreleasePoolPush();
          v35 = v28;
          v36 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v37 = HMFGetLogIdentifier();
            v38 = v14;
            v39 = v15;
            v40 = v37;
            [v38 identifier];
            v42 = v41 = v13;
            *buf = 138543618;
            v85 = v40;
            v86 = 2112;
            v87 = v42;
            _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "%{public}@Owners pairing with admin bit is not set %@", buf, 0x16u);

            v13 = v41;
            v15 = v39;
          }

          objc_autoreleasePoolPop(v34);
        }
      }

      else
      {
        v49 = [v14 permissions];
        v43 = objc_autoreleasePoolPush();
        v44 = v17;
        v50 = HMFGetOSLogHandle();
        v51 = os_log_type_enabled(v50, OS_LOG_TYPE_INFO);
        if (v49)
        {
          if (v51)
          {
            v55 = HMFGetLogIdentifier();
            [v14 identifier];
            v56 = v14;
            v58 = v57 = v15;
            *buf = 138543618;
            v85 = v55;
            v86 = 2112;
            v87 = v58;
            _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@Must remove user pairing with admin bit is set %@", buf, 0x16u);

            v15 = v57;
            v14 = v56;
          }

LABEL_28:
          objc_autoreleasePoolPop(v43);
          [v75 addObject:v14];
          goto LABEL_29;
        }

        if (v51)
        {
          v52 = HMFGetLogIdentifier();
          [v14 identifier];
          v54 = v53 = v15;
          *buf = 138543618;
          v85 = v52;
          v86 = 2112;
          v87 = v54;
          _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_INFO, "%{public}@User pairing %@", buf, 0x16u);

          v15 = v53;
        }

        objc_autoreleasePoolPop(v43);
        [v71 removeObject:v15];
      }

LABEL_29:

      ++v13;
    }

    while (v11 != v13);
    v11 = [obj countByEnumeratingWithState:&v80 objects:v94 count:16];
  }

  while (v11);
LABEL_31:

  (*(*(v70 + 40) + 16))();
  v6 = v68;
  v5 = v69;
LABEL_37:

  v67 = *MEMORY[0x277D85DE8];
}

void __78__HMDUserManagementOperation__auditPairingsForHAPAccessory_completionHandler___block_invoke_216(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __78__HMDUserManagementOperation__auditPairingsForHAPAccessory_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = [v3 server];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          dispatch_group_enter(*(a1 + 40));
          v12 = [WeakRetained clientQueue];
          [v5 removePairing:v11 completionQueue:v12 completionHandler:*(a1 + 48)];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    dispatch_group_leave(*(a1 + 40));
    goto LABEL_12;
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v13 + 16))(v13, v5);
LABEL_12:
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __78__HMDUserManagementOperation__auditPairingsForHAPAccessory_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = HMFGetLogIdentifier();
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12 = 138544130;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    v18 = 2112;
    v19 = v3;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unable to remove pairings, %@, from accessory, %@, with error: %@", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void __78__HMDUserManagementOperation__auditPairingsForHAPAccessory_completionHandler___block_invoke_217(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && !*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = WeakRetained;
    [WeakRetained setAuditUsersToBeAdded:*(a1 + 32)];
    WeakRetained = v6;
  }

  if (*(a1 + 40))
  {
    v7 = WeakRetained;
    v3 = *(*(*(a1 + 48) + 8) + 40);
    v4 = *(*(*(a1 + 48) + 8) + 40);
    if (v4 && ([v4 isHMError] & 1) == 0)
    {
      v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Remove pairing failed." reason:0 suggestion:0 underlyingError:*(*(*(a1 + 48) + 8) + 40)];

      v3 = v5;
    }

    (*(*(a1 + 40) + 16))();

    WeakRetained = v7;
  }
}

- (void)_removePairingFromHAPAccessory:(id)a3 completionHandler:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [(HMDUserManagementOperation *)self shortDescription];
    v12 = [v6 name];
    v13 = [v6 identifier];
    *buf = 138544130;
    v37 = v10;
    v38 = 2112;
    v39 = v11;
    v40 = 2112;
    v41 = v12;
    v42 = 2112;
    v43 = v13;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Attempting to remove pairing from accessory %@(%@)", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  v14 = [(HMDUserManagementOperation *)self _findConflictingAccessory:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [(HMDUserManagementOperation *)self shortDescription];
      *buf = 138543874;
      v37 = v19;
      v38 = 2112;
      v39 = v20;
      v40 = 2112;
      v41 = v16;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[%@] Do not remove pairing for this accessory because this looks removed and another exists '%@'", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    if (v7)
    {
      v7[2](v7, 0);
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __79__HMDUserManagementOperation__removePairingFromHAPAccessory_completionHandler___block_invoke;
    aBlock[3] = &unk_279735558;
    v35 = v7;
    v21 = _Block_copy(aBlock);
    v22 = objc_autoreleasePoolPush();
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [(HMDUserManagementOperation *)self shortDescription];
      v26 = [v6 name];
      *buf = 138543874;
      v37 = v24;
      v38 = 2112;
      v39 = v25;
      v40 = 2112;
      v41 = v26;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@[%@] Removing local pairing from accessory '%@'", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __79__HMDUserManagementOperation__removePairingFromHAPAccessory_completionHandler___block_invoke_212;
    v32[3] = &unk_27972B440;
    v32[4] = self;
    v33 = v21;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __79__HMDUserManagementOperation__removePairingFromHAPAccessory_completionHandler___block_invoke_2;
    v29[3] = &unk_279735168;
    v29[4] = self;
    v30 = v6;
    v31 = v33;
    v27 = v33;
    [v30 performOperation:6 linkType:0 operationBlock:v32 errorBlock:v29];
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __79__HMDUserManagementOperation__removePairingFromHAPAccessory_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v7 = v3;
    v4 = v3;
    v5 = v4;
    if (v4 && ([v4 isHMError] & 1) == 0)
    {
      v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Remove pairing failed." reason:0 suggestion:0 underlyingError:v5];

      v5 = v6;
    }

    (*(*(a1 + 32) + 16))();

    v3 = v7;
  }
}

void __79__HMDUserManagementOperation__removePairingFromHAPAccessory_completionHandler___block_invoke_212(uint64_t a1, void *a2)
{
  v9 = [a2 server];
  v3 = [*(a1 + 32) user];
  v4 = [v3 isCurrentUser];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 clientQueue];
    [v9 removePairingForCurrentControllerOnQueue:v6 completion:*(a1 + 40)];
  }

  else
  {
    v6 = [v5 user];
    v7 = [v6 pairingIdentity];
    v8 = [*(a1 + 32) clientQueue];
    [v9 removePairing:v7 completionQueue:v8 completionHandler:*(a1 + 40)];
  }
}

void __79__HMDUserManagementOperation__removePairingFromHAPAccessory_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [*(a1 + 32) shortDescription];
    v8 = [*(a1 + 32) user];
    v9 = [v8 pairingIdentity];
    v10 = *(a1 + 40);
    v12 = 138544386;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@[%@] Unable to remove pairing, %@, from accessory, %@, with error: %@", &v12, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_addPairingToHAPAccessory:(id)a3 completionHandler:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [(HMDUserManagementOperation *)self shortDescription];
    v12 = [v6 name];
    v13 = [v6 identifier];
    *buf = 138544130;
    v32 = v10;
    v33 = 2112;
    v34 = v11;
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = v13;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Attempting to add pairing to accessory %@(%@)", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  v14 = [(HMDUserManagementOperation *)self _findConflictingAccessory:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [(HMDUserManagementOperation *)self shortDescription];
      *buf = 138543874;
      v32 = v19;
      v33 = 2112;
      v34 = v20;
      v35 = 2112;
      v36 = v16;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@[%@] Do not add pairing for this accessory because it looks removed and another exists '%@'", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    if (v7)
    {
      v7[2](v7, 0);
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__HMDUserManagementOperation__addPairingToHAPAccessory_completionHandler___block_invoke;
    aBlock[3] = &unk_279735558;
    v30 = v7;
    v21 = _Block_copy(aBlock);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __74__HMDUserManagementOperation__addPairingToHAPAccessory_completionHandler___block_invoke_2;
    v27[3] = &unk_27972B440;
    v27[4] = self;
    v28 = v21;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __74__HMDUserManagementOperation__addPairingToHAPAccessory_completionHandler___block_invoke_3;
    v24[3] = &unk_279735168;
    v24[4] = self;
    v25 = v6;
    v26 = v28;
    v22 = v28;
    [v25 performOperation:5 linkType:0 operationBlock:v27 errorBlock:v24];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __74__HMDUserManagementOperation__addPairingToHAPAccessory_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v7 = v3;
    v4 = v3;
    v5 = v4;
    if (v4 && ([v4 isHMError] & 1) == 0)
    {
      v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:54 description:@"Add pairing failed." reason:0 suggestion:0 underlyingError:v5];

      v5 = v6;
    }

    (*(*(a1 + 32) + 16))();

    v3 = v7;
  }
}

void __74__HMDUserManagementOperation__addPairingToHAPAccessory_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 user];
  v6 = [v5 isOwner];

  v7 = objc_alloc(MEMORY[0x277CFEC20]);
  v8 = [*(a1 + 32) user];
  v9 = [v8 pairingIdentity];
  v10 = [v9 identifier];
  v11 = [*(a1 + 32) user];
  v12 = [v11 pairingIdentity];
  v13 = [v12 publicKey];
  v16 = [v7 initWithIdentifier:v10 publicKey:v13 privateKey:0 permissions:v6];

  v14 = [v4 server];

  v15 = [*(a1 + 32) clientQueue];
  [v14 addPairing:v16 completionQueue:v15 completionHandler:*(a1 + 40)];
}

void __74__HMDUserManagementOperation__addPairingToHAPAccessory_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [*(a1 + 32) shortDescription];
    v8 = [*(a1 + 32) user];
    v9 = [v8 pairingIdentity];
    v10 = *(a1 + 40);
    v12 = 138544386;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@[%@] Unable to add pairing, %@, to accessory, %@, with error: %@", &v12, 0x34u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 48) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_findConflictingAccessory:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 home];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(HMDUserManagementOperation *)self operationManager];
    v8 = [v7 homeManager];
    v9 = [v4 identifier];
    v10 = [v8 accessoriesMatchingIdentifier:v9];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v10;
    v6 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v12 = *v21;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v11);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v4 uuid];
          v16 = [v14 uuid];
          v17 = [v15 isEqual:v16];

          if (!v17)
          {
            v6 = v14;
            goto LABEL_13;
          }
        }

        v6 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)executeWithCompletionQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMDUserManagementOperation *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__HMDUserManagementOperation_executeWithCompletionQueue_completionHandler___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __75__HMDUserManagementOperation_executeWithCompletionQueue_completionHandler___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isFinished])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = HMFGetLogIdentifier();
      v5 = [*(a1 + 32) shortDescription];
      v6 = *(a1 + 32);
      *buf = 138543874;
      v52 = v4;
      v53 = 2112;
      v54 = v5;
      v55 = 2112;
      v56 = v6;
      _os_log_impl(&dword_2531F8000, v3, OS_LOG_TYPE_ERROR, "%{public}@[%@] Attempt to execute already completed user operation: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v2);
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(a1 + 48);
      if (v8)
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __75__HMDUserManagementOperation_executeWithCompletionQueue_completionHandler___block_invoke_175;
        block[3] = &unk_2797348C0;
        v50 = v8;
        dispatch_async(v7, block);
        v9 = v50;
LABEL_37:

        goto LABEL_38;
      }
    }

    goto LABEL_38;
  }

  if (([*(a1 + 32) isValid] & 1) == 0)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 32) shortDescription];
      v21 = *(a1 + 32);
      *buf = 138543874;
      v52 = v19;
      v53 = 2112;
      v54 = v20;
      v55 = 2112;
      v56 = v21;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@[%@] Attempt to execute invalid operation: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = *(a1 + 40);
    if (v22)
    {
      v23 = *(a1 + 48);
      if (v23)
      {
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __75__HMDUserManagementOperation_executeWithCompletionQueue_completionHandler___block_invoke_180;
        v47[3] = &unk_2797348C0;
        v48 = v23;
        dispatch_async(v22, v47);
        v9 = v48;
        goto LABEL_37;
      }
    }

    goto LABEL_38;
  }

  if (![*(a1 + 32) isExpired])
  {
    v38 = MEMORY[0x277D85DD0];
    v39 = 3221225472;
    v40 = __75__HMDUserManagementOperation_executeWithCompletionQueue_completionHandler___block_invoke_2;
    v41 = &unk_279735168;
    v24 = *(a1 + 40);
    v42 = *(a1 + 32);
    v43 = v24;
    v44 = *(a1 + 48);
    v25 = _Block_copy(&v38);
    [*(a1 + 32) setExecuting:{1, v38, v39, v40, v41, v42}];
    v26 = [*(a1 + 32) accessory];
    v27 = [v26 supportsUserManagement];

    if (!v27)
    {
      goto LABEL_35;
    }

    v28 = [*(a1 + 32) accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;

    v31 = *(a1 + 32);
    if (v30)
    {
      v32 = [v31 operationType];
      switch(v32)
      {
        case 3:
          [*(a1 + 32) _auditPairingsForHAPAccessory:v30 completionHandler:v25];
          break;
        case 2:
          [*(a1 + 32) _removePairingFromHAPAccessory:v30 completionHandler:v25];
          break;
        case 1:
          [*(a1 + 32) _addPairingToHAPAccessory:v30 completionHandler:v25];
          break;
      }

      goto LABEL_36;
    }

    v33 = [v31 accessory];
    v34 = [v33 conformsToProtocol:&unk_286699670] ? v33 : 0;
    v30 = v34;

    if (v30)
    {
      v35 = [*(a1 + 32) operationType];
      if (v35 == 2)
      {
        v36 = [*(a1 + 32) user];
        [v30 removeUser:v36 completionHandler:v25];
        goto LABEL_42;
      }

      if (v35 == 1)
      {
        v36 = [*(a1 + 32) user];
        [v30 addUser:v36 completionHandler:v25];
LABEL_42:
      }
    }

    else
    {
LABEL_35:
      v30 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      v25[2](v25, v30);
    }

LABEL_36:

    v9 = v43;
    goto LABEL_37;
  }

  v10 = objc_autoreleasePoolPush();
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [*(a1 + 32) shortDescription];
    v14 = *(a1 + 32);
    *buf = 138543874;
    v52 = v12;
    v53 = 2112;
    v54 = v13;
    v55 = 2112;
    v56 = v14;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@[%@] Attempt to execute expired operation: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = *(a1 + 40);
  if (v15)
  {
    v16 = *(a1 + 48);
    if (v16)
    {
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __75__HMDUserManagementOperation_executeWithCompletionQueue_completionHandler___block_invoke_184;
      v45[3] = &unk_2797348C0;
      v46 = v16;
      dispatch_async(v15, v45);
      v9 = v46;
      goto LABEL_37;
    }
  }

LABEL_38:
  v37 = *MEMORY[0x277D85DE8];
}

void __75__HMDUserManagementOperation_executeWithCompletionQueue_completionHandler___block_invoke_175(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:58 description:@"Invalid user management operation reason:complete" suggestion:{0, 0}];
  (*(*(a1 + 32) + 16))();
}

void __75__HMDUserManagementOperation_executeWithCompletionQueue_completionHandler___block_invoke_180(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27 description:@"Invalid user management operation" reason:0 suggestion:0];
  (*(*(a1 + 32) + 16))();
}

void __75__HMDUserManagementOperation_executeWithCompletionQueue_completionHandler___block_invoke_184(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27 description:@"Invalid user management operation reason:expired" suggestion:{0, 0}];
  (*(*(a1 + 32) + 16))();
}

void __75__HMDUserManagementOperation_executeWithCompletionQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    [v4 setState:1];
    v4 = *(a1 + 32);
    v5 = 0;
  }

  [v4 setLastOperationFailed:v5];
  [*(a1 + 32) _startBackoffTimer];
  [*(a1 + 32) setExecuting:0];
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __75__HMDUserManagementOperation_executeWithCompletionQueue_completionHandler___block_invoke_3;
      v8[3] = &unk_279735738;
      v10 = v7;
      v9 = v3;
      dispatch_async(v6, v8);
    }
  }
}

- (void)cancel
{
  v3 = [(HMDUserManagementOperation *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HMDUserManagementOperation_cancel__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __36__HMDUserManagementOperation_cancel__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isFinished];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 setState:2];
  }

  return result;
}

- (void)addDependency:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock_with_options();
    [(NSMutableArray *)self->_dependencies addObject:v5];
    os_unfair_lock_unlock(&self->_lock);
    v4 = v5;
  }
}

- (NSArray)dependencies
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_dependencies copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_endBackoffTimer
{
  [(HMDUserManagementOperation *)self setBackoffTimer:0];
  [(HMDUserManagementOperation *)self setBackingOff:0];
  v3 = [(HMDUserManagementOperation *)self operationManager];
  [v3 operationStoppedBackingOff:self];
}

- (void)_startBackoffTimer
{
  v17 = *MEMORY[0x277D85DE8];
  if (![(HMDUserManagementOperation *)self isFinished])
  {
    [(HMDUserManagementOperation *)self nextBackoffInterval];
    v4 = v3;
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [(HMDUserManagementOperation *)self shortDescription];
      v11 = 138543874;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2048;
      v16 = v4;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@[%@] Starting operation backoff timer with expiration interval of %f seconds", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    [(HMDUserManagementOperation *)self setBackingOff:1];
    v9 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:v4];
    [(HMDUserManagementOperation *)self setBackoffTimer:v9];
    [v9 setDelegate:self];
    [v9 resume];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (double)nextBackoffInterval
{
  [(HMDUserManagementOperation *)self backoffInterval];
  self->_backoffInterval = fmin(result * 3.0, 5400.0);
  return result;
}

- (void)setBackingOff:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_backingOff = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isBackingOff
{
  os_unfair_lock_lock_with_options();
  backingOff = self->_backingOff;
  os_unfair_lock_unlock(&self->_lock);
  return backingOff;
}

- (void)setOperationManager:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  operationManager = self->_operationManager;
  self->_operationManager = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDUserManagementOperationManager)operationManager
{
  os_unfair_lock_lock_with_options();
  v3 = self->_operationManager;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateDelegate:(id)a3
{
  v6 = a3;
  if ((-[HMDUserManagementOperation isAddOperation](self, "isAddOperation") || -[HMDUserManagementOperation isAuditOperation](self, "isAuditOperation")) && (-[HMDUserManagementOperation accessory](self, "accessory"), v4 = objc_claimAutoreleasedReturnValue(), [v4 home], v5 = objc_claimAutoreleasedReturnValue(), v4, v5))
  {
    [(HMDUserManagementOperation *)self setDelegate:v5];
  }

  else
  {
    [(HMDUserManagementOperation *)self setDelegate:v6];
  }
}

- (void)setLastOperationFailed:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_lastOperationFailed = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)lastOperationFailed
{
  os_unfair_lock_lock_with_options();
  lastOperationFailed = self->_lastOperationFailed;
  os_unfair_lock_unlock(&self->_lock);
  return lastOperationFailed;
}

- (void)setState:(unint64_t)a3
{
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  state = self->_state;
  if (state != a3)
  {
    if (state)
    {
      v6 = objc_autoreleasePoolPush();
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = HMFGetLogIdentifier();
        v9 = [(HMDUserManagementOperation *)self shortDescription];
        v10 = self->_state;
        *buf = 138544130;
        v18 = v8;
        v19 = 2112;
        v20 = v9;
        v21 = 2048;
        v22 = v10;
        v23 = 2048;
        v24 = a3;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Invalid state change from %tu to %tu", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v6);
    }

    else
    {
      self->_state = a3;
      if ([(HMDUserManagementOperation *)self _isFinished])
      {
        v11 = [(HMDUserManagementOperation *)self delegate];

        if (v11)
        {
          v12 = [(HMDUserManagementOperation *)self clientQueue];
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __39__HMDUserManagementOperation_setState___block_invoke;
          block[3] = &unk_279735D00;
          block[4] = self;
          dispatch_async(v12, block);
        }
      }

      if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v13 = [(HMDUserManagementOperation *)self clientQueue];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __39__HMDUserManagementOperation_setState___block_invoke_2;
        v15[3] = &unk_279735D00;
        v15[4] = self;
        dispatch_async(v13, v15);
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v14 = *MEMORY[0x277D85DE8];
}

void __39__HMDUserManagementOperation_setState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 userManagementOperationDidFinish:*(a1 + 32)];
}

void __39__HMDUserManagementOperation_setState___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) operationManager];
  [v2 operationCancelled:*(a1 + 32)];
}

- (unint64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (BOOL)isExpired
{
  if ([(HMDUserManagementOperation *)self state]== 3)
  {
    return 1;
  }

  v3 = [(HMDUserManagementOperation *)self expirationDate];
  [v3 timeIntervalSinceNow];
  v5 = v4;

  if (v5 < 0.0)
  {
    [(HMDUserManagementOperation *)self setState:3];
    return 1;
  }

  return 0;
}

- (BOOL)isReady
{
  v2 = self;
  v40 = *MEMORY[0x277D85DE8];
  if ([(HMDUserManagementOperation *)self isExecuting])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [(HMDUserManagementOperation *)v2 shortDescription];
      *buf = 138543618;
      v34 = v5;
      v35 = 2112;
      v36 = v6;
      v7 = "%{public}@[%@] Operation is currently executing";
LABEL_24:
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, v7, buf, 0x16u);

LABEL_25:
    }
  }

  else if ([(HMDUserManagementOperation *)v2 isFinished])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [(HMDUserManagementOperation *)v2 shortDescription];
      *buf = 138543618;
      v34 = v5;
      v35 = 2112;
      v36 = v6;
      v7 = "%{public}@[%@] Operation is finished";
      goto LABEL_24;
    }
  }

  else
  {
    if (![(HMDUserManagementOperation *)v2 isBackingOff])
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v8 = [(HMDUserManagementOperation *)v2 dependencies];
      v9 = [v8 countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v9)
      {
        v11 = v9;
        v12 = 0;
        v13 = *v30;
        *&v10 = 138543874;
        v28 = v10;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v30 != v13)
            {
              objc_enumerationMutation(v8);
            }

            v15 = *(*(&v29 + 1) + 8 * i);
            if (([v15 isFinished] & 1) == 0)
            {
              v16 = objc_autoreleasePoolPush();
              v17 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
              {
                v18 = HMFGetLogIdentifier();
                [(HMDUserManagementOperation *)v2 shortDescription];
                v20 = v19 = v2;
                *buf = v28;
                v34 = v18;
                v35 = 2112;
                v36 = v20;
                v37 = 2112;
                v38 = v15;
                _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@[%@] Operation has unfinished dependency operation %@", buf, 0x20u);

                v2 = v19;
              }

              objc_autoreleasePoolPop(v16);
              v12 = 1;
            }
          }

          v11 = [v8 countByEnumeratingWithState:&v29 objects:v39 count:16];
        }

        while (v11);

        if (v12)
        {
          v3 = objc_autoreleasePoolPush();
          v4 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
          {
            v5 = HMFGetLogIdentifier();
            v6 = [(HMDUserManagementOperation *)v2 shortDescription];
            *buf = 138543618;
            v34 = v5;
            v35 = 2112;
            v36 = v6;
            v7 = "%{public}@[%@] Operation has unfinished dependency operations";
            goto LABEL_24;
          }

          goto LABEL_26;
        }
      }

      else
      {
      }

      v23 = [(HMDUserManagementOperation *)v2 accessory];
      v24 = [v23 isReachable];

      if (v24)
      {
        result = 1;
        goto LABEL_27;
      }

      v3 = objc_autoreleasePoolPush();
      v4 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = HMFGetLogIdentifier();
        v25 = [(HMDUserManagementOperation *)v2 shortDescription];
        v26 = [(HMDUserManagementOperation *)v2 accessory];
        v27 = [v26 name];
        *buf = 138543874;
        v34 = v5;
        v35 = 2112;
        v36 = v25;
        v37 = 2112;
        v38 = v27;
        _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@[%@] Operation accessory '%@' is unreachable", buf, 0x20u);

        goto LABEL_25;
      }

      goto LABEL_26;
    }

    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = [(HMDUserManagementOperation *)v2 shortDescription];
      *buf = 138543618;
      v34 = v5;
      v35 = 2112;
      v36 = v6;
      v7 = "%{public}@[%@] Operation is currently in backoff";
      goto LABEL_24;
    }
  }

LABEL_26:

  objc_autoreleasePoolPop(v3);
  result = 0;
LABEL_27:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isFinished
{
  os_unfair_lock_lock_with_options();
  v3 = [(HMDUserManagementOperation *)self _isFinished];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setExecuting:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_executing = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isExecuting
{
  os_unfair_lock_lock_with_options();
  executing = self->_executing;
  os_unfair_lock_unlock(&self->_lock);
  return executing;
}

- (BOOL)isValid
{
  v29 = *MEMORY[0x277D85DE8];
  if ([(HMDUserManagementOperation *)self isAuditOperation])
  {
    v3 = [(HMDUserManagementOperation *)self accessory];
    v4 = [v3 home];

    if (v4)
    {
      v5 = 1;
      goto LABEL_15;
    }

    v14 = objc_autoreleasePoolPush();
    v19 = self;
    v16 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    v17 = HMFGetLogIdentifier();
    *v28 = 138543362;
    *&v28[4] = v17;
    v18 = "%{public}@Cannot audit accessory if not contained in home";
    goto LABEL_13;
  }

  v6 = [(HMDUserManagementOperation *)self user];
  v7 = [v6 pairingUsername];
  v5 = v7 != 0;

  if (!v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *v28 = 138543362;
      *&v28[4] = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Missing user's identifier", v28, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = [(HMDUserManagementOperation *)self user];
  v13 = [v12 publicKey];

  if (!v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
LABEL_14:

      objc_autoreleasePoolPop(v14);
      v5 = 0;
      goto LABEL_15;
    }

    v17 = HMFGetLogIdentifier();
    *v28 = 138543362;
    *&v28[4] = v17;
    v18 = "%{public}@Missing user's public key";
LABEL_13:
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, v18, v28, 0xCu);

    goto LABEL_14;
  }

LABEL_15:
  v20 = [(HMDUserManagementOperation *)self accessory];
  v21 = [v20 isPrimary];

  if ((v21 & 1) == 0)
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *v28 = 138543362;
      *&v28[4] = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Accessory is not primary", v28, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v5 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v18 = MEMORY[0x277CCACA8];
  v20 = [(HMDUserManagementOperation *)self shortDescription];
  v19 = v3;
  if (v3)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@" %p", self];
  }

  else
  {
    v5 = &stru_286509E58;
  }

  v6 = [(HMDUserManagementOperation *)self operationType]- 1;
  if (v6 > 2)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = off_27972B528[v6];
  }

  [(HMDUserManagementOperation *)self isFinished];
  v8 = HMFBooleanToString();
  [(HMDUserManagementOperation *)self isReady];
  v9 = HMFBooleanToString();
  [(HMDUserManagementOperation *)self isExecuting];
  v10 = HMFBooleanToString();
  [(HMDUserManagementOperation *)self isCancelled];
  v11 = HMFBooleanToString();
  [(HMDUserManagementOperation *)self isExpired];
  v12 = HMFBooleanToString();
  v13 = [(HMDUserManagementOperation *)self expirationDate];
  v14 = [(HMDUserManagementOperation *)self user];
  v15 = [(HMDUserManagementOperation *)self accessory];
  v16 = [v18 stringWithFormat:@"<%@%@, Operation Type = %@, Finished = %@, Ready = %@, Executing = %@, Cancelled = %@, Expired = %@, Expiration Date = %@, User = %@, Accessory = %@>", v20, v5, v7, v8, v9, v10, v11, v12, v13, v14, v15];

  if (v19)
  {
  }

  return v16;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMDUserManagementOperation *)self identifier];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

- (void)_setupExpirationTimer
{
  if (![(HMDUserManagementOperation *)self state])
  {
    v3 = [(HMDUserManagementOperation *)self expirationDate];
    v4 = [MEMORY[0x277CBEAA8] date];
    [v3 timeIntervalSinceDate:v4];
    v6 = v5;

    if (v6 <= 0.0)
    {

      [(HMDUserManagementOperation *)self setState:3];
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:1 options:v6];
      expirationTimer = self->_expirationTimer;
      self->_expirationTimer = v7;

      v9 = [(HMDUserManagementOperation *)self expirationTimer];
      [v9 setDelegate:self];

      v10 = [(HMDUserManagementOperation *)self expirationTimer];
      [v10 resume];
    }
  }
}

- (HMDUserManagementOperation)initWithOperationType:(unint64_t)a3 identifier:(id)a4 user:(id)a5 accessory:(id)a6 expiration:(id)a7
{
  v47[2] = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v42.receiver = self;
  v42.super_class = HMDUserManagementOperation;
  v16 = [(HMDUserManagementOperation *)&v42 init];
  if (!v16)
  {
    goto LABEL_14;
  }

  v40 = v15;
  v41 = v13;
  if (v12)
  {
    v17 = v12;
    identifier = v16->_identifier;
    v16->_identifier = v17;
  }

  else if (a3 && v13 && v14)
  {
    if (a3 > 3)
    {
      v19 = @"unknown";
    }

    else
    {
      v19 = off_27972B528[a3 - 1];
    }

    identifier = [v14 uuid];
    v47[0] = v19;
    v21 = [v13 uuid];
    v39 = [v21 UUIDString];
    v47[1] = v39;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    v23 = [v38 hm_deriveUUIDFromBaseUUID:identifier identifierSalt:0 withSalts:v22];
    v24 = v16->_identifier;
    v16->_identifier = v23;
  }

  else
  {
    v20 = [MEMORY[0x277CCAD78] UUID];
    identifier = v16->_identifier;
    v16->_identifier = v20;
  }

  v25 = HMDispatchQueueNameString();
  v26 = [v25 UTF8String];
  v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v28 = dispatch_queue_create(v26, v27);
  clientQueue = v16->_clientQueue;
  v16->_clientQueue = v28;

  v16->_operationType = a3;
  objc_storeStrong(&v16->_user, a5);
  objc_storeStrong(&v16->_accessory, a6);
  objc_storeStrong(&v16->_expirationDate, a7);
  v16->_backoffInterval = 10.0;
  v16->_lastOperationFailed = 0;
  if ([(HMDUserManagementOperation *)v16 isValid])
  {
    [(HMDUserManagementOperation *)v16 _setupExpirationTimer];
    v15 = v40;
    v13 = v41;
LABEL_14:
    v30 = v16;
    goto LABEL_18;
  }

  v31 = objc_autoreleasePoolPush();
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = HMFGetLogIdentifier();
    v34 = objc_opt_class();
    *buf = 138543618;
    v44 = v33;
    v45 = 2112;
    v46 = v34;
    v35 = v34;
    _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@[%@] Invalid operation, returning nil", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v31);
  v30 = 0;
  v15 = v40;
  v13 = v41;
LABEL_18:

  v36 = *MEMORY[0x277D85DE8];
  return v30;
}

- (HMDUserManagementOperation)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)operationWithDictionary:(id)a3 home:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 hmf_numberForKey:@"HM.operationType"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 integerValue];
    if (v7)
    {
LABEL_3:
      v11 = [v6 hmf_UUIDForKey:@"HM.user"];
      v12 = [v7 userWithUUID:v11];
      if (v12)
      {
        v13 = [v6 hmf_UUIDForKey:@"accessory"];
        v14 = [v7 accessoryWithUUID:v13];
        if (v14)
        {
          v15 = [v6 hmf_dateForKey:@"HM.expiry"];
          if (!v15)
          {
            v16 = [MEMORY[0x277D0F8D0] sharedPreferences];
            v34 = [v16 preferenceForKey:@"userManagementOperationExpiryTime"];

            v17 = MEMORY[0x277CBEAA8];
            v18 = [v34 numberValue];
            [v18 doubleValue];
            v15 = [v17 dateWithTimeIntervalSinceNow:?];
          }

          v19 = [[HMDUserManagementOperation alloc] initWithOperationType:v10 identifier:0 user:v12 accessory:v14 expiration:v15];
          [(HMDUserManagementOperation *)v19 setDelegate:v7];
        }

        else
        {
          v28 = objc_autoreleasePoolPush();
          v29 = a1;
          v30 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v31 = v35 = v28;
            *buf = 138543618;
            v37 = v31;
            v38 = 2112;
            v39 = v11;
            _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Cannot create user management operation from dictionary because accessory cannot be found, %@", buf, 0x16u);

            v28 = v35;
          }

          objc_autoreleasePoolPop(v28);
          v19 = 0;
        }
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = a1;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v37 = v27;
          v38 = 2112;
          v39 = v11;
          _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Cannot create user management operation from dictionary because user cannot be found, %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        v19 = 0;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v10 = 1;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v20 = objc_autoreleasePoolPush();
  v21 = a1;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v23;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cannot create user management operation from dictionary because home is not given", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v20);
  v19 = 0;
LABEL_20:

  v32 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)removeUserManagementOperationForUser:(id)a3 accessory:(id)a4 model:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v7 uuid];
  v11 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v12 = [v11 preferenceForKey:@"userManagementOperationExpiryTime"];

  v13 = MEMORY[0x277CBEAA8];
  v14 = [v12 numberValue];
  [v14 doubleValue];
  v15 = [v13 dateWithTimeIntervalSinceNow:?];

  if (v7)
  {
    v16 = [v7 expirationDate];

    if (v16)
    {
      v17 = [v7 expirationDate];

      v15 = v17;
    }
  }

  v18 = [[HMDUserManagementOperation alloc] initWithOperationType:2 identifier:v10 user:v9 accessory:v8 expiration:v15];

  return v18;
}

+ (id)addUserManagementOperationForUser:(id)a3 accessory:(id)a4 model:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [v7 uuid];
  v11 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v12 = [v11 preferenceForKey:@"userManagementOperationExpiryTime"];

  v13 = MEMORY[0x277CBEAA8];
  v14 = [v12 numberValue];
  [v14 doubleValue];
  v15 = [v13 dateWithTimeIntervalSinceNow:?];

  if (v7)
  {
    v16 = [v7 expirationDate];

    if (v16)
    {
      v17 = [v7 expirationDate];

      v15 = v17;
    }
  }

  v18 = [[HMDUserManagementOperation alloc] initWithOperationType:1 identifier:v10 user:v9 accessory:v8 expiration:v15];

  return v18;
}

+ (id)auditUserManagementOperationAccessory:(id)a3 model:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 uuid];
  v8 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v9 = [v8 preferenceForKey:@"userManagementOperationAuditExpiryTime"];

  v10 = MEMORY[0x277CBEAA8];
  v11 = [v9 numberValue];
  [v11 doubleValue];
  v12 = [v10 dateWithTimeIntervalSinceNow:?];

  if (v5)
  {
    v13 = [v5 expirationDate];

    if (v13)
    {
      v14 = [v5 expirationDate];

      v12 = v14;
    }
  }

  v15 = [[HMDUserManagementOperation alloc] initWithOperationType:3 identifier:v7 user:0 accessory:v6 expiration:v12];

  return v15;
}

+ (void)initialize
{
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_28662BE48 forPreferenceKey:@"userManagementOperationExpiryTime"];
  v2 = MEMORY[0x277D0F8D0];

  [v2 setDefaultValue:&unk_28662BE58 forPreferenceKey:@"userManagementOperationAuditExpiryTime"];
}

@end