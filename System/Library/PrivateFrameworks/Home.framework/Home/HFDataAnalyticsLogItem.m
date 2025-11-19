@interface HFDataAnalyticsLogItem
+ (NAIdentity)na_identity;
- (BOOL)isDisplayDisabled;
- (BOOL)isEqual:(id)a3;
- (HFDataAnalyticsLogItem)init;
- (HFDataAnalyticsLogItem)initWithMediaProfileContainer:(id)a3 name:(id)a4;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)fetchLog;
- (unint64_t)hash;
@end

@implementation HFDataAnalyticsLogItem

- (HFDataAnalyticsLogItem)initWithMediaProfileContainer:(id)a3 name:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"HFDataAnalyticsLogItem.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x277CCA890] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"HFDataAnalyticsLogItem.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"name"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = HFDataAnalyticsLogItem;
  v11 = [(HFDataAnalyticsLogItem *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaProfileContainer, a3);
    v13 = [v10 copy];
    name = v12->_name;
    v12->_name = v13;
  }

  return v12;
}

- (HFDataAnalyticsLogItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithMediaProfileContainer_name_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFDataAnalyticsLogItem.m" lineNumber:40 description:{@"%s is unavailable; use %@ instead", "-[HFDataAnalyticsLogItem init]", v5}];

  return 0;
}

- (id)fetchLog
{
  v3 = [(HFDataAnalyticsLogItem *)self mediaProfileContainer];
  v4 = [(HFDataAnalyticsLogItem *)self name];
  v5 = [v3 hf_fetchLog:v4 timeout:*&kHFDataAnalyticsFetchLogTimeout];
  v6 = [v5 flatMap:&__block_literal_global_234];

  return v6;
}

id __34__HFDataAnalyticsLogItem_fetchLog__block_invoke(uint64_t a1, void *a2)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 pathExtension];
  if ([v3 isEqualToString:@"metriclog"])
  {

LABEL_4:
    setupAWDConnection();
    v6 = createDescriptionForMetriclogFile();
    teardownAWDConnection();
LABEL_5:
    v7 = MEMORY[0x277D2C900];
    v8 = objc_alloc(MEMORY[0x277CCA898]);
    v20 = *MEMORY[0x277D740C0];
    v9 = [MEMORY[0x277D75348] labelColor];
    v21[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v11 = [v8 initWithString:v6 attributes:v10];
    v12 = [v7 futureWithResult:v11];

    goto LABEL_6;
  }

  v4 = [v2 pathExtension];
  v5 = [v4 isEqualToString:@"metriclog.anon"];

  if (v5)
  {
    goto LABEL_4;
  }

  v15 = [v2 pathExtension];
  v16 = [v15 isEqualToString:@"plist"];

  if (v16)
  {
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v2];
    v6 = [v17 description];

    goto LABEL_5;
  }

  v19 = 0;
  v6 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v2 encoding:4 error:&v19];
  v18 = v19;
  if (!v18)
  {
    goto LABEL_5;
  }

  v9 = v18;
  v12 = [MEMORY[0x277D2C900] futureWithError:v18];
LABEL_6:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D2C900];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__HFDataAnalyticsLogItem__subclass_updateWithOptions___block_invoke;
  v8[3] = &unk_277DF4F68;
  objc_copyWeak(&v9, &location);
  v6 = [v5 futureWithBlock:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v6;
}

void __54__HFDataAnalyticsLogItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_alloc_init(HFMutableItemUpdateOutcome);
  v5 = [WeakRetained name];
  v6 = [v5 lastPathComponent];
  [(HFMutableItemUpdateOutcome *)v4 setObject:v6 forKeyedSubscript:@"title"];

  v7 = [WeakRetained mediaProfileContainer];
  v8 = [v7 hf_dependentHomeKitObjectsForDownstreamItems];
  [(HFMutableItemUpdateOutcome *)v4 setObject:v8 forKeyedSubscript:@"dependentHomeKitObjects"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(WeakRetained, "isDisplayDisabled")}];
  [(HFMutableItemUpdateOutcome *)v4 setObject:v9 forKeyedSubscript:@"isDisabled"];

  [v3 finishWithResult:v4];
}

- (BOOL)isDisplayDisabled
{
  v2 = [(HFDataAnalyticsLogItem *)self mediaProfileContainer];
  v3 = [v2 settings];

  if (v3)
  {
    v4 = [v2 settings];
    LODWORD(v3) = [v4 isControllable] ^ 1;
  }

  return v3;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_2_7 != -1)
  {
    dispatch_once(&_MergedGlobals_2_7, &__block_literal_global_41_3);
  }

  v3 = qword_280E02638;

  return v3;
}

void __37__HFDataAnalyticsLogItem_na_identity__block_invoke_2()
{
  v4 = [MEMORY[0x277D2C908] builder];
  v0 = [v4 appendCharacteristic:&__block_literal_global_45_3];
  v1 = [v0 appendCharacteristic:&__block_literal_global_47_4];
  v2 = [v1 build];
  v3 = qword_280E02638;
  qword_280E02638 = v2;
}

id __37__HFDataAnalyticsLogItem_na_identity__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 mediaProfileContainer];
  v3 = [v2 uniqueIdentifier];

  return v3;
}

- (unint64_t)hash
{
  v3 = [objc_opt_class() na_identity];
  v4 = [v3 hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() na_identity];
  LOBYTE(self) = [v5 isObject:self equalToObject:v4];

  return self;
}

@end