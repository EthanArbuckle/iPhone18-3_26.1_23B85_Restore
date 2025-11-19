@interface HMDMatterAccessoryAdapter
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5;
- (BOOL)isEndpointConformingToDeviceTypeID:(unsigned int)a3 endpointID:(id)a4;
- (BOOL)rvcProgressSupportedForEndpoint:(id)a3;
- (BOOL)shouldEncodeNotifications;
- (BOOL)supportsMTRPath:(id)a3;
- (BOOL)supportsRVC;
- (BOOL)updateNativeMatterSupportForAccessoryServer:(id)a3;
- (BOOL)useMatterPlugin;
- (HMDMatterAccessoryAdapter)initWithAccessory:(id)a3;
- (HMDMatterAccessoryProtocol)accessory;
- (HMFAsyncContext)workContext;
- (HMFMessageDispatcher)msgDispatcher;
- (MTRDevice)matterDevice;
- (NSArray)attributePaths;
- (NSArray)commandPaths;
- (NSArray)endpoints;
- (NSArray)eventPaths;
- (NSArray)matterPaths;
- (NSArray)mtrAttributePaths;
- (NSArray)mtrCommandPaths;
- (NSArray)mtrEventPaths;
- (NSArray)mtrPaths;
- (NSArray)rvcAreas;
- (NSArray)rvcMaps;
- (NSArray)rvcRooms;
- (NSArray)rvcZones;
- (NSDictionary)bulletinBoardNotificationByEndpoint;
- (NSDictionary)rvcCleaningPayload;
- (NSDictionary)rvcServiceAreaFeatureMapByEndpoint;
- (NSUUID)messageTargetUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)_addMatterPaths:(id)a3;
- (id)_fetchAccessoryConfigurations;
- (id)_fetchAttributePathsForCluster:(id)a3 endpoint:(id)a4;
- (id)_fetchCommandPathsForCluster:(id)a3 endpoint:(id)a4;
- (id)_fetchDeviceTypesForEndpoints:(id)a3;
- (id)_fetchEventPathsForCluster:(id)a3 endpoint:(id)a4;
- (id)_fetchMatterPaths;
- (id)_fetchMatterPathsForCluster:(id)a3 endpoint:(id)a4;
- (id)_fetchMatterPathsForEndpoint:(id)a3;
- (id)_fetchRVCConfigForEndpoint:(id)a3 rvcMaps:(id)a4 rvcAreas:(id)a5 featureMaps:(id)a6;
- (id)_fetchRVCServiceAreaFeatureMapFromEndpoint:(id)a3;
- (id)_fetchRVCSupportedAreasFromEndpoint:(id)a3;
- (id)_fetchRVCSupportedMapsFromEndpoint:(id)a3;
- (id)_readFromAttributePath:(id)a3 retryTimeout:(double)a4;
- (id)_removeMatterPaths:(id)a3;
- (id)_runAccessoryTransactions:(id)a3;
- (id)accessoryServer;
- (id)addMatterPaths:(id)a3;
- (id)backingStoreTransactionWithName:(id)a3;
- (id)climateBulletinSupportedMatterEventPathsForEndpointID:(id)a3;
- (id)deviceTypesForEndpoint:(id)a3;
- (id)endpointsConformingToDeviceTypeID:(unsigned int)a3;
- (id)fetchConfiguration;
- (id)fetchRVCConfig;
- (id)fetchRvcCleaningPayloadForEndpointID:(id)a3;
- (id)firstRVCEndpointID;
- (id)hapAccessory;
- (id)matterAccessory;
- (id)matterPathWithUUID:(id)a3;
- (id)messagePayloadForServiceAreas;
- (id)readFromAttributePath:(id)a3 retryTimeout:(double)a4;
- (id)readFromAttributePaths:(id)a3 retryTimeout:(double)a4;
- (id)removeMatterPaths:(id)a3;
- (id)reportFromAttributePathRead:(id)a3 retryTimeout:(double)a4;
- (id)runTransactions:(id)a3;
- (id)rvcRoomForArea:(id)a3;
- (id)rvcZoneForMap:(id)a3;
- (id)shortDescription;
- (id)uuidForName:(id)a3 nameID:(id)a4;
- (void)_forwardServiceAreaChangesToAllDevices;
- (void)_handleAttributeChangedNotification:(id)a3;
- (void)_updateFeatureMaps:(id)a3;
- (void)_updateRVCMaps:(id)a3 areas:(id)a4;
- (void)addMatterPathModel:(id)a3 message:(id)a4;
- (void)configureMatterAccessory;
- (void)convertMatterAccessoryToNativeMatter:(BOOL)a3;
- (void)createNotifications;
- (void)device:(id)a3 stateChanged:(unint64_t)a4;
- (void)didUpdatePairingsForAccessoryServer:(id)a3;
- (void)didUpdateRequiresThreadRouterForAccessoryServer:(id)a3;
- (void)executeCascadeDonationsForServiceAreaItems:(id)a3;
- (void)handleActivateMatterPairingModeAndCreateSetupPayloadStringMessage:(id)a3;
- (void)handleActivateMatterPairingModeMessage:(id)a3;
- (void)handleAttributeReport:(id)a3 dictionary:(id)a4 hapAccessory:(id)a5;
- (void)handleEventReport:(id)a3 dictionary:(id)a4 flow:(id)a5 hapAccessory:(id)a6;
- (void)handleFetchMatterPairingsMessage:(id)a3;
- (void)handleHomeNameChangedNotification:(id)a3;
- (void)handleMatterAttribute:(id)a3 dictionary:(id)a4;
- (void)handleMatterAttributeMessage:(id)a3;
- (void)handleMatterEvent:(id)a3 dictionary:(id)a4 flow:(id)a5;
- (void)handleMatterEventMessage:(id)a3;
- (void)handleNotification:(id)a3;
- (void)handleRawMatterEventDictionary:(id)a3 flow:(id)a4;
- (void)handleRemoteMatterRequestMessage:(id)a3;
- (void)handleRemoveCorrespondingSystemCommissionerMessage:(id)a3;
- (void)handleRemoveMatterPairingsMessage:(id)a3;
- (void)identifyEndpoint:(id)a3 identifyTime:(id)a4 message:(id)a5;
- (void)invokeCommand:(id)a3 fields:(id)a4 expectedValues:(id)a5 source:(unint64_t)a6 completion:(id)a7;
- (void)invokeCommands:(id)a3 completion:(id)a4;
- (void)readAttribute:(id)a3 params:(id)a4 completion:(id)a5;
- (void)readFromAttributePath:(id)a3 retryTimeout:(double)a4 completion:(id)a5;
- (void)registerForMessages;
- (void)removeMatterPathModel:(id)a3 message:(id)a4;
- (void)routeMessage:(id)a3 localHandler:(id)a4;
- (void)runTransactions:(id)a3 completion:(id)a4;
- (void)savePublicKey:(id)a3 username:(id)a4;
- (void)setBulletinBoardNotificationByEndpoint:(id)a3;
- (void)setMatterDevice:(id)a3;
- (void)setRvcCleaningPayload:(id)a3;
- (void)setTestRvcServiceAreaFeatureMapByEndpoint:(id)a3;
- (void)submitLogEventForEventReport:(id)a3;
- (void)submitServiceAreaChangesToCascade;
- (void)submitServiceAreaChangesToCascadeFromMessage:(id)a3;
- (void)testSetMTRPaths:(id)a3;
- (void)testSetMatterDevice:(id)a3 retryTimeout:(double)a4;
- (void)testSetMatterPaths:(id)a3;
- (void)unconfigure;
- (void)updateMatterPropertiesWithAccessoryModel:(id)a3 actions:(id)a4;
- (void)updateNotificationsWithEndpoints:(id)a3;
- (void)updateRvcRoomProgressWithValue:(id)a3 endpointID:(id)a4;
- (void)writeAttribute:(id)a3 value:(id)a4 timedWriteTimeout:(id)a5 completion:(id)a6;
@end

@implementation HMDMatterAccessoryAdapter

- (id)endpointsConformingToDeviceTypeID:(unsigned int)a3
{
  v3 = self;
  sub_2295FB338();

  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v4 = sub_22A4DD81C();

  return v4;
}

- (BOOL)isEndpointConformingToDeviceTypeID:(unsigned int)a3 endpointID:(id)a4
{
  v6 = a4;
  v7 = self;
  LOBYTE(a3) = sub_2295FBE68(a3, v6);

  return a3 & 1;
}

- (void)unconfigure
{
  v2 = self;
  sub_2296F8738();
}

- (void)configureMatterAccessory
{
  v2 = self;
  sub_2296F89D8();
}

- (BOOL)updateNativeMatterSupportForAccessoryServer:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_2296FBA98(v4);

  return self & 1;
}

- (void)savePublicKey:(id)a3 username:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = self;
  v8 = sub_22A4DB62C();
  v10 = v9;

  v11 = sub_22A4DD5EC();
  v13 = v12;

  sub_2296FC184(v8, v10, v11, v13);

  sub_2295798D4(v8, v10);
}

- (void)convertMatterAccessoryToNativeMatter:(BOOL)a3
{
  v3 = self;
  sub_2296FC900();
}

- (void)runTransactions:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_2295B994C;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  v9 = [(HMDMatterAccessoryAdapter *)v8 runTransactions:a3];
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v7;
  v12[4] = sub_229708038;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2296FB024;
  v12[3] = &block_descriptor_37;
  v11 = _Block_copy(v12);
  sub_2295A1C30(v6);

  [v9 getResultWithCompletion_];

  sub_2295571A0(v6);
  _Block_release(v11);
}

- (id)runTransactions:(id)a3
{
  sub_229562F68(0, &qword_27D87FD80, off_278666060);
  v4 = sub_22A4DD83C();
  v5 = self;
  v6 = sub_2296FD318(v4);

  return v6;
}

- (void)updateMatterPropertiesWithAccessoryModel:(id)a3 actions:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2296FD980(v6, v7);
}

- (void)identifyEndpoint:(id)a3 identifyTime:(id)a4 message:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = self;
  sub_2296FFC04(a3, v10, v11);
}

- (void)handleMatterAttribute:(id)a3 dictionary:(id)a4
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v6 = sub_22A4DD49C();
  if (a3)
  {
    v7 = a3;
    v8 = self;
    sub_2297EDBBC(v7, v6);
  }
}

- (void)handleMatterEvent:(id)a3 dictionary:(id)a4 flow:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = self;
  sub_229800614(v7, v8);
}

- (void)handleRawMatterEventDictionary:(id)a3 flow:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v10 = sub_22A4DD49C();
  v11 = sub_22A4DD9DC();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = v10;
  v12[6] = a4;
  v13 = a4;
  v14 = self;
  sub_22957F3C0(0, 0, v9, &unk_22A580930, v12);
}

- (id)fetchRvcCleaningPayloadForEndpointID:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_2297EF658(v4);

  return v6;
}

- (void)handleHomeNameChangedNotification:(id)a3
{
  v4 = sub_22A4DB21C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB1DC();
  v9 = self;
  sub_229700C10(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)handleEventReport:(id)a3 dictionary:(id)a4 flow:(id)a5 hapAccessory:(id)a6
{
  v9 = objc_opt_self();
  v12 = a3;
  v10 = a5;
  v11 = self;
  LODWORD(v9) = [objc_msgSend(v9 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_229800614(v12, v10);
  }
}

- (void)handleAttributeReport:(id)a3 dictionary:(id)a4 hapAccessory:(id)a5
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v7 = sub_22A4DD49C();
  v8 = objc_opt_self();
  v9 = a3;
  v10 = self;
  LODWORD(v8) = [objc_msgSend(v8 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_5;
    }

    v9 = v9;
    sub_2297EDBBC(v9, v7);
  }

LABEL_5:
}

- (void)device:(id)a3 stateChanged:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  HMDMatterAccessoryAdapter.device(_:stateChanged:)(v6, a4);
}

- (void)didUpdatePairingsForAccessoryServer:(id)a3
{
  v4 = a3;
  v5 = self;
  _sSo25HMDMatterAccessoryAdapterC13HomeKitDaemonE17didUpdatePairings3forySo20HMMTRAccessoryServerC_tF_0();
}

- (void)didUpdateRequiresThreadRouterForAccessoryServer:(id)a3
{
  v4 = a3;
  v5 = self;
  HMDMatterAccessoryAdapter.didUpdateRequiresThreadRouter(for:)(v4);
}

- (id)climateBulletinSupportedMatterEventPathsForEndpointID:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_229767EE8(v4);

  sub_229562F68(0, &qword_27D87E358, off_278666270);
  sub_229768968();
  v6 = sub_22A4DDB5C();

  return v6;
}

+ (id)messageBindingForDispatcher:(id)a3 message:(id)a4 receiver:(id)a5
{
  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = sub_2297EB4FC(v9, a5);

  swift_unknownObjectRelease();

  return v10;
}

- (void)registerForMessages
{
  v2 = self;
  sub_2297E3E40();
}

- (void)routeMessage:(id)a3 localHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_2297E4584(v8, sub_2296695FC, v7);
}

- (void)handleRemoteMatterRequestMessage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2297E49F8(v4);
}

- (void)handleFetchMatterPairingsMessage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2297E5290(v4);
}

- (void)handleRemoveCorrespondingSystemCommissionerMessage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2297E5664(v4);
}

- (void)handleRemoveMatterPairingsMessage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2297E5AE8(v4);
}

- (void)handleMatterEventMessage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2297E68FC(v4);
}

- (void)handleMatterAttributeMessage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2297E9A28(v4);
}

- (void)handleActivateMatterPairingModeMessage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2297EAC58(v4, sub_22979B9D0, &unk_283CE61A0, sub_2297EC628, &block_descriptor_6_0);
}

- (void)handleActivateMatterPairingModeAndCreateSetupPayloadStringMessage:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2297EAC58(v4, sub_22979C2CC, &unk_283CE6150, sub_2297EC604, &block_descriptor_40);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t91 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t91, &__block_literal_global_405_126373);
  }

  v3 = logCategory__hmf_once_v92;

  return v3;
}

void __40__HMDMatterAccessoryAdapter_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v92;
  logCategory__hmf_once_v92 = v1;
}

- (HMDMatterAccessoryProtocol)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (id)shortDescription
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(HMDMatterAccessoryAdapter *)self accessory];
  v4 = [v3 shortDescription];
  v5 = [v2 stringWithFormat:@"%@", v4];

  return v5;
}

- (OS_dispatch_queue)messageReceiveQueue
{
  v2 = [(HMDMatterAccessoryAdapter *)self accessory];
  v3 = [v2 messageReceiveQueue];

  return v3;
}

- (NSUUID)messageTargetUUID
{
  v2 = [(HMDMatterAccessoryAdapter *)self accessory];
  v3 = [v2 messageTargetUUID];

  return v3;
}

- (HMFMessageDispatcher)msgDispatcher
{
  v2 = [(HMDMatterAccessoryAdapter *)self accessory];
  v3 = [v2 msgDispatcher];

  return v3;
}

- (NSDictionary)rvcCleaningPayload
{
  os_unfair_lock_lock_with_options();
  v3 = self->_rvcCleaningPayload;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setRvcCleaningPayload:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  rvcCleaningPayload = self->_rvcCleaningPayload;
  self->_rvcCleaningPayload = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)submitLogEventForEventReport:(id)a3
{
  v16 = a3;
  v4 = +[HMDCoreData featuresDataSource];
  v5 = [v4 isRVCEnabled];

  v6 = v16;
  if (v5)
  {
    v7 = [v16 value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v9)
    {
      v10 = [v9 completionErrorCode];
      v11 = [v9 totalOperationalTime];
      v12 = [HMDRVCOperationCompletionLogEvent eventWithErrorCode:v10 totalOperationalTime:v11];

      v13 = [(HMDMatterAccessoryAdapter *)self accessory];
      v14 = [v13 home];
      v15 = [v14 logEventSubmitter];
      [v15 submitLogEvent:v12];
    }

    v6 = v16;
  }
}

- (BOOL)shouldEncodeNotifications
{
  v2 = [(HMDMatterAccessoryAdapter *)self bulletinBoardNotificationByEndpoint];
  v3 = v2 != 0;

  return v3;
}

- (NSDictionary)bulletinBoardNotificationByEndpoint
{
  os_unfair_lock_lock_with_options();
  v3 = self->_bulletinBoardNotificationByEndpoint;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setBulletinBoardNotificationByEndpoint:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  bulletinBoardNotificationByEndpoint = self->_bulletinBoardNotificationByEndpoint;
  self->_bulletinBoardNotificationByEndpoint = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateNotificationsWithEndpoints:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMatterAccessoryAdapter *)self accessory];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 home];
    if (v7)
    {
      v8 = [(HMDMatterAccessoryAdapter *)self bulletinBoardNotificationByEndpoint];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __62__HMDMatterAccessoryAdapter_updateNotificationsWithEndpoints___block_invoke;
      v39[3] = &unk_2786799E0;
      v34 = v4;
      v9 = v4;
      v40 = v9;
      v10 = [v8 na_filter:v39];
      v11 = [v10 mutableCopy];

      if (!v11)
      {
        v11 = [MEMORY[0x277CBEB38] dictionary];
      }

      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __62__HMDMatterAccessoryAdapter_updateNotificationsWithEndpoints___block_invoke_2;
      v35[3] = &unk_278679A08;
      v12 = v11;
      v36 = v12;
      v33 = v7;
      v13 = v7;
      v37 = v13;
      v14 = v6;
      v38 = v14;
      [v9 na_each:v35];
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [(HMDMatterAccessoryAdapter *)v16 bulletinBoardNotificationByEndpoint];
        *buf = 138543874;
        v42 = v18;
        v43 = 2112;
        v44 = v19;
        v45 = 2112;
        v46 = v12;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Setting bulletinBoardNotificationByEndpoint from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v20 = [v12 copy];
      [(HMDMatterAccessoryAdapter *)v16 setBulletinBoardNotificationByEndpoint:v20];

      v21 = [v13 homeManager];
      v22 = [v14 uuid];
      [v21 updateGenerationCounterWithReason:@"Bulletin Notifications Supported Updated" sourceUUID:v22 shouldNotifyClients:1];

      v23 = [v13 accessoryBulletinNotificationManager];
      [v23 updateEndpointRegistrationsForAccessory:v14 endpoints:v9];

      v7 = v33;
      v4 = v34;
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      v29 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v31;
        v43 = 2112;
        v44 = v29;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Error updating endpoint set for accessory=%@, nil home", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Error updating endpoint set, nil accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __62__HMDMatterAccessoryAdapter_updateNotificationsWithEndpoints___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];

  if (!v3)
  {
    v4 = [*(a1 + 40) accessoryBulletinNotificationManager];
    v5 = [v4 bulletinBoardNotificationForAccessory:*(a1 + 48) endpointID:v6];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

- (void)updateRvcRoomProgressWithValue:(id)a3 endpointID:(id)a4
{
  v48[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
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

    v11 = [v10 na_map:&__block_literal_global_389_126567];
    if ([v11 count])
    {
      v12 = [v11 count];
      v13 = [(HMDMatterAccessoryAdapter *)self rvcAreas];
      v14 = [v13 count];

      if (v12 == v14)
      {
        v15 = [(HMDMatterAccessoryAdapter *)self rvcCleaningPayload];

        if (v15)
        {
          v16 = [(HMDMatterAccessoryAdapter *)self rvcCleaningPayload];
          v17 = [v16 mutableCopy];

          [v17 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"HMDRVCAllServiceAreasCleanedMessageKey"];
          v18 = [v17 copy];
          [(HMDMatterAccessoryAdapter *)self setRvcCleaningPayload:v18];
        }

        else
        {
          v47 = @"HMDRVCAllServiceAreasCleanedMessageKey";
          v48[0] = MEMORY[0x277CBEC38];
          v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
          [(HMDMatterAccessoryAdapter *)self setRvcCleaningPayload:v37];
        }
      }

      else
      {
        v27 = [(HMDMatterAccessoryAdapter *)self rvcAreas];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __71__HMDMatterAccessoryAdapter_updateRvcRoomProgressWithValue_endpointID___block_invoke_394;
        v39[3] = &unk_2786799B8;
        v40 = v11;
        v28 = [v27 na_map:v39];

        v29 = objc_autoreleasePoolPush();
        v30 = self;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138543618;
          v44 = v32;
          v45 = 2112;
          v46 = v28;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Updating roomNames=%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v29);
        v33 = [(HMDMatterAccessoryAdapter *)v30 rvcCleaningPayload];

        if (v33)
        {
          v34 = [(HMDMatterAccessoryAdapter *)v30 rvcCleaningPayload];
          v35 = [v34 mutableCopy];

          [v35 setObject:v28 forKeyedSubscript:@"HMDRVCCompletedServiceAreasMessageKey"];
          v36 = [v35 copy];
          [(HMDMatterAccessoryAdapter *)v30 setRvcCleaningPayload:v36];
        }

        else
        {
          v41 = @"HMDRVCCompletedServiceAreasMessageKey";
          v42 = v28;
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
          [(HMDMatterAccessoryAdapter *)v30 setRvcCleaningPayload:v35];
        }
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      v24 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v44 = v26;
        _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@completedAreaIDs is empty", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Progress payload is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }

  v38 = *MEMORY[0x277D85DE8];
}

id __71__HMDMatterAccessoryAdapter_updateRvcRoomProgressWithValue_endpointID___block_invoke_394(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 areaID];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = [v3 areaInfo];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v8 locationInfo];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = [v11 locationName];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id __71__HMDMatterAccessoryAdapter_updateRvcRoomProgressWithValue_endpointID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
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
  v5 = [v4 status];
  v6 = 0;
  if ([v5 isEqual:&unk_283E72D88])
  {
    v6 = [v4 areaID];
  }

  return v6;
}

- (void)_handleAttributeChangedNotification:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMatterAccessoryAdapter *)self workQueue];
  dispatch_assert_queue_V2(v5);

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543362;
    v39 = v9;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Handling attribute changed notification", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [v4 object];
  if ([v10 conformsToProtocol:&unk_283F010C8])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v12 home];
  v14 = [v4 userInfo];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 hmf_numberForKey:@"HMDMatterAttributeChangedNotificationEndpointIDKey"];
    v17 = [v15 hmf_numberForKey:@"HMDMatterAttributeChangedNotificationClusterIDKey"];
    v18 = [v15 hmf_numberForKey:@"HMDMatterAttributeChangedNotificationAttributeIDKey"];
    if ([v16 isEqual:&unk_283E72C80] && objc_msgSend(v17, "isEqual:", &unk_283E72C98) && objc_msgSend(v18, "isEqual:", &unk_283E72C68))
    {
      v19 = [v15 valueForKey:@"HMDMatterAttributeChangedNotificationDecodedValueKey"];
      v20 = [MEMORY[0x277CBEB58] set];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __65__HMDMatterAccessoryAdapter__handleAttributeChangedNotification___block_invoke;
      v36[3] = &unk_2786845E8;
      v21 = v20;
      v37 = v21;
      [v19 na_each:v36];
      v35 = [v21 copy];
      if (![v35 hmf_isEmpty] || objc_msgSend(v19, "hmf_isEmpty"))
      {
        v33 = v21;
        v34 = v19;
        context = objc_autoreleasePoolPush();
        v22 = v7;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543618;
          v39 = v31;
          v40 = 2112;
          v41 = v35;
          _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, "%{public}@Updating endpoints=%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        [(HMDMatterAccessoryAdapter *)v22 updateNotificationsWithEndpoints:v35];
        v21 = v33;
        v19 = v34;
      }
    }

    if (-[HMDMatterAccessoryAdapter supportsRVC](v7, "supportsRVC", v31) && [v17 isEqual:&unk_283E72D40] && ((objc_msgSend(v18, "isEqual:", &unk_283E72CC8) & 1) != 0 || (objc_msgSend(v18, "isEqual:", &unk_283E72CB0) & 1) != 0 || objc_msgSend(v18, "isEqual:", &unk_283E72D58)))
    {
      v24 = [(HMDMatterAccessoryAdapter *)v7 fetchRVCConfig];
    }

    if (-[HMDMatterAccessoryAdapter supportsRVC](v7, "supportsRVC") && [v13 isCurrentDeviceConfirmedPrimaryResident] && objc_msgSend(v17, "isEqual:", &unk_283E72D40) && objc_msgSend(v18, "isEqual:", &unk_283E72D70) && -[HMDMatterAccessoryAdapter rvcProgressSupportedForEndpoint:](v7, "rvcProgressSupportedForEndpoint:", v16))
    {
      v25 = [v15 objectForKeyedSubscript:@"HMDMatterAttributeChangedNotificationDecodedValueKey"];
      [(HMDMatterAccessoryAdapter *)v7 updateRvcRoomProgressWithValue:v25 endpointID:v16];
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = v7;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v39 = v29;
      v40 = 2112;
      v41 = v4;
      _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Received HMDMatterAttributeChangedNotification with undefined payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __65__HMDMatterAccessoryAdapter__handleAttributeChangedNotification___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v5;
  if (v5 && (isKindOfClass & 1) != 0)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

- (void)createNotifications
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(HMDMatterAccessoryAdapter *)self accessory];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 home];
    if (v5)
    {
      if ([v4 isNativeMatter])
      {
        v6 = [MEMORY[0x277CD51C0] attributePathWithEndpointID:&unk_283E72C80 clusterID:&unk_283E72C98 attributeID:&unk_283E72C68];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __48__HMDMatterAccessoryAdapter_createNotifications__block_invoke_375;
        v26[3] = &unk_278689230;
        v26[4] = self;
        [(HMDMatterAccessoryAdapter *)self readAttribute:v6 params:0 completion:v26];
LABEL_5:

LABEL_21:
        goto LABEL_22;
      }

      v19 = [v5 featuresDataSource];
      v20 = [v19 isHomeActivityStateFeatureEnabled];

      if (v20)
      {
        v21 = v4;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        v6 = v22;

        if ([v6 supportsClimateAutomations])
        {
          v23 = [v21 matterNodeID];
          v24 = [v23 integerValue];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __48__HMDMatterAccessoryAdapter_createNotifications__block_invoke;
          v27[3] = &unk_2786899A0;
          v27[4] = self;
          [v5 readAttributeWithNodeId:v24 endpointId:&unk_283E72C80 clusterId:&unk_283E72C98 attributeId:&unk_283E72C68 params:0 completion:v27];
        }

        goto LABEL_5;
      }

      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v29 = v14;
        v15 = "%{public}@Not creating BulletinBoardNotifications because this accessory is not a Native Matter accessory";
        v16 = v13;
        v17 = OS_LOG_TYPE_INFO;
        v18 = 12;
        goto LABEL_19;
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v14;
        v30 = 2112;
        v31 = v12;
        v15 = "%{public}@Error creating BulletinBoardNotifications for accessory=%@, home is nil";
        v16 = v13;
        v17 = OS_LOG_TYPE_ERROR;
        v18 = 22;
LABEL_19:
        _os_log_impl(&dword_229538000, v16, v17, v15, buf, v18);
      }
    }

    objc_autoreleasePoolPop(v11);
    goto LABEL_21;
  }

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v10;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Error creating BulletinBoardNotifications, cannot read partslist without accessory", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v7);
LABEL_22:

  v25 = *MEMORY[0x277D85DE8];
}

void __48__HMDMatterAccessoryAdapter_createNotifications__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      *buf = 138543874;
      v43 = v10;
      v44 = 2112;
      v45 = v11;
      v46 = 2112;
      v47 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Error reading PartsList on accessory=%@ error=%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v12 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v14 && ![v14 hmf_isEmpty])
    {
      v19 = [v14 objectAtIndexedSubscript:0];
      v20 = [v19 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v20;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;

      if (v22)
      {
        v23 = [v22 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        v25 = v24;

        v41 = v25;
        v26 = [v25 na_map:&__block_literal_global_373];
        v27 = v26;
        v28 = MEMORY[0x277CBEBF8];
        if (v26)
        {
          v28 = v26;
        }

        v29 = v28;

        v30 = objc_autoreleasePoolPush();
        v31 = *(a1 + 32);
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543618;
          v43 = v33;
          v44 = 2112;
          v45 = v29;
          _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Creating notifications for endpoints=%@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v30);
        v34 = *(a1 + 32);
        v35 = [MEMORY[0x277CBEB98] setWithArray:v29];
        [v34 updateNotificationsWithEndpoints:v35];
      }

      else
      {
        v36 = objc_autoreleasePoolPush();
        v37 = *(a1 + 32);
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138543362;
          v43 = v39;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Accessory Missing data key", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v36);
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 32);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v43 = v18;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Accessory returned no data for reading PartsList", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

void __48__HMDMatterAccessoryAdapter_createNotifications__block_invoke_375(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      v24 = 138543874;
      v25 = v10;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Error reading PartsList on accessory=%@ error=%@", &v24, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v12 = [v5 hmf_arrayForKey:*MEMORY[0x277CD51A0]];
    v13 = [v12 na_map:&__block_literal_global_377_126589];
    v14 = v13;
    v15 = MEMORY[0x277CBEBF8];
    if (v13)
    {
      v15 = v13;
    }

    v16 = v15;

    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v20;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Creating notifications for endpoints=%@", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = *(a1 + 32);
    v22 = [MEMORY[0x277CBEB98] setWithArray:v16];
    [v21 updateNotificationsWithEndpoints:v22];
  }

  v23 = *MEMORY[0x277D85DE8];
}

id __48__HMDMatterAccessoryAdapter_createNotifications__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 hmf_dictionaryForKey:*MEMORY[0x277CD50D8]];
  v3 = [v2 hmf_numberForKey:*MEMORY[0x277CD51A0]];

  return v3;
}

id __48__HMDMatterAccessoryAdapter_createNotifications__block_invoke_371(uint64_t a1, void *a2)
{
  v2 = [a2 hmf_dictionaryForKey:*MEMORY[0x277CD50D8]];
  v3 = [v2 hmf_numberForKey:*MEMORY[0x277CD51A0]];

  return v3;
}

- (void)handleNotification:(id)a3
{
  v4 = a3;
  v5 = [(HMDMatterAccessoryAdapter *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__HMDMatterAccessoryAdapter_handleNotification___block_invoke;
  v7[3] = &unk_27868A750;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __48__HMDMatterAccessoryAdapter_handleNotification___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) name];
  if ([v2 isEqualToString:@"HMDMatterAttributeChangedNotification"])
  {
    [*(a1 + 40) _handleAttributeChangedNotification:*(a1 + 32)];
  }

  else if ([v2 isEqualToString:@"HMDResidentDeviceConfirmedStateChangedNotification"])
  {
    v3 = [*(a1 + 40) accessory];
    v4 = [v3 home];

    v5 = [*(a1 + 32) userInfo];
    v6 = [v5 objectForKeyedSubscript:@"HMDResidentDeviceHomeUUIDNotificationKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v4 uuid];
    v10 = [v8 hmf_isEqualToUUID:v9];

    if (v10)
    {
      [*(a1 + 40) createNotifications];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = *(a1 + 40);
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = HMFGetLogIdentifier();
        v16 = 138543618;
        v17 = v14;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring resident update for other home: %@", &v16, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)addMatterPathModel:(id)a3 message:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 uuid];
  v9 = [(HMDMatterAccessoryAdapter *)self matterPathWithUUID:v8];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v13;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Can't add an existing matter path: %@.", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v7 respondWithError:v14];
  }

  else
  {
    v15 = [HMDMatterPath alloc];
    v16 = [(HMDMatterAccessoryAdapter *)self accessory];
    v9 = [(HMDMatterPath *)v15 initWithPathModel:v6 accessory:v16];

    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = HMFGetLogIdentifier();
      v26 = 138543618;
      v27 = v20;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Adding new matter path: %@.", &v26, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    os_unfair_lock_lock_with_options();
    hmdMatterPaths = v18->_hmdMatterPaths;
    if (!hmdMatterPaths)
    {
      v22 = [MEMORY[0x277CBEB18] array];
      v23 = v18->_hmdMatterPaths;
      v18->_hmdMatterPaths = v22;

      hmdMatterPaths = v18->_hmdMatterPaths;
    }

    [(NSMutableArray *)hmdMatterPaths addObject:v9];
    os_unfair_lock_unlock(&v18->_lock);
    v24 = [v7 transactionResult];
    [v24 markChanged];

    [v7 respondWithSuccess];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)removeMatterPathModel:(id)a3 message:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 uuid];
  v9 = [(HMDMatterAccessoryAdapter *)self matterPathWithUUID:v8];

  if (v9)
  {
    v10 = +[HMDCoreData featuresDataSource];
    v11 = [v10 isRVCEnabled];

    if (v11)
    {
      v12 = [(HMDMatterAccessoryAdapter *)self accessory];
      v13 = [v12 home];

      v14 = [v13 backingStore];
      v15 = [v7 name];
      v16 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v17 = [v14 transaction:v15 options:v16];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v37 = 0;
      v18 = [v13 actionSets];
      v28 = MEMORY[0x277D85DD0];
      v29 = 3221225472;
      v30 = __59__HMDMatterAccessoryAdapter_removeMatterPathModel_message___block_invoke;
      v31 = &unk_278679990;
      v32 = v9;
      v35 = buf;
      v33 = v7;
      v19 = v17;
      v34 = v19;
      [v18 hmf_enumerateWithAutoreleasePoolUsingBlock:&v28];

      if (*(*&buf[8] + 24) == 1)
      {
        [v19 run];
      }

      _Block_object_dispose(buf, 8);
    }

    os_unfair_lock_lock_with_options();
    [(NSMutableArray *)self->_hmdMatterPaths removeObject:v9];
    os_unfair_lock_unlock(&self->_lock);
    v20 = [v7 transactionResult];
    [v20 markChanged];

    [v7 respondWithSuccess];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v6 uuid];
      *buf = 138543618;
      *&buf[4] = v24;
      *&buf[12] = 2112;
      *&buf[14] = v25;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@Couldn't find matter path with UUID %@ to remove.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [v7 respondWithError:v26];
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __59__HMDMatterAccessoryAdapter_removeMatterPathModel_message___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 actions];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__HMDMatterAccessoryAdapter_removeMatterPathModel_message___block_invoke_2;
  v9[3] = &unk_278679968;
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  *&v8 = v4;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v3 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];
}

void __59__HMDMatterAccessoryAdapter_removeMatterPathModel_message___block_invoke_2(void *a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v8;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 matterPaths];
    v7 = [v6 containsObject:a1[4]];

    if (v7)
    {
      *(*(a1[7] + 8) + 24) = 1;
      [v5 matterPathRemoved:a1[4] message:a1[5] transaction:a1[6]];
    }
  }
}

- (id)_runAccessoryTransactions:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(HMDMatterAccessoryAdapter *)self backingStoreTransactionWithName:@"AccessoryUpdated"];
    [v5 addObjects:v4];
    v11 = 0;
    v6 = [MEMORY[0x277D0F7C0] futureWithPromise:&v11];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__HMDMatterAccessoryAdapter__runAccessoryTransactions___block_invoke;
    v8[3] = &unk_278688D58;
    v8[4] = self;
    v9 = v4;
    v10 = v11;
    [v5 run:v8];
  }

  else
  {
    v6 = [MEMORY[0x277D0F7C0] futureWithNoValue];
  }

  return v6;
}

void __55__HMDMatterAccessoryAdapter__runAccessoryTransactions___block_invoke(id *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = a1[4];
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1[5], "count")}];
    v10 = 138543874;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Ran %@ transactions with error: %@", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  [a1[6] fulfillWithNoValue];

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_removeMatterPaths:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB98] setWithArray:v4];
  }

  else
  {
    v5 = 0;
  }

  if ([v5 count])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      *buf = 138543874;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Removing %@ matter paths %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [(HMDMatterAccessoryAdapter *)v7 accessory];
    v12 = [v11 uuid];

    v13 = [v5 allObjects];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __48__HMDMatterAccessoryAdapter__removeMatterPaths___block_invoke;
    v19[3] = &unk_27867A628;
    v20 = v12;
    v14 = v12;
    v15 = [v13 na_map:v19];

    v16 = [(HMDMatterAccessoryAdapter *)v7 _runAccessoryTransactions:v15];
  }

  else
  {
    v16 = [MEMORY[0x277D0F7C0] futureWithNoValue];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id __48__HMDMatterAccessoryAdapter__removeMatterPaths___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMDMatterPathModel alloc];
  v5 = [v3 uuid];
  v6 = [(HMDBackingStoreModelObject *)v4 initWithObjectChangeType:3 uuid:v5 parentUUID:*(a1 + 32)];

  [v3 populateModelObject:v6];

  return v3;
}

- (id)_addMatterPaths:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB98] setWithArray:v4];
  }

  else
  {
    v5 = 0;
  }

  if ([v5 count])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      *buf = 138543874;
      v22 = v9;
      v23 = 2112;
      v24 = v10;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Adding %@ matter paths %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [(HMDMatterAccessoryAdapter *)v7 accessory];
    v12 = [v11 uuid];

    v13 = [v5 allObjects];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __45__HMDMatterAccessoryAdapter__addMatterPaths___block_invoke;
    v19[3] = &unk_27867A628;
    v20 = v12;
    v14 = v12;
    v15 = [v13 na_map:v19];

    v16 = [(HMDMatterAccessoryAdapter *)v7 _runAccessoryTransactions:v15];
  }

  else
  {
    v16 = [MEMORY[0x277D0F7C0] futureWithNoValue];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

id __45__HMDMatterAccessoryAdapter__addMatterPaths___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [HMDMatterPathModel alloc];
  v5 = [v3 uuid];
  v6 = [(HMDBackingStoreModelObject *)v4 initWithObjectChangeType:1 uuid:v5 parentUUID:*(a1 + 32)];

  [v3 populateModelObject:v6];

  return v3;
}

- (id)removeMatterPaths:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D0F7C0];
  v6 = [(HMDMatterAccessoryAdapter *)self workContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__HMDMatterAccessoryAdapter_removeMatterPaths___block_invoke;
  v10[3] = &unk_2786898D8;
  v10[4] = self;
  v11 = v4;
  v7 = v4;
  v8 = [v5 inContext:v6 perform:v10];

  return v8;
}

uint64_t __47__HMDMatterAccessoryAdapter_removeMatterPaths___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _removeMatterPaths:*(a1 + 40)];
  if (v1)
  {
    v2 = v1;

    return 3;
  }

  else
  {
    v4 = _HMFPreconditionFailure();
    return [(HMDMatterAccessoryAdapter *)v4 addMatterPaths:v5, v6];
  }
}

- (id)addMatterPaths:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D0F7C0];
  v6 = [(HMDMatterAccessoryAdapter *)self workContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__HMDMatterAccessoryAdapter_addMatterPaths___block_invoke;
  v10[3] = &unk_2786898D8;
  v10[4] = self;
  v11 = v4;
  v7 = v4;
  v8 = [v5 inContext:v6 perform:v10];

  return v8;
}

uint64_t __44__HMDMatterAccessoryAdapter_addMatterPaths___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _addMatterPaths:*(a1 + 40)];
  if (v1)
  {
    v2 = v1;

    return 3;
  }

  else
  {
    v4 = _HMFPreconditionFailure();
    return [(HMDMatterAccessoryAdapter *)v4 _processAccessoryConfigurationWithPaths:v5, v6];
  }
}

- (id)backingStoreTransactionWithName:(id)a3
{
  v4 = a3;
  v5 = [(HMDMatterAccessoryAdapter *)self accessory];
  v6 = [v5 home];
  v7 = [v6 backingStore];
  v8 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v9 = [v7 transaction:v4 options:v8];

  return v9;
}

- (NSArray)eventPaths
{
  v2 = [(HMDMatterAccessoryAdapter *)self matterPaths];
  v3 = [v2 na_filter:&__block_literal_global_362_126619];

  return v3;
}

BOOL __39__HMDMatterAccessoryAdapter_eventPaths__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventID];
  v3 = v2 != 0;

  return v3;
}

- (NSArray)commandPaths
{
  v2 = [(HMDMatterAccessoryAdapter *)self matterPaths];
  v3 = [v2 na_filter:&__block_literal_global_360];

  return v3;
}

BOOL __41__HMDMatterAccessoryAdapter_commandPaths__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 commandID];
  v3 = v2 != 0;

  return v3;
}

- (NSArray)attributePaths
{
  v2 = [(HMDMatterAccessoryAdapter *)self matterPaths];
  v3 = [v2 na_filter:&__block_literal_global_358_126623];

  return v3;
}

BOOL __43__HMDMatterAccessoryAdapter_attributePaths__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 attributeID];
  v3 = v2 != 0;

  return v3;
}

- (id)matterPathWithUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableArray *)self->_hmdMatterPaths hmf_firstObjectWithUUID:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (NSArray)matterPaths
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_hmdMatterPaths copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)supportsMTRPath:(id)a3
{
  v4 = a3;
  v5 = [(HMDMatterAccessoryAdapter *)self mtrPaths];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HMDMatterAccessoryAdapter_supportsMTRPath___block_invoke;
  v9[3] = &unk_278679918;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_any:v9];

  return v7;
}

- (NSArray)mtrEventPaths
{
  v2 = [(HMDMatterAccessoryAdapter *)self mtrPaths];
  v3 = [v2 na_map:&__block_literal_global_354_126626];

  return v3;
}

void *__42__HMDMatterAccessoryAdapter_mtrEventPaths__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
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

  return v3;
}

- (NSArray)mtrCommandPaths
{
  v2 = [(HMDMatterAccessoryAdapter *)self mtrPaths];
  v3 = [v2 na_map:&__block_literal_global_352_126630];

  return v3;
}

void *__44__HMDMatterAccessoryAdapter_mtrCommandPaths__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
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

  return v3;
}

- (NSArray)mtrAttributePaths
{
  v2 = [(HMDMatterAccessoryAdapter *)self mtrPaths];
  v3 = [v2 na_map:&__block_literal_global_350];

  return v3;
}

void *__46__HMDMatterAccessoryAdapter_mtrAttributePaths__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
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

  return v3;
}

- (id)deviceTypesForEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(HMDMatterAccessoryAdapter *)self endpointToDeviceTypesMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (NSArray)endpoints
{
  v2 = [(HMDMatterAccessoryAdapter *)self endpointToDeviceTypesMap];
  v3 = [v2 allKeys];

  return v3;
}

- (NSArray)mtrPaths
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSArray *)self->_mtrPaths copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)invokeCommands:(id)a3 completion:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HMDMatterAccessoryAdapter *)self matterDevice];

  if (v8)
  {
    v9 = [(HMDMatterAccessoryAdapter *)self matterDevice];
    v10 = [(HMDMatterAccessoryAdapter *)self workQueue];
    [v9 invokeCommands:v6 queue:v10 completion:v7];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@No matter device to invoke bulk commands", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    v7[2](v7, 0, v9);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)invokeCommand:(id)a3 fields:(id)a4 expectedValues:(id)a5 source:(unint64_t)a6 completion:(id)a7
{
  v31 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [(HMDMatterAccessoryAdapter *)self matterDevice];

  if (v15)
  {
    v16 = [(HMDMatterAccessoryAdapter *)self matterDevice];
    v17 = [v11 endpoint];
    v18 = [v11 cluster];
    v19 = [v11 command];
    v20 = [(HMDMatterAccessoryAdapter *)self workQueue];
    [v16 invokeCommandWithEndpointID:v17 clusterID:v18 commandID:v19 commandFields:v12 expectedValues:v13 expectedValueInterval:&unk_283E72C50 queue:v20 completion:v14];
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v24;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@No matter device to invoke command to path: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    v14[2](v14, 0, v25);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)writeAttribute:(id)a3 value:(id)a4 timedWriteTimeout:(id)a5 completion:(id)a6
{
  v35 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMDMatterAccessoryAdapter *)self matterDevice];

  if (v14)
  {
    v15 = [(HMDMatterAccessoryAdapter *)self matterDevice];
    v16 = [v10 endpoint];
    v17 = [v10 cluster];
    v18 = [v10 attribute];
    [v15 writeAttributeWithEndpointID:v16 clusterID:v17 attributeID:v18 value:v11 expectedValueInterval:&unk_283E72D28 timedWriteTimeout:v12];

    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v29 = 138543874;
      v30 = v22;
      v31 = 2112;
      v32 = v11;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Did write value: %@ to path: %@", &v29, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    (*(v13 + 2))(v13, 0, 0);
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v29 = 138543618;
      v30 = v26;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_ERROR, "%{public}@No matter device to write to path: %@", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    (*(v13 + 2))(v13, 0, v27);
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)readAttribute:(id)a3 params:(id)a4 completion:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMDMatterAccessoryAdapter *)self matterDevice];

  if (v11)
  {
    v12 = [(HMDMatterAccessoryAdapter *)self matterDevice];
    v13 = [v8 endpoint];
    v14 = [v8 cluster];
    v15 = [v8 attribute];
    v16 = [v12 readAttributeWithEndpointID:v13 clusterID:v14 attributeID:v15 params:v9];

    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v27 = 138543874;
      v28 = v20;
      v29 = 2112;
      v30 = v16;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Did read %@ from path: %@", &v27, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    if (v16)
    {
      v10[2](v10, v16, 0);
    }

    else
    {
      v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      (v10)[2](v10, 0, v25);

      v16 = 0;
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v24;
      v29 = 2112;
      v30 = v8;
      _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_ERROR, "%{public}@No matter device to read from path: %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    (v10)[2](v10, 0, v16);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)reportFromAttributePathRead:(id)a3 retryTimeout:(double)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = [(HMDMatterAccessoryAdapter *)self readFromAttributePath:v6 retryTimeout:a4];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __70__HMDMatterAccessoryAdapter_reportFromAttributePathRead_retryTimeout___block_invoke;
    v14[3] = &unk_278687110;
    v15 = v7;
    v16 = self;
    v9 = v7;
    v10 = [v8 then:v14];

    return v10;
  }

  else
  {
    v12 = _HMFPreconditionFailure();
    return __70__HMDMatterAccessoryAdapter_reportFromAttributePathRead_retryTimeout___block_invoke(v12, v13);
  }
}

uint64_t __70__HMDMatterAccessoryAdapter_reportFromAttributePathRead_retryTimeout___block_invoke(uint64_t a1, void *a2)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v21[0] = *MEMORY[0x277CD50B8];
  v4 = [*(a1 + 32) attributePath];
  v21[1] = *MEMORY[0x277CD50D8];
  v22[0] = v4;
  v22[1] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v14 = 0;
  [objc_alloc(MEMORY[0x277CD51C8]) initWithResponseValue:v5 error:&v14];
  v6 = v14;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 40);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 32) attributePath];
      *buf = 138543874;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Error creating MTRAttributeReport for path=%@. error=%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)readFromAttributePath:(id)a3 retryTimeout:(double)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(HMDMatterAccessoryAdapter *)self readFromAttributePath:a3 retryTimeout:a4];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__HMDMatterAccessoryAdapter_readFromAttributePath_retryTimeout_completion___block_invoke;
  v12[3] = &unk_2786798F0;
  v13 = v8;
  v10 = v8;
  v11 = [v9 then:v12];
}

uint64_t __75__HMDMatterAccessoryAdapter_readFromAttributePath_retryTimeout_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _Block_copy(*(a1 + 32));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v3);
  }

  return 1;
}

- (id)readFromAttributePaths:(id)a3 retryTimeout:(double)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __65__HMDMatterAccessoryAdapter_readFromAttributePaths_retryTimeout___block_invoke;
    v15[3] = &unk_2786798C8;
    v15[4] = self;
    *&v15[5] = a4;
    v8 = [v6 na_map:v15];
    v9 = [MEMORY[0x277D0F7C0] allSettled:v8];
    v10 = [(HMDMatterAccessoryAdapter *)self workContext];
    v11 = [v9 inContext:v10 then:&__block_literal_global_344];

    return v11;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return __65__HMDMatterAccessoryAdapter_readFromAttributePaths_retryTimeout___block_invoke(v13, v14);
  }
}

uint64_t __65__HMDMatterAccessoryAdapter_readFromAttributePaths_retryTimeout___block_invoke_2(uint64_t a1, void *a2)
{
  [a2 na_arrayByFlattening];
  objc_claimAutoreleasedReturnValue();
  return 1;
}

- (id)readFromAttributePath:(id)a3 retryTimeout:(double)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277D0F7C0];
    v9 = [(HMDMatterAccessoryAdapter *)self workContext];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__HMDMatterAccessoryAdapter_readFromAttributePath_retryTimeout___block_invoke;
    v14[3] = &unk_2786798A0;
    v14[4] = self;
    v15 = v7;
    v16 = a4;
    v10 = v7;
    v11 = [v8 inContext:v9 perform:v14];

    return v11;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return __64__HMDMatterAccessoryAdapter_readFromAttributePath_retryTimeout___block_invoke(v13);
  }
}

uint64_t __64__HMDMatterAccessoryAdapter_readFromAttributePath_retryTimeout___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _readFromAttributePath:*(a1 + 40) retryTimeout:*(a1 + 48)];
  if (v1)
  {
    v2 = v1;

    return 3;
  }

  else
  {
    v4 = _HMFPreconditionFailure();
    return [(HMDMatterAccessoryAdapter *)v4 _readFromAttributePath:v5 retryTimeout:v6, v7];
  }
}

- (id)_readFromAttributePath:(id)a3 retryTimeout:(double)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!v6)
  {
    _HMFPreconditionFailure();
  }

  v7 = v6;
  v8 = [(HMDMatterAccessoryAdapter *)self matterDevice];
  if (v8)
  {
    v9 = [v7 endpointID];
    v10 = [v7 clusterID];
    v11 = [v7 attributeID];
    v12 = [v8 readAttributeWithEndpointID:v9 clusterID:v10 attributeID:v11 params:0];

    v13 = [v12 count];
    if (a4 == 0.0 || v13)
    {
      v20 = [MEMORY[0x277D0F7C0] futureWithValue:v12];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = HMFGetLogIdentifier();
        v18 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
        *buf = 138543874;
        v30 = v17;
        v31 = 2112;
        v32 = v7;
        v33 = 2112;
        v34 = v18;
        _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Attempting to retry read from %@ after %@s", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      v19 = [MEMORY[0x277D0F7C0] futureWithDelay:a4];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __65__HMDMatterAccessoryAdapter__readFromAttributePath_retryTimeout___block_invoke;
      v25[3] = &unk_27867C6C8;
      v26 = v8;
      v27 = v7;
      v28 = v15;
      v20 = [v19 then:v25];
    }
  }

  else
  {
    v21 = MEMORY[0x277D0F7C0];
    v22 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
    v20 = [v21 futureWithError:v22];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __65__HMDMatterAccessoryAdapter__readFromAttributePath_retryTimeout___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) endpointID];
  v6 = [*(a1 + 40) clusterID];
  v7 = [*(a1 + 40) attributeID];
  v8 = [v4 readAttributeWithEndpointID:v5 clusterID:v6 attributeID:v7 params:0];

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 48);
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    v13 = *(a1 + 40);
    v17 = 138543874;
    v18 = v12;
    v19 = 2112;
    v20 = v13;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Retried and receive response for path: %@ with result: %@", &v17, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = MEMORY[0x277CBEC10];
  if (v8)
  {
    v14 = v8;
  }

  v14;

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_fetchEventPathsForCluster:(id)a3 endpoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (v8 = v7) != 0)
  {
    v9 = [HMDMatterPath PathWithAttributeID:&unk_283E72D10 endpointID:v7 clusterID:v6 accessory:0];
    [(HMDMatterAccessoryAdapter *)self retryFetchTimeout];
    v10 = [(HMDMatterAccessoryAdapter *)self readFromAttributePath:v9 retryTimeout:?];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __65__HMDMatterAccessoryAdapter__fetchEventPathsForCluster_endpoint___block_invoke;
    v17[3] = &unk_27867CF60;
    v18 = v8;
    v19 = v6;
    v20 = self;
    v11 = v6;
    v12 = v8;
    v13 = [v10 then:v17];

    return v13;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    return __65__HMDMatterAccessoryAdapter__fetchEventPathsForCluster_endpoint___block_invoke(v15, v16);
  }
}

uint64_t __65__HMDMatterAccessoryAdapter__fetchEventPathsForCluster_endpoint___block_invoke(id *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 hmf_arrayForKey:*MEMORY[0x277CD51A0]];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __65__HMDMatterAccessoryAdapter__fetchEventPathsForCluster_endpoint___block_invoke_2;
  v18 = &unk_278679828;
  v19 = a1[4];
  v20 = a1[5];
  v5 = [v4 na_map:&v15];
  v6 = objc_autoreleasePoolPush();
  v7 = a1[6];
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count", v15, v16, v17, v18, v19)}];
    v11 = a1[4];
    v12 = a1[5];
    *buf = 138544386;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Read %@ matter event paths for EP(%@)/CL(%@): %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v6);
  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

id __65__HMDMatterAccessoryAdapter__fetchEventPathsForCluster_endpoint___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 hmf_dictionaryForKey:*MEMORY[0x277CD50D8]];
  v4 = [v3 hmf_numberForKey:*MEMORY[0x277CD51A0]];

  if (v4)
  {
    v5 = [MEMORY[0x277CD5408] eventPathWithEndpointID:*(a1 + 32) clusterID:*(a1 + 40) eventID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_fetchCommandPathsForCluster:(id)a3 endpoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (v8 = v7) != 0)
  {
    v9 = [HMDMatterPath PathWithAttributeID:&unk_283E72CF8 endpointID:v7 clusterID:v6 accessory:0];
    [(HMDMatterAccessoryAdapter *)self retryFetchTimeout];
    v10 = [(HMDMatterAccessoryAdapter *)self readFromAttributePath:v9 retryTimeout:?];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __67__HMDMatterAccessoryAdapter__fetchCommandPathsForCluster_endpoint___block_invoke;
    v17[3] = &unk_27867CF60;
    v18 = v8;
    v19 = v6;
    v20 = self;
    v11 = v6;
    v12 = v8;
    v13 = [v10 then:v17];

    return v13;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    return __67__HMDMatterAccessoryAdapter__fetchCommandPathsForCluster_endpoint___block_invoke(v15, v16);
  }
}

uint64_t __67__HMDMatterAccessoryAdapter__fetchCommandPathsForCluster_endpoint___block_invoke(id *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 hmf_arrayForKey:*MEMORY[0x277CD51A0]];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __67__HMDMatterAccessoryAdapter__fetchCommandPathsForCluster_endpoint___block_invoke_2;
  v18 = &unk_278679828;
  v19 = a1[4];
  v20 = a1[5];
  v5 = [v4 na_map:&v15];
  v6 = objc_autoreleasePoolPush();
  v7 = a1[6];
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count", v15, v16, v17, v18, v19)}];
    v11 = a1[4];
    v12 = a1[5];
    *buf = 138544386;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Read %@ matter command paths for EP(%@)/CL(%@): %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v6);
  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

id __67__HMDMatterAccessoryAdapter__fetchCommandPathsForCluster_endpoint___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 hmf_dictionaryForKey:*MEMORY[0x277CD50D8]];
  v4 = [v3 hmf_numberForKey:*MEMORY[0x277CD51A0]];

  if (v4)
  {
    v5 = [MEMORY[0x277CD52F0] commandPathWithEndpointID:*(a1 + 32) clusterID:*(a1 + 40) commandID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_fetchAttributePathsForCluster:(id)a3 endpoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (v8 = v7) != 0)
  {
    v9 = [HMDMatterPath PathWithAttributeID:&unk_283E72CE0 endpointID:v7 clusterID:v6 accessory:0];
    [(HMDMatterAccessoryAdapter *)self retryFetchTimeout];
    v10 = [(HMDMatterAccessoryAdapter *)self readFromAttributePath:v9 retryTimeout:?];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __69__HMDMatterAccessoryAdapter__fetchAttributePathsForCluster_endpoint___block_invoke;
    v17[3] = &unk_27867CF60;
    v18 = v8;
    v19 = v6;
    v20 = self;
    v11 = v6;
    v12 = v8;
    v13 = [v10 then:v17];

    return v13;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    return __69__HMDMatterAccessoryAdapter__fetchAttributePathsForCluster_endpoint___block_invoke(v15, v16);
  }
}

uint64_t __69__HMDMatterAccessoryAdapter__fetchAttributePathsForCluster_endpoint___block_invoke(id *a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 hmf_arrayForKey:*MEMORY[0x277CD51A0]];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __69__HMDMatterAccessoryAdapter__fetchAttributePathsForCluster_endpoint___block_invoke_2;
  v18 = &unk_278679828;
  v19 = a1[4];
  v20 = a1[5];
  v5 = [v4 na_map:&v15];
  v6 = objc_autoreleasePoolPush();
  v7 = a1[6];
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count", v15, v16, v17, v18, v19)}];
    v11 = a1[4];
    v12 = a1[5];
    *buf = 138544386;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Read %@ matter attribute paths for EP(%@)/CL(%@): %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v6);
  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

id __69__HMDMatterAccessoryAdapter__fetchAttributePathsForCluster_endpoint___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 hmf_dictionaryForKey:*MEMORY[0x277CD50D8]];
  v4 = [v3 hmf_numberForKey:*MEMORY[0x277CD51A0]];

  if (v4)
  {
    v5 = [MEMORY[0x277CD51C0] attributePathWithEndpointID:*(a1 + 32) clusterID:*(a1 + 40) attributeID:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_fetchMatterPathsForCluster:(id)a3 endpoint:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6 || (v8 = v7) == 0)
  {
    _HMFPreconditionFailure();
  }

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    *&buf[4] = v12;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    *&buf[22] = 2112;
    v24 = v6;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Read matter paths from EP(%@)/CL(%@)", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v24 = __Block_byref_object_copy__126661;
  v25 = __Block_byref_object_dispose__126662;
  v26 = [MEMORY[0x277CBEB18] array];
  v13 = [(HMDMatterAccessoryAdapter *)v10 _fetchAttributePathsForCluster:v6 endpoint:v8];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__HMDMatterAccessoryAdapter__fetchMatterPathsForCluster_endpoint___block_invoke;
  v19[3] = &unk_278679878;
  v22 = buf;
  v19[4] = v10;
  v14 = v6;
  v20 = v14;
  v15 = v8;
  v21 = v15;
  v16 = [v13 then:v19];

  _Block_object_dispose(buf, 8);
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t __66__HMDMatterAccessoryAdapter__fetchMatterPathsForCluster_endpoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(*(*(a1 + 56) + 8) + 40) addObjectsFromArray:v3];
  v4 = [*(a1 + 32) _fetchCommandPathsForCluster:*(a1 + 40) endpoint:*(a1 + 48)];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HMDMatterAccessoryAdapter__fetchMatterPathsForCluster_endpoint___block_invoke_2;
  v10[3] = &unk_278679850;
  v10[4] = *(a1 + 56);
  v5 = [v4 then:v10];
  if (v5)
  {
    v6 = v5;

    return 3;
  }

  else
  {
    v8 = _HMFPreconditionFailure();
    return __66__HMDMatterAccessoryAdapter__fetchMatterPathsForCluster_endpoint___block_invoke_2(v8, v9);
  }
}

uint64_t __66__HMDMatterAccessoryAdapter__fetchMatterPathsForCluster_endpoint___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(*(*(a1 + 32) + 8) + 40) addObjectsFromArray:a2];

  return 1;
}

- (id)_fetchMatterPathsForEndpoint:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    _HMFPreconditionFailure();
  }

  v5 = v4;
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v9;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Fetching matter paths from EP(%@)", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v10 = [HMDMatterPath PathWithAttributeID:&unk_283E72CC8 endpointID:v5 clusterID:&unk_283E72C98 accessory:0];
  [(HMDMatterAccessoryAdapter *)v7 retryFetchTimeout];
  v11 = [(HMDMatterAccessoryAdapter *)v7 readFromAttributePath:v10 retryTimeout:?];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __58__HMDMatterAccessoryAdapter__fetchMatterPathsForEndpoint___block_invoke;
  v16[3] = &unk_278687110;
  v16[4] = v7;
  v17 = v5;
  v12 = v5;
  v13 = [v11 then:v16];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __58__HMDMatterAccessoryAdapter__fetchMatterPathsForEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 hmf_arrayForKey:*MEMORY[0x277CD51A0]];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __58__HMDMatterAccessoryAdapter__fetchMatterPathsForEndpoint___block_invoke_2;
  v16 = &unk_278679828;
  v5 = *(a1 + 40);
  v17 = *(a1 + 32);
  v18 = v5;
  v6 = [v4 na_map:&v13];
  v7 = [MEMORY[0x277D0F7C0] allSettled:{v6, v13, v14, v15, v16, v17}];
  v8 = [v7 then:&__block_literal_global_323];
  if (v8)
  {
    v9 = v8;

    return 3;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    return __58__HMDMatterAccessoryAdapter__fetchMatterPathsForEndpoint___block_invoke_2(v11, v12);
  }
}

id __58__HMDMatterAccessoryAdapter__fetchMatterPathsForEndpoint___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 hmf_dictionaryForKey:*MEMORY[0x277CD50D8]];
  v4 = [v3 hmf_numberForKey:*MEMORY[0x277CD51A0]];

  if (v4)
  {
    v5 = [*(a1 + 32) _fetchMatterPathsForCluster:v4 endpoint:*(a1 + 40)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __58__HMDMatterAccessoryAdapter__fetchMatterPathsForEndpoint___block_invoke_3(uint64_t a1, void *a2)
{
  [a2 na_arrayByFlattening];
  objc_claimAutoreleasedReturnValue();
  return 1;
}

- (id)_fetchDeviceTypesForEndpoints:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__HMDMatterAccessoryAdapter__fetchDeviceTypesForEndpoints___block_invoke;
    v13[3] = &unk_2786797B0;
    v13[4] = self;
    v6 = [v4 na_map:v13];
    v7 = [MEMORY[0x277D0F7C0] allSettled:v6];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__HMDMatterAccessoryAdapter__fetchDeviceTypesForEndpoints___block_invoke_311;
    v12[3] = &unk_2786868A0;
    v12[4] = self;
    v8 = [v7 then:v12];

    return v8;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return __59__HMDMatterAccessoryAdapter__fetchDeviceTypesForEndpoints___block_invoke(v10, v11);
  }
}

id __59__HMDMatterAccessoryAdapter__fetchDeviceTypesForEndpoints___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v20 = v7;
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Fetching deviceType from EP(%@)", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [HMDMatterPath PathWithAttributeID:&unk_283E72CB0 endpointID:v3 clusterID:&unk_283E72C98 accessory:0];
  v9 = *(a1 + 32);
  [v9 retryFetchTimeout];
  v10 = [v9 _readFromAttributePath:v8 retryTimeout:?];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__HMDMatterAccessoryAdapter__fetchDeviceTypesForEndpoints___block_invoke_303;
  v17[3] = &unk_278687110;
  v17[4] = *(a1 + 32);
  v18 = v3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__HMDMatterAccessoryAdapter__fetchDeviceTypesForEndpoints___block_invoke_309;
  v15[3] = &unk_2786882F0;
  v15[4] = *(a1 + 32);
  v16 = v18;
  v11 = v18;
  v12 = [v10 then:v17 orRecover:v15];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __59__HMDMatterAccessoryAdapter__fetchDeviceTypesForEndpoints___block_invoke_311(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 hmf_isEmpty])
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v7;
      _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to read deviceTypes from endpoints, empty results", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = [MEMORY[0x277CBEB38] dictionary];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __59__HMDMatterAccessoryAdapter__fetchDeviceTypesForEndpoints___block_invoke_313;
  v19 = &unk_278679800;
  v20 = *(a1 + 32);
  v9 = v8;
  v21 = v9;
  [v3 na_each:&v16];
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v13;
    v24 = 2112;
    v25 = v9;
    _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Did fetch device types: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  [*(a1 + 32) createNotifications];
  [v9 copy];

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

void __59__HMDMatterAccessoryAdapter__fetchDeviceTypesForEndpoints___block_invoke_313(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if ([v5 count])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __59__HMDMatterAccessoryAdapter__fetchDeviceTypesForEndpoints___block_invoke_314;
    v13[3] = &unk_2786797D8;
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);
    v14 = v6;
    v15 = v7;
    [v5 na_each:v13];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@No device types fetched for this endpoint.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __59__HMDMatterAccessoryAdapter__fetchDeviceTypesForEndpoints___block_invoke_314(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 40);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v12 = 138543874;
    v13 = v10;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Saved deviceTypes=%@ for endpointID=%@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __59__HMDMatterAccessoryAdapter__fetchDeviceTypesForEndpoints___block_invoke_303(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];
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

  if ([v6 hmf_isEmpty])
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      *buf = 138543874;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v3;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to read deviceTypes from EP(%@), result=%@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v12 = [v6 na_map:&__block_literal_global_307_126679];
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(a1 + 40);
      *buf = 138543874;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Read deviceTypes from EP(%@): %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    if (v12)
    {
      v18 = v12;
    }

    else
    {
      v18 = MEMORY[0x277CBEBF8];
    }

    v21 = *(a1 + 40);
    v22 = v18;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    objc_claimAutoreleasedReturnValue();
  }

  v19 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __59__HMDMatterAccessoryAdapter__fetchDeviceTypesForEndpoints___block_invoke_309(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to read deviceTypes from EP(%@), error=%@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

void *__59__HMDMatterAccessoryAdapter__fetchDeviceTypesForEndpoints___block_invoke_305(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277CD50D8];
  v3 = [a2 objectForKeyedSubscript:*MEMORY[0x277CD50D8]];
  v4 = *MEMORY[0x277CD51A0];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CD51A0]];

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

  v8 = [v7 firstObject];

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

  v11 = [v10 objectForKeyedSubscript:v2];

  v12 = [v11 objectForKeyedSubscript:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (id)_fetchMatterPaths
{
  v3 = [HMDMatterPath PathWithAttributeID:&unk_283E72C68 endpointID:&unk_283E72C80 clusterID:&unk_283E72C98 accessory:0];
  [(HMDMatterAccessoryAdapter *)self retryFetchTimeout];
  v4 = [(HMDMatterAccessoryAdapter *)self readFromAttributePath:v3 retryTimeout:?];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HMDMatterAccessoryAdapter__fetchMatterPaths__block_invoke;
  v7[3] = &unk_27867FAF0;
  v7[4] = self;
  v5 = [v4 then:v7];

  return v5;
}

uint64_t __46__HMDMatterAccessoryAdapter__fetchMatterPaths__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 hmf_arrayForKey:*MEMORY[0x277CD51A0]];
  v5 = [v4 na_map:&__block_literal_global_126684];
  v6 = [v5 mutableCopy];

  if (v6)
  {
    [v6 insertObject:&unk_283E72C80 atIndex:0];
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v10;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Fetched endpoints=%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [*(a1 + 32) _fetchDeviceTypesForEndpoints:v6];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__HMDMatterAccessoryAdapter__fetchMatterPaths__block_invoke_288;
    v17[3] = &unk_278687110;
    v17[4] = *(a1 + 32);
    v18 = v6;
    v12 = [v11 then:v17];
    if (!v12)
    {
      _HMFPreconditionFailure();
    }

    v13 = v12;
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __46__HMDMatterAccessoryAdapter__fetchMatterPaths__block_invoke_288(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setEndpointToDeviceTypesMap:v3];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__HMDMatterAccessoryAdapter__fetchMatterPaths__block_invoke_2_289;
  v12[3] = &unk_2786797B0;
  v4 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v5 = [v4 na_map:v12];
  v6 = [MEMORY[0x277D0F7C0] allSettled:v5];
  v7 = [v6 then:&__block_literal_global_292_126686];
  if (v7)
  {
    v8 = v7;

    return 3;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return __46__HMDMatterAccessoryAdapter__fetchMatterPaths__block_invoke_2_289(v10, v11);
  }
}

uint64_t __46__HMDMatterAccessoryAdapter__fetchMatterPaths__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 na_arrayByFlattening];
  [v2 na_map:&__block_literal_global_295];
  objc_claimAutoreleasedReturnValue();

  return 1;
}

void *__46__HMDMatterAccessoryAdapter__fetchMatterPaths__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
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

  return v3;
}

id __46__HMDMatterAccessoryAdapter__fetchMatterPaths__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 hmf_dictionaryForKey:*MEMORY[0x277CD50D8]];
  v3 = [v2 hmf_numberForKey:*MEMORY[0x277CD51A0]];

  return v3;
}

- (id)_fetchAccessoryConfigurations
{
  v3 = [MEMORY[0x277CBEB18] array];
  if ([(HMDMatterAccessoryAdapter *)self supportsRVC])
  {
    v4 = [(HMDMatterAccessoryAdapter *)self fetchRVCConfig];
    [v3 addObject:v4];
  }

  if ([v3 count])
  {
    v5 = [MEMORY[0x277D0F7C0] allSettled:v3];
    v6 = [v5 ignoreResult];
  }

  else
  {
    v6 = [MEMORY[0x277D0F7C0] futureWithNoValue];
  }

  return v6;
}

- (id)fetchConfiguration
{
  v3 = MEMORY[0x277D0F7C0];
  v4 = [(HMDMatterAccessoryAdapter *)self workContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HMDMatterAccessoryAdapter_fetchConfiguration__block_invoke;
  v7[3] = &unk_27868A700;
  v7[4] = self;
  v5 = [v3 inContext:v4 perform:v7];

  return v5;
}

uint64_t __47__HMDMatterAccessoryAdapter_fetchConfiguration__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) matterDevice];
  if (!v2)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Nil MTRDevice found", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v7 = MEMORY[0x277CCA9B8];
    v8 = 2;
    goto LABEL_9;
  }

  if ([*(a1 + 32) fetchInProgress])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v6;
      v28 = 2112;
      v29 = v2;
      _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Fetch configuration is in progress for device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v7 = MEMORY[0x277CCA9B8];
    v8 = 15;
LABEL_9:
    v13 = [v7 hmErrorWithCode:v8];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      [MEMORY[0x277CCA9B8] hmfUnspecifiedError];
      objc_claimAutoreleasedReturnValue();
    }

    v22 = 2;
    goto LABEL_17;
  }

  [*(a1 + 32) setFetchInProgress:1];
  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 32);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v27 = v19;
    v28 = 2112;
    v29 = v2;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Fetch configuration from device: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v14 = [*(a1 + 32) _fetchMatterPaths];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __47__HMDMatterAccessoryAdapter_fetchConfiguration__block_invoke_271;
  v25[3] = &unk_2786868A0;
  v25[4] = *(a1 + 32);
  v20 = [v14 then:v25];
  if (!v20)
  {
    _HMFPreconditionFailure();
  }

  v21 = v20;

  v22 = 3;
LABEL_17:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t __47__HMDMatterAccessoryAdapter_fetchConfiguration__block_invoke_271(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:v3];
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    *buf = 138543874;
    v21 = v8;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v4;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Fetch configuration completed with %@ matter paths: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = *(a1 + 32);
  v11 = [v4 allObjects];
  v12 = [v10 _processAccessoryConfigurationWithPaths:v11];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__HMDMatterAccessoryAdapter_fetchConfiguration__block_invoke_274;
  v18[3] = &unk_2786882A0;
  v18[4] = *(a1 + 32);
  v13 = v4;
  v19 = v13;
  v14 = [v12 then:v18];
  if (!v14)
  {
    _HMFPreconditionFailure();
  }

  v15 = v14;

  v16 = *MEMORY[0x277D85DE8];
  return 3;
}

uint64_t __47__HMDMatterAccessoryAdapter_fetchConfiguration__block_invoke_274(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  os_unfair_lock_lock_with_options();
  v5 = [*(a1 + 40) allObjects];
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  *(v6 + 72) = v5;

  os_unfair_lock_unlock(v4 + 2);
  v8 = [*(a1 + 32) _fetchAccessoryConfigurations];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__HMDMatterAccessoryAdapter_fetchConfiguration__block_invoke_2;
  v14[3] = &unk_2786882A0;
  v9 = *(a1 + 40);
  v14[4] = *(a1 + 32);
  v15 = v9;
  v10 = [(os_unfair_lock_s *)v8 then:v14];
  if (!v10)
  {
    v13 = _HMFPreconditionFailure();
    os_unfair_lock_unlock(v8 + 2);
    _Unwind_Resume(v13);
  }

  v11 = v10;

  return 3;
}

uint64_t __47__HMDMatterAccessoryAdapter_fetchConfiguration__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Fetch configuration completed", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) setFetchInProgress:0];
  [*(a1 + 40) allObjects];
  objc_claimAutoreleasedReturnValue();

  v8 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)useMatterPlugin
{
  v2 = [(HMDMatterAccessoryAdapter *)self accessory];
  if ([v2 isNativeMatter])
  {
    v3 = [v2 home];
    v4 = [v3 featuresDataSource];
    v5 = [v4 isRVCEnabled];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setMatterDevice:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  if ([(HMDMatterAccessoryAdapter *)self useMatterPlugin])
  {
    objc_storeStrong(&self->_matterDevice, a3);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (MTRDevice)matterDevice
{
  os_unfair_lock_lock_with_options();
  if ([(HMDMatterAccessoryAdapter *)self useMatterPlugin])
  {
    matterDevice = self->_matterDevice;
    if (!matterDevice)
    {
      matterDevice = self->_testMatterDevice;
    }

    v4 = matterDevice;
  }

  else
  {
    v5 = [(HMDMatterAccessoryAdapter *)self accessoryServer];
    v6 = [v5 matterDevice];
    testMatterDevice = v6;
    if (!v6)
    {
      testMatterDevice = self->_testMatterDevice;
    }

    v4 = testMatterDevice;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (id)accessoryServer
{
  v3 = [(HMDMatterAccessoryAdapter *)self hapAccessory];
  v4 = [v3 chipAccessoryServer];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(HMDMatterAccessoryAdapter *)self matterAccessory];
    v6 = [v7 accessoryServer];
  }

  return v6;
}

- (id)matterAccessory
{
  v2 = [(HMDMatterAccessoryAdapter *)self accessory];
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

  return v3;
}

- (id)hapAccessory
{
  v2 = [(HMDMatterAccessoryAdapter *)self accessory];
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

  return v3;
}

- (HMFAsyncContext)workContext
{
  v3 = objc_alloc(MEMORY[0x277D0F7A8]);
  v4 = [(HMDMatterAccessoryAdapter *)self workQueue];
  v5 = [v3 initWithQueue:v4];

  return v5;
}

- (HMDMatterAccessoryAdapter)initWithAccessory:(id)a3
{
  v4 = a3;
  v5 = [v4 conformsToProtocol:&unk_283F010C8];

  if (v4 && (v5 & 1) != 0)
  {
    v6 = [(HMDMatterAccessoryAdapter *)self init];
    v7 = v6;
    if (v6)
    {
      objc_storeWeak(&v6->_accessory, v4);
      v7->_retryFetchTimeout = 20.0;
      v8 = [v4 workQueue];
      workQueue = v7->_workQueue;
      v7->_workQueue = v8;

      v10 = +[HMDCoreData featuresDataSource];
      v11 = [v10 isRVCEnabled];

      if (v11)
      {
        v12 = [MEMORY[0x277CCAB98] defaultCenter];
        [v12 addObserver:v7 selector:sel_handleNotification_ name:@"HMDMatterAttributeChangedNotification" object:v4];

        v13 = [MEMORY[0x277CCAB98] defaultCenter];
        [v13 addObserver:v7 selector:sel_handleNotification_ name:@"HMDResidentDeviceConfirmedStateChangedNotification" object:0];
      }
    }

    return v7;
  }

  else
  {
    v15 = _HMFPreconditionFailure();
    [(HMDMatterAccessoryAdapter *)v15 testSetMTRPaths:v16, v17];
  }

  return result;
}

- (void)testSetMTRPaths:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 mutableCopy];
  mtrPaths = self->_mtrPaths;
  self->_mtrPaths = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)testSetMatterDevice:(id)a3 retryTimeout:(double)a4
{
  [(HMDMatterAccessoryAdapter *)self setTestMatterDevice:a3];

  [(HMDMatterAccessoryAdapter *)self setRetryFetchTimeout:a4];
}

- (void)testSetMatterPaths:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 mutableCopy];
  hmdMatterPaths = self->_hmdMatterPaths;
  self->_hmdMatterPaths = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setTestRvcServiceAreaFeatureMapByEndpoint:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  rvcServiceAreaFeatureMapByEndpoint = self->_rvcServiceAreaFeatureMapByEndpoint;
  self->_rvcServiceAreaFeatureMapByEndpoint = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)executeCascadeDonationsForServiceAreaItems:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CF9508];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__HMDMatterAccessoryAdapter_RVC__executeCascadeDonationsForServiceAreaItems___block_invoke;
  v7[3] = &unk_278679D48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 fullSetDonationWithItemType:17034 descriptors:MEMORY[0x277CBEBF8] completion:v7];
}

void __77__HMDMatterAccessoryAdapter_RVC__executeCascadeDonationsForServiceAreaItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v36 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v10;
      v45 = 2112;
      v46 = v6;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Donation rejected: %@ ", buf, 0x16u);
    }
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = *(a1 + 40);
    v11 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v11)
    {
      v13 = v11;
      v6 = 0;
      v14 = *v40;
      *&v12 = 138543618;
      v34 = v12;
      while (2)
      {
        v15 = 0;
        v16 = v6;
        do
        {
          if (*v40 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v39 + 1) + 8 * v15);
          v38 = v16;
          v18 = [v36 registerItem:v17 error:{&v38, v34}];
          v6 = v38;

          v19 = objc_autoreleasePoolPush();
          v20 = *(a1 + 32);
          v21 = HMFGetOSLogHandle();
          v22 = v21;
          if ((v18 & 1) == 0)
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v24 = HMFGetLogIdentifier();
              *buf = 138543874;
              v44 = v24;
              v45 = 2112;
              v46 = v17;
              v47 = 2112;
              v48 = v6;
              _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to register item: %@ error: %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v19);
            goto LABEL_20;
          }

          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v23 = HMFGetLogIdentifier();
            *buf = v34;
            v44 = v23;
            v45 = 2112;
            v46 = v17;
            _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Successfully registered item for Cascade donation. item=%@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v19);
          ++v15;
          v16 = v6;
        }

        while (v13 != v15);
        v13 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = 0;
    }

    v26 = v6;

    v37 = v6;
    v27 = [v36 finish:&v37];
    v6 = v37;

    v7 = objc_autoreleasePoolPush();
    v28 = *(a1 + 32);
    v29 = HMFGetOSLogHandle();
    v30 = v29;
    if (v27)
    {
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [*(a1 + 40) count];
        *buf = 138543618;
        v44 = v31;
        v45 = 2048;
        v46 = v32;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Finished donating %lu item(s)", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v33;
      v45 = 2112;
      v46 = v6;
      _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to finish donation: %@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v7);
LABEL_20:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)submitServiceAreaChangesToCascadeFromMessage:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDMatterAccessoryAdapter *)self accessory];
  v6 = [v5 home];
  v7 = [v6 isCurrentDevicePrimaryResident];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v11;
      v30 = 2112;
      v31 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Not submitting RVC service area changes to cascade from message because this is the primary resident. message=%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v12 = [v4 arrayForKey:@"HMDRVCServiceAreaMessageMapsKey"];
    v13 = [v4 arrayForKey:@"HMDRVCServiceAreaMessageAreasKey"];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __79__HMDMatterAccessoryAdapter_RVC__submitServiceAreaChangesToCascadeFromMessage___block_invoke;
    v26[3] = &unk_278679CF8;
    v26[4] = self;
    v14 = v4;
    v27 = v14;
    v15 = [v12 na_map:v26];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __79__HMDMatterAccessoryAdapter_RVC__submitServiceAreaChangesToCascadeFromMessage___block_invoke_115;
    v24[3] = &unk_278679D20;
    v24[4] = self;
    v25 = v14;
    v16 = [v13 na_map:v24];
    v17 = [(HMDMatterAccessoryAdapter *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__HMDMatterAccessoryAdapter_RVC__submitServiceAreaChangesToCascadeFromMessage___block_invoke_120;
    block[3] = &unk_27868A010;
    block[4] = self;
    v22 = v15;
    v23 = v16;
    v18 = v16;
    v19 = v15;
    dispatch_async(v17, block);
  }

  v20 = *MEMORY[0x277D85DE8];
}

id __79__HMDMatterAccessoryAdapter_RVC__submitServiceAreaChangesToCascadeFromMessage___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 hmf_numberForKey:@"HMDRVCServiceAreaMessageMapIDKey"];
    v7 = [v5 hmf_stringForKey:@"HMDRVCServiceAreaMessageMapNameKey"];
    v8 = objc_alloc_init(MEMORY[0x277CD5508]);
    [v8 setMapID:v6];
    [v8 setName:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 40);
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Error for cascade map creation from message=%@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

id __79__HMDMatterAccessoryAdapter_RVC__submitServiceAreaChangesToCascadeFromMessage___block_invoke_115(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 hmf_numberForKey:@"HMDRVCServiceAreaMessageAreaIDKey"];
    v7 = [v5 hmf_stringForKey:@"HMDRVCServiceAreaMessageAreaNameKey"];
    v8 = [v5 hmf_numberForKey:@"HMDRVCServiceAreaMessageMapIDKey"];
    v9 = objc_alloc_init(MEMORY[0x277CD5308]);
    [v9 setLocationName:v7];
    v10 = objc_alloc_init(MEMORY[0x277CD54F8]);
    [v10 setLocationInfo:v9];
    v11 = objc_alloc_init(MEMORY[0x277CD5500]);
    [v11 setAreaID:v6];
    [v11 setMapID:v8];
    [v11 setAreaInfo:v10];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 40);
      v19 = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Error for cascade area creation from message=%@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)messagePayloadForServiceAreas
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = [(HMDMatterAccessoryAdapter *)self rvcMaps];
  v4 = [v3 na_map:&__block_literal_global_109];

  v5 = [(HMDMatterAccessoryAdapter *)self rvcAreas];
  v6 = [v5 na_map:&__block_literal_global_112_128089];

  v12[0] = @"HMDRVCServiceAreaMessageMapsKey";
  v7 = [v4 copy];
  v12[1] = @"HMDRVCServiceAreaMessageAreasKey";
  v13[0] = v7;
  v8 = [v6 copy];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id __63__HMDMatterAccessoryAdapter_RVC__messagePayloadForServiceAreas__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 areaID];
  v4 = [v2 mapID];
  v5 = [v2 areaInfo];

  v6 = [v5 locationInfo];
  v7 = [v6 locationName];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:v3 forKeyedSubscript:@"HMDRVCServiceAreaMessageAreaIDKey"];
  if (v4)
  {
    [v8 setObject:v4 forKeyedSubscript:@"HMDRVCServiceAreaMessageMapIDKey"];
  }

  if (v7)
  {
    [v8 setObject:v7 forKeyedSubscript:@"HMDRVCServiceAreaMessageAreaNameKey"];
  }

  return v8;
}

id __63__HMDMatterAccessoryAdapter_RVC__messagePayloadForServiceAreas__block_invoke(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 mapID];
  v4 = [v2 name];

  v8[0] = @"HMDRVCServiceAreaMessageMapIDKey";
  v8[1] = @"HMDRVCServiceAreaMessageMapNameKey";
  v9[0] = v3;
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_forwardServiceAreaChangesToAllDevices
{
  v3 = [(HMDMatterAccessoryAdapter *)self accessory];
  v4 = [(HMDMatterAccessoryAdapter *)self messagePayloadForServiceAreas];
  v5 = [v3 home];
  v6 = [v5 users];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __72__HMDMatterAccessoryAdapter_RVC___forwardServiceAreaChangesToAllDevices__block_invoke;
  v9[3] = &unk_278679C90;
  v9[4] = self;
  v10 = v3;
  v11 = v4;
  v7 = v4;
  v8 = v3;
  [v6 na_each:v9];
}

void __72__HMDMatterAccessoryAdapter_RVC___forwardServiceAreaChangesToAllDevices__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 accountHandle];
  if (v4)
  {
    v5 = [HMDRemoteAccountMessageDestination alloc];
    v6 = [*(a1 + 40) messageTargetUUID];
    v7 = [(HMDRemoteAccountMessageDestination *)v5 initWithTarget:v6 handle:v4 multicast:1];

    v8 = [objc_alloc(MEMORY[0x277D0F818]) initWithName:@"HMDRVCServiceAreaMessageName" destination:v7 payload:*(a1 + 48)];
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) messageTargetUUID];
      [v3 account];
      v14 = v24 = v9;
      [v14 identifier];
      v15 = v25 = v7;
      v16 = *(a1 + 48);
      *buf = 138544130;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = v15;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Sending HMDRVCServiceAreaMessage to target=%@ for account=%@ with payload=%@", buf, 0x2Au);

      v7 = v25;
      v9 = v24;
    }

    objc_autoreleasePoolPop(v9);
    v17 = [*(a1 + 40) msgDispatcher];
    [v17 sendMessage:v8];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = *(a1 + 32);
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v3 shortDescription];
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v22;
      _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Cannot send RVC service area message because no account handle was found for user: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)submitServiceAreaChangesToCascade
{
  v3 = [(HMDMatterAccessoryAdapter *)self accessory];
  v4 = [v3 home];
  v5 = [v4 isCurrentDevicePrimaryResident];

  if (v5)
  {
    [(HMDMatterAccessoryAdapter *)self _forwardServiceAreaChangesToAllDevices];
  }

  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [(HMDMatterAccessoryAdapter *)self rvcMaps];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __67__HMDMatterAccessoryAdapter_RVC__submitServiceAreaChangesToCascade__block_invoke;
  v21[3] = &unk_278679C40;
  v21[4] = self;
  v8 = v3;
  v22 = v8;
  v9 = v6;
  v23 = v9;
  [v7 na_each:v21];

  v10 = [(HMDMatterAccessoryAdapter *)self rvcAreas];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __67__HMDMatterAccessoryAdapter_RVC__submitServiceAreaChangesToCascade__block_invoke_101;
  v17 = &unk_278679C68;
  v18 = self;
  v19 = v8;
  v20 = v9;
  v11 = v9;
  v12 = v8;
  [v10 na_each:&v14];

  v13 = [v11 copy];
  [(HMDMatterAccessoryAdapter *)self executeCascadeDonationsForServiceAreaItems:v13];
}

void __67__HMDMatterAccessoryAdapter_RVC__submitServiceAreaChangesToCascade__block_invoke(id *a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 mapID];
  v5 = [v3 name];
  v43 = 0;
  v6 = [objc_alloc(MEMORY[0x277D21018]) initWithName:v5 mapIdentifier:v4 error:&v43];
  v7 = v43;
  if (v7)
  {
    v8 = v7;
    v9 = objc_autoreleasePoolPush();
    v10 = a1[4];
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138544130;
      v45 = v12;
      v46 = 2112;
      v47 = v4;
      v48 = 2112;
      v49 = v5;
      v50 = 2112;
      v51 = v8;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_ERROR, "%{public}@Error for cascade map creation with mapID=%@ mapName=%@ error=%@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v13 = objc_alloc(MEMORY[0x277D21010]);
    v14 = [a1[5] matterNodeID];
    v42 = 0;
    v15 = [v13 initWithMatterDeviceIdentifier:v14 serviceArea:v6 serviceAreaType:2 error:&v42];
    v8 = v42;

    if (v8)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = a1[4];
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138544130;
        v45 = v19;
        v46 = 2112;
        v47 = v4;
        v48 = 2112;
        v49 = v5;
        v50 = 2112;
        v51 = v8;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Error for cascade homeServiceAreaContent creation with mapID=%@ mapName=%@ error=%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v16);
    }

    else
    {
      v20 = a1[4];
      v21 = CCHomeServiceAreaTypeAsString();
      v22 = [v20 uuidForName:v21 nameID:v4];
      v23 = [v22 UUIDString];

      v41 = 0;
      v24 = [objc_alloc(MEMORY[0x277D21020]) initWithSourceItemIdentifier:v23 error:&v41];
      v25 = v41;
      if (v25)
      {
        v8 = v25;
        v38 = v24;
        v26 = objc_autoreleasePoolPush();
        v27 = a1[4];
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v29 = v36 = v23;
          *buf = 138544130;
          v45 = v29;
          v46 = 2112;
          v47 = v4;
          v48 = 2112;
          v49 = v5;
          v50 = 2112;
          v51 = v8;
          _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Error for cascade homeServiceAreaMetaContent creation with mapID=%@ mapName=%@ error=%@", buf, 0x2Au);

          v23 = v36;
        }

        objc_autoreleasePoolPop(v26);
        v24 = v38;
      }

      else
      {
        v40 = 0;
        v30 = [objc_alloc(MEMORY[0x277CF94C8]) initWithContent:v15 metaContent:v24 error:&v40];
        v8 = v40;
        if (v8)
        {
          v39 = v24;
          context = objc_autoreleasePoolPush();
          v31 = a1[4];
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v33 = v37 = v23;
            *buf = 138544130;
            v45 = v33;
            v46 = 2112;
            v47 = v4;
            v48 = 2112;
            v49 = v5;
            v50 = 2112;
            v51 = v8;
            _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_ERROR, "%{public}@Error for cascade item instance creation with mapID=%@ mapName=%@ error=%@", buf, 0x2Au);

            v23 = v37;
          }

          objc_autoreleasePoolPop(context);
          v24 = v39;
        }

        else
        {
          [a1[6] addObject:v30];
        }
      }
    }
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __67__HMDMatterAccessoryAdapter_RVC__submitServiceAreaChangesToCascade__block_invoke_101(id *a1, void *a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 areaID];
  v5 = [v3 mapID];
  v6 = [v3 areaInfo];
  v49 = [v6 locationInfo];
  v7 = [v49 locationName];
  v53 = 0;
  v8 = [objc_alloc(MEMORY[0x277D21008]) initWithName:v7 areaIdentifier:v4 associatedMapIdentifier:v5 error:&v53];
  v9 = v53;
  if (v9)
  {
    v10 = v9;
    v11 = v8;
    v12 = objc_autoreleasePoolPush();
    v13 = a1[4];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v15 = v47 = v6;
      *buf = 138544386;
      v55 = v15;
      v56 = 2112;
      v57 = v4;
      v58 = 2112;
      v59 = v7;
      v60 = 2112;
      v61 = v5;
      v62 = 2112;
      v63 = v10;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_ERROR, "%{public}@Error for cascade area creation with areaID=%@ areaName=%@ mapName=%@ error=%@", buf, 0x34u);

      v6 = v47;
    }

    objc_autoreleasePoolPop(v12);
    v8 = v11;
  }

  else
  {
    v48 = v6;
    v16 = objc_alloc(MEMORY[0x277D21010]);
    v17 = [a1[5] matterNodeID];
    v52 = 0;
    v18 = [v16 initWithMatterDeviceIdentifier:v17 serviceArea:v8 serviceAreaType:1 error:&v52];
    v10 = v52;

    if (v10)
    {
      v44 = v8;
      v19 = objc_autoreleasePoolPush();
      v20 = a1[4];
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138544386;
        v55 = v22;
        v56 = 2112;
        v57 = v4;
        v58 = 2112;
        v59 = v7;
        v60 = 2112;
        v61 = v5;
        v62 = 2112;
        v63 = v10;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Error for cascade home service area content creation with areaID=%@ areaName=%@ mapName=%@ error=%@", buf, 0x34u);
      }

      objc_autoreleasePoolPop(v19);
      v8 = v44;
      v6 = v48;
    }

    else
    {
      v23 = a1[4];
      v24 = CCHomeServiceAreaTypeAsString();
      v25 = [v23 uuidForName:v24 nameID:v4];
      v26 = [v25 UUIDString];

      v51 = 0;
      v43 = v26;
      v27 = [objc_alloc(MEMORY[0x277D21020]) initWithSourceItemIdentifier:v26 error:&v51];
      v28 = v51;
      if (v28)
      {
        v10 = v28;
        v41 = v27;
        v45 = v8;
        v29 = objc_autoreleasePoolPush();
        v30 = a1[4];
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          *buf = 138544386;
          v55 = v32;
          v56 = 2112;
          v57 = v4;
          v58 = 2112;
          v59 = v7;
          v60 = 2112;
          v61 = v5;
          v62 = 2112;
          v63 = v10;
          _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Error for cascade home service area meta content creation with areaID=%@ areaName=%@ mapName=%@ error=%@", buf, 0x34u);
        }

        objc_autoreleasePoolPop(v29);
        v8 = v45;
        v6 = v48;
        v27 = v41;
      }

      else
      {
        v50 = 0;
        v46 = v18;
        v33 = [objc_alloc(MEMORY[0x277CF94C8]) initWithContent:v18 metaContent:v27 error:&v50];
        v10 = v50;
        v6 = v48;
        if (v10)
        {
          v40 = v33;
          v42 = v27;
          v34 = v8;
          v35 = objc_autoreleasePoolPush();
          v36 = a1[4];
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v38 = HMFGetLogIdentifier();
            *buf = 138544386;
            v55 = v38;
            v56 = 2112;
            v57 = v4;
            v58 = 2112;
            v59 = v7;
            v60 = 2112;
            v61 = v5;
            v62 = 2112;
            v63 = v10;
            _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Error for cascade item instance creation with areaID=%@ areaName=%@ mapName=%@ error=%@", buf, 0x34u);

            v6 = v48;
          }

          objc_autoreleasePoolPop(v35);
          v8 = v34;
          v33 = v40;
          v27 = v42;
        }

        else
        {
          [a1[6] addObject:v33];
        }

        v18 = v46;
      }
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

- (BOOL)rvcProgressSupportedForEndpoint:(id)a3
{
  v4 = a3;
  v5 = [(HMDMatterAccessoryAdapter *)self rvcServiceAreaFeatureMapByEndpoint];
  v6 = [v5 hmf_numberForKey:v4];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v6, "unsignedIntValue") & 2}];
  LOBYTE(v4) = [v7 BOOLValue];

  return v4;
}

- (void)_updateFeatureMaps:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeStrong(&self->_rvcServiceAreaFeatureMapByEndpoint, a3);
  os_unfair_lock_unlock(&self->_lock);
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [(HMDMatterAccessoryAdapter *)v7 rvcServiceAreaFeatureMapByEndpoint];
    v12 = 138543618;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Did update RVC FeatureMaps: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v11 = *MEMORY[0x277D85DE8];
}

- (id)_fetchRVCServiceAreaFeatureMapFromEndpoint:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [(HMDMatterAccessoryAdapter *)self accessory];
    v7 = [HMDMatterPath PathWithAttributeID:&unk_283E72E78 endpointID:v5 clusterID:&unk_283E72E30 accessory:v6];

    [(HMDMatterAccessoryAdapter *)self retryFetchTimeout];
    v8 = [(HMDMatterAccessoryAdapter *)self readFromAttributePath:v7 retryTimeout:?];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __77__HMDMatterAccessoryAdapter_RVC___fetchRVCServiceAreaFeatureMapFromEndpoint___block_invoke;
    v15[3] = &unk_27867CF60;
    v16 = v7;
    v17 = self;
    v18 = v5;
    v9 = v5;
    v10 = v7;
    v11 = [v8 then:v15];

    return v11;
  }

  else
  {
    v13 = _HMFPreconditionFailure();
    return __77__HMDMatterAccessoryAdapter_RVC___fetchRVCServiceAreaFeatureMapFromEndpoint___block_invoke(v13, v14);
  }
}

uint64_t __77__HMDMatterAccessoryAdapter_RVC___fetchRVCServiceAreaFeatureMapFromEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v30[0] = *MEMORY[0x277CD50B8];
  v4 = [*(a1 + 32) attributePath];
  v30[1] = *MEMORY[0x277CD50D8];
  v31[0] = v4;
  v31[1] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v23 = 0;
  v6 = [objc_alloc(MEMORY[0x277CD51C8]) initWithResponseValue:v5 error:&v23];
  v7 = v23;
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [v6 value];
    *buf = 138543874;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    v28 = 2112;
    v29 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Attribute report %@. Parse error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [v6 value];
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

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 40);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    v20 = *(a1 + 48);
    *buf = 138543874;
    v25 = v19;
    v26 = 2112;
    v27 = v20;
    v28 = 2112;
    v29 = v15;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Did read service area feature map for endpoint %@ = %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  v21 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)rvcRoomForArea:(id)a3
{
  v4 = a3;
  v5 = [(HMDMatterAccessoryAdapter *)self accessory];
  v6 = [v5 home];

  v7 = [v4 areaInfo];
  v8 = [v7 locationInfo];
  v9 = [v8 locationName];

  v10 = [v4 areaID];

  v11 = [(HMDMatterAccessoryAdapter *)self uuidForName:v9 nameID:v10];
  v12 = [[HMDRoom alloc] initWithName:v9 uuid:v11 home:v6];

  return v12;
}

- (id)rvcZoneForMap:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v4 mapID];
  v7 = [(HMDMatterAccessoryAdapter *)self uuidForName:v5 nameID:v6];

  v8 = [HMDZone alloc];
  v9 = [v4 name];

  v10 = [(HMDMatterAccessoryAdapter *)self accessory];
  v11 = [v10 home];
  v12 = [(HMDZone *)v8 initWithName:v9 uuid:v7 home:v11];

  return v12;
}

- (id)_fetchRVCSupportedAreasFromEndpoint:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [HMDMatterPath PathWithAttributeID:&unk_283E72E60 endpointID:v4 clusterID:&unk_283E72E30 accessory:0];
    [(HMDMatterAccessoryAdapter *)self retryFetchTimeout];
    v7 = [(HMDMatterAccessoryAdapter *)self readFromAttributePath:v6 retryTimeout:?];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __70__HMDMatterAccessoryAdapter_RVC___fetchRVCSupportedAreasFromEndpoint___block_invoke;
    v13[3] = &unk_278687110;
    v13[4] = self;
    v14 = v6;
    v8 = v6;
    v9 = [v7 then:v13];

    return v9;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    return __70__HMDMatterAccessoryAdapter_RVC___fetchRVCSupportedAreasFromEndpoint___block_invoke(v11, v12);
  }
}

uint64_t __70__HMDMatterAccessoryAdapter_RVC___fetchRVCSupportedAreasFromEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v7;
    v27 = 2112;
    v28 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Did read supported areas %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v31[0] = *MEMORY[0x277CD50B8];
  v8 = [*(a1 + 40) attributePath];
  v31[1] = *MEMORY[0x277CD50D8];
  v32[0] = v8;
  v32[1] = v3;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

  v24 = 0;
  v10 = [objc_alloc(MEMORY[0x277CD51C8]) initWithResponseValue:v9 error:&v24];
  v11 = v24;
  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v10 value];
    *buf = 138543874;
    v26 = v15;
    v27 = 2112;
    v28 = v16;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Attribute report %@. Parse error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v17 = [v10 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = MEMORY[0x277CBEBF8];
  if (v19)
  {
    v20 = v19;
  }

  v21 = v20;

  v22 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_fetchRVCSupportedMapsFromEndpoint:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [HMDMatterPath PathWithAttributeID:&unk_283E72E48 endpointID:v4 clusterID:&unk_283E72E30 accessory:0];
    [(HMDMatterAccessoryAdapter *)self retryFetchTimeout];
    v7 = [(HMDMatterAccessoryAdapter *)self readFromAttributePath:v6 retryTimeout:?];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__HMDMatterAccessoryAdapter_RVC___fetchRVCSupportedMapsFromEndpoint___block_invoke;
    v13[3] = &unk_278687110;
    v13[4] = self;
    v14 = v6;
    v8 = v6;
    v9 = [v7 then:v13];

    return v9;
  }

  else
  {
    v11 = _HMFPreconditionFailure();
    return __69__HMDMatterAccessoryAdapter_RVC___fetchRVCSupportedMapsFromEndpoint___block_invoke(v11, v12);
  }
}

uint64_t __69__HMDMatterAccessoryAdapter_RVC___fetchRVCSupportedMapsFromEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v7;
    v27 = 2112;
    v28 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Did read supported maps %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v31[0] = *MEMORY[0x277CD50B8];
  v8 = [*(a1 + 40) attributePath];
  v31[1] = *MEMORY[0x277CD50D8];
  v32[0] = v8;
  v32[1] = v3;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

  v24 = 0;
  v10 = [objc_alloc(MEMORY[0x277CD51C8]) initWithResponseValue:v9 error:&v24];
  v11 = v24;
  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v10 value];
    *buf = 138543874;
    v26 = v15;
    v27 = 2112;
    v28 = v16;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_INFO, "%{public}@Attribute report %@. Parse error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v17 = [v10 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = MEMORY[0x277CBEBF8];
  if (v19)
  {
    v20 = v19;
  }

  v21 = v20;

  v22 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_updateRVCMaps:(id)a3 areas:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v35 = a3;
  v7 = a4;
  v36 = [(HMDMatterAccessoryAdapter *)self accessory];
  v34 = [v36 home];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = [MEMORY[0x277CBEB18] array];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __55__HMDMatterAccessoryAdapter_RVC___updateRVCMaps_areas___block_invoke;
  v37[3] = &unk_278679C18;
  v37[4] = self;
  v32 = v7;
  v38 = v32;
  v10 = v9;
  v39 = v10;
  v11 = v8;
  v40 = v11;
  [v35 na_each:v37];
  os_unfair_lock_lock_with_options();
  v12 = ![v10 isEqual:self->_rvcRooms] || (objc_msgSend(v11, "isEqual:", self->_rvcZones) & 1) == 0;
  v33 = [(NSArray *)self->_rvcRooms copy];
  v13 = [(NSArray *)self->_rvcZones copy];
  objc_storeStrong(&self->_rvcAreas, a4);
  objc_storeStrong(&self->_rvcMaps, a3);
  v14 = [v10 copy];
  rvcRooms = self->_rvcRooms;
  self->_rvcRooms = v14;

  v16 = [v11 copy];
  rvcZones = self->_rvcZones;
  self->_rvcZones = v16;

  os_unfair_lock_unlock(&self->_lock);
  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    v22 = [(HMDMatterAccessoryAdapter *)v19 rvcRooms];
    v23 = [(HMDMatterAccessoryAdapter *)v19 rvcZones];
    *buf = 138543874;
    v42 = v21;
    v43 = 2112;
    v44 = v22;
    v45 = 2112;
    v46 = v23;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Did update RVC Rooms: %@ and Zones %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v18);
  if (v12)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = v19;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v27;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Updating generation counter to kick off HMDAssistantGather sync", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [v34 homeManager];
    v29 = [v36 uuid];
    [v28 updateGenerationCounterWithReason:@"RVC Location Change" sourceUUID:v29 shouldNotifyClients:1];

    [(HMDMatterAccessoryAdapter *)v25 submitServiceAreaChangesToCascade];
    v30 = [MEMORY[0x277CBEB38] dictionary];
    [v30 setObject:v33 forKeyedSubscript:@"HMDOldRVCRoomsKey"];
    [v30 setObject:v13 forKeyedSubscript:@"HMDOldRVCZonesKey"];
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __55__HMDMatterAccessoryAdapter_RVC___updateRVCMaps_areas___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) rvcZoneForMap:v3];
  v5 = *(a1 + 40);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__HMDMatterAccessoryAdapter_RVC___updateRVCMaps_areas___block_invoke_2;
  v13[3] = &unk_278679BC8;
  v14 = v3;
  v6 = v3;
  v7 = [v5 na_filter:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__HMDMatterAccessoryAdapter_RVC___updateRVCMaps_areas___block_invoke_3;
  v12[3] = &unk_278679BF0;
  v12[4] = *(a1 + 32);
  v8 = [v7 na_map:v12];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__HMDMatterAccessoryAdapter_RVC___updateRVCMaps_areas___block_invoke_4;
  v10[3] = &unk_27867F4C0;
  v11 = v4;
  v9 = v4;
  [v8 na_each:v10];
  [*(a1 + 48) addObjectsFromArray:v8];
  [*(a1 + 56) addObject:v9];
}

uint64_t __55__HMDMatterAccessoryAdapter_RVC___updateRVCMaps_areas___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 mapID];
  v4 = [*(a1 + 32) mapID];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (id)_fetchRVCConfigForEndpoint:(id)a3 rvcMaps:(id)a4 rvcAreas:(id)a5 featureMaps:(id)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v41 = v17;
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Fetching RVC config for endpoint: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [(HMDMatterAccessoryAdapter *)v15 _fetchRVCSupportedMapsFromEndpoint:v10];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __90__HMDMatterAccessoryAdapter_RVC___fetchRVCConfigForEndpoint_rvcMaps_rvcAreas_featureMaps___block_invoke;
  v35[3] = &unk_278679B58;
  v35[4] = v15;
  v19 = v10;
  v36 = v19;
  v37 = v11;
  v38 = v12;
  v20 = v12;
  v21 = v11;
  v22 = [v18 then:v35];

  v23 = [(HMDMatterAccessoryAdapter *)v15 _fetchRVCServiceAreaFeatureMapFromEndpoint:v19];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __90__HMDMatterAccessoryAdapter_RVC___fetchRVCConfigForEndpoint_rvcMaps_rvcAreas_featureMaps___block_invoke_68;
  v32[3] = &unk_278679B80;
  v32[4] = v15;
  v33 = v19;
  v34 = v13;
  v24 = v13;
  v25 = v19;
  v26 = [v23 then:v32];

  v39[0] = v22;
  v39[1] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v28 = [MEMORY[0x277D0F7C0] allSettled:v27];
  v29 = [v28 then:&__block_literal_global_73_128128];

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

uint64_t __90__HMDMatterAccessoryAdapter_RVC___fetchRVCConfigForEndpoint_rvcMaps_rvcAreas_featureMaps___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    *buf = 138543874;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Fetched RVC endpoint: %@ supported maps: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  if (v3)
  {
    [*(a1 + 48) addObjectsFromArray:v3];
  }

  v9 = [*(a1 + 32) _fetchRVCSupportedAreasFromEndpoint:*(a1 + 40)];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__HMDMatterAccessoryAdapter_RVC___fetchRVCConfigForEndpoint_rvcMaps_rvcAreas_featureMaps___block_invoke_66;
  v15[3] = &unk_278679B30;
  v10 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v10;
  v17 = *(a1 + 56);
  v11 = [v9 then:v15];
  if (!v11)
  {
    _HMFPreconditionFailure();
  }

  v12 = v11;

  v13 = *MEMORY[0x277D85DE8];
  return 3;
}

uint64_t __90__HMDMatterAccessoryAdapter_RVC___fetchRVCConfigForEndpoint_rvcMaps_rvcAreas_featureMaps___block_invoke_68(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Fetched RVC endpoint: %@ serviceAreaFeatureMap: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  if (v3)
  {
    [*(a1 + 48) setObject:v3 forKey:*(a1 + 40)];
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __90__HMDMatterAccessoryAdapter_RVC___fetchRVCConfigForEndpoint_rvcMaps_rvcAreas_featureMaps___block_invoke_66(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 40);
    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    v15 = 2112;
    v16 = v3;
    _os_log_impl(&dword_229538000, v6, OS_LOG_TYPE_INFO, "%{public}@Fetched RVC endpoint: %@ supported areas: %@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  if (v3)
  {
    [*(a1 + 48) addObjectsFromArray:v3];
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)fetchRVCConfig
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = MEMORY[0x277CBEB98];
  v7 = [(HMDMatterAccessoryAdapter *)self mtrPaths];
  v8 = [v7 na_map:&__block_literal_global_57];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v11 = [v6 setWithArray:v10];

  v12 = [v11 allObjects];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __48__HMDMatterAccessoryAdapter_RVC__fetchRVCConfig__block_invoke_60;
  v29[3] = &unk_278679B08;
  v29[4] = self;
  v13 = v3;
  v30 = v13;
  v14 = v4;
  v31 = v14;
  v15 = v5;
  v32 = v15;
  v16 = [v12 na_map:v29];

  if ([v16 count])
  {
    v17 = [MEMORY[0x277D0F7C0] allSettled:v16];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __48__HMDMatterAccessoryAdapter_RVC__fetchRVCConfig__block_invoke_64;
    v25[3] = &unk_2786868C8;
    v25[4] = self;
    v26 = v13;
    v27 = v14;
    v28 = v15;
    v18 = [v17 then:v25];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v22;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEBUG, "%{public}@No endpoints to fetch RVC config", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    v18 = [MEMORY[0x277D0F7C0] futureWithNoValue];
  }

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

id __48__HMDMatterAccessoryAdapter_RVC__fetchRVCConfig__block_invoke_60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D0F7C0];
  v5 = [*(a1 + 32) workContext];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__HMDMatterAccessoryAdapter_RVC__fetchRVCConfig__block_invoke_2;
  v10[3] = &unk_278679AE0;
  v6 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v3;
  v12 = v6;
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v7 = v3;
  v8 = [v4 inContext:v5 perform:v10];

  return v8;
}

uint64_t __48__HMDMatterAccessoryAdapter_RVC__fetchRVCConfig__block_invoke_64(uint64_t a1)
{
  [*(a1 + 32) _updateRVCMaps:*(a1 + 40) areas:*(a1 + 48)];
  [*(a1 + 32) _updateFeatureMaps:*(a1 + 56)];
  return 1;
}

uint64_t __48__HMDMatterAccessoryAdapter_RVC__fetchRVCConfig__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) _fetchRVCConfigForEndpoint:*(a1 + 40) rvcMaps:*(a1 + 48) rvcAreas:*(a1 + 56) featureMaps:*(a1 + 64)];
  if (v1)
  {
    v2 = v1;

    return 3;
  }

  else
  {
    v4 = _HMFPreconditionFailure();
    return __48__HMDMatterAccessoryAdapter_RVC__fetchRVCConfig__block_invoke(v4);
  }
}

id __48__HMDMatterAccessoryAdapter_RVC__fetchRVCConfig__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 cluster];
  if ([v3 isEqualToNumber:&unk_283E72E30])
  {
    v4 = [v2 endpoint];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)uuidForName:(id)a3 nameID:(id)a4
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", a3, a4];
  v6 = MEMORY[0x277CCAD78];
  v7 = [(HMDMatterAccessoryAdapter *)self accessory];
  v8 = [v7 uuid];
  v9 = [v5 dataUsingEncoding:4];
  v10 = [v6 hmf_UUIDWithNamespace:v8 data:v9];

  return v10;
}

- (NSDictionary)rvcServiceAreaFeatureMapByEndpoint
{
  os_unfair_lock_lock_with_options();
  v3 = self->_rvcServiceAreaFeatureMapByEndpoint;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)rvcAreas
{
  os_unfair_lock_lock_with_options();
  v3 = self->_rvcAreas;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)rvcMaps
{
  os_unfair_lock_lock_with_options();
  v3 = self->_rvcMaps;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)rvcZones
{
  os_unfair_lock_lock_with_options();
  v3 = self->_rvcZones;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)rvcRooms
{
  os_unfair_lock_lock_with_options();
  v3 = self->_rvcRooms;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)firstRVCEndpointID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__128142;
  v10 = __Block_byref_object_dispose__128143;
  v11 = 0;
  v2 = [(HMDMatterAccessoryAdapter *)self endpointToDeviceTypesMap];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__HMDMatterAccessoryAdapter_RVC__firstRVCEndpointID__block_invoke;
  v5[3] = &unk_278679A98;
  v5[4] = &v6;
  [v2 hmf_enumerateKeysAndObjectsWithAutoreleasePoolUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __52__HMDMatterAccessoryAdapter_RVC__firstRVCEndpointID__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 na_any:&__block_literal_global_43_128145])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)supportsRVC
{
  v2 = [(HMDMatterAccessoryAdapter *)self endpointToDeviceTypesMap];
  v3 = [v2 na_any:&__block_literal_global_128147];

  return v3;
}

@end