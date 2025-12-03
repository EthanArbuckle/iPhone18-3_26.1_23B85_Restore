@interface HFZoneModule
- (BOOL)canExpand;
- (BOOL)toggleExpansion;
- (HFZoneModule)initWithItemUpdater:(id)updater room:(id)room;
- (NSSet)itemProviders;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (void)_reloadItemProviders;
- (void)home:(id)home didAddRoom:(id)room toZone:(id)zone;
- (void)home:(id)home didAddZone:(id)zone;
- (void)home:(id)home didRemoveRoom:(id)room fromZone:(id)zone;
- (void)home:(id)home didRemoveZone:(id)zone;
- (void)home:(id)home didUpdateNameForZone:(id)zone;
- (void)setExpanded:(BOOL)expanded;
@end

@implementation HFZoneModule

- (HFZoneModule)initWithItemUpdater:(id)updater room:(id)room
{
  roomCopy = room;
  v26.receiver = self;
  v26.super_class = HFZoneModule;
  v8 = [(HFItemModule *)&v26 initWithItemUpdater:updater];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_room, room);
    v10 = [HFZoneItemProvider alloc];
    home = [roomCopy home];
    v12 = [(HFZoneItemProvider *)v10 initWithHome:home];
    zoneItemProvider = v9->_zoneItemProvider;
    v9->_zoneItemProvider = v12;

    v14 = [HFZoneSuggestionItemProvider alloc];
    home2 = [roomCopy home];
    v16 = [(HFZoneSuggestionItemProvider *)v14 initWithHome:home2];
    zoneSuggestionItemProvider = v9->_zoneSuggestionItemProvider;
    v9->_zoneSuggestionItemProvider = v16;

    v18 = [[HFCurrentZonesItem alloc] initWithRoom:roomCopy];
    currentZoneItem = v9->_currentZoneItem;
    v9->_currentZoneItem = v18;

    v20 = [HFStaticItemProvider alloc];
    v21 = [MEMORY[0x277CBEB98] setWithObject:v9->_currentZoneItem];
    v22 = [(HFStaticItemProvider *)v20 initWithItems:v21];
    currentZoneItemProvider = v9->_currentZoneItemProvider;
    v9->_currentZoneItemProvider = v22;

    v24 = +[HFHomeKitDispatcher sharedDispatcher];
    [v24 addHomeObserver:v9];
  }

  return v9;
}

- (NSSet)itemProviders
{
  itemProviders = self->_itemProviders;
  if (itemProviders)
  {
    v3 = itemProviders;
  }

  else
  {
    objc_initWeak(location, self);
    room = [(HFZoneModule *)self room];
    v6 = [HFStaticItem alloc];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __29__HFZoneModule_itemProviders__block_invoke;
    v36[3] = &unk_277DFA878;
    objc_copyWeak(&v38, location);
    v7 = room;
    v37 = v7;
    v8 = [(HFStaticItem *)v6 initWithResultsBlock:v36];
    [(HFZoneModule *)self setCreateNewZoneItem:v8];

    v9 = [HFStaticItemProvider alloc];
    v10 = MEMORY[0x277CBEB98];
    createNewZoneItem = [(HFZoneModule *)self createNewZoneItem];
    v12 = [v10 setWithObject:createNewZoneItem];
    v13 = [(HFStaticItemProvider *)v9 initWithItems:v12];
    [(HFZoneModule *)self setCreateNewZoneItemProvider:v13];

    aBlock = MEMORY[0x277D85DD0];
    v31 = 3221225472;
    v32 = __29__HFZoneModule_itemProviders__block_invoke_2;
    v33 = &unk_277DFA8C8;
    objc_copyWeak(&v35, location);
    v14 = v7;
    v34 = v14;
    v15 = _Block_copy(&aBlock);
    v16 = [HFTransformItemProvider alloc];
    zoneItemProvider = [(HFZoneModule *)self zoneItemProvider];
    v18 = [(HFTransformItemProvider *)v16 initWithSourceProvider:zoneItemProvider transformationBlock:v15];

    v19 = [HFTransformItemProvider alloc];
    zoneSuggestionItemProvider = [(HFZoneModule *)self zoneSuggestionItemProvider];
    v21 = [(HFTransformItemProvider *)v19 initWithSourceProvider:zoneSuggestionItemProvider transformationBlock:v15];

    v22 = [HFTransformItemProvider alloc];
    currentZoneItemProvider = [(HFZoneModule *)self currentZoneItemProvider];
    v24 = [(HFTransformItemProvider *)v22 initWithSourceProvider:currentZoneItemProvider transformationBlock:v15];

    v25 = MEMORY[0x277CBEB98];
    createNewZoneItemProvider = [(HFZoneModule *)self createNewZoneItemProvider];
    v27 = [v25 setWithObjects:{v18, v21, createNewZoneItemProvider, v24, 0, aBlock, v31, v32, v33}];
    v28 = self->_itemProviders;
    self->_itemProviders = v27;

    v3 = self->_itemProviders;
    objc_destroyWeak(&v35);

    objc_destroyWeak(&v38);
    objc_destroyWeak(location);
  }

  return v3;
}

id __29__HFZoneModule_itemProviders__block_invoke(uint64_t a1)
{
  v15[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = MEMORY[0x277D2C900];
  v14[0] = @"title";
  v4 = 1;
  v5 = _HFLocalizedStringWithDefaultValue(@"HFZoneModuleCreateNew", @"HFZoneModuleCreateNew", 1);
  v15[0] = v5;
  v14[1] = @"titlePlaceholder";
  v6 = _HFLocalizedStringWithDefaultValue(@"HFZoneModuleCreateNewPlaceholder", @"HFZoneModuleCreateNewPlaceholder", 1);
  v15[1] = v6;
  v14[2] = @"hidden";
  v7 = MEMORY[0x277CCABB0];
  v8 = [*(a1 + 32) home];
  if ([v8 hf_currentUserIsAdministrator])
  {
    v4 = [WeakRetained isExpanded] ^ 1;
  }

  v9 = [v7 numberWithInt:v4];
  v15[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
  v11 = [v3 futureWithResult:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

_HFDeletableTransformItem *__29__HFZoneModule_itemProviders__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [_HFDeletableTransformItem alloc];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__HFZoneModule_itemProviders__block_invoke_3;
  v8[3] = &unk_277DFA8A0;
  objc_copyWeak(&v11, (a1 + 40));
  v5 = v3;
  v9 = v5;
  v10 = *(a1 + 32);
  v6 = [(HFTransformItem *)v4 initWithSourceItem:v5 transformationBlock:v8];

  objc_destroyWeak(&v11);

  return v6;
}

id __29__HFZoneModule_itemProviders__block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = [v3 mutableCopy];

  v6 = a1[4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(WeakRetained, "isExpanded")}];
    [v5 setObject:v7 forKeyedSubscript:@"hidden"];
    goto LABEL_10;
  }

  v8 = a1[4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = a1[4];
  if (isKindOfClass)
  {
    v11 = [a1[4] zone];
    v12 = MEMORY[0x277CBEB98];
    v13 = [v11 rooms];
    v7 = [v12 setWithArray:v13];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v11 = [a1[4] zoneBuilder];
    v7 = [v11 rooms];
  }

LABEL_9:
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "containsObject:", a1[5])}];
  [v5 setObject:v14 forKeyedSubscript:@"selected"];

  v15 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(WeakRetained, "isExpanded") ^ 1}];
  [v5 setObject:v15 forKeyedSubscript:@"hidden"];

LABEL_10:
  v16 = [a1[5] home];
  v17 = [v16 hf_currentUserIsAdministrator];

  if ((v17 & 1) == 0)
  {
    v18 = a1[4];
    v19 = [WeakRetained currentZoneItem];

    if (v18 != v19)
    {
      [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isDisabled"];
    }

    v20 = a1[4];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || (v21 = a1[4], [WeakRetained createNewZoneItem], v22 = objc_claimAutoreleasedReturnValue(), v22, v21 == v22))
    {
      [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    }

    [v5 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:@"selected"];
  }

  return v5;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v23[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  if ([itemsCopy count])
  {
    v5 = [itemsCopy na_filter:&__block_literal_global_99];
    v6 = [v5 na_filter:&__block_literal_global_211];
    allObjects = [v6 allObjects];
    v8 = [allObjects sortedArrayUsingComparator:&__block_literal_global_214_0];

    v9 = [v5 na_filter:&__block_literal_global_216_1];
    allObjects2 = [v9 allObjects];
    v11 = [allObjects2 sortedArrayUsingComparator:&__block_literal_global_219];

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __48__HFZoneModule_buildSectionsWithDisplayedItems___block_invoke_6;
    v22[3] = &unk_277DFA930;
    v22[4] = self;
    v12 = [v5 na_firstObjectPassingTest:v22];
    v13 = objc_opt_new();
    [v13 na_safeAddObject:v12];
    [v13 addObjectsFromArray:v8];
    [v13 addObjectsFromArray:v11];
    createNewZoneItem = [(HFZoneModule *)self createNewZoneItem];
    v15 = [itemsCopy containsObject:createNewZoneItem];

    if (v15)
    {
      createNewZoneItem2 = [(HFZoneModule *)self createNewZoneItem];
      [v13 na_safeAddObject:createNewZoneItem2];
    }

    if ([v13 count])
    {
      v17 = [(HFItemSection *)[HFMutableItemSection alloc] initWithIdentifier:@"ZONE_SECTION"];
      [(HFItemSection *)v17 setItems:v13];
      v18 = _HFLocalizedStringWithDefaultValue(@"HF_SERVICE_DETAILS_ZONE_FOOTER", @"HF_SERVICE_DETAILS_ZONE_FOOTER", 1);
      [(HFItemSection *)v17 setFooterTitle:v18];

      v23[0] = v17;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
    }

    else
    {
      v19 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

uint64_t __48__HFZoneModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __48__HFZoneModule_buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 sourceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __48__HFZoneModule_buildSectionsWithDisplayedItems___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = [v5 objectForKey:@"title"];
  v7 = [v4 latestResults];

  v8 = [v7 objectForKey:@"title"];
  v9 = [v6 compare:v8];

  return v9;
}

uint64_t __48__HFZoneModule_buildSectionsWithDisplayedItems___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 sourceItem];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __48__HFZoneModule_buildSectionsWithDisplayedItems___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 latestResults];
  v6 = [v5 objectForKey:@"title"];
  v7 = [v4 latestResults];

  v8 = [v7 objectForKey:@"title"];
  v9 = [v6 compare:v8];

  return v9;
}

BOOL __48__HFZoneModule_buildSectionsWithDisplayedItems___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 sourceItem];
  v4 = [*(a1 + 32) currentZoneItem];
  v5 = v3 == v4;

  return v5;
}

- (BOOL)toggleExpansion
{
  [(HFZoneModule *)self setExpanded:[(HFZoneModule *)self isExpanded]^ 1];

  return [(HFZoneModule *)self isExpanded];
}

- (BOOL)canExpand
{
  zoneItemProvider = [(HFZoneModule *)self zoneItemProvider];
  home = [zoneItemProvider home];
  hf_currentUserIsAdministrator = [home hf_currentUserIsAdministrator];

  if (hf_currentUserIsAdministrator)
  {
    return 1;
  }

  room = [(HFZoneModule *)self room];
  hf_allZones = [room hf_allZones];
  v6 = [hf_allZones count] > 1;

  return v6;
}

- (void)setExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  if ([(HFZoneModule *)self canExpand]&& self->_expanded != expandedCopy)
  {
    self->_expanded = expandedCopy;

    [(HFZoneModule *)self _reloadItemProviders];
  }
}

- (void)_reloadItemProviders
{
  itemProviders = [(HFZoneModule *)self itemProviders];
  v7 = [HFItemUpdateRequest requestToReloadItemProviders:itemProviders senderSelector:a2];

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v6 = [itemUpdater performItemUpdateRequest:v7];
}

- (void)home:(id)home didAddZone:(id)zone
{
  rooms = [zone rooms];
  room = [(HFZoneModule *)self room];
  v7 = [rooms containsObject:room];

  if (v7)
  {

    [(HFZoneModule *)self _reloadItemProviders];
  }
}

- (void)home:(id)home didRemoveZone:(id)zone
{
  rooms = [zone rooms];
  room = [(HFZoneModule *)self room];
  v7 = [rooms containsObject:room];

  if (v7)
  {

    [(HFZoneModule *)self _reloadItemProviders];
  }
}

- (void)home:(id)home didUpdateNameForZone:(id)zone
{
  rooms = [zone rooms];
  room = [(HFZoneModule *)self room];
  v7 = [rooms containsObject:room];

  if (v7)
  {

    [(HFZoneModule *)self _reloadItemProviders];
  }
}

- (void)home:(id)home didAddRoom:(id)room toZone:(id)zone
{
  roomCopy = room;
  room = [(HFZoneModule *)self room];
  v8 = [roomCopy isEqual:room];

  if (v8)
  {

    [(HFZoneModule *)self _reloadItemProviders];
  }
}

- (void)home:(id)home didRemoveRoom:(id)room fromZone:(id)zone
{
  roomCopy = room;
  room = [(HFZoneModule *)self room];
  v8 = [roomCopy isEqual:room];

  if (v8)
  {

    [(HFZoneModule *)self _reloadItemProviders];
  }
}

@end