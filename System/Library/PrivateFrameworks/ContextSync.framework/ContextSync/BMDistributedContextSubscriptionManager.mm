@interface BMDistributedContextSubscriptionManager
+ (id)loadAndMigrateStorageFromLegacyToV1:(id)v1 withLocalDeviceID:(id)d;
+ (id)loadFromStorage:(id)storage withLocalDeviceID:(id)d;
+ (unint64_t)storageVersion:(id)version;
- (BMDistributedContextSubscriptionManager)initWithStorage:(id)storage;
- (BOOL)addSubscriptions:(id)subscriptions;
- (BOOL)removeAllSubscriptionsMadeBySubscribingDevice:(id)device;
- (BOOL)removeSubscription:(id)subscription;
- (BOOL)removeSubscriptionWithIdentifier:(id)identifier fromSubscribingDevice:(id)device onSubscribedDevice:(id)subscribedDevice;
- (id)allSubscriptionIdentifiers;
- (id)deviceIdentifiersWithActiveSubscriptions;
- (id)subscribingDevicesForIdentifier:(id)identifier subscribedToDevice:(id)device;
- (id)subscriptionForIdentifier:(id)identifier fromSubscribingDevice:(id)device onSubscribedDevice:(id)subscribedDevice;
- (id)subscriptionsWithIdentifier:(id)identifier subscribedToDevice:(id)device;
- (id)subscriptionsWithSubscribedDevice:(id)device;
- (id)subscriptionsWithSubscribingDevice:(id)device;
- (void)saveToStorage;
@end

@implementation BMDistributedContextSubscriptionManager

- (BMDistributedContextSubscriptionManager)initWithStorage:(id)storage
{
  storageCopy = storage;
  v11.receiver = self;
  v11.super_class = BMDistributedContextSubscriptionManager;
  v6 = [(BMDistributedContextSubscriptionManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, storage);
    v8 = objc_opt_new();
    subscriptions = v7->_subscriptions;
    v7->_subscriptions = v8;
  }

  return v7;
}

- (void)saveToStorage
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_subscriptions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        dictionaryRepresentation = [*(*(&v13 + 1) + 8 * v8) dictionaryRepresentation];
        [v3 addObject:dictionaryRepresentation];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [v3 count];
  storage = self->_storage;
  if (v10)
  {
    [(BMDistributedContextSubscriptionStorage *)storage setObject:v3 forKey:@"subscriptions"];
  }

  else
  {
    [(BMDistributedContextSubscriptionStorage *)storage removeObjectForKey:@"subscriptions"];
  }

  [(BMDistributedContextSubscriptionStorage *)self->_storage setObject:&unk_28578CB50 forKey:@"storageVersion", v13];

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)loadFromStorage:(id)storage withLocalDeviceID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  storageCopy = storage;
  dCopy = d;
  if ([objc_opt_class() storageVersion:storageCopy])
  {
    v8 = [storageCopy objectForKey:@"subscriptions"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [BMDistributedContextSubscriptionManager loadFromStorage:v9 withLocalDeviceID:?];
      }

      v19 = 0;
    }

    else
    {
      v9 = objc_opt_new();
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            v16 = [BMDistributedContextSubscription alloc];
            v17 = [(BMDistributedContextSubscription *)v16 initFromDictionary:v15, v22];
            [v9 addObject:v17];
          }

          v12 = [v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
        }

        while (v12);
      }

      v18 = __biome_log_for_category();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v9;
        _os_log_impl(&dword_244177000, v18, OS_LOG_TYPE_DEFAULT, "Loaded subscriptions from default %@", buf, 0xCu);
      }

      v19 = [[BMDistributedContextSubscriptionManager alloc] initWithStorage:storageCopy];
      [(BMDistributedContextSubscriptionManager *)v19 addSubscriptions:v9];
    }
  }

  else
  {
    v19 = [self loadAndMigrateStorageFromLegacyToV1:storageCopy withLocalDeviceID:dCopy];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (unint64_t)storageVersion:(id)version
{
  versionCopy = version;
  integerValue = [versionCopy objectForKey:@"storageVersion"];

  if (integerValue)
  {
    v5 = [versionCopy objectForKey:@"storageVersion"];
    integerValue = [v5 integerValue];
  }

  return integerValue;
}

+ (id)loadAndMigrateStorageFromLegacyToV1:(id)v1 withLocalDeviceID:(id)d
{
  v107 = *MEMORY[0x277D85DE8];
  v1Copy = v1;
  dCopy = d;
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_244177000, v6, OS_LOG_TYPE_DEFAULT, "Subscription storage needs migration from legacy format, migrating", buf, 2u);
  }

  v70 = objc_opt_new();
  v7 = [v1Copy objectForKey:@"localDSLIdentifiers"];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v94 objects:v106 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v95;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v95 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v94 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        bmdsl_deserialize = [(NSData *)v13 bmdsl_deserialize];
        [v70 setObject:bmdsl_deserialize forKeyedSubscript:v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v94 objects:v106 count:16];
    }

    while (v9);
  }

  v15 = objc_opt_new();
  [v1Copy objectForKey:@"remoteDSLIdentifiers"];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v93 = 0u;
  v16 = [obj countByEnumeratingWithState:&v90 objects:v105 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v91;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v91 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v90 + 1) + 8 * j);
        v21 = [obj objectForKeyedSubscript:v20];
        bmdsl_deserialize2 = [(NSData *)v21 bmdsl_deserialize];
        [v15 setObject:bmdsl_deserialize2 forKeyedSubscript:v20];
      }

      v17 = [obj countByEnumeratingWithState:&v90 objects:v105 count:16];
    }

    while (v17);
  }

  v71 = objc_opt_new();
  [v1Copy objectForKey:@"subscriptions"];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v23 = v89 = 0u;
  v63 = [v23 countByEnumeratingWithState:&v86 objects:v104 count:16];
  if (v63)
  {
    v62 = *v87;
    v24 = @"wake";
    v25 = 0x277CBE000uLL;
    v60 = v23;
    v61 = v7;
    do
    {
      v26 = 0;
      do
      {
        if (*v87 != v62)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v86 + 1) + 8 * v26);
        v28 = *(v25 + 2752);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v54 = __biome_log_for_category();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            [BMDistributedContextSubscriptionManager loadAndMigrateStorageFromLegacyToV1:v54 withLocalDeviceID:?];
          }

          goto LABEL_57;
        }

        v64 = v26;
        v73 = v27;
        v29 = [v23 objectForKeyedSubscript:v27];
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v85 = 0u;
        v68 = v29;
        v30 = 0x277CCA000uLL;
        v67 = [v29 countByEnumeratingWithState:&v82 objects:v103 count:16];
        if (!v67)
        {
          goto LABEL_51;
        }

        v66 = *v83;
        do
        {
          v31 = 0;
          do
          {
            if (*v83 != v66)
            {
              objc_enumerationMutation(v68);
            }

            v69 = v31;
            v74 = *(*(&v82 + 1) + 8 * v31);
            v32 = [v68 objectForKeyedSubscript:?];
            v78 = 0u;
            v79 = 0u;
            v80 = 0u;
            v81 = 0u;
            v77 = v32;
            v76 = [v32 countByEnumeratingWithState:&v78 objects:v102 count:16];
            if (v76)
            {
              v75 = *v79;
              do
              {
                for (k = 0; k != v76; ++k)
                {
                  if (*v79 != v75)
                  {
                    objc_enumerationMutation(v77);
                  }

                  v34 = *(*(&v78 + 1) + 8 * k);
                  v35 = [v77 objectForKeyedSubscript:v34];
                  v36 = *(v25 + 2752);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v35 objectForKeyedSubscript:v24], v37 = objc_claimAutoreleasedReturnValue(), v37, v37))
                  {
                    v38 = [v35 objectForKeyedSubscript:v24];
                  }

                  else
                  {
                    v39 = *(v30 + 2992);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      goto LABEL_43;
                    }

                    v38 = v35;
                  }

                  v40 = v38;
                  if (!v38)
                  {
LABEL_43:
                    v45 = __biome_log_for_category();
                    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v99 = v71;
                      v100 = 2112;
                      v101 = v34;
                      _os_log_error_impl(&dword_244177000, v45, OS_LOG_TYPE_ERROR, "Load from default error! Defaults: %@, Identifier: %@", buf, 0x16u);
                    }

                    v40 = 0;
                    goto LABEL_46;
                  }

                  v41 = [v74 isEqual:dCopy];
                  v42 = v15;
                  if ((v41 & 1) != 0 || (v43 = [v73 isEqual:dCopy], v42 = v70, v43))
                  {
                    v44 = [v42 objectForKeyedSubscript:v34];
                    if (v44)
                    {
                      v45 = v44;
                      bOOLValue = [v40 BOOLValue];
                      v46 = v15;
                      v47 = [BMDistributedContextSubscriptionConfiguration alloc];
                      [MEMORY[0x277CBEAA8] now];
                      v48 = v24;
                      v50 = v49 = dCopy;
                      v51 = v47;
                      v15 = v46;
                      v52 = [(BMDistributedContextSubscriptionConfiguration *)v51 initWithOptions:bOOLValue lastChangedDate:v50];

                      dCopy = v49;
                      v24 = v48;
                      v25 = 0x277CBE000;
                      v53 = [[BMDistributedContextSubscription alloc] initWithIdentifier:v34 dsl:v45 subscribingDevice:v73 subscribedDevice:v74 configuration:v52];
                      [v71 addObject:v53];

                      v30 = 0x277CCA000;
LABEL_46:
                    }
                  }
                }

                v76 = [v77 countByEnumeratingWithState:&v78 objects:v102 count:16];
              }

              while (v76);
            }

            v31 = v69 + 1;
          }

          while (v69 + 1 != v67);
          v67 = [v68 countByEnumeratingWithState:&v82 objects:v103 count:16];
        }

        while (v67);
LABEL_51:

        v26 = v64 + 1;
        v23 = v60;
        v7 = v61;
      }

      while (v64 + 1 != v63);
      v63 = [v60 countByEnumeratingWithState:&v86 objects:v104 count:16];
    }

    while (v63);
  }

LABEL_57:

  v55 = __biome_log_for_category();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v99 = v71;
    _os_log_impl(&dword_244177000, v55, OS_LOG_TYPE_DEFAULT, "Migrated subscriptions from legacy storage, subscriptions are %@", buf, 0xCu);
  }

  v56 = [[BMDistributedContextSubscriptionManager alloc] initWithStorage:v1Copy];
  [(BMDistributedContextSubscriptionManager *)v56 addSubscriptions:v71];
  [(BMDistributedContextSubscriptionManager *)v56 saveToStorage];
  [v1Copy removeObjectForKey:@"localDSLIdentifiers"];
  [v1Copy removeObjectForKey:@"remoteDSLIdentifiers"];

  v57 = *MEMORY[0x277D85DE8];

  return v56;
}

- (id)allSubscriptionIdentifiers
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_subscriptions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        identifier = [*(*(&v13 + 1) + 8 * i) identifier];
        [v3 addObject:identifier];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  allObjects = [v3 allObjects];

  v11 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (id)deviceIdentifiersWithActiveSubscriptions
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_subscriptions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        subscribedDevice = [v9 subscribedDevice];
        [v3 addObject:subscribedDevice];

        subscribingDevice = [v9 subscribingDevice];
        [v3 addObject:subscribingDevice];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  allObjects = [v3 allObjects];

  v13 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (BOOL)addSubscriptions:(id)subscriptions
{
  [(NSMutableArray *)self->_subscriptions addObjectsFromArray:subscriptions];
  [(BMDistributedContextSubscriptionManager *)self saveToStorage];
  return 1;
}

- (id)subscriptionForIdentifier:(id)identifier fromSubscribingDevice:(id)device onSubscribedDevice:(id)subscribedDevice
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  deviceCopy = device;
  subscribedDeviceCopy = subscribedDevice;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = self->_subscriptions;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v11;
  v13 = *v29;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v29 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v28 + 1) + 8 * i);
      identifier = [v15 identifier];
      if (![identifier isEqualToString:identifierCopy])
      {
        goto LABEL_11;
      }

      subscribedDevice = [v15 subscribedDevice];
      if (([subscribedDevice isEqualToString:subscribedDeviceCopy] & 1) == 0)
      {

LABEL_11:
        continue;
      }

      [v15 subscribingDevice];
      v18 = v13;
      v19 = identifierCopy;
      v20 = v10;
      v22 = v21 = subscribedDeviceCopy;
      v27 = [v22 isEqualToString:deviceCopy];

      subscribedDeviceCopy = v21;
      v10 = v20;
      identifierCopy = v19;
      v13 = v18;

      if (v27)
      {
        v23 = v15;
        goto LABEL_15;
      }
    }

    v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
  }

  while (v12);
LABEL_14:
  v23 = 0;
LABEL_15:

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)removeSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  identifier = [subscriptionCopy identifier];
  subscribingDevice = [subscriptionCopy subscribingDevice];
  subscribedDevice = [subscriptionCopy subscribedDevice];

  LOBYTE(self) = [(BMDistributedContextSubscriptionManager *)self removeSubscriptionWithIdentifier:identifier fromSubscribingDevice:subscribingDevice onSubscribedDevice:subscribedDevice];
  return self;
}

- (BOOL)removeSubscriptionWithIdentifier:(id)identifier fromSubscribingDevice:(id)device onSubscribedDevice:(id)subscribedDevice
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  deviceCopy = device;
  subscribedDeviceCopy = subscribedDevice;
  selfCopy = self;
  v23 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = self->_subscriptions;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        identifier = [v15 identifier];
        if (([identifier isEqualToString:identifierCopy] & 1) == 0)
        {
          goto LABEL_11;
        }

        subscribedDevice = [v15 subscribedDevice];
        if (([subscribedDevice isEqualToString:subscribedDeviceCopy] & 1) == 0)
        {

LABEL_11:
          goto LABEL_12;
        }

        subscribingDevice = [v15 subscribingDevice];
        v19 = [subscribingDevice isEqualToString:deviceCopy];

        if (v19)
        {
          [v23 addIndex:v12];
        }

LABEL_12:
        ++v12;
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)selfCopy->_subscriptions removeObjectsAtIndexes:v23];
  [(BMDistributedContextSubscriptionManager *)selfCopy saveToStorage];

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)removeAllSubscriptionsMadeBySubscribingDevice:(id)device
{
  v21 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_subscriptions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        subscribingDevice = [*(*(&v16 + 1) + 8 * v11) subscribingDevice];
        v13 = [subscribingDevice isEqualToString:deviceCopy];

        if (v13)
        {
          [v5 addIndex:v9];
        }

        ++v9;
        ++v11;
      }

      while (v8 != v11);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [(NSMutableArray *)self->_subscriptions removeObjectsAtIndexes:v5];
  [(BMDistributedContextSubscriptionManager *)self saveToStorage];

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)subscribingDevicesForIdentifier:(id)identifier subscribedToDevice:(id)device
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  deviceCopy = device;
  v20 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = self->_subscriptions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        identifier = [v13 identifier];
        if ([identifier isEqualToString:identifierCopy])
        {
          subscribedDevice = [v13 subscribedDevice];
          v16 = [subscribedDevice isEqual:deviceCopy];

          if (!v16)
          {
            continue;
          }

          identifier = [v13 subscribedDevice];
          [v20 addObject:identifier];
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  allObjects = [v20 allObjects];

  v18 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (id)subscriptionsWithIdentifier:(id)identifier subscribedToDevice:(id)device
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  deviceCopy = device;
  v19 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_subscriptions;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        identifier = [v13 identifier];
        if ([identifier isEqualToString:identifierCopy])
        {
          subscribedDevice = [v13 subscribedDevice];
          v16 = [subscribedDevice isEqual:deviceCopy];

          if (v16)
          {
            [v19 addObject:v13];
          }
        }

        else
        {
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)subscriptionsWithSubscribingDevice:(id)device
{
  v21 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_subscriptions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        subscribingDevice = [v11 subscribingDevice];
        v13 = [subscribingDevice isEqualToString:deviceCopy];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)subscriptionsWithSubscribedDevice:(id)device
{
  v21 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_subscriptions;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        subscribedDevice = [v11 subscribedDevice];
        v13 = [subscribedDevice isEqualToString:deviceCopy];

        if (v13)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

@end