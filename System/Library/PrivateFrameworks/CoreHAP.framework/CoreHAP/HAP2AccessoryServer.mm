@interface HAP2AccessoryServer
+ (HAP2AccessoryServer)_accessoryServerWithMetadata:(void *)metadata browser:(void *)browser controller:(void *)controller operationQueue:(BOOL)queue internallyPaired:;
+ (id)new;
+ (id)unpairedAccessoryServerWithMetadata:(id)metadata browser:(id)browser controller:(id)controller pairingDriver:(id)driver operationQueue:(id)queue;
- (BOOL)hasDiscoveryAdvertisement;
- (BOOL)hasPairings;
- (BOOL)isConfirming;
- (HAP2Accessory)primaryAccessory;
- (HAP2AccessoryServer)init;
- (HAP2AccessoryServerBrowserPrivate)browser;
- (HAP2AccessoryServerControllerPrivate)controller;
- (HAP2AccessoryServerDelegate)delegate;
- (HAPDeviceID)deviceID;
- (HMFVersion)protocolVersion;
- (NSData)setupHash;
- (NSString)description;
- (NSString)model;
- (NSString)name;
- (NSString)productData;
- (NSString)reachabilityChangedReason;
- (NSString)setupID;
- (double)sessionCheckInterval;
- (id)_delegateCancelableFor:(void *)for;
- (id)_findAccessoryAndCharacteristicForInstanceID:(void *)d characteristic:;
- (id)_readValuesForCharacteristics:(uint64_t)characteristics timeout:(void *)timeout options:(void *)options activity:(double)activity completion:;
- (id)addPairing:(id)pairing completion:(id)completion;
- (id)currentMetadata;
- (id)disableNotificationsForCharacteristics:(id)characteristics completion:(id)completion;
- (id)enableNotificationsForCharacteristics:(id)characteristics completion:(id)completion;
- (id)getPairingsWithCompletion:(id)completion;
- (id)identifyWithCompletion:(id)completion;
- (id)internalPairingDriver;
- (id)outstandingUpdateAccessoriesRequest;
- (id)pairDelegate;
- (id)pairWithDelegate:(id)delegate pairingRequest:(id)request;
- (id)pairedDelegate;
- (id)privateAccessories;
- (id)reachability;
- (id)reachabilityProfile;
- (id)removePairing:(id)pairing completion:(id)completion;
- (id)unpairWithCompletion:(id)completion;
- (id)updateAccessoriesWithReason:(id)reason;
- (id)writeValuesForCharacteristics:(id)characteristics timeout:(double)timeout completion:(id)completion;
- (uint64_t)isInternallyPaired;
- (uint64_t)setInternallyPaired:(uint64_t)result;
- (unint64_t)category;
- (unint64_t)connectionState;
- (unsigned)configNumber;
- (unsigned)stateNumber;
- (void)_handleAccessoryOperationError:(void *)error;
- (void)_handleFailedAccessoryDiscovery:(void *)discovery;
- (void)_kickReachabilityAfterCharacteristicOperation:(void *)operation withResponse:(char)response ignoreCachedCharacteristics:(void *)characteristics error:;
- (void)_performBackgroundPollWithCompletion:(id)completion;
- (void)_pollAccessoryWithOptions:(void *)options;
- (void)_stopConfirming;
- (void)_updateConnectionState:(void *)state withError:;
- (void)_updateServerMetadata:(void *)metadata controller:;
- (void)becomePairedWithAccessoryServer:(id)server;
- (void)becomeUnpairedWithAccessoryServer:(id)server;
- (void)clearAccessories;
- (void)closeSession;
- (void)dealloc;
- (void)handleEvents:(id)events;
- (void)handleLostDiscoveryAdvertisementWithWillSleep:(BOOL)sleep;
- (void)handleNetworkChanged;
- (void)handleReestablishedSession;
- (void)handleUpdatedCharacteristicValues:(id)values;
- (void)mergeWithNewlyDiscoveredPairedAccessoryServer:(id)server;
- (void)mergeWithNewlyDiscoveredUnpairedAccessoryServer:(id)server;
- (void)pairingDriver:(id)driver authenticateSoftwareAuthUUID:(id)d token:(id)token completion:(id)completion;
- (void)pairingDriver:(id)driver confirmSoftwareAuthUUID:(id)d token:(id)token completion:(id)completion;
- (void)pairingDriver:(id)driver didCompleteWithError:(id)error;
- (void)pairingDriver:(id)driver didFinishAuthWithError:(id)error;
- (void)pairingDriver:(id)driver didRejectSetupCodeForAccessory:(id)accessory backoffInterval:(double)interval completion:(id)completion;
- (void)pairingDriver:(id)driver didRequestLocalPairingIdentityWithCompletion:(id)completion;
- (void)pairingDriver:(id)driver didSaveRemotePairingIdentity:(id)identity completion:(id)completion;
- (void)pairingDriver:(id)driver doesRequirePermission:(unint64_t)permission accessory:(id)accessory completion:(id)completion;
- (void)pairingDriver:(id)driver doesRequireSetupCodeForAccessory:(id)accessory completion:(id)completion;
- (void)pairingDriver:(id)driver validatePairingCert:(id)cert model:(id)model completion:(id)completion;
- (void)pairingDriver:(id)driver validateSoftwareAuthUUID:(id)d token:(id)token model:(id)model completion:(id)completion;
- (void)pollAccessory;
- (void)setBackgroundScheduler:(uint64_t)scheduler;
- (void)setDelegate:(id)delegate;
- (void)setHasDiscoveryAdvertisement:(BOOL)advertisement;
- (void)setInternalPairingDriver:(uint64_t)driver;
- (void)setOutstandingUpdateAccessoriesRequest:(void *)request;
- (void)setPairDelegate:(void *)delegate;
- (void)setPairedName:(uint64_t)name;
- (void)setPairedProtocolVersion:(uint64_t)version;
- (void)setPrivateAccessories:(uint64_t)accessories;
- (void)setProductData:(id)data;
- (void)setReachabilityChangedReason:(id)reason;
- (void)setReachabilityProfile:(id *)profile;
- (void)setSetupID:(id)d;
- (void)startConfirming;
- (void)stopConfirming;
- (void)updateReachability;
- (void)verifyConnection;
@end

@implementation HAP2AccessoryServer

- (HAP2AccessoryServerBrowserPrivate)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = HAP2AccessoryServer;
  v4 = [(HAP2LoggingObject *)&v11 description];
  name = [(HAP2AccessoryServer *)self name];
  deviceID = [(HAP2AccessoryServer *)self deviceID];
  isInternallyPaired = [(HAP2AccessoryServer *)self isInternallyPaired];
  v8 = @"Unpaired";
  if (isInternallyPaired)
  {
    v8 = @"Paired";
  }

  v9 = [v3 stringWithFormat:@"%@ [%@/%@] (%@)", v4, name, deviceID, v8];

  return v9;
}

- (uint64_t)isInternallyPaired
{
  selfCopy = self;
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v2 = *(self + 168);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __41__HAP2AccessoryServer_isInternallyPaired__block_invoke;
    v4[3] = &unk_2786D6E60;
    v4[4] = selfCopy;
    v4[5] = &v5;
    [v2 performReadingBlock:v4];

    LOBYTE(selfCopy) = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  return selfCopy & 1;
}

- (NSData)setupHash
{
  currentMetadata = [(HAP2AccessoryServer *)&self->super.super.isa currentMetadata];
  setupHash = [currentMetadata setupHash];

  return setupHash;
}

- (id)currentMetadata
{
  selfCopy = self;
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__4322;
    v9 = __Block_byref_object_dispose__4323;
    v10 = 0;
    v2 = self[21];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __38__HAP2AccessoryServer_currentMetadata__block_invoke;
    v4[3] = &unk_2786D6E60;
    v4[4] = selfCopy;
    v4[5] = &v5;
    [v2 performReadingBlock:v4];

    selfCopy = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return selfCopy;
}

- (unsigned)configNumber
{
  currentMetadata = [(HAP2AccessoryServer *)&self->super.super.isa currentMetadata];
  configNumber = [currentMetadata configNumber];

  return configNumber;
}

- (unsigned)stateNumber
{
  currentMetadata = [(HAP2AccessoryServer *)&self->super.super.isa currentMetadata];
  stateNumber = [currentMetadata stateNumber];

  return stateNumber;
}

- (unint64_t)category
{
  currentMetadata = [(HAP2AccessoryServer *)&self->super.super.isa currentMetadata];
  category = [currentMetadata category];

  return category;
}

- (NSString)model
{
  currentMetadata = [(HAP2AccessoryServer *)&self->super.super.isa currentMetadata];
  model = [currentMetadata model];

  return model;
}

- (NSString)name
{
  if (![(HAP2AccessoryServer *)self isInternallyPaired])
  {
    goto LABEL_4;
  }

  if (!self)
  {
    goto LABEL_4;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4322;
  v12 = __Block_byref_object_dispose__4323;
  v13 = 0;
  v3 = self->_propertyLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__HAP2AccessoryServer_pairedName__block_invoke;
  v7[3] = &unk_2786D6E60;
  v7[4] = self;
  v7[5] = &v8;
  [(HAP2PropertyLock *)v3 performReadingBlock:v7];

  name = v9[5];
  _Block_object_dispose(&v8, 8);

  if (!name)
  {
LABEL_4:
    currentMetadata = [(HAP2AccessoryServer *)&self->super.super.isa currentMetadata];
    name = [currentMetadata name];
  }

  return name;
}

- (HMFVersion)protocolVersion
{
  if (![(HAP2AccessoryServer *)self isInternallyPaired])
  {
    goto LABEL_4;
  }

  if (!self)
  {
    goto LABEL_4;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4322;
  v12 = __Block_byref_object_dispose__4323;
  v13 = 0;
  v3 = self->_propertyLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HAP2AccessoryServer_pairedProtocolVersion__block_invoke;
  v7[3] = &unk_2786D6E60;
  v7[4] = self;
  v7[5] = &v8;
  [(HAP2PropertyLock *)v3 performReadingBlock:v7];

  protocolVersion = v9[5];
  _Block_object_dispose(&v8, 8);

  if (!protocolVersion)
  {
LABEL_4:
    currentMetadata = [(HAP2AccessoryServer *)&self->super.super.isa currentMetadata];
    protocolVersion = [currentMetadata protocolVersion];
  }

  return protocolVersion;
}

- (BOOL)hasPairings
{
  currentMetadata = [(HAP2AccessoryServer *)&self->super.super.isa currentMetadata];
  hasPairings = [currentMetadata hasPairings];

  return hasPairings;
}

- (HAPDeviceID)deviceID
{
  currentMetadata = [(HAP2AccessoryServer *)&self->super.super.isa currentMetadata];
  deviceID = [currentMetadata deviceID];

  return deviceID;
}

- (void)setSetupID:(id)d
{
  dCopy = d;
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  [operationQueue assertCurrentQueue];

  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__HAP2AccessoryServer_setSetupID___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = dCopy;
  v7 = dCopy;
  [(HAP2PropertyLock *)propertyLock performWritingBlock:v8];
}

- (NSString)setupID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4322;
  v12 = __Block_byref_object_dispose__4323;
  v13 = 0;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v4 = propertyLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __30__HAP2AccessoryServer_setupID__block_invoke;
  v7[3] = &unk_2786D6E60;
  v7[4] = self;
  v7[5] = &v8;
  [(HAP2PropertyLock *)v4 performReadingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (double)sessionCheckInterval
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v4 = propertyLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__HAP2AccessoryServer_sessionCheckInterval__block_invoke;
  v7[3] = &unk_2786D6E60;
  v7[4] = self;
  v7[5] = &v8;
  [(HAP2PropertyLock *)v4 performReadingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __43__HAP2AccessoryServer_sessionCheckInterval__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 128) confirmInterval];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

- (void)setReachabilityChangedReason:(id)reason
{
  reasonCopy = reason;
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  [operationQueue assertCurrentQueue];

  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__HAP2AccessoryServer_setReachabilityChangedReason___block_invoke;
  v8[3] = &unk_2786D7050;
  v8[4] = self;
  v9 = reasonCopy;
  v7 = reasonCopy;
  [(HAP2PropertyLock *)propertyLock performWritingBlock:v8];
}

- (NSString)reachabilityChangedReason
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4322;
  v12 = __Block_byref_object_dispose__4323;
  v13 = @"Unknown";
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v4 = propertyLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HAP2AccessoryServer_reachabilityChangedReason__block_invoke;
  v7[3] = &unk_2786D6E60;
  v7[4] = self;
  v7[5] = &v8;
  [(HAP2PropertyLock *)v4 performReadingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)setHasDiscoveryAdvertisement:(BOOL)advertisement
{
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  [operationQueue assertCurrentQueue];

  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HAP2AccessoryServer_setHasDiscoveryAdvertisement___block_invoke;
  v7[3] = &unk_2786D6768;
  v7[4] = self;
  advertisementCopy = advertisement;
  [(HAP2PropertyLock *)propertyLock performWritingBlock:v7];
}

- (BOOL)hasDiscoveryAdvertisement
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v4 = propertyLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HAP2AccessoryServer_hasDiscoveryAdvertisement__block_invoke;
  v7[3] = &unk_2786D6E60;
  v7[4] = self;
  v7[5] = &v8;
  [(HAP2PropertyLock *)v4 performReadingBlock:v7];

  v5 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (NSString)productData
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4322;
  v12 = __Block_byref_object_dispose__4323;
  v13 = 0;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v4 = propertyLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__HAP2AccessoryServer_productData__block_invoke;
  v7[3] = &unk_2786D6E60;
  v7[4] = self;
  v7[5] = &v8;
  [(HAP2PropertyLock *)v4 performReadingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)setProductData:(id)data
{
  dataCopy = data;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HAP2AccessoryServer_setProductData___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  [(HAP2PropertyLock *)propertyLock performWritingBlock:v7];
}

- (HAP2AccessoryServerControllerPrivate)controller
{
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  [operationQueue assertCurrentQueue];

  controller = self->_controller;

  return controller;
}

- (unint64_t)connectionState
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v4 = propertyLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HAP2AccessoryServer_connectionState__block_invoke;
  v7[3] = &unk_2786D6E60;
  v7[4] = self;
  v7[5] = &v8;
  [(HAP2PropertyLock *)v4 performReadingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__HAP2AccessoryServer_setDelegate___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  [(HAP2PropertyLock *)propertyLock performWritingBlock:v7];
}

- (HAP2AccessoryServerDelegate)delegate
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__4322;
  v12 = __Block_byref_object_dispose__4323;
  v13 = 0;
  if (self)
  {
    propertyLock = self->_propertyLock;
  }

  else
  {
    propertyLock = 0;
  }

  v4 = propertyLock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__HAP2AccessoryServer_delegate__block_invoke;
  v7[3] = &unk_2786D6E60;
  v7[4] = self;
  v7[5] = &v8;
  [(HAP2PropertyLock *)v4 performReadingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __31__HAP2AccessoryServer_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  [(NSBackgroundActivityScheduler *)self->_backgroundScheduler invalidate];
  v3.receiver = self;
  v3.super_class = HAP2AccessoryServer;
  [(HAP2AccessoryServer *)&v3 dealloc];
}

- (HAP2AccessoryServer)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (HAP2AccessoryServer)_accessoryServerWithMetadata:(void *)metadata browser:(void *)browser controller:(void *)controller operationQueue:(BOOL)queue internallyPaired:
{
  controllerCopy = controller;
  browserCopy = browser;
  metadataCopy = metadata;
  v13 = a2;
  objc_opt_self();
  if ([metadataCopy conformsToProtocol:&unk_283EC1D50])
  {
    v14 = metadataCopy;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v38 = browserCopy;
  if ([browserCopy conformsToProtocol:&unk_283ECA260])
  {
    v16 = browserCopy;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  v18 = [HAP2AccessoryServer alloc];
  v19 = v13;
  v20 = v17;
  v21 = v15;
  v22 = controllerCopy;
  if (v18)
  {
    v39.receiver = v18;
    v39.super_class = HAP2AccessoryServer;
    v23 = objc_msgSendSuper2(&v39, sel_init);
    v18 = v23;
    if (v23)
    {
      objc_storeStrong(&v23->_currentMetadata, a2);
      objc_storeStrong(&v18->_controller, v16);
      objc_storeWeak(&v18->_browser, v21);
      objc_storeStrong(&v18->_operationQueue, controller);
      v24 = [HAP2PropertyLock lockWithName:@"HAP2AccessoryServer.propertyLock"];
      propertyLock = v18->_propertyLock;
      v18->_propertyLock = v24;

      v18->_internallyPaired = queue;
      privateAccessories = v18->_privateAccessories;
      v18->_privateAccessories = MEMORY[0x277CBEBF8];

      v18->_connectionState = 1;
      v18->_hasDiscoveryAdvertisement = 1;
      reachabilityChangedReason = v18->_reachabilityChangedReason;
      v18->_reachabilityChangedReason = @"Unknown";

      v18->_sessionCheckInterval = 0.0;
      v28 = objc_opt_new();
      reachabilityProfile = v18->_reachabilityProfile;
      v18->_reachabilityProfile = v28;

      v30 = [HAPAccessoryReachabilityClient alloc];
      deviceID = [(HAP2AccessoryServer *)v18 deviceID];
      v32 = v18->_reachabilityProfile;
      v33 = objc_opt_new();
      v34 = [(HAPAccessoryReachabilityClient *)v30 initWithIdentifier:deviceID profile:v32 operationQueue:v33];

      [(HAPAccessoryReachabilityClient *)v34 setDelegate:v18];
      reachability = v18->_reachability;
      v18->_reachability = v34;
    }
  }

  [v20 setAccessoryServer:v18];

  return v18;
}

+ (id)unpairedAccessoryServerWithMetadata:(id)metadata browser:(id)browser controller:(id)controller pairingDriver:(id)driver operationQueue:(id)queue
{
  driverCopy = driver;
  v13 = [(HAP2AccessoryServer *)self _accessoryServerWithMetadata:metadata browser:browser controller:controller operationQueue:queue internallyPaired:0];
  v14 = v13[14];
  v13[14] = driverCopy;

  return v13;
}

+ (id)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (uint64_t)setInternallyPaired:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 168);
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __43__HAP2AccessoryServer_setInternallyPaired___block_invoke;
    v3[3] = &unk_2786D6768;
    v3[4] = result;
    v4 = a2;
    return [v2 performWritingBlock:v3];
  }

  return result;
}

- (id)privateAccessories
{
  selfCopy = self;
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__4322;
    v9 = __Block_byref_object_dispose__4323;
    v10 = 0;
    v2 = self[21];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __41__HAP2AccessoryServer_privateAccessories__block_invoke;
    v4[3] = &unk_2786D6E60;
    v4[4] = selfCopy;
    v4[5] = &v5;
    [v2 performReadingBlock:v4];

    selfCopy = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return selfCopy;
}

- (void)setPrivateAccessories:(uint64_t)accessories
{
  v3 = a2;
  v4 = v3;
  if (accessories)
  {
    v5 = *(accessories + 168);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__HAP2AccessoryServer_setPrivateAccessories___block_invoke;
    v6[3] = &unk_2786D7050;
    v6[4] = accessories;
    v7 = v3;
    [v5 performWritingBlock:v6];
  }
}

uint64_t __45__HAP2AccessoryServer_setPrivateAccessories___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setPairedName:(uint64_t)name
{
  v3 = a2;
  v4 = v3;
  if (name)
  {
    v5 = *(name + 168);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__HAP2AccessoryServer_setPairedName___block_invoke;
    v6[3] = &unk_2786D7050;
    v6[4] = name;
    v7 = v3;
    [v5 performWritingBlock:v6];
  }
}

uint64_t __37__HAP2AccessoryServer_setPairedName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setPairedProtocolVersion:(uint64_t)version
{
  v3 = a2;
  v4 = v3;
  if (version)
  {
    v5 = *(version + 168);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__HAP2AccessoryServer_setPairedProtocolVersion___block_invoke;
    v6[3] = &unk_2786D7050;
    v6[4] = version;
    v7 = v3;
    [v5 performWritingBlock:v6];
  }
}

- (id)outstandingUpdateAccessoriesRequest
{
  selfCopy = self;
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__4322;
    v9 = __Block_byref_object_dispose__4323;
    v10 = 0;
    v2 = self[21];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __58__HAP2AccessoryServer_outstandingUpdateAccessoriesRequest__block_invoke;
    v4[3] = &unk_2786D6E60;
    v4[4] = selfCopy;
    v4[5] = &v5;
    [v2 performReadingBlock:v4];

    selfCopy = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return selfCopy;
}

- (void)setOutstandingUpdateAccessoriesRequest:(void *)request
{
  v3 = a2;
  if (request)
  {
    operationQueue = [request operationQueue];
    [operationQueue assertCurrentQueue];

    v5 = request[21];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__HAP2AccessoryServer_setOutstandingUpdateAccessoriesRequest___block_invoke;
    v6[3] = &unk_2786D7050;
    v6[4] = request;
    v7 = v3;
    [v5 performWritingBlock:v6];
  }
}

- (id)reachability
{
  if (self)
  {
    selfCopy = self;
    operationQueue = [self operationQueue];
    [operationQueue assertCurrentQueue];

    self = selfCopy[16];
    v1 = vars8;
  }

  return self;
}

- (id)reachabilityProfile
{
  if (self)
  {
    selfCopy = self;
    operationQueue = [self operationQueue];
    [operationQueue assertCurrentQueue];

    self = selfCopy[17];
    v1 = vars8;
  }

  return self;
}

- (void)setReachabilityProfile:(id *)profile
{
  v5 = a2;
  if (profile)
  {
    operationQueue = [profile operationQueue];
    [operationQueue assertCurrentQueue];

    objc_storeStrong(profile + 17, a2);
  }
}

- (id)internalPairingDriver
{
  selfCopy = self;
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__4322;
    v9 = __Block_byref_object_dispose__4323;
    v10 = 0;
    v2 = self[21];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __44__HAP2AccessoryServer_internalPairingDriver__block_invoke;
    v4[3] = &unk_2786D6E60;
    v4[4] = selfCopy;
    v4[5] = &v5;
    [v2 performReadingBlock:v4];

    selfCopy = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return selfCopy;
}

- (void)setInternalPairingDriver:(uint64_t)driver
{
  v3 = a2;
  v4 = v3;
  if (driver)
  {
    v5 = *(driver + 168);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__HAP2AccessoryServer_setInternalPairingDriver___block_invoke;
    v6[3] = &unk_2786D7050;
    v6[4] = driver;
    v7 = v3;
    [v5 performWritingBlock:v6];
  }
}

- (id)pairDelegate
{
  selfCopy = self;
  if (self)
  {
    operationQueue = [self operationQueue];
    [operationQueue assertCurrentQueue];

    v6 = 0;
    v7 = &v6;
    v8 = 0x3032000000;
    v9 = __Block_byref_object_copy__4322;
    v10 = __Block_byref_object_dispose__4323;
    v11 = 0;
    v3 = selfCopy[21];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __35__HAP2AccessoryServer_pairDelegate__block_invoke;
    v5[3] = &unk_2786D6E60;
    v5[4] = selfCopy;
    v5[5] = &v6;
    [v3 performReadingBlock:v5];

    selfCopy = v7[5];
    _Block_object_dispose(&v6, 8);
  }

  return selfCopy;
}

uint64_t __35__HAP2AccessoryServer_pairDelegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 120));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (void)setPairDelegate:(void *)delegate
{
  v3 = a2;
  if (delegate)
  {
    operationQueue = [delegate operationQueue];
    [operationQueue assertCurrentQueue];

    v5 = delegate[21];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__HAP2AccessoryServer_setPairDelegate___block_invoke;
    v6[3] = &unk_2786D7050;
    v6[4] = delegate;
    v7 = v3;
    [v5 performWritingBlock:v6];
  }
}

- (id)_delegateCancelableFor:(void *)for
{
  v3 = a2;
  if (for)
  {
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x3032000000;
    v12[3] = __Block_byref_object_copy__4322;
    v12[4] = __Block_byref_object_dispose__4323;
    v13 = 0;
    operationQueue = [for operationQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__HAP2AccessoryServer__delegateCancelableFor___block_invoke;
    v9[3] = &unk_2786D3540;
    v11 = v12;
    v10 = v3;
    [operationQueue addBlock:v9];

    objc_initWeak(&location, for);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__HAP2AccessoryServer__delegateCancelableFor___block_invoke_2;
    v6[3] = &unk_2786D5FE8;
    objc_copyWeak(&v7, &location);
    v6[4] = v12;
    for = [HAP2Cancelable cancelableWithBlock:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);

    _Block_object_dispose(v12, 8);
  }

  return for;
}

uint64_t __46__HAP2AccessoryServer__delegateCancelableFor___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 32) + 16))();
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __46__HAP2AccessoryServer__delegateCancelableFor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained operationQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__HAP2AccessoryServer__delegateCancelableFor___block_invoke_3;
    v7[3] = &unk_2786D6E60;
    v9 = *(a1 + 32);
    v8 = v3;
    [v6 addBlock:v7];
  }
}

- (void)_updateServerMetadata:(void *)metadata controller:
{
  v51 = *MEMORY[0x277D85DE8];
  v31 = a2;
  metadataCopy = metadata;
  if (self)
  {
    selfCopy = self;
    operationQueue = [self operationQueue];
    [operationQueue assertCurrentQueue];

    v6 = [HAP2AccessoryServerMetadata alloc];
    deviceID = [v31 deviceID];
    hasPairings = [v31 hasPairings];
    protocolVersion = [v31 protocolVersion];
    name = [v31 name];
    model = [v31 model];
    category = [v31 category];
    stateNumber = [v31 stateNumber];
    LOWORD(operationQueue) = [v31 configNumber];
    setupHash = [v31 setupHash];
    WORD1(v28) = operationQueue;
    LOWORD(v28) = stateNumber;
    v15 = [(HAP2AccessoryServerMetadata *)v6 initWithDeviceID:deviceID hasPairings:hasPairings protocolVersion:protocolVersion name:name model:model category:category stateNumber:v28 configNumber:setupHash setupHash:?];

    v43 = 0;
    v44 = &v43;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__4322;
    v47 = __Block_byref_object_dispose__4323;
    v48 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__4322;
    v41 = __Block_byref_object_dispose__4323;
    v42 = 0;
    v16 = selfCopy[21];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __56__HAP2AccessoryServer__updateServerMetadata_controller___block_invoke;
    v32[3] = &unk_2786D50A0;
    v35 = &v37;
    v32[4] = selfCopy;
    v17 = v15;
    v33 = v17;
    v18 = metadataCopy;
    v34 = v18;
    v36 = &v43;
    [v16 performWritingBlock:v32];

    v19 = v44[5];
    v44[5] = 0;

    if (v18)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v20 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v50 = selfCopy;
        _os_log_impl(&dword_22AADC000, v20, OS_LOG_TYPE_INFO, "%@ Resetting controller on accessory server", buf, 0xCu);
      }
    }

    controller = [selfCopy controller];
    [controller handleUpdatedMetadataWithOldMetadata:v38[5]];

    delegate = [selfCopy delegate];
    LODWORD(controller) = [v38[5] hasPairings];
    if (controller != [(HAP2AccessoryServerMetadata *)v17 hasPairings]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate accessoryServerDidUpdateHasPairings:selfCopy];
    }

    name2 = [v38[5] name];
    name3 = [(HAP2AccessoryServerMetadata *)v17 name];
    v25 = name2 == name3;

    if (!v25 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate accessoryServerDidUpdateName:selfCopy];
    }

    category2 = [v38[5] category];
    if (category2 != [(HAP2AccessoryServerMetadata *)v17 category]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate accessoryServerDidUpdateCategory:selfCopy];
    }

    _Block_object_dispose(&v37, 8);
    _Block_object_dispose(&v43, 8);
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __56__HAP2AccessoryServer__updateServerMetadata_controller___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 32) + 64));
  objc_storeStrong((*(a1 + 32) + 64), *(a1 + 40));
  if (*(a1 + 48))
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), *(*(a1 + 32) + 48));
    objc_storeStrong((*(a1 + 32) + 48), *(a1 + 48));
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);

    [v3 setAccessoryServer:v2];
  }
}

- (void)_updateConnectionState:(void *)state withError:
{
  v30 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (self)
  {
    operationQueue = [self operationQueue];
    [operationQueue assertCurrentQueue];

    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = a2;
    delegate = [self delegate];
    v8 = self[21];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __56__HAP2AccessoryServer__updateConnectionState_withError___block_invoke;
    v19[3] = &unk_2786D5778;
    v19[5] = &v20;
    v19[6] = a2;
    v19[4] = self;
    [v8 performWritingBlock:v19];

    if (stateCopy && a2 <= 5 && ((1 << a2) & 0x31) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [delegate accessoryServerConnectionFailureReportWithError:stateCopy];
    }

    if (v21[3] != a2)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v21[3];
        v11 = v9;
        if (v10 > 5)
        {
          v12 = @"<unknown>";
        }

        else
        {
          v12 = off_2786D3560[v10];
        }

        v13 = v12;
        if (a2 > 5)
        {
          v14 = @"<unknown>";
        }

        else
        {
          v14 = off_2786D3560[a2];
        }

        v15 = v14;
        *buf = 138412802;
        selfCopy = self;
        v26 = 2112;
        v27 = v13;
        v28 = 2112;
        v29 = v15;
        _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_DEFAULT, "%@ Connection state changed: %@ -> %@", buf, 0x20u);
      }

      if (objc_opt_respondsToSelector())
      {
        [delegate accessoryServerDidUpdateConnectionState:self];
      }

      if (a2 == 3 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        [delegate accessoryServerConnectedWithSecureSession];
      }

      browser = [self browser];
      v17 = browser;
      if (browser)
      {
        [browser accessoryServerDidUpdateConnectionState:self];
      }
    }

    _Block_object_dispose(&v20, 8);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void *__56__HAP2AccessoryServer__updateConnectionState_withError___block_invoke(void *result)
{
  v1 = *(result[4] + 24);
  if (v1 != result[6])
  {
    *(*(result[5] + 8) + 24) = v1;
    *(result[4] + 24) = result[6];
  }

  return result;
}

- (void)setBackgroundScheduler:(uint64_t)scheduler
{
  if (scheduler)
  {
    objc_storeStrong((scheduler + 144), a2);
  }
}

- (void)_performBackgroundPollWithCompletion:(id)completion
{
  v9 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%@ Background reachability poll is running", &v7, 0xCu);
  }

  [(HAP2AccessoryServer *)self verifyConnection];
  completionCopy[2](completionCopy, 1);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)pollAccessory
{
  v10 = *MEMORY[0x277D85DE8];
  delegate = [(HAP2AccessoryServer *)self delegate];
  onDemandConnectionsAreEnabled = [delegate onDemandConnectionsAreEnabled];

  if (onDemandConnectionsAreEnabled)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v5 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%@ Ignoring poll requests only on demand connections are allowed", &v8, 0xCu);
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *MEMORY[0x277D85DE8];

    [(HAP2AccessoryServer *)self _pollAccessoryWithOptions:?];
  }
}

- (void)_pollAccessoryWithOptions:(void *)options
{
  v11 = *MEMORY[0x277D85DE8];
  if (options)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v4 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      optionsCopy = options;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%@ Scheduling a poll", buf, 0xCu);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__HAP2AccessoryServer_Paired___pollAccessoryWithOptions___block_invoke;
    v8[3] = &unk_2786D63C8;
    v8[4] = options;
    v8[5] = a2;
    v5 = MEMORY[0x231885210](v8);
    operationQueue = [options operationQueue];
    [operationQueue addBlock:v5];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __57__HAP2AccessoryServer_Paired___pollAccessoryWithOptions___block_invoke(uint64_t a1)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (!v1)
  {
    goto LABEL_21;
  }

  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) operationQueue];
  [v3 assertCurrentQueue];

  v4 = [(HAP2AccessoryServer *)v1 reachabilityProfile];
  v5 = [v4 pollCharacteristic];

  if (v5)
  {
    goto LABEL_3;
  }

  v19 = [v1 primaryAccessory];

  if (v19)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v41 = __Block_byref_object_copy__20997;
    v42 = __Block_byref_object_dispose__20998;
    v43 = 0;
    v20 = [v1 primaryAccessory];
    v21 = [v20 services];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __64__HAP2AccessoryServer_Paired___pollAccessoryOnQueueWithOptions___block_invoke;
    v39[3] = &unk_2786D63F0;
    v39[4] = buf;
    [v21 hmf_enumerateWithAutoreleasePoolUsingBlock:v39];

    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy__20997;
    v37 = __Block_byref_object_dispose__20998;
    v38 = 0;
    v22 = [*(*&buf[8] + 40) characteristics];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __64__HAP2AccessoryServer_Paired___pollAccessoryOnQueueWithOptions___block_invoke_2;
    v32[3] = &unk_2786D6208;
    v32[4] = &v33;
    [v22 hmf_enumerateWithAutoreleasePoolUsingBlock:v32];

    v5 = v34[5];
    _Block_object_dispose(&v33, 8);

    _Block_object_dispose(buf, 8);
    if (v5)
    {
LABEL_3:
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v6 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
      {
        v7 = v6;
        v8 = [v5 instanceID];
        *buf = 138412546;
        *&buf[4] = v1;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%@ polling characteristic=%@", buf, 0x16u);
      }

      v9 = MEMORY[0x277CCACA8];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = [v9 stringWithFormat:@"%@ Poll Accessory", v11];

      v13 = [objc_alloc(MEMORY[0x277D0F8B8]) initWithName:@"Poll Accessory" timeout:60.0];
      v33 = 0;
      if (v13)
      {
        v14 = objc_alloc(MEMORY[0x277D0F770]);
        v15 = [MEMORY[0x277CCAD78] UUID];
        v46[0] = v13;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
        v17 = [v14 initWithIdentifier:v15 name:v12 parent:0 assertions:v16];
        v18 = v33;
        v33 = v17;
      }

      else
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v24 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v1;
          _os_log_error_impl(&dword_22AADC000, v24, OS_LOG_TYPE_ERROR, "%@ Failed to create power assertion", buf, 0xCu);
        }

        v25 = objc_alloc(MEMORY[0x277D0F770]);
        v15 = [MEMORY[0x277CCAD78] UUID];
        v26 = [v25 initWithIdentifier:v15 name:v12 parent:0 options:0];
        v16 = v33;
        v33 = v26;
      }

      v45 = v5;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __64__HAP2AccessoryServer_Paired___pollAccessoryOnQueueWithOptions___block_invoke_267;
      v41 = &unk_2786D6420;
      v42 = v33;
      v43 = v1;
      v44 = sel__pollAccessoryOnQueueWithOptions_;
      v28 = [(HAP2AccessoryServer *)v1 _readValuesForCharacteristics:v27 timeout:v2 options:v42 activity:buf completion:0.0];

      __HMFActivityScopeLeave();
      goto LABEL_21;
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v23 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v1;
      _os_log_error_impl(&dword_22AADC000, v23, OS_LOG_TYPE_ERROR, "%@ Failed to find polling characteristic", buf, 0xCu);
    }
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v30 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = v1;
      _os_log_impl(&dword_22AADC000, v30, OS_LOG_TYPE_INFO, "%@ Polling without a primary accessory, updating accessories", buf, 0xCu);
    }

    v31 = [v1 updateAccessoriesWithReason:@"noAttributeDatabase"];
  }

LABEL_21:
  v29 = *MEMORY[0x277D85DE8];
}

void __64__HAP2AccessoryServer_Paired___pollAccessoryOnQueueWithOptions___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 type];
  v8 = [v7 isEqualToString:@"0000003E-0000-1000-8000-0026BB765291"];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __64__HAP2AccessoryServer_Paired___pollAccessoryOnQueueWithOptions___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 type];
  v8 = [v7 isEqualToString:@"00000052-0000-1000-8000-0026BB765291"];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __64__HAP2AccessoryServer_Paired___pollAccessoryOnQueueWithOptions___block_invoke_267(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) begin];
  v22 = *(a1 + 32);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    v7 = [v8 error];
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v9 = hap2Log_accessory;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 40);
    v16 = NSStringFromSelector(*(a1 + 48));
    v17 = [*(a1 + 40) primaryAccessory];
    v18 = [v17 identifier];
    *buf = 138413058;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    v27 = 2112;
    v28 = v18;
    v29 = 2112;
    v30 = v7;
    _os_log_debug_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%@ %@: completed id=%@, error=%@", buf, 0x2Au);
  }

  if (v7)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __64__HAP2AccessoryServer_Paired___pollAccessoryOnQueueWithOptions___block_invoke_268;
    v20[3] = &unk_2786D7050;
    v20[4] = *(a1 + 40);
    v21 = v7;
    v10 = MEMORY[0x231885210](v20);
    v11 = [*(a1 + 40) operationQueue];
    [v11 addBlock:v10];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __64__HAP2AccessoryServer_Paired___pollAccessoryOnQueueWithOptions___block_invoke_2_272;
  v19[3] = &unk_2786D6CA0;
  v19[4] = *(a1 + 40);
  v12 = MEMORY[0x231885210](v19);
  v13 = [*(a1 + 40) operationQueue];
  [v13 addBlock:v12];

  [*(a1 + 32) invalidate];
  __HMFActivityScopeLeave();

  v14 = *MEMORY[0x277D85DE8];
}

- (id)_readValuesForCharacteristics:(uint64_t)characteristics timeout:(void *)timeout options:(void *)options activity:(double)activity completion:
{
  v42 = *MEMORY[0x277D85DE8];
  v11 = a2;
  timeoutCopy = timeout;
  optionsCopy = options;
  if (self)
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v14 stringWithFormat:@"%@ Read", v16];

    v38 = 0;
    if (timeoutCopy)
    {
      v18 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v17 parent:timeoutCopy options:0];
      v19 = v38;
      v38 = v18;
    }

    else
    {
      v20 = [objc_alloc(MEMORY[0x277D0F8B8]) initWithName:@"Read" timeout:60.0];
      if (v20)
      {
        v21 = objc_alloc(MEMORY[0x277D0F770]);
        uUID = [MEMORY[0x277CCAD78] UUID];
        v39 = v20;
        v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
        v24 = [v21 initWithIdentifier:uUID name:v17 parent:0 assertions:v23];
        v25 = v38;
        v38 = v24;
      }

      else
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v26 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy = self;
          _os_log_error_impl(&dword_22AADC000, v26, OS_LOG_TYPE_ERROR, "%@ Failed to create power assertion", buf, 0xCu);
        }

        v27 = objc_alloc(MEMORY[0x277D0F770]);
        uUID = [MEMORY[0x277CCAD78] UUID];
        v28 = [v27 initWithIdentifier:uUID name:v17 parent:0 options:0];
        v23 = v38;
        v38 = v28;
      }

      v18 = v38;
    }

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __97__HAP2AccessoryServer_Paired___readValuesForCharacteristics_timeout_options_activity_completion___block_invoke;
    v31[3] = &unk_2786D6260;
    v32 = v18;
    selfCopy2 = self;
    v35 = optionsCopy;
    v34 = v11;
    activityCopy = activity;
    characteristicsCopy = characteristics;
    self = [(HAP2AccessoryServer *)self _delegateCancelableFor:v31];

    __HMFActivityScopeLeave();
  }

  v29 = *MEMORY[0x277D85DE8];

  return self;
}

id __97__HAP2AccessoryServer_Paired___readValuesForCharacteristics_timeout_options_activity_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) begin];
  v36 = *(a1 + 32);
  if ([*(a1 + 40) isPaired])
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__20997;
    v31 = __Block_byref_object_dispose__20998;
    v32 = 0;
    v2 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(*(a1 + 48), "count")}];
    v3 = *(a1 + 48);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __97__HAP2AccessoryServer_Paired___readValuesForCharacteristics_timeout_options_activity_completion___block_invoke_3;
    v23[3] = &unk_2786D6238;
    v4 = v2;
    v5 = *(a1 + 40);
    v24 = v4;
    v25 = v5;
    v26 = &v27;
    [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:v23];
    if (v28[5])
    {
      v6 = [*(a1 + 40) operationQueue];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __97__HAP2AccessoryServer_Paired___readValuesForCharacteristics_timeout_options_activity_completion___block_invoke_239;
      v19[3] = &unk_2786D61A0;
      v21 = *(a1 + 56);
      v22 = &v27;
      v20 = *(a1 + 32);
      [v6 addBlock:v19];

      v7 = +[HAP2Cancelable ignore];

      v8 = v21;
    }

    else
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __97__HAP2AccessoryServer_Paired___readValuesForCharacteristics_timeout_options_activity_completion___block_invoke_2_240;
      v16[3] = &unk_2786D6010;
      v15 = *(a1 + 32);
      v11 = v15.i64[0];
      v17 = vextq_s8(v15, v15, 8uLL);
      v18 = *(a1 + 56);
      v12 = MEMORY[0x231885210](v16);
      v13 = [*(a1 + 40) controller];
      v7 = [v13 readValuesForCharacteristics:*(a1 + 48) timeout:*(a1 + 72) options:v12 completion:*(a1 + 64)];

      v8 = v17.i64[1];
    }

    _Block_object_dispose(&v27, 8);
    v10 = v32;
  }

  else
  {
    v9 = [*(a1 + 40) operationQueue];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __97__HAP2AccessoryServer_Paired___readValuesForCharacteristics_timeout_options_activity_completion___block_invoke_2;
    v33[3] = &unk_2786D65D8;
    v35 = *(a1 + 56);
    v34 = *(a1 + 32);
    [v9 addBlock:v33];

    v7 = +[HAP2Cancelable ignore];

    v10 = v35;
  }

  __HMFActivityScopeLeave();

  return v7;
}

void __97__HAP2AccessoryServer_Paired___readValuesForCharacteristics_timeout_options_activity_completion___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Cannot read characteristics on unpaired accessory server" reason:@"HAP2AccessoryServer.isPaired is false during _readValuesForCharacteristics" suggestion:0 underlyingError:0 marker:205];
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void __97__HAP2AccessoryServer_Paired___readValuesForCharacteristics_timeout_options_activity_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if ([*(a1 + 32) containsObject:v6])
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v7 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      v13 = 138412546;
      v14 = v12;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%@ Denying request to read the same characteristic twice: %@", &v13, 0x16u);
    }

    v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:9];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }

  else
  {
    [*(a1 + 32) addObject:v6];
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __97__HAP2AccessoryServer_Paired___readValuesForCharacteristics_timeout_options_activity_completion___block_invoke_239(void *a1)
{
  v2 = *(*(a1[6] + 8) + 40);
  (*(a1[5] + 16))();
  v3 = a1[4];

  return [v3 invalidate];
}

void __97__HAP2AccessoryServer_Paired___readValuesForCharacteristics_timeout_options_activity_completion___block_invoke_2_240(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __97__HAP2AccessoryServer_Paired___readValuesForCharacteristics_timeout_options_activity_completion___block_invoke_3_241;
  v15 = &unk_2786D6A08;
  v7 = a1[5];
  v16 = a1[4];
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v8 = v6;
  v9 = v5;
  v10 = MEMORY[0x231885210](&v12);
  v11 = [a1[4] operationQueue];
  [v11 addBlock:v10];

  (*(a1[6] + 16))();
}

uint64_t __97__HAP2AccessoryServer_Paired___readValuesForCharacteristics_timeout_options_activity_completion___block_invoke_3_241(uint64_t a1)
{
  [(HAP2AccessoryServer *)*(a1 + 32) _kickReachabilityAfterCharacteristicOperation:*(a1 + 40) withResponse:1 ignoreCachedCharacteristics:*(a1 + 48) error:?];
  v2 = *(a1 + 56);

  return [v2 invalidate];
}

- (void)_kickReachabilityAfterCharacteristicOperation:(void *)operation withResponse:(char)response ignoreCachedCharacteristics:(void *)characteristics error:
{
  v9 = a2;
  operationCopy = operation;
  characteristicsCopy = characteristics;
  if (self)
  {
    operationQueue = [self operationQueue];
    [operationQueue assertCurrentQueue];

    if (!characteristicsCopy)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __124__HAP2AccessoryServer_Paired___kickReachabilityAfterCharacteristicOperation_withResponse_ignoreCachedCharacteristics_error___block_invoke;
      v14[3] = &unk_2786D6448;
      responseCopy = response;
      v14[4] = self;
      if ([operationCopy indexOfObjectPassingTest:v14] != 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([self connectionState] != 3)
        {
          [self setReachabilityChangedReason:v9];
          [(HAP2AccessoryServer *)self _updateConnectionState:0 withError:?];
        }

        reachability = [(HAP2AccessoryServer *)self reachability];
        [reachability kick];
      }
    }
  }
}

BOOL __124__HAP2AccessoryServer_Paired___kickReachabilityAfterCharacteristicOperation_withResponse_ignoreCachedCharacteristics_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40) != 1)
  {
    goto LABEL_6;
  }

  v5 = [v3 characteristic];
  if (([v5 hap2_canUseCachedValue] & 1) == 0)
  {

    goto LABEL_6;
  }

  v6 = [(HAP2AccessoryServer *)*(a1 + 32) reachability];
  v7 = [v6 isRunning];

  if ((v7 & 1) == 0)
  {
LABEL_6:
    v9 = [v4 error];
    v8 = v9 == 0;

    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:

  return v8;
}

void __64__HAP2AccessoryServer_Paired___pollAccessoryOnQueueWithOptions___block_invoke_268(uint64_t a1)
{
  [*(a1 + 32) setReachabilityChangedReason:@"Ping"];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  [(HAP2AccessoryServer *)v2 _handleAccessoryOperationError:v3];
}

void __64__HAP2AccessoryServer_Paired___pollAccessoryOnQueueWithOptions___block_invoke_2_272(uint64_t a1)
{
  v1 = [(HAP2AccessoryServer *)*(a1 + 32) reachability];
  [v1 kick];
}

- (void)_handleAccessoryOperationError:(void *)error
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (error)
  {
    operationQueue = [error operationQueue];
    [operationQueue assertCurrentQueue];

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v5 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = NSStringFromSelector(sel__handleAccessoryOperationError_);
      v13 = 138412546;
      errorCopy = error;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "%@ %@", &v13, 0x16u);
    }

    domain = [v3 domain];
    v9 = [domain isEqualToString:@"HAPErrorDomain"];

    if (v9 && [v3 code] == 17)
    {
      v10 = 4;
LABEL_15:
      [(HAP2AccessoryServer *)error _updateConnectionState:v10 withError:v3];
      goto LABEL_16;
    }

    connectionState = [error connectionState];
    if (connectionState)
    {
      if (connectionState == 5)
      {
        if ([error hasDiscoveryAdvertisement])
        {
          v10 = 5;
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 5;
      }

      goto LABEL_15;
    }
  }

LABEL_16:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)verifyConnection
{
  v10 = *MEMORY[0x277D85DE8];
  delegate = [(HAP2AccessoryServer *)self delegate];
  onDemandConnectionsAreEnabled = [delegate onDemandConnectionsAreEnabled];

  if (onDemandConnectionsAreEnabled)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v5 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%@ Ignoring poll requests only on demand connections are allowed", &v8, 0xCu);
    }

    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = *MEMORY[0x277D85DE8];

    [(HAP2AccessoryServer *)self _pollAccessoryWithOptions:?];
  }
}

- (void)closeSession
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__HAP2AccessoryServer_Paired__closeSession__block_invoke;
  v5[3] = &unk_2786D6CA0;
  v5[4] = self;
  v3 = MEMORY[0x231885210](v5, a2);
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  [operationQueue addBlock:v3];
}

void __43__HAP2AccessoryServer_Paired__closeSession__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) controller];
  [v2 closeSession];

  if ([*(a1 + 32) connectionState] == 2 || objc_msgSend(*(a1 + 32), "connectionState") == 3)
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CCA9B8] errorWithHMErrorCode:3202];
    [(HAP2AccessoryServer *)v3 _updateConnectionState:v4 withError:?];
  }
}

- (void)handleNetworkChanged
{
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__HAP2AccessoryServer_Paired__handleNetworkChanged__block_invoke;
  v4[3] = &unk_2786D6FC8;
  objc_copyWeak(&v5, &location);
  [operationQueue addBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __51__HAP2AccessoryServer_Paired__handleNetworkChanged__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = [v2 onDemandConnectionsAreEnabled];

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v4 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [WeakRetained connectionState];
    if (v6 > 5)
    {
      v7 = @"<unknown>";
    }

    else
    {
      v7 = off_2786D3560[v6];
    }

    v8 = v7;
    v10 = 138412802;
    v11 = WeakRetained;
    v12 = 1024;
    v13 = v3;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%@ event=networkchanged onDemand=%i connectionState=%@", &v10, 0x1Cu);
  }

  if ((v3 & 1) != 0 || ([WeakRetained connectionState] - 2) <= 3)
  {
    [(HAP2AccessoryServer *)WeakRetained updateReachability];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateReachability
{
  v20 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    goto LABEL_16;
  }

  delegate = [self delegate];
  onDemandConnectionsAreEnabled = [delegate onDemandConnectionsAreEnabled];

  if (onDemandConnectionsAreEnabled)
  {
    if ([self hasDiscoveryAdvertisement])
    {
      if ([self connectionState] == 5)
      {
        v4 = *MEMORY[0x277D85DE8];

        [(HAP2AccessoryServer *)self _updateConnectionState:0 withError:?];
        return;
      }

      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v6 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v8 = v6;
        if ([self hasDiscoveryAdvertisement])
        {
          v9 = @"Found";
        }

        else
        {
          v9 = @"Lost";
        }

        connectionState = [self connectionState];
        if (connectionState > 5)
        {
          v11 = @"<unknown>";
        }

        else
        {
          v11 = off_2786D3560[connectionState];
        }

        v12 = v11;
        *buf = 138412802;
        selfCopy = self;
        v16 = 2112;
        v17 = v9;
        v18 = 2112;
        v19 = v12;
        _os_log_error_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%@ Ignoring %@ Bonjour advertisement in %@", buf, 0x20u);
      }

LABEL_16:
      v7 = *MEMORY[0x277D85DE8];
      return;
    }

    reachability = [MEMORY[0x277CCA9B8] hapHMErrorWithCode:4 description:@"No advertisement" reason:@"On demand connections are enabled and the accessory is marked as reachable but lacks an advertisement" suggestion:0 underlyingError:0 marker:1900];
    [(HAP2AccessoryServer *)self _updateConnectionState:reachability withError:?];
  }

  else
  {
    reachability = [(HAP2AccessoryServer *)self reachability];
    [reachability confirm];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)handleLostDiscoveryAdvertisementWithWillSleep:(BOOL)sleep
{
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__HAP2AccessoryServer_Paired__handleLostDiscoveryAdvertisementWithWillSleep___block_invoke;
  v6[3] = &unk_2786D60D8;
  objc_copyWeak(&v7, &location);
  sleepCopy = sleep;
  [operationQueue addBlock:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __77__HAP2AccessoryServer_Paired__handleLostDiscoveryAdvertisementWithWillSleep___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHasDiscoveryAdvertisement:0];
  v3 = *(a1 + 40);
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v4 = hap2Log_accessory;
  v5 = os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v6 = v4;
      v7 = [WeakRetained connectionState];
      if (v7 > 5)
      {
        v8 = @"<unknown>";
      }

      else
      {
        v8 = off_2786D3560[v7];
      }

      v12 = v8;
      v16 = 138412546;
      v17 = WeakRetained;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%@ Ignoring lost advertisement while going to sleep in connectionState: %@", &v16, 0x16u);

      goto LABEL_18;
    }
  }

  else
  {
    if (v5)
    {
      v9 = v4;
      v10 = [WeakRetained connectionState];
      if (v10 > 5)
      {
        v11 = @"<unknown>";
      }

      else
      {
        v11 = off_2786D3560[v10];
      }

      v13 = v11;
      v16 = 138412546;
      v17 = WeakRetained;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%@ Handling lost discovery advertisement in connectionState: %@", &v16, 0x16u);
    }

    v14 = [WeakRetained connectionState];
    if ((v14 - 3) >= 3)
    {
      if (v14 == 1)
      {
        v6 = [MEMORY[0x277CCA9B8] hapHMErrorWithCode:4 description:@"lost discovery advertisement" reason:@"Lost discovery advertisement while accessory was reporting reachable" suggestion:0 underlyingError:0 marker:1901];
        [(HAP2AccessoryServer *)WeakRetained _updateConnectionState:v6 withError:?];
LABEL_18:
      }
    }

    else
    {
      [(HAP2AccessoryServer *)WeakRetained updateReachability];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)handleReestablishedSession
{
  v13 = *MEMORY[0x277D85DE8];
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  [operationQueue assertCurrentQueue];

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v4 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v11 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%@ We've re-established our session", &v11, 0xCu);
  }

  [(HAP2AccessoryServer *)&self->super.super.isa _updateConnectionState:0 withError:?];
  mEMORY[0x277D0F8C0] = [MEMORY[0x277D0F8C0] sharedPowerLogger];
  deviceID = [(HAP2AccessoryServer *)self deviceID];
  deviceIDString = [deviceID deviceIDString];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HAP2AccessoryServer category](self, "category")}];
  [mEMORY[0x277D0F8C0] reportConnection:deviceIDString linkType:1 accessoryCategory:v8];

  pairedDelegate = [(HAP2AccessoryServer *)self pairedDelegate];
  if (objc_opt_respondsToSelector())
  {
    [pairedDelegate accessoryServerDidUpdateAccessories:self];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)pairedDelegate
{
  selfCopy = self;
  if (self)
  {
    delegate = [self delegate];
    if (delegate)
    {
      delegate2 = [selfCopy delegate];
      if ([delegate2 conformsToProtocol:&unk_283EC33B8])
      {
        selfCopy = [selfCopy delegate];
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)handleUpdatedCharacteristicValues:(id)values
{
  v19 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  if ([valuesCopy count])
  {
    v5 = [valuesCopy objectAtIndexedSubscript:0];
    instanceID = [v5 instanceID];

    v7 = [(HAP2AccessoryServer *)&self->super.super.isa _findAccessoryAndCharacteristicForInstanceID:instanceID characteristic:0];
    v8 = v7;
    if (v7)
    {
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __65__HAP2AccessoryServer_Paired__handleUpdatedCharacteristicValues___block_invoke;
      v13[3] = &unk_2786D60B0;
      v14 = v7;
      [valuesCopy hmf_enumerateWithAutoreleasePoolUsingBlock:v13];
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v11 = v9;
        v12 = [valuesCopy objectAtIndexedSubscript:0];
        *buf = 138412546;
        selfCopy = self;
        v17 = 2112;
        v18 = v12;
        _os_log_error_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%@ Ignoring update for characteristic that we cannot find: %@", buf, 0x16u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_findAccessoryAndCharacteristicForInstanceID:(void *)d characteristic:
{
  v5 = a2;
  if (self)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__20997;
    v23 = __Block_byref_object_dispose__20998;
    v24 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__20997;
    v17 = __Block_byref_object_dispose__20998;
    v18 = 0;
    privateAccessories = [(HAP2AccessoryServer *)self privateAccessories];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __91__HAP2AccessoryServer_Paired___findAccessoryAndCharacteristicForInstanceID_characteristic___block_invoke;
    v9[3] = &unk_2786D62D8;
    v10 = v5;
    v11 = &v19;
    v12 = &v13;
    [privateAccessories hmf_enumerateWithAutoreleasePoolUsingBlock:v9];

    if (d)
    {
      *d = v14[5];
    }

    v7 = v20[5];

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __91__HAP2AccessoryServer_Paired___findAccessoryAndCharacteristicForInstanceID_characteristic___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 services];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __91__HAP2AccessoryServer_Paired___findAccessoryAndCharacteristicForInstanceID_characteristic___block_invoke_2;
  v12[3] = &unk_2786D62B0;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v8;
  v15 = v9;
  v10 = v6;
  v11 = *(a1 + 48);
  v14 = v10;
  v16 = v11;
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:v12];

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    *a4 = 1;
  }
}

void __91__HAP2AccessoryServer_Paired___findAccessoryAndCharacteristicForInstanceID_characteristic___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 characteristics];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__HAP2AccessoryServer_Paired___findAccessoryAndCharacteristicForInstanceID_characteristic___block_invoke_3;
  v9[3] = &unk_2786D6288;
  v10 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = v8;
  v11 = v8;
  v12 = *(a1 + 56);
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    *a4 = 1;
  }
}

void __91__HAP2AccessoryServer_Paired___findAccessoryAndCharacteristicForInstanceID_characteristic___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 instanceID];
  v8 = [v7 isEqualToNumber:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 40));
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)handleEvents:(id)events
{
  eventsCopy = events;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __44__HAP2AccessoryServer_Paired__handleEvents___block_invoke;
  v11 = &unk_2786D7050;
  selfCopy = self;
  v13 = eventsCopy;
  v5 = eventsCopy;
  v6 = MEMORY[0x231885210](&v8);
  v7 = [(HAP2AccessoryServer *)self operationQueue:v8];
  [v7 addBlock:v6];
}

void __44__HAP2AccessoryServer_Paired__handleEvents___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v3 = [v1 operationQueue];
    [v3 assertCurrentQueue];

    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v4 = [MEMORY[0x277D0F8C0] sharedPowerLogger];
    v5 = [v1 deviceID];
    v6 = [v5 deviceIDString];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v1, "category")}];
    [v4 reportIncomingIPEvent:v6 accessoryCategory:v7];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__HAP2AccessoryServer_Paired___handleEvents___block_invoke;
    v9[3] = &unk_2786D6300;
    v9[4] = v1;
    v9[5] = &v10;
    [v2 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];
    if (*(v11 + 24) == 1)
    {
      v8 = [(HAP2AccessoryServer *)v1 reachability];
      [v8 kick];
    }

    _Block_object_dispose(&v10, 8);
  }
}

void __45__HAP2AccessoryServer_Paired___handleEvents___block_invoke(uint64_t a1, void *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 instanceID];
  v5 = *(a1 + 32);
  v41 = 0;
  v6 = [(HAP2AccessoryServer *)v5 _findAccessoryAndCharacteristicForInstanceID:v4 characteristic:&v41];
  v7 = v41;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v10 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138412546;
      v43 = v11;
      v44 = 2112;
      v45 = v4;
      v12 = "%@ Ignoring event for characteristic %@ that doesn't match any we know about";
LABEL_21:
      _os_log_error_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);
    }
  }

  else
  {
    v13 = [v7 metadata];
    v14 = [v13 format];
    v15 = HAPCharacteristicFormatFromString(v14);

    if (v15)
    {
      v16 = [*(a1 + 32) controller];
      v17 = [v16 encoding];
      v18 = [v3 encodedValueData];
      v40 = 0;
      v19 = [v17 decodeBodyData:v18 format:v15 error:&v40];
      v20 = v40;

      if (v19)
      {
        v21 = [v8 service];
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v22 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(a1 + 32);
          log = v22;
          v32 = [v6 instanceID];
          v37 = [v21 type];
          v33 = [HAPCharacteristic hap2_shortTypeFromUUID:v37];
          [v21 instanceID];
          v38 = v20;
          v23 = v39 = v19;
          v35 = [v8 type];
          v31 = [HAPCharacteristic hap2_shortTypeFromUUID:v35];
          v24 = [v8 instanceID];
          v25 = [v3 encodedContextData];
          *buf = 138414083;
          v43 = v34;
          v44 = 2048;
          v45 = v32;
          v46 = 2112;
          v47 = v33;
          v48 = 2112;
          v49 = v23;
          v50 = 2112;
          v51 = v31;
          v52 = 2112;
          v53 = v24;
          v54 = 2113;
          v55 = v39;
          v56 = 2112;
          v57 = v25;
          _os_log_impl(&dword_22AADC000, log, OS_LOG_TYPE_DEFAULT, "%@ Received event for accessory %lu, service %@ [%@], characteristic %@ [%@] -> %{private}@ notificationContext %@", buf, 0x52u);

          v19 = v39;
          v20 = v38;
        }

        [v8 setValue:v19];
        v26 = [v3 encodedContextData];
        [v8 setNotificationContext:v26];

        *(*(*(a1 + 40) + 8) + 24) = 1;
        [v6 characteristicValueChanged:v8];
      }

      else
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v28 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          v30 = *(a1 + 32);
          *buf = 138412802;
          v43 = v30;
          v44 = 2112;
          v45 = v4;
          v46 = 2112;
          v47 = v20;
          _os_log_error_impl(&dword_22AADC000, v28, OS_LOG_TYPE_ERROR, "%@ Ignoring event for characteristic %@ because value failed to parse: %@", buf, 0x20u);
        }
      }

      goto LABEL_27;
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v10 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 32);
      *buf = 138412546;
      v43 = v27;
      v44 = 2112;
      v45 = v4;
      v12 = "%@ Ignoring event for characteristic %@ that doesn't have metadata we can act on";
      goto LABEL_21;
    }
  }

LABEL_27:

  v29 = *MEMORY[0x277D85DE8];
}

- (id)disableNotificationsForCharacteristics:(id)characteristics completion:(id)completion
{
  characteristicsCopy = characteristics;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__HAP2AccessoryServer_Paired__disableNotificationsForCharacteristics_completion___block_invoke;
  v12[3] = &unk_2786D6088;
  v13 = characteristicsCopy;
  v14 = completionCopy;
  v12[4] = self;
  v8 = characteristicsCopy;
  v9 = completionCopy;
  v10 = [(HAP2AccessoryServer *)self _delegateCancelableFor:v12];

  return v10;
}

id __81__HAP2AccessoryServer_Paired__disableNotificationsForCharacteristics_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isPaired])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __81__HAP2AccessoryServer_Paired__disableNotificationsForCharacteristics_completion___block_invoke_3;
    v8[3] = &unk_2786D6060;
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    v2 = MEMORY[0x231885210](v8);
    v3 = [*(a1 + 32) controller];
    v4 = [v3 disableNotificationsForCharacteristics:*(a1 + 40) options:0 completion:v2];

    v5 = v9;
  }

  else
  {
    v6 = [*(a1 + 32) operationQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __81__HAP2AccessoryServer_Paired__disableNotificationsForCharacteristics_completion___block_invoke_2;
    v10[3] = &unk_2786D6490;
    v11 = *(a1 + 48);
    [v6 addBlock:v10];

    v4 = +[HAP2Cancelable ignore];
    v5 = v11;
  }

  return v4;
}

void __81__HAP2AccessoryServer_Paired__disableNotificationsForCharacteristics_completion___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Cannot disable notifications on unpaired accessory server" reason:@"HAP2AccessoryServer.isPaired is false during disableNotificationsForCharacteristics" suggestion:0 underlyingError:0 marker:204];
  (*(*(a1 + 32) + 16))();
}

void __81__HAP2AccessoryServer_Paired__disableNotificationsForCharacteristics_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__HAP2AccessoryServer_Paired__disableNotificationsForCharacteristics_completion___block_invoke_4;
  v11[3] = &unk_2786D7078;
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  v9 = MEMORY[0x231885210](v11);
  v10 = [*(a1 + 32) operationQueue];
  [v10 addBlock:v9];

  (*(*(a1 + 40) + 16))();
}

- (id)enableNotificationsForCharacteristics:(id)characteristics completion:(id)completion
{
  characteristicsCopy = characteristics;
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__HAP2AccessoryServer_Paired__enableNotificationsForCharacteristics_completion___block_invoke;
  v12[3] = &unk_2786D6088;
  v13 = characteristicsCopy;
  v14 = completionCopy;
  v12[4] = self;
  v8 = characteristicsCopy;
  v9 = completionCopy;
  v10 = [(HAP2AccessoryServer *)self _delegateCancelableFor:v12];

  return v10;
}

id __80__HAP2AccessoryServer_Paired__enableNotificationsForCharacteristics_completion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isPaired])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __80__HAP2AccessoryServer_Paired__enableNotificationsForCharacteristics_completion___block_invoke_3;
    v8[3] = &unk_2786D6060;
    v8[4] = *(a1 + 32);
    v9 = *(a1 + 48);
    v2 = MEMORY[0x231885210](v8);
    v3 = [*(a1 + 32) controller];
    v4 = [v3 enableNotificationsForCharacteristics:*(a1 + 40) options:0 completion:v2];

    v5 = v9;
  }

  else
  {
    v6 = [*(a1 + 32) operationQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __80__HAP2AccessoryServer_Paired__enableNotificationsForCharacteristics_completion___block_invoke_2;
    v10[3] = &unk_2786D6490;
    v11 = *(a1 + 48);
    [v6 addBlock:v10];

    v4 = +[HAP2Cancelable ignore];
    v5 = v11;
  }

  return v4;
}

void __80__HAP2AccessoryServer_Paired__enableNotificationsForCharacteristics_completion___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Cannot enable notifications on unpaired accessory server" reason:@"HAP2AccessoryServer.isPaired is false during enableNotificationsForCharacteristics" suggestion:0 underlyingError:0 marker:203];
  (*(*(a1 + 32) + 16))();
}

void __80__HAP2AccessoryServer_Paired__enableNotificationsForCharacteristics_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __80__HAP2AccessoryServer_Paired__enableNotificationsForCharacteristics_completion___block_invoke_4;
  v11[3] = &unk_2786D7078;
  v11[4] = *(a1 + 32);
  v12 = v5;
  v13 = v6;
  v7 = v6;
  v8 = v5;
  v9 = MEMORY[0x231885210](v11);
  v10 = [*(a1 + 32) operationQueue];
  [v10 addBlock:v9];

  (*(*(a1 + 40) + 16))();
}

- (id)writeValuesForCharacteristics:(id)characteristics timeout:(double)timeout completion:(id)completion
{
  characteristicsCopy = characteristics;
  completionCopy = completion;
  v10 = MEMORY[0x277CCACA8];
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [v10 stringWithFormat:@"%@ Write", v12];

  v24 = [objc_alloc(MEMORY[0x277D0F770]) initWithName:v13];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__HAP2AccessoryServer_Paired__writeValuesForCharacteristics_timeout_completion___block_invoke;
  v18[3] = &unk_2786D6038;
  v19 = v24;
  selfCopy = self;
  v14 = completionCopy;
  v22 = v14;
  v15 = characteristicsCopy;
  v21 = v15;
  timeoutCopy = timeout;
  v16 = [(HAP2AccessoryServer *)self _delegateCancelableFor:v18];

  __HMFActivityScopeLeave();

  return v16;
}

id __80__HAP2AccessoryServer_Paired__writeValuesForCharacteristics_timeout_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) begin];
  v16 = *(a1 + 32);
  if ([*(a1 + 40) isPaired])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __80__HAP2AccessoryServer_Paired__writeValuesForCharacteristics_timeout_completion___block_invoke_3;
    v10[3] = &unk_2786D6010;
    v9 = *(a1 + 32);
    v2 = v9.i64[0];
    v11 = vextq_s8(v9, v9, 8uLL);
    v12 = *(a1 + 56);
    v3 = MEMORY[0x231885210](v10);
    v4 = [*(a1 + 40) controller];
    v5 = [v4 writeValuesForCharacteristics:*(a1 + 48) timeout:0 options:v3 completion:*(a1 + 64)];

    v6 = v11.i64[1];
  }

  else
  {
    v7 = [*(a1 + 40) operationQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __80__HAP2AccessoryServer_Paired__writeValuesForCharacteristics_timeout_completion___block_invoke_2;
    v13[3] = &unk_2786D65D8;
    v15 = *(a1 + 56);
    v14 = *(a1 + 32);
    [v7 addBlock:v13];

    v5 = +[HAP2Cancelable ignore];

    v6 = v15;
  }

  __HMFActivityScopeLeave();

  return v5;
}

void __80__HAP2AccessoryServer_Paired__writeValuesForCharacteristics_timeout_completion___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:3 description:@"Cannot write characteristics on unpaired accessory server" reason:@"HAP2AccessoryServer.isPaired is false during writeValuesForCharacteristics" suggestion:0 underlyingError:0 marker:202];
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

void __80__HAP2AccessoryServer_Paired__writeValuesForCharacteristics_timeout_completion___block_invoke_3(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __80__HAP2AccessoryServer_Paired__writeValuesForCharacteristics_timeout_completion___block_invoke_4;
  v15 = &unk_2786D6A08;
  v7 = a1[5];
  v16 = a1[4];
  v17 = v5;
  v18 = v6;
  v19 = v7;
  v8 = v6;
  v9 = v5;
  v10 = MEMORY[0x231885210](&v12);
  v11 = [a1[4] operationQueue];
  [v11 addBlock:v10];

  (*(a1[6] + 16))();
}

uint64_t __80__HAP2AccessoryServer_Paired__writeValuesForCharacteristics_timeout_completion___block_invoke_4(uint64_t a1)
{
  [(HAP2AccessoryServer *)*(a1 + 32) _kickReachabilityAfterCharacteristicOperation:*(a1 + 40) withResponse:0 ignoreCachedCharacteristics:*(a1 + 48) error:?];
  v2 = *(a1 + 56);

  return [v2 invalidate];
}

- (void)mergeWithNewlyDiscoveredPairedAccessoryServer:(id)server
{
  serverCopy = server;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HAP2AccessoryServer_Paired__mergeWithNewlyDiscoveredPairedAccessoryServer___block_invoke;
  v7[3] = &unk_2786D6EB0;
  objc_copyWeak(&v9, &location);
  v6 = serverCopy;
  v8 = v6;
  [operationQueue addBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __77__HAP2AccessoryServer_Paired__mergeWithNewlyDiscoveredPairedAccessoryServer___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained hasDiscoveryAdvertisement];
  [WeakRetained setHasDiscoveryAdvertisement:1];
  if ((v3 & 1) == 0 && [WeakRetained connectionState] == 5)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v4 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = WeakRetained;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%@ New advertisement while unreachable", &v18, 0xCu);
    }

    [(HAP2AccessoryServer *)WeakRetained updateReachability];
  }

  v5 = [WeakRetained protocolVersion];
  v6 = [*(a1 + 32) protocolVersion];
  v7 = [v5 isEqualToVersion:v6];

  if (v7)
  {
    goto LABEL_14;
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v8 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [WeakRetained protocolVersion];
    v11 = [*(a1 + 32) protocolVersion];
    v18 = 138412802;
    v19 = WeakRetained;
    v20 = 2112;
    v21 = v10;
    v22 = 2112;
    v23 = v11;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%@ Accessory protocol version changed (%@ -> %@)", &v18, 0x20u);
  }

  v12 = [*(a1 + 32) controller];
  if (!v12)
  {
LABEL_14:
    v13 = [WeakRetained controller];
    v14 = [*(a1 + 32) controller];
    v15 = [v13 mergeWithNewController:v14];

    if (v15)
    {
      v12 = 0;
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v16 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = WeakRetained;
        _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_INFO, "%@ Controller requested that we replace our current controller", &v18, 0xCu);
      }

      v12 = [*(a1 + 32) controller];
    }
  }

  [(HAP2AccessoryServer *)WeakRetained _updateServerMetadata:v12 controller:?];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)becomeUnpairedWithAccessoryServer:(id)server
{
  v18 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%@ Accessory becoming unpaired", buf, 0xCu);
  }

  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __65__HAP2AccessoryServer_Paired__becomeUnpairedWithAccessoryServer___block_invoke;
  v13 = &unk_2786D7050;
  selfCopy2 = self;
  v15 = serverCopy;
  v6 = serverCopy;
  v7 = MEMORY[0x231885210](&v10);
  v8 = [(HAP2AccessoryServer *)self operationQueue:v10];
  [v8 addBlock:v7];

  v9 = *MEMORY[0x277D85DE8];
}

void __65__HAP2AccessoryServer_Paired__becomeUnpairedWithAccessoryServer___block_invoke(uint64_t a1)
{
  [(HAP2AccessoryServer *)*(a1 + 32) setInternallyPaired:?];
  [(HAP2AccessoryServer *)*(a1 + 32) setPrivateAccessories:?];
  [(HAP2AccessoryServer *)*(a1 + 32) setReachabilityProfile:?];
  [(HAP2AccessoryServer *)*(a1 + 32) setPairedName:?];
  [(HAP2AccessoryServer *)*(a1 + 32) setPairedProtocolVersion:?];
  v2 = [*(a1 + 40) pairingDriver];
  [(HAP2AccessoryServer *)*(a1 + 32) setInternalPairingDriver:v2];

  [(HAP2AccessoryServer *)*(a1 + 32) _updateConnectionState:0 withError:?];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [v4 controller];
  [(HAP2AccessoryServer *)v3 _updateServerMetadata:v4 controller:v5];

  [(HAP2AccessoryServer *)*(a1 + 32) _stopConfirming];
  v6 = [(HAP2AccessoryServer *)*(a1 + 32) pairedDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 accessoryServerDidBecomeUnpaired:*(a1 + 32)];
  }
}

- (void)_stopConfirming
{
  v12 = *MEMORY[0x277D85DE8];
  if (self)
  {
    operationQueue = [self operationQueue];
    [operationQueue assertCurrentQueue];

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v3 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v8) = 138412290;
      *(&v8 + 4) = self;
      _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_DEFAULT, "%@ Stopping reachability confirmations", &v8, 0xCu);
    }

    v4 = self[18];
    [v4 invalidate];

    objc_storeStrong(self + 18, 0);
    operationQueue2 = [self operationQueue];
    [operationQueue2 assertCurrentQueue];

    reachability = [(HAP2AccessoryServer *)self reachability];
    *&v8 = MEMORY[0x277D85DD0];
    *(&v8 + 1) = 3221225472;
    v9 = __54__HAP2AccessoryServer_Paired___stopReachabilityClient__block_invoke;
    v10 = &unk_2786D6CF0;
    selfCopy = self;
    [reachability stopWithCompletionHandler:&v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __54__HAP2AccessoryServer_Paired___stopReachabilityClient__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v4 = hap2Log_accessory;
    if (v3)
    {
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v6 = 138412546;
        v7 = v2;
        v8 = 2112;
        v9 = v3;
        _os_log_error_impl(&dword_22AADC000, v4, OS_LOG_TYPE_ERROR, "%@ Failed to stop reachability client: %@", &v6, 0x16u);
      }
    }

    else if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v2;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%@ Reachability client stopped", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)stopConfirming
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(HAP2AccessoryServer *)self isPaired])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__HAP2AccessoryServer_Paired__stopConfirming__block_invoke;
    v7[3] = &unk_2786D6CA0;
    v7[4] = self;
    v3 = MEMORY[0x231885210](v7);
    operationQueue = [(HAP2AccessoryServer *)self operationQueue];
    [operationQueue addBlock:v3];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v5 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%@ Server no longer paired, ignoring request to stop confirmations", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)startConfirming
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(HAP2AccessoryServer *)self isPaired])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__HAP2AccessoryServer_Paired__startConfirming__block_invoke;
    v7[3] = &unk_2786D6CA0;
    v7[4] = self;
    v3 = MEMORY[0x231885210](v7);
    operationQueue = [(HAP2AccessoryServer *)self operationQueue];
    [operationQueue addBlock:v3];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v5 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%@ Server no longer paired, ignoring request to start confirmations", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __46__HAP2AccessoryServer_Paired__startConfirming__block_invoke(uint64_t a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [*(a1 + 32) operationQueue];
    [v2 assertCurrentQueue];

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v3 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v1;
      _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_DEFAULT, "%@ Starting reachability confirmations", &buf, 0xCu);
    }

    v4 = v1[18];

    if (v4)
    {
      v5 = v1[18];
      [v5 invalidate];
    }

    v6 = MEMORY[0x277CCACA8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v1 deviceID];
    v10 = [v6 stringWithFormat:@"%@/%@", v8, v9];

    v11 = [objc_alloc(MEMORY[0x277CCA8B8]) initWithIdentifier:v10];
    [v11 setRepeats:1];
    [v11 setInterval:57600.0];
    [v11 setTolerance:28800.0];
    objc_storeStrong(v1 + 18, v11);
    v12 = [v11 description];
    objc_initWeak(location, v11);
    objc_initWeak(&from, v1);
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v22 = __57__HAP2AccessoryServer_Paired___scheduleBackgroundPolling__block_invoke;
    v23 = &unk_2786D6328;
    objc_copyWeak(&v25, &from);
    v13 = v12;
    v24 = v13;
    objc_copyWeak(v26, location);
    [v11 scheduleWithBlock:&buf];
    objc_destroyWeak(v26);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);

    location[0] = MEMORY[0x277D85DD0];
    location[1] = 3221225472;
    location[2] = __47__HAP2AccessoryServer_Paired___startConfirming__block_invoke;
    location[3] = &unk_2786D6CF0;
    location[4] = v1;
    v14 = location;
    v15 = [v1 operationQueue];
    [v15 assertCurrentQueue];

    v16 = [(HAP2AccessoryServer *)v1 reachability];
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v22 = __70__HAP2AccessoryServer_Paired___startReachabilityClientWithCompletion___block_invoke;
    v23 = &unk_2786D6790;
    v24 = v1;
    v17 = v14;
    v25 = v17;
    [v16 startWithCompletionHandler:&buf];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __47__HAP2AccessoryServer_Paired___startConfirming__block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = [(HAP2AccessoryServer *)*(a1 + 32) reachability];
    [v3 confirm];
  }
}

void __70__HAP2AccessoryServer_Paired___startReachabilityClientWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__HAP2AccessoryServer_Paired___startReachabilityClientWithCompletion___block_invoke_2;
  v8[3] = &unk_2786D69E0;
  v4 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v3;
  v10 = v4;
  v5 = v3;
  v6 = MEMORY[0x231885210](v8);
  v7 = [*(a1 + 32) operationQueue];
  [v7 addBlock:v6];
}

uint64_t __70__HAP2AccessoryServer_Paired___startReachabilityClientWithCompletion___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      if ([v3 code] == 4 && (objc_msgSend(v4, "domain"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"HAPErrorDomain"), v5, v6))
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v7 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
        {
          v15 = 138412290;
          v16 = v2;
          _os_log_debug_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%@ reachability already running", &v15, 0xCu);
        }
      }

      else
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v8 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          v15 = 138412546;
          v16 = v2;
          v17 = 2112;
          v18 = v4;
          _os_log_error_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%@ reachability start failed: %@", &v15, 0x16u);
        }
      }
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v2;
        _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%@ reachability started", &v15, 0xCu);
      }
    }
  }

  result = *(a1 + 48);
  if (result)
  {
    v11 = *(a1 + 40);
    v12 = *(result + 16);
    v13 = *MEMORY[0x277D85DE8];

    return v12();
  }

  else
  {
    v14 = *MEMORY[0x277D85DE8];
  }

  return result;
}

void __57__HAP2AccessoryServer_Paired___scheduleBackgroundPolling__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    if ([v5 shouldDefer])
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v6 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
      {
        v10 = 138412290;
        v11 = WeakRetained;
        _os_log_debug_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEBUG, "%@ Background reachability poll was deferred", &v10, 0xCu);
      }

      v3[2](v3, 2);
    }

    else
    {
      [WeakRetained _performBackgroundPollWithCompletion:v3];
    }
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v7 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      _os_log_debug_impl(&dword_22AADC000, v7, OS_LOG_TYPE_DEBUG, "%@ Background reachability poll fired but server is gone", &v10, 0xCu);
    }

    v3[2](v3, 1);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isConfirming
{
  reachability = [(HAP2AccessoryServer *)&self->super.super.isa reachability];
  isRunning = [reachability isRunning];

  return isRunning;
}

- (id)updateAccessoriesWithReason:(id)reason
{
  v23 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__20997;
  v17[4] = __Block_byref_object_dispose__20998;
  v18 = 0;
  outstandingUpdateAccessoriesRequest = [(HAP2AccessoryServer *)&self->super.super.isa outstandingUpdateAccessoriesRequest];

  if (outstandingUpdateAccessoriesRequest)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v6 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = reasonCopy;
      v21 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_DEFAULT, "%@ Ignoring updateAccessories request with reason:%@ one already running", buf, 0x16u);
    }

    v7 = +[HAP2Cancelable ignore];
  }

  else
  {
    objc_initWeak(buf, self);
    operationQueue = [(HAP2AccessoryServer *)self operationQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__HAP2AccessoryServer_Paired__updateAccessoriesWithReason___block_invoke;
    v13[3] = &unk_2786D5FC0;
    objc_copyWeak(&v16, buf);
    v15 = v17;
    v14 = reasonCopy;
    [operationQueue addBlock:v13];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__HAP2AccessoryServer_Paired__updateAccessoriesWithReason___block_invoke_80;
    v11[3] = &unk_2786D5FE8;
    objc_copyWeak(&v12, buf);
    v11[4] = v17;
    v7 = [HAP2Cancelable cancelableWithBlock:v11];
    objc_destroyWeak(&v12);

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  _Block_object_dispose(v17, 8);

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

void __59__HAP2AccessoryServer_Paired__updateAccessoriesWithReason___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [(HAP2AccessoryServer *)WeakRetained outstandingUpdateAccessoriesRequest];
    if (v4)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
    }

    else
    {
      v5 = MEMORY[0x277CCACA8];
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v35 = [v5 stringWithFormat:@"%@ Update Accessories", v7];

      v8 = [objc_alloc(MEMORY[0x277D0F8B8]) initWithName:@"Update Activities" timeout:60.0];
      if (v8)
      {
        v9 = objc_alloc(MEMORY[0x277D0F770]);
        v10 = [MEMORY[0x277CCAD78] UUID];
        v37 = v8;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
        v36 = [v9 initWithIdentifier:v10 name:v35 parent:0 assertions:v11];
      }

      else
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v12 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v3;
          _os_log_error_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%@ Failed to create power assertion", &buf, 0xCu);
        }

        v13 = objc_alloc(MEMORY[0x277D0F770]);
        v10 = [MEMORY[0x277CCAD78] UUID];
        v11 = 0;
        v36 = [v13 initWithIdentifier:v10 name:v35 parent:0 options:0];
      }

      v14 = *(a1 + 32);
      v15 = v36;
      v16 = v14;
      v17 = [v3 operationQueue];
      [v17 assertCurrentQueue];

      v18 = [v3 connectionState];
      v19 = [v3 isPaired];
      if (v18)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      if (v20)
      {
        v21 = [v3 connectionState];
        if (v21 <= 4 && ((1 << v21) & 0x16) != 0)
        {
          if (hap2LogInitialize_onceToken != -1)
          {
            dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
          }

          v22 = hap2Log_accessory;
          if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v3;
            _os_log_impl(&dword_22AADC000, v22, OS_LOG_TYPE_INFO, "%@ Connecting", &buf, 0xCu);
          }

          [(HAP2AccessoryServer *)v3 _updateConnectionState:0 withError:?];
        }

        v23 = [MEMORY[0x277D0F8C0] sharedPowerLogger];
        v24 = [v3 deviceID];
        v25 = [v24 deviceIDString];
        v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "category")}];
        [v23 reportConnection:v25 linkType:1 accessoryCategory:v26];

        v27 = [MEMORY[0x277CBEAA8] date];
        v28 = [v3 controller];
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v39 = __69__HAP2AccessoryServer_Paired___updateAccessoriesWithActivity_reason___block_invoke;
        v40 = &unk_2786D6128;
        v41 = v15;
        v42 = v3;
        v43 = v27;
        v44 = v16;
        v29 = v27;
        v30 = [v28 readAttributeDatabaseWithCompletion:&buf];
      }

      else
      {
        [(HAP2AccessoryServer *)v3 setOutstandingUpdateAccessoriesRequest:?];
        v31 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
        [(HAP2AccessoryServer *)v3 _handleFailedAccessoryDiscovery:v31];

        v30 = +[HAP2Cancelable ignore];
      }

      v32 = *(*(a1 + 40) + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = v30;

      [(HAP2AccessoryServer *)v3 setOutstandingUpdateAccessoriesRequest:?];
      __HMFActivityScopeLeave();
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __59__HAP2AccessoryServer_Paired__updateAccessoriesWithReason___block_invoke_80(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained operationQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__HAP2AccessoryServer_Paired__updateAccessoriesWithReason___block_invoke_2;
    v7[3] = &unk_2786D6E60;
    v9 = *(a1 + 32);
    v8 = v3;
    [v6 addBlock:v7];
  }
}

- (void)_handleFailedAccessoryDiscovery:(void *)discovery
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (discovery)
  {
    operationQueue = [discovery operationQueue];
    [operationQueue assertCurrentQueue];

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v5 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412546;
      discoveryCopy = discovery;
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&dword_22AADC000, v5, OS_LOG_TYPE_ERROR, "%@ Failed to discover accessories: %@", &v8, 0x16u);
    }

    [discovery setReachabilityChangedReason:@"AttributeDatabaseRead"];
    [(HAP2AccessoryServer *)discovery _handleAccessoryOperationError:v3];
    delegate = [discovery delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate accessoryServer:discovery didFailToUpdateAccessoriesWithError:v3];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __69__HAP2AccessoryServer_Paired___updateAccessoriesWithActivity_reason___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v146[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) begin];
  v95 = *(a1 + 32);
  v7 = [*(a1 + 40) operationQueue];
  [v7 assertCurrentQueue];

  [(HAP2AccessoryServer *)*(a1 + 40) setOutstandingUpdateAccessoriesRequest:?];
  v8 = [MEMORY[0x277CBEAA8] date];
  [v8 timeIntervalSinceDate:*(a1 + 48)];
  v10 = v9;

  v11 = *(a1 + 32);
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  [v6 domain];

  [v6 code];
  v13 = [(HAP2AccessoryServer *)*(a1 + 40) reachability];
  [v13 kick];

  v14 = *(a1 + 40);
  if (!v6)
  {
    [(HAP2AccessoryServer *)v14 _updateConnectionState:0 withError:?];
    v15 = *(a1 + 40);
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __69__HAP2AccessoryServer_Paired___updateAccessoriesWithActivity_reason___block_invoke_2;
    v94[3] = &unk_2786D6100;
    v94[4] = v15;
    v93 = v5;
    v90 = v94;
    if (!v15)
    {
LABEL_72:

      goto LABEL_73;
    }

    v16 = [v15 operationQueue];
    [v16 assertCurrentQueue];

    v17 = MEMORY[0x277CCACA8];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v91 = [v17 stringWithFormat:@"%@ HandleDiscoveredAccessories", v19];

    v92 = [objc_alloc(MEMORY[0x277D0F8B8]) initWithName:@"Discover Accessories" timeout:60.0];
    v112 = 0;
    if (v92)
    {
      v20 = objc_alloc(MEMORY[0x277D0F770]);
      v21 = [MEMORY[0x277CCAD78] UUID];
      v134 = v92;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v134 count:1];
      v23 = [v20 initWithIdentifier:v21 name:v91 parent:0 assertions:v22];
      v24 = v112;
      v112 = v23;
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v25 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *v139 = 138412290;
        *&v139[4] = v15;
        _os_log_error_impl(&dword_22AADC000, v25, OS_LOG_TYPE_ERROR, "%@ Failed to create power assertion", v139, 0xCu);
      }

      v26 = objc_alloc(MEMORY[0x277D0F770]);
      v21 = [MEMORY[0x277CCAD78] UUID];
      v27 = [v26 initWithIdentifier:v21 name:v91 parent:0 options:0];
      v22 = v112;
      v112 = v27;
    }

    v110[0] = 0;
    v110[1] = v110;
    v110[2] = 0x2020000000;
    v111 = 0;
    v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v93, "count")}];
    v108[0] = MEMORY[0x277D85DD0];
    v108[1] = 3221225472;
    v108[2] = __82__HAP2AccessoryServer_Paired___handleDiscoveredAccessories_withCompletionHandler___block_invoke;
    v108[3] = &unk_2786D6150;
    v89 = v28;
    v109 = v89;
    [v93 hmf_enumerateWithAutoreleasePoolUsingBlock:v108];
    v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v93, "count")}];
    v30 = [(HAP2AccessoryServer *)v15 privateAccessories];
    v107[0] = 0;
    v107[1] = v107;
    v107[2] = 0x2020000000;
    v107[3] = 0;
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __82__HAP2AccessoryServer_Paired___handleDiscoveredAccessories_withCompletionHandler___block_invoke_2;
    v102[3] = &unk_2786D6178;
    v105 = v107;
    v86 = v30;
    v103 = v86;
    v88 = v29;
    v104 = v88;
    v106 = v110;
    [v89 hmf_enumerateWithAutoreleasePoolUsingBlock:v102];
    v31 = [v88 copy];
    [(HAP2AccessoryServer *)v15 setPrivateAccessories:v31];

    v96[0] = MEMORY[0x277D85DD0];
    v96[1] = 3221225472;
    v97 = __82__HAP2AccessoryServer_Paired___handleDiscoveredAccessories_withCompletionHandler___block_invoke_3;
    v98 = &unk_2786D61A0;
    v100 = v90;
    v101 = v110;
    v99 = v112;
    v87 = v96;
    v32 = [v15 operationQueue];
    [v32 assertCurrentQueue];

    v33 = [(HAP2AccessoryServer *)v15 privateAccessories];
    v34 = [v33 count] == 0;

    if (v34)
    {
      [(HAP2AccessoryServer *)v15 setPairedName:?];
      [(HAP2AccessoryServer *)v15 setPairedProtocolVersion:?];
      v97(v87);
LABEL_71:

      _Block_object_dispose(v107, 8);
      _Block_object_dispose(v110, 8);
      __HMFActivityScopeLeave();

      goto LABEL_72;
    }

    v35 = [v15 primaryAccessory];
    v120 = 0;
    v121 = &v120;
    v122 = 0x3032000000;
    v123 = __Block_byref_object_copy__20997;
    v124 = __Block_byref_object_dispose__20998;
    v125 = 0;
    v114 = 0;
    v115 = &v114;
    v116 = 0x3032000000;
    v117 = __Block_byref_object_copy__20997;
    v118 = __Block_byref_object_dispose__20998;
    v119 = 0;
    v85 = v35;
    v36 = [v35 services];
    v113[0] = MEMORY[0x277D85DD0];
    v113[1] = 3221225472;
    v113[2] = __71__HAP2AccessoryServer_Paired___handleUpdatedAccessoriesWithCompletion___block_invoke;
    v113[3] = &unk_2786D61D8;
    v113[4] = &v120;
    v113[5] = &v114;
    [v36 hmf_enumerateWithAutoreleasePoolUsingBlock:v113];

    v37 = v121[5];
    v38 = [v15 operationQueue];
    [v38 assertCurrentQueue];

    *v139 = 0;
    *&v139[8] = v139;
    *&v139[16] = 0x3032000000;
    v140 = __Block_byref_object_copy__20997;
    v141 = __Block_byref_object_dispose__20998;
    v142 = 0;
    v39 = [v37 characteristics];
    v128 = MEMORY[0x277D85DD0];
    v129 = 3221225472;
    v130 = __73__HAP2AccessoryServer_Paired___handleUpdatedAccessoryInformationService___block_invoke;
    v131 = &unk_2786D6208;
    v132 = v139;
    [v39 hmf_enumerateWithAutoreleasePoolUsingBlock:&v128];

    v40 = *(*&v139[8] + 40);
    if (v40)
    {
      [(HAP2AccessoryServer *)v15 setPairedName:v40];
    }

    _Block_object_dispose(v139, 8);

    v41 = v115[5];
    v42 = [v15 operationQueue];
    [v42 assertCurrentQueue];

    *v139 = 0;
    *&v139[8] = v139;
    *&v139[16] = 0x3032000000;
    v140 = __Block_byref_object_copy__20997;
    v141 = __Block_byref_object_dispose__20998;
    v142 = 0;
    v43 = [v41 characteristics];
    v128 = MEMORY[0x277D85DD0];
    v129 = 3221225472;
    v130 = __72__HAP2AccessoryServer_Paired___handleUpdatedProtocolInformationService___block_invoke;
    v131 = &unk_2786D6208;
    v132 = v139;
    [v43 hmf_enumerateWithAutoreleasePoolUsingBlock:&v128];

    if (*(*&v139[8] + 40))
    {
      v44 = objc_alloc(MEMORY[0x277D0F940]);
      v45 = [v44 initWithString:*(*&v139[8] + 40)];
      if (v45)
      {
LABEL_25:
        [(HAP2AccessoryServer *)v15 setPairedProtocolVersion:v45];

        _Block_object_dispose(v139, 8);
        v49 = v87;
        v50 = [v15 operationQueue];
        [v50 assertCurrentQueue];

        v51 = [v15 operationQueue];
        [v51 assertCurrentQueue];

        v52 = [v15 primaryAccessory];
        LOBYTE(v51) = v52 == 0;

        if ((v51 & 1) == 0)
        {
          v53 = [HAPAccessoryReachabilityProfile alloc];
          v54 = [v15 primaryAccessory];
          v55 = [v54 services];
          v56 = [(HAPAccessoryReachabilityProfile *)v53 initWithDiscoveredServices:v55];
          [(HAP2AccessoryServer *)v15 setReachabilityProfile:v56];

          if (hap2LogInitialize_onceToken != -1)
          {
            dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
          }

          v57 = hap2Log_accessory;
          if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
          {
            v81 = v57;
            v82 = [(HAP2AccessoryServer *)v15 reachabilityProfile];
            *v139 = 138412546;
            *&v139[4] = v15;
            *&v139[12] = 2112;
            *&v139[14] = v82;
            _os_log_debug_impl(&dword_22AADC000, v81, OS_LOG_TYPE_DEBUG, "%@ Updated reachability profile: %@", v139, 0x16u);
          }
        }

        v126[0] = MEMORY[0x277D85DD0];
        v126[1] = 3221225472;
        v126[2] = __66__HAP2AccessoryServer_Paired___prepareReachabilityWithCompletion___block_invoke;
        v126[3] = &unk_2786D6490;
        v58 = v49;
        v127 = v58;
        v59 = v126;
        v60 = [v15 operationQueue];
        [v60 assertCurrentQueue];

        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __66__HAP2AccessoryServer_Paired___updateSleepIntervalWithCompletion___block_invoke;
        v136 = &unk_2786D6350;
        v137 = v15;
        v61 = v59;
        v138 = v61;
        v62 = buf;
        v63 = [v15 operationQueue];
        [v63 assertCurrentQueue];

        v64 = [v15 primaryAccessory];
        LODWORD(v63) = v64 == 0;

        if (v63)
        {
          if (hap2LogInitialize_onceToken != -1)
          {
            dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
          }

          v67 = hap2Log_accessory;
          if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
          {
            *v139 = 138412290;
            *&v139[4] = v15;
            _os_log_impl(&dword_22AADC000, v67, OS_LOG_TYPE_INFO, "%@ No primary accessory yet, using default sleep interval", v139, 0xCu);
          }

          (*&buf[16])(v62, &unk_283EA98A8);
        }

        else
        {
          v65 = [v15 primaryAccessory];
          if ([v65 conformsToProtocol:&unk_283EC9B48])
          {
            v66 = [v15 primaryAccessory];
          }

          else
          {
            v66 = 0;
          }

          v128 = 0;
          v129 = &v128;
          v130 = 0x3032000000;
          v131 = __Block_byref_object_copy__20997;
          v132 = __Block_byref_object_dispose__20998;
          v133 = [v66 internalSleepIntervalMs];
          if (*(v129 + 40))
          {
            if (hap2LogInitialize_onceToken != -1)
            {
              dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
            }

            v68 = hap2Log_accessory;
            if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
            {
              v69 = *(v129 + 40);
              *v139 = 138412546;
              *&v139[4] = v15;
              *&v139[12] = 2112;
              *&v139[14] = v69;
              _os_log_impl(&dword_22AADC000, v68, OS_LOG_TYPE_INFO, "%@ Using primary accessory's sleep interval: %@", v139, 0x16u);
            }

            (*&buf[16])(v62, *(v129 + 40));
          }

          else
          {
            v70 = [(HAP2AccessoryServer *)v15 reachabilityProfile];
            v84 = [v70 sleepIntervalCharacteristic];

            if (v84)
            {
              v71 = [v84 value];

              if (v71)
              {
                v83 = [v84 value];
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();
                if (isKindOfClass)
                {
                  v73 = [v84 value];
                }

                else
                {
                  v73 = 0;
                }

                objc_storeStrong((v129 + 40), v73);
                if (isKindOfClass)
                {
                }

                [v66 setInternalSleepIntervalMs:*(v129 + 40)];
                if (hap2LogInitialize_onceToken != -1)
                {
                  dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
                }

                v78 = hap2Log_accessory;
                if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
                {
                  v79 = *(v129 + 40);
                  *v139 = 138412546;
                  *&v139[4] = v15;
                  *&v139[12] = 2112;
                  *&v139[14] = v79;
                  _os_log_impl(&dword_22AADC000, v78, OS_LOG_TYPE_INFO, "%@ Using previously cached sleep interval: %@", v139, 0x16u);
                }

                (*&buf[16])(v62, *(v129 + 40));
              }

              else
              {
                if (hap2LogInitialize_onceToken != -1)
                {
                  dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
                }

                v75 = hap2Log_accessory;
                if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
                {
                  *v139 = 138412290;
                  *&v139[4] = v15;
                  _os_log_impl(&dword_22AADC000, v75, OS_LOG_TYPE_INFO, "%@ Reading sleep interval from primary accessory", v139, 0xCu);
                }

                v146[0] = v84;
                v76 = [MEMORY[0x277CBEA60] arrayWithObjects:v146 count:1];
                *v139 = MEMORY[0x277D85DD0];
                *&v139[8] = 3221225472;
                *&v139[16] = __54__HAP2AccessoryServer_Paired___getSleepIntervalValue___block_invoke;
                v140 = &unk_2786D63A0;
                v141 = v15;
                v144 = v62;
                v142 = v84;
                v145 = &v128;
                v143 = v66;
                v77 = [v15 readValuesForCharacteristics:v76 timeout:v139 completion:0.0];
              }
            }

            else
            {
              if (hap2LogInitialize_onceToken != -1)
              {
                dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
              }

              v74 = hap2Log_accessory;
              if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
              {
                *v139 = 138412290;
                *&v139[4] = v15;
                _os_log_impl(&dword_22AADC000, v74, OS_LOG_TYPE_INFO, "%@ No sleep interval characteristic present, using default sleep interval", v139, 0xCu);
              }

              (*&buf[16])(v62, &unk_283EA98A8);
            }
          }

          _Block_object_dispose(&v128, 8);
        }

        _Block_object_dispose(&v114, 8);
        _Block_object_dispose(&v120, 8);

        goto LABEL_71;
      }

      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v46 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
LABEL_22:
        v48 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v15;
          _os_log_impl(&dword_22AADC000, v48, OS_LOG_TYPE_INFO, "%@ Unable to retrieve paired protocol version", buf, 0xCu);
        }

        v45 = 0;
        goto LABEL_25;
      }

      v47 = *(*&v139[8] + 40);
      *buf = 138412546;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v47;
      _os_log_error_impl(&dword_22AADC000, v46, OS_LOG_TYPE_ERROR, "%@ Failed to parse protocol version from string: %@", buf, 0x16u);
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    goto LABEL_22;
  }

  [(HAP2AccessoryServer *)v14 _handleFailedAccessoryDiscovery:v6];
LABEL_73:
  __HMFActivityScopeLeave();

  v80 = *MEMORY[0x277D85DE8];
}

void __69__HAP2AccessoryServer_Paired___updateAccessoriesWithActivity_reason___block_invoke_2(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v3 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v6 = [(HAP2AccessoryServer *)v4 privateAccessories];
      v7 = [v6 count];
      v8 = [(HAP2AccessoryServer *)*(a1 + 32) privateAccessories];
      v9 = [v8 count];
      v10 = "ies";
      v13 = 138412802;
      v14 = v4;
      if (v9 == 1)
      {
        v10 = "y";
      }

      v15 = 1024;
      v16 = v7;
      v17 = 2080;
      v18 = v10;
      _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%@ Informing delegate of %d updated accessor%s", &v13, 0x1Cu);
    }

    v11 = [(HAP2AccessoryServer *)*(a1 + 32) pairedDelegate];
    if (objc_opt_respondsToSelector())
    {
      [v11 accessoryServerDidUpdateAccessories:*(a1 + 32)];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __82__HAP2AccessoryServer_Paired___handleDiscoveredAccessories_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 conformsToProtocol:&unk_283EC9B48])
  {
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  [*(a1 + 32) addObject:v3];
}

void __82__HAP2AccessoryServer_Paired___handleDiscoveredAccessories_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 instanceID];
  while (1)
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    if (v4 >= [*(a1 + 32) count])
    {
      goto LABEL_8;
    }

    v5 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
    v6 = [v5 instanceID];

    if (v6 == v3)
    {
      break;
    }

    ++*(*(*(a1 + 48) + 8) + 24);
  }

  v7 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
  ++*(*(*(a1 + 48) + 8) + 24);
  if (!v7)
  {
LABEL_8:
    [*(a1 + 40) addObject:v11];
    v8 = 0;
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v11 services];
  v10 = [v8 updateDiscoveredServices:v9];

  if (!v10)
  {
    goto LABEL_10;
  }

  [*(a1 + 40) addObject:v8];
LABEL_9:
  *(*(*(a1 + 56) + 8) + 24) = 1;
LABEL_10:
}

uint64_t __82__HAP2AccessoryServer_Paired___handleDiscoveredAccessories_withCompletionHandler___block_invoke_3(void *a1)
{
  v2 = *(*(a1[6] + 8) + 24);
  (*(a1[5] + 16))();
  v3 = a1[4];

  return [v3 invalidate];
}

void __71__HAP2AccessoryServer_Paired___handleUpdatedAccessoriesWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v7 = [v13 type];
  v8 = [v7 isEqualToString:@"0000003E-0000-1000-8000-0026BB765291"];

  if (v8)
  {
    v9 = 32;
  }

  else
  {
    v10 = [v13 type];
    v11 = [v10 isEqualToString:@"000000A2-0000-1000-8000-0026BB765291"];

    if (!v11)
    {
      goto LABEL_6;
    }

    v9 = 40;
  }

  objc_storeStrong((*(*(a1 + v9) + 8) + 40), a2);
LABEL_6:
  v12 = *(*(*(a1 + 32) + 8) + 40);
  if (v12)
  {
    LOBYTE(v12) = *(*(*(a1 + 40) + 8) + 40) != 0;
  }

  *a4 = v12;
}

uint64_t __66__HAP2AccessoryServer_Paired___updateSleepIntervalWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 operationQueue];
  [v5 assertCurrentQueue];

  [HAPAccessoryReachabilityProfile timeIntervalFromMillisecondNumberValue:v4];
  v7 = v6;

  v8 = [(HAP2AccessoryServer *)*(a1 + 32) reachabilityProfile];
  [v8 setSleepInterval:v7];

  v9 = [(HAP2AccessoryServer *)*(a1 + 32) reachabilityProfile];
  v10 = [(HAP2AccessoryServer *)*(a1 + 32) reachability];
  [v10 setProfile:v9];

  v11 = v7 * 1.1;
  v12 = v11 >= 2.22044605e-16 && v11 > 0.0;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v13 = hap2Log_accessory;
  v14 = os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO);
  if (v12)
  {
    if (v14)
    {
      v15 = *(a1 + 32);
      *v23 = 138412546;
      *&v23[4] = v15;
      *&v23[12] = 2048;
      *&v23[14] = v11;
      v16 = "%@ Updating maximum request timeout to %f seconds";
      v17 = v13;
      v18 = 22;
LABEL_11:
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_INFO, v16, v23, v18);
    }
  }

  else if (v14)
  {
    v19 = *(a1 + 32);
    *v23 = 138412290;
    *&v23[4] = v19;
    v16 = "%@ Using default maximum request timeout";
    v17 = v13;
    v18 = 12;
    goto LABEL_11;
  }

  v20 = [*(a1 + 32) controller];
  [v20 updateMaxRequestTimeout:v11];

  result = (*(*(a1 + 40) + 16))();
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void __54__HAP2AccessoryServer_Paired___getSleepIntervalValue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) operationQueue];
  [v7 assertCurrentQueue];

  if (v6)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v8 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      *v29 = 138412546;
      *&v29[4] = v18;
      *&v29[12] = 2112;
      *&v29[14] = v6;
      _os_log_error_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%@ Failed to read sleep interval, using default sleep interval: %@", v29, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    *v29 = 0;
    *&v29[8] = v29;
    *&v29[16] = 0x3032000000;
    v30 = __Block_byref_object_copy__20997;
    v31 = __Block_byref_object_dispose__20998;
    v32 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __54__HAP2AccessoryServer_Paired___getSleepIntervalValue___block_invoke_252;
    v21[3] = &unk_2786D6378;
    v22 = *(a1 + 40);
    v23 = v29;
    v24 = *(a1 + 64);
    [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v21];
    if (*(*(*(a1 + 64) + 8) + 40))
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        v11 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138412546;
        v26 = v10;
        v27 = 2112;
        v28 = v11;
        _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_INFO, "%@ Read sleep interval from primary accessory: %@", buf, 0x16u);
      }

      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{2 * objc_msgSend(*(*(*(a1 + 64) + 8) + 40), "unsignedIntegerValue")}];
      v13 = *(*(a1 + 64) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      [*(a1 + 48) setInternalSleepIntervalMs:*(*(*(a1 + 64) + 8) + 40)];
      v15 = *(*(*(a1 + 64) + 8) + 40);
      (*(*(a1 + 56) + 16))();
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v16 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        v20 = *(*&v29[8] + 40);
        *buf = 138412546;
        v26 = v19;
        v27 = 2112;
        v28 = v20;
        _os_log_error_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%@ Failed to read sleep interval, using default sleep interval: %@", buf, 0x16u);
      }

      (*(*(a1 + 56) + 16))();
    }

    _Block_object_dispose(v29, 8);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __54__HAP2AccessoryServer_Paired___getSleepIntervalValue___block_invoke_252(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v18 = a2;
  v6 = [v18 characteristic];
  v7 = [v6 type];
  v8 = [*(a1 + 32) type];
  v9 = [v7 isEqualToString:v8];

  v10 = v18;
  if (v9)
  {
    v11 = [v18 error];

    if (v11)
    {
      v12 = [v18 error];
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    else
    {
      v15 = [v18 value];

      if (!v15)
      {
        goto LABEL_5;
      }

      v14 = [v18 value];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v17 = [v18 value];
      }

      else
      {
        v17 = 0;
      }

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v17);
      if (isKindOfClass)
      {
      }
    }

LABEL_5:
    *a4 = 1;
    v10 = v18;
  }
}

void __72__HAP2AccessoryServer_Paired___handleUpdatedProtocolInformationService___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 type];
  v7 = [v6 isEqualToString:@"00000037-0000-1000-8000-0026BB765291"];

  v8 = v12;
  if (v7)
  {
    v9 = [v12 value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v11 = [v12 value];
    }

    else
    {
      v11 = 0;
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v11);
    if (isKindOfClass)
    {
    }

    *a4 = 1;
    v8 = v12;
  }
}

void __73__HAP2AccessoryServer_Paired___handleUpdatedAccessoryInformationService___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v6 = [v12 type];
  v7 = [v6 isEqualToString:@"00000023-0000-1000-8000-0026BB765291"];

  v8 = v12;
  if (v7)
  {
    v9 = [v12 value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v11 = [v12 value];
    }

    else
    {
      v11 = 0;
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v11);
    if (isKindOfClass)
    {
    }

    *a4 = 1;
    v8 = v12;
  }
}

- (id)getPairingsWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__HAP2AccessoryServer_Paired__getPairingsWithCompletion___block_invoke;
  v8[3] = &unk_2786D6B90;
  objc_copyWeak(&v10, &location);
  v5 = completionCopy;
  v9 = v5;
  v6 = [(HAP2AccessoryServer *)self _delegateCancelableFor:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

id __57__HAP2AccessoryServer_Paired__getPairingsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained controller];
  v4 = [v3 listPairingsWithCompletion:*(a1 + 32)];

  return v4;
}

- (id)removePairing:(id)pairing completion:(id)completion
{
  pairingCopy = pairing;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__HAP2AccessoryServer_Paired__removePairing_completion___block_invoke;
  v12[3] = &unk_2786D5F98;
  objc_copyWeak(&v15, &location);
  v8 = completionCopy;
  v14 = v8;
  v9 = pairingCopy;
  v13 = v9;
  v10 = [(HAP2AccessoryServer *)self _delegateCancelableFor:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

HAP2CancelableObject *__56__HAP2AccessoryServer_Paired__removePairing_completion___block_invoke(id *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained browser];
  if (v3)
  {
    v4 = objc_alloc_init(HAP2CancelableObject);
    v5 = [WeakRetained deviceID];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__HAP2AccessoryServer_Paired__removePairing_completion___block_invoke_69;
    v14[3] = &unk_2786D5F20;
    v6 = v4;
    v15 = v6;
    v18 = a1[5];
    v16 = WeakRetained;
    v17 = a1[4];
    [v3 retrieveLocalPairingIdentityForDeviceID:v5 completion:v14];

    v7 = v17;
    v8 = v6;
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v9 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = WeakRetained;
      _os_log_error_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%@ Unable to get the accessory server browser", buf, 0xCu);
    }

    v10 = a1[5];
    v11 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    v10[2](v10, v11);

    v8 = +[HAP2Cancelable ignore];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

void __56__HAP2AccessoryServer_Paired__removePairing_completion___block_invoke_69(id *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] cancelError];
  if (v7)
  {
    (*(a1[7] + 2))();
  }

  else
  {
    if (v5)
    {
      v8 = [v5 identifier];
      v9 = [a1[6] identifier];
      v10 = [v8 isEqualToString:v9];
    }

    else
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v11 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v16 = a1[5];
        *buf = 138412546;
        v26 = v16;
        v27 = 2112;
        v28 = v6;
        _os_log_error_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%@ Unable to lookup local pairing identity: %@", buf, 0x16u);
      }

      v10 = 0;
    }

    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __56__HAP2AccessoryServer_Paired__removePairing_completion___block_invoke_70;
    v20 = &unk_2786D5F70;
    v12 = a1[6];
    v21 = a1[5];
    v22 = v12;
    v24 = v10;
    v23 = a1[7];
    v13 = MEMORY[0x231885210](&v17);
    v14 = [a1[5] operationQueue];
    [v14 addBlock:v13];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __56__HAP2AccessoryServer_Paired__removePairing_completion___block_invoke_70(uint64_t a1)
{
  v3 = [*(a1 + 32) controller];
  v2 = [v3 removePairing:*(a1 + 40) cleanupLocalData:*(a1 + 56) completion:*(a1 + 48)];
}

- (id)addPairing:(id)pairing completion:(id)completion
{
  pairingCopy = pairing;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__HAP2AccessoryServer_Paired__addPairing_completion___block_invoke;
  v12[3] = &unk_2786D5F98;
  objc_copyWeak(&v15, &location);
  v8 = pairingCopy;
  v13 = v8;
  v9 = completionCopy;
  v14 = v9;
  v10 = [(HAP2AccessoryServer *)self _delegateCancelableFor:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

id __53__HAP2AccessoryServer_Paired__addPairing_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained controller];
  v4 = [v3 addPairing:*(a1 + 32) completion:*(a1 + 40)];

  return v4;
}

- (id)unpairWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%@ Unpairing with accessory server", buf, 0xCu);
  }

  if ([(HAP2AccessoryServer *)self isPaired])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__HAP2AccessoryServer_Paired__unpairWithCompletion___block_invoke;
    v11[3] = &unk_2786D5F48;
    v11[4] = self;
    v12 = completionCopy;
    v6 = [(HAP2AccessoryServer *)self _delegateCancelableFor:v11];
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v7 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_error_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%@ Trying to unpair an unpaired server", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    (*(completionCopy + 2))(completionCopy, v8);

    v6 = +[HAP2Cancelable ignore];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

HAP2CancelableObject *__52__HAP2AccessoryServer_Paired__unpairWithCompletion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) browser];
  if (v2)
  {
    v3 = objc_alloc_init(HAP2CancelableObject);
    v4 = [*(a1 + 32) deviceID];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __52__HAP2AccessoryServer_Paired__unpairWithCompletion___block_invoke_64;
    v16[3] = &unk_2786D5F20;
    v5 = v3;
    v17 = v5;
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v20 = v6;
    v18 = v7;
    v19 = v2;
    [v19 retrieveLocalPairingIdentityForDeviceID:v4 completion:v16];

    v8 = v19;
    v9 = v5;
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v10 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 32);
      *buf = 138412290;
      v22 = v15;
      _os_log_error_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%@ Unable to get the accessory server browser", buf, 0xCu);
    }

    v11 = *(a1 + 40);
    v12 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
    (*(v11 + 16))(v11, v12);

    v9 = +[HAP2Cancelable ignore];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

void __52__HAP2AccessoryServer_Paired__unpairWithCompletion___block_invoke_64(id *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] cancelError];
  if (v7)
  {
    v8 = *(a1[7] + 2);
  }

  else
  {
    if (v5)
    {
      v14 = MEMORY[0x277D85DD0];
      v15 = 3221225472;
      v16 = __52__HAP2AccessoryServer_Paired__unpairWithCompletion___block_invoke_65;
      v17 = &unk_2786D66C8;
      v18 = a1[5];
      v19 = v5;
      v20 = a1[6];
      v21 = a1[7];
      v9 = MEMORY[0x231885210](&v14);
      v10 = [a1[5] operationQueue];
      [v10 addBlock:v9];

      goto LABEL_6;
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v12 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v13 = a1[5];
      *buf = 138412546;
      v23 = v13;
      v24 = 2112;
      v25 = v6;
      _os_log_error_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, "%@ Unable to get the local pairing identity: %@", buf, 0x16u);
    }

    v8 = *(a1[7] + 2);
  }

  v8();
LABEL_6:

  v11 = *MEMORY[0x277D85DE8];
}

void __52__HAP2AccessoryServer_Paired__unpairWithCompletion___block_invoke_65(uint64_t a1)
{
  v2 = [*(a1 + 32) controller];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__HAP2AccessoryServer_Paired__unpairWithCompletion___block_invoke_2;
  v5[3] = &unk_2786D6808;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v4 = [v2 removePairing:v3 cleanupLocalData:1 completion:v5];
}

void __52__HAP2AccessoryServer_Paired__unpairWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v4 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%@ Remove pairing completed with error: %@", &v9, 0x16u);
  }

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) deviceID];
  [v6 removePublicKeyForAccessoryWithID:v7 completion:*(a1 + 48)];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)clearAccessories
{
  [(HAP2AccessoryServer *)self setPrivateAccessories:?];

  [(HAP2AccessoryServer *)&self->super.super.isa setReachabilityProfile:?];
}

- (HAP2Accessory)primaryAccessory
{
  privateAccessories = [(HAP2AccessoryServer *)&self->super.super.isa privateAccessories];
  firstObject = [privateAccessories firstObject];

  return firstObject;
}

- (void)pairingDriver:(id)driver validateSoftwareAuthUUID:(id)d token:(id)token model:(id)model completion:(id)completion
{
  driverCopy = driver;
  dCopy = d;
  tokenCopy = token;
  modelCopy = model;
  completionCopy = completion;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __95__HAP2AccessoryServer_Unpaired__pairingDriver_validateSoftwareAuthUUID_token_model_completion___block_invoke;
  v22[3] = &unk_2786D6C30;
  objc_copyWeak(&v27, &location);
  v18 = dCopy;
  v23 = v18;
  v19 = tokenCopy;
  v24 = v19;
  v20 = modelCopy;
  v25 = v20;
  v21 = completionCopy;
  v26 = v21;
  [operationQueue addBlock:v22];

  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);
}

void __95__HAP2AccessoryServer_Unpaired__pairingDriver_validateSoftwareAuthUUID_token_model_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [(HAP2AccessoryServer *)WeakRetained pairDelegate];
  v3 = v2;
  if (v2)
  {
    [v2 accessoryServer:WeakRetained validateSoftwareAuthUUID:*(a1 + 32) token:*(a1 + 40) model:*(a1 + 48) completion:*(a1 + 56)];
  }
}

- (void)pairingDriver:(id)driver validatePairingCert:(id)cert model:(id)model completion:(id)completion
{
  driverCopy = driver;
  certCopy = cert;
  modelCopy = model;
  completionCopy = completion;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__HAP2AccessoryServer_Unpaired__pairingDriver_validatePairingCert_model_completion___block_invoke;
  v18[3] = &unk_2786D6C08;
  objc_copyWeak(&v22, &location);
  v15 = certCopy;
  v19 = v15;
  v16 = modelCopy;
  v20 = v16;
  v17 = completionCopy;
  v21 = v17;
  [operationQueue addBlock:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __84__HAP2AccessoryServer_Unpaired__pairingDriver_validatePairingCert_model_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [(HAP2AccessoryServer *)WeakRetained pairDelegate];
  v3 = v2;
  if (v2)
  {
    [v2 accessoryServer:WeakRetained validatePairingCert:*(a1 + 32) model:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)pairingDriver:(id)driver didFinishAuthWithError:(id)error
{
  driverCopy = driver;
  errorCopy = error;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__HAP2AccessoryServer_Unpaired__pairingDriver_didFinishAuthWithError___block_invoke;
  v10[3] = &unk_2786D6EB0;
  objc_copyWeak(&v12, &location);
  v9 = errorCopy;
  v11 = v9;
  [operationQueue addBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __70__HAP2AccessoryServer_Unpaired__pairingDriver_didFinishAuthWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [(HAP2AccessoryServer *)WeakRetained pairDelegate];
  v3 = v2;
  if (v2)
  {
    [v2 accessoryServer:WeakRetained didFinishAuthWithError:*(a1 + 32)];
  }
}

- (void)pairingDriver:(id)driver confirmSoftwareAuthUUID:(id)d token:(id)token completion:(id)completion
{
  driverCopy = driver;
  dCopy = d;
  tokenCopy = token;
  completionCopy = completion;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __88__HAP2AccessoryServer_Unpaired__pairingDriver_confirmSoftwareAuthUUID_token_completion___block_invoke;
  v18[3] = &unk_2786D6C08;
  objc_copyWeak(&v22, &location);
  v15 = dCopy;
  v19 = v15;
  v16 = tokenCopy;
  v20 = v16;
  v17 = completionCopy;
  v21 = v17;
  [operationQueue addBlock:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __88__HAP2AccessoryServer_Unpaired__pairingDriver_confirmSoftwareAuthUUID_token_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [(HAP2AccessoryServer *)WeakRetained pairDelegate];
  v3 = v2;
  if (v2)
  {
    [v2 accessoryServer:WeakRetained confirmSoftwareAuthUUID:*(a1 + 32) token:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)pairingDriver:(id)driver authenticateSoftwareAuthUUID:(id)d token:(id)token completion:(id)completion
{
  driverCopy = driver;
  dCopy = d;
  tokenCopy = token;
  completionCopy = completion;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __93__HAP2AccessoryServer_Unpaired__pairingDriver_authenticateSoftwareAuthUUID_token_completion___block_invoke;
  v18[3] = &unk_2786D6C08;
  objc_copyWeak(&v22, &location);
  v15 = dCopy;
  v19 = v15;
  v16 = tokenCopy;
  v20 = v16;
  v17 = completionCopy;
  v21 = v17;
  [operationQueue addBlock:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __93__HAP2AccessoryServer_Unpaired__pairingDriver_authenticateSoftwareAuthUUID_token_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [(HAP2AccessoryServer *)WeakRetained pairDelegate];
  v3 = v2;
  if (v2)
  {
    [v2 accessoryServer:WeakRetained authenticateSoftwareAuthUUID:*(a1 + 32) token:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)pairingDriver:(id)driver doesRequireSetupCodeForAccessory:(id)accessory completion:(id)completion
{
  driverCopy = driver;
  accessoryCopy = accessory;
  completionCopy = completion;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__HAP2AccessoryServer_Unpaired__pairingDriver_doesRequireSetupCodeForAccessory_completion___block_invoke;
  v13[3] = &unk_2786D6FA0;
  objc_copyWeak(&v15, &location);
  v12 = completionCopy;
  v14 = v12;
  [operationQueue addBlock:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __91__HAP2AccessoryServer_Unpaired__pairingDriver_doesRequireSetupCodeForAccessory_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [(HAP2AccessoryServer *)WeakRetained pairDelegate];
  v3 = v2;
  if (v2)
  {
    [v2 accessoryServer:WeakRetained doesRequireSetupCodeWithCompletion:*(a1 + 32)];
  }
}

- (void)pairingDriver:(id)driver doesRequirePermission:(unint64_t)permission accessory:(id)accessory completion:(id)completion
{
  driverCopy = driver;
  accessoryCopy = accessory;
  completionCopy = completion;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__HAP2AccessoryServer_Unpaired__pairingDriver_doesRequirePermission_accessory_completion___block_invoke;
  v15[3] = &unk_2786D6BB8;
  objc_copyWeak(v17, &location);
  v17[1] = permission;
  v14 = completionCopy;
  v16 = v14;
  [operationQueue addBlock:v15];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __90__HAP2AccessoryServer_Unpaired__pairingDriver_doesRequirePermission_accessory_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [(HAP2AccessoryServer *)WeakRetained pairDelegate];
  v3 = v2;
  if (v2)
  {
    [v2 accessoryServer:WeakRetained doesRequirePermission:*(a1 + 48) completion:*(a1 + 32)];
  }
}

- (void)pairingDriver:(id)driver didSaveRemotePairingIdentity:(id)identity completion:(id)completion
{
  driverCopy = driver;
  identityCopy = identity;
  completionCopy = completion;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__HAP2AccessoryServer_Unpaired__pairingDriver_didSaveRemotePairingIdentity_completion___block_invoke;
  v14[3] = &unk_2786D6BE0;
  objc_copyWeak(&v17, &location);
  v12 = completionCopy;
  v16 = v12;
  v13 = identityCopy;
  v15 = v13;
  [operationQueue addBlock:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __87__HAP2AccessoryServer_Unpaired__pairingDriver_didSaveRemotePairingIdentity_completion___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained browser];
  if (v3)
  {
    v4 = [HAPDeviceID alloc];
    v5 = [*(a1 + 32) identifier];
    v6 = [(HAPDeviceID *)v4 initWithDeviceIDString:v5];

    v7 = [*(a1 + 32) publicKey];
    v8 = [v7 data];

    [v3 savePublicKey:v8 forAccessoryWithID:v6 completion:*(a1 + 40)];
    v9 = [v3 storage];
    v10 = [WeakRetained deviceID];
    v11 = [v10 deviceIDString];
    v12 = [v9 keyBagForIdentifier:v11];

    v13 = [WeakRetained pairingDriver];
    v14 = [v13 pairingRequest];
    v15 = [v14 pairingIdentity];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = [v12 currentIdentity];
    }

    v20 = v17;

    v21 = [v20 identifier];
    v30 = 0;
    v22 = [v12 associateControllerIdentifier:v21 error:&v30];
    v23 = v30;

    if ((v22 & 1) == 0)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = WeakRetained;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v27 = v29 = v24;
        *buf = 138543618;
        v32 = v27;
        v33 = 2112;
        v34 = v23;
        _os_log_impl(&dword_22AADC000, v26, OS_LOG_TYPE_ERROR, "%{public}@Unable to associate controller identifier with accessory identifier: %@", buf, 0x16u);

        v24 = v29;
      }

      objc_autoreleasePoolPop(v24);
    }
  }

  else
  {
    v18 = *(a1 + 40);
    v19 = [MEMORY[0x277CCA9B8] hapErrorWithCode:6];
    (*(v18 + 16))(v18, v19);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)pairingDriver:(id)driver didRequestLocalPairingIdentityWithCompletion:(id)completion
{
  driverCopy = driver;
  completionCopy = completion;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __92__HAP2AccessoryServer_Unpaired__pairingDriver_didRequestLocalPairingIdentityWithCompletion___block_invoke;
  v10[3] = &unk_2786D6FA0;
  objc_copyWeak(&v12, &location);
  v9 = completionCopy;
  v11 = v9;
  [operationQueue addBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __92__HAP2AccessoryServer_Unpaired__pairingDriver_didRequestLocalPairingIdentityWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained browser];
  if (!v2)
  {
    v7 = *(a1 + 32);
    v5 = [MEMORY[0x277CCA9B8] hapErrorWithCode:6];
    v6 = *(v7 + 16);
    goto LABEL_5;
  }

  v3 = [WeakRetained pairingDriver];
  v4 = [v3 pairingRequest];
  v5 = [v4 pairingIdentity];

  if (v5)
  {
    v6 = *(*(a1 + 32) + 16);
LABEL_5:
    v6();
    goto LABEL_7;
  }

  v8 = [WeakRetained deviceID];
  [v2 retrieveLocalPairingIdentityForDeviceID:v8 completion:*(a1 + 32)];

  v5 = 0;
LABEL_7:
}

- (void)pairingDriver:(id)driver didRejectSetupCodeForAccessory:(id)accessory backoffInterval:(double)interval completion:(id)completion
{
  driverCopy = driver;
  accessoryCopy = accessory;
  completionCopy = completion;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __105__HAP2AccessoryServer_Unpaired__pairingDriver_didRejectSetupCodeForAccessory_backoffInterval_completion___block_invoke;
  v15[3] = &unk_2786D6BB8;
  objc_copyWeak(v17, &location);
  v17[1] = *&interval;
  v14 = completionCopy;
  v16 = v14;
  [operationQueue addBlock:v15];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

void __105__HAP2AccessoryServer_Unpaired__pairingDriver_didRejectSetupCodeForAccessory_backoffInterval_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [(HAP2AccessoryServer *)WeakRetained pairDelegate];
  v3 = v2;
  if (v2)
  {
    [v2 accessoryServer:WeakRetained didRejectSetupCodeWithBackoffInterval:*(a1 + 32) completion:*(a1 + 48)];
  }
}

- (void)pairingDriver:(id)driver didCompleteWithError:(id)error
{
  driverCopy = driver;
  errorCopy = error;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__HAP2AccessoryServer_Unpaired__pairingDriver_didCompleteWithError___block_invoke;
  v10[3] = &unk_2786D6EB0;
  objc_copyWeak(&v12, &location);
  v9 = errorCopy;
  v11 = v9;
  [operationQueue addBlock:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __68__HAP2AccessoryServer_Unpaired__pairingDriver_didCompleteWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [(HAP2AccessoryServer *)WeakRetained pairDelegate];
  v3 = v2;
  if (v2)
  {
    [v2 accessoryServer:WeakRetained didCompleteWithError:*(a1 + 32)];
    [(HAP2AccessoryServer *)WeakRetained setPairDelegate:?];
  }
}

- (void)mergeWithNewlyDiscoveredUnpairedAccessoryServer:(id)server
{
  serverCopy = server;
  objc_initWeak(&location, self);
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__HAP2AccessoryServer_Unpaired__mergeWithNewlyDiscoveredUnpairedAccessoryServer___block_invoke;
  v7[3] = &unk_2786D6EB0;
  objc_copyWeak(&v9, &location);
  v6 = serverCopy;
  v8 = v6;
  [operationQueue addBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __81__HAP2AccessoryServer_Unpaired__mergeWithNewlyDiscoveredUnpairedAccessoryServer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(HAP2AccessoryServer *)WeakRetained _updateServerMetadata:0 controller:?];
}

- (void)becomePairedWithAccessoryServer:(id)server
{
  v14 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEFAULT, "%@ Accessory is now paired", buf, 0xCu);
  }

  [(HAP2AccessoryServer *)self setInternallyPaired:?];
  [(HAP2AccessoryServer *)self setInternalPairingDriver:?];
  objc_initWeak(buf, self);
  operationQueue = [(HAP2AccessoryServer *)self operationQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__HAP2AccessoryServer_Unpaired__becomePairedWithAccessoryServer___block_invoke;
  v9[3] = &unk_2786D6EB0;
  objc_copyWeak(&v11, buf);
  v7 = serverCopy;
  v10 = v7;
  [operationQueue addBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);

  v8 = *MEMORY[0x277D85DE8];
}

void __65__HAP2AccessoryServer_Unpaired__becomePairedWithAccessoryServer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [v2 controller];
  [(HAP2AccessoryServer *)WeakRetained _updateServerMetadata:v2 controller:v3];
}

- (id)identifyWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HAP2AccessoryServer_Unpaired__identifyWithCompletion___block_invoke;
  v8[3] = &unk_2786D6B90;
  objc_copyWeak(&v10, &location);
  v5 = completionCopy;
  v9 = v5;
  v6 = [(HAP2AccessoryServer *)self _delegateCancelableFor:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);

  return v6;
}

id __56__HAP2AccessoryServer_Unpaired__identifyWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([(HAP2AccessoryServer *)WeakRetained isInternallyPaired])
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:18];
    (*(v3 + 16))(v3, v4);

    v5 = +[HAP2Cancelable ignore];
  }

  else
  {
    v6 = [WeakRetained controller];
    v5 = [v6 unpairedIdentifyWithCompletion:*(a1 + 32)];
  }

  return v5;
}

- (id)pairWithDelegate:(id)delegate pairingRequest:(id)request
{
  delegateCopy = delegate;
  requestCopy = request;
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HAP2AccessoryServer_Unpaired__pairWithDelegate_pairingRequest___block_invoke;
  v14[3] = &unk_2786D6B68;
  v14[4] = self;
  v15 = delegateCopy;
  v16 = currentActivity;
  v17 = requestCopy;
  v9 = requestCopy;
  v10 = currentActivity;
  v11 = delegateCopy;
  v12 = [(HAP2AccessoryServer *)self _delegateCancelableFor:v14];

  return v12;
}

id __65__HAP2AccessoryServer_Unpaired__pairWithDelegate_pairingRequest___block_invoke(uint64_t a1)
{
  v2 = [(HAP2AccessoryServer *)*(a1 + 32) pairDelegate];

  if (v2)
  {
    v5 = a1 + 32;
    v3 = *(a1 + 32);
    v4 = *(v5 + 8);
    v6 = [MEMORY[0x277CCA9B8] hapErrorWithCode:5];
    [v4 accessoryServer:v3 didCompleteWithError:v6];

LABEL_5:
    v11 = +[HAP2Cancelable ignore];
    goto LABEL_6;
  }

  v7 = [(HAP2AccessoryServer *)*(a1 + 32) isInternallyPaired];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v7)
  {
    v10 = [MEMORY[0x277CCA9B8] hapErrorWithCode:18];
    [v8 accessoryServer:v9 didCompleteWithError:v10];

    goto LABEL_5;
  }

  [(HAP2AccessoryServer *)*(a1 + 32) setPairDelegate:?];
  [*(a1 + 48) begin];
  v14 = *(a1 + 48);
  v13 = [(HAP2AccessoryServer *)*(a1 + 32) internalPairingDriver];
  v11 = [v13 pairAccessory:*(a1 + 32) pairingRequest:*(a1 + 56) delegate:*(a1 + 32)];

  __HMFActivityScopeLeave();
LABEL_6:

  return v11;
}

@end