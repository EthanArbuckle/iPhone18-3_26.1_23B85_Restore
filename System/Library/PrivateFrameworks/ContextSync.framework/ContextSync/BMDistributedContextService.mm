@interface BMDistributedContextService
+ (id)distributedContextManager;
+ (id)stringForIDSDeviceType:(int64_t)type;
- (BMDistributedContextService)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)registerForUpdates:(id)updates withIdentifier:(id)identifier withOptions:(unint64_t)options forDeviceTypes:(int64_t)types withError:(id *)error;
- (BOOL)registerForUpdates:(id)updates withIdentifier:(id)identifier withOptions:(unint64_t)options forDevices:(id)devices withError:(id *)error;
- (BOOL)registerRemoteDSLSubscription:(id)subscription withRemoteIdentifier:(id)identifier withOptions:(unint64_t)options forDevices:(id)devices;
- (BOOL)unregisterForUpdates:(id)updates withIdentifier:(id)identifier forDeviceTypes:(int64_t)types withError:(id *)error;
- (BOOL)unregisterForUpdates:(id)updates withIdentifier:(id)identifier forDevices:(id)devices withError:(id *)error;
- (BOOL)unregisterRemoteDSLSubscription:(id)subscription withRemoteIdentifier:(id)identifier forDevices:(id)devices;
- (id)devicesWithDeviceType:(int64_t)type;
- (id)idsDeviceForDeviceUUID:(id)d;
- (id)registerSinkWithIdentifier:(id)identifier withDSL:(id)l;
- (void)assertLocalSubscriptionsToDevice:(id)device shouldSendIfNoSubscriptions:(BOOL)subscriptions;
- (void)cancelSubscriptionForIdentifier:(id)identifier;
- (void)connection:(id)connection devicesChanged:(id)changed;
- (void)contextChanged:(id)changed forSubscriptionWithIdentifier:(id)identifier;
- (void)handleIncomingContextChangeMessage:(id)message forDevice:(id)device;
- (void)initializeSinksForRemoteDSLIdentifiers;
- (void)loadSubscriptions;
- (void)logMetricsForMessage:(id)message andContext:(id)context fromDevice:(id)device;
- (void)logMetricsForSubscription:(id)subscription uponReboot:(BOOL)reboot;
- (void)registerForUpdates:(id)updates withIdentifier:(id)identifier forUseCase:(id)case withOptions:(unint64_t)options forDeviceTypes:(int64_t)types withErrorHandler:(id)handler;
- (void)registerForUpdates:(id)updates withIdentifier:(id)identifier forUseCase:(id)case withOptions:(unint64_t)options forDevices:(id)devices withErrorHandler:(id)handler;
- (void)removeAllSubscriptionsForDeadRemoteDevice:(id)device;
- (void)removeSubscriptionWithIdentifier:(id)identifier fromSubscribingDevice:(id)device;
- (void)saveRemoteSubscription:(id)subscription fromDevice:(id)device;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
- (void)subscribeToBiomeWithRemoteDSL:(id)l forRemoteIdentifier:(id)identifier;
- (void)teardownOneOffSubscriptionWithIdentifier:(id)identifier fromSubscribingDevice:(id)device;
- (void)unregisterForUpdates:(id)updates withIdentifier:(id)identifier forUseCase:(id)case forDeviceTypes:(int64_t)types withErrorHandler:(id)handler;
- (void)unregisterForUpdates:(id)updates withIdentifier:(id)identifier forUseCase:(id)case forDevices:(id)devices withErrorHandler:(id)handler;
- (void)updateSubscriptionsAfterUnlock;
@end

@implementation BMDistributedContextService

- (BMDistributedContextService)init
{
  v37 = *MEMORY[0x277D85DE8];
  v34.receiver = self;
  v34.super_class = BMDistributedContextService;
  v2 = [(BMDistributedContextService *)&v34 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.biome.ContextSync"];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v5 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.contextsync.subscriptions"];
    subscriptionDefaults = v2->_subscriptionDefaults;
    v2->_subscriptionDefaults = v5;

    v7 = [[BMDistributedContextUserDefaultStorage alloc] initWithUserDefault:v2->_subscriptionDefaults];
    subscriptionStorage = v2->_subscriptionStorage;
    v2->_subscriptionStorage = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.contextsync.queue", v9);
    queue = v2->_queue;
    v2->_queue = v10;

    v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v13 = dispatch_queue_create("com.apple.contextsync.idsQueue", v12);
    idsQueue = v2->_idsQueue;
    v2->_idsQueue = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.contextSync.receiverQueue", v15);
    biomeQueue = v2->_biomeQueue;
    v2->_biomeQueue = v16;

    v18 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.contextsync"];
    internetService = v2->_internetService;
    v2->_internetService = v18;

    [(IDSService *)v2->_internetService addDelegate:v2 queue:v2->_idsQueue];
    v20 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.contextsync.local"];
    localService = v2->_localService;
    v2->_localService = v20;

    [(IDSService *)v2->_localService addDelegate:v2 queue:v2->_idsQueue];
    v22 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__BMDistributedContextService_init__block_invoke;
    block[3] = &unk_278E07BD8;
    v23 = v2;
    v33 = v23;
    dispatch_sync(v22, block);
    v24 = __biome_log_for_category();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      deviceUUID = v23->_deviceUUID;
      *buf = 138412290;
      v36 = deviceUUID;
      _os_log_impl(&dword_244177000, v24, OS_LOG_TYPE_DEFAULT, "Local device %@", buf, 0xCu);
    }

    v26 = [[BMDistributedContextEventTranslation alloc] initWithLocalDeviceIdentifier:v23->_deviceUUID];
    eventTranslator = v23->_eventTranslator;
    v23->_eventTranslator = v26;

    v28 = objc_opt_new();
    subscriptionSinks = v23->_subscriptionSinks;
    v23->_subscriptionSinks = v28;

    [(BMDistributedContextService *)v23 loadSubscriptions];
    [(NSXPCListener *)v2->_listener activate];
  }

  v30 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t __35__BMDistributedContextService_init__block_invoke(uint64_t a1)
{
  v2 = IDSCopyLocalDeviceUniqueID();
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

+ (id)distributedContextManager
{
  if (distributedContextManager_onceToken != -1)
  {
    +[BMDistributedContextService distributedContextManager];
  }

  v3 = distributedContextManager_distributedContextManager;

  return v3;
}

uint64_t __56__BMDistributedContextService_distributedContextManager__block_invoke()
{
  distributedContextManager_distributedContextManager = objc_alloc_init(BMDistributedContextService);

  return MEMORY[0x2821F96F8]();
}

- (void)loadSubscriptions
{
  v3 = os_transaction_create();
  queue = [(BMDistributedContextService *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__BMDistributedContextService_loadSubscriptions__block_invoke;
  block[3] = &unk_278E07BD8;
  block[4] = self;
  dispatch_sync(queue, block);

  if (![(BMDistributedContextService *)self rebootNotificationDelivered])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __48__BMDistributedContextService_loadSubscriptions__block_invoke_44;
    v5[3] = &unk_278E07BD8;
    v5[4] = self;
    [MEMORY[0x277D42598] runBlockWhenDeviceIsClassCUnlocked:v5];
  }
}

void __48__BMDistributedContextService_loadSubscriptions__block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_244177000, v2, OS_LOG_TYPE_INFO, "Load Context Sync Subscriptions", buf, 2u);
  }

  v3 = [*(*(a1 + 32) + 48) stringForKey:@"lastBootUUID"];
  v4 = +[BMDistributedContextUtilities currentBootSessionUUID];
  v5 = [v4 isEqualToString:v3];
  if ([MEMORY[0x277D42598] isDeviceUnlocked])
  {
    v6 = 1;
  }

  else
  {
    v6 = [MEMORY[0x277D42598] isClassCLocked] ^ 1;
  }

  v7 = [BMDistributedContextSubscriptionManager loadFromStorage:*(*(a1 + 32) + 56) withLocalDeviceID:*(*(a1 + 32) + 40)];
  [*(a1 + 32) setSubscriptionManager:v7];

  [*(a1 + 32) initializeSinksForRemoteDSLIdentifiers];
  v8 = *(a1 + 32);
  if (v5)
  {
    v9 = [v8 subscriptionDefaults];
    [*(a1 + 32) setRebootNotificationDelivered:{objc_msgSend(v9, "BOOLForKey:", @"rebootNotificationDelivered"}];
  }

  else
  {
    v46 = v6;
    v43 = v5;
    v44 = v4;
    v45 = v3;
    v10 = v8[8];
    v11 = [v8 deviceUUID];
    v12 = [v10 subscriptionsWithSubscribingDevice:v11];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v9 = v12;
    v13 = [v9 countByEnumeratingWithState:&v52 objects:v65 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v53;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v53 != v15)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v52 + 1) + 8 * i);
          v18 = [v17 dsl];

          if (v18)
          {
            [*(a1 + 32) logMetricsForSubscription:v17 uponReboot:1];
          }

          else
          {
            v19 = __biome_log_for_category();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              v20 = [v17 identifier];
              v21 = [*(a1 + 32) deviceUUID];
              *buf = 138412546;
              v57 = v20;
              v58 = 2112;
              v59 = v21;
              _os_log_error_impl(&dword_244177000, v19, OS_LOG_TYPE_ERROR, "Failed to log identifier %@ on device %@: No DSL found", buf, 0x16u);
            }
          }
        }

        v14 = [v9 countByEnumeratingWithState:&v52 objects:v65 count:16];
      }

      while (v14);
    }

    v22 = *(a1 + 32);
    v23 = v22[8];
    v24 = [v22 deviceUUID];
    [v23 removeAllSubscriptionsMadeBySubscribingDevice:v24];

    v6 = v46;
    if (v46)
    {
      v25 = [BMDistributedContextSubscribeMessage alloc];
      v26 = [(BMDistributedContextSubscribeMessage *)v25 initWithSubscriptions:MEMORY[0x277CBEBF8] localDevice:*(*(a1 + 32) + 40) messageIntent:6];
      v27 = [*(*(a1 + 32) + 64) deviceIdentifiersWithActiveSubscriptions];
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v28 = [v27 countByEnumeratingWithState:&v48 objects:v64 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v49;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v49 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v48 + 1) + 8 * j);
            if (([v32 isEqualToString:*(*(a1 + 32) + 40)] & 1) == 0)
            {
              v33 = *(a1 + 32);
              v34 = [(BMDistributedContextSubscribeMessage *)v26 dictionaryRepresentation];
              v47 = 0;
              [v33 sendIDSMessageWithContent:v34 asWaking:0 toDevice:v32 error:&v47];
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v48 objects:v64 count:16];
        }

        while (v29);
      }

      [*(a1 + 32) setRebootNotificationDelivered:1];

      v5 = v43;
      v6 = v46;
    }

    else
    {
      [*(a1 + 32) setRebootNotificationDelivered:0];
      v5 = v43;
    }

    v35 = [*(a1 + 32) subscriptionDefaults];
    [v35 setBool:objc_msgSend(*(a1 + 32) forKey:{"rebootNotificationDelivered"), @"rebootNotificationDelivered"}];

    v4 = v44;
    v3 = v45;
  }

  v36 = __biome_log_for_category();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = [MEMORY[0x277CCABB0] numberWithBool:v5 ^ 1u];
    v38 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    v39 = [MEMORY[0x277CCABB0] numberWithBool:*(*(a1 + 32) + 8)];
    v40 = [*(*(a1 + 32) + 64) allSubscriptions];
    *buf = 138413058;
    v57 = v37;
    v58 = 2112;
    v59 = v38;
    v60 = 2112;
    v61 = v39;
    v62 = 2112;
    v63 = v40;
    _os_log_impl(&dword_244177000, v36, OS_LOG_TYPE_DEFAULT, "Rebooted %@, unlocked %@, delivered notifications %@, reloaded subscriptions %@", buf, 0x2Au);
  }

  v41 = [*(a1 + 32) subscriptionDefaults];
  [v41 setObject:v4 forKey:@"lastBootUUID"];

  v42 = *MEMORY[0x277D85DE8];
}

void __48__BMDistributedContextService_loadSubscriptions__block_invoke_44(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__BMDistributedContextService_loadSubscriptions__block_invoke_2;
  block[3] = &unk_278E07BD8;
  block[4] = *(a1 + 32);
  dispatch_sync(v2, block);
}

uint64_t __48__BMDistributedContextService_loadSubscriptions__block_invoke_2(uint64_t a1)
{
  v2 = __biome_log_for_category();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_244177000, v2, OS_LOG_TYPE_DEFAULT, "Device has class C unlocked", v4, 2u);
  }

  return [*(a1 + 32) updateSubscriptionsAfterUnlock];
}

- (void)initializeSinksForRemoteDSLIdentifiers
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager subscriptionsWithSubscribedDevice:self->_deviceUUID];
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v18;
    *&v5 = 138412290;
    v16 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [(NSMutableDictionary *)self->_subscriptionSinks objectForKeyedSubscript:identifier];

        if (!v11)
        {
          v12 = [v9 dsl];
          v13 = __biome_log_for_category();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = v16;
            v22 = identifier;
            _os_log_impl(&dword_244177000, v13, OS_LOG_TYPE_INFO, "Recreating sink for %@", buf, 0xCu);
          }

          v14 = [(BMDistributedContextService *)self registerSinkWithIdentifier:identifier withDSL:v12];
          [(NSMutableDictionary *)self->_subscriptionSinks setObject:v14 forKeyedSubscript:identifier];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateSubscriptionsAfterUnlock
{
  v45 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_rebootNotificationDelivered)
  {
    subscriptionDefaults = [(BMDistributedContextService *)self subscriptionDefaults];
    v4 = [subscriptionDefaults objectForKey:@"lockedUpdates"];

    if (v4 && [(BMDistributedContextSubscribeMessage *)v4 count])
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v44 = v4;
        _os_log_impl(&dword_244177000, v5, OS_LOG_TYPE_DEFAULT, "Class C Unlocked: Notifying stored context changes %@", buf, 0xCu);
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v31 = v4;
      v6 = v4;
      v7 = [(BMDistributedContextSubscribeMessage *)v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v38;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v38 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v37 + 1) + 8 * i);
            v12 = [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager subscriptionsWithIdentifier:v11 subscribedToDevice:self->_deviceUUID];
            if ([v12 count])
            {
              v13 = [(BMDistributedContextSubscribeMessage *)v6 objectForKeyedSubscript:v11];
              v14 = [[BMDistributedContextContextChangedMessage alloc] initWithMessageDictionary:v13];
              if (v14)
              {
                [(BMDistributedContextService *)self contextChanged:v14 forSubscriptionWithIdentifier:v11];
              }

              else
              {
                v15 = __biome_log_for_category();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v44 = v13;
                  _os_log_error_impl(&dword_244177000, v15, OS_LOG_TYPE_ERROR, "Could not build context changed message from locked update %@", buf, 0xCu);
                }
              }
            }
          }

          v8 = [(BMDistributedContextSubscribeMessage *)v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
        }

        while (v8);
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [(BMDistributedContextService *)self setLockedUpdates:dictionary];

      subscriptionDefaults2 = [(BMDistributedContextService *)self subscriptionDefaults];
      [subscriptionDefaults2 removeObjectForKey:@"lockedUpdates"];

      v4 = v31;
    }

    deviceIdentifiersWithActiveSubscriptions = [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager deviceIdentifiersWithActiveSubscriptions];
    v19 = [BMDistributedContextSubscribeMessage alloc];
    v20 = [(BMDistributedContextSubscribeMessage *)v19 initWithSubscriptions:MEMORY[0x277CBEBF8] localDevice:self->_deviceUUID messageIntent:6];
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v20;
      _os_log_impl(&dword_244177000, v21, OS_LOG_TYPE_DEFAULT, "Class C Unlocked: Sending empty subscription for local device %@", buf, 0xCu);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v22 = deviceIdentifiersWithActiveSubscriptions;
    v23 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v34;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v33 + 1) + 8 * j);
          if (([v27 isEqualToString:self->_deviceUUID] & 1) == 0)
          {
            dictionaryRepresentation = [(BMDistributedContextSubscribeMessage *)v20 dictionaryRepresentation];
            v32 = 0;
            [(BMDistributedContextService *)self sendIDSMessageWithContent:dictionaryRepresentation asWaking:0 toDevice:v27 error:&v32];
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v24);
    }

    [(BMDistributedContextService *)self setRebootNotificationDelivered:1];
    subscriptionDefaults3 = [(BMDistributedContextService *)self subscriptionDefaults];
    [subscriptionDefaults3 setBool:-[BMDistributedContextService rebootNotificationDelivered](self forKey:{"rebootNotificationDelivered"), @"rebootNotificationDelivered"}];
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)registerSinkWithIdentifier:(id)identifier withDSL:(id)l
{
  identifierCopy = identifier;
  v7 = MEMORY[0x277CF1918];
  lCopy = l;
  v9 = [[v7 alloc] initWithIdentifier:identifierCopy targetQueue:self->_biomeQueue];
  v10 = [lCopy subscribeOn:v9];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__BMDistributedContextService_registerSinkWithIdentifier_withDSL___block_invoke;
  v16[3] = &unk_278E07C00;
  v17 = identifierCopy;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__BMDistributedContextService_registerSinkWithIdentifier_withDSL___block_invoke_48;
  v14[3] = &unk_278E07C50;
  v14[4] = self;
  v15 = v17;
  v11 = v17;
  v12 = [v10 sinkWithCompletion:v16 receiveInput:v14];

  [(NSMutableDictionary *)self->_subscriptionSinks setObject:v12 forKeyedSubscript:v11];

  return v12;
}

void __66__BMDistributedContextService_registerSinkWithIdentifier_withDSL___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 state])
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __66__BMDistributedContextService_registerSinkWithIdentifier_withDSL___block_invoke_cold_1(a1, v3);
    }
  }
}

void __66__BMDistributedContextService_registerSinkWithIdentifier_withDSL___block_invoke_48(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 80) translateEvent:v3];
  v5 = [v4 streamIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 eventData];
    if (v7)
    {
      v8 = v7;
      v9 = [v4 eventDataVersion];

      if (v9)
      {
        v10 = __biome_log_for_category();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v3 eventBody];
          *buf = 138412290;
          v23 = v11;
          _os_log_impl(&dword_244177000, v10, OS_LOG_TYPE_DEFAULT, "New event: %@", buf, 0xCu);
        }

        v12 = [[BMDistributedContextContextChangedMessage alloc] initWithSubscriptionIdentifier:*(a1 + 40) translatedEvent:v4 messageIntent:GetMessageIntentFromDistributedContextClientIdentifier(*(a1 + 40))];
        v13 = [*(a1 + 32) rebootNotificationDelivered];
        v14 = [*(a1 + 32) queue];
        if (v13)
        {
          v15 = v20;
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v16 = __66__BMDistributedContextService_registerSinkWithIdentifier_withDSL___block_invoke_50;
        }

        else
        {
          v15 = v21;
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v16 = __66__BMDistributedContextService_registerSinkWithIdentifier_withDSL___block_invoke_49;
        }

        v15[2] = v16;
        v15[3] = &unk_278E07C28;
        v18 = *(a1 + 40);
        v15[4] = *(a1 + 32);
        v15[5] = v12;
        v15[6] = v18;
        v17 = v12;
        dispatch_sync(v14, v15);

        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  v17 = __biome_log_for_category();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    __66__BMDistributedContextService_registerSinkWithIdentifier_withDSL___block_invoke_48_cold_1();
  }

LABEL_13:

  v19 = *MEMORY[0x277D85DE8];
}

void __66__BMDistributedContextService_registerSinkWithIdentifier_withDSL___block_invoke_49(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) lockedUpdates];

  if (!v2)
  {
    v3 = [*(a1 + 32) subscriptionDefaults];
    v4 = [v3 objectForKey:@"lockedUpdates"];

    if (v4)
    {
      v5 = [v4 mutableCopy];
    }

    else
    {
      v5 = [MEMORY[0x277CBEB38] dictionary];
    }

    v6 = v5;
    [*(a1 + 32) setLockedUpdates:v5];
  }

  v7 = [*(a1 + 40) dictionaryRepresentation];
  v8 = [*(a1 + 32) lockedUpdates];
  [v8 setObject:v7 forKey:*(a1 + 48)];

  v9 = [*(a1 + 32) subscriptionDefaults];
  v10 = [*(a1 + 32) lockedUpdates];
  [v9 setObject:v10 forKey:@"lockedUpdates"];

  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [*(a1 + 32) lockedUpdates];
    v14 = 138412290;
    v15 = v12;
    _os_log_impl(&dword_244177000, v11, OS_LOG_TYPE_DEFAULT, "Class C Locked: Stored updates are now %@", &v14, 0xCu);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)subscribeToBiomeWithRemoteDSL:(id)l forRemoteIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  lCopy = l;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(BMDistributedContextService *)self registerSinkWithIdentifier:identifierCopy withDSL:lCopy];
  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    rootStreamIdentifiers = [lCopy rootStreamIdentifiers];
    streamPublishers = [lCopy streamPublishers];
    v13 = 138412802;
    v14 = lCopy;
    v15 = 2112;
    v16 = rootStreamIdentifiers;
    v17 = 2112;
    v18 = streamPublishers;
    _os_log_impl(&dword_244177000, v9, OS_LOG_TYPE_DEFAULT, "Subscribed to Biome with %@, stream identifiers are %@, publishers are %@", &v13, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)removeAllSubscriptionsForDeadRemoteDevice:(id)device
{
  v23 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager subscriptionsWithSubscribingDevice:deviceCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    *&v7 = 138412290;
    v15 = v7;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        identifier = [*(*(&v16 + 1) + 8 * v10) identifier];
        [(BMDistributedContextService *)self removeSubscriptionWithIdentifier:identifier fromSubscribingDevice:deviceCopy];
        v12 = [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager subscribingDevicesForIdentifier:identifier subscribedToDevice:self->_deviceUUID];
        if (![v12 count])
        {
          v13 = __biome_log_for_category();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v15;
            v21 = identifier;
            _os_log_impl(&dword_244177000, v13, OS_LOG_TYPE_DEFAULT, "No more devices with active subscription to identifier%@", buf, 0xCu);
          }

          [(BMDistributedContextService *)self cancelSubscriptionForIdentifier:identifier];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)cancelSubscriptionForIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = __biome_log_for_category();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = identifierCopy;
    _os_log_impl(&dword_244177000, v5, OS_LOG_TYPE_DEFAULT, "Unsubscribing identifier %@ from Biome", &v10, 0xCu);
  }

  v6 = [(NSMutableDictionary *)self->_subscriptionSinks objectForKeyedSubscript:identifierCopy];
  v7 = v6;
  if (v6)
  {
    [v6 cancel];
    [(NSMutableDictionary *)self->_subscriptionSinks setObject:0 forKeyedSubscript:identifierCopy];
  }

  else
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMDistributedContextService cancelSubscriptionForIdentifier:];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)assertLocalSubscriptionsToDevice:(id)device shouldSendIfNoSubscriptions:(BOOL)subscriptions
{
  subscriptionsCopy = subscriptions;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager subscriptionsWithSubscribedDevice:deviceCopy];
  if ([v7 count])
  {
    v8 = 0;
  }

  else
  {
    v8 = !subscriptionsCopy;
  }

  if (!v8)
  {
    v9 = [[BMDistributedContextSubscribeMessage alloc] initWithSubscriptions:v7 localDevice:self->_deviceUUID messageIntent:1];
    dictionaryRepresentation = [(BMDistributedContextSubscribeMessage *)v9 dictionaryRepresentation];
    v11 = 0;
    [(BMDistributedContextService *)self sendIDSMessageWithContent:dictionaryRepresentation asWaking:[(BMDistributedContextSubscribeMessage *)v9 shouldWake] toDevice:deviceCopy error:&v11];
  }
}

- (void)saveRemoteSubscription:(id)subscription fromDevice:(id)device
{
  v75 = *MEMORY[0x277D85DE8];
  subscriptionCopy = subscription;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  v54 = objc_opt_new();
  v8 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v9 = [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager subscriptionsWithSubscribingDevice:deviceCopy];
  v10 = [v9 countByEnumeratingWithState:&v63 objects:v74 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v64;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v64 != v12)
        {
          objc_enumerationMutation(v9);
        }

        identifier = [*(*(&v63 + 1) + 8 * i) identifier];
        [v8 addObject:identifier];
      }

      v11 = [v9 countByEnumeratingWithState:&v63 objects:v74 count:16];
    }

    while (v11);
  }

  v53 = deviceCopy;

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v51 = subscriptionCopy;
  obj = [subscriptionCopy subscriptions];
  v15 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v60;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v60 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v59 + 1) + 8 * j);
        subscriptionManager = self->_subscriptionManager;
        identifier2 = [v19 identifier];
        subscribingDevice = [v19 subscribingDevice];
        subscribedDevice = [v19 subscribedDevice];
        v24 = [(BMDistributedContextSubscriptionManager *)subscriptionManager subscriptionForIdentifier:identifier2 fromSubscribingDevice:subscribingDevice onSubscribedDevice:subscribedDevice];

        if (([v24 isEqual:v19] & 1) == 0)
        {
          v25 = __biome_log_for_category();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v70 = v53;
            v71 = 2112;
            v72 = v19;
            _os_log_impl(&dword_244177000, v25, OS_LOG_TYPE_DEFAULT, "Updated existing subscription from remote %@: %@", buf, 0x16u);
          }

          [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager removeSubscription:v24];
          identifier3 = [v24 identifier];
          [(BMDistributedContextService *)self cancelSubscriptionForIdentifier:identifier3];

          v27 = [v19 dsl];
          identifier4 = [v19 identifier];
          [(BMDistributedContextService *)self subscribeToBiomeWithRemoteDSL:v27 forRemoteIdentifier:identifier4];

          v29 = self->_subscriptionManager;
          v68 = v19;
          v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
          [(BMDistributedContextSubscriptionManager *)v29 addSubscriptions:v30];
        }

        identifier5 = [v19 identifier];
        [v54 addObject:identifier5];
      }

      v16 = [obj countByEnumeratingWithState:&v59 objects:v73 count:16];
    }

    while (v16);
  }

  v32 = __biome_log_for_category();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v70 = v8;
    _os_log_impl(&dword_244177000, v32, OS_LOG_TYPE_DEFAULT, "existingSubscriptions %@", buf, 0xCu);
  }

  v33 = __biome_log_for_category();
  v34 = v53;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v70 = v54;
    _os_log_impl(&dword_244177000, v33, OS_LOG_TYPE_DEFAULT, "activeSubscriptions %@", buf, 0xCu);
  }

  [v8 minusSet:v54];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v35 = v8;
  v36 = [v35 countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v56;
    do
    {
      for (k = 0; k != v37; ++k)
      {
        if (*v56 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v55 + 1) + 8 * k);
        [(BMDistributedContextService *)self removeSubscriptionWithIdentifier:v40 fromSubscribingDevice:v34];
        v41 = [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager subscribingDevicesForIdentifier:v40 subscribedToDevice:self->_deviceUUID];
        if (![v41 count])
        {
          v42 = __biome_log_for_category();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v70 = v40;
            _os_log_impl(&dword_244177000, v42, OS_LOG_TYPE_DEFAULT, "No more devices with active subscription to identifier%@", buf, 0xCu);
          }

          [(BMDistributedContextService *)self cancelSubscriptionForIdentifier:v40];
          v34 = v53;
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v37);
  }

  v43 = __biome_log_for_category();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    allSubscriptions = [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager allSubscriptions];
    *buf = 138412546;
    v70 = v34;
    v71 = 2112;
    v72 = allSubscriptions;
    _os_log_impl(&dword_244177000, v43, OS_LOG_TYPE_DEFAULT, "Updated all subscriptions from remote %@: %@", buf, 0x16u);
  }

  subscriptions = [v51 subscriptions];
  if (!subscriptions || (v46 = subscriptions, [v51 subscriptions], v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v47, "count"), v47, v46, !v48))
  {
    v49 = __biome_log_for_category();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v70 = v34;
      _os_log_impl(&dword_244177000, v49, OS_LOG_TYPE_DEFAULT, "Subscription has no subscriptions meaning it is an unsubscribe, re-asserting subscriptions targetting subscribed device %@", buf, 0xCu);
    }

    [(BMDistributedContextService *)self assertLocalSubscriptionsToDevice:v34 shouldSendIfNoSubscriptions:0];
  }

  v50 = *MEMORY[0x277D85DE8];
}

- (void)removeSubscriptionWithIdentifier:(id)identifier fromSubscribingDevice:(id)device
{
  v14 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  deviceCopy = device;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = identifierCopy;
    v12 = 2112;
    v13 = deviceCopy;
    _os_log_impl(&dword_244177000, v8, OS_LOG_TYPE_DEFAULT, "unsubscribing from subscription %@ made by subscribing device %@", &v10, 0x16u);
  }

  [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager removeSubscriptionWithIdentifier:identifierCopy fromSubscribingDevice:deviceCopy onSubscribedDevice:self->_deviceUUID];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)contextChanged:(id)changed forSubscriptionWithIdentifier:(id)identifier
{
  v33 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_queue);
  v25 = identifierCopy;
  [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager subscriptionsWithIdentifier:identifierCopy subscribedToDevice:self->_deviceUUID];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        configuration = [v12 configuration];
        wakeState = [configuration wakeState];
        integerValue = [wakeState integerValue];

        dictionaryRepresentation = [changedCopy dictionaryRepresentation];
        subscribingDevice = [v12 subscribingDevice];
        v27 = 0;
        v18 = [(BMDistributedContextService *)self sendIDSMessageWithContent:dictionaryRepresentation asWaking:integerValue & 1 toDevice:subscribingDevice error:&v27];
        v19 = v27;

        if (v18)
        {
          configuration2 = [v12 configuration];
          oneOffSubscription = [configuration2 oneOffSubscription];
          bOOLValue = [oneOffSubscription BOOLValue];

          if (bOOLValue)
          {
            subscribingDevice2 = [v12 subscribingDevice];
            [(BMDistributedContextService *)self teardownOneOffSubscriptionWithIdentifier:v25 fromSubscribingDevice:subscribingDevice2];
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v9);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerRemoteDSLSubscription:(id)subscription withRemoteIdentifier:(id)identifier withOptions:(unint64_t)options forDevices:(id)devices
{
  v51 = *MEMORY[0x277D85DE8];
  subscriptionCopy = subscription;
  identifierCopy = identifier;
  devicesCopy = devices;
  dispatch_assert_queue_V2(self->_queue);
  v32 = devicesCopy;
  if (devicesCopy)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = devicesCopy;
    v39 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v39)
    {
      v34 = 0;
      v41 = 0;
      v38 = *v44;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v44 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v43 + 1) + 8 * i);
          v12 = [(BMDistributedContextService *)self idsDeviceForDeviceUUID:v11];
          v13 = v12;
          if (v12)
          {
            v40 = v12;
            v14 = [BMDistributedContextSubscriptionConfiguration alloc];
            v15 = [MEMORY[0x277CBEAA8] now];
            v16 = [(BMDistributedContextSubscriptionConfiguration *)v14 initWithOptions:options lastChangedDate:v15];

            v17 = [[BMDistributedContextSubscription alloc] initWithIdentifier:identifierCopy dsl:subscriptionCopy subscribingDevice:self->_deviceUUID subscribedDevice:v11 configuration:v16];
            v18 = [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager subscriptionForIdentifier:identifierCopy fromSubscribingDevice:self->_deviceUUID onSubscribedDevice:v11];
            if ([v18 isEqual:v17])
            {
              v19 = __biome_log_for_category();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v49 = v17;
                _os_log_impl(&dword_244177000, v19, OS_LOG_TYPE_DEFAULT, "Subscription %@ is unchanged, but we will re-assert it's existence to the subscribed device", buf, 0xCu);
              }
            }

            else if (v18)
            {
              [(BMDistributedContextService *)self logMetricsForSubscription:v18 uponReboot:0];
              [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager removeSubscription:v18];
            }

            subscriptionManager = self->_subscriptionManager;
            v47 = v17;
            v34 = 1;
            v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v47 count:1];
            [(BMDistributedContextSubscriptionManager *)subscriptionManager addSubscriptions:v21];

            v22 = [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager subscriptionsWithSubscribedDevice:v11];
            v23 = [[BMDistributedContextSubscribeMessage alloc] initWithSubscriptions:v22 localDevice:self->_deviceUUID messageIntent:1];
            v24 = +[BMDistributedContextService distributedContextManager];
            dictionaryRepresentation = [(BMDistributedContextSubscribeMessage *)v23 dictionaryRepresentation];
            shouldWake = [(BMDistributedContextSubscribeMessage *)v23 shouldWake];
            v42 = 0;
            v41 |= [v24 sendIDSMessageWithContent:dictionaryRepresentation asWaking:shouldWake toDevice:v11 error:&v42];

            v13 = v40;
          }

          else
          {
            v16 = __biome_log_for_category();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v49 = v11;
              _os_log_error_impl(&dword_244177000, v16, OS_LOG_TYPE_ERROR, "Could not find: %@", buf, 0xCu);
            }
          }
        }

        v39 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
      }

      while (v39);
      v27 = v34 & v41;
    }

    else
    {
      v27 = 0;
    }

    v28 = __biome_log_for_category();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      allSubscriptions = [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager allSubscriptions];
      *buf = 138412290;
      v49 = allSubscriptions;
      _os_log_impl(&dword_244177000, v28, OS_LOG_TYPE_DEFAULT, "Updated subscription for local: %@", buf, 0xCu);
    }
  }

  else
  {
    v27 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v27 & 1;
}

- (BOOL)unregisterRemoteDSLSubscription:(id)subscription withRemoteIdentifier:(id)identifier forDevices:(id)devices
{
  v45 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  devicesCopy = devices;
  dispatch_assert_queue_V2(self->_queue);
  if (devicesCopy)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = devicesCopy;
    v9 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    v10 = &off_244189000;
    if (v9)
    {
      v30 = devicesCopy;
      v11 = 0;
      v34 = 0;
      v12 = *v37;
      v13 = v9;
      v31 = *v37;
      selfCopy = self;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v37 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          v16 = [(BMDistributedContextService *)self idsDeviceForDeviceUUID:v15];
          if (v16)
          {
            v17 = [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager subscriptionForIdentifier:identifierCopy fromSubscribingDevice:self->_deviceUUID onSubscribedDevice:v15];
            if (v17)
            {
              [(BMDistributedContextService *)self logMetricsForSubscription:v17 uponReboot:0];
              [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager removeSubscriptionWithIdentifier:identifierCopy fromSubscribingDevice:self->_deviceUUID onSubscribedDevice:v15];
              v18 = [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager subscriptionsWithSubscribedDevice:v15];
              v19 = [[BMDistributedContextSubscribeMessage alloc] initWithSubscriptions:v18 localDevice:self->_deviceUUID messageIntent:6];
              +[BMDistributedContextService distributedContextManager];
              v20 = v13;
              v22 = v21 = identifierCopy;
              dictionaryRepresentation = [(BMDistributedContextSubscribeMessage *)v19 dictionaryRepresentation];
              shouldWake = [(BMDistributedContextSubscribeMessage *)v19 shouldWake];
              v35 = 0;
              v34 |= [v22 sendIDSMessageWithContent:dictionaryRepresentation asWaking:shouldWake toDevice:v15 error:&v35];

              identifierCopy = v21;
              v13 = v20;

              v12 = v31;
              self = selfCopy;
              v11 = 1;
            }

            else
            {
              v18 = __biome_log_for_category();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v41 = identifierCopy;
                v42 = 2112;
                v43 = v15;
                _os_log_error_impl(&dword_244177000, v18, OS_LOG_TYPE_ERROR, "Asked to remove subscription but couldn't find existing subscription %@ on subscribed device %@", buf, 0x16u);
              }
            }
          }

          else
          {
            v17 = __biome_log_for_category();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v41 = v15;
              _os_log_error_impl(&dword_244177000, v17, OS_LOG_TYPE_ERROR, "Could not find: %@", buf, 0xCu);
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v13);
      v25 = v34 & v11;
      devicesCopy = v30;
      v10 = &off_244189000;
    }

    else
    {
      v25 = 0;
    }

    v26 = __biome_log_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      allSubscriptions = [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager allSubscriptions];
      *buf = *(v10 + 225);
      v41 = allSubscriptions;
      _os_log_impl(&dword_244177000, v26, OS_LOG_TYPE_DEFAULT, "Updated subscription for local: %@", buf, 0xCu);
    }
  }

  else
  {
    v25 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v25 & 1;
}

- (void)handleIncomingContextChangeMessage:(id)message forDevice:(id)device
{
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  deviceCopy = device;
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    translatedEvent = [messageCopy translatedEvent];
    *buf = 138412546;
    v25 = translatedEvent;
    v26 = 2112;
    v27 = deviceCopy;
    _os_log_impl(&dword_244177000, v8, OS_LOG_TYPE_DEFAULT, "Saving new context changed message %@ from subscribed device %@", buf, 0x16u);
  }

  translatedEvent2 = [messageCopy translatedEvent];
  [BMDistributedContextStreamWriter postEvent:translatedEvent2];

  subscriptionManager = self->_subscriptionManager;
  subscriptionIdentifier = [messageCopy subscriptionIdentifier];
  v13 = [(BMDistributedContextSubscriptionManager *)subscriptionManager subscriptionForIdentifier:subscriptionIdentifier fromSubscribingDevice:self->_deviceUUID onSubscribedDevice:deviceCopy];

  queue = self->_queue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __76__BMDistributedContextService_handleIncomingContextChangeMessage_forDevice___block_invoke;
  v19[3] = &unk_278E07C78;
  v20 = v13;
  v21 = deviceCopy;
  selfCopy = self;
  v23 = messageCopy;
  v15 = messageCopy;
  v16 = deviceCopy;
  v17 = v13;
  dispatch_sync(queue, v19);

  v18 = *MEMORY[0x277D85DE8];
}

void __76__BMDistributedContextService_handleIncomingContextChangeMessage_forDevice___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __76__BMDistributedContextService_handleIncomingContextChangeMessage_forDevice___block_invoke_cold_1(a1, v12, v15, v16, v17, v18, v19, v20);
    }

    goto LABEL_11;
  }

  v3 = [v2 configuration];
  v4 = [v3 oneOffSubscription];
  v5 = [v4 BOOLValue];

  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v23 = 138412290;
    v24 = v7;
    _os_log_impl(&dword_244177000, v6, OS_LOG_TYPE_DEFAULT, "Received the contextual change value for one-off subscription, removing our subscription %@", &v23, 0xCu);
  }

  v8 = *(*(a1 + 48) + 64);
  v9 = [*(a1 + 56) subscriptionIdentifier];
  [v8 removeSubscriptionWithIdentifier:v9 fromSubscribingDevice:*(*(a1 + 48) + 40) onSubscribedDevice:*(a1 + 40)];

  v10 = [*(a1 + 56) protocolVersion];
  v11 = [v10 integerValue];

  v12 = __biome_log_for_category();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11 != 2)
  {
    if (v13)
    {
      v22 = *(a1 + 40);
      v23 = 138412290;
      v24 = v22;
      _os_log_impl(&dword_244177000, v12, OS_LOG_TYPE_DEFAULT, "Device %@ does not support oneOff, sending explicit unsubscribe message", &v23, 0xCu);
    }

LABEL_11:

    [*(a1 + 48) assertLocalSubscriptionsToDevice:*(a1 + 40) shouldSendIfNoSubscriptions:1];
    goto LABEL_12;
  }

  if (v13)
  {
    v14 = *(a1 + 40);
    v23 = 138412290;
    v24 = v14;
    _os_log_impl(&dword_244177000, v12, OS_LOG_TYPE_DEFAULT, "Device %@ supports oneOff, not sending unsubscribe", &v23, 0xCu);
  }

LABEL_12:
  v21 = *MEMORY[0x277D85DE8];
}

- (void)teardownOneOffSubscriptionWithIdentifier:(id)identifier fromSubscribingDevice:(id)device
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  deviceCopy = device;
  dispatch_assert_queue_V2(self->_queue);
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = identifierCopy;
    v14 = 2112;
    v15 = deviceCopy;
    _os_log_impl(&dword_244177000, v8, OS_LOG_TYPE_DEFAULT, "Removing one-off subscription with identifer %@ from subscribing device %@", &v12, 0x16u);
  }

  [(BMDistributedContextService *)self removeSubscriptionWithIdentifier:identifierCopy fromSubscribingDevice:deviceCopy];
  v9 = [(BMDistributedContextSubscriptionManager *)self->_subscriptionManager subscribingDevicesForIdentifier:identifierCopy subscribedToDevice:self->_deviceUUID];
  if (![v9 count])
  {
    v10 = __biome_log_for_category();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = identifierCopy;
      _os_log_impl(&dword_244177000, v10, OS_LOG_TYPE_DEFAULT, "No more devices with active subscription to identifier%@", &v12, 0xCu);
    }

    [(BMDistributedContextService *)self cancelSubscriptionForIdentifier:identifierCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)registerForUpdates:(id)updates withIdentifier:(id)identifier withOptions:(unint64_t)options forDeviceTypes:(int64_t)types withError:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  identifierCopy = identifier;
  rebootNotificationDelivered = self->_rebootNotificationDelivered;
  if (rebootNotificationDelivered)
  {
    v15 = +[BMDistributedContextService distributedContextManager];
    v16 = [v15 devicesWithDeviceType:types];

    v17 = __biome_log_for_category();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options];
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:types];
      *buf = 138413058;
      *&buf[4] = identifierCopy;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      *&buf[22] = 2112;
      v31 = v19;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&dword_244177000, v17, OS_LOG_TYPE_DEFAULT, "Registering DSL %@ with options %@, for devices types %@, which includes %@", buf, 0x2Au);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v31) = 0;
    queue = [(BMDistributedContextService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __102__BMDistributedContextService_registerForUpdates_withIdentifier_withOptions_forDeviceTypes_withError___block_invoke;
    block[3] = &unk_278E07CA0;
    v28 = buf;
    v25 = updatesCopy;
    v26 = identifierCopy;
    optionsCopy = options;
    v21 = v16;
    v27 = v21;
    dispatch_sync(queue, block);

    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      [BMDistributedContextUtilities updateDescriptionForError:error withErrorCode:3];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [BMDistributedContextUtilities updateDescriptionForError:error withErrorCode:2];
  }

  v22 = *MEMORY[0x277D85DE8];
  return rebootNotificationDelivered;
}

void __102__BMDistributedContextService_registerForUpdates_withIdentifier_withOptions_forDeviceTypes_withError___block_invoke(void *a1)
{
  v2 = +[BMDistributedContextService distributedContextManager];
  *(*(a1[7] + 8) + 24) = [v2 registerRemoteDSLSubscription:a1[4] withRemoteIdentifier:a1[5] withOptions:a1[8] forDevices:a1[6]];
}

- (BOOL)registerForUpdates:(id)updates withIdentifier:(id)identifier withOptions:(unint64_t)options forDevices:(id)devices withError:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  identifierCopy = identifier;
  devicesCopy = devices;
  rebootNotificationDelivered = self->_rebootNotificationDelivered;
  if (rebootNotificationDelivered)
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options];
      *buf = 138412802;
      *&buf[4] = identifierCopy;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      *&buf[22] = 2112;
      v28 = devicesCopy;
      _os_log_impl(&dword_244177000, v16, OS_LOG_TYPE_DEFAULT, "Registering DSL %@ with options %@, for devices %@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v28) = 0;
    queue = [(BMDistributedContextService *)self queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __98__BMDistributedContextService_registerForUpdates_withIdentifier_withOptions_forDevices_withError___block_invoke;
    block[3] = &unk_278E07CA0;
    v25 = buf;
    v22 = updatesCopy;
    v23 = identifierCopy;
    optionsCopy = options;
    v24 = devicesCopy;
    dispatch_sync(queue, block);

    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      [BMDistributedContextUtilities updateDescriptionForError:error withErrorCode:3];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [BMDistributedContextUtilities updateDescriptionForError:error withErrorCode:2];
  }

  v19 = *MEMORY[0x277D85DE8];
  return rebootNotificationDelivered;
}

void __98__BMDistributedContextService_registerForUpdates_withIdentifier_withOptions_forDevices_withError___block_invoke(void *a1)
{
  v2 = +[BMDistributedContextService distributedContextManager];
  *(*(a1[7] + 8) + 24) = [v2 registerRemoteDSLSubscription:a1[4] withRemoteIdentifier:a1[5] withOptions:a1[8] forDevices:a1[6]];
}

- (BOOL)unregisterForUpdates:(id)updates withIdentifier:(id)identifier forDeviceTypes:(int64_t)types withError:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  identifierCopy = identifier;
  rebootNotificationDelivered = self->_rebootNotificationDelivered;
  if (rebootNotificationDelivered)
  {
    v13 = +[BMDistributedContextService distributedContextManager];
    v14 = [v13 devicesWithDeviceType:types];

    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:types];
      *buf = 138412802;
      *&buf[4] = identifierCopy;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      *&buf[22] = 2112;
      v30 = v14;
      _os_log_impl(&dword_244177000, v15, OS_LOG_TYPE_DEFAULT, "Unregistering DSL %@ for device types %@, which includes %@", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v30) = 0;
    queue = [(BMDistributedContextService *)self queue];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __92__BMDistributedContextService_unregisterForUpdates_withIdentifier_forDeviceTypes_withError___block_invoke;
    v24 = &unk_278E07CC8;
    v28 = buf;
    v25 = updatesCopy;
    v26 = identifierCopy;
    v18 = v14;
    v27 = v18;
    dispatch_sync(queue, &v21);

    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      [BMDistributedContextUtilities updateDescriptionForError:error withErrorCode:3, v21, v22, v23, v24, v25, v26];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [BMDistributedContextUtilities updateDescriptionForError:error withErrorCode:2];
  }

  v19 = *MEMORY[0x277D85DE8];
  return rebootNotificationDelivered;
}

void __92__BMDistributedContextService_unregisterForUpdates_withIdentifier_forDeviceTypes_withError___block_invoke(void *a1)
{
  v2 = +[BMDistributedContextService distributedContextManager];
  *(*(a1[7] + 8) + 24) = [v2 unregisterRemoteDSLSubscription:a1[4] withRemoteIdentifier:a1[5] forDevices:a1[6]];
}

- (BOOL)unregisterForUpdates:(id)updates withIdentifier:(id)identifier forDevices:(id)devices withError:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  identifierCopy = identifier;
  devicesCopy = devices;
  rebootNotificationDelivered = self->_rebootNotificationDelivered;
  if (rebootNotificationDelivered)
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = identifierCopy;
      *&buf[12] = 2112;
      *&buf[14] = devicesCopy;
      _os_log_impl(&dword_244177000, v14, OS_LOG_TYPE_DEFAULT, "Unregistering DSL %@ for devices %@", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v27 = 0;
    queue = [(BMDistributedContextService *)self queue];
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __88__BMDistributedContextService_unregisterForUpdates_withIdentifier_forDevices_withError___block_invoke;
    v21 = &unk_278E07CC8;
    v25 = buf;
    v22 = updatesCopy;
    v23 = identifierCopy;
    v24 = devicesCopy;
    dispatch_sync(queue, &v18);

    if ((*(*&buf[8] + 24) & 1) == 0)
    {
      [BMDistributedContextUtilities updateDescriptionForError:error withErrorCode:3, v18, v19, v20, v21, v22, v23];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [BMDistributedContextUtilities updateDescriptionForError:error withErrorCode:2];
  }

  v16 = *MEMORY[0x277D85DE8];
  return rebootNotificationDelivered;
}

void __88__BMDistributedContextService_unregisterForUpdates_withIdentifier_forDevices_withError___block_invoke(void *a1)
{
  v2 = +[BMDistributedContextService distributedContextManager];
  *(*(a1[7] + 8) + 24) = [v2 unregisterRemoteDSLSubscription:a1[4] withRemoteIdentifier:a1[5] forDevices:a1[6]];
}

+ (id)stringForIDSDeviceType:(int64_t)type
{
  if ((type - 1) > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_278E07D60[type - 1];
  }
}

- (id)idsDeviceForDeviceUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(IDSService *)self->_internetService devices];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        uniqueIDOverride = [v9 uniqueIDOverride];
        v11 = [uniqueIDOverride isEqualToString:dCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)devicesWithDeviceType:(int64_t)type
{
  v36 = *MEMORY[0x277D85DE8];
  devices = [(IDSService *)self->_internetService devices];
  v5 = [devices valueForKeyPath:@"uniqueIDOverride"];
  v6 = v5;
  if (!type)
  {
    v20 = v5;
    goto LABEL_33;
  }

  typeCopy = type;
  v26 = v5;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  array5 = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CBEB18] array];
  v28 = v27 = devices;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = devices;
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        v16 = array2;
        if ([v15 deviceType] == 2 || (v16 = array3, objc_msgSend(v15, "deviceType") == 4) || (v16 = array4, objc_msgSend(v15, "deviceType") == 6) || (v16 = v28, objc_msgSend(v15, "deviceType") == 1))
        {
          uniqueIDOverride = [v15 uniqueIDOverride];
          [v16 addObject:uniqueIDOverride];
        }

        if ([v15 isLocallyPaired])
        {
          uniqueIDOverride2 = [v15 uniqueIDOverride];
          [array5 addObject:uniqueIDOverride2];
        }

        uniqueIDOverride3 = [v15 uniqueIDOverride];
        [array addObject:uniqueIDOverride3];
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v12);
  }

  v20 = 0;
  if (typeCopy > 3)
  {
    v6 = v26;
    if (typeCopy != 4)
    {
      if (typeCopy != 5)
      {
        devices = v27;
        if (typeCopy == 6)
        {
          v20 = objc_opt_new();
          [v20 addObjectsFromArray:array2];
          [v20 addObjectsFromArray:array3];
          [v20 addObjectsFromArray:v28];
        }

        goto LABEL_32;
      }

      v22 = v28;
LABEL_30:
      v21 = v22;
      goto LABEL_31;
    }

    v21 = array5;
  }

  else
  {
    v6 = v26;
    if (typeCopy != 1)
    {
      if (typeCopy != 2)
      {
        devices = v27;
        if (typeCopy == 3)
        {
          v20 = array4;
        }

        goto LABEL_32;
      }

      v22 = array3;
      goto LABEL_30;
    }

    v21 = array2;
  }

LABEL_31:
  v20 = v21;
  devices = v27;
LABEL_32:

LABEL_33:
  v23 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  v13 = [(IDSService *)self->_internetService deviceForFromID:dCopy];
  [(BMDistributedContextService *)self logMetricsForMessage:messageCopy andContext:contextCopy fromDevice:v13];
  if (v13)
  {
    v14 = [messageCopy objectForKeyedSubscript:@"type"];
    v15 = [v14 isEqualToString:@"subscription"];

    v16 = __biome_log_for_category();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v17)
      {
        uniqueIDOverride = [v13 uniqueIDOverride];
        serverReceivedTime = [contextCopy serverReceivedTime];
        *buf = 138412802;
        v29 = uniqueIDOverride;
        v30 = 2112;
        v31 = messageCopy;
        v32 = 2112;
        v33 = serverReceivedTime;
        _os_log_impl(&dword_244177000, v16, OS_LOG_TYPE_DEFAULT, "Received new subscription from %@: %@ sent at %@", buf, 0x20u);
      }

      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __78__BMDistributedContextService_service_account_incomingMessage_fromID_context___block_invoke;
      block[3] = &unk_278E07C28;
      v25 = messageCopy;
      v26 = v13;
      selfCopy = self;
      dispatch_sync(queue, block);

      v21 = v25;
    }

    else
    {
      if (v17)
      {
        *buf = 138412290;
        v29 = messageCopy;
        _os_log_impl(&dword_244177000, v16, OS_LOG_TYPE_DEFAULT, "Received new context: %@", buf, 0xCu);
      }

      v21 = [[BMDistributedContextContextChangedMessage alloc] initWithMessageDictionary:messageCopy];
      if (v21)
      {
        uniqueIDOverride2 = [v13 uniqueIDOverride];
        [(BMDistributedContextService *)self handleIncomingContextChangeMessage:v21 forDevice:uniqueIDOverride2];
      }
    }
  }

  else
  {
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(&v21->super, OS_LOG_TYPE_FAULT))
    {
      [BMDistributedContextService service:account:incomingMessage:fromID:context:];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __78__BMDistributedContextService_service_account_incomingMessage_fromID_context___block_invoke(uint64_t a1)
{
  v2 = [BMDistributedContextSubscribeMessage alloc];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) uniqueIDOverride];
  v7 = [(BMDistributedContextSubscribeMessage *)v2 initWithMessageDictionary:v3 fromRemoteDevice:v4 localDevice:*(*(a1 + 48) + 40)];

  if (v7)
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 40) uniqueIDOverride];
    [v5 saveRemoteSubscription:v7 fromDevice:v6];
  }
}

- (void)connection:(id)connection devicesChanged:(id)changed
{
  changedCopy = changed;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__BMDistributedContextService_connection_devicesChanged___block_invoke;
  v8[3] = &unk_278E07CF0;
  v9 = changedCopy;
  selfCopy = self;
  v7 = changedCopy;
  dispatch_sync(queue, v8);
}

void __57__BMDistributedContextService_connection_devicesChanged___block_invoke(uint64_t a1)
{
  *(&v37[1] + 4) = *MEMORY[0x277D85DE8];
  v25 = [*(a1 + 32) valueForKeyPath:@"uniqueIDOverride"];
  v2 = [MEMORY[0x277CBEB58] setWithArray:?];
  v3 = __biome_log_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37[0] = v2;
    _os_log_impl(&dword_244177000, v3, OS_LOG_TYPE_DEFAULT, "Potential device change: Current device set is %@", buf, 0xCu);
  }

  v4 = *(a1 + 40);
  v5 = v4[8];
  v6 = [v4 deviceUUID];
  v7 = [v5 subscriptionsWithSubscribedDevice:v6];

  v8 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v31;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v31 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v15 = [v14 subscribingDevice];
        v16 = [v2 containsObject:v15];

        if ((v16 & 1) == 0)
        {
          v17 = __biome_log_for_category();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            __57__BMDistributedContextService_connection_devicesChanged___block_invoke_cold_1(buf, v14, v37, v17);
          }

          v18 = [v14 subscribingDevice];
          [v8 addObject:v18];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v11);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = v8;
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [*(*(a1 + 40) + 64) removeAllSubscriptionsMadeBySubscribingDevice:*(*(&v26 + 1) + 8 * j)];
      }

      v21 = [v19 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v21);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v21 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x277CF0E20] processWithXPCConnection:connectionCopy];
  v10 = __biome_log_for_category();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    executableName = [v9 executableName];
    v17 = 138543618;
    v18 = executableName;
    v19 = 1024;
    v20 = [v9 pid];
    _os_log_impl(&dword_244177000, v10, OS_LOG_TYPE_DEFAULT, "Incoming connection from %{public}@(%d)", &v17, 0x12u);
  }

  v12 = [MEMORY[0x277CF0E00] policyForProcess:v9 connectionFlags:0 useCase:*MEMORY[0x277CF0DF8]];
  allowsAccessToContextSync = [v12 allowsAccessToContextSync];
  if (allowsAccessToContextSync)
  {
    v14 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28578EAA0];
    [connectionCopy setExportedInterface:v14];
    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
  }

  else
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [BMDistributedContextService listener:v9 shouldAcceptNewConnection:?];
    }
  }

  objc_autoreleasePoolPop(v8);
  v15 = *MEMORY[0x277D85DE8];
  return allowsAccessToContextSync;
}

- (void)registerForUpdates:(id)updates withIdentifier:(id)identifier forUseCase:(id)case withOptions:(unint64_t)options forDeviceTypes:(int64_t)types withErrorHandler:(id)handler
{
  v39[1] = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  identifierCopy = identifier;
  handlerCopy = handler;
  v14 = MEMORY[0x277CBEB38];
  caseCopy = case;
  dictionary = [v14 dictionary];
  v17 = *MEMORY[0x277CCA450];
  [dictionary setValue:@"Unknown Error" forKey:*MEMORY[0x277CCA450]];
  v34 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ContextSyncErrorDomain" code:0 userInfo:dictionary];
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v18 = [MEMORY[0x277CF0E20] processWithXPCConnection:?];
  v19 = [MEMORY[0x277CF0E00] policyForProcess:v18 connectionFlags:0 useCase:caseCopy];

  v36 = updatesCopy;
  if (identifierCopy && ([updatesCopy rootStreamIdentifiers], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v19, "allowsAccessToContextSyncStreams:", v20), v20, (v21 & 1) != 0))
  {
    if (([identifierCopy isEqualToString:@"com.apple.duetactivityscheduler.remotedeviceactivitymonitor"] & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"com.appleinternal.proactive.remoteactivitylevel"))
    {
      optionsCopy = options | 2;
    }

    else
    {
      optionsCopy = options;
    }

    v29 = +[BMDistributedContextService distributedContextManager];
    v37 = v34;
    v30 = [v29 registerForUpdates:updatesCopy withIdentifier:identifierCopy withOptions:optionsCopy forDeviceTypes:types withError:&v37];
    v28 = v37;

    handlerCopy[2](handlerCopy, (v30 & 1) != 0, v28);
  }

  else
  {
    v23 = MEMORY[0x277CCACA8];
    executableName = [v18 executableName];
    identifierCopy = [v23 stringWithFormat:@"'%@' is not entitled for context sync access to '%@'", executableName, identifierCopy];

    v26 = MEMORY[0x277CCA9B8];
    v38 = v17;
    v39[0] = identifierCopy;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v28 = [v26 errorWithDomain:@"ContextSyncErrorDomain" code:5 userInfo:v27];

    handlerCopy[2](handlerCopy, 0, v28);
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)registerForUpdates:(id)updates withIdentifier:(id)identifier forUseCase:(id)case withOptions:(unint64_t)options forDevices:(id)devices withErrorHandler:(id)handler
{
  v44[1] = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  identifierCopy = identifier;
  devicesCopy = devices;
  handlerCopy = handler;
  v14 = MEMORY[0x277CBEB38];
  caseCopy = case;
  dictionary = [v14 dictionary];
  v17 = *MEMORY[0x277CCA450];
  [dictionary setValue:@"Unknown Error" forKey:*MEMORY[0x277CCA450]];
  v39 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ContextSyncErrorDomain" code:0 userInfo:dictionary];
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v19 = [MEMORY[0x277CF0E20] processWithXPCConnection:currentConnection];
  v20 = [MEMORY[0x277CF0E00] policyForProcess:? connectionFlags:? useCase:?];

  v21 = identifierCopy;
  if (identifierCopy && ([updatesCopy rootStreamIdentifiers], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v20, "allowsAccessToContextSyncStreams:", v22), v22, (v23 & 1) != 0))
  {
    v24 = +[BMDistributedContextService distributedContextManager];
    v42 = v39;
    v25 = [v24 registerForUpdates:updatesCopy withIdentifier:v21 withOptions:options forDevices:devicesCopy withError:&v42];
    v26 = v42;

    v27 = handlerCopy;
    (*(handlerCopy + 2))(handlerCopy, (v25 & 1) != 0, v26);
  }

  else
  {
    v28 = MEMORY[0x277CCACA8];
    executableName = [v19 executableName];
    v38 = dictionary;
    v30 = currentConnection;
    v31 = updatesCopy;
    v32 = v21;
    v33 = [v28 stringWithFormat:@"'%@' is not entitled for context sync access to '%@'", executableName, v21];

    v34 = MEMORY[0x277CCA9B8];
    v43 = v17;
    v44[0] = v33;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
    v26 = [v34 errorWithDomain:@"ContextSyncErrorDomain" code:5 userInfo:v35];

    v21 = v32;
    v27 = handlerCopy;
    (*(handlerCopy + 2))(handlerCopy, 0, v26);

    updatesCopy = v31;
    currentConnection = v30;
    dictionary = v38;
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForUpdates:(id)updates withIdentifier:(id)identifier forUseCase:(id)case forDeviceTypes:(int64_t)types withErrorHandler:(id)handler
{
  v37[1] = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  identifierCopy = identifier;
  handlerCopy = handler;
  v12 = MEMORY[0x277CBEB38];
  caseCopy = case;
  dictionary = [v12 dictionary];
  v15 = *MEMORY[0x277CCA450];
  [dictionary setValue:@"Unknown Error" forKey:*MEMORY[0x277CCA450]];
  v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ContextSyncErrorDomain" code:0 userInfo:dictionary];
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v16 = [MEMORY[0x277CF0E20] processWithXPCConnection:?];
  v17 = [MEMORY[0x277CF0E00] policyForProcess:v16 connectionFlags:0 useCase:caseCopy];

  v18 = identifierCopy;
  if (identifierCopy && ([updatesCopy rootStreamIdentifiers], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v17, "allowsAccessToContextSyncStreams:", v19), v19, (v20 & 1) != 0))
  {
    v21 = +[BMDistributedContextService distributedContextManager];
    v35 = v32;
    v22 = updatesCopy;
    v23 = [v21 unregisterForUpdates:updatesCopy withIdentifier:v18 forDeviceTypes:types withError:&v35];
    v24 = v35;

    handlerCopy[2](handlerCopy, (v23 & 1) != 0, v24);
  }

  else
  {
    v25 = MEMORY[0x277CCACA8];
    executableName = [v16 executableName];
    identifierCopy = [v25 stringWithFormat:@"'%@' is not entitled for context sync access to '%@'", executableName, identifierCopy];

    v28 = MEMORY[0x277CCA9B8];
    v36 = v15;
    v37[0] = identifierCopy;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v24 = [v28 errorWithDomain:@"ContextSyncErrorDomain" code:5 userInfo:v29];

    handlerCopy[2](handlerCopy, 0, v24);
    v22 = updatesCopy;
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForUpdates:(id)updates withIdentifier:(id)identifier forUseCase:(id)case forDevices:(id)devices withErrorHandler:(id)handler
{
  v39[1] = *MEMORY[0x277D85DE8];
  updatesCopy = updates;
  identifierCopy = identifier;
  devicesCopy = devices;
  handlerCopy = handler;
  v14 = MEMORY[0x277CBEB38];
  caseCopy = case;
  dictionary = [v14 dictionary];
  v17 = *MEMORY[0x277CCA450];
  [dictionary setValue:@"Unknown Error" forKey:*MEMORY[0x277CCA450]];
  v18 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ContextSyncErrorDomain" code:0 userInfo:dictionary];
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v19 = [MEMORY[0x277CF0E20] processWithXPCConnection:?];
  v20 = [MEMORY[0x277CF0E00] policyForProcess:v19 connectionFlags:0 useCase:caseCopy];

  v36 = identifierCopy;
  if (identifierCopy && ([updatesCopy rootStreamIdentifiers], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v20, "allowsAccessToContextSyncStreams:", v21), v21, (v22 & 1) != 0))
  {
    v23 = +[BMDistributedContextService distributedContextManager];
    v37 = v18;
    v24 = devicesCopy;
    v25 = [v23 unregisterForUpdates:updatesCopy withIdentifier:v36 forDevices:devicesCopy withError:&v37];
    v26 = v37;

    handlerCopy[2](handlerCopy, (v25 & 1) != 0, v26);
  }

  else
  {
    v27 = MEMORY[0x277CCACA8];
    executableName = [v19 executableName];
    v29 = [v27 stringWithFormat:@"'%@' is not entitled for context sync access to '%@'", executableName, v36];

    v30 = MEMORY[0x277CCA9B8];
    v38 = v17;
    v39[0] = v29;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v26 = [v30 errorWithDomain:@"ContextSyncErrorDomain" code:5 userInfo:v31];

    v32 = __biome_log_for_category();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [BMDistributedContextService unregisterForUpdates:withIdentifier:forUseCase:forDevices:withErrorHandler:];
    }

    handlerCopy[2](handlerCopy, 0, v26);
    v24 = devicesCopy;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)logMetricsForSubscription:(id)subscription uponReboot:(BOOL)reboot
{
  v27 = *MEMORY[0x277D85DE8];
  subscriptionCopy = subscription;
  v6 = [MEMORY[0x277CBEAA8] now];
  v7 = [subscriptionCopy dsl];
  streamPublishers = [v7 streamPublishers];

  subscribingDevice = [subscriptionCopy subscribingDevice];
  v10 = [(BMDistributedContextService *)self idsDeviceForDeviceUUID:subscribingDevice];

  if (!v10)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BMDistributedContextService logMetricsForSubscription:subscriptionCopy uponReboot:?];
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = streamPublishers;
  v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v19 = subscriptionCopy;
        v20 = v10;
        v21 = v6;
        AnalyticsSendEventLazy();
      }

      v13 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

id __68__BMDistributedContextService_logMetricsForSubscription_uponReboot___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [*(a1 + 32) identifier];
  [v2 setObject:v3 forKeyedSubscript:@"identifier"];

  v4 = [*(a1 + 40) identifier];
  [v2 setObject:v4 forKeyedSubscript:@"context"];

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = +[BMDistributedContextService stringForIDSDeviceType:](BMDistributedContextService, "stringForIDSDeviceType:", [v5 deviceType]);
    [v2 setObject:v6 forKeyedSubscript:@"subscriberDeviceType"];
  }

  v7 = [*(a1 + 32) configuration];
  v8 = [v7 wakeState];

  if ([v8 BOOLValue])
  {
    [v2 setObject:v8 forKeyedSubscript:@"waking"];
    v9 = *(a1 + 56);
    v10 = [*(a1 + 32) configuration];
    v11 = [v10 lastChangedDate];
    [v9 timeIntervalSinceDate:v11];
    v13 = v12;

    if (v13 == 0.0)
    {
      v15 = __biome_log_for_category();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __68__BMDistributedContextService_logMetricsForSubscription_uponReboot___block_invoke_cold_1(v8, a1);
      }
    }

    else
    {
      v14 = [MEMORY[0x277CCABB0] numberWithDouble:v13 / 60.0];
      [v2 setObject:v14 forKeyedSubscript:@"duration"];
    }
  }

  v16 = __biome_log_for_category();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    __68__BMDistributedContextService_logMetricsForSubscription_uponReboot___block_invoke_cold_2();
  }

  return v2;
}

- (void)logMetricsForMessage:(id)message andContext:(id)context fromDevice:(id)device
{
  messageCopy = message;
  contextCopy = context;
  deviceCopy = device;
  v10 = [messageCopy objectForKeyedSubscript:@"version"];

  if (v10)
  {
    v11 = contextCopy;
    v12 = messageCopy;
    v13 = deviceCopy;
    AnalyticsSendEventLazy();
  }
}

id __74__BMDistributedContextService_logMetricsForMessage_andContext_fromDevice___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [*(a1 + 32) serverReceivedTime];
  [v3 timeIntervalSinceNow];
  if (fabs(v4) < 1.0)
  {
    v4 = 0.0;
  }

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
  [v2 setObject:v5 forKeyedSubscript:@"latencySeconds"];

  v6 = [*(a1 + 40) objectForKeyedSubscript:@"type"];
  [v2 setObject:v6 forKeyedSubscript:@"messageType"];

  v7 = [*(a1 + 40) objectForKeyedSubscript:@"type"];

  if (v7 == @"subscription")
  {
    v8 = @"None";
  }

  else
  {
    v8 = [*(a1 + 40) objectForKeyedSubscript:@"streamIdentifier"];
  }

  [v2 setObject:v8 forKeyedSubscript:@"contextIdentifier"];
  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = +[BMDistributedContextService stringForIDSDeviceType:](BMDistributedContextService, "stringForIDSDeviceType:", [v9 deviceType]);
    [v2 setObject:v10 forKeyedSubscript:@"subscriberDeviceType"];
  }

  v11 = [*(a1 + 40) objectForKeyedSubscript:@"waking"];
  [v2 setObject:v11 forKeyedSubscript:@"waking"];

  v12 = [*(a1 + 40) objectForKeyedSubscript:@"version"];
  [v2 setObject:v12 forKeyedSubscript:@"messageVersion"];

  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __74__BMDistributedContextService_logMetricsForMessage_andContext_fromDevice___block_invoke_cold_1();
  }

  return v2;
}

void __66__BMDistributedContextService_registerSinkWithIdentifier_withDSL___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_fault_impl(&dword_244177000, a2, OS_LOG_TYPE_FAULT, "Did not successfully set up sink with identifier: %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __66__BMDistributedContextService_registerSinkWithIdentifier_withDSL___block_invoke_48_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0(&dword_244177000, v0, v1, "New event was not whitelisted, missing streamIdentifier, eventData, or dataVersion %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)cancelSubscriptionForIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0(&dword_244177000, v0, v1, "Could not find a dsl for identifier %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__BMDistributedContextService_handleIncomingContextChangeMessage_forDevice___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(a1 + 40));
  OUTLINED_FUNCTION_0(&dword_244177000, a2, a3, "Received a context change for which we have no active subscription, re-asserting our subscriptions to subscribed device %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendIDSMessageWithContent:asWaking:toDevice:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10(&dword_244177000, v0, v1, "Cannot find %@ in device set %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sendIDSMessageWithContent:asWaking:toDevice:error:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10(&dword_244177000, v0, v1, "Failed to send %@: No queue identifier %@ / options");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sendIDSMessageWithContent:asWaking:toDevice:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10(&dword_244177000, v0, v1, "Failed to send over internet service: %@ because %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sendIDSMessageWithContent:asWaking:toDevice:error:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_10(&dword_244177000, v0, v1, "Failed to send over local service: %@ because %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)service:account:incomingMessage:fromID:context:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_fault_impl(&dword_244177000, v0, OS_LOG_TYPE_FAULT, "Received new message but dropping because could not find device %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __57__BMDistributedContextService_connection_devicesChanged___block_invoke_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 subscribingDevice];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_244177000, a4, OS_LOG_TYPE_ERROR, "Disconnected subscribing device %@", a1, 0xCu);
}

- (void)listener:(void *)a1 shouldAcceptNewConnection:.cold.1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = [a1 executableName];
  [a1 pid];
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)unregisterForUpdates:withIdentifier:forUseCase:forDevices:withErrorHandler:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0(&dword_244177000, v0, v1, "%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)logMetricsForSubscription:(void *)a1 uponReboot:.cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 subscribingDevice];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __68__BMDistributedContextService_logMetricsForSubscription_uponReboot___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [*(a2 + 64) subscriptionManager];
  v9 = [v2 allSubscriptions];
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __68__BMDistributedContextService_logMetricsForSubscription_uponReboot___block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_244177000, v0, OS_LOG_TYPE_DEBUG, "Logged stream end: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __74__BMDistributedContextService_logMetricsForMessage_andContext_fromDevice___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(&dword_244177000, v0, OS_LOG_TYPE_DEBUG, "Logged new message: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end