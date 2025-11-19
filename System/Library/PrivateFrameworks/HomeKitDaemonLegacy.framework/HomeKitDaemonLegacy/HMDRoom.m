@interface HMDRoom
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5;
- (HMDHome)home;
- (HMDRoom)initWithCoder:(id)a3;
- (HMDRoom)initWithName:(id)a3 uuid:(id)a4 home:(id)a5;
- (NSDictionary)assistantObject;
- (NSString)name;
- (NSString)serializedIdentifier;
- (NSString)urlString;
- (id)attributeDescriptions;
- (id)backingStoreObjects:(int64_t)a3;
- (id)dumpStateWithPrivacyLevel:(unint64_t)a3;
- (id)logIdentifier;
- (id)messageDestination;
- (id)zones;
- (void)_handleRemoveAppDataModel:(id)a3 message:(id)a4;
- (void)_handleRenameRequest:(id)a3;
- (void)_handleUpdateAppDataModel:(id)a3 message:(id)a4;
- (void)_handleUpdateRoomModel:(id)a3 message:(id)a4;
- (void)_registerForMessages;
- (void)configure:(id)a3 queue:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setName:(id)a3;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
@end

@implementation HMDRoom

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v4 = [(HMDRoom *)self uuid];
  v5 = [v3 initWithName:@"uuid" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  v7 = [(HMDRoom *)self name];
  v8 = [v6 initWithName:@"name" value:v7];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)logIdentifier
{
  v2 = [(HMDRoom *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)zones
{
  v3 = [(HMDRoom *)self home];
  v4 = [v3 zones];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __16__HMDRoom_zones__block_invoke;
  v7[3] = &unk_27972E2D8;
  v7[4] = self;
  v5 = [v4 na_filter:v7];

  return v5;
}

uint64_t __16__HMDRoom_zones__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 rooms];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __16__HMDRoom_zones__block_invoke_2;
  v6[3] = &unk_27972AC68;
  v6[4] = *(a1 + 32);
  v4 = [v3 na_any:v6];

  return v4;
}

uint64_t __16__HMDRoom_zones__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uuid];
  v5 = [v3 uuid];

  v6 = HMFEqualObjects();
  return v6;
}

- (id)backingStoreObjects:(int64_t)a3
{
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [HMDRoomModel alloc];
  v7 = [(HMDRoom *)self uuid];
  v8 = [(HMDRoom *)self home];
  v9 = [v8 uuid];
  v10 = [(HMDBackingStoreModelObject *)v6 initWithObjectChangeType:1 uuid:v7 parentUUID:v9];

  v11 = [(HMDRoom *)self name];
  [(HMDRoomModel *)v10 setName:v11];

  [v5 addObject:v10];
  v12 = [(HMDRoom *)self appData];

  if (a3 >= 3 && v12)
  {
    v13 = [(HMDRoom *)self appData];
    v14 = [v13 modelObjectWithChangeType:1];
    [v5 addObject:v14];
  }

  return v5;
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    [(HMDRoom *)self _handleRemoveAppDataModel:v10 message:v7];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v14;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = objc_opt_class();
      v15 = v25;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved]", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [v7 responseHandler];

    if (v16)
    {
      v17 = [v7 responseHandler];
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      (v17)[2](v17, v18, 0);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (v12)
  {
    [(HMDRoom *)self _handleUpdateRoomModel:v12 message:v10];
    v13 = v9;
LABEL_15:

    goto LABEL_16;
  }

  v13 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    [(HMDRoom *)self _handleUpdateAppDataModel:v15 message:v10];
    goto LABEL_15;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    v24 = 138543874;
    v25 = v19;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = objc_opt_class();
    v20 = v29;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  v21 = [v10 responseHandler];

  if (v21)
  {
    v13 = [v10 responseHandler];
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(v13 + 2))(v13, v22, 0);

    goto LABEL_15;
  }

LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  v4 = [(HMDRoom *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(HMDRoom *)self home];
  [v10 encodeConditionalObject:v4 forKey:@"home"];
  v5 = [(HMDRoom *)self name];
  [v10 encodeObject:v5 forKey:@"roomName"];

  v6 = [(HMDRoom *)self uuid];
  v7 = [v6 UUIDString];
  [v10 encodeObject:v7 forKey:@"roomUUID"];

  LODWORD(v6) = [v10 hmd_isForXPCTransport];
  v8 = [(HMDRoom *)self appData];
  v9 = v8;
  if (v6)
  {
    [v8 encodeForXPCTransportWithCoder:v10 key:@"HM.appData"];
  }

  else
  {
    [v10 encodeObject:v8 forKey:@"HM.appDataRepository"];
  }
}

- (HMDRoom)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"roomName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"roomUUID"];
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v9 = [(HMDRoom *)self initWithName:v5 uuid:v7 home:v8];
  if (v9)
  {
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.appDataRepository"];
    appData = v9->_appData;
    v9->_appData = v10;

    [(HMDApplicationData *)v9->_appData updateParentUUIDIfNil:v7];
  }

  return v9;
}

- (void)_handleRemoveAppDataModel:(id)a3 message:(id)a4
{
  v5 = a4;
  [(HMDRoom *)self setAppData:0];
  v6 = [v5 transactionResult];
  [v6 markChanged];
  [v5 respondWithPayload:0];
}

- (void)_handleUpdateAppDataModel:(id)a3 message:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDRoom *)self appData];

  if (v8)
  {
    v9 = [(HMDRoom *)self appData];
    [v9 updateWithModel:v6];
  }

  else
  {
    v10 = [HMDApplicationData alloc];
    v11 = [v6 appDataDictionary];
    v12 = [(HMDRoom *)self uuid];
    v13 = [(HMDApplicationData *)v10 initWithDictionary:v11 parentUUID:v12];
    [(HMDRoom *)self setAppData:v13];

    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v6 appDataDictionary];
      v21 = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Updating the application data : %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  v19 = [v7 transactionResult];
  [v19 markChanged];
  [v7 respondWithPayload:0];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateRoomModel:(id)a3 message:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDRoom *)self uuid];
  v9 = [(HMDRoom *)self home];
  v10 = [v9 roomForEntireHome];
  v11 = [v10 uuid];
  v12 = [v8 isEqual:v11];

  if (!v12)
  {
    v20 = [v6 name];
    v21 = [v20 hm_truncatedNameString];

    if (v21 && [v21 length])
    {
      v22 = [(HMDRoom *)self home];
      if (v22)
      {
        v23 = [(HMDRoom *)self name];
        [(HMDRoom *)self setName:v21];
        v24 = [v7 transactionResult];
        [v24 markChanged];
        [v24 markSaveToAssistant];
        if ((HMFEqualObjects() & 1) == 0)
        {
          v25 = [(HMDRoom *)self uuid:@"kRoomOldNameKey"];
          v34[1] = v25;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:2];

          logAndPostNotification(@"HMDRoomNameUpdatedNotification", self, v26);
        }

        [v7 respondWithPayload:0];
      }

      else
      {
        v30 = [v7 responseHandler];
        v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        (v30)[2](v30, v31, 0);
      }
    }

    else
    {
      v27 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:20 userInfo:0];
      v28 = [v7 responseHandler];
      (v28)[2](v28, v27, 0);
    }

    goto LABEL_18;
  }

  v13 = [v7 name];
  v14 = HMFEqualObjects();

  v15 = objc_autoreleasePoolPush();
  v16 = self;
  v17 = HMFGetOSLogHandle();
  v18 = v17;
  if (!v14)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138544130;
      v36 = v29;
      v37 = 2112;
      v38 = v7;
      v39 = 2112;
      v40 = v6;
      v41 = 2112;
      v42 = &unk_286628B58;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot update name for the default room %@, %@, errorCode: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:29 userInfo:0];
    [v7 respondWithError:v21];
LABEL_18:

    goto LABEL_19;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v19;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Always return success for transaction update during replay and lookup", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  [v7 respondWithSuccess];
LABEL_19:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_handleRenameRequest:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 stringForKey:*MEMORY[0x277CD0D30]];
  v6 = HMMaxLengthForNaming();
  if ([v5 length] <= v6)
  {
    v12 = [(HMDRoom *)self home];
    v13 = [(HMDRoom *)self name];
    v11 = [v12 replaceName:v13 withNewName:v5];

    if (!v11)
    {
      v19 = [(HMDRoom *)self home];
      v20 = [HMDRoomModel alloc];
      v21 = [(HMDRoom *)self uuid];
      v22 = [v19 uuid];
      v23 = [(HMDBackingStoreModelObject *)v20 initWithObjectChangeType:2 uuid:v21 parentUUID:v22];

      [(HMDRoomModel *)v23 setName:v5];
      v24 = [v19 backingStore];
      v25 = [v4 name];
      v26 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v27 = [v24 transaction:v25 options:v26];

      [v27 add:v23 withMessage:v4];
      [v27 run];

      v11 = 0;
      goto LABEL_10;
    }

    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v17;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@New name does not conform to the HomeKit naming standard: %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", &v28, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:46];
  }

  [v4 respondWithError:v11];
LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDRoom *)self home];
  v4 = [v3 administratorHandler];
  v5 = *MEMORY[0x277CD0CB0];
  v6 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v10[0] = v6;
  v7 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  [v4 registerForMessage:v5 receiver:self policies:v8 selector:sel__handleRenameRequest_];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 hm_truncatedNameString];
  name = self->_name;
  self->_name = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v6 = MEMORY[0x277CCACA8];
  v7 = [(HMDRoom *)self name];
  v8 = [(HMDRoom *)self uuid];
  v9 = [v8 UUIDString];
  v10 = [(HMDRoom *)self urlString];
  v11 = [v6 stringWithFormat:@"name: %@  uuid: %@, assistantIdentifier: %@", v7, v9, v10];

  [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x277D0F170]];
  v12 = [(HMDRoom *)self appData];
  v13 = [v12 dumpStateWithPrivacyLevel:a3];
  [v5 setObject:v13 forKeyedSubscript:*MEMORY[0x277D0F050]];

  return v5;
}

- (NSString)serializedIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMDRoom *)self home];
  v5 = [v4 uuid];
  v6 = [v5 UUIDString];
  v7 = [(HMDRoom *)self uuid];
  v8 = [v7 UUIDString];
  v9 = [v3 stringWithFormat:@"%@/%@", v6, v8];

  return v9;
}

- (void)configure:(id)a3 queue:(id)a4
{
  v6 = a4;
  [(HMDRoom *)self setMsgDispatcher:a3];
  [(HMDRoom *)self setWorkQueue:v6];

  [(HMDRoom *)self _registerForMessages];
}

- (void)dealloc
{
  v3 = [(HMDRoom *)self msgDispatcher];
  [v3 deregisterReceiver:self];

  v4 = [(HMDRoom *)self home];
  v5 = [v4 administratorHandler];
  [v5 deregisterReceiver:self];

  v6.receiver = self;
  v6.super_class = HMDRoom;
  [(HMDRoom *)&v6 dealloc];
}

- (HMDRoom)initWithName:(id)a3 uuid:(id)a4 home:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = HMDRoom;
  v11 = [(HMDRoom *)&v23 init];
  if (v11)
  {
    v12 = [v8 hm_truncatedNameString];
    v13 = [v12 copy];
    name = v11->_name;
    v11->_name = v13;

    if (v9)
    {
      v15 = [v9 copy];
    }

    else
    {
      v15 = [MEMORY[0x277CCAD78] UUID];
    }

    v16 = v15;
    v17 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v15];
    uuid = v11->_uuid;
    v11->_uuid = v17;

    v19 = spiClientIdentifierForUUID(v11->_uuid);
    v20 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v19];
    spiClientIdentifier = v11->_spiClientIdentifier;
    v11->_spiClientIdentifier = v20;

    v11->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v11->_home, v10);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12_103240 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_103240, &__block_literal_global_103241);
  }

  v3 = logCategory__hmf_once_v13_103242;

  return v3;
}

uint64_t __22__HMDRoom_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13_103242;
  logCategory__hmf_once_v13_103242 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5
{
  v17[3] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 name];
  v7 = *MEMORY[0x277CD0CB0];
  v8 = HMFEqualObjects();

  if (v8)
  {
    v9 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v10 = [HMDXPCMessagePolicy policyWithEntitlements:1, v9];
    v17[1] = v10;
    v11 = objc_opt_new();
    v17[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];

    v13 = [v5 name];
    v14 = HMFCreateMessageBinding();
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (NSDictionary)assistantObject
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = [(HMDRoom *)self home];
  if (self)
  {
    v4 = [(HMDRoom *)self name];
    v5 = v4;
    if (v4 && v3)
    {
      v6 = [v3 name];

      if (v6)
      {
        v7 = objc_alloc(MEMORY[0x277CBEB38]);
        v51[0] = *MEMORY[0x277D48160];
        v50[0] = @"objectType";
        v50[1] = @"objectName";
        v8 = [(HMDRoom *)self name];
        v51[1] = v8;
        v50[2] = @"objectIdentifier";
        v9 = [(HMDRoom *)self urlString];
        v51[2] = v9;
        v50[3] = @"objectHome";
        v10 = [v3 name];
        v51[3] = v10;
        v50[4] = @"objectHomeIdentifier";
        v11 = [v3 urlString];
        v50[5] = @"objectReference";
        v51[4] = v11;
        v51[5] = self;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:6];
        v34 = [v7 initWithDictionary:v12];

        v13 = [MEMORY[0x277CBEB18] array];
        v14 = [MEMORY[0x277CBEB18] array];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v35 = v3;
        obj = [v3 zones];
        v38 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
        if (v38)
        {
          v37 = *v45;
          do
          {
            v15 = 0;
            do
            {
              if (*v45 != v37)
              {
                objc_enumerationMutation(obj);
              }

              v39 = v15;
              v16 = *(*(&v44 + 1) + 8 * v15);
              v40 = 0u;
              v41 = 0u;
              v42 = 0u;
              v43 = 0u;
              v17 = [v16 roomUUIDs];
              v18 = [v17 countByEnumeratingWithState:&v40 objects:v48 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v41;
                do
                {
                  for (i = 0; i != v19; ++i)
                  {
                    if (*v41 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v22 = *(*(&v40 + 1) + 8 * i);
                    v23 = [(HMDRoom *)self uuid];
                    LODWORD(v22) = [v23 hmf_isEqualToUUIDString:v22];

                    if (v22)
                    {
                      v24 = [v16 name];
                      [v13 addObject:v24];

                      v25 = [v16 urlString];
                      [v14 addObject:v25];
                    }
                  }

                  v19 = [v17 countByEnumeratingWithState:&v40 objects:v48 count:16];
                }

                while (v19);
              }

              v15 = v39 + 1;
            }

            while (v39 + 1 != v38);
            v38 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
          }

          while (v38);
        }

        v26 = v34;
        if ([v13 count])
        {
          [v34 setObject:v13 forKey:@"objectZones"];
          [v34 setObject:v14 forKey:@"objectZoneIdentifiers"];
        }

        v27 = [v34 copy];

        v3 = v35;
        goto LABEL_28;
      }
    }

    else
    {
    }
  }

  v28 = objc_autoreleasePoolPush();
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = HMFGetLogIdentifier();
    v31 = [(HMDRoom *)self name];
    *buf = 138543874;
    v53 = v30;
    v54 = 2112;
    v55 = v31;
    v56 = 2112;
    v57 = v3;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping because one of the properties of room is nil: name %@  home %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v28);
  v27 = 0;
LABEL_28:

  v32 = *MEMORY[0x277D85DE8];

  return v27;
}

- (NSString)urlString
{
  v2 = *MEMORY[0x277CCF2A0];
  v3 = [(HMDRoom *)self uuid];
  v4 = hm_assistantIdentifier();

  return v4;
}

@end