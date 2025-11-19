@interface HDCyclingDataCollectionForwarder
- (HDCyclingDataCollectionForwarder)init;
- (id)_newBikeSensor;
- (void)insertSamples:(id)a3 device:(id)a4 source:(id)a5;
@end

@implementation HDCyclingDataCollectionForwarder

- (HDCyclingDataCollectionForwarder)init
{
  v7.receiver = self;
  v7.super_class = HDCyclingDataCollectionForwarder;
  v2 = [(HDCyclingDataCollectionForwarder *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(HDCyclingDataCollectionForwarder *)v2 _newBikeSensor];
    cmBikeSensor = v3->_cmBikeSensor;
    v3->_cmBikeSensor = v4;
  }

  return v3;
}

- (id)_newBikeSensor
{
  if (![MEMORY[0x277CC1C28] isAvailable])
  {
    return 0;
  }

  v2 = MEMORY[0x277CC1C28];

  return objc_alloc_init(v2);
}

- (void)insertSamples:(id)a3 device:(id)a4 source:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (self->_cmBikeSensor)
  {
    v12 = [v10 bundleIdentifier];
    v13 = v12;
    if (v12 == *MEMORY[0x277CCE288])
    {
    }

    else
    {
      if (![MEMORY[0x277CCDD30] isCollectBLETypesFromLocalSourceEnabled])
      {

        goto LABEL_9;
      }

      v14 = [v11 _isLocalDevice];

      if ((v14 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __64__HDCyclingDataCollectionForwarder_insertSamples_device_source___block_invoke;
    v15[3] = &unk_278627708;
    v15[4] = self;
    v16 = v9;
    [v8 enumerateObjectsUsingBlock:v15];
  }

LABEL_9:
}

void __64__HDCyclingDataCollectionForwarder_insertSamples_device_source___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = a2;
  v6 = v5;
  if (!v4)
  {

    goto LABEL_15;
  }

  v7 = MEMORY[0x277CC1C30];
  v8 = v3;
  v9 = [v7 alloc];
  v10 = [v6 endDate];
  v11 = [v9 initWithTimestamp:v10];

  v12 = [v8 manufacturer];
  [v11 setManufacturer:v12];

  v13 = [v8 localIdentifier];
  [v11 setDeviceIdentifier:v13];

  v14 = [v8 model];

  [v11 setModel:v14];
  v15 = [v6 quantityType];
  v16 = [v15 code];

  switch(v16)
  {
    case 282:
      v17 = [v6 quantity];
      v18 = [MEMORY[0x277CCDAB0] unitFromString:@"count/min"];
      [v17 doubleValueForUnit:v18];
      [v11 setInstantaneousCadence:?];
      goto LABEL_8;
    case 281:
      v17 = [v6 quantity];
      v18 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
      [v17 doubleValueForUnit:v18];
      [v11 setInstantaneousSpeed:?];
      goto LABEL_8;
    case 280:
      v17 = [v6 quantity];
      v18 = [MEMORY[0x277CCDAB0] wattUnit];
      [v17 doubleValueForUnit:v18];
      [v11 setInstantaneousPower:?];
LABEL_8:

      v23 = v11;
      goto LABEL_12;
  }

  _HKInitializeLogging();
  v19 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
  {
    v20 = v19;
    v21 = [v6 quantityType];
    *buf = 138543618;
    v25 = v4;
    v26 = 2114;
    v27 = v21;
    _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "%{public}@: Received non forwardable of %{public}@", buf, 0x16u);
  }

  v23 = 0;
LABEL_12:

  if (v23)
  {
    [*(*(a1 + 32) + 8) feedBikeSensorData:?];
    goto LABEL_16;
  }

LABEL_15:
  v23 = 0;
LABEL_16:
  v22 = *MEMORY[0x277D85DE8];
}

@end