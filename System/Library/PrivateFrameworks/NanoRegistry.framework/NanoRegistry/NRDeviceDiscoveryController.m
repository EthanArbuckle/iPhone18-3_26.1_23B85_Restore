@interface NRDeviceDiscoveryController
+ (id)sharedInstance;
- (NRDeviceDiscoveryController)init;
- (NSArray)devices;
- (void)begin;
- (void)end;
- (void)overrideSignalStrengthLimit:(int64_t)a3;
@end

@implementation NRDeviceDiscoveryController

- (NRDeviceDiscoveryController)init
{
  v3.receiver = self;
  v3.super_class = NRDeviceDiscoveryController;
  return [(NRDeviceDiscoveryController *)&v3 init];
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__NRDeviceDiscoveryController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED6F0A48 != -1)
  {
    dispatch_once(&qword_1ED6F0A48, block);
  }

  v2 = qword_1ED6F0A40;

  return v2;
}

uint64_t __45__NRDeviceDiscoveryController_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED6F0A40;
  qword_1ED6F0A40 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (void)overrideSignalStrengthLimit:(int64_t)a3
{
  v4 = +[NRPairedDeviceRegistry sharedInstance];
  [v4 overrideSignalStrengthLimit:a3];
}

- (void)begin
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  [v2 beginDiscovery];
}

- (void)end
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  [v2 endDiscovery];
}

- (NSArray)devices
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = [v3 getAllDevices];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 valueForProperty:{@"isPaired", v15}];
        v12 = [v10 valueForProperty:@"isActive"];
        if (([v11 BOOLValue] & 1) == 0 && (objc_msgSend(v12, "BOOLValue") & 1) == 0)
        {
          [v2 insertObject:v10 atIndex:{objc_msgSend(v2, "indexOfObject:inSortedRange:options:usingComparator:", v10, 0, objc_msgSend(v2, "count"), 1024, &__block_literal_global_620)}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v2;
}

uint64_t __38__NRDeviceDiscoveryController_devices__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 valueForProperty:@"_RSSI"];
  v6 = [v4 valueForProperty:@"_RSSI"];

  if (v5)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 != 0;
  }

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v7 = [v6 compare:v5];
  }

  return v7;
}

@end