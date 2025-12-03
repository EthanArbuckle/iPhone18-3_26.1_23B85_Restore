@interface IRNearbyDeviceContainerMO
+ (id)nearbyDeviceContainerMOWithNearbyDeviceContainerDO:(id)o replayEvent:(id)event inManagedObjectContext:(id)context;
+ (void)setPropertiesOfNearbyDeviceContainerMO:(id)o withNearbyDeviceContainerDO:(id)dO inManagedObjectContext:(id)context;
- (id)convert;
@end

@implementation IRNearbyDeviceContainerMO

+ (id)nearbyDeviceContainerMOWithNearbyDeviceContainerDO:(id)o replayEvent:(id)event inManagedObjectContext:(id)context
{
  contextCopy = context;
  eventCopy = event;
  oCopy = o;
  v10 = [[IRNearbyDeviceContainerMO alloc] initWithContext:contextCopy];
  [(IRNearbyDeviceContainerMO *)v10 setReplayEvent:eventCopy];

  [IRNearbyDeviceContainerMO setPropertiesOfNearbyDeviceContainerMO:v10 withNearbyDeviceContainerDO:oCopy inManagedObjectContext:contextCopy];

  return v10;
}

+ (void)setPropertiesOfNearbyDeviceContainerMO:(id)o withNearbyDeviceContainerDO:(id)dO inManagedObjectContext:(id)context
{
  oCopy = o;
  contextCopy = context;
  dOCopy = dO;
  nearbyDevices = [dOCopy nearbyDevices];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __127__IRNearbyDeviceContainerMO_Access__setPropertiesOfNearbyDeviceContainerMO_withNearbyDeviceContainerDO_inManagedObjectContext___block_invoke;
  v17 = &unk_2797E1358;
  v18 = oCopy;
  v19 = contextCopy;
  v11 = contextCopy;
  v12 = oCopy;
  [nearbyDevices enumerateObjectsUsingBlock:&v14];

  freezeDateNIHomeDevice = [dOCopy freezeDateNIHomeDevice];

  [v12 setFreezeDateNIHomeDevice:freezeDateNIHomeDevice];
}

void __127__IRNearbyDeviceContainerMO_Access__setPropertiesOfNearbyDeviceContainerMO_withNearbyDeviceContainerDO_inManagedObjectContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [IRNearbyDeviceMO nearbyDeviceMOWithNearbyDeviceDO:a2 nearbyDeviceContainer:v2 inManagedObjectContext:*(a1 + 40)];
  [v2 addNearbyDevicesObject:v3];
}

- (id)convert
{
  v3 = objc_opt_new();
  nearbyDevices = [(IRNearbyDeviceContainerMO *)self nearbyDevices];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__IRNearbyDeviceContainerMO_Access__convert__block_invoke;
  v10[3] = &unk_2797E1380;
  v11 = v3;
  v5 = v3;
  [nearbyDevices enumerateObjectsUsingBlock:v10];

  v6 = [IRNearbyDeviceContainerDO alloc];
  freezeDateNIHomeDevice = [(IRNearbyDeviceContainerMO *)self freezeDateNIHomeDevice];
  v8 = [(IRNearbyDeviceContainerDO *)v6 initWithFreezeDateNIHomeDevice:freezeDateNIHomeDevice nearbyDevices:v5];

  return v8;
}

void __44__IRNearbyDeviceContainerMO_Access__convert__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 convert];
  [v2 addObject:v3];
}

@end