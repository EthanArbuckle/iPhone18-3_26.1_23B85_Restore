@interface HFAccessoryCategoryStatusItemProvider
+ (id)_categoryStatusItemClasses;
- (HFAccessoryCategoryStatusItemProvider)initWithHome:(id)a3 room:(id)a4 overrideValueSource:(id)a5;
- (HFAccessoryCategoryStatusItemProvider)initWithItems:(id)a3;
- (id)_buildStatusItemWithClass:(Class)a3 home:(id)a4 room:(id)a5 valueSource:(id)a6;
- (id)_createStatusItemsForHome:(id)a3 room:(id)a4 valueSource:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)invalidationReasons;
- (void)_buildStatusItemsForGroupedStatusItem:(id)a3;
@end

@implementation HFAccessoryCategoryStatusItemProvider

+ (id)_categoryStatusItemClasses
{
  if (_MergedGlobals_2_5 != -1)
  {
    dispatch_once(&_MergedGlobals_2_5, &__block_literal_global_3_32);
  }

  v2 = qword_280E02618;
  v3 = [v2 arrayByAddingObject:objc_opt_class()];

  return v3;
}

void __67__HFAccessoryCategoryStatusItemProvider__categoryStatusItemClasses__block_invoke_2()
{
  v3[5] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:5];
  v1 = qword_280E02618;
  qword_280E02618 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (HFAccessoryCategoryStatusItemProvider)initWithItems:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithHome_room_overrideValueSource_);
  [v5 handleFailureInMethod:a2 object:self file:@"HFAccessoryCategoryStatusItemProvider.m" lineNumber:57 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryCategoryStatusItemProvider initWithItems:]", v6}];

  return 0;
}

- (HFAccessoryCategoryStatusItemProvider)initWithHome:(id)a3 room:(id)a4 overrideValueSource:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v9 hf_characteristicValueManager];
  }

  v14 = v13;
  v15 = [(HFAccessoryCategoryStatusItemProvider *)self _createStatusItemsForHome:v9 room:v10 valueSource:v13];
  v16 = [MEMORY[0x277CBEB98] setWithArray:v15];
  v19.receiver = self;
  v19.super_class = HFAccessoryCategoryStatusItemProvider;
  v17 = [(HFStaticItemProvider *)&v19 initWithItems:v16];

  if (v17)
  {
    objc_storeStrong(&v17->_home, a3);
    objc_storeStrong(&v17->_room, a4);
    objc_storeStrong(&v17->_valueSource, v14);
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(HFAccessoryCategoryStatusItemProvider *)self home];
  v6 = [(HFAccessoryCategoryStatusItemProvider *)self room];
  v7 = [(HFAccessoryCategoryStatusItemProvider *)self valueSource];
  v8 = [v4 initWithHome:v5 room:v6 valueSource:v7];

  return v8;
}

- (id)_createStatusItemsForHome:(id)a3 room:(id)a4 valueSource:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [objc_opt_class() _categoryStatusItemClasses];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__HFAccessoryCategoryStatusItemProvider__createStatusItemsForHome_room_valueSource___block_invoke;
  v17[3] = &unk_277E004F0;
  v17[4] = self;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = [v11 na_map:v17];

  return v15;
}

- (id)_buildStatusItemWithClass:(Class)a3 home:(id)a4 room:(id)a5 valueSource:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [[a3 alloc] initWithHome:v12 room:v11 valueSource:v10];

  objc_opt_class();
  v14 = v13;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (v16)
  {
    [(HFAccessoryCategoryStatusItemProvider *)self _buildStatusItemsForGroupedStatusItem:v16];
  }

  return v14;
}

- (void)_buildStatusItemsForGroupedStatusItem:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() statusItemClasses];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HFAccessoryCategoryStatusItemProvider__buildStatusItemsForGroupedStatusItem___block_invoke;
  v7[3] = &unk_277DFA060;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 na_each:v7];
}

void __79__HFAccessoryCategoryStatusItemProvider__buildStatusItemsForGroupedStatusItem___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) home];
  v6 = [*(a1 + 40) room];
  v7 = [*(a1 + 40) valueSource];
  v8 = [v4 _buildStatusItemWithClass:a2 home:v5 room:v6 valueSource:v7];

  [*(a1 + 40) addItem:v8];
}

- (id)invalidationReasons
{
  v5.receiver = self;
  v5.super_class = HFAccessoryCategoryStatusItemProvider;
  v2 = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [v2 setByAddingObject:@"user"];

  return v3;
}

@end