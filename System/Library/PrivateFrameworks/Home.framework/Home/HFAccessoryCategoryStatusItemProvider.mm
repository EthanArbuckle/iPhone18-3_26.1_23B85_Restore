@interface HFAccessoryCategoryStatusItemProvider
+ (id)_categoryStatusItemClasses;
- (HFAccessoryCategoryStatusItemProvider)initWithHome:(id)home room:(id)room overrideValueSource:(id)source;
- (HFAccessoryCategoryStatusItemProvider)initWithItems:(id)items;
- (id)_buildStatusItemWithClass:(Class)class home:(id)home room:(id)room valueSource:(id)source;
- (id)_createStatusItemsForHome:(id)home room:(id)room valueSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (void)_buildStatusItemsForGroupedStatusItem:(id)item;
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

- (HFAccessoryCategoryStatusItemProvider)initWithItems:(id)items
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithHome_room_overrideValueSource_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFAccessoryCategoryStatusItemProvider.m" lineNumber:57 description:{@"%s is unavailable; use %@ instead", "-[HFAccessoryCategoryStatusItemProvider initWithItems:]", v6}];

  return 0;
}

- (HFAccessoryCategoryStatusItemProvider)initWithHome:(id)home room:(id)room overrideValueSource:(id)source
{
  homeCopy = home;
  roomCopy = room;
  sourceCopy = source;
  v12 = sourceCopy;
  if (sourceCopy)
  {
    hf_characteristicValueManager = sourceCopy;
  }

  else
  {
    hf_characteristicValueManager = [homeCopy hf_characteristicValueManager];
  }

  v14 = hf_characteristicValueManager;
  v15 = [(HFAccessoryCategoryStatusItemProvider *)self _createStatusItemsForHome:homeCopy room:roomCopy valueSource:hf_characteristicValueManager];
  v16 = [MEMORY[0x277CBEB98] setWithArray:v15];
  v19.receiver = self;
  v19.super_class = HFAccessoryCategoryStatusItemProvider;
  v17 = [(HFStaticItemProvider *)&v19 initWithItems:v16];

  if (v17)
  {
    objc_storeStrong(&v17->_home, home);
    objc_storeStrong(&v17->_room, room);
    objc_storeStrong(&v17->_valueSource, v14);
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HFAccessoryCategoryStatusItemProvider *)self home];
  room = [(HFAccessoryCategoryStatusItemProvider *)self room];
  valueSource = [(HFAccessoryCategoryStatusItemProvider *)self valueSource];
  v8 = [v4 initWithHome:home room:room valueSource:valueSource];

  return v8;
}

- (id)_createStatusItemsForHome:(id)home room:(id)room valueSource:(id)source
{
  homeCopy = home;
  roomCopy = room;
  sourceCopy = source;
  _categoryStatusItemClasses = [objc_opt_class() _categoryStatusItemClasses];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__HFAccessoryCategoryStatusItemProvider__createStatusItemsForHome_room_valueSource___block_invoke;
  v17[3] = &unk_277E004F0;
  v17[4] = self;
  v18 = homeCopy;
  v19 = roomCopy;
  v20 = sourceCopy;
  v12 = sourceCopy;
  v13 = roomCopy;
  v14 = homeCopy;
  v15 = [_categoryStatusItemClasses na_map:v17];

  return v15;
}

- (id)_buildStatusItemWithClass:(Class)class home:(id)home room:(id)room valueSource:(id)source
{
  sourceCopy = source;
  roomCopy = room;
  homeCopy = home;
  v13 = [[class alloc] initWithHome:homeCopy room:roomCopy valueSource:sourceCopy];

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

- (void)_buildStatusItemsForGroupedStatusItem:(id)item
{
  itemCopy = item;
  statusItemClasses = [objc_opt_class() statusItemClasses];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HFAccessoryCategoryStatusItemProvider__buildStatusItemsForGroupedStatusItem___block_invoke;
  v7[3] = &unk_277DFA060;
  v7[4] = self;
  v8 = itemCopy;
  v6 = itemCopy;
  [statusItemClasses na_each:v7];
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
  invalidationReasons = [(HFItemProvider *)&v5 invalidationReasons];
  v3 = [invalidationReasons setByAddingObject:@"user"];

  return v3;
}

@end