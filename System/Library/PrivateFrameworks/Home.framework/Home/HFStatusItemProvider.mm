@interface HFStatusItemProvider
+ (BOOL)hasStatusItemForServiceType:(id)type;
+ (id)_statusItemClasses;
+ (id)sortOrderForStatusItemCategory:(unint64_t)category;
- (HFStatusItemProvider)initWithHome:(id)home room:(id)room overrideValueSource:(id)source filter:(id)filter;
- (HFStatusItemProvider)initWithItems:(id)items;
- (id)_buildStatusItemWithClass:(Class)class home:(id)home room:(id)room valueSource:(id)source;
- (id)_createStatusItemsForHome:(id)home room:(id)room valueSource:(id)source filter:(id)filter;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_buildStatusItemsForGroupedStatusItem:(id)item;
@end

@implementation HFStatusItemProvider

+ (BOOL)hasStatusItemForServiceType:(id)type
{
  v3 = MEMORY[0x277CD1D90];
  typeCopy = type;
  hf_standardServiceTypes = [v3 hf_standardServiceTypes];
  v6 = [hf_standardServiceTypes containsObject:typeCopy];

  return v6;
}

+ (id)_statusItemClasses
{
  if (_MergedGlobals_9 != -1)
  {
    dispatch_once(&_MergedGlobals_9, &__block_literal_global_3_10);
  }

  v3 = qword_280E022D8;

  return v3;
}

void __42__HFStatusItemProvider__statusItemClasses__block_invoke_2()
{
  v38 = MEMORY[0x277CBEB18];
  v37 = objc_opt_class();
  v36 = objc_opt_class();
  v35 = objc_opt_class();
  v34 = objc_opt_class();
  v33 = objc_opt_class();
  v32 = objc_opt_class();
  v31 = objc_opt_class();
  v30 = objc_opt_class();
  v29 = objc_opt_class();
  v28 = objc_opt_class();
  v27 = objc_opt_class();
  v26 = objc_opt_class();
  v25 = objc_opt_class();
  v24 = objc_opt_class();
  v23 = objc_opt_class();
  v22 = objc_opt_class();
  v21 = objc_opt_class();
  v20 = objc_opt_class();
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v38 arrayWithObjects:{v37, v36, v35, v34, v33, v32, v31, v30, v29, v28, v27, v26, v25, v24, v23, v22, v21, v20, v19, v18, v17, v16, v15, v14, v13, v12, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  [v10 addObject:objc_opt_class()];
  if (_os_feature_enabled_impl())
  {
    [v10 addObject:objc_opt_class()];
  }

  v11 = qword_280E022D8;
  qword_280E022D8 = v10;
}

+ (id)sortOrderForStatusItemCategory:(unint64_t)category
{
  if (category <= 1)
  {
    if (category)
    {
      if (category != 1)
      {
        goto LABEL_18;
      }

      if (qword_280E022F0 == -1)
      {
        v3 = &qword_280E022F8;
        goto LABEL_17;
      }

      v5 = &qword_280E022F0;
      v6 = &__block_literal_global_57_0;
    }

    else
    {
      if (qword_280E022E0 == -1)
      {
        v3 = &qword_280E022E8;
        goto LABEL_17;
      }

      v5 = &qword_280E022E0;
      v6 = &__block_literal_global_52;
    }

LABEL_26:
    dispatch_once(v5, v6);
    v3 = v5 + 1;
    goto LABEL_17;
  }

  if (category == 2)
  {
    if (qword_280E02300 == -1)
    {
      v3 = &qword_280E02308;
      goto LABEL_17;
    }

    v5 = &qword_280E02300;
    v6 = &__block_literal_global_61_1;
    goto LABEL_26;
  }

  if (category == 3)
  {
    if (qword_280E02310 == -1)
    {
      v3 = &qword_280E02318;
      goto LABEL_17;
    }

    v5 = &qword_280E02310;
    v6 = &__block_literal_global_65_0;
    goto LABEL_26;
  }

  if (category != 4)
  {
    goto LABEL_18;
  }

  if (qword_280E02320 != -1)
  {
    v5 = &qword_280E02320;
    v6 = &__block_literal_global_71_0;
    goto LABEL_26;
  }

  v3 = &qword_280E02328;
LABEL_17:
  self = *v3;
LABEL_18:

  return self;
}

void __55__HFStatusItemProvider_sortOrderForStatusItemCategory___block_invoke_2()
{
  v3[5] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:5];
  v1 = qword_280E022E8;
  qword_280E022E8 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __55__HFStatusItemProvider_sortOrderForStatusItemCategory___block_invoke_4()
{
  v3[7] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:7];
  v1 = qword_280E022F8;
  qword_280E022F8 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __55__HFStatusItemProvider_sortOrderForStatusItemCategory___block_invoke_6()
{
  v3[13] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v3[7] = objc_opt_class();
  v3[8] = objc_opt_class();
  v3[9] = objc_opt_class();
  v3[10] = objc_opt_class();
  v3[11] = objc_opt_class();
  v3[12] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:13];
  v1 = qword_280E02308;
  qword_280E02308 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

void __55__HFStatusItemProvider_sortOrderForStatusItemCategory___block_invoke_8()
{
  v15 = MEMORY[0x277CBEB18];
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v12 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v15 arrayWithObjects:{v14, v13, v12, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  [v10 addObject:objc_opt_class()];
  v11 = qword_280E02318;
  qword_280E02318 = v10;
}

void __55__HFStatusItemProvider_sortOrderForStatusItemCategory___block_invoke_11()
{
  v3[11] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v3[7] = objc_opt_class();
  v3[8] = objc_opt_class();
  v3[9] = objc_opt_class();
  v3[10] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:11];
  v1 = qword_280E02328;
  qword_280E02328 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

uint64_t __44__HFStatusItemProvider_statusItemComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 latestResults];
  v7 = [v6 objectForKeyedSubscript:@"statusItemCategory"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &unk_282523FD0;
  }

  v10 = v9;

  v11 = [v5 latestResults];
  v12 = [v11 objectForKeyedSubscript:@"statusItemCategory"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &unk_282523FD0;
  }

  v15 = v14;

  v16 = [v10 compare:v15];
  if (!v16)
  {
    v17 = +[HFStatusItemProvider sortOrderForStatusItemCategory:](HFStatusItemProvider, "sortOrderForStatusItemCategory:", [v10 integerValue]);
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "indexOfObject:", objc_opt_class())}];
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "indexOfObject:", objc_opt_class())}];
    v16 = [v18 compare:v19];
    if (!v16)
    {
      v20 = [v4 latestResults];
      v21 = [v20 objectForKeyedSubscript:@"priority"];
      v22 = v21;
      v23 = &unk_282523FE8;
      if (v21)
      {
        v23 = v21;
      }

      v36 = v23;

      v24 = [v5 latestResults];
      v25 = [v24 objectForKeyedSubscript:@"priority"];
      v26 = v25;
      v27 = &unk_282523FE8;
      if (v25)
      {
        v27 = v25;
      }

      v28 = v27;

      v29 = v36;
      if ([v36 isEqualToNumber:v28])
      {
        v30 = [v4 latestResults];
        v35 = [v30 objectForKeyedSubscript:@"sortKey"];

        v31 = [v5 latestResults];
        [v31 objectForKeyedSubscript:@"sortKey"];
        v32 = v34 = v28;

        v29 = v36;
        v16 = [v35 localizedStandardCompare:v32];

        v28 = v34;
      }

      else
      {
        v16 = [v28 compare:v36];
      }
    }
  }

  return v16;
}

- (HFStatusItemProvider)initWithItems:(id)items
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithHome_room_overrideValueSource_filter_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFStatusItemProvider.m" lineNumber:248 description:{@"%s is unavailable; use %@ instead", "-[HFStatusItemProvider initWithItems:]", v6}];

  return 0;
}

- (HFStatusItemProvider)initWithHome:(id)home room:(id)room overrideValueSource:(id)source filter:(id)filter
{
  homeCopy = home;
  roomCopy = room;
  sourceCopy = source;
  filterCopy = filter;
  if (sourceCopy)
  {
    hf_characteristicValueManager = sourceCopy;
  }

  else
  {
    hf_characteristicValueManager = [homeCopy hf_characteristicValueManager];
  }

  v16 = hf_characteristicValueManager;
  v17 = [(HFStatusItemProvider *)self _createStatusItemsForHome:homeCopy room:roomCopy valueSource:hf_characteristicValueManager filter:filterCopy];
  v18 = [MEMORY[0x277CBEB98] setWithArray:v17];
  v23.receiver = self;
  v23.super_class = HFStatusItemProvider;
  v19 = [(HFStaticItemProvider *)&v23 initWithItems:v18];

  if (v19)
  {
    objc_storeStrong(&v19->_home, home);
    objc_storeStrong(&v19->_room, room);
    objc_storeStrong(&v19->_valueSource, v16);
    v20 = _Block_copy(filterCopy);
    filter = v19->_filter;
    v19->_filter = v20;
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  home = [(HFStatusItemProvider *)self home];
  room = [(HFStatusItemProvider *)self room];
  valueSource = [(HFStatusItemProvider *)self valueSource];
  filter = [(HFStatusItemProvider *)self filter];
  v9 = [v4 initWithHome:home room:room overrideValueSource:valueSource filter:filter];

  return v9;
}

- (id)_createStatusItemsForHome:(id)home room:(id)room valueSource:(id)source filter:(id)filter
{
  homeCopy = home;
  roomCopy = room;
  sourceCopy = source;
  filterCopy = filter;
  _statusItemClasses = [objc_opt_class() _statusItemClasses];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __74__HFStatusItemProvider__createStatusItemsForHome_room_valueSource_filter___block_invoke;
  v21[3] = &unk_277DFA038;
  v24 = sourceCopy;
  v25 = filterCopy;
  v21[4] = self;
  v22 = homeCopy;
  v23 = roomCopy;
  v15 = sourceCopy;
  v16 = roomCopy;
  v17 = homeCopy;
  v18 = filterCopy;
  v19 = [_statusItemClasses na_map:v21];

  return v19;
}

id __74__HFStatusItemProvider__createStatusItemsForHome_room_valueSource_filter___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 64);
  if (v4 && !(*(v4 + 16))(v4, a2))
  {
    v5 = 0;
  }

  else
  {
    v5 = [*(a1 + 32) _buildStatusItemWithClass:a2 home:*(a1 + 40) room:*(a1 + 48) valueSource:*(a1 + 56)];
  }

  return v5;
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
    [(HFStatusItemProvider *)self _buildStatusItemsForGroupedStatusItem:v16];
  }

  return v14;
}

- (void)_buildStatusItemsForGroupedStatusItem:(id)item
{
  itemCopy = item;
  statusItemClasses = [objc_opt_class() statusItemClasses];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HFStatusItemProvider__buildStatusItemsForGroupedStatusItem___block_invoke;
  v7[3] = &unk_277DFA060;
  v7[4] = self;
  v8 = itemCopy;
  v6 = itemCopy;
  [statusItemClasses na_each:v7];
}

void __62__HFStatusItemProvider__buildStatusItemsForGroupedStatusItem___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) home];
  v6 = [*(a1 + 40) room];
  v7 = [*(a1 + 40) valueSource];
  v8 = [v4 _buildStatusItemWithClass:a2 home:v5 room:v6 valueSource:v7];

  [*(a1 + 40) addItem:v8];
}

@end