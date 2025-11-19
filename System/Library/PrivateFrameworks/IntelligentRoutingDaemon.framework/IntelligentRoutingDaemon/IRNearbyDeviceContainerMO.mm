@interface IRNearbyDeviceContainerMO
+ (id)nearbyDeviceContainerMOWithNearbyDeviceContainerDO:(id)a3 replayEvent:(id)a4 inManagedObjectContext:(id)a5;
+ (void)setPropertiesOfNearbyDeviceContainerMO:(id)a3 withNearbyDeviceContainerDO:(id)a4 inManagedObjectContext:(id)a5;
- (id)convert;
@end

@implementation IRNearbyDeviceContainerMO

+ (id)nearbyDeviceContainerMOWithNearbyDeviceContainerDO:(id)a3 replayEvent:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[IRNearbyDeviceContainerMO alloc] initWithContext:v7];
  [(IRNearbyDeviceContainerMO *)v10 setReplayEvent:v8];

  [IRNearbyDeviceContainerMO setPropertiesOfNearbyDeviceContainerMO:v10 withNearbyDeviceContainerDO:v9 inManagedObjectContext:v7];

  return v10;
}

+ (void)setPropertiesOfNearbyDeviceContainerMO:(id)a3 withNearbyDeviceContainerDO:(id)a4 inManagedObjectContext:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = a4;
  v10 = [v9 nearbyDevices];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __127__IRNearbyDeviceContainerMO_Access__setPropertiesOfNearbyDeviceContainerMO_withNearbyDeviceContainerDO_inManagedObjectContext___block_invoke;
  v17 = &unk_2797E1358;
  v18 = v7;
  v19 = v8;
  v11 = v8;
  v12 = v7;
  [v10 enumerateObjectsUsingBlock:&v14];

  v13 = [v9 freezeDateNIHomeDevice];

  [v12 setFreezeDateNIHomeDevice:v13];
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
  v4 = [(IRNearbyDeviceContainerMO *)self nearbyDevices];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __44__IRNearbyDeviceContainerMO_Access__convert__block_invoke;
  v10[3] = &unk_2797E1380;
  v11 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v10];

  v6 = [IRNearbyDeviceContainerDO alloc];
  v7 = [(IRNearbyDeviceContainerMO *)self freezeDateNIHomeDevice];
  v8 = [(IRNearbyDeviceContainerDO *)v6 initWithFreezeDateNIHomeDevice:v7 nearbyDevices:v5];

  return v8;
}

void __44__IRNearbyDeviceContainerMO_Access__convert__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 convert];
  [v2 addObject:v3];
}

@end