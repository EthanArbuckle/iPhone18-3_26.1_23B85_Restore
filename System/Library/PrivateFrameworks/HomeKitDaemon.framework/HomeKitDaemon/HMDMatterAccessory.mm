@interface HMDMatterAccessory
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (HMDMatterAccessory)init;
- (HMDMatterAccessory)initWithCoder:(id)coder;
- (HMDMatterAccessory)initWithTransaction:(id)transaction home:(id)home;
- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version;
- (id)pairingIdentity;
- (id)transactionWithObjectChangeType:(unint64_t)type;
- (int64_t)reachableTransports;
- (void)_registerForMessages;
- (void)configureCHIPAccessory;
- (void)didFindAccessoryServer:(id)server;
- (void)didRemoveAccessoryServer:(id)server;
- (void)encodeWithCoder:(id)coder;
- (void)handleCHIPSendRemoteRequestMessage:(id)message;
- (void)handleIdentifyAccessoryMessage:(id)message;
- (void)handleUpdatedCHIPPropertiesOnAccessoryModel:(id)model actions:(id)actions;
- (void)populateAccessoryModel:(id)model version:(int64_t)version;
- (void)populateModelObject:(id)object version:(int64_t)version;
- (void)processUpdatedAccessoryServer:(id)server;
- (void)removeAllCHIPPairingsWithCompletion:(id)completion;
- (void)setCHIPReportHandler:(id)handler;
- (void)transactionObjectRemoved:(id)removed message:(id)message;
- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)unconfigure;
- (void)unconfigureAccessoryWithServerIdentifier:(id)identifier linkType:(int64_t)type updateReachability:(BOOL)reachability;
- (void)unconfigureMatterAccessoryWithCompletion:(id)completion;
@end

@implementation HMDMatterAccessory

- (void)processUpdatedAccessoryServer:(id)server
{
  serverCopy = server;
  selfCopy = self;
  sub_22967792C(serverCopy);
}

- (void)didFindAccessoryServer:(id)server
{
  serverCopy = server;
  selfCopy = self;
  sub_229677CB0(serverCopy);
}

- (void)didRemoveAccessoryServer:(id)server
{
  v4 = sub_22A4DD5EC();
  v6 = v5;
  selfCopy = self;
  sub_229678034(v4, v6);
}

- (void)populateAccessoryModel:(id)model version:(int64_t)version
{
  modelCopy = model;
  selfCopy = self;
  sub_229678580(modelCopy, version);
}

- (void)unconfigureMatterAccessoryWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = selfCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Unconfiguring Native Matter accessory: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDMatterAccessory *)selfCopy unconfigure];
  v9 = _Block_copy(completionCopy);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setCHIPReportHandler:(id)handler
{
  handlerCopy = handler;
  matterAdapter = [(HMDMatterAccessory *)self matterAdapter];
  [matterAdapter setMatterReportHandler:handlerCopy];
}

- (void)removeAllCHIPPairingsWithCompletion:(id)completion
{
  completionCopy = completion;
  matterAdapter = [(HMDMatterAccessory *)self matterAdapter];
  [matterAdapter removeAllMatterPairingsWithCompletion:completionCopy];
}

- (void)handleCHIPSendRemoteRequestMessage:(id)message
{
  messageCopy = message;
  matterAdapter = [(HMDMatterAccessory *)self matterAdapter];
  [matterAdapter handleRemoteMatterRequestMessage:messageCopy];
}

- (void)handleUpdatedCHIPPropertiesOnAccessoryModel:(id)model actions:(id)actions
{
  actionsCopy = actions;
  modelCopy = model;
  matterAdapter = [(HMDMatterAccessory *)self matterAdapter];
  [matterAdapter updateMatterPropertiesWithAccessoryModel:modelCopy actions:actionsCopy];
}

- (void)unconfigureAccessoryWithServerIdentifier:(id)identifier linkType:(int64_t)type updateReachability:(BOOL)reachability
{
  reachabilityCopy = reachability;
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = HMFGetLogIdentifier();
    if (type > 2)
    {
      v13 = @"Undefined";
    }

    else
    {
      v13 = off_2786768F0[type];
    }

    v14 = v13;
    v15 = HMFBooleanToString();
    v17 = 138544130;
    v18 = v12;
    v19 = 2112;
    v20 = identifierCopy;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Unconfiguring from server %@/%@ updateReachability %@", &v17, 0x2Au);
  }

  objc_autoreleasePoolPop(v9);
  if (reachabilityCopy)
  {
    [(HMDAccessory *)selfCopy setReachable:0];
  }

  logAndPostNotification(@"HMDAccessoryUnconfiguredNotification", selfCopy, 0);

  v16 = *MEMORY[0x277D85DE8];
}

- (void)unconfigure
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  matterAdapter = [(HMDMatterAccessory *)self matterAdapter];
  [matterAdapter unconfigure];
}

- (void)configureCHIPAccessory
{
  matterAdapter = [(HMDMatterAccessory *)self matterAdapter];
  [matterAdapter configureMatterAccessory];
}

- (void)populateModelObject:(id)object version:(int64_t)version
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objectCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  if (v7)
  {
    [(HMDMatterAccessory *)self populateAccessoryModel:v7 version:version];
  }
}

- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version
{
  v6 = [(HMDMatterAccessory *)self transactionWithObjectChangeType:type];
  [(HMDMatterAccessory *)self populateModelObject:v6 version:version];

  return v6;
}

- (id)transactionWithObjectChangeType:(unint64_t)type
{
  v5 = [HMDHAPAccessoryTransaction alloc];
  uuid = [(HMDAccessory *)self uuid];
  home = [(HMDAccessory *)self home];
  uuid2 = [home uuid];
  v9 = [(HMDBackingStoreModelObject *)v5 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  return v9;
}

- (void)transactionObjectRemoved:(id)removed message:(id)message
{
  removedCopy = removed;
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = removedCopy;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  if (v9 && ([(HMDMatterAccessory *)self matterAdapter], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    matterAdapter = [(HMDMatterAccessory *)self matterAdapter];
    [matterAdapter removeMatterPathModel:v9 message:messageCopy];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = HMDMatterAccessory;
    [(HMDAccessory *)&v12 transactionObjectRemoved:removedCopy message:messageCopy];
  }
}

- (void)transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v85 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  home = [(HMDAccessory *)self home];
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

  if (!v13)
  {
    goto LABEL_27;
  }

  transactionResult = [messageCopy transactionResult];
  certificationStatus = [v13 certificationStatus];
  if (certificationStatus)
  {
    v16 = certificationStatus;
    certificationStatus2 = [v13 certificationStatus];
    unsignedIntegerValue = [certificationStatus2 unsignedIntegerValue];
    certificationStatus3 = [(HMDMatterAccessory *)self certificationStatus];

    if (unsignedIntegerValue != certificationStatus3)
    {
      certificationStatus4 = [v13 certificationStatus];
      -[HMDMatterAccessory setCertificationStatus:](self, "setCertificationStatus:", [certificationStatus4 unsignedIntegerValue]);

      [transactionResult markChanged];
    }
  }

  pairingUsername = [v13 pairingUsername];
  if (pairingUsername)
  {
    v22 = pairingUsername;
    publicKey = [v13 publicKey];
    if (!publicKey)
    {

      goto LABEL_16;
    }

    v24 = publicKey;
    pairingUsername2 = [(HMDMatterAccessory *)self pairingUsername];
    pairingUsername3 = [v13 pairingUsername];
    if ([pairingUsername2 isEqual:pairingUsername3])
    {
      [(HMDMatterAccessory *)self publicKey];
      v27 = v71 = updatedCopy;
      [v13 publicKey];
      v73 = transactionResult;
      v29 = v28 = messageCopy;
      v69 = [v27 isEqual:v29];

      messageCopy = v28;
      transactionResult = v73;

      updatedCopy = v71;
      if (v69)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    pairingUsername4 = [v13 pairingUsername];
    [(HMDMatterAccessory *)self setPairingUsername:pairingUsername4];

    publicKey2 = [v13 publicKey];
    [(HMDMatterAccessory *)self setPublicKey:publicKey2];

    [transactionResult markChanged];
  }

LABEL_16:
  accessorySetupHash = [v13 accessorySetupHash];
  if (accessorySetupHash)
  {
    v33 = accessorySetupHash;
    setupHash = [(HMDMatterAccessory *)self setupHash];
    accessorySetupHash2 = [v13 accessorySetupHash];
    v36 = [setupHash isEqual:accessorySetupHash2];

    if ((v36 & 1) == 0)
    {
      accessorySetupHash3 = [v13 accessorySetupHash];
      [(HMDMatterAccessory *)self setSetupHash:accessorySetupHash3];

      [transactionResult markChanged];
    }
  }

  roomUUID = [v13 roomUUID];

  if (roomUUID)
  {
    v72 = updatedCopy;
    v74 = transactionResult;
    v70 = messageCopy;
    room = [(HMDAccessory *)self room];
    name = [room name];

    v41 = objc_alloc(MEMORY[0x277CCAD78]);
    roomUUID2 = [v13 roomUUID];
    v43 = [v41 initWithUUIDString:roomUUID2];

    v44 = objc_autoreleasePoolPush();
    selfCopy = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v66 = HMFGetLogIdentifier();
      v67 = [home roomWithUUID:v43];
      name2 = [v67 name];
      [(HMDAccessory *)selfCopy room];
      v48 = v47 = name;
      [v48 uuid];
      v49 = v68 = v44;
      HMFEqualObjects();

      name = v47;
      v50 = HMFBooleanToString();
      *buf = 138544130;
      v78 = v66;
      v79 = 2112;
      v80 = v47;
      v81 = 2112;
      v82 = name2;
      v83 = 2112;
      v84 = v50;
      _os_log_impl(&dword_229538000, v46, OS_LOG_TYPE_INFO, "%{public}@transactionObjectUpdated: old: %@, new:%@, same Room: %@", buf, 0x2Au);

      v44 = v68;
    }

    objc_autoreleasePoolPop(v44);
    if (v43)
    {
      transactionResult2 = [v70 transactionResult];
      v52 = -[HMDAccessory _updateRoom:source:](selfCopy, "_updateRoom:source:", v43, [transactionResult2 source]);

      if (v52)
      {
        [v74 markChanged];
        [v74 markSaveToAssistant];
      }
    }

    messageCopy = v70;
    updatedCopy = v72;
    transactionResult = v74;
  }

  transactionResult3 = [messageCopy transactionResult];
  [(HMDMatterAccessory *)self handleUpdatedCHIPPropertiesOnAccessoryModel:v13 actions:transactionResult3];

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
    matterAdapter = [(HMDMatterAccessory *)self matterAdapter];
    uuid = [v56 uuid];
    matterAdapter3 = [matterAdapter matterPathWithUUID:uuid];

    if (matterAdapter3)
    {
      [matterAdapter3 transactionObjectUpdated:updatedCopy newValues:v54 message:messageCopy];
    }

    else
    {
      matterAdapter2 = [(HMDMatterAccessory *)self matterAdapter];
      [matterAdapter2 addMatterPathModel:v56 message:messageCopy];
    }

LABEL_37:

    goto LABEL_38;
  }

  v76.receiver = self;
  v76.super_class = HMDMatterAccessory;
  [(HMDAccessory *)&v76 transactionObjectUpdated:updatedCopy newValues:v54 message:messageCopy];
  supportsNativeMatter = [v13 supportsNativeMatter];
  if (supportsNativeMatter)
  {
    matterAdapter3 = supportsNativeMatter;
    supportsNativeMatter2 = [v13 supportsNativeMatter];
    if ([supportsNativeMatter2 BOOLValue])
    {
    }

    else
    {
      convertingMatterAccessory = [(HMDMatterAccessory *)self convertingMatterAccessory];

      if (convertingMatterAccessory)
      {
        goto LABEL_38;
      }

      matterAdapter3 = [(HMDMatterAccessory *)self matterAdapter];
      [matterAdapter3 convertMatterAccessoryToNativeMatter:0];
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
    matterAdapter = [(HMDMatterAccessory *)self matterAdapter];
    [matterAdapter registerForMessages];
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
  publicKey = [(HMDMatterAccessory *)self publicKey];
  v5 = [v3 initWithPairingKeyData:publicKey];

  v6 = objc_alloc(MEMORY[0x277CFEC20]);
  identifier = [(HMDAccessory *)self identifier];
  v8 = [v6 initWithIdentifier:identifier publicKey:v5 privateKey:0 permissions:0];

  return v8;
}

- (int64_t)reachableTransports
{
  v5.receiver = self;
  v5.super_class = HMDMatterAccessory;
  reachableTransports = [(HMDAccessory *)&v5 reachableTransports];
  return reachableTransports | [(HMDAccessory *)self isReachable];
}

- (void)encodeWithCoder:(id)coder
{
  v32[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  hmd_isForXPCTransport = [coderCopy hmd_isForXPCTransport];
  hmd_isForXPCTransportEntitledForSPIAccess = [coderCopy hmd_isForXPCTransportEntitledForSPIAccess];
  hmd_homeManagerOptions = [coderCopy hmd_homeManagerOptions];
  v31.receiver = self;
  v31.super_class = HMDMatterAccessory;
  [(HMDAccessory *)&v31 encodeWithCoder:coderCopy];
  if ((hmd_homeManagerOptions & 0x20) != 0)
  {
    hmd_isForLocalStore = [coderCopy hmd_isForLocalStore];
    if ([coderCopy hmd_isForXPCTransport])
    {
LABEL_3:
      [(HMDAccessory *)self encodePreferredMediaUser:coderCopy];
      goto LABEL_4;
    }

    if (hmd_isForXPCTransport)
    {
      if (([coderCopy hmd_isForXPCTransportEntitledForSPIAccess] | hmd_isForLocalStore))
      {
        goto LABEL_3;
      }
    }

    else if (hmd_isForLocalStore)
    {
      goto LABEL_3;
    }
  }

LABEL_4:
  matterAdapter = [(HMDMatterAccessory *)self matterAdapter];
  shouldEncodeNotifications = [matterAdapter shouldEncodeNotifications];

  if (shouldEncodeNotifications)
  {
    matterAdapter2 = [(HMDMatterAccessory *)self matterAdapter];
    bulletinBoardNotificationByEndpoint = [matterAdapter2 bulletinBoardNotificationByEndpoint];
    [coderCopy encodeObject:bulletinBoardNotificationByEndpoint forKey:@"HM.BulletinBoardNotification"];
  }

  [coderCopy encodeBool:1 forKey:@"paired"];
  communicationProtocol = [(HMDMatterAccessory *)self communicationProtocol];
  [coderCopy encodeInteger:communicationProtocol forKey:*MEMORY[0x277CCE9A8]];
  matterNodeID = [(HMDMatterAccessory *)self matterNodeID];
  [coderCopy encodeObject:matterNodeID forKey:*MEMORY[0x277CCEB88]];

  [coderCopy encodeBool:1 forKey:*MEMORY[0x277CCEFF0]];
  [coderCopy encodeInteger:1 forKey:@"linkType"];
  [coderCopy encodeInteger:1 forKey:@"HM.accessoryTransportTypes"];
  chipStorage = [(HMDMatterAccessory *)self chipStorage];
  [coderCopy encodeObject:chipStorage forKey:@"HMDMatter.Storage"];

  publicKey = [(HMDMatterAccessory *)self publicKey];
  if (publicKey)
  {
    v17 = publicKey;
    pairingUsername = [(HMDMatterAccessory *)self pairingUsername];

    if (pairingUsername)
    {
      publicKey2 = [(HMDMatterAccessory *)self publicKey];
      [coderCopy encodeObject:publicKey2 forKey:@"accessoryPublicKey"];

      pairingUsername2 = [(HMDMatterAccessory *)self pairingUsername];
      [coderCopy encodeObject:pairingUsername2 forKey:@"accessoryPairingUsername"];
    }
  }

  if (hmd_isForXPCTransportEntitledForSPIAccess & 1 | ((hmd_isForXPCTransport & 1) == 0))
  {
    certificationStatus = [(HMDMatterAccessory *)self certificationStatus];
    [coderCopy encodeInteger:certificationStatus forKey:*MEMORY[0x277CCE968]];
  }

  if (!hmd_isForXPCTransport)
  {
    setupHash = [(HMDMatterAccessory *)self setupHash];
    [coderCopy encodeObject:setupHash forKey:@"HM.accessorySetupHash"];
LABEL_21:

    goto LABEL_22;
  }

  if (hmd_isForXPCTransportEntitledForSPIAccess)
  {
    isRemotelyReachable = [(HMDAccessory *)self isReachable]|| [(HMDAccessory *)self isRemotelyReachable];
    v24 = [HMDAccessoryTransportInformation alloc];
    identifier = [(HMDAccessory *)self identifier];
    setupHash = [(HMDAccessoryTransportInformation *)v24 initWithServerIdentifier:identifier instanceID:&unk_283E73208 linkType:1];

    [coderCopy encodeBool:isRemotelyReachable forKey:*MEMORY[0x277CCE9D8]];
    v32[0] = setupHash;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    [coderCopy encodeObject:v26 forKey:@"HM.accessoryTransportInformation"];

    supportsACWGUWB = [(HMDMatterAccessory *)self supportsACWGUWB];
    [coderCopy encodeBool:supportsACWGUWB forKey:*MEMORY[0x277CCF030]];
    mfiCertifiedACWG = [(HMDMatterAccessory *)self mfiCertifiedACWG];
    [coderCopy encodeBool:mfiCertifiedACWG forKey:*MEMORY[0x277CCEB48]];
    readerGroupSubIdentifierACWG = [(HMDMatterAccessory *)self readerGroupSubIdentifierACWG];
    [coderCopy encodeObject:readerGroupSubIdentifierACWG forKey:*MEMORY[0x277CCEC88]];

    goto LABEL_21;
  }

LABEL_22:

  v30 = *MEMORY[0x277D85DE8];
}

- (HMDMatterAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = HMDMatterAccessory;
  v5 = [(HMDAccessory *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"accessoryPublicKey"] && objc_msgSend(coderCopy, "containsValueForKey:", @"accessoryPairingUsername"))
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryPublicKey"];
      publicKey = v5->_publicKey;
      v5->_publicKey = v6;

      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryPairingUsername"];
      pairingUsername = v5->_pairingUsername;
      v5->_pairingUsername = v8;
    }

    v10 = *MEMORY[0x277CCE968];
    if ([coderCopy containsValueForKey:*MEMORY[0x277CCE968]])
    {
      v5->_certificationStatus = [coderCopy decodeIntegerForKey:v10];
    }

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.accessorySetupHash"];
    setupHash = v5->_setupHash;
    v5->_setupHash = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMDMatter.Storage"];
    if (v13)
    {
      objc_storeStrong(&v5->_chipStorage, v13);
      nodeID = [v13 nodeID];
      matterNodeID = v5->_matterNodeID;
      v5->_matterNodeID = nodeID;

      vendorID = [v13 vendorID];
      matterVendorID = v5->_matterVendorID;
      v5->_matterVendorID = vendorID;

      productID = [v13 productID];
      matterProductID = v5->_matterProductID;
      v5->_matterProductID = productID;

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

- (void)handleIdentifyAccessoryMessage:(id)message
{
  messageCopy = message;
  matterAdapter = [(HMDMatterAccessory *)self matterAdapter];
  mtrCommandPaths = [matterAdapter mtrCommandPaths];
  v7 = [mtrCommandPaths na_firstObjectPassingTest:&__block_literal_global_148861];
  endpoint = [v7 endpoint];

  if (!endpoint)
  {
    accessoryServer = [(HMDMatterAccessory *)self accessoryServer];
    primaryAccessory = [accessoryServer primaryAccessory];

    v10 = [primaryAccessory servicesOfType:*MEMORY[0x277CD0DD0]];
    firstObject = [v10 firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = firstObject;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    endpoint = [v13 endpoint];
  }

  matterAdapter2 = [(HMDMatterAccessory *)self matterAdapter];
  [matterAdapter2 identifyEndpoint:endpoint identifyTime:&unk_283E731D8 message:messageCopy];
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

- (HMDMatterAccessory)initWithTransaction:(id)transaction home:(id)home
{
  v92 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  homeCopy = home;
  v8 = transactionCopy;
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
    v11 = [(HMDAccessory *)&v89 initWithTransaction:v8 home:homeCopy];
    if (v11)
    {
      v12 = +[HMDBulletinBoard sharedBulletinBoard];
      bulletinBoard = v11->_bulletinBoard;
      v11->_bulletinBoard = v12;

      chipNodeID = [v10 chipNodeID];

      if (chipNodeID)
      {
        chipNodeID2 = [v10 chipNodeID];
        matterNodeID = v11->_matterNodeID;
        v11->_matterNodeID = chipNodeID2;
      }

      chipVendorID = [v10 chipVendorID];

      if (chipVendorID)
      {
        chipVendorID2 = [v10 chipVendorID];
        matterVendorID = v11->_matterVendorID;
        v11->_matterVendorID = chipVendorID2;
      }

      chipProductID = [v10 chipProductID];

      if (chipProductID)
      {
        chipProductID2 = [v10 chipProductID];
        matterProductID = v11->_matterProductID;
        v11->_matterProductID = chipProductID2;
      }

      firmwareVersion = [v8 firmwareVersion];

      if (firmwareVersion)
      {
        v24 = [HMDAccessoryVersion alloc];
        firmwareVersion2 = [v8 firmwareVersion];
        v26 = [(HMDAccessoryVersion *)v24 initWithMatterVersionString:firmwareVersion2];
        [(HMDAccessory *)v11 setFirmwareVersion:v26];
      }

      setProperties = [v10 setProperties];
      v28 = [setProperties containsObject:@"supportedLinkLayerTypes"];

      if (v28)
      {
        supportedLinkLayerTypes = [v10 supportedLinkLayerTypes];
        supportedLinkLayerTypes = v11->_supportedLinkLayerTypes;
        v11->_supportedLinkLayerTypes = supportedLinkLayerTypes;
      }

      chipWEDSupport = [v10 chipWEDSupport];

      if (chipWEDSupport)
      {
        chipWEDSupport2 = [v10 chipWEDSupport];
        matterWEDSupport = v11->_matterWEDSupport;
        v11->_matterWEDSupport = chipWEDSupport2;
      }

      chipExtendedMACAddress = [v10 chipExtendedMACAddress];

      if (chipExtendedMACAddress)
      {
        chipExtendedMACAddress2 = [v10 chipExtendedMACAddress];
        matterExtendedMACAddress = v11->_matterExtendedMACAddress;
        v11->_matterExtendedMACAddress = chipExtendedMACAddress2;
      }

      matterSoftwareVersionNumber = [v10 matterSoftwareVersionNumber];

      if (matterSoftwareVersionNumber)
      {
        matterSoftwareVersionNumber2 = [v10 matterSoftwareVersionNumber];
        matterSoftwareVersionNumber = v11->_matterSoftwareVersionNumber;
        v11->_matterSoftwareVersionNumber = matterSoftwareVersionNumber2;
      }

      accessorySetupHash = [v10 accessorySetupHash];

      if (accessorySetupHash)
      {
        accessorySetupHash2 = [v10 accessorySetupHash];
        setupHash = v11->_setupHash;
        v11->_setupHash = accessorySetupHash2;
      }

      publicKey = [v10 publicKey];

      if (publicKey)
      {
        publicKey2 = [v10 publicKey];
        publicKey = v11->_publicKey;
        v11->_publicKey = publicKey2;
      }

      pairingUsername = [v10 pairingUsername];

      if (pairingUsername)
      {
        pairingUsername2 = [v10 pairingUsername];
        pairingUsername = v11->_pairingUsername;
        v11->_pairingUsername = pairingUsername2;
      }

      setProperties2 = [v10 setProperties];
      v50 = [setProperties2 containsObject:@"certificationStatus"];

      if (v50)
      {
        certificationStatus = [v10 certificationStatus];
        v11->_certificationStatus = [certificationStatus unsignedIntegerValue];
      }

      setProperties3 = [v10 setProperties];
      v53 = [setProperties3 containsObject:@"supportsMatterAccessCode"];

      if (v53)
      {
        supportsMatterAccessCode = [v10 supportsMatterAccessCode];
        supportsMatterAccessCode = v11->_supportsMatterAccessCode;
        v11->_supportsMatterAccessCode = supportsMatterAccessCode;
      }

      setProperties4 = [v10 setProperties];
      v57 = [setProperties4 containsObject:@"supportsMatterWalletKey"];

      if (v57)
      {
        supportsMatterWalletKey = [v10 supportsMatterWalletKey];
        supportsMatterWalletKey = v11->_supportsMatterWalletKey;
        v11->_supportsMatterWalletKey = supportsMatterWalletKey;
      }

      setProperties5 = [v10 setProperties];
      v61 = [setProperties5 containsObject:@"supportsMatterWeekDaySchedule"];

      if (v61)
      {
        supportsMatterWeekDaySchedule = [v10 supportsMatterWeekDaySchedule];
        v11->_supportsMatterWeekDaySchedule = [supportsMatterWeekDaySchedule BOOLValue];
      }

      setProperties6 = [v10 setProperties];
      v64 = [setProperties6 containsObject:@"supportsMatterYearDaySchedule"];

      if (v64)
      {
        supportsMatterYearDaySchedule = [v10 supportsMatterYearDaySchedule];
        v11->_supportsMatterYearDaySchedule = [supportsMatterYearDaySchedule BOOLValue];
      }

      setProperties7 = [v10 setProperties];
      v67 = [setProperties7 containsObject:@"supportsMatCredACP"];

      if (v67)
      {
        supportsMatCredACP = [v10 supportsMatCredACP];
        v11->_supportsACWGProvisioning = [supportsMatCredACP BOOLValue];
      }

      setProperties8 = [v10 setProperties];
      v70 = [setProperties8 containsObject:@"supportsMatCredACB"];

      if (v70)
      {
        supportsMatCredACB = [v10 supportsMatCredACB];
        v11->_supportsACWGUWB = [supportsMatCredACB BOOLValue];
      }

      setProperties9 = [v10 setProperties];
      v73 = [setProperties9 containsObject:@"matCredRGSI"];

      if (v73)
      {
        matCredRGSI = [v10 matCredRGSI];
        readerGroupSubIdentifierACWG = v11->_readerGroupSubIdentifierACWG;
        v11->_readerGroupSubIdentifierACWG = matCredRGSI;
      }

      setProperties10 = [v10 setProperties];
      v77 = [setProperties10 containsObject:@"preexistingMatCredRGI"];

      if (v77)
      {
        preexistingMatCredRGI = [v10 preexistingMatCredRGI];
        preexistingReaderGroupIdentifierACWG = v11->_preexistingReaderGroupIdentifierACWG;
        v11->_preexistingReaderGroupIdentifierACWG = preexistingMatCredRGI;
      }

      [(HMDCHIPAccessoryStorage *)v11->_chipStorage updateUsingAccessoryModel:v10];
      v80 = [[HMDMatterAccessoryAdapter alloc] initWithAccessory:v11];
      matterAdapter = v11->_matterAdapter;
      v11->_matterAdapter = v80;
    }

    selfCopy = v11;
    v83 = selfCopy;
  }

  else
  {
    v84 = objc_autoreleasePoolPush();
    selfCopy = self;
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

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v37 = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  messageCopy = message;
  receiverCopy = receiver;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = receiverCopy;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    matterAdapter = [v12 matterAdapter];
    if (matterAdapter)
    {
      v14 = [HMDMatterAccessoryAdapter messageBindingForDispatcher:dispatcherCopy message:messageCopy receiver:matterAdapter];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v30.receiver = self;
        v30.super_class = &OBJC_METACLASS___HMDMatterAccessory;
        v16 = objc_msgSendSuper2(&v30, sel_messageBindingForDispatcher_message_receiver_, dispatcherCopy, messageCopy, receiverCopy);
      }

      v22 = v16;
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = HMFGetLogIdentifier();
        name = [messageCopy name];
        *buf = 138543874;
        v32 = v26;
        v33 = 2112;
        v34 = name;
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
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      name2 = [messageCopy name];
      *buf = 138543874;
      v32 = v20;
      v33 = 2112;
      v34 = name2;
      v35 = 2112;
      v36 = receiverCopy;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Unable to find binding for message %@, unexpected receiver class: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v22;
}

@end