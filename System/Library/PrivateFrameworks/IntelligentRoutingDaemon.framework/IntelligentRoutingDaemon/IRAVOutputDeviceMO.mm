@interface IRAVOutputDeviceMO
+ (id)aVOutputDeviceMOFromAVOutputDeviceDO:(id)o inNode:(id)node withManagedObjectContext:(id)context;
+ (void)setPropertiesOfAVOutputDeviceMO:(id)o withAVOutputDevice:(id)device;
- (id)convert;
@end

@implementation IRAVOutputDeviceMO

+ (id)aVOutputDeviceMOFromAVOutputDeviceDO:(id)o inNode:(id)node withManagedObjectContext:(id)context
{
  contextCopy = context;
  nodeCopy = node;
  oCopy = o;
  v10 = [[IRAVOutputDeviceMO alloc] initWithContext:contextCopy];

  [(IRAVOutputDeviceMO *)v10 setNode:nodeCopy];
  [IRAVOutputDeviceMO setPropertiesOfAVOutputDeviceMO:v10 withAVOutputDevice:oCopy];

  return v10;
}

+ (void)setPropertiesOfAVOutputDeviceMO:(id)o withAVOutputDevice:(id)device
{
  deviceCopy = device;
  oCopy = o;
  deviceID = [deviceCopy deviceID];
  [oCopy setDeviceID:deviceID];

  deviceName = [deviceCopy deviceName];
  [oCopy setDeviceName:deviceName];

  modelID = [deviceCopy modelID];
  [oCopy setModelID:modelID];

  [oCopy setDeviceType:{objc_msgSend(deviceCopy, "deviceType")}];
  [oCopy setDeviceSubType:{objc_msgSend(deviceCopy, "deviceSubType")}];
  [oCopy setHasAirplayProperties:{objc_msgSend(deviceCopy, "hasAirplayProperties")}];
  [oCopy setDiscoveredOverInfra:{objc_msgSend(deviceCopy, "discoveredOverInfra")}];
  discoveredWithBroker = [deviceCopy discoveredWithBroker];

  [oCopy setDiscoveredWithBroker:discoveredWithBroker];
}

- (id)convert
{
  deviceID = [(IRAVOutputDeviceMO *)self deviceID];
  modelID = [(IRAVOutputDeviceMO *)self modelID];
  deviceName = [(IRAVOutputDeviceMO *)self deviceName];
  v6 = [IRAVOutputDeviceDO aVOutputDeviceDOWithDeviceID:deviceID modelID:modelID deviceName:deviceName hasAirplayProperties:[(IRAVOutputDeviceMO *)self hasAirplayProperties] discoveredOverInfra:[(IRAVOutputDeviceMO *)self discoveredOverInfra] discoveredWithBroker:[(IRAVOutputDeviceMO *)self discoveredWithBroker] deviceType:[(IRAVOutputDeviceMO *)self deviceType] deviceSubType:[(IRAVOutputDeviceMO *)self deviceSubType]];

  return v6;
}

@end