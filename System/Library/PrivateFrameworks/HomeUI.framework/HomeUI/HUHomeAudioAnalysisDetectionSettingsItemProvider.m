@interface HUHomeAudioAnalysisDetectionSettingsItemProvider
- (HUHomeAudioAnalysisDetectionSettingsItemProvider)init;
- (HUHomeAudioAnalysisDetectionSettingsItemProvider)initWithHome:(id)a3;
- (id)reloadItems;
@end

@implementation HUHomeAudioAnalysisDetectionSettingsItemProvider

- (HUHomeAudioAnalysisDetectionSettingsItemProvider)initWithHome:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HUHomeAudioAnalysisDetectionSettingsItemProvider;
  v6 = [(HFItemProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_home, a3);
    v8 = objc_opt_new();
    items = v7->_items;
    v7->_items = v8;
  }

  return v7;
}

- (HUHomeAudioAnalysisDetectionSettingsItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUHomeAudioAnalysisDetectionSettingsItemProvider.m" lineNumber:72 description:{@"%s is unavailable; use %@ instead", "-[HUHomeAudioAnalysisDetectionSettingsItemProvider init]", v5}];

  return 0;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HUHomeAudioAnalysisDetectionSettingsItemProvider_reloadItems__block_invoke_3;
  v8[3] = &unk_277DB93F0;
  objc_copyWeak(&v9, &location);
  v3 = [(HFItemProvider *)self reloadItemsWithObjects:&unk_282492D08 keyAdaptor:&__block_literal_global_290 itemAdaptor:&__block_literal_global_39_3 filter:0 itemMap:v8];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__HUHomeAudioAnalysisDetectionSettingsItemProvider_reloadItems__block_invoke_5;
  v6[3] = &unk_277DB7FA8;
  objc_copyWeak(&v7, &location);
  v4 = [v3 flatMap:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v4;
}

uint64_t __63__HUHomeAudioAnalysisDetectionSettingsItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 audioDetectionType];

  return [v2 numberWithUnsignedInteger:v3];
}

HUHomeAudioAnalysisDetectionSettingsItem *__63__HUHomeAudioAnalysisDetectionSettingsItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained items];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__HUHomeAudioAnalysisDetectionSettingsItemProvider_reloadItems__block_invoke_4;
  v12[3] = &unk_277DB85D8;
  v6 = v3;
  v13 = v6;
  v7 = [v5 na_firstObjectPassingTest:v12];

  if (!v7)
  {
    v8 = [HUHomeAudioAnalysisDetectionSettingsItem alloc];
    v9 = [v6 unsignedIntegerValue];
    v10 = [WeakRetained home];
    v7 = [(HUHomeAudioAnalysisDetectionSettingsItem *)v8 initWithDetectionType:v9 home:v10];
  }

  return v7;
}

BOOL __63__HUHomeAudioAnalysisDetectionSettingsItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 audioDetectionType];
    v8 = v7 == [*(a1 + 32) unsignedIntegerValue];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __63__HUHomeAudioAnalysisDetectionSettingsItemProvider_reloadItems__block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained items];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained items];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

@end