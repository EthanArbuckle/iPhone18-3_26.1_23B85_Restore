@interface HFHomePodAlarmItemProvider
- (HFHomePodAlarmItemProvider)initWithMediaProfileContainer:(id)container;
- (id)items;
- (id)reloadItems;
@end

@implementation HFHomePodAlarmItemProvider

- (HFHomePodAlarmItemProvider)initWithMediaProfileContainer:(id)container
{
  containerCopy = container;
  v16.receiver = self;
  v16.super_class = HFHomePodAlarmItemProvider;
  v6 = [(HFItemProvider *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaProfileContainer, container);
    hf_settingsAdapterManager = [containerCopy hf_settingsAdapterManager];
    v9 = [hf_settingsAdapterManager adapterForIdentifier:@"MobileTimerAdapter"];
    mobileTimerAdapter = v7->_mobileTimerAdapter;
    v7->_mobileTimerAdapter = v9;

    v11 = objc_opt_new();
    alarmItems = v7->_alarmItems;
    v7->_alarmItems = v11;

    v13 = objc_opt_new();
    alarmIDToItemMap = v7->_alarmIDToItemMap;
    v7->_alarmIDToItemMap = v13;
  }

  return v7;
}

- (id)items
{
  alarmItems = [(HFHomePodAlarmItemProvider *)self alarmItems];
  v3 = [alarmItems copy];

  return v3;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  if (_os_feature_enabled_impl())
  {
    v3 = objc_alloc_init(MEMORY[0x277D2C900]);
    mobileTimerAdapter = [(HFHomePodAlarmItemProvider *)self mobileTimerAdapter];
    allAlarmsFuture = [mobileTimerAdapter allAlarmsFuture];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __41__HFHomePodAlarmItemProvider_reloadItems__block_invoke;
    v21[3] = &unk_277DF9D18;
    objc_copyWeak(&v23, &location);
    v6 = v3;
    v22 = v6;
    v7 = [allAlarmsFuture addSuccessBlock:v21];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __41__HFHomePodAlarmItemProvider_reloadItems__block_invoke_7;
    v19[3] = &unk_277DF2D08;
    v8 = v6;
    v20 = v8;
    v9 = [allAlarmsFuture addFailureBlock:v19];
    v10 = v20;
    v11 = v8;

    objc_destroyWeak(&v23);
  }

  else
  {
    allAlarmsFuture = [(HFHomePodAlarmItemProvider *)self mobileTimerAdapter];
    allAlarms = [allAlarmsFuture allAlarms];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __41__HFHomePodAlarmItemProvider_reloadItems__block_invoke_10;
    v17[3] = &unk_277DFFA20;
    objc_copyWeak(&v18, &location);
    v13 = [(HFItemProvider *)self reloadItemsWithObjects:allAlarms keyAdaptor:&__block_literal_global_15_9 itemAdaptor:&__block_literal_global_17_9 filter:0 itemMap:v17];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __41__HFHomePodAlarmItemProvider_reloadItems__block_invoke_11;
    v15[3] = &unk_277DF30B8;
    objc_copyWeak(&v16, &location);
    v11 = [v13 flatMap:v15];
    objc_destroyWeak(&v16);

    objc_destroyWeak(&v18);
  }

  objc_destroyWeak(&location);

  return v11;
}

void __41__HFHomePodAlarmItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __41__HFHomePodAlarmItemProvider_reloadItems__block_invoke_4;
  v12[3] = &unk_277DFFA20;
  objc_copyWeak(&v13, (a1 + 40));
  v5 = [WeakRetained reloadItemsWithObjects:v3 keyAdaptor:&__block_literal_global_188 itemAdaptor:&__block_literal_global_7_10 filter:0 itemMap:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __41__HFHomePodAlarmItemProvider_reloadItems__block_invoke_5;
  v10[3] = &unk_277DF30B8;
  objc_copyWeak(&v11, (a1 + 40));
  v6 = [v5 flatMap:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__HFHomePodAlarmItemProvider_reloadItems__block_invoke_6;
  v8[3] = &unk_277DF70B0;
  v9 = *(a1 + 32);
  v7 = [v6 addCompletionBlock:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
}

id __41__HFHomePodAlarmItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 alarm];
  v3 = [v2 alarmID];

  return v3;
}

HFHomePodAlarmItem *__41__HFHomePodAlarmItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained alarmIDToItemMap];
  v6 = [v3 alarmID];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [WeakRetained alarmIDToItemMap];
    v9 = [v3 alarmID];
    v10 = [v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v11 = [HFHomePodAlarmItem alloc];
    v12 = [WeakRetained mediaProfileContainer];
    v10 = [(HFHomePodAlarmItem *)v11 initWithMediaProfileContainer:v12 alarm:v3];

    v8 = [WeakRetained alarmIDToItemMap];
    v9 = [v3 alarmID];
    [v8 setObject:v10 forKeyedSubscript:v9];
  }

  return v10;
}

id __41__HFHomePodAlarmItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained alarmItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained alarmItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

uint64_t __41__HFHomePodAlarmItemProvider_reloadItems__block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 finishWithError:?];
  }

  else
  {
    return [v3 finishWithResult:a2];
  }
}

id __41__HFHomePodAlarmItemProvider_reloadItems__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = [a2 alarm];
  v3 = [v2 alarmID];

  return v3;
}

HFHomePodAlarmItem *__41__HFHomePodAlarmItemProvider_reloadItems__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained alarmIDToItemMap];
  v6 = [v3 alarmID];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [WeakRetained alarmIDToItemMap];
    v9 = [v3 alarmID];
    v10 = [v8 objectForKeyedSubscript:v9];
  }

  else
  {
    v11 = [HFHomePodAlarmItem alloc];
    v12 = [WeakRetained mediaProfileContainer];
    v10 = [(HFHomePodAlarmItem *)v11 initWithMediaProfileContainer:v12 alarm:v3];

    v8 = [WeakRetained alarmIDToItemMap];
    v9 = [v3 alarmID];
    [v8 setObject:v10 forKeyedSubscript:v9];
  }

  return v10;
}

id __41__HFHomePodAlarmItemProvider_reloadItems__block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained alarmItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained alarmItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

@end