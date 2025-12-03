@interface HFHomePodAlarmControlItem
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)equal;
- (HFHomeKitSettingsValueManager)valueManager;
- (HFHomePodAlarmControlItem)initWithMediaProfileContainer:(id)container displayResults:(id)results;
- (HFHomePodAlarmControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
- (id)readValueAndPopulateStandardResults;
- (id)resultsForBatchReadResponse:(id)response;
- (unint64_t)hash;
@end

@implementation HFHomePodAlarmControlItem

- (HFHomePodAlarmControlItem)initWithMediaProfileContainer:(id)container displayResults:(id)results
{
  containerCopy = container;
  resultsCopy = results;
  hf_home = [containerCopy hf_home];
  if (!hf_home)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFHomePodAlarmControlItem.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"home != nil"}];
  }

  v11 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  hf_characteristicValueManager = [hf_home hf_characteristicValueManager];
  v13 = [MEMORY[0x277CBEB98] set];
  v14 = [(HFSimpleAggregatedCharacteristicValueSource *)v11 initWithValueSource:hf_characteristicValueManager characteristics:v13 primaryServiceDescriptor:0];

  v15 = objc_alloc_init(HFControlItemCharacteristicOptions);
  v19.receiver = self;
  v19.super_class = HFHomePodAlarmControlItem;
  v16 = [(HFControlItem *)&v19 initWithValueSource:v14 characteristicOptions:v15 displayResults:resultsCopy];

  if (v16)
  {
    objc_storeStrong(&v16->_mediaProfileContainer, container);
  }

  return v16;
}

- (HFHomePodAlarmControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithMediaProfileContainer_displayResults_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFHomePodAlarmControlItem.m" lineNumber:57 description:{@"%s is unavailable; use %@ instead", "-[HFHomePodAlarmControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source
{
  v5 = objc_alloc(objc_opt_class());
  mediaProfileContainer = [(HFHomePodAlarmControlItem *)self mediaProfileContainer];
  displayResults = [(HFControlItem *)self displayResults];
  v8 = [v5 initWithMediaProfileContainer:mediaProfileContainer displayResults:displayResults];

  [v8 copyLatestResultsFromItem:self];
  return v8;
}

- (HFHomeKitSettingsValueManager)valueManager
{
  mediaProfileContainer = [(HFHomePodAlarmControlItem *)self mediaProfileContainer];
  hf_settingsValueManager = [mediaProfileContainer hf_settingsValueManager];

  return hf_settingsValueManager;
}

- (id)readValueAndPopulateStandardResults
{
  v29 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = HFHomePodAlarmControlItem;
  readValueAndPopulateStandardResults = [(HFControlItem *)&v24 readValueAndPopulateStandardResults];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:&unk_2825237F0 forKeyedSubscript:@"controlItemPurpose"];
  mediaProfileContainer = [(HFHomePodAlarmControlItem *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
  hf_siriEndpointProfile = [hf_backingAccessory hf_siriEndpointProfile];

  if (hf_siriEndpointProfile)
  {
    v8 = HFLogForCategory(0x41uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEBUG, "Setting HomePodAlarmControlItem purpose to HFControlItemPreferredPurposeSecondaryAlternateQuickControl", buf, 2u);
    }

    [dictionary setObject:&unk_282523808 forKeyedSubscript:@"controlItemPurpose"];
  }

  mediaProfileContainer2 = [(HFHomePodAlarmControlItem *)self mediaProfileContainer];
  hf_dependentHomeKitObjectsForDownstreamItems = [mediaProfileContainer2 hf_dependentHomeKitObjectsForDownstreamItems];
  v11 = [hf_dependentHomeKitObjectsForDownstreamItems mutableCopy];

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    mediaProfileContainer3 = [(HFHomePodAlarmControlItem *)self mediaProfileContainer];
    hf_settingsAdapterManager = [mediaProfileContainer3 hf_settingsAdapterManager];
    v14 = [hf_settingsAdapterManager adapterForIdentifier:@"MobileTimerAdapter"];

    isAdapterReady = [v14 isAdapterReady];
    v16 = HFLogForCategory(4uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      v26 = isAdapterReady;
      v27 = 1024;
      v28 = isAdapterReady ^ 1;
      _os_log_debug_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEBUG, "mobileTimerAdapter isAdapterReady = %{BOOL}d Alarm QC will be hidden = %{BOOL}d", buf, 0xEu);
    }

    if ((isAdapterReady & 1) == 0)
    {
      [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    }

    alarmCollectionSetting = [v14 alarmCollectionSetting];
    [v11 na_safeAddObject:alarmCollectionSetting];
  }

  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"actionRequiresDeviceUnlock"];
  [dictionary na_safeSetObject:v11 forKey:@"dependentHomeKitObjects"];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __64__HFHomePodAlarmControlItem_readValueAndPopulateStandardResults__block_invoke;
  v22[3] = &unk_277DF3FD0;
  v23 = dictionary;
  v18 = dictionary;
  v19 = [readValueAndPopulateStandardResults flatMap:v22];

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

- (id)resultsForBatchReadResponse:(id)response
{
  responseCopy = response;
  v13.receiver = self;
  v13.super_class = HFHomePodAlarmControlItem;
  v5 = [(HFControlItem *)&v13 resultsForBatchReadResponse:responseCopy];
  v6 = [v5 mutableCopy];

  mediaProfileContainer = [(HFHomePodAlarmControlItem *)self mediaProfileContainer];
  LOBYTE(v5) = [mediaProfileContainer hf_isReachable];

  if ((v5 & 1) == 0)
  {
    v8 = [MEMORY[0x277CCA9B8] hf_errorWithCode:35];
    v9 = [MEMORY[0x277CBEB98] set];
    contextProvider = [responseCopy contextProvider];
    v11 = [HFCharacteristicValueDisplayError errorWithUnderlyingError:v8 readTraits:v9 contextProvider:contextProvider];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

@end