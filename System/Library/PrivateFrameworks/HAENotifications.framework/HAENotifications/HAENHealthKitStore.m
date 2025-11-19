@interface HAENHealthKitStore
+ (id)createHKCategorySampleForEvent:(id)a3;
+ (id)sharedInstance;
- (HAENHealthKitStore)init;
- (id)saveNotificationEventToHealthKit:(id)a3;
- (id)saveNotificationEventToHealthKit:(id)a3 withDelegate:(id)a4;
@end

@implementation HAENHealthKitStore

+ (id)sharedInstance
{
  if (sharedInstance_once_1 != -1)
  {
    +[HAENHealthKitStore sharedInstance];
  }

  v3 = sharedInstance_instance_1;

  return v3;
}

uint64_t __36__HAENHealthKitStore_sharedInstance__block_invoke()
{
  sharedInstance_instance_1 = objc_alloc_init(HAENHealthKitStore);

  return MEMORY[0x2821F96F8]();
}

- (HAENHealthKitStore)init
{
  v7.receiver = self;
  v7.super_class = HAENHealthKitStore;
  v2 = [(HAENHealthKitStore *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.coreaudio.hae.notifications.hkq", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    healthStore = v2->_healthStore;
    v2->_healthStore = 0;
  }

  return v2;
}

+ (id)createHKCategorySampleForEvent:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 eventType] != 2003133803)
  {
    v4 = HAENotificationsLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(HAENHealthKitStore *)v3 createHKCategorySampleForEvent:v4];
    }

    v21 = 0;
    goto LABEL_13;
  }

  if (objc_opt_class())
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = [v3 metadata];
    v6 = [v5 objectForKey:@"_HAENMetadataIdentifierWeeklyExposureDuration"];

    if (v6)
    {
      v7 = MEMORY[0x277CCD7E0];
      v8 = [MEMORY[0x277CCDAB8] secondUnit];
      [v6 doubleValue];
      v9 = [v7 quantityWithUnit:v8 doubleValue:?];
      [v4 setObject:v9 forKey:*MEMORY[0x277CCC448]];
    }

    v10 = [v3 metadata];
    v11 = [v10 objectForKey:@"_HAENMetadataIdentifierWeeklyIncludesPrunableData"];

    if (v11)
    {
      [v4 setObject:v11 forKey:@"_HKPrivateMetadataKeyNotificationIncludesPrunableData"];
    }

    v12 = MEMORY[0x277CCD7E0];
    v13 = [MEMORY[0x277CCDAB8] decibelAWeightedSoundPressureLevelUnit];
    [v3 level];
    v14 = [v12 quantityWithUnit:v13 doubleValue:?];
    [v4 setObject:v14 forKey:*MEMORY[0x277CCC460]];

    v15 = MEMORY[0x277CCD0B8];
    v16 = [MEMORY[0x277CCD728] categoryTypeForIdentifier:*MEMORY[0x277CCB9A8]];
    v17 = [v3 dateInterval];
    v18 = [v17 startDate];
    v19 = [v3 dateInterval];
    v20 = [v19 endDate];
    v21 = [v15 categorySampleWithType:v16 value:1 startDate:v18 endDate:v20 device:0 metadata:v4];

    v22 = HAENotificationsLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v3 uuid];
      v26 = 138412546;
      v27 = v21;
      v28 = 2112;
      v29 = v23;
      _os_log_impl(&dword_25081E000, v22, OS_LOG_TYPE_DEFAULT, "created HKCategorySample [ %@ ] for event [ %@ ]", &v26, 0x16u);
    }

LABEL_13:
    goto LABEL_14;
  }

  v21 = 0;
LABEL_14:

  v24 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)saveNotificationEventToHealthKit:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HAENotificationsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 uuid];
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_25081E000, v5, OS_LOG_TYPE_DEFAULT, "saving notification event [ %@ ] to HealthKit", buf, 0xCu);
  }

  v7 = [HAENHealthKitStore createHKCategorySampleForEvent:v4];
  v8 = v7;
  if (v7)
  {
    queue = self->_queue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__HAENHealthKitStore_saveNotificationEventToHealthKit___block_invoke;
    v13[3] = &unk_27969F240;
    v14 = v7;
    v15 = self;
    dispatch_async(queue, v13);

    v10 = 0;
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAENotficiationsError" code:*"skh!" userInfo:0];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

void __55__HAENHealthKitStore_saveNotificationEventToHealthKit___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = HAENotificationsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) UUID];
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_25081E000, v2, OS_LOG_TYPE_DEFAULT, "saving HKCategorySample [ %@ ] to healthkit", buf, 0xCu);
  }

  if (!*(*(a1 + 40) + 16) && objc_opt_class())
  {
    v4 = objc_alloc_init(MEMORY[0x277CCD4E0]);
    v5 = *(a1 + 40);
    v6 = *(v5 + 16);
    *(v5 + 16) = v4;
  }

  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 16);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__HAENHealthKitStore_saveNotificationEventToHealthKit___block_invoke_304;
  v10[3] = &unk_27969F290;
  v11 = v7;
  [v8 saveObject:v11 withCompletion:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __55__HAENHealthKitStore_saveNotificationEventToHealthKit___block_invoke_304(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = HAENotificationsLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __55__HAENHealthKitStore_saveNotificationEventToHealthKit___block_invoke_304_cold_1(a1, v5, v6);
    }
  }
}

- (id)saveNotificationEventToHealthKit:(id)a3 withDelegate:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = HAENotificationsLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 uuid];
    *buf = 138412546;
    v20 = v9;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_25081E000, v8, OS_LOG_TYPE_DEFAULT, "saving notification event [ %@ ] to HealthKit using delegate: %@", buf, 0x16u);
  }

  if (v7)
  {
    v10 = [HAENHealthKitStore createHKCategorySampleForEvent:v6];
    v11 = v10;
    if (v10)
    {
      queue = self->_queue;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __68__HAENHealthKitStore_saveNotificationEventToHealthKit_withDelegate___block_invoke;
      v16[3] = &unk_27969F240;
      v17 = v10;
      v18 = v7;
      dispatch_async(queue, v16);

      v13 = 0;
    }

    else
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAENotficiationsError" code:*"skh!" userInfo:0];
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HAENotficiationsError" code:*"gld!" userInfo:0];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t __68__HAENHealthKitStore_saveNotificationEventToHealthKit_withDelegate___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = HAENotificationsLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) UUID];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25081E000, v2, OS_LOG_TYPE_DEFAULT, "saving HKCategorySample [ %@ ] to HealthKit through HAENotificationCenterUserDelegate", &v6, 0xCu);
  }

  result = [*(a1 + 40) saveHAENotificationEventAsHKCategorySample:*(a1 + 32)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)createHKCategorySampleForEvent:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25081E000, a2, OS_LOG_TYPE_ERROR, "unknown event type %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __55__HAENHealthKitStore_saveNotificationEventToHealthKit___block_invoke_304_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) UUID];
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_25081E000, a3, OS_LOG_TYPE_ERROR, "failed to write healthkit sample [ %@ ], error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end