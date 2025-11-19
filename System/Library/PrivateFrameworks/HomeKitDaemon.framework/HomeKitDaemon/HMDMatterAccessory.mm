@interface HMDMatterAccessory
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5;
- (HMDMatterAccessory)init;
- (HMDMatterAccessory)initWithCoder:(id)a3;
- (HMDMatterAccessory)initWithTransaction:(id)a3 home:(id)a4;
- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4;
- (id)pairingIdentity;
- (id)transactionWithObjectChangeType:(unint64_t)a3;
- (int64_t)reachableTransports;
- (void)_registerForMessages;
- (void)configureCHIPAccessory;
- (void)didFindAccessoryServer:(id)a3;
- (void)didRemoveAccessoryServer:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)handleCHIPSendRemoteRequestMessage:(id)a3;
- (void)handleIdentifyAccessoryMessage:(id)a3;
- (void)handleUpdatedCHIPPropertiesOnAccessoryModel:(id)a3 actions:(id)a4;
- (void)populateAccessoryModel:(id)a3 version:(int64_t)a4;
- (void)populateModelObject:(id)a3 version:(int64_t)a4;
- (void)processUpdatedAccessoryServer:(id)a3;
- (void)removeAllCHIPPairingsWithCompletion:(id)a3;
- (void)setCHIPReportHandler:(id)a3;
- (void)transactionObjectRemoved:(id)a3 message:(id)a4;
- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5;
- (void)unconfigure;
- (void)unconfigureAccessoryWithServerIdentifier:(id)a3 linkType:(int64_t)a4 updateReachability:(BOOL)a5;
- (void)unconfigureMatterAccessoryWithCompletion:(id)a3;
@end

@implementation HMDMatterAccessory

- (void)processUpdatedAccessoryServer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22967792C(v4);
}

- (void)didFindAccessoryServer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_229677CB0(v4);
}

- (void)didRemoveAccessoryServer:(id)a3
{
  v4 = sub_22A4DD5EC();
  v6 = v5;
  v7 = self;
  sub_229678034(v4, v6);
}

- (void)populateAccessoryModel:(id)a3 version:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_229678580(v6, a4);
}

- (void)unconfigureMatterAccessoryWithCompletion:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Unconfiguring Native Matter accessory: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDMatterAccessory *)v6 unconfigure];
  v9 = _Block_copy(v4);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setCHIPReportHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMDMatterAccessory *)self matterAdapter];
  [v5 setMatterReportHandler:v4];
}

- (void)removeAllCHIPPairingsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDMatterAccessory *)self matterAdapter];
  [v5 removeAllMatterPairingsWithCompletion:v4];
}

- (void)handleCHIPSendRemoteRequestMessage:(id)a3
{
  v4 = a3;
  v5 = [(HMDMatterAccessory *)self matterAdapter];
  [v5 handleRemoteMatterRequestMessage:v4];
}

- (void)handleUpdatedCHIPPropertiesOnAccessoryModel:(id)a3 actions:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMDMatterAccessory *)self matterAdapter];
  [v8 updateMatterPropertiesWithAccessoryModel:v7 actions:v6];
}

- (void)unconfigureAccessoryWithServerIdentifier:(id)a3 linkType:(int64_t)a4 updateReachability:(BOOL)a5
{
  v5 = a5;
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    if (a4 > 2)
    {
      v13 = @"Undefined";
    }

    else
    {
      v13 = off_2786768F0[a4];
    }

    v14 = v13;
    v15 = HMFBooleanToString();
    v17 = 138544130;
    v18 = v12;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Unconfiguring from server %@/%@ updateReachability %@", &v17, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  if (v5)
  {
    [(HMDAccessory *)v10 setReachable:0];
  }

  logAndPostNotification(@"HMDAccessoryUnconfiguredNotification", v10, 0);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)unconfigure
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4 = [(HMDMatterAccessory *)self matterAdapter];
  [v4 unconfigure];
}

- (void)configureCHIPAccessory
{
  v2 = [(HMDMatterAccessory *)self matterAdapter];
  [v2 configureMatterAccessory];
}

- (void)populateModelObject:(id)a3 version:(int64_t)a4
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v7)
  {
    [(HMDMatterAccessory *)self populateAccessoryModel:v7 version:a4];
  }
}

- (id)modelObjectWithChangeType:(unint64_t)a3 version:(int64_t)a4
{
  v6 = [(HMDMatterAccessory *)self transactionWithObjectChangeType:a3];
  [(HMDMatterAccessory *)self populateModelObject:v6 version:a4];

  return v6;
}

- (id)transactionWithObjectChangeType:(unint64_t)a3
{
  v5 = [HMDHAPAccessoryTransaction alloc];
  v6 = [(HMDAccessory *)self uuid];
  v7 = [(HMDAccessory *)self home];
  v8 = [v7 uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:a3 uuid:v6 parentUUID:v8];

  return v9;
}

- (void)transactionObjectRemoved:(id)a3 message:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v9 && ([(HMDMatterAccessory *)self matterAdapter], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = [(HMDMatterAccessory *)self matterAdapter];
    [v11 removeMatterPathModel:v9 message:v7];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HMDMatterAccessory;
    [(HMDAccessory *)&v12 transactionObjectRemoved:v6 message:v7];
  }
}

- (void)transactionObjectUpdated:(id)a3 newValues:(id)a4 message:(id)a5
{
  v85 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v75 = [(HMDAccessory *)self home];
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

  if (!v13)
  {
    goto LABEL_27;
  }

  v14 = [v10 transactionResult];
  v15 = [v13 certificationStatus];
  if (v15)
  {
    v16 = v15;
    v17 = [v13 certificationStatus];
    v18 = [v17 unsignedIntegerValue];
    v19 = [(HMDMatterAccessory *)self certificationStatus];

    if (v18 != v19)
    {
      v20 = [v13 certificationStatus];
      -[HMDMatterAccessory setCertificationStatus:](self, "setCertificationStatus:", [v20 unsignedIntegerValue]);

      [v14 markChanged];
    }
  }

  v21 = [v13 pairingUsername];
  if (v21)
  {
    v22 = v21;
    v23 = [v13 publicKey];
    if (!v23)
    {

      goto LABEL_16;
    }

    v24 = v23;
    v25 = [(HMDMatterAccessory *)self pairingUsername];
    v26 = [v13 pairingUsername];
    if ([v25 isEqual:v26])
    {
      [(HMDMatterAccessory *)self publicKey];
      v27 = v71 = v8;
      [v13 publicKey];
      v73 = v14;
      v29 = v28 = v10;
      v69 = [v27 isEqual:v29];

      v10 = v28;
      v14 = v73;

      v8 = v71;
      if (v69)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v30 = [v13 pairingUsername];
    [(HMDMatterAccessory *)self setPairingUsername:v30];

    v31 = [v13 publicKey];
    [(HMDMatterAccessory *)self setPublicKey:v31];

    [v14 markChanged];
  }

LABEL_16:
  v32 = [v13 accessorySetupHash];
  if (v32)
  {
    v33 = v32;
    v34 = [(HMDMatterAccessory *)self setupHash];
    v35 = [v13 accessorySetupHash];
    v36 = [v34 isEqual:v35];

    if ((v36 & 1) == 0)
    {
      v37 = [v13 accessorySetupHash];
      [(HMDMatterAccessory *)self setSetupHash:v37];

      [v14 markChanged];
    }
  }

  v38 = [v13 roomUUID];

  if (v38)
  {
    v72 = v8;
    v74 = v14;
    v70 = v10;
    v39 = [(HMDAccessory *)self room];
    v40 = [v39 name];

    v41 = objc_alloc(MEMORY[0x277CCAD78]);
    v42 = [v13 roomUUID];
    v43 = [v41 initWithUUIDString:v42];

    v44 = objc_autoreleasePoolPush();
    v45 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v66 = HMFGetLogIdentifier();
      v67 = [v75 roomWithUUID:v43];
      v65 = [v67 name];
      [(HMDAccessory *)v45 room];
      v48 = v47 = v40;
      [v48 uuid];
      v49 = v68 = v44;
      HMFEqualObjects();

      v40 = v47;
      v50 = HMFBooleanToString();
      *buf = 138544130;
      v78 = v66;
      v79 = 2112;
      v80 = v47;
      v81 = 2112;
      v82 = v65;
      v83 = 2112;
      v84 = v50;
      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@transactionObjectUpdated: old: %@, new:%@, same Room: %@", buf, 0x2Au);

      v44 = v68;
    }

    objc_autoreleasePoolPop(v44);
    if (v43)
    {
      v51 = [v70 transactionResult];
      v52 = -[HMDAccessory _updateRoom:source:](v45, "_updateRoom:source:", v43, [v51 source]);

      if (v52)
      {
        [v74 markChanged];
        [v74 markSaveToAssistant];
      }
    }

    v10 = v70;
    v8 = v72;
    v14 = v74;
  }

  v53 = [v10 transactionResult];
  [(HMDMatterAccessory *)self handleUpdatedCHIPPropertiesOnAccessoryModel:v13 actions:v53];

LABEL_27:
  v54 = v11;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v55 = v54;
  }

  else
  {
    v55 = 0;
  }

  v56 = v55;

  if (v56)
  {
    v57 = [(HMDMatterAccessory *)self matterAdapter];
    v58 = [v56 uuid];
    v59 = [v57 matterPathWithUUID:v58];

    if (v59)
    {
      [v59 transactionObjectUpdated:v8 newValues:v54 message:v10];
    }

    else
    {
      v62 = [(HMDMatterAccessory *)self matterAdapter];
      [v62 addMatterPathModel:v56 message:v10];
    }

LABEL_37:

    goto LABEL_38;
  }

  v76.receiver = self;
  v76.super_class = HMDMatterAccessory;
  [(HMDAccessory *)&v76 transactionObjectUpdated:v8 newValues:v54 message:v10];
  v60 = [v13 supportsNativeMatter];
  if (v60)
  {
    v59 = v60;
    v61 = [v13 supportsNativeMatter];
    if ([v61 BOOLValue])
    {
    }

    else
    {
      v64 = [(HMDMatterAccessory *)self convertingMatterAccessory];

      if (v64)
      {
        goto LABEL_38;
      }

      v59 = [(HMDMatterAccessory *)self matterAdapter];
      [v59 convertMatterAccessoryToNativeMatter:0];
    }

    goto LABEL_37;
  }

LABEL_38:

  v63 = *MEMORY[0x277D85DE8];
}

- (void)_registerForMessages
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v4.receiver = self;
    v4.super_class = HMDMatterAccessory;
    [(HMDAccessory *)&v4 _registerForMessages];
    v3 = [(HMDMatterAccessory *)self matterAdapter];
    [v3 registerForMessages];
  }
}

void __96__HMDMatterAccessory_configureWithHome_msgDispatcher_configurationTracker_initialConfiguration___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) matterAdapter];
  [v1 configureMatterAccessory];
}

- (id)pairingIdentity
{
  v3 = objc_alloc(MEMORY[0x277D0F8B0]);
  v4 = [(HMDMatterAccessory *)self publicKey];
  v5 = [v3 initWithPairingKeyData:v4];

  v6 = objc_alloc(MEMORY[0x277CFEC20]);
  v7 = [(HMDAccessory *)self identifier];
  v8 = [v6 initWithIdentifier:v7 publicKey:v5 privateKey:0 permissions:0];

  return v8;
}

- (int64_t)reachableTransports
{
  v5.receiver = self;
  v5.super_class = HMDMatterAccessory;
  v3 = [(HMDAccessory *)&v5 reachableTransports];
  return v3 | [(HMDAccessory *)self isReachable];
}

- (void)encodeWithCoder:(id)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 hmd_isForXPCTransport];
  v6 = [v4 hmd_isForXPCTransportEntitledForSPIAccess];
  v7 = [v4 hmd_homeManagerOptions];
  v31.receiver = self;
  v31.super_class = HMDMatterAccessory;
  [(HMDAccessory *)&v31 encodeWithCoder:v4];
  if ((v7 & 0x20) != 0)
  {
    v8 = [v4 hmd_isForLocalStore];
    if ([v4 hmd_isForXPCTransport])
    {
LABEL_3:
      [(HMDAccessory *)self encodePreferredMediaUser:v4];
      goto LABEL_4;
    }

    if (v5)
    {
      if (([v4 hmd_isForXPCTransportEntitledForSPIAccess] | v8))
      {
        goto LABEL_3;
      }
    }

    else if (v8)
    {
      goto LABEL_3;
    }
  }

LABEL_4:
  v9 = [(HMDMatterAccessory *)self matterAdapter];
  v10 = [v9 shouldEncodeNotifications];

  if (v10)
  {
    v11 = [(HMDMatterAccessory *)self matterAdapter];
    v12 = [v11 bulletinBoardNotificationByEndpoint];
    [v4 encodeObject:v12 forKey:@"HM.BulletinBoardNotification"];
  }

  [v4 encodeBool:1 forKey:@"paired"];
  v13 = [(HMDMatterAccessory *)self communicationProtocol];
  [v4 encodeInteger:v13 forKey:*MEMORY[0x277CCE9A8]];
  v14 = [(HMDMatterAccessory *)self matterNodeID];
  [v4 encodeObject:v14 forKey:*MEMORY[0x277CCEB88]];

  [v4 encodeBool:1 forKey:*MEMORY[0x277CCEFF0]];
  [v4 encodeInteger:1 forKey:@"linkType"];
  [v4 encodeInteger:1 forKey:@"HM.accessoryTransportTypes"];
  v15 = [(HMDMatterAccessory *)self chipStorage];
  [v4 encodeObject:v15 forKey:@"HMDMatter.Storage"];

  v16 = [(HMDMatterAccessory *)self publicKey];
  if (v16)
  {
    v17 = v16;
    v18 = [(HMDMatterAccessory *)self pairingUsername];

    if (v18)
    {
      v19 = [(HMDMatterAccessory *)self publicKey];
      [v4 encodeObject:v19 forKey:@"accessoryPublicKey"];

      v20 = [(HMDMatterAccessory *)self pairingUsername];
      [v4 encodeObject:v20 forKey:@"accessoryPairingUsername"];
    }
  }

  if (v6 & 1 | ((v5 & 1) == 0))
  {
    v21 = [(HMDMatterAccessory *)self certificationStatus];
    [v4 encodeInteger:v21 forKey:*MEMORY[0x277CCE968]];
  }

  if (!v5)
  {
    v23 = [(HMDMatterAccessory *)self setupHash];
    [v4 encodeObject:v23 forKey:@"HM.accessorySetupHash"];
LABEL_21:

    goto LABEL_22;
  }

  if (v6)
  {
    v22 = [(HMDAccessory *)self isReachable]|| [(HMDAccessory *)self isRemotelyReachable];
    v24 = [HMDAccessoryTransportInformation alloc];
    v25 = [(HMDAccessory *)self identifier];
    v23 = [(HMDAccessoryTransportInformation *)v24 initWithServerIdentifier:v25 instanceID:&unk_283E73208 linkType:1];

    [v4 encodeBool:v22 forKey:*MEMORY[0x277CCE9D8]];
    v32[0] = v23;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    [v4 encodeObject:v26 forKey:@"HM.accessoryTransportInformation"];

    v27 = [(HMDMatterAccessory *)self supportsACWGUWB];
    [v4 encodeBool:v27 forKey:*MEMORY[0x277CCF030]];
    v28 = [(HMDMatterAccessory *)self mfiCertifiedACWG];
    [v4 encodeBool:v28 forKey:*MEMORY[0x277CCEB48]];
    v29 = [(HMDMatterAccessory *)self readerGroupSubIdentifierACWG];
    [v4 encodeObject:v29 forKey:*MEMORY[0x277CCEC88]];

    goto LABEL_21;
  }

LABEL_22:

  v30 = *MEMORY[0x277D85DE8];
}

- (HMDMatterAccessory)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = HMDMatterAccessory;
  v5 = [(HMDAccessory *)&v21 initWithCoder:v4];
  if (v5)
  {
    if ([v4 containsValueForKey:@"accessoryPublicKey"] && objc_msgSend(v4, "containsValueForKey:", @"accessoryPairingUsername"))
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryPublicKey"];
      publicKey = v5->_publicKey;
      v5->_publicKey = v6;

      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryPairingUsername"];
      pairingUsername = v5->_pairingUsername;
      v5->_pairingUsername = v8;
    }

    v10 = *MEMORY[0x277CCE968];
    if ([v4 containsValueForKey:*MEMORY[0x277CCE968]])
    {
      v5->_certificationStatus = [v4 decodeIntegerForKey:v10];
    }

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.accessorySetupHash"];
    setupHash = v5->_setupHash;
    v5->_setupHash = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMDMatter.Storage"];
    if (v13)
    {
      objc_storeStrong(&v5->_chipStorage, v13);
      v14 = [v13 nodeID];
      matterNodeID = v5->_matterNodeID;
      v5->_matterNodeID = v14;

      v16 = [v13 vendorID];
      matterVendorID = v5->_matterVendorID;
      v5->_matterVendorID = v16;

      v18 = [v13 productID];
      matterProductID = v5->_matterProductID;
      v5->_matterProductID = v18;

      if (v5->_matterVendorID)
      {
        if (v5->_matterProductID)
        {
          logAndPostNotification(@"HMDAccessoryVendorIDProductIDUpdatedNotification", v5, 0);
        }
      }
    }
  }

  return v5;
}

- (void)handleIdentifyAccessoryMessage:(id)a3
{
  v4 = a3;
  v5 = [(HMDMatterAccessory *)self matterAdapter];
  v6 = [v5 mtrCommandPaths];
  v7 = [v6 na_firstObjectPassingTest:&__block_literal_global_148861];
  v15 = [v7 endpoint];

  if (!v15)
  {
    v8 = [(HMDMatterAccessory *)self accessoryServer];
    v9 = [v8 primaryAccessory];

    v10 = [v9 servicesOfType:*MEMORY[0x277CD0DD0]];
    v11 = [v10 firstObject];

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

    v15 = [v13 endpoint];
  }

  v14 = [(HMDMatterAccessory *)self matterAdapter];
  [v14 identifyEndpoint:v15 identifyTime:&unk_283E731D8 message:v4];
}

BOOL __53__HMDMatterAccessory_handleIdentifyAccessoryMessage___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 endpoint];
  v4 = [v3 isEqual:&unk_283E731F0];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v2 cluster];
    v5 = [v6 unsignedIntValue] == 3;
  }

  return v5;
}

- (HMDMatterAccessory)initWithTransaction:(id)a3 home:(id)a4
{
  v92 = *MEMORY[0x277D85DE8];
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
    v89.receiver = self;
    v89.super_class = HMDMatterAccessory;
    v11 = [(HMDAccessory *)&v89 initWithTransaction:v8 home:v7];
    if (v11)
    {
      v12 = +[HMDBulletinBoard sharedBulletinBoard];
      bulletinBoard = v11->_bulletinBoard;
      v11->_bulletinBoard = v12;

      v14 = [v10 chipNodeID];

      if (v14)
      {
        v15 = [v10 chipNodeID];
        matterNodeID = v11->_matterNodeID;
        v11->_matterNodeID = v15;
      }

      v17 = [v10 chipVendorID];

      if (v17)
      {
        v18 = [v10 chipVendorID];
        matterVendorID = v11->_matterVendorID;
        v11->_matterVendorID = v18;
      }

      v20 = [v10 chipProductID];

      if (v20)
      {
        v21 = [v10 chipProductID];
        matterProductID = v11->_matterProductID;
        v11->_matterProductID = v21;
      }

      v23 = [v8 firmwareVersion];

      if (v23)
      {
        v24 = [HMDAccessoryVersion alloc];
        v25 = [v8 firmwareVersion];
        v26 = [(HMDAccessoryVersion *)v24 initWithMatterVersionString:v25];
        [(HMDAccessory *)v11 setFirmwareVersion:v26];
      }

      v27 = [v10 setProperties];
      v28 = [v27 containsObject:@"supportedLinkLayerTypes"];

      if (v28)
      {
        v29 = [v10 supportedLinkLayerTypes];
        supportedLinkLayerTypes = v11->_supportedLinkLayerTypes;
        v11->_supportedLinkLayerTypes = v29;
      }

      v31 = [v10 chipWEDSupport];

      if (v31)
      {
        v32 = [v10 chipWEDSupport];
        matterWEDSupport = v11->_matterWEDSupport;
        v11->_matterWEDSupport = v32;
      }

      v34 = [v10 chipExtendedMACAddress];

      if (v34)
      {
        v35 = [v10 chipExtendedMACAddress];
        matterExtendedMACAddress = v11->_matterExtendedMACAddress;
        v11->_matterExtendedMACAddress = v35;
      }

      v37 = [v10 matterSoftwareVersionNumber];

      if (v37)
      {
        v38 = [v10 matterSoftwareVersionNumber];
        matterSoftwareVersionNumber = v11->_matterSoftwareVersionNumber;
        v11->_matterSoftwareVersionNumber = v38;
      }

      v40 = [v10 accessorySetupHash];

      if (v40)
      {
        v41 = [v10 accessorySetupHash];
        setupHash = v11->_setupHash;
        v11->_setupHash = v41;
      }

      v43 = [v10 publicKey];

      if (v43)
      {
        v44 = [v10 publicKey];
        publicKey = v11->_publicKey;
        v11->_publicKey = v44;
      }

      v46 = [v10 pairingUsername];

      if (v46)
      {
        v47 = [v10 pairingUsername];
        pairingUsername = v11->_pairingUsername;
        v11->_pairingUsername = v47;
      }

      v49 = [v10 setProperties];
      v50 = [v49 containsObject:@"certificationStatus"];

      if (v50)
      {
        v51 = [v10 certificationStatus];
        v11->_certificationStatus = [v51 unsignedIntegerValue];
      }

      v52 = [v10 setProperties];
      v53 = [v52 containsObject:@"supportsMatterAccessCode"];

      if (v53)
      {
        v54 = [v10 supportsMatterAccessCode];
        supportsMatterAccessCode = v11->_supportsMatterAccessCode;
        v11->_supportsMatterAccessCode = v54;
      }

      v56 = [v10 setProperties];
      v57 = [v56 containsObject:@"supportsMatterWalletKey"];

      if (v57)
      {
        v58 = [v10 supportsMatterWalletKey];
        supportsMatterWalletKey = v11->_supportsMatterWalletKey;
        v11->_supportsMatterWalletKey = v58;
      }

      v60 = [v10 setProperties];
      v61 = [v60 containsObject:@"supportsMatterWeekDaySchedule"];

      if (v61)
      {
        v62 = [v10 supportsMatterWeekDaySchedule];
        v11->_supportsMatterWeekDaySchedule = [v62 BOOLValue];
      }

      v63 = [v10 setProperties];
      v64 = [v63 containsObject:@"supportsMatterYearDaySchedule"];

      if (v64)
      {
        v65 = [v10 supportsMatterYearDaySchedule];
        v11->_supportsMatterYearDaySchedule = [v65 BOOLValue];
      }

      v66 = [v10 setProperties];
      v67 = [v66 containsObject:@"supportsMatCredACP"];

      if (v67)
      {
        v68 = [v10 supportsMatCredACP];
        v11->_supportsACWGProvisioning = [v68 BOOLValue];
      }

      v69 = [v10 setProperties];
      v70 = [v69 containsObject:@"supportsMatCredACB"];

      if (v70)
      {
        v71 = [v10 supportsMatCredACB];
        v11->_supportsACWGUWB = [v71 BOOLValue];
      }

      v72 = [v10 setProperties];
      v73 = [v72 containsObject:@"matCredRGSI"];

      if (v73)
      {
        v74 = [v10 matCredRGSI];
        readerGroupSubIdentifierACWG = v11->_readerGroupSubIdentifierACWG;
        v11->_readerGroupSubIdentifierACWG = v74;
      }

      v76 = [v10 setProperties];
      v77 = [v76 containsObject:@"preexistingMatCredRGI"];

      if (v77)
      {
        v78 = [v10 preexistingMatCredRGI];
        preexistingReaderGroupIdentifierACWG = v11->_preexistingReaderGroupIdentifierACWG;
        v11->_preexistingReaderGroupIdentifierACWG = v78;
      }

      [(HMDCHIPAccessoryStorage *)v11->_chipStorage updateUsingAccessoryModel:v10];
      v80 = [[HMDMatterAccessoryAdapter alloc] initWithAccessory:v11];
      matterAdapter = v11->_matterAdapter;
      v11->_matterAdapter = v80;
    }

    v82 = v11;
    v83 = v82;
  }

  else
  {
    v84 = objc_autoreleasePoolPush();
    v82 = self;
    v85 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      v86 = HMFGetLogIdentifier();
      *buf = 138543362;
      v91 = v86;
      _os_log_impl(&dword_229538000, v85, OS_LOG_TYPE_ERROR, "%{public}@Cannot initialize a matter accessory without a matter accessory model.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v84);
    v83 = 0;
  }

  v87 = *MEMORY[0x277D85DE8];
  return v83;
}

- (HMDMatterAccessory)init
{
  v7.receiver = self;
  v7.super_class = HMDMatterAccessory;
  v2 = [(HMDAccessory *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_certificationStatus = 0;
    v2->_communicationProtocol = 2;
    v4 = objc_alloc_init(HMDCHIPAccessoryStorage);
    chipStorage = v3->_chipStorage;
    v3->_chipStorage = v4;
  }

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_148909 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_148909, &__block_literal_global_87_148910);
  }

  v3 = logCategory__hmf_once_v15_148911;

  return v3;
}

void __33__HMDMatterAccessory_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15_148911;
  logCategory__hmf_once_v15_148911 = v1;
}

+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [v12 matterAdapter];
    if (v13)
    {
      v14 = [HMDMatterAccessoryAdapter messageBindingForDispatcher:v8 message:v9 receiver:v13];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v30.receiver = a1;
        v30.super_class = &OBJC_METACLASS___HMDMatterAccessory;
        v16 = objc_msgSendSuper2(&v30, sel_messageBindingForDispatcher_message_receiver_, v8, v9, v10);
      }

      v22 = v16;
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = a1;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [v9 name];
        *buf = 138543874;
        v32 = v26;
        v33 = 2112;
        v34 = v27;
        v35 = 2112;
        v36 = v12;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@Unable to find binding for message %@, Matter accessory has no matterAdapter: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v23);
      v22 = 0;
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = a1;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [v9 name];
      *buf = 138543874;
      v32 = v20;
      v33 = 2112;
      v34 = v21;
      v35 = 2112;
      v36 = v10;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to find binding for message %@, unexpected receiver class: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v22;
}

@end