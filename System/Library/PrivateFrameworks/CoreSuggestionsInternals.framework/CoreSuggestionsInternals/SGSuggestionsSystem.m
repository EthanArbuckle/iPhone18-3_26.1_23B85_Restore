@interface SGSuggestionsSystem
+ (void)_beforeSystemInitialization;
+ (void)start;
@end

@implementation SGSuggestionsSystem

+ (void)start
{
  +[SGSuggestionsSystem _beforeSystemInitialization];
  if ([MEMORY[0x277D42598] isUnlocked])
  {
    v2 = +[SGSqlEntityStore defaultHarvestStore];
    v3 = +[SGSqlEntityStore defaultStore];
    v4 = v3;
    if (v2)
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      retrySuggestionsInitializationWhenUnlocked();
    }

    else
    {
      finishSuggestionsSetup(v2, v3);
    }
  }

  else
  {
    retrySuggestionsInitializationWhenUnlocked();
  }

  [MEMORY[0x277D42598] runBlockWhenDeviceIsClassCUnlocked:&__block_literal_global_29_6248];
  v6 = +[SGXPCActivityManager sharedInstance];
  [v6 registerActivitiesWithSystem];

  out_token = 0;
  v7 = [*MEMORY[0x277D02478] UTF8String];
  v8 = dispatch_get_global_queue(9, 0);
  notify_register_dispatch(v7, &out_token, v8, &__block_literal_global_36);

  +[SGTextUnderstandingObservationSystem start];
}

void __28__SGSuggestionsSystem_start__block_invoke_2()
{
  v0 = sgLogHandle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_debug_impl(&dword_231E60000, v0, OS_LOG_TYPE_DEBUG, "Preparing for queries", v1, 2u);
  }
}

void __28__SGSuggestionsSystem_start__block_invoke()
{
  v0 = sharedSpotlightReceiver();
  SpotlightReceiverRegister();
}

+ (void)_beforeSystemInitialization
{
  [SGDCloudKitSync setSharedInstanceConfigurationBlock:&__block_literal_global_6279];
  if (([MEMORY[0x277D42598] isClassCLocked] & 1) == 0)
  {
    v2 = +[SGSqlEntityStore defaultStore];
    v3 = +[SGSqlEntityStore defaultHarvestStore];
  }
}

void __50__SGSuggestionsSystem__beforeSystemInitialization__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setNewEntitiesCallback:&__block_literal_global_13];
  [v2 setDeleteAllSyncedItemsCallback:&__block_literal_global_17];
  v6 = objc_opt_new();
  v3 = [objc_alloc(MEMORY[0x277CBC220]) initWithContainerIdentifier:@"com.apple.CoreSuggestions.PseudoEvents" environment:1];
  v4 = [objc_alloc(MEMORY[0x277CBC218]) initWithContainerID:v3 options:v6];
  v5 = [v4 privateCloudDatabase];
  [v2 setDatabase:v5];
}

uint64_t __50__SGSuggestionsSystem__beforeSystemInitialization__block_invoke_3()
{
  v0 = +[SGSqlEntityStore defaultStore];
  v1 = [MEMORY[0x277D01FA0] fromSync];
  [v0 deleteItemsWithEntityTag:v1];

  return 1;
}

uint64_t __50__SGSuggestionsSystem__beforeSystemInitialization__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SGSqlEntityStore defaultStore];
  [v3 writeEntity:v2];

  return 1;
}

@end