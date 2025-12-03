@interface HKAudioExposureDevicesDataSource
- (HKAudioExposureDevicesDataSource)initWithDeviceType:(unint64_t)type healthStore:(id)store;
- (id)_localizedNameForDevice:(id)device;
- (id)_makeDeviceQueryForDeviceType;
- (id)_sampleTypeForDeviceType;
- (int64_t)deviceCount;
- (void)_cleanUp;
- (void)_notify_dataSourceIsReady;
- (void)addObserver:(id)observer;
- (void)cancelQuery;
- (void)removeObserver:(id)observer;
- (void)startQuery;
@end

@implementation HKAudioExposureDevicesDataSource

- (HKAudioExposureDevicesDataSource)initWithDeviceType:(unint64_t)type healthStore:(id)store
{
  storeCopy = store;
  v21.receiver = self;
  v21.super_class = HKAudioExposureDevicesDataSource;
  v8 = [(HKAudioExposureDevicesDataSource *)&v21 init];
  v9 = v8;
  if (v8)
  {
    v8->_ready = 0;
    v8->_deviceType = type;
    v10 = [MEMORY[0x1E695DFD8] set];
    devices = v9->_devices;
    v9->_devices = v10;

    devicesByName = v9->_devicesByName;
    v9->_devicesByName = MEMORY[0x1E695E0F8];

    objc_storeStrong(&v9->_healthStore, store);
    v13 = objc_alloc(MEMORY[0x1E696C2F0]);
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = HKLogInfrastructure();
    v17 = [v13 initWithName:v15 loggingCategory:v16];
    observers = v9->_observers;
    v9->_observers = v17;

    query = v9->_query;
    v9->_query = 0;
  }

  return v9;
}

- (int64_t)deviceCount
{
  devices = [(HKAudioExposureDevicesDataSource *)self devices];
  v3 = [devices count];

  return v3;
}

- (void)startQuery
{
  [(HKAudioExposureDevicesDataSource *)self setReady:0];
  _makeDeviceQueryForDeviceType = [(HKAudioExposureDevicesDataSource *)self _makeDeviceQueryForDeviceType];
  [(HKAudioExposureDevicesDataSource *)self setQuery:_makeDeviceQueryForDeviceType];

  healthStore = [(HKAudioExposureDevicesDataSource *)self healthStore];
  query = [(HKAudioExposureDevicesDataSource *)self query];
  [healthStore executeQuery:query];
}

- (void)cancelQuery
{
  [(HKAudioExposureDevicesDataSource *)self setReady:0];

  [(HKAudioExposureDevicesDataSource *)self _cleanUp];
}

- (void)_cleanUp
{
  healthStore = [(HKAudioExposureDevicesDataSource *)self healthStore];
  query = [(HKAudioExposureDevicesDataSource *)self query];
  [healthStore stopQuery:query];

  [(HKAudioExposureDevicesDataSource *)self setQuery:0];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HKAudioExposureDevicesDataSource *)self observers];
  [observers registerObserver:observerCopy queue:MEMORY[0x1E69E96A0]];

  if ([(HKAudioExposureDevicesDataSource *)self isReady])
  {

    [(HKAudioExposureDevicesDataSource *)self _notify_dataSourceIsReady];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(HKAudioExposureDevicesDataSource *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)_notify_dataSourceIsReady
{
  observers = [(HKAudioExposureDevicesDataSource *)self observers];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__HKAudioExposureDevicesDataSource__notify_dataSourceIsReady__block_invoke;
  v4[3] = &unk_1E81B8FF0;
  v4[4] = self;
  [observers notifyObservers:v4];
}

void __61__HKAudioExposureDevicesDataSource__notify_dataSourceIsReady__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 audioExposureDataSourceIsReady:*(a1 + 32)];
  }
}

- (id)_makeDeviceQueryForDeviceType
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__HKAudioExposureDevicesDataSource__makeDeviceQueryForDeviceType__block_invoke;
  aBlock[3] = &unk_1E81B9040;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = objc_alloc(MEMORY[0x1E696C0D8]);
  _sampleTypeForDeviceType = [(HKAudioExposureDevicesDataSource *)self _sampleTypeForDeviceType];
  v6 = [v4 initWithObjectType:_sampleTypeForDeviceType predicate:0 resultsHandler:v3];

  return v6;
}

void __65__HKAudioExposureDevicesDataSource__makeDeviceQueryForDeviceType__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v22 = a2;
  v8 = a3;
  v9 = a4;
  [*(a1 + 32) _cleanUp];
  v23 = v8;
  v24 = v9;
  if (v9)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x1E696B988];
    if (os_log_type_enabled(*MEMORY[0x1E696B988], OS_LOG_TYPE_ERROR))
    {
      __65__HKAudioExposureDevicesDataSource__makeDeviceQueryForDeviceType__block_invoke_cold_1(v24, v10);
    }
  }

  else
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__13;
    v41 = __Block_byref_object_dispose__13;
    v42 = [MEMORY[0x1E695DFD8] setWithArray:v8];
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__13;
    v35 = __Block_byref_object_dispose__13;
    v36 = [MEMORY[0x1E695DF90] dictionary];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v38[5];
    v11 = [obj countByEnumeratingWithState:&v27 objects:v43 count:16];
    if (v11)
    {
      v12 = *v28;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v28 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v27 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          v16 = [*(a1 + 32) _localizedNameForDevice:v14];
          v17 = [v32[5] objectForKeyedSubscript:v16];
          v18 = v17;
          if (!v17)
          {
            v17 = [MEMORY[0x1E695DFD8] set];
            v4 = v17;
          }

          v19 = [v17 mutableCopy];
          if (!v18)
          {
          }

          [v19 addObject:v14];
          v20 = v32[5];
          v21 = [v19 copy];
          [v20 setValue:v21 forKey:v16];

          objc_autoreleasePoolPop(v15);
        }

        v11 = [obj countByEnumeratingWithState:&v27 objects:v43 count:16];
      }

      while (v11);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__HKAudioExposureDevicesDataSource__makeDeviceQueryForDeviceType__block_invoke_297;
    block[3] = &unk_1E81B9018;
    block[4] = *(a1 + 32);
    block[5] = &v37;
    block[6] = &v31;
    dispatch_async(MEMORY[0x1E69E96A0], block);
    _Block_object_dispose(&v31, 8);

    _Block_object_dispose(&v37, 8);
  }
}

uint64_t __65__HKAudioExposureDevicesDataSource__makeDeviceQueryForDeviceType__block_invoke_297(uint64_t a1)
{
  [*(a1 + 32) setDevices:*(*(*(a1 + 40) + 8) + 40)];
  [*(a1 + 32) setDevicesByName:*(*(*(a1 + 48) + 8) + 40)];
  [*(a1 + 32) setReady:1];
  v2 = *(a1 + 32);

  return [v2 _notify_dataSourceIsReady];
}

- (id)_sampleTypeForDeviceType
{
  deviceType = [(HKAudioExposureDevicesDataSource *)self deviceType];
  if (deviceType)
  {
    if (deviceType != 1)
    {
      goto LABEL_6;
    }

    v3 = MEMORY[0x1E696BD08];
  }

  else
  {
    v3 = MEMORY[0x1E696BD28];
  }

  deviceType = [MEMORY[0x1E696C370] quantityTypeForIdentifier:*v3];
LABEL_6:

  return deviceType;
}

- (id)_localizedNameForDevice:(id)device
{
  deviceCopy = device;
  name = [deviceCopy name];

  if (!name)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = v8;
    v10 = @"UNKNOWN_DEVICE_NAME";
    goto LABEL_5;
  }

  name2 = [deviceCopy name];
  lowercaseString = [name2 lowercaseString];
  v7 = [lowercaseString isEqualToString:@"wired"];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v9 = v8;
    v10 = @"WIRED_HEADPHONE_DEVICE_NAME";
LABEL_5:
    name3 = [v8 localizedStringForKey:v10 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];

    goto LABEL_7;
  }

  name3 = [deviceCopy name];
LABEL_7:

  return name3;
}

void __65__HKAudioExposureDevicesDataSource__makeDeviceQueryForDeviceType__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "Error querying for audio exposure sample devices: %{public}@", &v2, 0xCu);
}

@end