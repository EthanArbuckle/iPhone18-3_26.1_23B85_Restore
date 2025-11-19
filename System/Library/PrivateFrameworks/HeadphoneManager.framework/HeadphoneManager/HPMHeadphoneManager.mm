@interface HPMHeadphoneManager
+ (HPMHeadphoneManager)shared;
+ (id)pairedHeadphones;
- (BOOL)isAppleHeadphoneWithCbDevice:(id)a3;
- (CBDeviceReporting)deviceConnectionListener;
- (HPMHeadphoneMangerTopLevelEntryUIHandling)topLevelUIHandler;
- (NSDictionary)connectedHeadphones;
- (NSDictionary)connectedRecords;
- (NSDictionary)pairedHeadphones;
- (NSDictionary)pendingConnectedHeadphones;
- (id)getDeviceFromUUIDWithUUID:(id)a3;
- (id)headphoneDeviceForAddress:(id)a3;
- (void)addTopLevelEntryWithHpDevice:(id)a3;
- (void)disconnectWithHpDevice:(id)a3;
- (void)removeTopLevelEntryWithHpDevice:(id)a3;
- (void)setConnectedHeadphones:(id)a3;
- (void)setConnectedRecords:(id)a3;
- (void)setDeviceConnectionListener:(id)a3;
- (void)setPairedHeadphones:(id)a3;
- (void)setPendingConnectedHeadphones:(id)a3;
- (void)setTopLevelUIHandler:(id)a3;
- (void)unpairWithHpDevice:(id)a3;
- (void)updateDeviceConfigWithHpDevice:(id)a3 settings:(id)a4;
- (void)updateOfflineDeviceConfigWithHpDevice:(id)a3 settings:(id)a4;
- (void)updateTitleBar;
- (void)updateTopLevelEntryWithHpDevice:(id)a3;
@end

@implementation HPMHeadphoneManager

+ (HPMHeadphoneManager)shared
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v2 = static Headphone_Manager.shared.getter();

  return v2;
}

- (void)setTopLevelUIHandler:(id)a3
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

- (void)setConnectedRecords:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  type metadata accessor for HMDeviceRecord();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  Headphone_Manager.connectedRecords.setter();
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](self);
}

- (CBDeviceReporting)deviceConnectionListener
{
  MEMORY[0x1E69E5928](self);
  v4 = Headphone_Manager.deviceConnectionListener.getter();
  MEMORY[0x1E69E5920](self);

  return v4;
}

- (void)setDeviceConnectionListener:(id)a3
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

- (void)setConnectedHeadphones:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  type metadata accessor for HeadphoneDevice();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  Headphone_Manager.connectedHeadphones.setter();
  MEMORY[0x1E69E5920](a3);
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

- (void)setPairedHeadphones:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  type metadata accessor for HeadphoneDevice();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  Headphone_Manager.pairedHeadphones.setter();
  MEMORY[0x1E69E5920](a3);
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

- (void)setPendingConnectedHeadphones:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  type metadata accessor for HeadphoneDevice();
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  Headphone_Manager.pendingConnectedHeadphones.setter(v4);
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](self);
}

- (BOOL)isAppleHeadphoneWithCbDevice:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.isAppleHeadphone(cbDevice:)(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
  return _convertBoolToObjCBool(_:)() & 1;
}

- (void)updateDeviceConfigWithHpDevice:(id)a3 settings:(id)a4
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.updateDeviceConfig(hpDevice:settings:)(a3, a4);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
}

- (void)updateOfflineDeviceConfigWithHpDevice:(id)a3 settings:(id)a4
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a4);
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.updateOfflineDeviceConfig(hpDevice:settings:)(a3, a4);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a4);
  MEMORY[0x1E69E5920](a3);
}

- (void)disconnectWithHpDevice:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.disconnect(hpDevice:)(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (void)unpairWithHpDevice:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.unpair(hpDevice:)(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (id)headphoneDeviceForAddress:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = Headphone_Manager.headphoneDevice(forAddress:)(v4, v5);

  MEMORY[0x1E69E5920](a3);
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

- (id)getDeviceFromUUIDWithUUID:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = Headphone_Manager.getDeviceFromUUID(UUID:)(v4, v5);

  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](self);

  return v9;
}

- (void)updateTitleBar
{
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.updateTitleBar()();
  MEMORY[0x1E69E5920](self);
}

- (void)addTopLevelEntryWithHpDevice:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.addTopLevelEntry(hpDevice:)(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (void)updateTopLevelEntryWithHpDevice:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.updateTopLevelEntry(hpDevice:)(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (void)removeTopLevelEntryWithHpDevice:(id)a3
{
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](self);
  Headphone_Manager.removeTopLevelEntry(hpDevice:)(a3);
  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

@end