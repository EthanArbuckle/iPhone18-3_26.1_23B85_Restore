@interface HFZoneItem
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)equal;
- (HFZoneItem)init;
- (HFZoneItem)initWithHome:(id)home zone:(id)zone;
- (NSString)description;
- (id)_subclass_updateWithOptions:(id)options;
- (id)hf_deleteItem;
- (unint64_t)hash;
@end

@implementation HFZoneItem

- (HFZoneItem)initWithHome:(id)home zone:(id)zone
{
  homeCopy = home;
  zoneCopy = zone;
  v12.receiver = self;
  v12.super_class = HFZoneItem;
  v9 = [(HFZoneItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_home, home);
    objc_storeStrong(&v10->_zone, zone);
  }

  return v10;
}

- (HFZoneItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithHome_zone_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFZoneItem.m" lineNumber:35 description:{@"%s is unavailable; use %@ instead", "-[HFZoneItem init]", v5}];

  return 0;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HFZoneItem *)self zone];
  hf_prettyDescription = [v6 hf_prettyDescription];
  latestResults = [(HFItem *)self latestResults];
  v9 = [v3 stringWithFormat:@"<%@: %p, %@ %@>", v5, self, hf_prettyDescription, latestResults];

  return v9;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_2_3 != -1)
  {
    dispatch_once(&_MergedGlobals_2_3, &__block_literal_global_13_6);
  }

  v3 = qword_280E025F8;

  return v3;
}

void __25__HFZoneItem_na_identity__block_invoke_2()
{
  v4 = [MEMORY[0x277D2C908] builder];
  v0 = [v4 appendCharacteristic:&__block_literal_global_17_6];
  v1 = [v0 appendCharacteristic:&__block_literal_global_19_6];
  v2 = [v1 build];
  v3 = qword_280E025F8;
  qword_280E025F8 = v2;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (id)hf_deleteItem
{
  home = [(HFZoneItem *)self home];
  v4 = [(HFZoneItem *)self zone];
  v5 = MEMORY[0x277D2C900];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __27__HFZoneItem_hf_deleteItem__block_invoke;
  v10[3] = &unk_277DF28D8;
  v11 = v4;
  v12 = home;
  v6 = home;
  v7 = v4;
  v8 = [v5 futureWithBlock:v10];

  return v8;
}

void __27__HFZoneItem_hf_deleteItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  v5 = [*(a1 + 32) rooms];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __27__HFZoneItem_hf_deleteItem__block_invoke_2;
  v16[3] = &unk_277DFE438;
  v17 = v4;
  v18 = *(a1 + 32);
  v6 = v4;
  [v5 na_each:v16];

  v7 = MEMORY[0x277D2C900];
  v8 = [MEMORY[0x277D2C938] mainThreadScheduler];
  v9 = [v7 combineAllFutures:v6 ignoringErrors:1 scheduler:v8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __27__HFZoneItem_hf_deleteItem__block_invoke_4;
  v12[3] = &unk_277DFE460;
  v13 = v3;
  v14 = *(a1 + 40);
  v15 = *(a1 + 32);
  v10 = v3;
  v11 = [v9 addCompletionBlock:v12];
}

void __27__HFZoneItem_hf_deleteItem__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277D2C900];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __27__HFZoneItem_hf_deleteItem__block_invoke_3;
  v11 = &unk_277DF4150;
  v5 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v3;
  v6 = v3;
  v7 = [v4 futureWithErrorOnlyHandlerAdapterBlock:&v8];
  [v5 addObject:{v7, v8, v9, v10, v11}];
}

void __27__HFZoneItem_hf_deleteItem__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *(a1 + 32);

    [v5 finishWithResult:a2 error:a3];
  }

  else
  {
    v10 = v3;
    v11 = v4;
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __27__HFZoneItem_hf_deleteItem__block_invoke_5;
    v8[3] = &unk_277DF2D08;
    v9 = *(a1 + 32);
    [v6 removeZone:v7 completionHandler:v8];
  }
}

uint64_t __27__HFZoneItem_hf_deleteItem__block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 finishWithError:a2];
  }

  else
  {
    return [v2 finishWithNoResult];
  }
}

- (id)_subclass_updateWithOptions:(id)options
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277D2C900]);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [(HFZoneItem *)self zone];
  name = [v6 name];
  [dictionary setObject:name forKeyedSubscript:@"title"];

  v8 = [(HFZoneItem *)self zone];
  uniqueIdentifier = [v8 uniqueIdentifier];
  [dictionary setObject:uniqueIdentifier forKeyedSubscript:@"zoneIdentifier"];

  v17[0] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [dictionary setObject:v10 forKeyedSubscript:@"dependentHomeKitClasses"];

  v11 = MEMORY[0x277CCABB0];
  home = [(HFZoneItem *)self home];
  v13 = [v11 numberWithBool:{objc_msgSend(home, "hf_currentUserIsAdministrator")}];
  [dictionary setObject:v13 forKeyedSubscript:@"administrator"];

  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"shouldDisableForNonAdminUsers"];
  v14 = [HFItemUpdateOutcome outcomeWithResults:dictionary];
  [v4 finishWithResult:v14];

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

@end