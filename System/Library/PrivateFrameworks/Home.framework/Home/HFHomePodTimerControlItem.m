@interface HFHomePodTimerControlItem
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)a3;
- (HFHomeKitSettingsValueManager)valueManager;
- (HFHomePodTimerControlItem)initWithMediaProfileContainer:(id)a3 displayResults:(id)a4;
- (HFHomePodTimerControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5;
- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4;
- (id)readValueAndPopulateStandardResults;
- (id)resultsForBatchReadResponse:(id)a3;
- (unint64_t)hash;
@end

@implementation HFHomePodTimerControlItem

- (HFHomePodTimerControlItem)initWithMediaProfileContainer:(id)a3 displayResults:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 hf_home];
  if (!v10)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"HFHomePodTimerControlItem.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"home != nil"}];
  }

  v11 = [HFSimpleAggregatedCharacteristicValueSource alloc];
  v12 = [v10 hf_characteristicValueManager];
  v13 = [MEMORY[0x277CBEB98] set];
  v14 = [(HFSimpleAggregatedCharacteristicValueSource *)v11 initWithValueSource:v12 characteristics:v13 primaryServiceDescriptor:0];

  v15 = objc_alloc_init(HFControlItemCharacteristicOptions);
  v19.receiver = self;
  v19.super_class = HFHomePodTimerControlItem;
  v16 = [(HFControlItem *)&v19 initWithValueSource:v14 characteristicOptions:v15 displayResults:v9];

  if (v16)
  {
    objc_storeStrong(&v16->_mediaProfileContainer, a3);
  }

  return v16;
}

- (HFHomePodTimerControlItem)initWithValueSource:(id)a3 characteristicOptions:(id)a4 displayResults:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v8 = NSStringFromSelector(sel_initWithMediaProfileContainer_displayResults_);
  [v7 handleFailureInMethod:a2 object:self file:@"HFHomePodTimerControlItem.m" lineNumber:57 description:{@"%s is unavailable; use %@ instead", "-[HFHomePodTimerControlItem initWithValueSource:characteristicOptions:displayResults:]", v8}];

  return 0;
}

- (id)copyWithCharacteristicOptions:(id)a3 valueSource:(id)a4
{
  v5 = objc_alloc(objc_opt_class());
  v6 = [(HFHomePodTimerControlItem *)self mediaProfileContainer];
  v7 = [(HFControlItem *)self displayResults];
  v8 = [v5 initWithMediaProfileContainer:v6 displayResults:v7];

  [v8 copyLatestResultsFromItem:self];
  return v8;
}

- (HFHomeKitSettingsValueManager)valueManager
{
  v2 = [(HFHomePodTimerControlItem *)self mediaProfileContainer];
  v3 = [v2 hf_settingsValueManager];

  return v3;
}

- (id)readValueAndPopulateStandardResults
{
  v13.receiver = self;
  v13.super_class = HFHomePodTimerControlItem;
  v3 = [(HFControlItem *)&v13 readValueAndPopulateStandardResults];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(HFHomePodTimerControlItem *)self mediaProfileContainer];
  v6 = [v5 hf_dependentHomeKitObjectsForDownstreamItems];
  v7 = [v6 mutableCopy];

  [v4 na_safeSetObject:v7 forKey:@"dependentHomeKitObjects"];
  [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"actionRequiresDeviceUnlock"];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__HFHomePodTimerControlItem_readValueAndPopulateStandardResults__block_invoke;
  v11[3] = &unk_277DF3FD0;
  v12 = v4;
  v8 = v4;
  v9 = [v3 flatMap:v11];

  return v9;
}

id __64__HFHomePodTimerControlItem_readValueAndPopulateStandardResults__block_invoke(uint64_t a1, uint64_t a2)
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
  v13.super_class = HFHomePodTimerControlItem;
  v5 = [(HFControlItem *)&v13 resultsForBatchReadResponse:v4];
  v6 = [v5 mutableCopy];

  v7 = [(HFHomePodTimerControlItem *)self mediaProfileContainer];
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