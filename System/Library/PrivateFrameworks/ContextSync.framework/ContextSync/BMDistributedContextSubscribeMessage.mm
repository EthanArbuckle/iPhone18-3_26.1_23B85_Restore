@interface BMDistributedContextSubscribeMessage
- (BMDistributedContextSubscribeMessage)initWithMessageDictionary:(id)dictionary fromRemoteDevice:(id)device localDevice:(id)localDevice;
- (BMDistributedContextSubscribeMessage)initWithSubscriptions:(id)subscriptions localDevice:(id)device messageIntent:(unint64_t)intent;
- (id)dictionaryRepresentation;
@end

@implementation BMDistributedContextSubscribeMessage

- (BMDistributedContextSubscribeMessage)initWithMessageDictionary:(id)dictionary fromRemoteDevice:(id)device localDevice:(id)localDevice
{
  v70 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  deviceCopy = device;
  localDeviceCopy = localDevice;
  v67.receiver = self;
  v67.super_class = BMDistributedContextSubscribeMessage;
  v9 = [(BMDistributedContextSubscribeMessage *)&v67 init];
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"messageVersion"];
  if (v10)
  {
    v11 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"messageVersion"];
    if (v12)
    {
      v13 = v12;
      v14 = [dictionaryCopy objectForKeyedSubscript:@"messageVersion"];
      v15 = [v14 isEqualToString:@"1.0"];

      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    localDeviceCopy2 = localDevice;
    v49 = v9;
    v54 = objc_opt_new();
    v58 = objc_opt_new();
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"dsls"];
    v19 = [v18 countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v64;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v64 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v63 + 1) + 8 * i);
          v24 = objc_autoreleasePoolPush();
          v25 = [dictionaryCopy objectForKeyedSubscript:@"dsls"];
          v26 = [v25 objectForKeyedSubscript:v23];

          bmdsl_deserialize = [(NSData *)v26 bmdsl_deserialize];
          [v58 setObject:bmdsl_deserialize forKeyedSubscript:v23];

          objc_autoreleasePoolPop(v24);
        }

        v20 = [v18 countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v20);
    }

    v50 = dictionaryCopy;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"dslIdentifiers"];
    v29 = [v28 objectForKeyedSubscript:localDeviceCopy];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v53 = v29;
    obj = [v29 allKeys];
    v57 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v57)
    {
      v52 = *v60;
      do
      {
        for (j = 0; j != v57; ++j)
        {
          if (*v60 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v59 + 1) + 8 * j);
          v32 = objc_autoreleasePoolPush();
          v33 = [v58 objectForKeyedSubscript:v31];
          v34 = [v53 objectForKeyedSubscript:v31];
          v35 = [v34 objectForKeyedSubscript:@"oneOffSubscription"];
          if ([v35 BOOLValue])
          {
            v36 = 2;
          }

          else
          {
            v36 = 0;
          }

          v37 = [v34 objectForKeyedSubscript:@"wake"];
          bOOLValue = [v37 BOOLValue];
          v39 = [v34 objectForKeyedSubscript:@"lastChangeDate"];
          v40 = [[BMDistributedContextSubscriptionConfiguration alloc] initWithOptions:v36 | bOOLValue lastChangedDate:v39];
          v41 = [[BMDistributedContextSubscription alloc] initWithIdentifier:v31 dsl:v33 subscribingDevice:deviceCopy subscribedDevice:localDeviceCopy configuration:v40];
          [(NSArray *)v54 addObject:v41];

          objc_autoreleasePoolPop(v32);
        }

        v57 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v57);
    }

    v9 = v49;
    subscriptions = v49->_subscriptions;
    v49->_subscriptions = v54;
    v43 = v54;

    dictionaryCopy = v50;
    v44 = [v50 objectForKeyedSubscript:@"messageVersion"];
    messageVersion = v49->_messageVersion;
    v49->_messageVersion = v44;

    objc_storeStrong(&v49->_localDevice, localDeviceCopy2);
LABEL_27:
    v17 = v9;
    goto LABEL_28;
  }

LABEL_5:
  v16 = __biome_log_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    [BMDistributedContextSubscribeMessage initWithMessageDictionary:dictionaryCopy fromRemoteDevice:? localDevice:?];
  }

  v17 = 0;
LABEL_28:

  v46 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)dictionaryRepresentation
{
  v40 = *MEMORY[0x277D85DE8];
  v25 = objc_opt_new();
  v3 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->_subscriptions;
  v26 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v26)
  {
    v24 = *v32;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v31 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        subscribedDevice = [v5 subscribedDevice];
        v7 = [v3 objectForKeyedSubscript:subscribedDevice];

        if (!v7)
        {
          v8 = objc_opt_new();
          subscribedDevice2 = [v5 subscribedDevice];
          [v3 setObject:v8 forKeyedSubscript:subscribedDevice2];
        }

        v37[0] = @"lastChangeDate";
        configuration = [v5 configuration];
        lastChangedDate = [configuration lastChangedDate];
        v38[0] = lastChangedDate;
        v37[1] = @"wake";
        configuration2 = [v5 configuration];
        wakeState = [configuration2 wakeState];
        v38[1] = wakeState;
        v37[2] = @"oneOffSubscription";
        configuration3 = [v5 configuration];
        oneOffSubscription = [configuration3 oneOffSubscription];
        v38[2] = oneOffSubscription;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
        subscribedDevice3 = [v5 subscribedDevice];
        v15 = [v3 objectForKeyedSubscript:subscribedDevice3];
        identifier = [v5 identifier];
        [v15 setObject:v13 forKeyedSubscript:identifier];

        v17 = [v5 dsl];
        bmdsl_serialize = [(BMDSL *)v17 bmdsl_serialize];
        identifier2 = [v5 identifier];
        [v25 setObject:bmdsl_serialize forKeyedSubscript:identifier2];

        objc_autoreleasePoolPop(context);
      }

      v26 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v26);
  }

  v35[0] = @"type";
  v35[1] = @"messageVersion";
  v36[0] = @"subscription";
  v36[1] = @"1.0";
  v35[2] = @"version";
  v35[3] = @"dslIdentifiers";
  v36[2] = &unk_28578CB68;
  v36[3] = v3;
  v35[4] = @"dsls";
  v36[4] = v25;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:5];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BMDistributedContextSubscribeMessage)initWithSubscriptions:(id)subscriptions localDevice:(id)device messageIntent:(unint64_t)intent
{
  v30 = *MEMORY[0x277D85DE8];
  subscriptionsCopy = subscriptions;
  deviceCopy = device;
  v28.receiver = self;
  v28.super_class = BMDistributedContextSubscribeMessage;
  v11 = [(BMDistributedContextSubscribeMessage *)&v28 init];
  v12 = v11;
  if (v11)
  {
    v23 = deviceCopy;
    objc_storeStrong(&v11->_subscriptions, subscriptions);
    objc_storeStrong(&v12->_localDevice, device);
    v12->_messageIntent = intent;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = subscriptionsCopy;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        v17 = 0;
        do
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          configuration = [*(*(&v24 + 1) + 8 * v17) configuration];
          wakeState = [configuration wakeState];
          bOOLValue = [wakeState BOOLValue];

          if (bOOLValue)
          {
            v12->_shouldWake = 1;
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v15);
    }

    deviceCopy = v23;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)initWithMessageDictionary:(void *)a1 fromRemoteDevice:localDevice:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 objectForKeyedSubscript:@"messageVersion"];
  OUTLINED_FUNCTION_0_2(&dword_244177000, v2, v3, "Incoming subscription is dropped. This message verson is not supported %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end