@interface BMDistributedContextSubscribeMessage
- (BMDistributedContextSubscribeMessage)initWithMessageDictionary:(id)a3 fromRemoteDevice:(id)a4 localDevice:(id)a5;
- (BMDistributedContextSubscribeMessage)initWithSubscriptions:(id)a3 localDevice:(id)a4 messageIntent:(unint64_t)a5;
- (id)dictionaryRepresentation;
@end

@implementation BMDistributedContextSubscribeMessage

- (BMDistributedContextSubscribeMessage)initWithMessageDictionary:(id)a3 fromRemoteDevice:(id)a4 localDevice:(id)a5
{
  v70 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v55 = a4;
  v56 = a5;
  v67.receiver = self;
  v67.super_class = BMDistributedContextSubscribeMessage;
  v9 = [(BMDistributedContextSubscribeMessage *)&v67 init];
  if (!v9)
  {
    goto LABEL_27;
  }

  v10 = [v8 objectForKeyedSubscript:@"messageVersion"];
  if (v10)
  {
    v11 = v10;
    v12 = [v8 objectForKeyedSubscript:@"messageVersion"];
    if (v12)
    {
      v13 = v12;
      v14 = [v8 objectForKeyedSubscript:@"messageVersion"];
      v15 = [v14 isEqualToString:@"1.0"];

      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else
    {
    }

    v48 = a5;
    v49 = v9;
    v54 = objc_opt_new();
    v58 = objc_opt_new();
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v18 = [v8 objectForKeyedSubscript:@"dsls"];
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
          v25 = [v8 objectForKeyedSubscript:@"dsls"];
          v26 = [v25 objectForKeyedSubscript:v23];

          v27 = [(NSData *)v26 bmdsl_deserialize];
          [v58 setObject:v27 forKeyedSubscript:v23];

          objc_autoreleasePoolPop(v24);
        }

        v20 = [v18 countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v20);
    }

    v50 = v8;
    v28 = [v8 objectForKeyedSubscript:@"dslIdentifiers"];
    v29 = [v28 objectForKeyedSubscript:v56];

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
          v38 = [v37 BOOLValue];
          v39 = [v34 objectForKeyedSubscript:@"lastChangeDate"];
          v40 = [[BMDistributedContextSubscriptionConfiguration alloc] initWithOptions:v36 | v38 lastChangedDate:v39];
          v41 = [[BMDistributedContextSubscription alloc] initWithIdentifier:v31 dsl:v33 subscribingDevice:v55 subscribedDevice:v56 configuration:v40];
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

    v8 = v50;
    v44 = [v50 objectForKeyedSubscript:@"messageVersion"];
    messageVersion = v49->_messageVersion;
    v49->_messageVersion = v44;

    objc_storeStrong(&v49->_localDevice, v48);
LABEL_27:
    v17 = v9;
    goto LABEL_28;
  }

LABEL_5:
  v16 = __biome_log_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    [BMDistributedContextSubscribeMessage initWithMessageDictionary:v8 fromRemoteDevice:? localDevice:?];
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
        v6 = [v5 subscribedDevice];
        v7 = [v3 objectForKeyedSubscript:v6];

        if (!v7)
        {
          v8 = objc_opt_new();
          v9 = [v5 subscribedDevice];
          [v3 setObject:v8 forKeyedSubscript:v9];
        }

        v37[0] = @"lastChangeDate";
        v29 = [v5 configuration];
        v28 = [v29 lastChangedDate];
        v38[0] = v28;
        v37[1] = @"wake";
        v27 = [v5 configuration];
        v10 = [v27 wakeState];
        v38[1] = v10;
        v37[2] = @"oneOffSubscription";
        v11 = [v5 configuration];
        v12 = [v11 oneOffSubscription];
        v38[2] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
        v14 = [v5 subscribedDevice];
        v15 = [v3 objectForKeyedSubscript:v14];
        v16 = [v5 identifier];
        [v15 setObject:v13 forKeyedSubscript:v16];

        v17 = [v5 dsl];
        v18 = [(BMDSL *)v17 bmdsl_serialize];
        v19 = [v5 identifier];
        [v25 setObject:v18 forKeyedSubscript:v19];

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

- (BMDistributedContextSubscribeMessage)initWithSubscriptions:(id)a3 localDevice:(id)a4 messageIntent:(unint64_t)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v28.receiver = self;
  v28.super_class = BMDistributedContextSubscribeMessage;
  v11 = [(BMDistributedContextSubscribeMessage *)&v28 init];
  v12 = v11;
  if (v11)
  {
    v23 = v10;
    objc_storeStrong(&v11->_subscriptions, a3);
    objc_storeStrong(&v12->_localDevice, a4);
    v12->_messageIntent = a5;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = v9;
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

          v18 = [*(*(&v24 + 1) + 8 * v17) configuration];
          v19 = [v18 wakeState];
          v20 = [v19 BOOLValue];

          if (v20)
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

    v10 = v23;
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