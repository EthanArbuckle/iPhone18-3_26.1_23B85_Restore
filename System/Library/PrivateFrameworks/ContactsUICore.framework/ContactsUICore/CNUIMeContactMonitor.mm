@interface CNUIMeContactMonitor
+ (id)log;
+ (id)makeMeContactMonitor;
+ (id)makeQueue;
+ (id)makeUnifiedMeContactMonitor;
+ (id)meContactMonitor;
+ (id)unifiedMeContactMonitor;
- (BOOL)isMeContact:(id)contact;
- (CNUIMeContactMonitor)init;
- (CNUIMeContactMonitor)initWithComparisonStrategy:(id)strategy;
- (CNUIMeContactMonitor)initWithComparisonStrategy:(id)strategy contactStore:(id)store;
- (CNUIMeContactMonitor)initWithComparisonStrategy:(id)strategy contactStore:(id)store notificationCenter:(id)center schedulerProvider:(id)provider;
- (CNUIMeContactMonitor)initWithContactStore:(id)store;
- (NSArray)meContactIdentifiers;
- (void)dealloc;
- (void)meChanged:(id)changed;
- (void)startMonitoring;
@end

@implementation CNUIMeContactMonitor

+ (id)log
{
  if (log_cn_once_token_1_0 != -1)
  {
    +[CNUIMeContactMonitor log];
  }

  v3 = log_cn_once_object_1_0;

  return v3;
}

uint64_t __27__CNUIMeContactMonitor_log__block_invoke()
{
  log_cn_once_object_1_0 = os_log_create("com.apple.contacts.ui", "me-contact-monitor");

  return MEMORY[0x1EEE66BB8]();
}

+ (id)meContactMonitor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__CNUIMeContactMonitor_meContactMonitor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (meContactMonitor_cn_once_token_2 != -1)
  {
    dispatch_once(&meContactMonitor_cn_once_token_2, block);
  }

  v2 = meContactMonitor_cn_once_object_2;

  return v2;
}

uint64_t __40__CNUIMeContactMonitor_meContactMonitor__block_invoke(uint64_t a1)
{
  meContactMonitor_cn_once_object_2 = [*(a1 + 32) makeMeContactMonitor];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)makeMeContactMonitor
{
  v3 = objc_alloc_init(CNUIMeContactComparisonStrategyIdentifier);
  v4 = [[self alloc] initWithComparisonStrategy:v3];
  [v4 startMonitoring];

  return v4;
}

+ (id)unifiedMeContactMonitor
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__CNUIMeContactMonitor_unifiedMeContactMonitor__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (unifiedMeContactMonitor_cn_once_token_3 != -1)
  {
    dispatch_once(&unifiedMeContactMonitor_cn_once_token_3, block);
  }

  v2 = unifiedMeContactMonitor_cn_once_object_3;

  return v2;
}

uint64_t __47__CNUIMeContactMonitor_unifiedMeContactMonitor__block_invoke(uint64_t a1)
{
  unifiedMeContactMonitor_cn_once_object_3 = [*(a1 + 32) makeUnifiedMeContactMonitor];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)makeUnifiedMeContactMonitor
{
  v3 = objc_alloc_init(CNUIMeContactComparisonStrategyUnified);
  v4 = objc_alloc_init(MEMORY[0x1E695CE28]);
  [v4 setIncludeLocalContacts:1];
  [v4 setIncludeDonatedContacts:1];
  v5 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v4];
  v6 = [[self alloc] initWithComparisonStrategy:v3 contactStore:v5];
  [v6 startMonitoring];

  return v6;
}

- (CNUIMeContactMonitor)init
{
  v3 = objc_alloc_init(CNUIMeContactComparisonStrategyIdentifier);
  v4 = [(CNUIMeContactMonitor *)self initWithComparisonStrategy:v3];

  return v4;
}

- (CNUIMeContactMonitor)initWithContactStore:(id)store
{
  storeCopy = store;
  v5 = objc_alloc_init(CNUIMeContactComparisonStrategyIdentifier);
  v6 = [(CNUIMeContactMonitor *)self initWithComparisonStrategy:v5 contactStore:storeCopy];

  return v6;
}

- (CNUIMeContactMonitor)initWithComparisonStrategy:(id)strategy
{
  v4 = MEMORY[0x1E695CE28];
  strategyCopy = strategy;
  v6 = objc_alloc_init(v4);
  [v6 setIncludeLocalContacts:1];
  v7 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v6];
  v8 = [(CNUIMeContactMonitor *)self initWithComparisonStrategy:strategyCopy contactStore:v7];

  return v8;
}

- (CNUIMeContactMonitor)initWithComparisonStrategy:(id)strategy contactStore:(id)store
{
  v6 = MEMORY[0x1E696AD88];
  storeCopy = store;
  strategyCopy = strategy;
  defaultCenter = [v6 defaultCenter];
  defaultProvider = [MEMORY[0x1E6996820] defaultProvider];
  v11 = [(CNUIMeContactMonitor *)self initWithComparisonStrategy:strategyCopy contactStore:storeCopy notificationCenter:defaultCenter schedulerProvider:defaultProvider];

  return v11;
}

- (CNUIMeContactMonitor)initWithComparisonStrategy:(id)strategy contactStore:(id)store notificationCenter:(id)center schedulerProvider:(id)provider
{
  strategyCopy = strategy;
  storeCopy = store;
  centerCopy = center;
  providerCopy = provider;
  if (strategyCopy)
  {
    goto LABEL_5;
  }

  if (CNGuardOSLog_cn_once_token_0_5 != -1)
  {
    [CNUIMeContactMonitor initWithComparisonStrategy:contactStore:notificationCenter:schedulerProvider:];
  }

  v15 = CNGuardOSLog_cn_once_object_0_5;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_5, OS_LOG_TYPE_FAULT))
  {
    [CNUIMeContactMonitor initWithComparisonStrategy:v15 contactStore:? notificationCenter:? schedulerProvider:?];
    if (storeCopy)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_5:
    if (storeCopy)
    {
      goto LABEL_10;
    }
  }

  if (CNGuardOSLog_cn_once_token_0_5 != -1)
  {
    [CNUIMeContactMonitor initWithComparisonStrategy:contactStore:notificationCenter:schedulerProvider:];
  }

  v16 = CNGuardOSLog_cn_once_object_0_5;
  if (os_log_type_enabled(CNGuardOSLog_cn_once_object_0_5, OS_LOG_TYPE_FAULT))
  {
    [CNUIMeContactMonitor initWithComparisonStrategy:v16 contactStore:? notificationCenter:? schedulerProvider:?];
  }

LABEL_10:
  v27.receiver = self;
  v27.super_class = CNUIMeContactMonitor;
  v17 = [(CNUIMeContactMonitor *)&v27 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_strategy, strategy);
    objc_storeStrong(&v18->_contactStore, store);
    objc_storeStrong(&v18->_notificationCenter, center);
    makeQueue = [objc_opt_class() makeQueue];
    queue = v18->_queue;
    v18->_queue = makeQueue;

    v21 = [MEMORY[0x1E6996798] observableOnNotificationCenter:centerCopy withName:*MEMORY[0x1E695C3E0] object:0];
    v22 = [MEMORY[0x1E69967A0] observerWithWeakTarget:v18 resultSelector:sel_meChanged_];
    v23 = [v21 subscribe:v22];
    meNotificationToken = v18->_meNotificationToken;
    v18->_meNotificationToken = v23;

    v25 = v18;
  }

  return v18;
}

- (void)dealloc
{
  [(CNCancelable *)self->_meNotificationToken cancel];
  v3.receiver = self;
  v3.super_class = CNUIMeContactMonitor;
  [(CNUIMeContactMonitor *)&v3 dealloc];
}

+ (id)makeQueue
{
  v2 = dispatch_get_global_queue(17, 0);
  v3 = dispatch_queue_create_with_target_V2("com.apple.contacts.me-contact-monitor", MEMORY[0x1E69E96A8], v2);

  return v3;
}

- (void)startMonitoring
{
  v3 = +[CNUIMeContactMonitor log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A31E6000, v3, OS_LOG_TYPE_DEFAULT, "Starting to monitor for changes to the me contact", v4, 2u);
  }

  [(CNUIMeContactMonitor *)self meChanged:0];
}

- (BOOL)isMeContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    v5 = +[CNUIMeContactMonitor log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(CNUIMeContactMonitor *)contactCopy isMeContact:v5];
    }

    v13 = 0;
    v14[0] = &v13;
    v14[1] = 0x2020000000;
    v15 = 0;
    queue = [(CNUIMeContactMonitor *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__CNUIMeContactMonitor_isMeContact___block_invoke;
    block[3] = &unk_1E76E8910;
    v12 = &v13;
    block[4] = self;
    v11 = contactCopy;
    dispatch_sync(queue, block);

    v7 = +[CNUIMeContactMonitor log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [(CNUIMeContactMonitor *)v14 isMeContact:v7];
    }

    v8 = *(v14[0] + 24);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void __36__CNUIMeContactMonitor_isMeContact___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) strategy];
  *(*(*(a1 + 48) + 8) + 24) = [v2 isMeContact:*(a1 + 40)];
}

- (NSArray)meContactIdentifiers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  queue = [(CNUIMeContactMonitor *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__CNUIMeContactMonitor_meContactIdentifiers__block_invoke;
  v6[3] = &unk_1E76E8938;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __44__CNUIMeContactMonitor_meContactIdentifiers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) strategy];
  v3 = [v2 meContactIdentifiers];
  v5 = *(a1 + 40);
  v4 = a1 + 40;
  v6 = *(v5 + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = +[CNUIMeContactMonitor log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __44__CNUIMeContactMonitor_meContactIdentifiers__block_invoke_cold_1(v4, v8);
  }
}

- (void)meChanged:(id)changed
{
  queue = [(CNUIMeContactMonitor *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__CNUIMeContactMonitor_meChanged___block_invoke;
  block[3] = &unk_1E76E7D10;
  block[4] = self;
  dispatch_barrier_async(queue, block);
}

void __34__CNUIMeContactMonitor_meChanged___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) strategy];
  v3 = [*(a1 + 32) contactStore];
  [v2 meContactChangedInStore:v3];

  v4 = +[CNUIMeContactMonitor log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) strategy];
    v6 = [v5 meContactIdentifiers];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1A31E6000, v4, OS_LOG_TYPE_DEFAULT, "The me contact is now: %{public}@", &v7, 0xCu);
  }
}

- (void)isMeContact:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 identifier];
  v4 = 138543362;
  v5 = v3;
  _os_log_debug_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_DEBUG, "Q: Is %{public}@ the me contact?", &v4, 0xCu);
}

- (void)isMeContact:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 24);
  v3[0] = 67109120;
  v3[1] = v2;
  _os_log_debug_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_DEBUG, "A: %d", v3, 8u);
}

void __44__CNUIMeContactMonitor_meContactIdentifiers__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*(*a1 + 8) + 40);
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&dword_1A31E6000, a2, OS_LOG_TYPE_DEBUG, "The me contact is: %{public}@", &v3, 0xCu);
}

@end