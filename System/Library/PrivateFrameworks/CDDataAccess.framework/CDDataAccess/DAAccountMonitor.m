@interface DAAccountMonitor
+ (id)sharedMonitor;
- (DAAccountMonitor)init;
- (id)monitoredAccounts;
- (void)monitorAccount:(id)a3;
- (void)unmonitorAccount:(id)a3;
@end

@implementation DAAccountMonitor

+ (id)sharedMonitor
{
  if (sharedMonitor_onceToken != -1)
  {
    +[DAAccountMonitor sharedMonitor];
  }

  v3 = sharedMonitor___sharedInstance;

  return v3;
}

uint64_t __33__DAAccountMonitor_sharedMonitor__block_invoke()
{
  sharedMonitor___sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (DAAccountMonitor)init
{
  v7.receiver = self;
  v7.super_class = DAAccountMonitor;
  v2 = [(DAAccountMonitor *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    [(DAAccountMonitor *)v2 setAccounts:v3];

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.dataaccess.accountmonitor", v4);
    [(DAAccountMonitor *)v2 setAccountsQueue:v5];
  }

  return v2;
}

- (void)monitorAccount:(id)a3
{
  v4 = a3;
  v5 = [(DAAccountMonitor *)self accountsQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__DAAccountMonitor_monitorAccount___block_invoke;
  v7[3] = &unk_278D4C540;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __35__DAAccountMonitor_monitorAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accounts];
  [v2 addObject:*(a1 + 40)];
}

- (void)unmonitorAccount:(id)a3
{
  v4 = a3;
  v5 = [(DAAccountMonitor *)self accountsQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__DAAccountMonitor_unmonitorAccount___block_invoke;
  v7[3] = &unk_278D4C540;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __37__DAAccountMonitor_unmonitorAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) accounts];
  [v2 removeObject:*(a1 + 40)];
}

- (id)monitoredAccounts
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(DAAccountMonitor *)self accountsQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__DAAccountMonitor_monitoredAccounts__block_invoke;
  v6[3] = &unk_278D4C600;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __37__DAAccountMonitor_monitoredAccounts__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) accounts];
  v2 = [v5 allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end