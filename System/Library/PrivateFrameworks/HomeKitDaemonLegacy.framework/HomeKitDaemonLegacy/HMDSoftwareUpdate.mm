@interface HMDSoftwareUpdate
+ (id)logCategory;
+ (id)modelNamespace;
- (BOOL)hasRegisteredDocumentationMetadata;
- (BOOL)isEqual:(id)equal;
- (HMDAccessory)accessory;
- (HMDSoftwareUpdate)initWithCoder:(id)coder;
- (HMDSoftwareUpdate)initWithModel:(id)model;
- (HMDSoftwareUpdate)initWithVersion:(id)version displayableVersion:(id)displayableVersion downloadSize:(unint64_t)size state:(int64_t)state installDuration:(double)duration documentationMetadata:(id)metadata releaseDate:(id)date;
- (HMDSoftwareUpdateDataSource)dataSource;
- (HMDSoftwareUpdateModel)model;
- (HMSoftwareUpdateDocumentationMetadata)documentationMetadata;
- (NSDate)releaseDate;
- (NSString)propertyDescription;
- (id)logIdentifier;
- (id)messageDestination;
- (id)transactionWithObjectChangeType:(unint64_t)type;
- (id)transactionWithObjectChangeType:(unint64_t)type forAccessoryUUID:(id)d;
- (int64_t)state;
- (unint64_t)hash;
- (unint64_t)needsAttentionReasons;
- (unint64_t)updateType;
- (void)_handleDocumentationRequest:(id)request;
- (void)_handleDocumentationStateNotification:(id)notification;
- (void)_handleNeedsAttentionReasonsRequest:(id)request;
- (void)_handleUpdateDocumentationMetadata:(id)metadata;
- (void)_handleUpdateState:(id)state;
- (void)_processFirmwareUpdateUINotification:(id)notification;
- (void)_updateState:(int64_t)state message:(id)message options:(id)options;
- (void)configureWithAccessory:(id)accessory dataSource:(id)source messageDispatcher:(id)dispatcher;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)registerForMessages;
- (void)setDocumentationMetadata:(id)metadata;
- (void)setHasRegisteredDocumentationMetadata:(BOOL)metadata;
- (void)setNeedsAttentionReasons:(unint64_t)reasons;
- (void)setReleaseDate:(id)date;
- (void)setState:(int64_t)state;
- (void)setUpdateType:(unint64_t)type;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)updateLocalState:(int64_t)state;
@end

@implementation HMDSoftwareUpdate

- (HMDAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HMDSoftwareUpdateDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMDSoftwareUpdate *)self identifier];
  [coderCopy encodeObject:identifier forKey:*MEMORY[0x277CD10E8]];

  version = [(HMDSoftwareUpdate *)self version];
  [coderCopy encodeObject:version forKey:*MEMORY[0x277CD1190]];

  displayableVersion = [(HMDSoftwareUpdate *)self displayableVersion];
  [coderCopy encodeObject:displayableVersion forKey:*MEMORY[0x277CD10B0]];

  state = [(HMDSoftwareUpdate *)self state];
  [coderCopy encodeInteger:state forKey:*MEMORY[0x277CD1168]];
  downloadSize = [(HMDSoftwareUpdate *)self downloadSize];
  [coderCopy encodeInt64:downloadSize forKey:*MEMORY[0x277CD10E0]];
  [(HMDSoftwareUpdate *)self installDuration];
  [coderCopy encodeInteger:v9 forKey:*MEMORY[0x277CD10F0]];
  documentationMetadata = [(HMDSoftwareUpdate *)self documentationMetadata];
  [coderCopy encodeObject:documentationMetadata forKey:*MEMORY[0x277CD10C8]];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSoftwareUpdate updateType](self, "updateType")}];
  [coderCopy encodeObject:v11 forKey:*MEMORY[0x277CD1188]];

  releaseDate = [(HMDSoftwareUpdate *)self releaseDate];
  [coderCopy encodeObject:releaseDate forKey:*MEMORY[0x277CD1150]];

  if ([coderCopy hmd_isForXPCTransportEntitledForSPIAccess])
  {
    v13 = +[HMDSoftwareUpdateDocumentationManager sharedManager];
    documentationMetadata2 = [(HMDSoftwareUpdate *)self documentationMetadata];
    v15 = [v13 assetForDocumentationMetadata:documentationMetadata2];

    documentation = [v15 documentation];
    [coderCopy encodeObject:documentation forKey:*MEMORY[0x277CD10B8]];
  }
}

- (HMDSoftwareUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD1190]];
  shortVersionString = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD10B0]];
  if (!shortVersionString)
  {
    shortVersionString = [v5 shortVersionString];
  }

  v7 = [coderCopy decodeInt64ForKey:*MEMORY[0x277CD10E0]];
  v8 = [coderCopy decodeIntegerForKey:*MEMORY[0x277CD1168]];
  v9 = [coderCopy decodeIntegerForKey:*MEMORY[0x277CD10F0]];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD10C8]];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD1150]];
  v12 = [(HMDSoftwareUpdate *)self initWithVersion:v5 displayableVersion:shortVersionString downloadSize:v7 state:v8 installDuration:v10 documentationMetadata:v11 releaseDate:v9];
  if (v12)
  {
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD10E8]];
    identifier = v12->_identifier;
    v12->_identifier = v13;
  }

  return v12;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  messageTargetUUID = [(HMDSoftwareUpdate *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (id)logIdentifier
{
  identifier = [(HMDSoftwareUpdate *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)_processFirmwareUpdateUINotification:(id)notification
{
  v39 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  accessory = [notificationCopy accessory];
  v5 = accessory;
  if (accessory)
  {
    home = [accessory home];
    if (!home)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = notificationCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        name = [v5 name];
        *buf = 138543618;
        v34 = v26;
        v35 = 2112;
        v36 = name;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Failed to send firmware update notification: Unable to retrieve home from accessory %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      goto LABEL_24;
    }

    v7 = v5;
    objc_opt_class();
    v8 = objc_opt_isKindOfClass() & 1;
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v8)
    {
      supportsCHIP = [v7 supportsCHIP];
      v12 = objc_autoreleasePoolPush();
      v13 = notificationCopy;
      v14 = HMFGetOSLogHandle();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (supportsCHIP)
      {
        if (v15)
        {
          HMFGetLogIdentifier();
          v16 = v32 = v12;
          name2 = [v7 name];
          displayableFirmwareVersion = [v7 displayableFirmwareVersion];
          *buf = 138543874;
          v34 = v16;
          v35 = 2112;
          v36 = name2;
          v37 = 2112;
          v38 = displayableFirmwareVersion;
          _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Issuing firmware update UI notification for Matter accessory %@ (displayable firmware version: %@) using primary residence as controller", buf, 0x20u);

          v12 = v32;
        }

        objc_autoreleasePoolPop(v12);
        [home sendFirmwareUpdateUINotification:v7];
        goto LABEL_23;
      }

      if (v15)
      {
        v28 = HMFGetLogIdentifier();
        name3 = [v7 name];
        *buf = 138543618;
        v34 = v28;
        v35 = 2112;
        v36 = name3;
        v30 = "%{public}@Skipping firmware update notification: Accessory %@ does not support Matter/CHIP";
        goto LABEL_21;
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = notificationCopy;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        name3 = [v7 name];
        *buf = 138543618;
        v34 = v28;
        v35 = 2112;
        v36 = name3;
        v30 = "%{public}@Skipping firmware update notification: Accessory %@ is not a HAP accessory";
LABEL_21:
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, v30, buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v12);
LABEL_23:

LABEL_24:
    goto LABEL_25;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = notificationCopy;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v22;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Failed to send firmware update notification: Unable to retrieve accessory from software update", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
LABEL_25:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v88[1] = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = valuesCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    selfCopy = self;
    v15 = v13;
    v16 = messageCopy;
    transactionResult = [v16 transactionResult];
    state = [v15 state];

    if (state)
    {
      state2 = [v15 state];
      unsignedIntegerValue = [state2 unsignedIntegerValue];

      if (unsignedIntegerValue != [(HMDSoftwareUpdate *)selfCopy state])
      {
        v76 = updatedCopy;
        v20 = objc_autoreleasePoolPush();
        v79 = selfCopy;
        v21 = selfCopy;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v23 = v71 = v20;
          v24 = HMSoftwareUpdateStateToString();
          *buf = 138543618;
          *&buf[4] = v23;
          v84 = 2112;
          v85 = v24;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating state: %@", buf, 0x16u);

          v20 = v71;
        }

        v73 = messageCopy;

        objc_autoreleasePoolPop(v20);
        if ([(HMDSoftwareUpdate *)v21 state]== 3 && unsignedIntegerValue == 4)
        {
          [(HMDSoftwareUpdate *)v21 _processFirmwareUpdateUINotification:v21];
        }

        [(HMDSoftwareUpdate *)v21 setState:unsignedIntegerValue];
        v25 = MEMORY[0x277D0F848];
        v26 = *MEMORY[0x277CD1180];
        v27 = v21;
        identifier = [v16 identifier];
        v88[0] = *MEMORY[0x277CD1170];
        v29 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSoftwareUpdate state](v27, "state")}];
        *buf = v29;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v88 count:1];
        v31 = [v25 entitledMessageWithName:v26 identifier:identifier messagePayload:v30];

        messageDestination = [(HMDSoftwareUpdate *)v27 messageDestination];

        [v31 setDestination:messageDestination];
        v33 = [v31 copy];

        messageDispatcher = [(HMDSoftwareUpdate *)v27 messageDispatcher];
        [messageDispatcher sendMessage:v33 completionHandler:0];

        [transactionResult markChanged];
        messageCopy = v73;
        updatedCopy = v76;
        selfCopy = v79;
      }
    }

    if ([v15 propertyWasSet:@"documentationMetadata"])
    {
      documentationMetadata = [v15 documentationMetadata];
      documentationMetadata2 = [(HMDSoftwareUpdate *)selfCopy documentationMetadata];
      v37 = HMFEqualObjects();

      if ((v37 & 1) == 0)
      {
        v77 = updatedCopy;
        v38 = objc_autoreleasePoolPush();
        v39 = selfCopy;
        v40 = v38;
        v80 = v39;
        v41 = v39;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v44 = v43 = messageCopy;
          *buf = 138543618;
          *&buf[4] = v44;
          v84 = 2112;
          v85 = documentationMetadata;
          _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Updating documentation metadata: %@", buf, 0x16u);

          messageCopy = v43;
        }

        objc_autoreleasePoolPop(v40);
        [(HMDSoftwareUpdate *)v41 setDocumentationMetadata:documentationMetadata];
        v45 = documentationMetadata;
        v46 = MEMORY[0x277D0F848];
        v69 = *MEMORY[0x277CD1178];
        v47 = v41;
        identifier2 = [v16 identifier];
        v88[0] = *MEMORY[0x277CD10D0];
        v72 = v45;
        v74 = messageCopy;
        if (v45)
        {
          encodeRootObjectForIncomingXPCMessage(v45, 0);
        }

        else
        {
          [MEMORY[0x277CBEB68] null];
        }
        v51 = ;
        *buf = v51;
        v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v88 count:{1, v69}];
        v53 = [v46 entitledMessageWithName:v70 identifier:identifier2 messagePayload:v52];

        messageDestination2 = [(HMDSoftwareUpdate *)v47 messageDestination];

        [v53 setDestination:messageDestination2];
        v55 = [v53 copy];

        messageDispatcher2 = [(HMDSoftwareUpdate *)v47 messageDispatcher];
        [messageDispatcher2 sendMessage:v55 completionHandler:0];

        [transactionResult markChanged];
        messageCopy = v74;
        updatedCopy = v77;
        selfCopy = v80;
      }
    }

    releaseDate = [v15 releaseDate];

    if (releaseDate)
    {
      releaseDate2 = [v15 releaseDate];
      releaseDate3 = [(HMDSoftwareUpdate *)selfCopy releaseDate];
      v60 = [releaseDate2 isEqualToDate:releaseDate3];

      if ((v60 & 1) == 0)
      {
        v61 = objc_autoreleasePoolPush();
        v81 = selfCopy;
        v62 = selfCopy;
        v63 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v64 = v75 = messageCopy;
          [(HMDSoftwareUpdate *)v62 releaseDate];
          v65 = v78 = updatedCopy;
          *buf = 138543874;
          *&buf[4] = v64;
          v84 = 2112;
          v85 = v65;
          v86 = 2112;
          v87 = releaseDate2;
          _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_INFO, "%{public}@Updating releaseDate from %@ to %@", buf, 0x20u);

          updatedCopy = v78;
          messageCopy = v75;
        }

        objc_autoreleasePoolPop(v61);
        [(HMDSoftwareUpdate *)v62 setReleaseDate:releaseDate2];
        [transactionResult markChanged];
        selfCopy = v81;
      }
    }

    responseHandler = [v16 responseHandler];

    if (responseHandler)
    {
      responseHandler2 = [v16 responseHandler];
      responseHandler2[2](responseHandler2, 0, 0);
    }
  }

  else
  {
    responseHandler3 = [messageCopy responseHandler];
    v50 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (responseHandler3)[2](responseHandler3, v50, 0);
  }

  v68 = *MEMORY[0x277D85DE8];
}

- (id)transactionWithObjectChangeType:(unint64_t)type forAccessoryUUID:(id)d
{
  v5 = [d copy];
  v6 = [MEMORY[0x277CBEB28] dataWithLength:16];
  [v5 getUUIDBytes:{objc_msgSend(v6, "mutableBytes")}];
  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = +[HMDSoftwareUpdate modelNamespace];
  v9 = [v7 initWithNamespace:v8 data:v6];

  v10 = [(HMDBackingStoreModelObject *)[HMDSoftwareUpdateModel alloc] initWithObjectChangeType:type uuid:v9 parentUUID:v5];

  return v10;
}

- (id)transactionWithObjectChangeType:(unint64_t)type
{
  accessory = [(HMDSoftwareUpdate *)self accessory];
  uuid = [accessory uuid];

  v6 = [MEMORY[0x277CBEB28] dataWithLength:16];
  [uuid getUUIDBytes:{objc_msgSend(v6, "mutableBytes")}];
  v7 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = +[HMDSoftwareUpdate modelNamespace];
  v9 = [v7 initWithNamespace:v8 data:v6];

  v10 = [(HMDBackingStoreModelObject *)[HMDSoftwareUpdateModel alloc] initWithObjectChangeType:type uuid:v9 parentUUID:uuid];

  return v10;
}

- (HMDSoftwareUpdateModel)model
{
  v3 = [(HMDSoftwareUpdate *)self transactionWithObjectChangeType:0];
  version = [(HMDSoftwareUpdate *)self version];
  [v3 setSoftwareVersion:version];

  displayableVersion = [(HMDSoftwareUpdate *)self displayableVersion];
  [v3 setDisplayableSoftwareVersion:displayableVersion];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSoftwareUpdate state](self, "state")}];
  [v3 setState:v6];

  v7 = MEMORY[0x277CCABB0];
  [(HMDSoftwareUpdate *)self installDuration];
  v8 = [v7 numberWithDouble:?];
  [v3 setInstallDuration:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDSoftwareUpdate downloadSize](self, "downloadSize")}];
  [v3 setDownloadSize:v9];

  releaseDate = [(HMDSoftwareUpdate *)self releaseDate];
  [v3 setReleaseDate:releaseDate];

  documentationMetadata = [(HMDSoftwareUpdate *)self documentationMetadata];

  if (documentationMetadata)
  {
    documentationMetadata2 = [(HMDSoftwareUpdate *)self documentationMetadata];
    v13 = [documentationMetadata2 copy];
    [v3 setDocumentationMetadata:v13];
  }

  return v3;
}

- (void)setReleaseDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock_with_options();
  if (![(NSDate *)self->_releaseDate isEqualToDate:dateCopy])
  {
    v4 = [dateCopy copy];
    releaseDate = self->_releaseDate;
    self->_releaseDate = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)releaseDate
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSDate *)self->_releaseDate copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_handleNeedsAttentionReasonsRequest:(id)request
{
  v23[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  responseHandler = [requestCopy responseHandler];

  if (responseHandler)
  {
    v22 = *MEMORY[0x277CD1140];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSoftwareUpdate needsAttentionReasons](self, "needsAttentionReasons")}];
    v23[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *MEMORY[0x277CD1160];
      v16 = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v12;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending %@ reply with payload %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    responseHandler2 = [requestCopy responseHandler];
    v14 = [v7 copy];
    (responseHandler2)[2](responseHandler2, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setNeedsAttentionReasons:(unint64_t)reasons
{
  v31[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self->_needsAttentionReasons == reasons)
  {
    v5 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_needsAttentionReasons = reasons;
    os_unfair_lock_unlock(&self->_lock);
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = HMSoftwareUpdateNeedsAttentionReasonsToString();
      v24 = 138543618;
      v25 = v9;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@NeedsAttentionReasons updated to %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v30 = *MEMORY[0x277CD1140];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reasons];
    v31[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];

    v13 = objc_alloc(MEMORY[0x277D0F820]);
    identifier = [(HMDSoftwareUpdate *)selfCopy identifier];
    v15 = [v13 initWithTarget:identifier];

    v16 = *MEMORY[0x277CD1138];
    v17 = [MEMORY[0x277D0F848] messageWithName:*MEMORY[0x277CD1138] destination:v15 payload:v12];
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543874;
      v25 = v21;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Sending message %@ to %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    messageDispatcher = [(HMDSoftwareUpdate *)v19 messageDispatcher];
    [messageDispatcher sendMessage:v17 completionHandler:0];

    v23 = *MEMORY[0x277D85DE8];
  }
}

- (unint64_t)needsAttentionReasons
{
  os_unfair_lock_lock_with_options();
  needsAttentionReasons = self->_needsAttentionReasons;
  os_unfair_lock_unlock(&self->_lock);
  return needsAttentionReasons;
}

- (void)setUpdateType:(unint64_t)type
{
  os_unfair_lock_lock_with_options();
  if (self->_updateType != type)
  {
    self->_updateType = type;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)updateType
{
  os_unfair_lock_lock_with_options();
  updateType = self->_updateType;
  os_unfair_lock_unlock(&self->_lock);
  return updateType;
}

- (void)_handleDocumentationStateNotification:(id)notification
{
  notificationCopy = notification;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDSoftwareUpdate__handleDocumentationStateNotification___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

void __59__HMDSoftwareUpdate__handleDocumentationStateNotification___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = [v4 metadata];
  v6 = [*(a1 + 40) documentationMetadata];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [*(a1 + 32) userInfo];
    v9 = [v8 hmf_numberForKey:@"state"];

    if (v9 && [v9 integerValue] == 4)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = *(a1 + 40);
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification documentation is available, notifying clients", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [objc_alloc(MEMORY[0x277D0F880]) initWithName:@"SUDocumentation"];
      v15 = [v4 documentation];
      v16 = v15;
      if (v15)
      {
        v25 = *MEMORY[0x277CD10C0];
        v17 = encodeRootObjectForIncomingXPCMessage(v15, 0);
        v26 = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];

        v19 = [MEMORY[0x277D0F848] entitledMessageWithName:*MEMORY[0x277CD10D8] messagePayload:{v18, v25}];
        v20 = [*(a1 + 40) messageDestination];
        [v19 setDestination:v20];

        v21 = [*(a1 + 40) messageDispatcher];
        [v21 sendMessage:v19 completionHandler:0];

        v22 = [*(a1 + 40) dataSource];
        v23 = [*(a1 + 40) identifier];
        [v22 updateGenerationCounterWithReason:@"SoftwareUpdateDocumentationCached" sourceUUID:v23 shouldNotifyClients:0];
      }
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)_handleDocumentationRequest:(id)request
{
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  documentationMetadata = [(HMDSoftwareUpdate *)self documentationMetadata];
  if (documentationMetadata)
  {
    v6 = +[HMDSoftwareUpdateDocumentationManager sharedManager];
    responseHandler = [v6 assetForDocumentationMetadata:documentationMetadata];

    if (!responseHandler)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Missing asset", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      responseHandler = [requestCopy responseHandler];

      if (responseHandler)
      {
        v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        responseHandler2 = [requestCopy responseHandler];
        (responseHandler2)[2](responseHandler2, v20, 0);

        responseHandler = 0;
      }

      goto LABEL_17;
    }

    if ([responseHandler state] <= 1 && (objc_msgSend(responseHandler, "isDownloadPermitted") & 1) == 0)
    {
      nextPermittedDownloadDate = [responseHandler nextPermittedDownloadDate];
      v26 = nextPermittedDownloadDate;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v24 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3201];
      [requestCopy respondWithPayload:v23 error:v24];

      goto LABEL_12;
    }

    [responseHandler startCaching];
    responseHandler3 = [requestCopy responseHandler];

    if (!responseHandler3)
    {
LABEL_17:

      goto LABEL_18;
    }

    nextPermittedDownloadDate = [requestCopy responseHandler];
    v10 = nextPermittedDownloadDate[2];
LABEL_11:
    v10();
LABEL_12:

    goto LABEL_17;
  }

  v11 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v14;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot get documentation without documentation metadata", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  responseHandler4 = [requestCopy responseHandler];

  if (responseHandler4)
  {
    responseHandler = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    nextPermittedDownloadDate = [requestCopy responseHandler];
    v10 = nextPermittedDownloadDate[2];
    goto LABEL_11;
  }

LABEL_18:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateDocumentationMetadata:(id)metadata
{
  v45 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  if (__shouldAcceptMessage(self, metadataCopy))
  {
    v5 = *MEMORY[0x277CD10D0];
    v6 = [metadataCopy nullForKey:*MEMORY[0x277CD10D0]];

    if (v6)
    {
      v7 = 0;
      goto LABEL_4;
    }

    v22 = [metadataCopy dataForKey:v5];
    if (v22)
    {
      responseHandler2 = v22;
      v40 = 0;
      v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v22 error:&v40];
      v23 = v40;
      v24 = v23;
      if (v7)
      {

LABEL_4:
        v8 = objc_autoreleasePoolPush();
        selfCopy = self;
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v11;
          v43 = 2112;
          v44 = v7;
          _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Updating with documentation metadata: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v8);
        documentationMetadata = [(HMDSoftwareUpdate *)selfCopy documentationMetadata];
        v13 = HMFEqualObjects();

        if (v13)
        {
          responseHandler = [metadataCopy responseHandler];

          if (!responseHandler)
          {
LABEL_24:

            goto LABEL_25;
          }

          responseHandler2 = [metadataCopy responseHandler];
          responseHandler2[2](responseHandler2, 0, 0);
        }

        else
        {
          responseHandler2 = [(HMDSoftwareUpdate *)selfCopy transactionWithObjectChangeType:2];
          [responseHandler2 setDocumentationMetadata:v7];
          accessory = [(HMDSoftwareUpdate *)selfCopy accessory];
          home = [accessory home];
          backingStore = [home backingStore];
          name = [metadataCopy name];
          v20 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
          v21 = [backingStore transaction:name options:v20];

          [v21 add:responseHandler2 withMessage:metadataCopy];
          [v21 run];
        }

LABEL_23:

        goto LABEL_24;
      }

      v32 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v35;
        v43 = 2112;
        v44 = v24;
        _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive software update documentation metadata from metadata data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      responseHandler3 = [metadataCopy responseHandler];

      if (responseHandler3)
      {
        v37 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        responseHandler4 = [metadataCopy responseHandler];
        (responseHandler4)[2](responseHandler4, v37, 0);
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        messagePayload = [metadataCopy messagePayload];
        *buf = 138543618;
        v42 = v28;
        v43 = 2112;
        v44 = messagePayload;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Missing documentation metadata from message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      responseHandler5 = [metadataCopy responseHandler];

      if (!responseHandler5)
      {
        v7 = 0;
        goto LABEL_24;
      }

      responseHandler2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      responseHandler6 = [metadataCopy responseHandler];
      responseHandler6[2](responseHandler6, responseHandler2, 0);
    }

    v7 = 0;
    goto LABEL_23;
  }

LABEL_25:

  v39 = *MEMORY[0x277D85DE8];
}

- (void)setHasRegisteredDocumentationMetadata:(BOOL)metadata
{
  os_unfair_lock_lock_with_options();
  self->_hasRegisteredDocumentationMetadata = metadata;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasRegisteredDocumentationMetadata
{
  os_unfair_lock_lock_with_options();
  hasRegisteredDocumentationMetadata = self->_hasRegisteredDocumentationMetadata;
  os_unfair_lock_unlock(&self->_lock);
  return hasRegisteredDocumentationMetadata;
}

- (void)setDocumentationMetadata:(id)metadata
{
  metadataCopy = metadata;
  os_unfair_lock_lock_with_options();
  v6 = self->_documentationMetadata;
  if (HMFEqualObjects())
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_documentationMetadata, metadata);
    os_unfair_lock_unlock(&self->_lock);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__HMDSoftwareUpdate_setDocumentationMetadata___block_invoke;
    block[3] = &unk_279734960;
    block[4] = self;
    v9 = metadataCopy;
    v10 = v6;
    dispatch_async(queue, block);
  }
}

void __46__HMDSoftwareUpdate_setDocumentationMetadata___block_invoke(id *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = HMFGetLogIdentifier();
    v6 = a1[5];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Updated documentation metadata: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = a1[4];
  if (a1[5])
  {
    [v7 setHasRegisteredDocumentationMetadata:1];
    __registerDocumentationMetadata(a1[4], a1[5]);
  }

  else
  {
    __unregisterDocumentationMetadata(v7, a1[6]);
    [a1[4] setHasRegisteredDocumentationMetadata:0];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (HMSoftwareUpdateDocumentationMetadata)documentationMetadata
{
  os_unfair_lock_lock_with_options();
  v3 = self->_documentationMetadata;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_handleUpdateState:(id)state
{
  v28 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (__shouldAcceptMessage(self, stateCopy))
  {
    v5 = [stateCopy numberForKey:*MEMORY[0x277CD1170]];
    v6 = v5;
    if (v5)
    {
      integerValue = [v5 integerValue];
      if (integerValue < 6)
      {
        v8 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
        [(HMDSoftwareUpdate *)self _updateState:integerValue message:stateCopy options:v8];
LABEL_14:

LABEL_15:
        goto LABEL_16;
      }

      v17 = objc_autoreleasePoolPush();
      selfCopy = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v20;
        v26 = 2048;
        v27 = integerValue;
        _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid state: %ld", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      responseHandler = [stateCopy responseHandler];

      if (!responseHandler)
      {
        goto LABEL_15;
      }

      v15 = MEMORY[0x277CCA9B8];
      v16 = 43;
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        messagePayload = [stateCopy messagePayload];
        v24 = 138543618;
        v25 = v12;
        v26 = 2112;
        v27 = messagePayload;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Missing state from message payload: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      responseHandler2 = [stateCopy responseHandler];

      if (!responseHandler2)
      {
        goto LABEL_15;
      }

      v15 = MEMORY[0x277CCA9B8];
      v16 = 3;
    }

    v8 = [v15 hmErrorWithCode:v16];
    responseHandler3 = [stateCopy responseHandler];
    (responseHandler3)[2](responseHandler3, v8, 0);

    goto LABEL_14;
  }

LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_updateState:(int64_t)state message:(id)message options:(id)options
{
  v35 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  optionsCopy = options;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    v14 = HMSoftwareUpdateStateToString();
    [(HMDSoftwareUpdate *)selfCopy state];
    v15 = HMSoftwareUpdateStateToString();
    v29 = 138543874;
    v30 = v13;
    v31 = 2112;
    v32 = v14;
    v33 = 2112;
    v34 = v15;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Updating state: %@ from current state: %@", &v29, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  if (state == 3 && ![(HMDSoftwareUpdate *)selfCopy allowExtraUpdate])
  {
    [(HMDSoftwareUpdate *)selfCopy setAllowExtraUpdate:1];
  }

  if ([(HMDSoftwareUpdate *)selfCopy state]== state && ![(HMDSoftwareUpdate *)selfCopy allowExtraUpdate])
  {
    responseHandler = [messageCopy responseHandler];

    if (!responseHandler)
    {
      goto LABEL_20;
    }

    responseHandler2 = [messageCopy responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
  }

  else
  {
    responseHandler2 = [(HMDSoftwareUpdate *)selfCopy transactionWithObjectChangeType:2];
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:state];
    [responseHandler2 setState:v17];

    accessory = [(HMDSoftwareUpdate *)selfCopy accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = accessory;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    if (v20 && ([accessory isCurrentAccessory] & 1) != 0)
    {
      v21 = &HMDAppleMediaAccessorySoftwareUpdateLabel;
    }

    else
    {
      v21 = &HMDAccessorySoftwareUpdateLabel;
    }

    v22 = *v21;

    home = [accessory home];
    backingStore = [home backingStore];
    v25 = [backingStore transaction:v22 options:optionsCopy];

    [v25 add:responseHandler2 withMessage:messageCopy];
    [v25 run];
    allowExtraUpdate = [(HMDSoftwareUpdate *)selfCopy allowExtraUpdate];
    if (state != 3 && allowExtraUpdate)
    {
      [(HMDSoftwareUpdate *)selfCopy setAllowExtraUpdate:0];
    }
  }

LABEL_20:
  v27 = *MEMORY[0x277D85DE8];
}

- (void)updateLocalState:(int64_t)state
{
  v5 = +[HMDBackingStoreTransactionOptions defaultLocalOptions];
  [(HMDSoftwareUpdate *)self _updateState:state message:0 options:v5];
}

- (void)setState:(int64_t)state
{
  os_unfair_lock_lock_with_options();
  if (self->_state == state)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_state = state;
    os_unfair_lock_unlock(&self->_lock);
    accessory = [(HMDSoftwareUpdate *)self accessory];
    home = [accessory home];
    [home reevaluateAccessoryInfo];
  }
}

- (int64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (void)registerForMessages
{
  v14[3] = *MEMORY[0x277D85DE8];
  accessory = [(HMDSoftwareUpdate *)self accessory];
  home = [accessory home];
  messageDispatcher = [(HMDSoftwareUpdate *)self messageDispatcher];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  if (([accessory isCurrentAccessory] & 1) != 0 || objc_msgSend(accessory, "supportsFirmwareUpdate"))
  {
    v14[0] = v6;
    v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v14[1] = v7;
    v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:3 remoteAccessRequired:0];
    v14[2] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];

    [messageDispatcher registerForMessage:*MEMORY[0x277CD1180] receiver:self policies:v9 selector:sel__handleUpdateState_];
    [messageDispatcher registerForMessage:*MEMORY[0x277CD1178] receiver:self policies:v9 selector:sel__handleUpdateDocumentationMetadata_];
  }

  v10 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0, v6];
  v13[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  [messageDispatcher registerForMessage:*MEMORY[0x277CD1158] receiver:self policies:v11 selector:sel__handleDocumentationRequest_];
  [messageDispatcher registerForMessage:*MEMORY[0x277CD1160] receiver:self policies:v11 selector:sel__handleNeedsAttentionReasonsRequest_];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  documentationMetadata = [(HMDSoftwareUpdate *)self documentationMetadata];
  __unregisterDocumentationMetadata(self, documentationMetadata);
}

- (void)configureWithAccessory:(id)accessory dataSource:(id)source messageDispatcher:(id)dispatcher
{
  v35 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  sourceCopy = source;
  dispatcherCopy = dispatcher;
  if (!sourceCopy)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v21;
      v22 = "%{public}@Missing data source";
LABEL_15:
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, v22, &v33, 0xCu);
    }

LABEL_16:

    objc_autoreleasePoolPop(v18);
    goto LABEL_28;
  }

  if (!accessoryCopy)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v21;
      v22 = "%{public}@Missing accessory for update";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  [(HMDSoftwareUpdate *)self setDataSource:sourceCopy];
  [(HMDSoftwareUpdate *)self setAccessory:accessoryCopy];
  v11 = accessoryCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  v14 = v11;
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

  if (v13)
  {
    v17 = 1;
  }

  else if (v16)
  {
    if ([v16 isAppleAccessory])
    {
      v17 = 2;
    }

    else
    {
      v17 = 3;
    }
  }

  else
  {
    v17 = 0;
  }

  [(HMDSoftwareUpdate *)self setUpdateType:v17];
  identifier = [(HMDSoftwareUpdate *)self identifier];

  if (!identifier)
  {
    v24 = objc_alloc(MEMORY[0x277CCAD78]);
    uuid = [v14 uuid];
    version = [(HMDSoftwareUpdate *)self version];
    versionString = [version versionString];
    v28 = [versionString dataUsingEncoding:4];
    v29 = [v24 initWithNamespace:uuid data:v28];
    [(HMDSoftwareUpdate *)self setIdentifier:v29];
  }

  if (dispatcherCopy)
  {
    [(HMDSoftwareUpdate *)self setMessageDispatcher:dispatcherCopy];
    identifier2 = [(HMDSoftwareUpdate *)self identifier];

    if (identifier2)
    {
      [(HMDSoftwareUpdate *)self registerForMessages];
    }
  }

  [(HMDSoftwareUpdate *)self setHasRegisteredDocumentationMetadata:1];
  documentationMetadata = [(HMDSoftwareUpdate *)self documentationMetadata];
  __registerDocumentationMetadata(self, documentationMetadata);

LABEL_28:
  v32 = *MEMORY[0x277D85DE8];
}

- (NSString)propertyDescription
{
  releaseDate = [(HMDSoftwareUpdate *)self releaseDate];
  v4 = MEMORY[0x277CCACA8];
  version = [(HMDSoftwareUpdate *)self version];
  versionString = [version versionString];
  displayableVersion = [(HMDSoftwareUpdate *)self displayableVersion];
  [(HMDSoftwareUpdate *)self state];
  v8 = HMSoftwareUpdateStateToString();
  [(HMDSoftwareUpdate *)self downloadSize];
  v9 = NSLocalizedFileSizeDescription();
  [(HMDSoftwareUpdate *)self updateType];
  v10 = HMSoftwareUpdateUpdateTypeToString();
  v11 = [v4 stringWithFormat:@", Version = %@, Displayable Version = %@, State = %@, Download Size = %@, Release Date = %@, Update Type = %@", versionString, displayableVersion, v8, v9, releaseDate, v10];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      version = [(HMDSoftwareUpdate *)self version];
      version2 = [(HMDSoftwareUpdate *)v6 version];
      v9 = [version isEqual:version2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  version = [(HMDSoftwareUpdate *)self version];
  v3 = [version hash];

  return v3;
}

- (void)dealloc
{
  documentationMetadata = [(HMDSoftwareUpdate *)self documentationMetadata];
  if (documentationMetadata && [(HMDSoftwareUpdate *)self hasRegisteredDocumentationMetadata])
  {
    v4 = +[HMDSoftwareUpdateDocumentationManager sharedManager];
    [v4 unregisterDocumentationMetadata:documentationMetadata];
  }

  v5.receiver = self;
  v5.super_class = HMDSoftwareUpdate;
  [(HMDSoftwareUpdate *)&v5 dealloc];
}

- (HMDSoftwareUpdate)initWithVersion:(id)version displayableVersion:(id)displayableVersion downloadSize:(unint64_t)size state:(int64_t)state installDuration:(double)duration documentationMetadata:(id)metadata releaseDate:(id)date
{
  versionCopy = version;
  displayableVersionCopy = displayableVersion;
  metadataCopy = metadata;
  dateCopy = date;
  v35.receiver = self;
  v35.super_class = HMDSoftwareUpdate;
  v21 = [(HMDSoftwareUpdate *)&v35 init];
  if (v21)
  {
    stateCopy = state;
    v33 = dateCopy;
    sizeCopy = size;
    v34 = metadataCopy;
    v23 = versionCopy;
    v24 = HMDispatchQueueNameString();
    uTF8String = [v24 UTF8String];
    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create(uTF8String, v26);
    queue = v21->_queue;
    v21->_queue = v27;

    objc_storeStrong(&v21->_version, version);
    if (displayableVersionCopy)
    {
      hm_truncatedDisplayableVersionString = [displayableVersionCopy hm_truncatedDisplayableVersionString];
      versionCopy = v23;
    }

    else
    {
      versionCopy = v23;
      hm_truncatedDisplayableVersionString = [v23 shortVersionString];
    }

    displayableVersion = v21->_displayableVersion;
    v21->_displayableVersion = hm_truncatedDisplayableVersionString;

    v21->_state = stateCopy;
    v21->_downloadSize = sizeCopy;
    v21->_installDuration = duration;
    objc_storeStrong(&v21->_documentationMetadata, metadata);
    v21->_updateType = 0;
    objc_storeStrong(&v21->_releaseDate, date);
    dateCopy = v33;
    metadataCopy = v34;
  }

  return v21;
}

- (HMDSoftwareUpdate)initWithModel:(id)model
{
  v33 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  softwareVersion = [modelCopy softwareVersion];

  if (softwareVersion)
  {
    displayableSoftwareVersion = [modelCopy displayableSoftwareVersion];
    if (!displayableSoftwareVersion)
    {
      softwareVersion2 = [modelCopy softwareVersion];
      displayableSoftwareVersion = [softwareVersion2 shortVersionString];
    }

    softwareVersion3 = [modelCopy softwareVersion];
    downloadSize = [modelCopy downloadSize];
    [downloadSize unsignedLongLongValue];
    state = [modelCopy state];
    [state integerValue];
    installDuration = [modelCopy installDuration];
    integerValue = [installDuration integerValue];
    documentationMetadata = [modelCopy documentationMetadata];
    releaseDate = [modelCopy releaseDate];
    v15 = displayableSoftwareVersion;
    v16 = releaseDate;
    v30 = v15;
    v17 = [HMDSoftwareUpdate initWithVersion:"initWithVersion:displayableVersion:downloadSize:state:installDuration:documentationMetadata:releaseDate:" displayableVersion:softwareVersion3 downloadSize:integerValue state:? installDuration:? documentationMetadata:? releaseDate:?];

    if (v17)
    {
      v18 = objc_alloc(MEMORY[0x277CCAD78]);
      parentUUID = [modelCopy parentUUID];
      versionString = [(HMFSoftwareVersion *)v17->_version versionString];
      v21 = [versionString dataUsingEncoding:4];
      v22 = [v18 initWithNamespace:parentUUID data:v21];
      identifier = v17->_identifier;
      v17->_identifier = v22;
    }

    self = v17;

    selfCopy = self;
  }

  else
  {
    v25 = objc_autoreleasePoolPush();
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v32 = v27;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "%{public}@Software version is required", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    selfCopy = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t46_85369 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t46_85369, &__block_literal_global_46);
  }

  v3 = logCategory__hmf_once_v47_85370;

  return v3;
}

uint64_t __32__HMDSoftwareUpdate_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v47_85370;
  logCategory__hmf_once_v47_85370 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (id)modelNamespace
{
  if (modelNamespace_onceToken_85374 != -1)
  {
    dispatch_once(&modelNamespace_onceToken_85374, &__block_literal_global_85375);
  }

  v3 = modelNamespace_namespace_85376;

  return v3;
}

uint64_t __35__HMDSoftwareUpdate_modelNamespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"AE2B13F5-9554-489C-BFE0-C6740C4E70B7"];
  v1 = modelNamespace_namespace_85376;
  modelNamespace_namespace_85376 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end