@interface IRAVOutputDeviceMO
+ (id)aVOutputDeviceMOFromAVOutputDeviceDO:(id)a3 inNode:(id)a4 withManagedObjectContext:(id)a5;
+ (void)setPropertiesOfAVOutputDeviceMO:(id)a3 withAVOutputDevice:(id)a4;
- (id)convert;
@end

@implementation IRAVOutputDeviceMO

+ (id)aVOutputDeviceMOFromAVOutputDeviceDO:(id)a3 inNode:(id)a4 withManagedObjectContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[IRAVOutputDeviceMO alloc] initWithContext:v7];

  [(IRAVOutputDeviceMO *)v10 setNode:v8];
  [IRAVOutputDeviceMO setPropertiesOfAVOutputDeviceMO:v10 withAVOutputDevice:v9];

  return v10;
}

+ (void)setPropertiesOfAVOutputDeviceMO:(id)a3 withAVOutputDevice:(id)a4
{
  v5 = a4;
  v10 = a3;
  v6 = [v5 deviceID];
  [v10 setDeviceID:v6];

  v7 = [v5 deviceName];
  [v10 setDeviceName:v7];

  v8 = [v5 modelID];
  [v10 setModelID:v8];

  [v10 setDeviceType:{objc_msgSend(v5, "deviceType")}];
  [v10 setDeviceSubType:{objc_msgSend(v5, "deviceSubType")}];
  [v10 setHasAirplayProperties:{objc_msgSend(v5, "hasAirplayProperties")}];
  [v10 setDiscoveredOverInfra:{objc_msgSend(v5, "discoveredOverInfra")}];
  v9 = [v5 discoveredWithBroker];

  [v10 setDiscoveredWithBroker:v9];
}

- (id)convert
{
  v3 = [(IRAVOutputDeviceMO *)self deviceID];
  v4 = [(IRAVOutputDeviceMO *)self modelID];
  v5 = [(IRAVOutputDeviceMO *)self deviceName];
  v6 = [IRAVOutputDeviceDO aVOutputDeviceDOWithDeviceID:v3 modelID:v4 deviceName:v5 hasAirplayProperties:[(IRAVOutputDeviceMO *)self hasAirplayProperties] discoveredOverInfra:[(IRAVOutputDeviceMO *)self discoveredOverInfra] discoveredWithBroker:[(IRAVOutputDeviceMO *)self discoveredWithBroker] deviceType:[(IRAVOutputDeviceMO *)self deviceType] deviceSubType:[(IRAVOutputDeviceMO *)self deviceSubType]];

  return v6;
}

@end