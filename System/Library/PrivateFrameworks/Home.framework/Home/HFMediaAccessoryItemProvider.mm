@interface HFMediaAccessoryItemProvider
- (HFCharacteristicValueSource)valueSource;
- (HFMediaAccessoryItemProvider)init;
- (HFMediaAccessoryItemProvider)initWithHome:(id)a3;
- (HFMediaAccessoryItemProvider)initWithHome:(id)a3 includeContainedProfiles:(BOOL)a4;
- (HFMediaAccessoryItemProvider)initWithHome:(id)a3 includeMediaSystems:(BOOL)a4;
- (HFMediaAccessoryItemProvider)initWithHome:(id)a3 includeSiriEndPointProfiles:(BOOL)a4;
- (id)_siriEndpoints;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (id)items;
- (id)reloadItems;
- (void)mediaProfileContainer:(id)a3 didUpdateSettingKeypath:(id)a4 value:(id)a5;
@end

@implementation HFMediaAccessoryItemProvider

- (HFMediaAccessoryItemProvider)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFMediaAccessoryItemProvider.m" lineNumber:50 description:{@"%s is unavailable; use %@ instead", "-[HFMediaAccessoryItemProvider init]", v5}];

  return 0;
}

- (HFMediaAccessoryItemProvider)initWithHome:(id)a3 includeSiriEndPointProfiles:(BOOL)a4
{
  result = [(HFMediaAccessoryItemProvider *)self initWithHome:a3];
  if (result)
  {
    result->_includeSiriEndPointProfiles = a4;
  }

  return result;
}

- (HFMediaAccessoryItemProvider)initWithHome:(id)a3 includeContainedProfiles:(BOOL)a4
{
  result = [(HFMediaAccessoryItemProvider *)self initWithHome:a3 includeMediaSystems:0];
  if (result)
  {
    result->_includeContainedProfiles = 1;
  }

  return result;
}

- (HFMediaAccessoryItemProvider)initWithHome:(id)a3
{
  v4 = a3;
  v5 = [(HFMediaAccessoryItemProvider *)self initWithHome:v4 includeMediaSystems:(HFPreferencesBooleanValueForKey(@"EnableMediaSystems") & 0xFFFFFFFFFFFFFFFDLL) == 0];

  return v5;
}

- (HFMediaAccessoryItemProvider)initWithHome:(id)a3 includeMediaSystems:(BOOL)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = HFMediaAccessoryItemProvider;
  v8 = [(HFItemProvider *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_home, a3);
    v9->_includeMediaSystems = a4;
    v10 = objc_opt_new();
    [(HFMediaAccessoryItemProvider *)v9 setMediaAccessoryItems:v10];
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(HFMediaAccessoryItemProvider *)self home];
  v6 = [v4 initWithHome:v5];

  return v6;
}

- (HFCharacteristicValueSource)valueSource
{
  v3 = [(HFMediaAccessoryItemProvider *)self overrideValueSource];

  if (v3)
  {
    v4 = [(HFMediaAccessoryItemProvider *)self overrideValueSource];
  }

  else
  {
    v5 = [(HFMediaAccessoryItemProvider *)self home];
    v4 = [v5 hf_characteristicValueManager];
  }

  return v4;
}

- (id)reloadItems
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__HFMediaAccessoryItemProvider_reloadItems__block_invoke;
  aBlock[3] = &unk_277DF5228;
  objc_copyWeak(&v30, &location);
  v3 = _Block_copy(aBlock);
  v4 = objc_alloc(MEMORY[0x277CBEB58]);
  v5 = [(HFMediaAccessoryItemProvider *)self home];
  v6 = [v5 hf_allUniqueMediaProfileContainers];
  v7 = [v4 initWithArray:v6];

  if (![(HFMediaAccessoryItemProvider *)self includeMediaSystems])
  {
    v8 = [(HFMediaAccessoryItemProvider *)self home];
    v9 = [v8 mediaSystems];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [v7 na_filter:&__block_literal_global_106];
      v12 = [v11 mutableCopy];

      v13 = MEMORY[0x277CBEB58];
      v14 = [(HFMediaAccessoryItemProvider *)self home];
      v15 = [v14 hf_allUniqueMediaProfileContainers];
      v16 = [v13 setWithArray:v15];

      [v16 minusSet:v12];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __43__HFMediaAccessoryItemProvider_reloadItems__block_invoke_3;
      v27[3] = &unk_277DFB098;
      v7 = v12;
      v28 = v7;
      [v16 na_each:v27];
    }
  }

  if ([(HFMediaAccessoryItemProvider *)self includeSiriEndPointProfiles])
  {
    v17 = [(HFMediaAccessoryItemProvider *)self _siriEndpoints];
    v18 = [v17 mutableCopy];

    [v18 minusSet:v7];
    v19 = [v18 allObjects];
    [v7 addObjectsFromArray:v19];
  }

  v20 = [v7 allObjects];
  v21 = [(HFMediaAccessoryItemProvider *)self filter];
  v22 = [(HFItemProvider *)self reloadItemsWithHomeKitObjects:v20 filter:v21 itemMap:v3];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __43__HFMediaAccessoryItemProvider_reloadItems__block_invoke_4;
  v25[3] = &unk_277DF30B8;
  objc_copyWeak(&v26, &location);
  v23 = [v22 flatMap:v25];
  objc_destroyWeak(&v26);

  objc_destroyWeak(&v30);
  objc_destroyWeak(&location);

  return v23;
}

HFMediaAccessoryItem *__43__HFMediaAccessoryItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = v3;
  if ([v5 conformsToProtocol:&unk_282584A38])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [HFMediaAccessoryItem alloc];
    v9 = [WeakRetained valueSource];
    v10 = [(HFMediaAccessoryItem *)v8 initWithValueSource:v9 mediaProfileContainer:v7];
  }

  else
  {
    NSLog(&cfstr_Mediaprofileco_0.isa, v5);
    v10 = 0;
  }

  v11 = v10;
  if ([(HFMediaAccessoryItem *)v11 conformsToProtocol:&unk_28254C460])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    if ([(HFMediaAccessoryItem *)v13 isSiriEndpointAccessory])
    {
      v14 = [(HFMediaAccessoryItem *)v13 commonSettingsManager];

      if (v14)
      {
        v15 = [(HFMediaAccessoryItem *)v13 commonSettingsManager];
        [v15 addObserver:WeakRetained];
      }
    }
  }

  return v11;
}

BOOL __43__HFMediaAccessoryItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v5 == 0;
}

void __43__HFMediaAccessoryItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v9 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = v9;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = *(a1 + 32);
  v7 = [v5 mediaProfiles];
  v8 = [v7 allObjects];
  [v6 addObjectsFromArray:v8];
}

id __43__HFMediaAccessoryItemProvider_reloadItems__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained mediaAccessoryItems];
  v6 = [v3 addedItems];
  [v5 unionSet:v6];

  v7 = [WeakRetained mediaAccessoryItems];
  v8 = [v3 removedItems];
  [v7 minusSet:v8];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v9;
}

- (id)items
{
  v2 = [(HFMediaAccessoryItemProvider *)self mediaAccessoryItems];
  v3 = [v2 copy];

  return v3;
}

- (id)invalidationReasons
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = HFMediaAccessoryItemProvider;
  v2 = [(HFItemProvider *)&v7 invalidationReasons];
  v8[0] = @"accessory";
  v8[1] = @"softwareUpdate";
  v8[2] = @"mediaSystem";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  v4 = [v2 setByAddingObjectsFromArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)mediaProfileContainer:(id)a3 didUpdateSettingKeypath:(id)a4 value:(id)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = HFLogForCategory(0x28uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Received update for setting keypath %@ value = %@", &v12, 0x16u);
  }

  v10 = [(HFMediaAccessoryItemProvider *)self reloadItems];
  v11 = *MEMORY[0x277D85DE8];
}

- (id)_siriEndpoints
{
  v2 = [(HFMediaAccessoryItemProvider *)self home];
  v3 = [v2 accessories];
  v4 = [v3 na_map:&__block_literal_global_289];

  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];

  return v5;
}

id __46__HFMediaAccessoryItemProvider__siriEndpoints__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 hf_siriEndpointProfile];
  if (v3)
  {
    v4 = [v2 mediaProfile];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end