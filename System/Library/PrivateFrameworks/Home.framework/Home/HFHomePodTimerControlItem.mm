@interface HFHomePodTimerControlItem
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)equal;
- (HFHomeKitSettingsValueManager)valueManager;
- (HFHomePodTimerControlItem)initWithMediaProfileContainer:(id)container displayResults:(id)results;
- (HFHomePodTimerControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results;
- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source;
- (id)readValueAndPopulateStandardResults;
- (id)resultsForBatchReadResponse:(id)response;
- (unint64_t)hash;
@end

@implementation HFHomePodTimerControlItem

- (HFHomePodTimerControlItem)initWithMediaProfileContainer:(id)container displayResults:(id)results
{
  containerCopy = container;
  resultsCopy = results;
  hf_home = [containerCopy hf_home];
  if (!hf_home)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFHomePodTimerControlItem.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"home != nil"}];
  }

  v11 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  hf_characteristicValueManager = [hf_home hf_characteristicValueManager];
  v13 = [MEMORY[0x277CBEB98] set];
  v14 = [(HFSimpleAggregatedCharacteristicValueSource *)v11 initWithValueSource:hf_characteristicValueManager characteristics:v13 primaryServiceDescriptor:0];

  v15 = objc_alloc_init(HFControlItemCharacteristicOptions);
  v19.receiver = self;
  v19.super_class = HFHomePodTimerControlItem;
  v16 = [(HFControlItem *)&v19 initWithValueSource:v14 characteristicOptions:v15 displayResults:resultsCopy];

  if (v16)
  {
    objc_storeStrong(&v16->_mediaProfileContainer, container);
  }

  return v16;
}

- (HFHomePodTimerControlItem)initWithValueSource:(id)source characteristicOptions:(id)options displayResults:(id)results
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithMediaProfileContainer_displayResults_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFHomePodTimerControlItem.m" lineNumber:57 description:{@"%s is unavailable; use %@ instead", "-[HFHomePodTimerControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (id)copyWithCharacteristicOptions:(id)options valueSource:(id)source
{
  v5 = objc_alloc(objc_opt_class());
  mediaProfileContainer = [(HFHomePodTimerControlItem *)self mediaProfileContainer];
  displayResults = [(HFControlItem *)self displayResults];
  v8 = [v5 initWithMediaProfileContainer:mediaProfileContainer displayResults:displayResults];

  [v8 copyLatestResultsFromItem:self];
  return v8;
}

- (HFHomeKitSettingsValueManager)valueManager
{
  mediaProfileContainer = [(HFHomePodTimerControlItem *)self mediaProfileContainer];
  hf_settingsValueManager = [mediaProfileContainer hf_settingsValueManager];

  return hf_settingsValueManager;
}

- (id)readValueAndPopulateStandardResults
{
  v13.receiver = self;
  v13.super_class = HFHomePodTimerControlItem;
  readValueAndPopulateStandardResults = [(HFControlItem *)&v13 readValueAndPopulateStandardResults];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  mediaProfileContainer = [(HFHomePodTimerControlItem *)self mediaProfileContainer];
  hf_dependentHomeKitObjectsForDownstreamItems = [mediaProfileContainer hf_dependentHomeKitObjectsForDownstreamItems];
  v7 = [hf_dependentHomeKitObjectsForDownstreamItems mutableCopy];

  [dictionary na_safeSetObject:v7 forKey:@"dependentHomeKitObjects"];
  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"actionRequiresDeviceUnlock"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__HFHomePodTimerControlItem_readValueAndPopulateStandardResults__block_invoke;
  v11[3] = &unk_277DF3FD0;
  v12 = dictionary;
  v8 = dictionary;
  v9 = [readValueAndPopulateStandardResults flatMap:v11];

  return v9;
}

id __64__HFHomePodTimerControlItem_readValueAndPopulateStandardResults__block_invoke(uint64_t a1, uint64_t a2)
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
  v13.super_class = HFHomePodTimerControlItem;
  v5 = [(HFControlItem *)&v13 resultsForBatchReadResponse:responseCopy];
  v6 = [v5 mutableCopy];

  mediaProfileContainer = [(HFHomePodTimerControlItem *)self mediaProfileContainer];
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
  if (_MergedGlobals_301 != -1)
  {
    dispatch_once(&_MergedGlobals_301, &__block_literal_global_32_5);
  }

  v3 = qword_280E03A90;

  return v3;
}

void __40__HFHomePodTimerControlItem_na_identity__block_invoke_2()
{
  v3 = [MEMORY[0x277D2C908] builder];
  v0 = [v3 appendCharacteristic:&__block_literal_global_36_5];
  v1 = [v0 build];
  v2 = qword_280E03A90;
  qword_280E03A90 = v1;
}

id __40__HFHomePodTimerControlItem_na_identity__block_invoke_3(uint64_t a1, void *a2)
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