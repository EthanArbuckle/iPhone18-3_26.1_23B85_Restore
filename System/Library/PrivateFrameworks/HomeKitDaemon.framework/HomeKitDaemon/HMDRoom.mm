@interface HMDRoom
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (HMDHome)home;
- (HMDRoom)initWithCoder:(id)coder;
- (HMDRoom)initWithName:(id)name uuid:(id)uuid home:(id)home;
- (NSArray)lpAccessories;
- (NSDictionary)assistantObject;
- (NSString)name;
- (NSString)serializedIdentifier;
- (NSString)urlString;
- (id)attributeDescriptions;
- (id)backingStoreObjects:(int64_t)objects;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)logIdentifier;
- (id)messageDestination;
- (id)zones;
- (void)_handleRemoveAppDataModel:(id)model message:(id)message;
- (void)_handleRenameRequest:(id)request;
- (void)_handleUpdateAppDataModel:(id)model message:(id)message;
- (void)_handleUpdateRoomModel:(id)model message:(id)message;
- (void)_registerForMessages;
- (void)configure:(id)configure queue:(id)queue;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setName:(id)name;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
@end

@implementation HMDRoom

- (NSArray)lpAccessories
{
  selfCopy = self;
  sub_229690D74();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87EA50, &qword_22A57CBC0);
  v3 = sub_22A4DD81C();

  return v3;
}

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  uuid = [(HMDRoom *)self uuid];
  v5 = [v3 initWithName:@"uuid" value:uuid];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HMDRoom *)self name];
  v8 = [v6 initWithName:@"name" value:name];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)logIdentifier
{
  uuid = [(HMDRoom *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (id)zones
{
  home = [(HMDRoom *)self home];
  zones = [home zones];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __16__HMDRoom_zones__block_invoke;
  v7[3] = &unk_2786808A8;
  v7[4] = self;
  v5 = [zones na_filter:v7];

  return v5;
}

uint64_t __16__HMDRoom_zones__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 rooms];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __16__HMDRoom_zones__block_invoke_2;
  v6[3] = &unk_27867BB20;
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

- (id)backingStoreObjects:(int64_t)objects
{
  array = [MEMORY[0x277CBEB18] array];
  v6 = [HMDRoomModel alloc];
  uuid = [(HMDRoom *)self uuid];
  home = [(HMDRoom *)self home];
  uuid2 = [home uuid];
  v10 = [(HMDBackingStoreModelObject *)v6 initWithObjectChangeType:1 uuid:uuid parentUUID:uuid2];

  name = [(HMDRoom *)self name];
  [(HMDRoomModel *)v10 setName:name];

  [array addObject:v10];
  appData = [(HMDRoom *)self appData];

  if (objects >= 3 && appData)
  {
    appData2 = [(HMDRoom *)self appData];
    v14 = [appData2 modelObjectWithChangeType:1];
    [array addObject:v14];
  }

  return array;
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
  v26 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  messageCopy = message;
  v8 = removedCopy;
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
    [(HMDRoom *)self _handleRemoveAppDataModel:v10 message:messageCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
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
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectRemoved]", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    responseHandler = [messageCopy responseHandler];

    if (responseHandler)
    {
      responseHandler2 = [messageCopy responseHandler];
      v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      (responseHandler2)[2](responseHandler2, v18, 0);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v30 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = valuesCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (v12)
  {
    [(HMDRoom *)self _handleUpdateRoomModel:v12 message:messageCopy];
    responseHandler2 = valuesCopy;
LABEL_15:

    goto LABEL_16;
  }

  responseHandler2 = valuesCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = responseHandler2;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  if (v15)
  {
    [(HMDRoom *)self _handleUpdateAppDataModel:v15 message:messageCopy];
    goto LABEL_15;
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    v24 = 138543874;
    v25 = v19;
    v26 = 2112;
    v27 = responseHandler2;
    v28 = 2112;
    v29 = objc_opt_class();
    v20 = v29;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unknown model object (%@) sent to [%@ transactionObjectUpdated]", &v24, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  responseHandler = [messageCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [messageCopy responseHandler];
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(responseHandler2 + 2))(responseHandler2, v22, 0);

    goto LABEL_15;
  }

LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDRoom *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  home = [(HMDRoom *)self home];
  [coderCopy encodeConditionalObject:home forKey:@"home"];
  name = [(HMDRoom *)self name];
  [coderCopy encodeObject:name forKey:@"roomName"];

  uuid = [(HMDRoom *)self uuid];
  uUIDString = [uuid UUIDString];
  [coderCopy encodeObject:uUIDString forKey:@"roomUUID"];

  LODWORD(uuid) = [coderCopy hmd_isForXPCTransport];
  appData = [(HMDRoom *)self appData];
  v9 = appData;
  if (uuid)
  {
    [appData encodeForXPCTransportWithCoder:coderCopy key:@"HM.appData"];
  }

  else
  {
    [coderCopy encodeObject:appData forKey:@"HM.appDataRepository"];
  }
}

- (HMDRoom)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roomName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roomUUID"];
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
  v9 = [(HMDRoom *)self initWithName:v5 uuid:v7 home:v8];
  if (v9)
  {
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.appDataRepository"];
    appData = v9->_appData;
    v9->_appData = v10;

    [(HMDApplicationData *)v9->_appData updateParentUUIDIfNil:v7];
  }

  return v9;
}

- (void)_handleRemoveAppDataModel:(id)model message:(id)message
{
  messageCopy = message;
  [(HMDRoom *)self setAppData:0];
  transactionResult = [messageCopy transactionResult];
  [transactionResult markChanged];
  [messageCopy respondWithPayload:0];
}

- (void)_handleUpdateAppDataModel:(id)model message:(id)message
{
  v25 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  appData = [(HMDRoom *)self appData];

  if (appData)
  {
    appData2 = [(HMDRoom *)self appData];
    [appData2 updateWithModel:modelCopy];
  }

  else
  {
    v10 = [HMDApplicationData alloc];
    appDataDictionary = [modelCopy appDataDictionary];
    uuid = [(HMDRoom *)self uuid];
    v13 = [(HMDApplicationData *)v10 initWithDictionary:appDataDictionary parentUUID:uuid];
    [(HMDRoom *)self setAppData:v13];

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = HMFGetLogIdentifier();
      appDataDictionary2 = [modelCopy appDataDictionary];
      v21 = 138543618;
      v22 = v17;
      v23 = 2112;
      v24 = appDataDictionary2;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Updating the application data : %@", &v21, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  transactionResult = [messageCopy transactionResult];
  [transactionResult markChanged];
  [messageCopy respondWithPayload:0];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateRoomModel:(id)model message:(id)message
{
  v43 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  uuid = [(HMDRoom *)self uuid];
  home = [(HMDRoom *)self home];
  roomForEntireHome = [home roomForEntireHome];
  uuid2 = [roomForEntireHome uuid];
  v12 = [uuid isEqual:uuid2];

  if (!v12)
  {
    name = [modelCopy name];
    hm_truncatedNameString = [name hm_truncatedNameString];

    if (hm_truncatedNameString && [hm_truncatedNameString length])
    {
      home2 = [(HMDRoom *)self home];
      if (home2)
      {
        name2 = [(HMDRoom *)self name];
        [(HMDRoom *)self setName:hm_truncatedNameString];
        transactionResult = [messageCopy transactionResult];
        [transactionResult markChanged];
        [transactionResult markSaveToAssistant];
        if ((HMFEqualObjects() & 1) == 0)
        {
          v25 = [(HMDRoom *)self uuid:@"kRoomOldNameKey"];
          v34[1] = v25;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:2];

          logAndPostNotification(@"HMDRoomNameUpdatedNotification", self, v26);
        }

        [messageCopy respondWithPayload:0];
      }

      else
      {
        responseHandler = [messageCopy responseHandler];
        v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        (responseHandler)[2](responseHandler, v31, 0);
      }
    }

    else
    {
      v27 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:20 userInfo:0];
      responseHandler2 = [messageCopy responseHandler];
      (responseHandler2)[2](responseHandler2, v27, 0);
    }

    goto LABEL_18;
  }

  name3 = [messageCopy name];
  v14 = HMFEqualObjects();

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
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
      v38 = messageCopy;
      v39 = 2112;
      v40 = modelCopy;
      v41 = 2112;
      v42 = &unk_283E735E0;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Cannot update name for the default room %@, %@, errorCode: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v15);
    hm_truncatedNameString = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:29 userInfo:0];
    [messageCopy respondWithError:hm_truncatedNameString];
LABEL_18:

    goto LABEL_19;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543362;
    v36 = v19;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Always return success for transaction update during replay and lookup", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v15);
  [messageCopy respondWithSuccess];
LABEL_19:

  v32 = *MEMORY[0x277D85DE8];
}

- (void)_handleRenameRequest:(id)request
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy stringForKey:*MEMORY[0x277CD0D30]];
  v6 = HMMaxLengthForNaming();
  if ([v5 length] <= v6)
  {
    home = [(HMDRoom *)self home];
    name = [(HMDRoom *)self name];
    v11 = [home replaceName:name withNewName:v5];

    if (!v11)
    {
      home2 = [(HMDRoom *)self home];
      v20 = [HMDRoomModel alloc];
      uuid = [(HMDRoom *)self uuid];
      uuid2 = [home2 uuid];
      v23 = [(HMDBackingStoreModelObject *)v20 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

      [(HMDRoomModel *)v23 setName:v5];
      backingStore = [home2 backingStore];
      name2 = [requestCopy name];
      v26 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v27 = [backingStore transaction:name2 options:v26];

      [v27 add:v23 withMessage:requestCopy];
      [v27 run];

      v11 = 0;
      goto LABEL_10;
    }

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v17;
      v30 = 2112;
      v31 = v11;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@New name does not conform to the HomeKit naming standard: %@", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v10;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", &v28, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:46];
  }

  [requestCopy respondWithError:v11];
LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  v10[2] = *MEMORY[0x277D85DE8];
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    home = [(HMDRoom *)self home];
    administratorHandler = [home administratorHandler];
    v5 = *MEMORY[0x277CD0CB0];
    v6 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v10[0] = v6;
    v7 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v10[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    [administratorHandler registerForMessage:v5 receiver:self policies:v8 selector:sel__handleRenameRequest_];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  hm_truncatedNameString = [nameCopy hm_truncatedNameString];
  name = self->_name;
  self->_name = hm_truncatedNameString;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v6 = MEMORY[0x277CCACA8];
  name = [(HMDRoom *)self name];
  uuid = [(HMDRoom *)self uuid];
  uUIDString = [uuid UUIDString];
  urlString = [(HMDRoom *)self urlString];
  v11 = [v6 stringWithFormat:@"name: %@  uuid: %@, assistantIdentifier: %@", name, uUIDString, urlString];

  [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x277D0F170]];
  appData = [(HMDRoom *)self appData];
  v13 = [appData dumpStateWithPrivacyLevel:level];
  [v5 setObject:v13 forKeyedSubscript:*MEMORY[0x277D0F050]];

  return v5;
}

- (NSString)serializedIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  home = [(HMDRoom *)self home];
  uuid = [home uuid];
  uUIDString = [uuid UUIDString];
  uuid2 = [(HMDRoom *)self uuid];
  uUIDString2 = [uuid2 UUIDString];
  v9 = [v3 stringWithFormat:@"%@/%@", uUIDString, uUIDString2];

  return v9;
}

- (void)configure:(id)configure queue:(id)queue
{
  queueCopy = queue;
  [(HMDRoom *)self setMsgDispatcher:configure];
  [(HMDRoom *)self setWorkQueue:queueCopy];

  [(HMDRoom *)self _registerForMessages];
}

- (void)dealloc
{
  msgDispatcher = [(HMDRoom *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  home = [(HMDRoom *)self home];
  administratorHandler = [home administratorHandler];
  [administratorHandler deregisterReceiver:self];

  v6.receiver = self;
  v6.super_class = HMDRoom;
  [(HMDRoom *)&v6 dealloc];
}

- (HMDRoom)initWithName:(id)name uuid:(id)uuid home:(id)home
{
  nameCopy = name;
  uuidCopy = uuid;
  homeCopy = home;
  v23.receiver = self;
  v23.super_class = HMDRoom;
  v11 = [(HMDRoom *)&v23 init];
  if (v11)
  {
    hm_truncatedNameString = [nameCopy hm_truncatedNameString];
    v13 = [hm_truncatedNameString copy];
    name = v11->_name;
    v11->_name = v13;

    if (uuidCopy)
    {
      uUID = [uuidCopy copy];
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
    }

    v16 = uUID;
    v17 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:uUID];
    uuid = v11->_uuid;
    v11->_uuid = v17;

    v19 = spiClientIdentifierForUUID(v11->_uuid);
    v20 = [MEMORY[0x277D0F890] hmf_cachedInstanceForNSUUID:v19];
    spiClientIdentifier = v11->_spiClientIdentifier;
    v11->_spiClientIdentifier = v20;

    v11->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v11->_home, homeCopy);
  }

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12_155230 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_155230, &__block_literal_global_155231);
  }

  v3 = logCategory__hmf_once_v13_155232;

  return v3;
}

void __22__HMDRoom_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13_155232;
  logCategory__hmf_once_v13_155232 = v1;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v17[3] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  name = [messageCopy name];
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

    name2 = [messageCopy name];
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
  home = [(HMDRoom *)self home];
  if (self)
  {
    name = [(HMDRoom *)self name];
    v5 = name;
    if (name && home)
    {
      name2 = [home name];

      if (name2)
      {
        v7 = objc_alloc(MEMORY[0x277CBEB38]);
        v51[0] = *MEMORY[0x277D48160];
        v50[0] = @"objectType";
        v50[1] = @"objectName";
        name3 = [(HMDRoom *)self name];
        v51[1] = name3;
        v50[2] = @"objectIdentifier";
        urlString = [(HMDRoom *)self urlString];
        v51[2] = urlString;
        v50[3] = @"objectHome";
        name4 = [home name];
        v51[3] = name4;
        v50[4] = @"objectHomeIdentifier";
        urlString2 = [home urlString];
        v50[5] = @"objectReference";
        v51[4] = urlString2;
        v51[5] = self;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:6];
        v34 = [v7 initWithDictionary:v12];

        array = [MEMORY[0x277CBEB18] array];
        array2 = [MEMORY[0x277CBEB18] array];
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v35 = home;
        obj = [home zones];
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
              roomUUIDs = [v16 roomUUIDs];
              v18 = [roomUUIDs countByEnumeratingWithState:&v40 objects:v48 count:16];
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
                      objc_enumerationMutation(roomUUIDs);
                    }

                    v22 = *(*(&v40 + 1) + 8 * i);
                    uuid = [(HMDRoom *)self uuid];
                    LODWORD(v22) = [uuid hmf_isEqualToUUIDString:v22];

                    if (v22)
                    {
                      name5 = [v16 name];
                      [array addObject:name5];

                      urlString3 = [v16 urlString];
                      [array2 addObject:urlString3];
                    }
                  }

                  v19 = [roomUUIDs countByEnumeratingWithState:&v40 objects:v48 count:16];
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
        if ([array count])
        {
          [v34 setObject:array forKey:@"objectZones"];
          [v34 setObject:array2 forKey:@"objectZoneIdentifiers"];
        }

        v27 = [v34 copy];

        home = v35;
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
    name6 = [(HMDRoom *)self name];
    *buf = 138543874;
    v53 = v30;
    v54 = 2112;
    v55 = name6;
    v56 = 2112;
    v57 = home;
    _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping because one of the properties of room is nil: name %@  home %@", buf, 0x20u);
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
  uuid = [(HMDRoom *)self uuid];
  v4 = hm_assistantIdentifier();

  return v4;
}

@end