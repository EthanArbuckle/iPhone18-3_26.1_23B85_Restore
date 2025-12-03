@interface PDRRegistry_Impl
+ (BOOL)supportsWatch;
+ (id)sharedInstance;
- (BOOL)isPaired;
- (BOOL)removeDelegate:(id)delegate;
- (OS_dispatch_queue)callbackQueue;
- (PDRDeviceCollectionFilter)devices;
- (id)failsafeUnpairWithOptions:(id)options;
- (id)getActiveDevice;
- (id)getActivePairedDeviceExcludingAltAccount;
- (id)getActivePairedDeviceIncludingAltAccount;
- (id)getDevicesExcluding:(unint64_t)excluding;
- (id)pairingID;
- (id)pairingStorePath;
- (id)unpairWithDevice:(id)device withOptions:(id)options;
- (int64_t)compatibilityState;
- (int64_t)lastSyncSwitchIndex;
- (int64_t)migrationCountForPairingID:(id)d;
- (int64_t)switchIndex;
- (void)addDelegate:(id)delegate;
- (void)completeRTCPairingMetricForMetricID:(id)d withSuccess:(id)success;
- (void)getSwitchEventsAfterIndex:(unsigned int)index process:(id)process;
- (void)pairingClientSetAltAccountName:(id)name altDSID:(id)d forDevice:(id)device completion:(id)completion;
- (void)setActivePairedDevice:(id)device resultsCallback:(id)callback;
- (void)setCallbackQueue:(id)queue;
- (void)start;
- (void)stop;
- (void)waitForPairingExtendedMetadataForAdvertisedName:(id)name completion:(id)completion;
@end

@implementation PDRRegistry_Impl

- (id)pairingID
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  getActiveDevice = [(PDRRegistry_Impl *)selfCopy getActiveDevice];
  if (getActiveDevice)
  {
    v10 = getActiveDevice;
    pairingID = [getActiveDevice pairingID];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v12.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v7, v3);
  }

  else
  {

    v12.super.isa = 0;
  }

  return v12.super.isa;
}

- (id)getActiveDevice
{
  selfCopy = self;
  active = Registry_Impl.getActivePairedDeviceIncludingAltAccount()(6);

  return active;
}

- (id)getDevicesExcluding:(unint64_t)excluding
{
  specialized Registry_Impl.getDevicesExcluding(_:)(excluding);
  type metadata accessor for PDRDevice();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (id)pairingStorePath
{
  selfCopy = self;
  getActiveDevice = [(PDRRegistry_Impl *)selfCopy getActiveDevice];
  if (getActiveDevice && (v4 = getActiveDevice, v5 = [getActiveDevice pairingStorePath], v4, v5))
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = MEMORY[0x2318DF040](v6, v8);

    v10 = v9;
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

+ (BOOL)supportsWatch
{
  if (one-time initialization token for supportWatch != -1)
  {
    swift_once();
  }

  return static RegistryCrux.supportWatch;
}

+ (id)sharedInstance
{
  if (one-time initialization token for sharedInstance_ != -1)
  {
    swift_once();
  }

  v3 = static Registry_Impl.sharedInstance_;

  return v3;
}

- (void)start
{
  selfCopy = self;
  Registry_Impl.start()();
}

- (void)setCallbackQueue:(id)queue
{
  if (*(&self->super.super.isa + OBJC_IVAR___PDRRegistry_Impl_amSingleton) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = type metadata accessor for Registry_Impl();
    [(PDRRegistry *)&v4 setCallbackQueue:queue];
  }
}

- (void)addDelegate:(id)delegate
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___PDRRegistry_Impl_delegates);
  swift_unknownObjectRetain();
  selfCopy = self;

  specialized WeakCollection.append(_:)();

  swift_unknownObjectRelease();
}

- (OS_dispatch_queue)callbackQueue
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for Registry_Impl();
  callbackQueue = [(PDRRegistry *)&v4 callbackQueue];

  return callbackQueue;
}

- (int64_t)compatibilityState
{
  selfCopy = self;
  v3 = Registry_Impl.computeCompatibilityState()();

  return v3;
}

- (void)stop
{
  selfCopy = self;
  Registry_Impl.stop()();
}

- (PDRDeviceCollectionFilter)devices
{
  selfCopy = self;
  v3 = [(PDRRegistry_Impl *)selfCopy getDevicesExcluding:0];
  type metadata accessor for PDRDevice();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = type metadata accessor for DeviceCollectionFilter_Impl();
  v6 = objc_allocWithZone(v5);
  v7 = OBJC_IVAR___PDRDeviceCollectionFilter_Impl_unfairLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *&v6[v7] = v8;
  *&v6[OBJC_IVAR___PDRDeviceCollectionFilter_Impl_currentCollection] = v4;
  v11.receiver = v6;
  v11.super_class = v5;
  v9 = [(PDRRegistry *)&v11 init];

  return v9;
}

- (id)getActivePairedDeviceIncludingAltAccount
{
  selfCopy = self;
  active = Registry_Impl.getActivePairedDeviceIncludingAltAccount()(7);

  return active;
}

- (id)getActivePairedDeviceExcludingAltAccount
{
  selfCopy = self;
  active = Registry_Impl.getActivePairedDeviceIncludingAltAccount()(39);

  return active;
}

- (BOOL)isPaired
{
  selfCopy = self;
  v3 = [(PDRRegistry_Impl *)selfCopy getDevicesExcluding:1];
  type metadata accessor for PDRDevice();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = MEMORY[0x2318DF310](v7);
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v5 != 0;
}

- (BOOL)removeDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = Registry_Impl.remove(delegate:)(delegate);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (int64_t)switchIndex
{
  selfCopy = self;
  if ([(PDRRegistry_Impl *)selfCopy isPaired])
  {
    if (one-time initialization token for instance != -1)
    {
      swift_once();
    }

    v3 = RegistryCrux.switchIndex()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)getSwitchEventsAfterIndex:(unsigned int)index process:(id)process
{
  v6 = _Block_copy(process);
  _Block_copy(v6);
  selfCopy = self;
  specialized Registry_Impl.getSwitchEvents(after:process:)(index, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (id)unpairWithDevice:(id)device withOptions:(id)options
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = one-time initialization token for instance;
  deviceCopy = device;
  if (v10 != -1)
  {
    swift_once();
  }

  pairingID = [deviceCopy pairingID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = RegistryCrux.unpair(pairingID:options:)();

  (*(v6 + 8))(v9, v5);
  if (v13)
  {
    v14 = _convertErrorToNSError(_:)();
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)failsafeUnpairWithOptions:(id)options
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v3 = RegistryCrux.failsafeUnpair(options:)();

  if (v3)
  {
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setActivePairedDevice:(id)device resultsCallback:(id)callback
{
  v6 = _Block_copy(callback);
  _Block_copy(v6);
  deviceCopy = device;
  selfCopy = self;
  specialized Registry_Impl.setActive(device:results:)(deviceCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (int64_t)lastSyncSwitchIndex
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v2 = RegistryCrux.lastSyncSwitchIndex()();

  return v2;
}

- (int64_t)migrationCountForPairingID:(id)d
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v8 = RegistryCrux.migrationCount(pairingID:)();

  (*(v4 + 8))(v7, v3);
  return v8;
}

- (void)waitForPairingExtendedMetadataForAdvertisedName:(id)name completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  specialized Registry_Impl.waitForPairingExtendedMetadata(advertisedName:results:)(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)completeRTCPairingMetricForMetricID:(id)d withSuccess:(id)success
{
  v4 = _Block_copy(success);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v8 = RegistryCrux.completeRTCPairingMetric(metricID:)(v5, v7);
  v10 = v9;

  if (v10)
  {
    v11 = _convertErrorToNSError(_:)();
  }

  else
  {
    v11 = 0;
  }

  v4[2](v4, v8 & 1, v11);

  _Block_release(v4);
}

- (void)pairingClientSetAltAccountName:(id)name altDSID:(id)d forDevice:(id)device completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = one-time initialization token for instance;
  deviceCopy = device;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = RegistryCrux.pairingClientSetAltAccount(name:altDSID:device:)(v8, v10, v11, v13, deviceCopy);

  if (v16)
  {
    v17 = _convertErrorToNSError(_:)();
  }

  else
  {
    v17 = 0;
  }

  v7[2](v7, v17);

  _Block_release(v7);
}

@end