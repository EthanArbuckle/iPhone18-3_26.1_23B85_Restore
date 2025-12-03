@interface HPMHeadphoneManager
+ (HPMHeadphoneManager)shared;
+ (id)pairedHeadphones;
- (BOOL)isAppleHeadphoneWithCbDevice:(id)device;
- (CBDeviceReporting)deviceConnectionListener;
- (HPMHeadphoneMangerTopLevelEntryUIHandling)topLevelUIHandler;
- (NSDictionary)connectedHeadphones;
- (NSDictionary)connectedRecords;
- (NSDictionary)pairedHeadphones;
- (NSDictionary)pendingConnectedHeadphones;
- (id)getDeviceFromUUIDWithUUID:(id)d;
- (id)headphoneDeviceForAddress:(id)address;
- (void)addTopLevelEntryWithHpDevice:(id)device;
- (void)disconnectWithHpDevice:(id)device;
- (void)removeTopLevelEntryWithHpDevice:(id)device;
- (void)setConnectedHeadphones:(id)headphones;
- (void)setConnectedRecords:(id)records;
- (void)setDeviceConnectionListener:(id)listener;
- (void)setPairedHeadphones:(id)headphones;
- (void)setPendingConnectedHeadphones:(id)headphones;
- (void)setTopLevelUIHandler:(id)handler;
- (void)unpairWithHpDevice:(id)device;
- (void)updateDeviceConfigWithHpDevice:(id)device settings:(id)settings;
- (void)updateOfflineDeviceConfigWithHpDevice:(id)device settings:(id)settings;
- (void)updateTitleBar;
- (void)updateTopLevelEntryWithHpDevice:(id)device;
@end

@implementation HPMHeadphoneManager

+ (HPMHeadphoneManager)shared
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v2 = static Headphone_Manager.shared.getter();

  return v2;
}

- (void)setTopLevelUIHandler:(id)handler
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.topLevelUIHandler.setter();
  MEMORY[0x1E69E5920](self);
}

- (HPMHeadphoneMangerTopLevelEntryUIHandling)topLevelUIHandler
{
  MEMORY[0x1E69E5928](self);
  v4 = Headphone_Manager.topLevelUIHandler.getter();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (NSDictionary)connectedRecords
{
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.connectedRecords.getter();
  MEMORY[0x1E69E5920](self);
  type metadata accessor for HMDeviceRecord();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return isa;
}

- (void)setConnectedRecords:(id)records
{
  MEMORY[0x1E69E5928](records);
  MEMORY[0x1E69E5928](self);
  type metadata accessor for HMDeviceRecord();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  Headphone_Manager.connectedRecords.setter();
  MEMORY[0x1E69E5920](records);
  MEMORY[0x1E69E5920](self);
}

- (CBDeviceReporting)deviceConnectionListener
{
  MEMORY[0x1E69E5928](self);
  v4 = Headphone_Manager.deviceConnectionListener.getter();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setDeviceConnectionListener:(id)listener
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.deviceConnectionListener.setter();
  MEMORY[0x1E69E5920](self);
}

- (NSDictionary)connectedHeadphones
{
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.connectedHeadphones.getter();
  MEMORY[0x1E69E5920](self);
  type metadata accessor for HeadphoneDevice();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return isa;
}

- (void)setConnectedHeadphones:(id)headphones
{
  MEMORY[0x1E69E5928](headphones);
  MEMORY[0x1E69E5928](self);
  type metadata accessor for HeadphoneDevice();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  Headphone_Manager.connectedHeadphones.setter();
  MEMORY[0x1E69E5920](headphones);
  MEMORY[0x1E69E5920](self);
}

- (NSDictionary)pairedHeadphones
{
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.pairedHeadphones.getter();
  MEMORY[0x1E69E5920](self);
  type metadata accessor for HeadphoneDevice();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return isa;
}

- (void)setPairedHeadphones:(id)headphones
{
  MEMORY[0x1E69E5928](headphones);
  MEMORY[0x1E69E5928](self);
  type metadata accessor for HeadphoneDevice();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  Headphone_Manager.pairedHeadphones.setter();
  MEMORY[0x1E69E5920](headphones);
  MEMORY[0x1E69E5920](self);
}

- (NSDictionary)pendingConnectedHeadphones
{
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.pendingConnectedHeadphones.getter();
  MEMORY[0x1E69E5920](self);
  type metadata accessor for HeadphoneDevice();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return isa;
}

- (void)setPendingConnectedHeadphones:(id)headphones
{
  MEMORY[0x1E69E5928](headphones);
  MEMORY[0x1E69E5928](self);
  type metadata accessor for HeadphoneDevice();
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  Headphone_Manager.pendingConnectedHeadphones.setter(v4);
  MEMORY[0x1E69E5920](headphones);
  MEMORY[0x1E69E5920](self);
}

- (BOOL)isAppleHeadphoneWithCbDevice:(id)device
{
  MEMORY[0x1E69E5928](device);
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.isAppleHeadphone(cbDevice:)(device);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](device);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)updateDeviceConfigWithHpDevice:(id)device settings:(id)settings
{
  MEMORY[0x1E69E5928](device);
  MEMORY[0x1E69E5928](settings);
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.updateDeviceConfig(hpDevice:settings:)(device, settings);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](settings);
  MEMORY[0x1E69E5920](device);
}

- (void)updateOfflineDeviceConfigWithHpDevice:(id)device settings:(id)settings
{
  MEMORY[0x1E69E5928](device);
  MEMORY[0x1E69E5928](settings);
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.updateOfflineDeviceConfig(hpDevice:settings:)(device, settings);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](settings);
  MEMORY[0x1E69E5920](device);
}

- (void)disconnectWithHpDevice:(id)device
{
  MEMORY[0x1E69E5928](device);
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.disconnect(hpDevice:)(device);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](device);
}

- (void)unpairWithHpDevice:(id)device
{
  MEMORY[0x1E69E5928](device);
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.unpair(hpDevice:)(device);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](device);
}

- (id)headphoneDeviceForAddress:(id)address
{
  MEMORY[0x1E69E5928](address);
  MEMORY[0x1E69E5928](self);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = Headphone_Manager.headphoneDevice(forAddress:)(v4, v5);

  MEMORY[0x1E69E5920](address);
  MEMORY[0x1E69E5920](self);

  return v9;
}

+ (id)pairedHeadphones
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  static Headphone_Manager.pairedHeadphones()();
  type metadata accessor for HeadphoneDevice();
  isa = Array._bridgeToObjectiveC()().super.isa;

  return isa;
}

- (id)getDeviceFromUUIDWithUUID:(id)d
{
  MEMORY[0x1E69E5928](d);
  MEMORY[0x1E69E5928](self);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = Headphone_Manager.getDeviceFromUUID(UUID:)(v4, v5);

  MEMORY[0x1E69E5920](d);
  MEMORY[0x1E69E5920](self);

  return v9;
}

- (void)updateTitleBar
{
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.updateTitleBar()();
  MEMORY[0x1E69E5920](self);
}

- (void)addTopLevelEntryWithHpDevice:(id)device
{
  MEMORY[0x1E69E5928](device);
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.addTopLevelEntry(hpDevice:)(device);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](device);
}

- (void)updateTopLevelEntryWithHpDevice:(id)device
{
  MEMORY[0x1E69E5928](device);
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.updateTopLevelEntry(hpDevice:)(device);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](device);
}

- (void)removeTopLevelEntryWithHpDevice:(id)device
{
  MEMORY[0x1E69E5928](device);
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.removeTopLevelEntry(hpDevice:)(device);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](device);
}

@end