@interface HUNearbySettings
+ (BOOL)isTimeStampExpired:(id)expired;
+ (id)dateFromTimeStamp:(id)stamp;
+ (id)sharedInstance;
+ (id)timeStamp;
- (HUNearbySettings)init;
- (id)cleanUpExpiredFromSavedDomainData:(id)data isOutcoming:(BOOL)outcoming;
- (id)extractMessageIDsFromMessage:(id)message;
- (id)savedData;
- (id)savedDataForKey:(id)key fromData:(id)data;
- (void)addCollectedData:(id)data toData:(id)toData isOutcoming:(BOOL)outcoming;
- (void)addNewMessage:(id)message domain:(id)domain numberData:(int64_t)data stringData:(id)stringData toDictionary:(id)dictionary;
- (void)cleanUpExpired:(id)expired andSaveToData:(id)data forKey:(id)key;
- (void)incomingXPCMessageID:(unint64_t)d fromPid:(int)pid;
- (void)processAndSaveCollectedDataWithCompletion:(id)completion;
- (void)processAndSaveCollectedTimeStamps;
- (void)saveCollectedDataWithCompletion:(id)completion;
- (void)savedData;
@end

@implementation HUNearbySettings

+ (id)timeStamp
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v2 setDateFormat:@"yyyy-MM-dd HH:mm:ss:SS"];
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = [v2 stringFromDate:v3];

  return v4;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_10 != -1)
  {
    +[HUNearbySettings sharedInstance];
  }

  v3 = sharedInstance_Settings_5;

  return v3;
}

uint64_t __34__HUNearbySettings_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HUNearbySettings);
  v1 = sharedInstance_Settings_5;
  sharedInstance_Settings_5 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)dateFromTimeStamp:(id)stamp
{
  v3 = MEMORY[0x1E696AB78];
  stampCopy = stamp;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"yyyy-MM-dd HH:mm:ss:SS"];
  v6 = [v5 dateFromString:stampCopy];

  return v6;
}

+ (BOOL)isTimeStampExpired:(id)expired
{
  expiredCopy = expired;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [HUNearbySettings dateFromTimeStamp:expiredCopy];
    v5 = [MEMORY[0x1E695DF00] now];
    [v5 timeIntervalSinceDate:v4];
    v7 = v6 > 86400.0;
  }

  else
  {
    v8 = HCLogHearingNearbyIDS();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(HUNearbySettings *)expiredCopy isTimeStampExpired:v8, v9, v10, v11, v12, v13, v14];
    }

    v7 = 1;
  }

  return v7;
}

- (HUNearbySettings)init
{
  v14.receiver = self;
  v14.super_class = HUNearbySettings;
  v2 = [(HCSettings *)&v14 init];
  if (v2)
  {
    v3 = objc_opt_new();
    collectedOutcomingData = v2->_collectedOutcomingData;
    v2->_collectedOutcomingData = v3;

    v5 = objc_opt_new();
    collectedIncomingData = v2->_collectedIncomingData;
    v2->_collectedIncomingData = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_DEFAULT, 0);
    v9 = dispatch_queue_create("hu_nearby_settings_queue", v8);
    saveQueue = v2->_saveQueue;
    v2->_saveQueue = v9;

    v11 = [objc_alloc(MEMORY[0x1E6988780]) initWithTargetSerialQueue:v2->_saveQueue];
    saveTimer = v2->_saveTimer;
    v2->_saveTimer = v11;

    [(AXDispatchTimer *)v2->_saveTimer setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [(HUNearbySettings *)v2 processAndSaveCollectedTimeStamps];
  }

  return v2;
}

- (void)incomingXPCMessageID:(unint64_t)d fromPid:(int)pid
{
  if (d)
  {
    v6 = messageIdentifierDescription();
  }

  else
  {
    v6 = @"New XPC";
  }

  v7 = v6;
  [(HUNearbySettings *)self addNewMessage:MEMORY[0x1E695E0F8] domain:@"com.apple.heard.xpc" numberData:pid stringData:v6 toDictionary:self->_collectedIncomingData];
}

- (void)saveCollectedDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__HUNearbySettings_saveCollectedDataWithCompletion___block_invoke;
  v6[3] = &unk_1E85CA930;
  v7 = completionCopy;
  v5 = completionCopy;
  [(HUNearbySettings *)self processAndSaveCollectedDataWithCompletion:v6];
}

void __52__HUNearbySettings_saveCollectedDataWithCompletion___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__HUNearbySettings_saveCollectedDataWithCompletion___block_invoke_2;
  block[3] = &unk_1E85CA930;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __52__HUNearbySettings_saveCollectedDataWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)addNewMessage:(id)message domain:(id)domain numberData:(int64_t)data stringData:(id)stringData toDictionary:(id)dictionary
{
  domainCopy = domain;
  dictionaryCopy = dictionary;
  if (domainCopy)
  {
    stringDataCopy = stringData;
    messageCopy = message;
    v16 = [(NSMutableDictionary *)dictionaryCopy objectForKey:domainCopy];
    if (!v16)
    {
      v16 = objc_opt_new();
    }

    v17 = [v16 objectForKey:kAXSTimeStampsKey];
    if (!v17)
    {
      v17 = objc_opt_new();
    }

    v18 = objc_opt_new();
    v19 = +[HUNearbySettings timeStamp];
    [v18 addObject:v19];

    v20 = [MEMORY[0x1E696AD98] numberWithInteger:data];
    [v18 addObject:v20];

    [v18 addObject:stringDataCopy];
    v21 = [(HUNearbySettings *)self extractMessageIDsFromMessage:messageCopy];

    [v18 addObjectsFromArray:v21];
    [v17 addObject:v18];
    [v16 setObject:v17 forKey:kAXSTimeStampsKey];
    collectedOutcomingData = self->_collectedOutcomingData;
    if (data == 2 && collectedOutcomingData == dictionaryCopy)
    {
      v23 = [v16 objectForKey:kAXSNoWakeCountKey];
      unsignedIntegerValue = [v23 unsignedIntegerValue];

      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
      [v16 setObject:v25 forKey:kAXSNoWakeCountKey];
    }

    [(NSMutableDictionary *)dictionaryCopy setObject:v16 forKey:domainCopy];
    v26 = @"Incoming";
    if (collectedOutcomingData == dictionaryCopy)
    {
      v26 = @"Outcoming";
    }

    v27 = v26;
    v28 = HCLogHearingNearbyIDS();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [HUNearbySettings addNewMessage:domain:numberData:stringData:toDictionary:];
    }
  }
}

- (void)processAndSaveCollectedTimeStamps
{
  saveTimer = [(HUNearbySettings *)self saveTimer];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__HUNearbySettings_processAndSaveCollectedTimeStamps__block_invoke;
  v4[3] = &unk_1E85C9F60;
  v4[4] = self;
  [saveTimer afterDelay:v4 processBlock:600.0];
}

uint64_t __53__HUNearbySettings_processAndSaveCollectedTimeStamps__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__HUNearbySettings_processAndSaveCollectedTimeStamps__block_invoke_2;
  v3[3] = &unk_1E85C9F60;
  v3[4] = v1;
  return [v1 processAndSaveCollectedDataWithCompletion:v3];
}

- (void)processAndSaveCollectedDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[HUNearbyController sharedInstance];
  nearbyUpdatesQueue = [v5 nearbyUpdatesQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__HUNearbySettings_processAndSaveCollectedDataWithCompletion___block_invoke;
  v8[3] = &unk_1E85CA380;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(nearbyUpdatesQueue, v8);
}

void __62__HUNearbySettings_processAndSaveCollectedDataWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) collectedOutcomingData];
  v3 = [v2 copy];

  v4 = [*(a1 + 32) collectedIncomingData];
  v5 = [v4 copy];

  v6 = [*(a1 + 32) collectedOutcomingData];
  [v6 removeAllObjects];

  v7 = [*(a1 + 32) collectedIncomingData];
  [v7 removeAllObjects];

  v8 = [*(a1 + 32) saveQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __62__HUNearbySettings_processAndSaveCollectedDataWithCompletion___block_invoke_2;
  v12[3] = &unk_1E85CD1E0;
  v13 = v3;
  v14 = v5;
  v9 = *(a1 + 40);
  v15 = *(a1 + 32);
  v16 = v9;
  v10 = v5;
  v11 = v3;
  dispatch_async(v8, v12);
}

uint64_t __62__HUNearbySettings_processAndSaveCollectedDataWithCompletion___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) count] || objc_msgSend(*(a1 + 40), "count"))
  {
    v2 = [*(a1 + 48) savedData];
    v3 = objc_opt_new();
    v4 = [*(a1 + 48) savedDataForKey:kAXSOutcomingDataKey fromData:v2];
    if ([*(a1 + 32) count])
    {
      [*(a1 + 48) addCollectedData:*(a1 + 32) toData:v4 isOutcoming:1];
    }

    [*(a1 + 48) cleanUpExpired:v4 andSaveToData:v3 forKey:kAXSOutcomingDataKey];
    v5 = [*(a1 + 48) savedDataForKey:kAXSIncomingDataKey fromData:v2];
    if ([*(a1 + 40) count])
    {
      [*(a1 + 48) addCollectedData:*(a1 + 40) toData:v5 isOutcoming:0];
    }

    [*(a1 + 48) cleanUpExpired:v5 andSaveToData:v3 forKey:kAXSIncomingDataKey];
    [*(a1 + 48) setValue:v3 forPreferenceKey:kAXSNearbyPreference];
    v6 = HCLogHearingNearbyIDS();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __62__HUNearbySettings_processAndSaveCollectedDataWithCompletion___block_invoke_2_cold_1(v2, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)savedData
{
  v2 = [(HCSettings *)self objectValueForKey:kAXSNearbyPreference withClass:objc_opt_class() andDefaultValue:0];
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 mutableCopy];
  }

  v4 = HCLogHearingNearbyIDS();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(HUNearbySettings *)v3 savedData:v4];
  }

  if (!v3)
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (id)savedDataForKey:(id)key fromData:(id)data
{
  keyCopy = key;
  v6 = [data objectForKey:keyCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 mutableCopy];
  }

  else
  {
    v7 = 0;
  }

  v8 = HCLogHearingNearbyIDS();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [HUNearbySettings savedDataForKey:fromData:];
  }

  if (!v7)
  {
    v7 = objc_opt_new();
  }

  return v7;
}

- (void)addCollectedData:(id)data toData:(id)toData isOutcoming:(BOOL)outcoming
{
  toDataCopy = toData;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__HUNearbySettings_addCollectedData_toData_isOutcoming___block_invoke;
  v9[3] = &unk_1E85CD208;
  v10 = toDataCopy;
  outcomingCopy = outcoming;
  v8 = toDataCopy;
  [data enumerateKeysAndObjectsUsingBlock:v9];
}

void __56__HUNearbySettings_addCollectedData_toData_isOutcoming___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = [v5 objectForKey:kAXSTimeStampsKey];
  if ([v6 count])
  {
    v7 = [*(a1 + 32) objectForKey:v17];
    v8 = [v7 mutableCopy];
    if (!v8)
    {
      v8 = objc_opt_new();
    }

    v9 = [v7 objectForKey:kAXSTimeStampsKey];
    v10 = [v9 mutableCopy];
    if (!v10)
    {
      v10 = objc_opt_new();
    }

    [v10 addObjectsFromArray:v6];
    v11 = [v7 objectForKey:kAXSNoWakeCountKey];
    v16 = [v11 unsignedIntegerValue];

    v12 = [v5 objectForKey:kAXSNoWakeCountKey];
    v13 = [v12 unsignedIntegerValue];

    [v8 setObject:v10 forKey:kAXSTimeStampsKey];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    [v8 setObject:v14 forKey:kAXSCountKey];

    if (*(a1 + 40) == 1)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v13 + v16];
      [v8 setObject:v15 forKey:kAXSNoWakeCountKey];
    }

    [*(a1 + 32) setObject:v8 forKey:{v17, v16}];
  }
}

- (void)cleanUpExpired:(id)expired andSaveToData:(id)data forKey:(id)key
{
  expiredCopy = expired;
  dataCopy = data;
  keyCopy = key;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__11;
  v25 = __Block_byref_object_dispose__11;
  v26 = 0;
  v11 = [keyCopy isEqualToString:kAXSOutcomingDataKey];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__HUNearbySettings_cleanUpExpired_andSaveToData_forKey___block_invoke;
  v16[3] = &unk_1E85CD230;
  v16[4] = self;
  v20 = v11;
  v12 = expiredCopy;
  v17 = v12;
  v18 = &v27;
  v19 = &v21;
  [v12 enumerateKeysAndObjectsUsingBlock:v16];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v28[3]];
  [v12 setObject:v13 forKey:kAXSTotalCountKey];

  v14 = v22[5];
  if (v14)
  {
    [v12 setObject:v14 forKey:kAXSTimeStampKey];
  }

  [dataCopy setObject:v12 forKey:keyCopy];
  v15 = HCLogHearingNearbyIDS();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [HUNearbySettings cleanUpExpired:andSaveToData:forKey:];
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

void __56__HUNearbySettings_cleanUpExpired_andSaveToData_forKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  if (([v16 isEqualToString:kAXSTotalCountKey] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", kAXSTimeStampKey) & 1) == 0)
  {
    v6 = [*(a1 + 32) cleanUpExpiredFromSavedDomainData:v5 isOutcoming:*(a1 + 64)];
    [*(a1 + 40) setObject:v6 forKey:v16];
    v7 = [v6 objectForKey:kAXSTimeStampsKey];
    v8 = [v6 objectForKey:kAXSCountKey];
    v9 = [v8 unsignedIntegerValue];

    *(*(*(a1 + 48) + 8) + 24) += v9;
    if (![v7 count])
    {
LABEL_16:

      goto LABEL_17;
    }

    v10 = [v7 objectAtIndexedSubscript:0];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v10 count])
    {
      v11 = [v10 objectAtIndexedSubscript:0];
    }

    else
    {
      v11 = 0;
    }

    v12 = *(*(a1 + 56) + 8);
    if (*(v12 + 40))
    {
      if (!v11)
      {
LABEL_15:

        goto LABEL_16;
      }

      v13 = [HUNearbySettings dateFromTimeStamp:?];
      v14 = [HUNearbySettings dateFromTimeStamp:v11];
      if ([v14 compare:v13] == -1)
      {
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), v11);
      }
    }

    else
    {
      v15 = v11;
      v13 = *(v12 + 40);
      *(v12 + 40) = v15;
    }

    goto LABEL_15;
  }

LABEL_17:
}

- (id)cleanUpExpiredFromSavedDomainData:(id)data isOutcoming:(BOOL)outcoming
{
  outcomingCopy = outcoming;
  v52 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = [dataCopy objectForKey:kAXSTimeStampsKey];
  if ([v6 count])
  {
    v7 = [dataCopy mutableCopy];
    v8 = [v6 mutableCopy];
    v9 = objc_opt_new();
    if ([MEMORY[0x1E69A4560] isInternalInstall])
    {
      v10 = 500;
    }

    else
    {
      v10 = 100;
    }

    v41 = v6;
    v42 = dataCopy;
    v40 = v7;
    v39 = outcomingCopy;
    if (v10 >= [v8 count])
    {
      v44 = 0;
    }

    else
    {
      v44 = [v8 count] - v10;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v12 = v8;
    v13 = [v12 countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (v13)
    {
      v14 = v13;
      v43 = 0;
      v15 = *v46;
      v16 = 0x1E695D000uLL;
      v17 = 0x1E85C9000uLL;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v46 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v45 + 1) + 8 * i);
          v20 = *(v16 + 3784);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v19 count])
          {
            v21 = [v19 objectAtIndexedSubscript:0];
            if (([*(v17 + 2552) isTimeStampExpired:v21] & 1) != 0 || v44 >= 1)
            {
              v22 = v9;
              v23 = v16;
              v24 = v12;
              v25 = v17;
              v26 = v22;
              [v22 addObject:v19];
              v27 = HCLogHearingNearbyIDS();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v50 = v19;
                _os_log_debug_impl(&dword_1DA5E2000, v27, OS_LOG_TYPE_DEBUG, "Will remove timeStamp: %@", buf, 0xCu);
              }

              if ([v19 count] < 2)
              {
                v17 = v25;
                v12 = v24;
              }

              else
              {
                v28 = [v19 objectAtIndexedSubscript:1];
                objc_opt_class();
                v17 = v25;
                if (objc_opt_isKindOfClass())
                {
                  unsignedIntegerValue = [v28 unsignedIntegerValue];
                  v30 = v43;
                  if (unsignedIntegerValue == 2)
                  {
                    v30 = v43 + 1;
                  }

                  v43 = v30;
                }

                v12 = v24;
              }

              v16 = v23;
              v31 = v44 - 1;
              if (v44 <= 0)
              {
                v31 = 0;
              }

              v44 = v31;
              v9 = v26;
            }
          }

          else
          {
            [v9 addObject:v19];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v45 objects:v51 count:16];
      }

      while (v14);
    }

    else
    {
      v43 = 0;
    }

    [v12 removeObjectsInArray:v9];
    v11 = v40;
    [v40 setObject:v12 forKey:kAXSTimeStampsKey];
    v32 = [v12 count];
    v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v32];
    [v40 setObject:v33 forKey:kAXSCountKey];

    if (v39)
    {
      v34 = [v40 objectForKey:kAXSNoWakeCountKey];
      unsignedIntegerValue2 = [v34 unsignedIntegerValue];

      v36 = [MEMORY[0x1E696AD98] numberWithInteger:(unsignedIntegerValue2 - v43) & ~((unsignedIntegerValue2 - v43) >> 63)];
      [v40 setObject:v36 forKey:kAXSNoWakeCountKey];
    }

    v6 = v41;
    dataCopy = v42;
  }

  else
  {
    v11 = dataCopy;
  }

  v37 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)extractMessageIDsFromMessage:(id)message
{
  messageCopy = message;
  v4 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __49__HUNearbySettings_extractMessageIDsFromMessage___block_invoke;
    v6[3] = &unk_1E85CA558;
    v7 = v4;
    [messageCopy enumerateKeysAndObjectsUsingBlock:v6];
  }

  return v4;
}

void __49__HUNearbySettings_extractMessageIDsFromMessage___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) addObject:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v4 unsignedIntValue];
      v3 = messageIdentifierDescription();
      [*(a1 + 32) hcSafeAddObject:v3];
    }
  }
}

+ (void)isTimeStampExpired:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_2(&dword_1DA5E2000, a2, a3, "timeStamp is nonvalid %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)addNewMessage:domain:numberData:stringData:toDictionary:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_1DA5E2000, v0, v1, "Collected IDS messages %@ statistics %@");
  v2 = *MEMORY[0x1E69E9840];
}

void __62__HUNearbySettings_processAndSaveCollectedDataWithCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_2(&dword_1DA5E2000, a2, a3, "IDS statistics data: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)savedData
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_2(&dword_1DA5E2000, a2, a3, "Saved IDS messages statistics %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)savedDataForKey:fromData:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_1DA5E2000, v0, v1, "Saved IDS messages statistics %@\n%@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)cleanUpExpired:andSaveToData:forKey:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_1_2(&dword_1DA5E2000, v0, v1, "IDS statistics %@ data: %@");
  v2 = *MEMORY[0x1E69E9840];
}

@end