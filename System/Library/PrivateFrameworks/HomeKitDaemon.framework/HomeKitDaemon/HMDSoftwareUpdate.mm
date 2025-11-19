@interface HMDSoftwareUpdate
+ (id)logCategory;
- (BOOL)hasRegisteredDocumentationMetadata;
- (BOOL)isEqual:(id)a3;
- (HMDAccessory)accessory;
- (HMDSoftwareUpdate)initWithCoder:(id)a3;
- (HMDSoftwareUpdate)initWithModel:(id)a3;
- (HMDSoftwareUpdate)initWithVersion:(id)a3 displayableVersion:(id)a4 downloadSize:(unint64_t)a5 state:(int64_t)a6 installDuration:(double)a7 documentationMetadata:(id)a8 releaseDate:(id)a9;
- (HMDSoftwareUpdateDataSource)dataSource;
- (HMDSoftwareUpdateModel)model;
- (HMSoftwareUpdateDocumentationMetadata)documentationMetadata;
- (NSDate)releaseDate;
- (NSString)propertyDescription;
- (id)logIdentifier;
- (id)messageDestination;
- (id)transactionWithObjectChangeType:(unint64_t)a3;
- (id)transactionWithObjectChangeType:(unint64_t)a3 forAccessoryUUID:(id)a4;
- (int64_t)state;
- (unint64_t)hash;
- (unint64_t)needsAttentionReasons;
- (unint64_t)updateType;
- (void)_handleDocumentationRequest:(id)a3;
- (void)_handleDocumentationStateNotification:(id)a3;
- (void)_handleNeedsAttentionReasonsRequest:(id)a3;
- (void)_handleUpdateDocumentationMetadata:(id)a3;
- (void)_handleUpdateState:(id)a3;
- (void)_processFirmwareUpdateUINotification:(id)a3;
- (void)_updateState:(int64_t)a3 message:(id)a4 options:(id)a5;
- (void)configureWithAccessory:(id)a3 dataSource:(id)a4 messageDispatcher:(id)a5;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)registerForMessages;
- (void)setDocumentationMetadata:(id)a3;
- (void)setHasRegisteredDocumentationMetadata:(BOOL)a3;
- (void)setNeedsAttentionReasons:(unint64_t)a3;
- (void)setReleaseDate:(id)a3;
- (void)setState:(int64_t)a3;
- (void)setUpdateType:(unint64_t)a3;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)updateLocalState:(int64_t)a3;
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

- (void)encodeWithCoder:(id)a3
{
  v17 = a3;
  v4 = [(HMDSoftwareUpdate *)self identifier];
  [v17 encodeObject:v4 forKey:*MEMORY[0x277CD10E8]];

  v5 = [(HMDSoftwareUpdate *)self version];
  [v17 encodeObject:v5 forKey:*MEMORY[0x277CD1190]];

  v6 = [(HMDSoftwareUpdate *)self displayableVersion];
  [v17 encodeObject:v6 forKey:*MEMORY[0x277CD10B0]];

  v7 = [(HMDSoftwareUpdate *)self state];
  [v17 encodeInteger:v7 forKey:*MEMORY[0x277CD1168]];
  v8 = [(HMDSoftwareUpdate *)self downloadSize];
  [v17 encodeInt64:v8 forKey:*MEMORY[0x277CD10E0]];
  [(HMDSoftwareUpdate *)self installDuration];
  [v17 encodeInteger:v9 forKey:*MEMORY[0x277CD10F0]];
  v10 = [(HMDSoftwareUpdate *)self documentationMetadata];
  [v17 encodeObject:v10 forKey:*MEMORY[0x277CD10C8]];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSoftwareUpdate updateType](self, "updateType")}];
  [v17 encodeObject:v11 forKey:*MEMORY[0x277CD1188]];

  v12 = [(HMDSoftwareUpdate *)self releaseDate];
  [v17 encodeObject:v12 forKey:*MEMORY[0x277CD1150]];

  if ([v17 hmd_isForXPCTransportEntitledForSPIAccess])
  {
    v13 = +[HMDSoftwareUpdateDocumentationManager sharedManager];
    v14 = [(HMDSoftwareUpdate *)self documentationMetadata];
    v15 = [v13 assetForDocumentationMetadata:v14];

    v16 = [v15 documentation];
    [v17 encodeObject:v16 forKey:*MEMORY[0x277CD10B8]];
  }
}

- (HMDSoftwareUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD1190]];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD10B0]];
  if (!v6)
  {
    v6 = [v5 shortVersionString];
  }

  v7 = [v4 decodeInt64ForKey:*MEMORY[0x277CD10E0]];
  v8 = [v4 decodeIntegerForKey:*MEMORY[0x277CD1168]];
  v9 = [v4 decodeIntegerForKey:*MEMORY[0x277CD10F0]];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD10C8]];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD1150]];
  v12 = [(HMDSoftwareUpdate *)self initWithVersion:v5 displayableVersion:v6 downloadSize:v7 state:v8 installDuration:v10 documentationMetadata:v11 releaseDate:v9];
  if (v12)
  {
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD10E8]];
    identifier = v12->_identifier;
    v12->_identifier = v13;
  }

  return v12;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x277D0F820]);
  v4 = [(HMDSoftwareUpdate *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (id)logIdentifier
{
  v2 = [(HMDSoftwareUpdate *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_processFirmwareUpdateUINotification:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 accessory];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 home];
    if (!v6)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = v3;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [v5 name];
        *buf = 138543618;
        v34 = v26;
        v35 = 2112;
        v36 = v27;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Failed to send firmware update notification: Unable to retrieve home from accessory %@", buf, 0x16u);
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
      v11 = [v7 supportsCHIP];
      v12 = objc_autoreleasePoolPush();
      v13 = v3;
      v14 = HMFGetOSLogHandle();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (v11)
      {
        if (v15)
        {
          HMFGetLogIdentifier();
          v16 = v32 = v12;
          v17 = [v7 name];
          v18 = [v7 displayableFirmwareVersion];
          *buf = 138543874;
          v34 = v16;
          v35 = 2112;
          v36 = v17;
          v37 = 2112;
          v38 = v18;
          _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Issuing firmware update UI notification for Matter accessory %@ (displayable firmware version: %@) using primary residence as controller", buf, 0x20u);

          v12 = v32;
        }

        objc_autoreleasePoolPop(v12);
        [v6 sendFirmwareUpdateUINotification:v7];
        goto LABEL_23;
      }

      if (v15)
      {
        v28 = HMFGetLogIdentifier();
        v29 = [v7 name];
        *buf = 138543618;
        v34 = v28;
        v35 = 2112;
        v36 = v29;
        v30 = "%{public}@Skipping firmware update notification: Accessory %@ does not support Matter/CHIP";
        goto LABEL_21;
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v3;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [v7 name];
        *buf = 138543618;
        v34 = v28;
        v35 = 2112;
        v36 = v29;
        v30 = "%{public}@Skipping firmware update notification: Accessory %@ is not a HAP accessory";
LABEL_21:
        _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, v30, buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v12);
LABEL_23:

LABEL_24:
    goto LABEL_25;
  }

  v19 = objc_autoreleasePoolPush();
  v20 = v3;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v22;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Failed to send firmware update notification: Unable to retrieve accessory from software update", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v19);
LABEL_25:

  v31 = *MEMORY[0x277D85DE8];
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v88[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
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
    v14 = self;
    v15 = v13;
    v16 = v10;
    v82 = [v16 transactionResult];
    v17 = [v15 state];

    if (v17)
    {
      v18 = [v15 state];
      v19 = [v18 unsignedIntegerValue];

      if (v19 != [(HMDSoftwareUpdate *)v14 state])
      {
        v76 = v8;
        v20 = objc_autoreleasePoolPush();
        v79 = v14;
        v21 = v14;
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
          _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating state: %@", buf, 0x16u);

          v20 = v71;
        }

        v73 = v10;

        objc_autoreleasePoolPop(v20);
        if ([(HMDSoftwareUpdate *)v21 state]== 3 && v19 == 4)
        {
          [(HMDSoftwareUpdate *)v21 _processFirmwareUpdateUINotification:v21];
        }

        [(HMDSoftwareUpdate *)v21 setState:v19];
        v25 = MEMORY[0x277D0F848];
        v26 = *MEMORY[0x277CD1180];
        v27 = v21;
        v28 = [v16 identifier];
        v88[0] = *MEMORY[0x277CD1170];
        v29 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSoftwareUpdate state](v27, "state")}];
        *buf = v29;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v88 count:1];
        v31 = [v25 entitledMessageWithName:v26 identifier:v28 messagePayload:v30];

        v32 = [(HMDSoftwareUpdate *)v27 messageDestination];

        [v31 setDestination:v32];
        v33 = [v31 copy];

        v34 = [(HMDSoftwareUpdate *)v27 messageDispatcher];
        [v34 sendMessage:v33 completionHandler:0];

        [v82 markChanged];
        v10 = v73;
        v8 = v76;
        v14 = v79;
      }
    }

    if ([v15 propertyWasSet:@"documentationMetadata"])
    {
      v35 = [v15 documentationMetadata];
      v36 = [(HMDSoftwareUpdate *)v14 documentationMetadata];
      v37 = HMFEqualObjects();

      if ((v37 & 1) == 0)
      {
        v77 = v8;
        v38 = objc_autoreleasePoolPush();
        v39 = v14;
        v40 = v38;
        v80 = v39;
        v41 = v39;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v44 = v43 = v10;
          *buf = 138543618;
          *&buf[4] = v44;
          v84 = 2112;
          v85 = v35;
          _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_INFO, "%{public}@Updating documentation metadata: %@", buf, 0x16u);

          v10 = v43;
        }

        objc_autoreleasePoolPop(v40);
        [(HMDSoftwareUpdate *)v41 setDocumentationMetadata:v35];
        v45 = v35;
        v46 = MEMORY[0x277D0F848];
        v69 = *MEMORY[0x277CD1178];
        v47 = v41;
        v48 = [v16 identifier];
        v88[0] = *MEMORY[0x277CD10D0];
        v72 = v45;
        v74 = v10;
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
        v53 = [v46 entitledMessageWithName:v70 identifier:v48 messagePayload:v52];

        v54 = [(HMDSoftwareUpdate *)v47 messageDestination];

        [v53 setDestination:v54];
        v55 = [v53 copy];

        v56 = [(HMDSoftwareUpdate *)v47 messageDispatcher];
        [v56 sendMessage:v55 completionHandler:0];

        [v82 markChanged];
        v10 = v74;
        v8 = v77;
        v14 = v80;
      }
    }

    v57 = [v15 releaseDate];

    if (v57)
    {
      v58 = [v15 releaseDate];
      v59 = [(HMDSoftwareUpdate *)v14 releaseDate];
      v60 = [v58 isEqualToDate:v59];

      if ((v60 & 1) == 0)
      {
        v61 = objc_autoreleasePoolPush();
        v81 = v14;
        v62 = v14;
        v63 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v64 = v75 = v10;
          [(HMDSoftwareUpdate *)v62 releaseDate];
          v65 = v78 = v8;
          *buf = 138543874;
          *&buf[4] = v64;
          v84 = 2112;
          v85 = v65;
          v86 = 2112;
          v87 = v58;
          _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_INFO, "%{public}@Updating releaseDate from %@ to %@", buf, 0x20u);

          v8 = v78;
          v10 = v75;
        }

        objc_autoreleasePoolPop(v61);
        [(HMDSoftwareUpdate *)v62 setReleaseDate:v58];
        [v82 markChanged];
        v14 = v81;
      }
    }

    v66 = [v16 responseHandler];

    if (v66)
    {
      v67 = [v16 responseHandler];
      v67[2](v67, 0, 0);
    }
  }

  else
  {
    v49 = [v10 responseHandler];
    v50 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (v49)[2](v49, v50, 0);
  }

  v68 = *MEMORY[0x277D85DE8];
}

- (id)transactionWithObjectChangeType:(unint64_t)a3 forAccessoryUUID:(id)a4
{
  v6 = [HMDSoftwareUpdateModel alloc];
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [(HMDSoftwareUpdate *)self accessory];
  v9 = [v8 uuid];
  v10 = [(HMDBackingStoreModelObject *)v6 initWithObjectChangeType:a3 uuid:v7 parentUUID:v9];

  return v10;
}

- (id)transactionWithObjectChangeType:(unint64_t)a3
{
  v5 = [(HMDSoftwareUpdate *)self accessory];
  v6 = [v5 uuid];
  v7 = [(HMDSoftwareUpdate *)self transactionWithObjectChangeType:a3 forAccessoryUUID:v6];

  return v7;
}

- (HMDSoftwareUpdateModel)model
{
  v3 = [(HMDSoftwareUpdate *)self transactionWithObjectChangeType:0];
  v4 = [(HMDSoftwareUpdate *)self version];
  [v3 setSoftwareVersion:v4];

  v5 = [(HMDSoftwareUpdate *)self displayableVersion];
  [v3 setDisplayableSoftwareVersion:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HMDSoftwareUpdate state](self, "state")}];
  [v3 setState:v6];

  v7 = MEMORY[0x277CCABB0];
  [(HMDSoftwareUpdate *)self installDuration];
  v8 = [v7 numberWithDouble:?];
  [v3 setInstallDuration:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDSoftwareUpdate downloadSize](self, "downloadSize")}];
  [v3 setDownloadSize:v9];

  v10 = [(HMDSoftwareUpdate *)self releaseDate];
  [v3 setReleaseDate:v10];

  v11 = [(HMDSoftwareUpdate *)self documentationMetadata];

  if (v11)
  {
    v12 = [(HMDSoftwareUpdate *)self documentationMetadata];
    v13 = [v12 copy];
    [v3 setDocumentationMetadata:v13];
  }

  return v3;
}

- (void)setReleaseDate:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  if (![(NSDate *)self->_releaseDate isEqualToDate:v6])
  {
    v4 = [v6 copy];
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

- (void)_handleNeedsAttentionReasonsRequest:(id)a3
{
  v23[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 responseHandler];

  if (v5)
  {
    v22 = *MEMORY[0x277CD1140];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDSoftwareUpdate needsAttentionReasons](self, "needsAttentionReasons")}];
    v23[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];

    v8 = objc_autoreleasePoolPush();
    v9 = self;
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
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending %@ reply with payload %@", &v16, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [v4 responseHandler];
    v14 = [v7 copy];
    (v13)[2](v13, 0, v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setNeedsAttentionReasons:(unint64_t)a3
{
  v31[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  if (self->_needsAttentionReasons == a3)
  {
    v5 = *MEMORY[0x277D85DE8];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_needsAttentionReasons = a3;
    os_unfair_lock_unlock(&self->_lock);
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = HMSoftwareUpdateNeedsAttentionReasonsToString();
      v24 = 138543618;
      v25 = v9;
      v26 = 2112;
      v27 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@NeedsAttentionReasons updated to %@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v30 = *MEMORY[0x277CD1140];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v31[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];

    v13 = objc_alloc(MEMORY[0x277D0F820]);
    v14 = [(HMDSoftwareUpdate *)v7 identifier];
    v15 = [v13 initWithTarget:v14];

    v16 = *MEMORY[0x277CD1138];
    v17 = [MEMORY[0x277D0F848] messageWithName:*MEMORY[0x277CD1138] destination:v15 payload:v12];
    v18 = objc_autoreleasePoolPush();
    v19 = v7;
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
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Sending message %@ to %@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [(HMDSoftwareUpdate *)v19 messageDispatcher];
    [v22 sendMessage:v17 completionHandler:0];

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

- (void)setUpdateType:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  if (self->_updateType != a3)
  {
    self->_updateType = a3;
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

- (void)_handleDocumentationStateNotification:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDSoftwareUpdate__handleDocumentationStateNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
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
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Received notification documentation is available, notifying clients", buf, 0xCu);
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

- (void)_handleDocumentationRequest:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDSoftwareUpdate *)self documentationMetadata];
  if (v5)
  {
    v6 = +[HMDSoftwareUpdateDocumentationManager sharedManager];
    v7 = [v6 assetForDocumentationMetadata:v5];

    if (!v7)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v19;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Missing asset", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v7 = [v4 responseHandler];

      if (v7)
      {
        v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        v21 = [v4 responseHandler];
        (v21)[2](v21, v20, 0);

        v7 = 0;
      }

      goto LABEL_17;
    }

    if ([v7 state] <= 1 && (objc_msgSend(v7, "isDownloadPermitted") & 1) == 0)
    {
      v9 = [v7 nextPermittedDownloadDate];
      v26 = v9;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v24 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3201];
      [v4 respondWithPayload:v23 error:v24];

      goto LABEL_12;
    }

    [v7 startCaching];
    v8 = [v4 responseHandler];

    if (!v8)
    {
LABEL_17:

      goto LABEL_18;
    }

    v9 = [v4 responseHandler];
    v10 = v9[2];
LABEL_11:
    v10();
LABEL_12:

    goto LABEL_17;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v14;
    _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Cannot get documentation without documentation metadata", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [v4 responseHandler];

  if (v15)
  {
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    v9 = [v4 responseHandler];
    v10 = v9[2];
    goto LABEL_11;
  }

LABEL_18:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_handleUpdateDocumentationMetadata:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__shouldAcceptMessage(self, v4))
  {
    v5 = *MEMORY[0x277CD10D0];
    v6 = [v4 nullForKey:*MEMORY[0x277CD10D0]];

    if (v6)
    {
      v7 = 0;
      goto LABEL_4;
    }

    v22 = [v4 dataForKey:v5];
    if (v22)
    {
      v15 = v22;
      v40 = 0;
      v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v22 error:&v40];
      v23 = v40;
      v24 = v23;
      if (v7)
      {

LABEL_4:
        v8 = objc_autoreleasePoolPush();
        v9 = self;
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = HMFGetLogIdentifier();
          *buf = 138543618;
          v42 = v11;
          v43 = 2112;
          v44 = v7;
          _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Updating with documentation metadata: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v8);
        v12 = [(HMDSoftwareUpdate *)v9 documentationMetadata];
        v13 = HMFEqualObjects();

        if (v13)
        {
          v14 = [v4 responseHandler];

          if (!v14)
          {
LABEL_24:

            goto LABEL_25;
          }

          v15 = [v4 responseHandler];
          v15[2](v15, 0, 0);
        }

        else
        {
          v15 = [(HMDSoftwareUpdate *)v9 transactionWithObjectChangeType:2];
          [v15 setDocumentationMetadata:v7];
          v16 = [(HMDSoftwareUpdate *)v9 accessory];
          v17 = [v16 home];
          v18 = [v17 backingStore];
          v19 = [v4 name];
          v20 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
          v21 = [v18 transaction:v19 options:v20];

          [v21 add:v15 withMessage:v4];
          [v21 run];
        }

LABEL_23:

        goto LABEL_24;
      }

      v32 = objc_autoreleasePoolPush();
      v33 = self;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v35;
        v43 = 2112;
        v44 = v24;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive software update documentation metadata from metadata data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      v36 = [v4 responseHandler];

      if (v36)
      {
        v37 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        v38 = [v4 responseHandler];
        (v38)[2](v38, v37, 0);
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v29 = [v4 messagePayload];
        *buf = 138543618;
        v42 = v28;
        v43 = 2112;
        v44 = v29;
        _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Missing documentation metadata from message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v30 = [v4 responseHandler];

      if (!v30)
      {
        v7 = 0;
        goto LABEL_24;
      }

      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      v31 = [v4 responseHandler];
      v31[2](v31, v15, 0);
    }

    v7 = 0;
    goto LABEL_23;
  }

LABEL_25:

  v39 = *MEMORY[0x277D85DE8];
}

- (void)setHasRegisteredDocumentationMetadata:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_hasRegisteredDocumentationMetadata = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasRegisteredDocumentationMetadata
{
  os_unfair_lock_lock_with_options();
  hasRegisteredDocumentationMetadata = self->_hasRegisteredDocumentationMetadata;
  os_unfair_lock_unlock(&self->_lock);
  return hasRegisteredDocumentationMetadata;
}

- (void)setDocumentationMetadata:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v6 = self->_documentationMetadata;
  if (HMFEqualObjects())
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    objc_storeStrong(&self->_documentationMetadata, a3);
    os_unfair_lock_unlock(&self->_lock);
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__HMDSoftwareUpdate_setDocumentationMetadata___block_invoke;
    block[3] = &unk_27868A010;
    block[4] = self;
    v9 = v5;
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
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Updated documentation metadata: %@", &v9, 0x16u);
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

- (void)_handleUpdateState:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (__shouldAcceptMessage(self, v4))
  {
    v5 = [v4 numberForKey:*MEMORY[0x277CD1170]];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 integerValue];
      if (v7 < 6)
      {
        v8 = +[HMDBackingStoreTransactionOptions defaultPreferencesOptions];
        [(HMDSoftwareUpdate *)self _updateState:v7 message:v4 options:v8];
LABEL_14:

LABEL_15:
        goto LABEL_16;
      }

      v17 = objc_autoreleasePoolPush();
      v18 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v20;
        v26 = 2048;
        v27 = v7;
        _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid state: %ld", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v21 = [v4 responseHandler];

      if (!v21)
      {
        goto LABEL_15;
      }

      v15 = MEMORY[0x277CCA9B8];
      v16 = 43;
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        v13 = [v4 messagePayload];
        v24 = 138543618;
        v25 = v12;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Missing state from message payload: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v14 = [v4 responseHandler];

      if (!v14)
      {
        goto LABEL_15;
      }

      v15 = MEMORY[0x277CCA9B8];
      v16 = 3;
    }

    v8 = [v15 hmErrorWithCode:v16];
    v22 = [v4 responseHandler];
    (v22)[2](v22, v8, 0);

    goto LABEL_14;
  }

LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_updateState:(int64_t)a3 message:(id)a4 options:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = HMFGetLogIdentifier();
    v14 = HMSoftwareUpdateStateToString();
    [(HMDSoftwareUpdate *)v11 state];
    v15 = HMSoftwareUpdateStateToString();
    v29 = 138543874;
    v30 = v13;
    v31 = 2112;
    v32 = v14;
    v33 = 2112;
    v34 = v15;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Updating state: %@ from current state: %@", &v29, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  if (a3 == 3 && ![(HMDSoftwareUpdate *)v11 allowExtraUpdate])
  {
    [(HMDSoftwareUpdate *)v11 setAllowExtraUpdate:1];
  }

  if ([(HMDSoftwareUpdate *)v11 state]== a3 && ![(HMDSoftwareUpdate *)v11 allowExtraUpdate])
  {
    v28 = [v8 responseHandler];

    if (!v28)
    {
      goto LABEL_20;
    }

    v16 = [v8 responseHandler];
    v16[2](v16, 0, 0);
  }

  else
  {
    v16 = [(HMDSoftwareUpdate *)v11 transactionWithObjectChangeType:2];
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [v16 setState:v17];

    v18 = [(HMDSoftwareUpdate *)v11 accessory];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
    if (v20 && ([v18 isCurrentAccessory] & 1) != 0)
    {
      v21 = &HMDAppleMediaAccessorySoftwareUpdateLabel;
    }

    else
    {
      v21 = &HMDAccessorySoftwareUpdateLabel;
    }

    v22 = *v21;

    v23 = [v18 home];
    v24 = [v23 backingStore];
    v25 = [v24 transaction:v22 options:v9];

    [v25 add:v16 withMessage:v8];
    [v25 run];
    v26 = [(HMDSoftwareUpdate *)v11 allowExtraUpdate];
    if (a3 != 3 && v26)
    {
      [(HMDSoftwareUpdate *)v11 setAllowExtraUpdate:0];
    }
  }

LABEL_20:
  v27 = *MEMORY[0x277D85DE8];
}

- (void)updateLocalState:(int64_t)a3
{
  v5 = +[HMDBackingStoreTransactionOptions defaultLocalOptions];
  [(HMDSoftwareUpdate *)self _updateState:a3 message:0 options:v5];
}

- (void)setState:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  if (self->_state == a3)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_state = a3;
    os_unfair_lock_unlock(&self->_lock);
    v6 = [(HMDSoftwareUpdate *)self accessory];
    v5 = [v6 home];
    [v5 reevaluateAccessoryInfo];
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
  v3 = [(HMDSoftwareUpdate *)self accessory];
  v4 = [v3 home];
  v5 = [(HMDSoftwareUpdate *)self messageDispatcher];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:5];
  if (([v3 isCurrentAccessory] & 1) != 0 || objc_msgSend(v3, "supportsFirmwareUpdate"))
  {
    v14[0] = v6;
    v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v14[1] = v7;
    v8 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:3 remoteAccessRequired:0];
    v14[2] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];

    [v5 registerForMessage:*MEMORY[0x277CD1180] receiver:self policies:v9 selector:sel__handleUpdateState_];
    [v5 registerForMessage:*MEMORY[0x277CD1178] receiver:self policies:v9 selector:sel__handleUpdateDocumentationMetadata_];
  }

  v10 = [HMDUserMessagePolicy userMessagePolicyWithHome:v4 userPrivilege:4 remoteAccessRequired:0, v6];
  v13[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];

  [v5 registerForMessage:*MEMORY[0x277CD1158] receiver:self policies:v11 selector:sel__handleDocumentationRequest_];
  [v5 registerForMessage:*MEMORY[0x277CD1160] receiver:self policies:v11 selector:sel__handleNeedsAttentionReasonsRequest_];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v3 = [(HMDSoftwareUpdate *)self documentationMetadata];
  __unregisterDocumentationMetadata(self, v3);
}

- (void)configureWithAccessory:(id)a3 dataSource:(id)a4 messageDispatcher:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v21;
      v22 = "%{public}@Missing data source";
LABEL_15:
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_ERROR, v22, &v33, 0xCu);
    }

LABEL_16:

    objc_autoreleasePoolPop(v18);
    goto LABEL_28;
  }

  if (!v8)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
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

  [(HMDSoftwareUpdate *)self setDataSource:v9];
  [(HMDSoftwareUpdate *)self setAccessory:v8];
  v11 = v8;
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
  v23 = [(HMDSoftwareUpdate *)self identifier];

  if (!v23)
  {
    v24 = objc_alloc(MEMORY[0x277CCAD78]);
    v25 = [v14 uuid];
    v26 = [(HMDSoftwareUpdate *)self version];
    v27 = [v26 versionString];
    v28 = [v27 dataUsingEncoding:4];
    v29 = [v24 initWithNamespace:v25 data:v28];
    [(HMDSoftwareUpdate *)self setIdentifier:v29];
  }

  if (v10)
  {
    [(HMDSoftwareUpdate *)self setMessageDispatcher:v10];
    v30 = [(HMDSoftwareUpdate *)self identifier];

    if (v30)
    {
      [(HMDSoftwareUpdate *)self registerForMessages];
    }
  }

  [(HMDSoftwareUpdate *)self setHasRegisteredDocumentationMetadata:1];
  v31 = [(HMDSoftwareUpdate *)self documentationMetadata];
  __registerDocumentationMetadata(self, v31);

LABEL_28:
  v32 = *MEMORY[0x277D85DE8];
}

- (NSString)propertyDescription
{
  v3 = [(HMDSoftwareUpdate *)self releaseDate];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(HMDSoftwareUpdate *)self version];
  v6 = [v5 versionString];
  v7 = [(HMDSoftwareUpdate *)self displayableVersion];
  [(HMDSoftwareUpdate *)self state];
  v8 = HMSoftwareUpdateStateToString();
  [(HMDSoftwareUpdate *)self downloadSize];
  v9 = NSLocalizedFileSizeDescription();
  [(HMDSoftwareUpdate *)self updateType];
  v10 = HMSoftwareUpdateUpdateTypeToString();
  v11 = [v4 stringWithFormat:@", Version = %@, Displayable Version = %@, State = %@, Download Size = %@, Release Date = %@, Update Type = %@", v6, v7, v8, v9, v3, v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = [(HMDSoftwareUpdate *)self version];
      v8 = [(HMDSoftwareUpdate *)v6 version];
      v9 = [v7 isEqual:v8];
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
  v2 = [(HMDSoftwareUpdate *)self version];
  v3 = [v2 hash];

  return v3;
}

- (void)dealloc
{
  v3 = [(HMDSoftwareUpdate *)self documentationMetadata];
  if (v3 && [(HMDSoftwareUpdate *)self hasRegisteredDocumentationMetadata])
  {
    v4 = +[HMDSoftwareUpdateDocumentationManager sharedManager];
    [v4 unregisterDocumentationMetadata:v3];
  }

  v5.receiver = self;
  v5.super_class = HMDSoftwareUpdate;
  [(HMDSoftwareUpdate *)&v5 dealloc];
}

- (HMDSoftwareUpdate)initWithVersion:(id)a3 displayableVersion:(id)a4 downloadSize:(unint64_t)a5 state:(int64_t)a6 installDuration:(double)a7 documentationMetadata:(id)a8 releaseDate:(id)a9
{
  v17 = a3;
  v18 = a4;
  v19 = a8;
  v20 = a9;
  v35.receiver = self;
  v35.super_class = HMDSoftwareUpdate;
  v21 = [(HMDSoftwareUpdate *)&v35 init];
  if (v21)
  {
    v32 = a6;
    v33 = v20;
    v22 = a5;
    v34 = v19;
    v23 = v17;
    v24 = HMDispatchQueueNameString();
    v25 = [v24 UTF8String];
    v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v27 = dispatch_queue_create(v25, v26);
    queue = v21->_queue;
    v21->_queue = v27;

    objc_storeStrong(&v21->_version, a3);
    if (v18)
    {
      v29 = [v18 hm_truncatedDisplayableVersionString];
      v17 = v23;
    }

    else
    {
      v17 = v23;
      v29 = [v23 shortVersionString];
    }

    displayableVersion = v21->_displayableVersion;
    v21->_displayableVersion = v29;

    v21->_state = v32;
    v21->_downloadSize = v22;
    v21->_installDuration = a7;
    objc_storeStrong(&v21->_documentationMetadata, a8);
    v21->_updateType = 0;
    objc_storeStrong(&v21->_releaseDate, a9);
    v20 = v33;
    v19 = v34;
  }

  return v21;
}

- (HMDSoftwareUpdate)initWithModel:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 softwareVersion];

  if (v5)
  {
    v6 = [v4 displayableSoftwareVersion];
    if (!v6)
    {
      v7 = [v4 softwareVersion];
      v6 = [v7 shortVersionString];
    }

    v8 = [v4 softwareVersion];
    v9 = [v4 downloadSize];
    [v9 unsignedLongLongValue];
    v10 = [v4 state];
    [v10 integerValue];
    v11 = [v4 installDuration];
    v12 = [v11 integerValue];
    v13 = [v4 documentationMetadata];
    v14 = [v4 releaseDate];
    v15 = v6;
    v16 = v14;
    v30 = v15;
    v17 = [HMDSoftwareUpdate initWithVersion:"initWithVersion:displayableVersion:downloadSize:state:installDuration:documentationMetadata:releaseDate:" displayableVersion:v8 downloadSize:v12 state:? installDuration:? documentationMetadata:? releaseDate:?];

    if (v17)
    {
      v18 = objc_alloc(MEMORY[0x277CCAD78]);
      v19 = [v4 parentUUID];
      v20 = [(HMFSoftwareVersion *)v17->_version versionString];
      v21 = [v20 dataUsingEncoding:4];
      v22 = [v18 initWithNamespace:v19 data:v21];
      identifier = v17->_identifier;
      v17->_identifier = v22;
    }

    self = v17;

    v24 = self;
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
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Software version is required", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v25);
    v24 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v24;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t46_131069 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t46_131069, &__block_literal_global_131070);
  }

  v3 = logCategory__hmf_once_v47_131071;

  return v3;
}

void __32__HMDSoftwareUpdate_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v47_131071;
  logCategory__hmf_once_v47_131071 = v1;
}

@end