@interface HFHomePodAlarmControlItem
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)a3;
- (HFHomeKitSettingsValueManager)valueManager;
- (HFHomePodAlarmControlItem)initWithMediaProfileContainer:(id)a3 displayResults:(id)a4;
- (HFHomePodAlarmControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5;
- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4;
- (id)readValueAndPopulateStandardResults;
- (id)resultsForBatchReadResponse:(id)a3;
- (unint64_t)hash;
@end

@implementation HFHomePodAlarmControlItem

- (HFHomePodAlarmControlItem)initWithMediaProfileContainer:(id)a3 displayResults:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 hf_home];
  if (!v10)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HFHomePodAlarmControlItem.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"home != nil"}];
  }

  v11 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  v12 = [v10 hf_characteristicValueManager];
  v13 = [MEMORY[0x277CBEB98] set];
  v14 = [(HFSimpleAggregatedCharacteristicValueSource *)v11 initWithValueSource:v12 characteristics:v13 primaryServiceDescriptor:0];

  v15 = objc_alloc_init(HFControlItemCharacteristicOptions);
  v19.receiver = self;
  v19.super_class = HFHomePodAlarmControlItem;
  v16 = [(HFControlItem *)&v19 initWithValueSource:v14 characteristicOptions:v15 displayResults:v9];

  if (v16)
  {
    objc_storeStrong(&v16->_mediaProfileContainer, a3);
  }

  return v16;
}

- (HFHomePodAlarmControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithMediaProfileContainer_displayResults_);
  [v7 handleFailureInMethod:a2 object:self file:@"HFHomePodAlarmControlItem.m" lineNumber:57 description:{@"%s is unavailable; use %@ instead", "-[HFHomePodAlarmControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(HFHomePodAlarmControlItem *)self mediaProfileContainer];
  v7 = [(HFControlItem *)self displayResults];
  v8 = [v5 initWithMediaProfileContainer:v6 displayResults:v7];

  [v8 copyLatestResultsFromItem:self];
  return v8;
}

- (HFHomeKitSettingsValueManager)valueManager
{
  v2 = [(HFHomePodAlarmControlItem *)self mediaProfileContainer];
  v3 = [v2 hf_settingsValueManager];

  return v3;
}

- (id)readValueAndPopulateStandardResults
{
  v29 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = HFHomePodAlarmControlItem;
  v3 = [(HFControlItem *)&v24 readValueAndPopulateStandardResults];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  [v4 setObject:&unk_2825237F0 forKeyedSubscript:@"controlItemPurpose"];
  v5 = [(HFHomePodAlarmControlItem *)self mediaProfileContainer];
  v6 = [v5 hf_backingAccessory];
  v7 = [v6 hf_siriEndpointProfile];

  if (v7)
  {
    v8 = HFLogForCategory(0x41uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEBUG, "Setting HomePodAlarmControlItem purpose to HFControlItemPreferredPurposeSecondaryAlternateQuickControl", buf, 2u);
    }

    [v4 setObject:&unk_282523808 forKeyedSubscript:@"controlItemPurpose"];
  }

  v9 = [(HFHomePodAlarmControlItem *)self mediaProfileContainer];
  v10 = [v9 hf_dependentHomeKitObjectsForDownstreamItems];
  v11 = [v10 mutableCopy];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v12 = [(HFHomePodAlarmControlItem *)self mediaProfileContainer];
    v13 = [v12 hf_settingsAdapterManager];
    v14 = [v13 adapterForIdentifier:@"MobileTimerAdapter"];

    v15 = [v14 isAdapterReady];
    v16 = HFLogForCategory(4uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      v26 = v15;
      v27 = 1024;
      v28 = v15 ^ 1;
      _os_log_debug_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEBUG, "mobileTimerAdapter isAdapterReady = %{BOOL}d Alarm QC will be hidden = %{BOOL}d", buf, 0xEu);
    }

    if ((v15 & 1) == 0)
    {
      [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    }

    v17 = [v14 alarmCollectionSetting];
    [v11 na_safeAddObject:v17];
  }

  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"actionRequiresDeviceUnlock"];
  [v4 na_safeSetObject:v11 forKey:@"dependentHomeKitObjects"];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __64__HFHomePodAlarmControlItem_readValueAndPopulateStandardResults__block_invoke;
  v22[3] = &unk_277DF3FD0;
  v23 = v4;
  v18 = v4;
  v19 = [v3 flatMap:v22];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id __64__HFHomePodAlarmControlItem_readValueAndPopulateStandardResults__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:a2];
  [v3 addEntriesFromDictionary:*(a1 + 32)];
  v4 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v4;
}

- (id)resultsForBatchReadResponse:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HFHomePodAlarmControlItem;
  v5 = [(HFControlItem *)&v13 resultsForBatchReadResponse:v4];
  v6 = [v5 mutableCopy];

  v7 = [(HFHomePodAlarmControlItem *)self mediaProfileContainer];
  LOBYTE(v5) = [v7 hf_isReachable];

  if ((v5 & 1) == 0)
  {
    v8 = [MEMORY[0x277CCA9B8] hf_errorWithCode:35];
    v9 = [MEMORY[0x277CBEB98] set];
    v10 = [v4 contextProvider];
    v11 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:v8 readTraits:v9 contextProvider:v10];

    [v6 na_safeSetObject:v11 forKey:@"underlyingError"];
  }

  return v6;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_235 != -1)
  {
    dispatch_once(&_MergedGlobals_235, &__block_literal_global_37_1);
  }

  v3 = qword_280E02D98;

  return v3;
}

void __40__HFHomePodAlarmControlItem_na_identity__block_invoke_2()
{
  v3 = [MEMORY[0x277D2C908] builder];
  v0 = [v3 appendCharacteristic:&__block_literal_global_41_0];
  v1 = [v0 build];
  v2 = qword_280E02D98;
  qword_280E02D98 = v1;
}

id __40__HFHomePodAlarmControlItem_na_identity__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 mediaProfileContainer];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

@end