@interface MOConfiguration
+ (id)sharedInstance;
- (BOOL)isAllowedToPromptEventCategory:(unint64_t)category;
- (BOOL)isAllowedToPromptResourceType:(unint64_t)type;
- (MOConfiguration)init;
- (id)makeNewConnectionWithInterfaceFor:(id)for;
- (void)dealloc;
- (void)onEventStreamsUpdated;
- (void)reset;
@end

@implementation MOConfiguration

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__MOConfiguration_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_1 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_1, block);
  }

  v2 = sharedInstance_shared_0;

  return v2;
}

uint64_t __33__MOConfiguration_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_shared_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (MOConfiguration)init
{
  v13.receiver = self;
  v13.super_class = MOConfiguration;
  v2 = [(MOConfiguration *)&v13 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cachedEventStreamPermissions = v2->cachedEventStreamPermissions;
    v2->cachedEventStreamPermissions = v3;

    v5 = objc_opt_new();
    cachedResourceStreamPermissions = v2->cachedResourceStreamPermissions;
    v2->cachedResourceStreamPermissions = v5;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, onEventStreamsUpdated_bounce, @"com.apple.momentsd.event-streams-updated", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v8 = [[MOConnectionManager alloc] initWithName:@"MOConfiguration" usingDelegate:v2];
    connectionManager = v2->connectionManager;
    v2->connectionManager = v8;
  }

  v10 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_22D8C5000, v10, OS_LOG_TYPE_DEFAULT, "MOConfiguration initiate client", v12, 2u);
  }

  return v2;
}

- (void)dealloc
{
  [(MOConnectionManager *)self->connectionManager invalidate];
  v3.receiver = self;
  v3.super_class = MOConfiguration;
  [(MOConfiguration *)&v3 dealloc];
}

- (void)onEventStreamsUpdated
{
  v3 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_22D8C5000, v3, OS_LOG_TYPE_INFO, "onEventStreamsUpdated", v4, 2u);
  }

  [(MOConfiguration *)self reset];
}

- (void)reset
{
  v3 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_22D8C5000, v3, OS_LOG_TYPE_INFO, "clearing cache", v8, 2u);
  }

  v4 = objc_opt_new();
  cachedEventStreamPermissions = self->cachedEventStreamPermissions;
  self->cachedEventStreamPermissions = v4;

  v6 = objc_opt_new();
  cachedResourceStreamPermissions = self->cachedResourceStreamPermissions;
  self->cachedResourceStreamPermissions = v6;
}

- (BOOL)isAllowedToPromptEventCategory:(unint64_t)category
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  stringValue = [v5 stringValue];

  v7 = [(NSMutableDictionary *)self->cachedEventStreamPermissions objectForKey:stringValue];
  v8 = v7;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
    *(v16 + 24) = bOOLValue;
  }

  else
  {
    connectionManager = self->connectionManager;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__MOConfiguration_isAllowedToPromptEventCategory___block_invoke;
    v14[3] = &unk_278774D68;
    v14[4] = &v15;
    v14[5] = category;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__MOConfiguration_isAllowedToPromptEventCategory___block_invoke_110;
    v13[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v13[4] = category;
    [(MOConnectionManager *)connectionManager callSyncProxyUsingBlock:v14 onError:v13];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:*(v16 + 24)];
    [(NSMutableDictionary *)self->cachedEventStreamPermissions setObject:v11 forKeyedSubscript:stringValue];

    bOOLValue = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);

  return bOOLValue & 1;
}

void __50__MOConfiguration_isAllowedToPromptEventCategory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__MOConfiguration_isAllowedToPromptEventCategory___block_invoke_2;
  v8[3] = &unk_278774D40;
  v10 = *(a1 + 32);
  v11 = v6;
  v9 = v5;
  v7 = v5;
  [a2 isAllowedToPromptEventCategory:v6 withReply:v8];
}

void __50__MOConfiguration_isAllowedToPromptEventCategory___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_debug_impl(&dword_22D8C5000, v6, OS_LOG_TYPE_DEBUG, "isAllowedToPrompt event category: %@ %@, %@", &v10, 0x20u);
  }

  if (!v5)
  {
    *(*(a1[5] + 8) + 24) = a2;
  }

  (*(a1[4] + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

void __50__MOConfiguration_isAllowedToPromptEventCategory___block_invoke_110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __50__MOConfiguration_isAllowedToPromptEventCategory___block_invoke_110_cold_1(a1);
  }
}

- (BOOL)isAllowedToPromptResourceType:(unint64_t)type
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  stringValue = [v5 stringValue];

  v7 = [(NSMutableDictionary *)self->cachedResourceStreamPermissions objectForKey:stringValue];
  v8 = v7;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (v7)
  {
    bOOLValue = [v7 BOOLValue];
    *(v16 + 24) = bOOLValue;
  }

  else
  {
    connectionManager = self->connectionManager;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __49__MOConfiguration_isAllowedToPromptResourceType___block_invoke;
    v14[3] = &unk_278774D68;
    v14[4] = &v15;
    v14[5] = type;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__MOConfiguration_isAllowedToPromptResourceType___block_invoke_113;
    v13[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    v13[4] = type;
    [(MOConnectionManager *)connectionManager callSyncProxyUsingBlock:v14 onError:v13];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:*(v16 + 24)];
    [(NSMutableDictionary *)self->cachedResourceStreamPermissions setObject:v11 forKeyedSubscript:stringValue];

    bOOLValue = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);

  return bOOLValue & 1;
}

void __49__MOConfiguration_isAllowedToPromptResourceType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__MOConfiguration_isAllowedToPromptResourceType___block_invoke_2;
  v8[3] = &unk_278774D40;
  v10 = *(a1 + 32);
  v11 = v6;
  v9 = v5;
  v7 = v5;
  [a2 isAllowedToPromptResourceType:v6 withReply:v8];
}

void __49__MOConfiguration_isAllowedToPromptResourceType___block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[6]];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    v10 = 138412802;
    v11 = v8;
    v12 = 2112;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    _os_log_debug_impl(&dword_22D8C5000, v6, OS_LOG_TYPE_DEBUG, "isAllowedToPrompt resource type: %@ %@, %@", &v10, 0x20u);
  }

  if (!v5)
  {
    *(*(a1[5] + 8) + 24) = a2;
  }

  (*(a1[4] + 16))();

  v7 = *MEMORY[0x277D85DE8];
}

void __49__MOConfiguration_isAllowedToPromptResourceType___block_invoke_113(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityPermissions);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __49__MOConfiguration_isAllowedToPromptResourceType___block_invoke_113_cold_1(a1);
  }
}

- (id)makeNewConnectionWithInterfaceFor:(id)for
{
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284110480];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v3 setClasses:v6 forSelector:sel_isAllowedToPromptEventCategory_withReply_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v7 setWithObjects:{v8, v9, v10, objc_opt_class(), 0}];
  [v3 setClasses:v11 forSelector:sel_isAllowedToPromptEventCategory_withReply_ argumentIndex:0 ofReply:1];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v3 setClasses:v14 forSelector:sel_isAllowedToPromptResourceType_withReply_ argumentIndex:0 ofReply:0];

  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v15 setWithObjects:{v16, v17, v18, objc_opt_class(), 0}];
  [v3 setClasses:v19 forSelector:sel_isAllowedToPromptResourceType_withReply_ argumentIndex:0 ofReply:1];

  v20 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.momentsd" options:0];
  [v20 setRemoteObjectInterface:v3];

  return v20;
}

void __50__MOConfiguration_isAllowedToPromptEventCategory___block_invoke_110_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_8(&dword_22D8C5000, v2, v3, "isAllowedToPrompt event category: %@, %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __49__MOConfiguration_isAllowedToPromptResourceType___block_invoke_113_cold_1(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_8(&dword_22D8C5000, v2, v3, "isAllowedToPrompt resource type: %@, %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end