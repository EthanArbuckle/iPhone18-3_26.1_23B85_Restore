@interface CNUIUserActionListDataSource
+ (BOOL)isSupportedActionType:(id)type;
+ (id)allActionTypes;
+ (id)allSupportedActionTypes;
+ (id)allSupportedActionTypesForBlockedContact;
+ (id)allSupportedActionTypesWithCapabilities:(id)capabilities;
+ (id)descriptorForRequiredKeys;
+ (id)displayNameForButtonForActionType:(id)type;
+ (id)displayNameForDisambiguationForActionType:(id)type;
+ (id)makeCacheWithCapacity:(unint64_t)capacity expirationAge:(double)age timeProvider:(id)provider;
+ (id)os_log;
- (CNUIUserActionListDataSource)initWithDiscoveringEnvironment:(id)environment;
- (id)actionTypesForConsumer:(id)consumer;
- (id)actionTypesToUpdateForSelectedItem:(id)item;
- (id)consumer:(id)consumer actionModelsForContact:(id)contact actionType:(id)type handler:(id)handler;
- (id)consumer:(id)consumer currentActionModelForContact:(id)contact actionType:(id)type;
- (id)consumer:(id)consumer localizedButtonDisplayNameForActionType:(id)type;
- (id)consumer:(id)consumer localizedDisplayNameForActionType:(id)type;
- (id)makeCacheWithCurrentSettings;
- (id)makeModelObservableForContact:(id)contact actionType:(id)type defaultActionItem:(id)item;
- (id)modelsForContact:(id)contact actionType:(id)type;
- (id)thirdPartyActionsForContact:(id)contact propertyKey:(id)key identifier:(id)identifier;
- (id)thirdPartyActionsForContactProperty:(id)property;
- (id)thirdPartyTargetsForActionTypes:(id)types;
- (void)_invalidateModelsOnExternalChange:(id)change;
- (void)_safeEmptyModels;
- (void)consumer:(id)consumer didSelectItem:(id)item forContact:(id)contact actionType:(id)type;
- (void)dealloc;
- (void)makeCacheAndTransferContents;
- (void)performFirstResolutionForEntry:(id)entry contact:(id)contact actionType:(id)type;
- (void)refreshEntry:(id)entry contact:(id)contact actionType:(id)type;
- (void)registerDelegate:(id)delegate withContactIdentifier:(id)identifier;
- (void)resolveCacheEntry:(id)entry contact:(id)contact actionType:(id)type defaultActionItem:(id)item qualityOfService:(unint64_t)service;
- (void)setCacheEntryExpirationAge:(double)age;
- (void)setCacheEntryRefreshAge:(double)age;
- (void)setContactStore:(id)store;
- (void)unregisterDelegate:(id)delegate;
@end

@implementation CNUIUserActionListDataSource

+ (id)descriptorForRequiredKeys
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695CD58];
  v3 = +[CNUIUserActionDisambiguationModeler descriptorForRequiredKeys];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNUIUserActionListDataSource descriptorForRequiredKeys]"];
  v6 = [v2 descriptorWithKeyDescriptors:v4 description:v5];

  return v6;
}

+ (id)os_log
{
  if (os_log_cn_once_token_1_0 != -1)
  {
    +[CNUIUserActionListDataSource os_log];
  }

  v3 = os_log_cn_once_object_1_0;

  return v3;
}

uint64_t __38__CNUIUserActionListDataSource_os_log__block_invoke()
{
  os_log_cn_once_object_1_0 = os_log_create("com.apple.contactsui", "quick-actions.data-source");

  return MEMORY[0x1EEE66BB8]();
}

- (CNUIUserActionListDataSource)initWithDiscoveringEnvironment:(id)environment
{
  environmentCopy = environment;
  v22.receiver = self;
  v22.super_class = CNUIUserActionListDataSource;
  v5 = [(CNUIUserActionListDataSource *)&v22 init];
  v6 = v5;
  if (v5)
  {
    v5->_cacheCapacity = 100;
    *&v5->_cacheEntryRefreshAge = xmmword_1A34D9300;
    v7 = [[CNUIUserActionDisambiguationModeler alloc] initWithDiscoveringEnvironment:environmentCopy];
    modeler = v6->_modeler;
    v6->_modeler = v7;

    makeCacheWithCurrentSettings = [(CNUIUserActionListDataSource *)v6 makeCacheWithCurrentSettings];
    models = v6->_models;
    v6->_models = makeCacheWithCurrentSettings;

    schedulerProvider = [environmentCopy schedulerProvider];
    schedulerProvider = v6->_schedulerProvider;
    v6->_schedulerProvider = schedulerProvider;

    if (initWithDiscoveringEnvironment__cn_once_token_2 != -1)
    {
      [CNUIUserActionListDataSource initWithDiscoveringEnvironment:];
    }

    objc_storeStrong(&v6->_resolutionScheduler, initWithDiscoveringEnvironment__cn_once_object_2);
    v6->_tracksChanges = 1;
    atomicCache = [MEMORY[0x1E6996660] atomicCache];
    delegates = v6->_delegates;
    v6->_delegates = atomicCache;

    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    notificationCenter = [currentEnvironment notificationCenter];
    v17 = getTUCallCapabilitiesFaceTimeAvailabilityChangedNotification();
    [notificationCenter addObserver:v6 selector:sel__invalidateModelsOnExternalChange_ name:v17 object:0];

    currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
    distributedNotificationCenter = [currentEnvironment2 distributedNotificationCenter];
    [distributedNotificationCenter addObserver:v6 selector:sel__invalidateModelsOnExternalChange_ name:*MEMORY[0x1E695C3E8] object:0];

    v20 = v6;
  }

  return v6;
}

uint64_t __63__CNUIUserActionListDataSource_initWithDiscoveringEnvironment___block_invoke()
{
  initWithDiscoveringEnvironment__cn_once_object_2 = [MEMORY[0x1E6996818] operationQueueSchedulerWithMaxConcurrentOperationCount:12];

  return MEMORY[0x1EEE66BB8]();
}

- (id)makeCacheWithCurrentSettings
{
  v3 = objc_opt_class();
  cacheCapacity = self->_cacheCapacity;
  cacheEntryExpirationAge = self->_cacheEntryExpirationAge;
  immediateScheduler = [(CNSchedulerProvider *)self->_schedulerProvider immediateScheduler];
  v7 = [v3 makeCacheWithCapacity:cacheCapacity expirationAge:immediateScheduler timeProvider:cacheEntryExpirationAge];

  return v7;
}

+ (id)makeCacheWithCapacity:(unint64_t)capacity expirationAge:(double)age timeProvider:(id)provider
{
  v15[2] = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  v8 = [CNUIUserActionListModelCache alloc];
  v9 = [MEMORY[0x1E6996660] boundingStrategyWithCapacity:capacity];
  v15[0] = v9;
  v10 = [MEMORY[0x1E6996660] boundingStrategyWithTTL:2 renewalOptions:providerCopy timeProvider:age];

  v15[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  nonatomicCacheScheduler = [MEMORY[0x1E6996660] nonatomicCacheScheduler];
  v13 = [(CNCache *)v8 initWithBoundingStrategies:v11 resourceScheduler:nonatomicCacheScheduler];

  return v13;
}

- (void)dealloc
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  notificationCenter = [currentEnvironment notificationCenter];
  v5 = getTUCallCapabilitiesFaceTimeAvailabilityChangedNotification();
  [notificationCenter removeObserver:self name:v5 object:0];

  currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
  distributedNotificationCenter = [currentEnvironment2 distributedNotificationCenter];
  [distributedNotificationCenter removeObserver:self name:*MEMORY[0x1E695C3E8] object:0];

  [(CNUIUserActionListDataSource *)self _safeEmptyModels];
  v8.receiver = self;
  v8.super_class = CNUIUserActionListDataSource;
  [(CNUIUserActionListDataSource *)&v8 dealloc];
}

- (void)_invalidateModelsOnExternalChange:(id)change
{
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1A31E6000, os_log, OS_LOG_TYPE_DEFAULT, "Invalidating contact actions in reaction to external change (FaceTime availability or Settings Default Apps)", v6, 2u);
  }

  modeler = [(CNUIUserActionListDataSource *)self modeler];
  [modeler emptyDefaultAppsCaches];

  [(CNUIUserActionListDataSource *)self _safeEmptyModels];
}

- (void)_safeEmptyModels
{
  array = [MEMORY[0x1E695DF70] array];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  models = [(CNUIUserActionListDataSource *)selfCopy models];
  allObjects = [models allObjects];
  [array setArray:allObjects];

  models2 = [(CNUIUserActionListDataSource *)selfCopy models];
  [models2 removeAllObjects];

  objc_sync_exit(selfCopy);
}

- (void)setCacheEntryRefreshAge:(double)age
{
  self->_cacheEntryRefreshAge = age;
  if (self->_cacheEntryExpirationAge < age)
  {
    self->_cacheEntryExpirationAge = age;
  }

  [(CNUIUserActionListDataSource *)self makeCacheAndTransferContents];
}

- (void)setCacheEntryExpirationAge:(double)age
{
  self->_cacheEntryExpirationAge = age;
  if (self->_cacheEntryRefreshAge > age)
  {
    self->_cacheEntryRefreshAge = age;
  }

  [(CNUIUserActionListDataSource *)self makeCacheAndTransferContents];
}

- (void)makeCacheAndTransferContents
{
  v18 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  makeCacheWithCurrentSettings = [(CNUIUserActionListDataSource *)selfCopy makeCacheWithCurrentSettings];
  allKeys = [(CNCache *)selfCopy->_models allKeys];
  v5 = [allKeys _cn_take:selfCopy->_cacheCapacity];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(CNCache *)selfCopy->_models objectForKeyedSubscript:v10, v13];
        [(CNCache *)makeCacheWithCurrentSettings setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  models = selfCopy->_models;
  selfCopy->_models = makeCacheWithCurrentSettings;

  objc_sync_exit(selfCopy);
}

- (void)setContactStore:(id)store
{
  storeCopy = store;
  modeler = [(CNUIUserActionListDataSource *)self modeler];
  [modeler setContactStore:storeCopy];
}

+ (id)allActionTypes
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v4 = [featureFlags isFeatureEnabled:29];

  if (v4)
  {
    if (allActionTypes_cn_once_token_4 != -1)
    {
      +[CNUIUserActionListDataSource allActionTypes];
    }

    v5 = &allActionTypes_cn_once_object_4;
  }

  else
  {
    if (allActionTypes_cn_once_token_5 != -1)
    {
      +[CNUIUserActionListDataSource allActionTypes];
    }

    v5 = &allActionTypes_cn_once_object_5;
  }

  v6 = *v5;

  return v6;
}

void __46__CNUIUserActionListDataSource_allActionTypes__block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C150];
  v5[0] = *MEMORY[0x1E695C178];
  v5[1] = v0;
  v1 = *MEMORY[0x1E695C170];
  v5[2] = *MEMORY[0x1E695C1B8];
  v5[3] = v1;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v3 = [v2 copy];
  v4 = allActionTypes_cn_once_object_4;
  allActionTypes_cn_once_object_4 = v3;
}

void __46__CNUIUserActionListDataSource_allActionTypes__block_invoke_2()
{
  v5[5] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C150];
  v5[0] = *MEMORY[0x1E695C178];
  v5[1] = v0;
  v1 = *MEMORY[0x1E695C170];
  v5[2] = *MEMORY[0x1E695C1B8];
  v5[3] = v1;
  v5[4] = *MEMORY[0x1E695C188];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:5];
  v3 = [v2 copy];
  v4 = allActionTypes_cn_once_object_5;
  allActionTypes_cn_once_object_5 = v3;
}

+ (id)allSupportedActionTypesForBlockedContact
{
  if (allSupportedActionTypesForBlockedContact_cn_once_token_6 != -1)
  {
    +[CNUIUserActionListDataSource allSupportedActionTypesForBlockedContact];
  }

  v3 = allSupportedActionTypesForBlockedContact_cn_once_object_6;

  return v3;
}

void __72__CNUIUserActionListDataSource_allSupportedActionTypesForBlockedContact__block_invoke()
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C170];
  v4[0] = *MEMORY[0x1E695C150];
  v4[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = [v1 copy];
  v3 = allSupportedActionTypesForBlockedContact_cn_once_object_6;
  allSupportedActionTypesForBlockedContact_cn_once_object_6 = v2;
}

+ (id)allSupportedActionTypes
{
  v3 = objc_alloc_init(CNCapabilities);
  v4 = [self allSupportedActionTypesWithCapabilities:v3];

  return v4;
}

+ (id)allSupportedActionTypesWithCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  allActionTypes = [self allActionTypes];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__CNUIUserActionListDataSource_allSupportedActionTypesWithCapabilities___block_invoke;
  v9[3] = &unk_1E76E7B00;
  v10 = capabilitiesCopy;
  v6 = capabilitiesCopy;
  v7 = [allActionTypes _cn_filter:v9];

  return v7;
}

uint64_t __72__CNUIUserActionListDataSource_allSupportedActionTypesWithCapabilities___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isEqualToString:*MEMORY[0x1E695C1B8]])
  {
    v4 = [*(a1 + 32) isFaceTimeVideoSupported];
  }

  else if ([v3 isEqualToString:*MEMORY[0x1E695C168]])
  {
    v4 = [*(a1 + 32) isExpanseSupported];
  }

  else
  {
    if (![v3 isEqualToString:*MEMORY[0x1E695C188]])
    {
      v5 = 1;
      goto LABEL_8;
    }

    v4 = [*(a1 + 32) isPaySupported];
  }

  v5 = v4;
LABEL_8:

  return v5;
}

- (id)actionTypesForConsumer:(id)consumer
{
  v3 = objc_opt_class();

  return [v3 allActionTypes];
}

- (id)consumer:(id)consumer localizedDisplayNameForActionType:(id)type
{
  typeCopy = type;
  v5 = [objc_opt_class() displayNameForDisambiguationForActionType:typeCopy];

  return v5;
}

- (id)consumer:(id)consumer localizedButtonDisplayNameForActionType:(id)type
{
  typeCopy = type;
  v5 = [objc_opt_class() displayNameForButtonForActionType:typeCopy];

  return v5;
}

+ (id)displayNameForButtonForActionType:(id)type
{
  typeCopy = type;
  if ([*MEMORY[0x1E695C170] isEqualToString:typeCopy])
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"MAIL_ACTION_TYPE_BUTTON";
LABEL_9:
    v7 = @"Localized";
LABEL_10:
    v8 = [v4 localizedStringForKey:v6 value:&stru_1F162C170 table:v7];

    goto LABEL_11;
  }

  if ([*MEMORY[0x1E695C178] isEqualToString:typeCopy])
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"MESSAGE_ACTION_TYPE_BUTTON";
    goto LABEL_9;
  }

  if ([*MEMORY[0x1E695C1B8] isEqualToString:typeCopy])
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"VIDEOCALL_ACTION_TYPE_BUTTON";
    goto LABEL_9;
  }

  if ([*MEMORY[0x1E695C150] isEqualToString:typeCopy])
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"AUDIOCALL_ACTION_TYPE_BUTTON";
    goto LABEL_9;
  }

  if ([*MEMORY[0x1E695C188] isEqualToString:typeCopy])
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"PAY_ACTION_TYPE_BUTTON";
    v7 = @"Localized-SURF";
    goto LABEL_10;
  }

  if ([*MEMORY[0x1E695C160] isEqualToString:typeCopy])
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"DIRECTIONS_ACTION_TYPE_BUTTON";
    goto LABEL_9;
  }

  if ([*MEMORY[0x1E695C168] isEqualToString:typeCopy])
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"EXPANSE_ACTION_TYPE_BUTTON";
    goto LABEL_9;
  }

  v8 = &stru_1F162C170;
LABEL_11:

  return v8;
}

+ (id)displayNameForDisambiguationForActionType:(id)type
{
  typeCopy = type;
  if ([*MEMORY[0x1E695C170] isEqualToString:typeCopy])
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"MAIL_ACTION_TYPE_DISAMBIGUATION";
LABEL_9:
    v7 = @"Localized";
LABEL_10:
    v8 = [v4 localizedStringForKey:v6 value:&stru_1F162C170 table:v7];

    goto LABEL_11;
  }

  if ([*MEMORY[0x1E695C178] isEqualToString:typeCopy])
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"MESSAGE_ACTION_TYPE_DISAMBIGUATION";
    goto LABEL_9;
  }

  if ([*MEMORY[0x1E695C1B8] isEqualToString:typeCopy])
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"VIDEOCALL_ACTION_TYPE_DISAMBIGUATION";
    goto LABEL_9;
  }

  if ([*MEMORY[0x1E695C150] isEqualToString:typeCopy])
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"AUDIOCALL_ACTION_TYPE_DISAMBIGUATION";
    goto LABEL_9;
  }

  if ([*MEMORY[0x1E695C188] isEqualToString:typeCopy])
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"PAY_ACTION_TYPE_DISAMBIGUATION";
    v7 = @"Localized-SURF";
    goto LABEL_10;
  }

  if ([*MEMORY[0x1E695C160] isEqualToString:typeCopy])
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"DIRECTIONS_ACTION_TYPE_BUTTON";
    goto LABEL_9;
  }

  if ([*MEMORY[0x1E695C168] isEqualToString:typeCopy])
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = v4;
    v6 = @"EXPANSE_ACTION_TYPE_BUTTON";
    goto LABEL_9;
  }

  v8 = &stru_1F162C170;
LABEL_11:

  return v8;
}

- (id)consumer:(id)consumer currentActionModelForContact:(id)contact actionType:(id)type
{
  consumerCopy = consumer;
  contactCopy = contact;
  typeCopy = type;
  if ([objc_opt_class() isSupportedActionType:typeCopy])
  {
    v11 = [CNUIUserActionCacheKeyGenerator keyForContact:contactCopy actionType:typeCopy];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    models = [(CNUIUserActionListDataSource *)selfCopy models];
    v14 = [models objectForKeyedSubscript:v11];
    currentValue = [v14 currentValue];

    objc_sync_exit(selfCopy);
  }

  else
  {
    currentValue = 0;
  }

  return currentValue;
}

- (id)consumer:(id)consumer actionModelsForContact:(id)contact actionType:(id)type handler:(id)handler
{
  handlerCopy = handler;
  v10 = [(CNUIUserActionListDataSource *)self modelsForContact:contact actionType:type];
  v11 = [MEMORY[0x1E69967A0] observerWithResultBlock:handlerCopy];

  v12 = [v10 subscribe:v11];

  return v12;
}

- (id)modelsForContact:(id)contact actionType:(id)type
{
  v45 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  typeCopy = type;
  if ([objc_opt_class() isSupportedActionType:typeCopy])
  {
    v8 = [CNUIUserActionCacheKeyGenerator keyForContact:contactCopy actionType:typeCopy];
    v9 = (*(*MEMORY[0x1E6996570] + 16))();
    os_log = [objc_opt_class() os_log];
    v11 = os_log;
    if (v9)
    {
      if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
      {
        [CNUIUserActionListDataSource modelsForContact:contactCopy actionType:?];
      }

      os_log2 = [objc_opt_class() os_log];
      if (os_log_type_enabled(os_log2, OS_LOG_TYPE_DEBUG))
      {
        [CNUIUserActionListDataSource modelsForContact:actionType:];
      }

      emptyObservable = objc_alloc_init(MEMORY[0x1E6996628]);
      *&buf = 0;
      *(&buf + 1) = &buf;
      v43 = 0x2020000000;
      v44 = 0;
      selfCopy = self;
      objc_sync_enter(selfCopy);
      models = [(CNUIUserActionListDataSource *)selfCopy models];
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __60__CNUIUserActionListDataSource_modelsForContact_actionType___block_invoke;
      v36 = &unk_1E76E8D20;
      v37 = selfCopy;
      v38 = v8;
      v16 = contactCopy;
      v39 = v16;
      p_buf = &buf;
      v17 = [models objectForKey:v38 onCacheMiss:&v33];

      [v17 addDelegate:{emptyObservable, v33, v34, v35, v36, v37}];
      objc_sync_exit(selfCopy);

      if (*(*(&buf + 1) + 24) == 1)
      {
        os_log3 = [objc_opt_class() os_log];
        if (os_log_type_enabled(os_log3, OS_LOG_TYPE_DEBUG))
        {
          [CNUIUserActionListDataSource modelsForContact:actionType:];
        }

        [(CNUIUserActionListDataSource *)selfCopy performFirstResolutionForEntry:v17 contact:v16 actionType:typeCopy];
      }

      else
      {
        schedulerProvider = [(CNUIUserActionListDataSource *)selfCopy schedulerProvider];
        immediateScheduler = [schedulerProvider immediateScheduler];
        [immediateScheduler timestamp];
        v25 = v24;
        [v17 timestampOfCurrentValue];
        v27 = v26;

        os_log4 = [objc_opt_class() os_log];
        v29 = v25 - v27;
        if (os_log_type_enabled(os_log4, OS_LOG_TYPE_DEBUG))
        {
          v30 = [MEMORY[0x1E6996858] stringForTimeInterval:v29];
          [(CNUIUserActionListDataSource *)v30 modelsForContact:v41 actionType:os_log4];
        }

        if (selfCopy->_tracksChanges && v29 > selfCopy->_cacheEntryRefreshAge)
        {
          os_log5 = [objc_opt_class() os_log];
          if (os_log_type_enabled(os_log5, OS_LOG_TYPE_DEBUG))
          {
            [CNUIUserActionListDataSource modelsForContact:actionType:];
          }

          [(CNUIUserActionListDataSource *)selfCopy refreshEntry:v17 contact:v16 actionType:typeCopy];
        }
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      if (os_log_type_enabled(os_log, OS_LOG_TYPE_INFO))
      {
        shortDebugDescription = [contactCopy shortDebugDescription];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = shortDebugDescription;
        _os_log_impl(&dword_1A31E6000, v11, OS_LOG_TYPE_INFO, "Nil or empty cache key for contact: %@", &buf, 0xCu);
      }

      v20 = MEMORY[0x1E6996798];
      v21 = +[CNUIUserActionListModel emptyModel];
      emptyObservable = [v20 observableWithResult:v21];
    }
  }

  else
  {
    emptyObservable = [MEMORY[0x1E6996798] emptyObservable];
  }

  return emptyObservable;
}

id __60__CNUIUserActionListDataSource_modelsForContact_actionType___block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __60__CNUIUserActionListDataSource_modelsForContact_actionType___block_invoke_cold_1(a1);
  }

  *(*(*(a1 + 56) + 8) + 24) = 1;
  v3 = objc_alloc(MEMORY[0x1E6996620]);
  v4 = [*(a1 + 32) schedulerProvider];
  v5 = [v3 initWithSchedulerProvider:v4];

  return v5;
}

- (void)performFirstResolutionForEntry:(id)entry contact:(id)contact actionType:(id)type
{
  v29 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  contactCopy = contact;
  typeCopy = type;
  identifier = [contactCopy identifier];
  delegates = [(CNUIUserActionListDataSource *)self delegates];
  v13 = [delegates objectForKeyedSubscript:identifier];

  if (v13)
  {
    delegates2 = [(CNUIUserActionListDataSource *)self delegates];
    v15 = [delegates2 objectForKeyedSubscript:identifier];
    allObjects = [v15 allObjects];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __82__CNUIUserActionListDataSource_performFirstResolutionForEntry_contact_actionType___block_invoke;
    v20[3] = &unk_1E76E8D48;
    v20[4] = self;
    v21 = typeCopy;
    v22 = identifier;
    [allObjects _cn_each:v20];
  }

  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_INFO))
  {
    shortDebugDescription = [contactCopy shortDebugDescription];
    *buf = 138543874;
    v24 = typeCopy;
    v25 = 2112;
    v26 = entryCopy;
    v27 = 2112;
    v28 = shortDebugDescription;
    _os_log_impl(&dword_1A31E6000, os_log, OS_LOG_TYPE_INFO, "Will perform initial resolution of %{public}@ actions for %@ (%@)", buf, 0x20u);
  }

  null = [MEMORY[0x1E695DFB0] null];
  [(CNUIUserActionListDataSource *)self resolveCacheEntry:entryCopy contact:contactCopy actionType:typeCopy defaultActionItem:null qualityOfService:4];
}

- (void)refreshEntry:(id)entry contact:(id)contact actionType:(id)type
{
  v20 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  contactCopy = contact;
  typeCopy = type;
  os_log = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log, OS_LOG_TYPE_INFO))
  {
    shortDebugDescription = [contactCopy shortDebugDescription];
    v14 = 138543874;
    v15 = typeCopy;
    v16 = 2112;
    v17 = entryCopy;
    v18 = 2112;
    v19 = shortDebugDescription;
    _os_log_impl(&dword_1A31E6000, os_log, OS_LOG_TYPE_INFO, "Will refresh %{public}@ actions for %@ (%@)", &v14, 0x20u);
  }

  null = [MEMORY[0x1E695DFB0] null];
  [(CNUIUserActionListDataSource *)self resolveCacheEntry:entryCopy contact:contactCopy actionType:typeCopy defaultActionItem:null qualityOfService:0];
}

- (id)thirdPartyTargetsForActionTypes:(id)types
{
  typesCopy = types;
  modeler = [(CNUIUserActionListDataSource *)self modeler];
  v6 = [modeler thirdPartyTargetsForActionTypes:typesCopy];

  return v6;
}

- (id)thirdPartyActionsForContactProperty:(id)property
{
  propertyCopy = property;
  modeler = [(CNUIUserActionListDataSource *)self modeler];
  v6 = [modeler thirdPartyActionsForContactProperty:propertyCopy];

  return v6;
}

- (id)thirdPartyActionsForContact:(id)contact propertyKey:(id)key identifier:(id)identifier
{
  v6 = [MEMORY[0x1E695CE08] contactPropertyWithContactNoCopy:contact propertyKey:key identifier:identifier];
  v7 = [(CNUIUserActionListDataSource *)self thirdPartyActionsForContactProperty:v6];

  return v7;
}

+ (BOOL)isSupportedActionType:(id)type
{
  typeCopy = type;
  if ([*MEMORY[0x1E695C170] isEqualToString:typeCopy] & 1) != 0 || (objc_msgSend(*MEMORY[0x1E695C178], "isEqualToString:", typeCopy) & 1) != 0 || (objc_msgSend(*MEMORY[0x1E695C150], "isEqualToString:", typeCopy) & 1) != 0 || (objc_msgSend(*MEMORY[0x1E695C1B8], "isEqualToString:", typeCopy) & 1) != 0 || (objc_msgSend(*MEMORY[0x1E695C190], "isEqualToString:", typeCopy) & 1) != 0 || (objc_msgSend(*MEMORY[0x1E695C1A8], "isEqualToString:", typeCopy) & 1) != 0 || (objc_msgSend(*MEMORY[0x1E695C188], "isEqualToString:", typeCopy) & 1) != 0 || (objc_msgSend(*MEMORY[0x1E695C160], "isEqualToString:", typeCopy))
  {
    v4 = 1;
  }

  else
  {
    v4 = [*MEMORY[0x1E695C168] isEqualToString:typeCopy];
  }

  return v4;
}

- (id)actionTypesToUpdateForSelectedItem:(id)item
{
  v9[3] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if ([itemCopy shouldCurateIfPerformed])
  {
    v4 = *MEMORY[0x1E695C150];
    v9[0] = *MEMORY[0x1E695C178];
    v9[1] = v4;
    v9[2] = *MEMORY[0x1E695C1B8];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:3];
  }

  else
  {
    type = [itemCopy type];
    v8 = type;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  }

  return v5;
}

- (void)consumer:(id)consumer didSelectItem:(id)item forContact:(id)contact actionType:(id)type
{
  v42 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  contactCopy = contact;
  typeCopy = type;
  if ([objc_opt_class() isSupportedActionType:typeCopy])
  {
    v25 = typeCopy;
    v12 = [(CNUIUserActionListDataSource *)self actionTypesToUpdateForSelectedItem:itemCopy];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v28 = [v12 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v28)
    {
      v27 = *v30;
      selfCopy = self;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v30 != v27)
          {
            objc_enumerationMutation(v12);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v15 = [CNUIUserActionCacheKeyGenerator keyForContact:contactCopy actionType:v14];
          models = [(CNUIUserActionListDataSource *)self models];
          v17 = [models objectForKey:v15];

          if (v17)
          {
            currentValue = [v17 currentValue];
            defaultAction = [currentValue defaultAction];

            if (defaultAction != itemCopy)
            {
              os_log = [objc_opt_class() os_log];
              if (os_log_type_enabled(os_log, OS_LOG_TYPE_INFO))
              {
                [contactCopy shortDebugDescription];
                v21 = contactCopy;
                v22 = v12;
                v24 = v23 = itemCopy;
                *buf = 138544130;
                v34 = v14;
                v35 = 2112;
                v36 = v17;
                v37 = 2112;
                v38 = v24;
                v39 = 2112;
                v40 = v23;
                _os_log_impl(&dword_1A31E6000, os_log, OS_LOG_TYPE_INFO, "Will refresh cache of %{public}@ actions for %@ (%@) in response to user selecting %@ action", buf, 0x2Au);

                itemCopy = v23;
                v12 = v22;
                contactCopy = v21;
                self = selfCopy;
              }

              [(CNUIUserActionListDataSource *)self resolveCacheEntry:v17 contact:contactCopy actionType:v14 defaultActionItem:itemCopy qualityOfService:4];
            }
          }
        }

        v28 = [v12 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v28);
    }

    typeCopy = v25;
  }
}

- (void)resolveCacheEntry:(id)entry contact:(id)contact actionType:(id)type defaultActionItem:(id)item qualityOfService:(unint64_t)service
{
  entryCopy = entry;
  contactCopy = contact;
  typeCopy = type;
  itemCopy = item;
  v16 = self->_resolutionScheduler;
  [(CNScheduler *)v16 timestamp];
  v18 = v17;
  identifier = [contactCopy identifier];
  resolutionScheduler = self->_resolutionScheduler;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __104__CNUIUserActionListDataSource_resolveCacheEntry_contact_actionType_defaultActionItem_qualityOfService___block_invoke;
  v27[3] = &unk_1E76E8D98;
  v35 = v18;
  v28 = v16;
  selfCopy = self;
  v30 = typeCopy;
  v31 = entryCopy;
  v32 = contactCopy;
  v33 = itemCopy;
  v36 = service == 4;
  v34 = identifier;
  v21 = identifier;
  v22 = itemCopy;
  v23 = contactCopy;
  v24 = entryCopy;
  v25 = typeCopy;
  v26 = v16;
  [(CNScheduler *)resolutionScheduler performBlock:v27 qualityOfService:service];
}

void __104__CNUIUserActionListDataSource_resolveCacheEntry_contact_actionType_defaultActionItem_qualityOfService___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timestamp];
  v3 = v2;
  v4 = [MEMORY[0x1E6996858] stringForTimeInterval:v2 - *(a1 + 88)];
  v5 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = [*(a1 + 64) shortDebugDescription];
    *buf = 138544130;
    v33 = v6;
    v34 = 2112;
    v35 = v7;
    v36 = 2112;
    v37 = v4;
    v38 = 2112;
    v39 = v8;
    _os_log_impl(&dword_1A31E6000, v5, OS_LOG_TYPE_INFO, "Performing resolution of %{public}@ actions for %@ (scheduling latency %@) (%@)", buf, 0x2Au);
  }

  v9 = [*(a1 + 40) makeModelObservableForContact:*(a1 + 64) actionType:*(a1 + 48) defaultActionItem:*(a1 + 72)];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __104__CNUIUserActionListDataSource_resolveCacheEntry_contact_actionType_defaultActionItem_qualityOfService___block_invoke_114;
  v29[3] = &unk_1E76E8D70;
  v25 = *(a1 + 40);
  v10 = *(&v25 + 1);
  v11 = *(a1 + 64);
  v12 = *(a1 + 56);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  v30 = v25;
  v31 = v13;
  [v9 enumerateObjectsUsingBlock:v29];
  [*(a1 + 32) timestamp];
  v15 = [MEMORY[0x1E6996858] stringForTimeInterval:v14 - v3];
  v16 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = *(a1 + 48);
    v18 = [*(a1 + 64) shortDebugDescription];
    *buf = 138543874;
    v33 = v17;
    v34 = 2112;
    v35 = v18;
    v36 = 2114;
    v37 = v15;
    _os_log_impl(&dword_1A31E6000, v16, OS_LOG_TYPE_INFO, "%{public}@ actions discovered for %@ in %{public}@", buf, 0x20u);
  }

  if (*(a1 + 96) == 1)
  {
    v19 = [*(a1 + 40) delegates];
    v20 = [v19 objectForKeyedSubscript:*(a1 + 80)];

    if (v20)
    {
      v21 = [*(a1 + 40) delegates];
      v22 = [v21 objectForKeyedSubscript:*(a1 + 80)];
      v23 = [v22 allObjects];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __104__CNUIUserActionListDataSource_resolveCacheEntry_contact_actionType_defaultActionItem_qualityOfService___block_invoke_116;
      v26[3] = &unk_1E76E8D48;
      v24 = *(a1 + 48);
      v26[4] = *(a1 + 40);
      v27 = v24;
      v28 = *(a1 + 80);
      [v23 _cn_each:v26];
    }
  }
}

void __104__CNUIUserActionListDataSource_resolveCacheEntry_contact_actionType_defaultActionItem_qualityOfService___block_invoke_114(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) shortDebugDescription];
    v7 = 138543874;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1A31E6000, v4, OS_LOG_TYPE_INFO, "Found %{public}@ actions for %@: %@", &v7, 0x20u);
  }

  [*(a1 + 56) updateValue:v3];
}

- (id)makeModelObservableForContact:(id)contact actionType:(id)type defaultActionItem:(id)item
{
  contactCopy = contact;
  typeCopy = type;
  itemCopy = item;
  if ((*(*MEMORY[0x1E6996550] + 16))())
  {
    modeler = [(CNUIUserActionListDataSource *)self modeler];
    v12 = [modeler modelsWithContact:contactCopy actionType:typeCopy defaultActionItem:itemCopy];

    v13 = MEMORY[0x1E6996798];
    v14 = +[CNUIUserActionListModel emptyModel];
    v15 = [v13 observableWithResult:v14];
    v16 = [v12 onEmpty:v15];
  }

  else
  {
    v17 = MEMORY[0x1E6996798];
    v14 = +[CNUIUserActionListModel emptyModel];
    v16 = [v17 observableWithResult:v14];
  }

  schedulerProvider = [(CNUIUserActionListDataSource *)self schedulerProvider];
  backgroundScheduler = [schedulerProvider backgroundScheduler];
  v20 = [v16 subscribeOn:backgroundScheduler];

  return v20;
}

- (void)registerDelegate:(id)delegate withContactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  delegates = [(CNUIUserActionListDataSource *)self delegates];
  v9 = [delegates objectForKey:identifierCopy onCacheMiss:&__block_literal_global_119];

  [v9 addObject:delegateCopy];
}

id __71__CNUIUserActionListDataSource_registerDelegate_withContactIdentifier___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6996890]);

  return v0;
}

- (void)unregisterDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegates = [(CNUIUserActionListDataSource *)self delegates];
  allObjects = [delegates allObjects];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__CNUIUserActionListDataSource_unregisterDelegate___block_invoke;
  v8[3] = &unk_1E76E8DE0;
  v9 = delegateCopy;
  v7 = delegateCopy;
  [allObjects _cn_each:v8];
}

- (void)modelsForContact:(void *)a1 actionType:.cold.1(void *a1)
{
  v1 = [a1 shortDebugDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0(&dword_1A31E6000, v2, v3, "New Request for %@ (data source: %@)", v4, v5, v6, v7, v8);
}

- (void)modelsForContact:(os_log_t)log actionType:.cold.3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1A31E6000, log, OS_LOG_TYPE_DEBUG, "Age of cache entry: %@", buf, 0xCu);
}

void __60__CNUIUserActionListDataSource_modelsForContact_actionType___block_invoke_cold_1(uint64_t a1)
{
  v7 = [*(a1 + 48) shortDebugDescription];
  OUTLINED_FUNCTION_2_0(&dword_1A31E6000, v1, v2, "Cache miss for %@ (%@)", v3, v4, v5, v6, 2u);
}

@end