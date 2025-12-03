@interface HUAccessorySceneListContentItemManager
+ (BOOL)_action:(id)_action involvesServiceLikeItem:(id)item;
+ (BOOL)matterAction:(id)action involves:(id)involves;
+ (id)computeNumberOfItemsToDisplayForContentSource:(unint64_t)source serviceLikeItem:(id)item home:(id)home;
+ (id)createItemProviderForContentSource:(unint64_t)source serviceLikeItem:(id)item home:(id)home persistAddedSuggestions:(BOOL)suggestions;
- (HUAccessorySceneListContentItemManager)initWithDelegate:(id)delegate contentSource:(unint64_t)source serviceLikeItem:(id)item;
- (HUAccessorySceneListContentItemManager)initWithDelegate:(id)delegate sourceItem:(id)item shouldGroupByRoom:(BOOL)room shouldShowSectionHeaders:(BOOL)headers itemProvidersCreator:(id)creator;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_transformedUpdateOutcomeForItem:(id)item proposedOutcome:(id)outcome;
- (id)actionSetBuilderForItem:(id)item;
- (id)commitSelectionChangesWithSelectedItems:(id)items;
- (id)suggestionItemProvider;
@end

@implementation HUAccessorySceneListContentItemManager

+ (BOOL)matterAction:(id)action involves:(id)involves
{
  actionCopy = action;
  swift_unknownObjectRetain();
  v6 = _sSo38HUAccessorySceneListContentItemManagerC6HomeUIE12matterAction_8involvesSbSo015HMMatterCommandJ0C_So013HFServiceLikeE0_ptFZ_0(actionCopy, involves);

  swift_unknownObjectRelease();
  return v6 & 1;
}

- (HUAccessorySceneListContentItemManager)initWithDelegate:(id)delegate sourceItem:(id)item shouldGroupByRoom:(BOOL)room shouldShowSectionHeaders:(BOOL)headers itemProvidersCreator:(id)creator
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v10 = NSStringFromSelector(sel_initWithDelegate_contentSource_serviceLikeItem_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAccessorySceneListContentItemManager.m" lineNumber:24 description:{@"%s is unavailable; use %@ instead", "-[HUAccessorySceneListContentItemManager initWithDelegate:sourceItem:shouldGroupByRoom:shouldShowSectionHeaders:itemProvidersCreator:]", v10}];

  return 0;
}

- (HUAccessorySceneListContentItemManager)initWithDelegate:(id)delegate contentSource:(unint64_t)source serviceLikeItem:(id)item
{
  itemCopy = item;
  v15.receiver = self;
  v15.super_class = HUAccessorySceneListContentItemManager;
  v10 = [(HUServiceGridItemManager *)&v15 initWithDelegate:delegate sourceItem:0 shouldGroupByRoom:0 shouldShowSectionHeaders:0 itemProvidersCreator:&__block_literal_global_231];
  v11 = v10;
  if (v10)
  {
    v10->_contentSource = source;
    objc_storeStrong(&v10->_serviceLikeItem, item);
    v12 = objc_opt_new();
    committedActionBuildersByActionSetID = v11->_committedActionBuildersByActionSetID;
    v11->_committedActionBuildersByActionSetID = v12;
  }

  return v11;
}

+ (id)createItemProviderForContentSource:(unint64_t)source serviceLikeItem:(id)item home:(id)home persistAddedSuggestions:(BOOL)suggestions
{
  v18[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  homeCopy = home;
  if (source == 1)
  {
    v12 = objc_alloc(MEMORY[0x277D17E38]);
    v18[0] = itemCopy;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v6 = [v12 initWithHome:homeCopy andServiceLikeItems:v13];

    [v6 setEngineOptions:{objc_msgSend(v6, "engineOptions") & 0xFFFFFFFFFFFFFFEFLL}];
  }

  else if (!source)
  {
    v6 = [objc_alloc(MEMORY[0x277D143A8]) initWithHome:homeCopy actionSetItemStyle:0];
    [v6 setServiceLikeItem:itemCopy];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __122__HUAccessorySceneListContentItemManager_createItemProviderForContentSource_serviceLikeItem_home_persistAddedSuggestions___block_invoke;
    v15[3] = &unk_277DC2408;
    selfCopy = self;
    v16 = itemCopy;
    [v6 setFilter:v15];
  }

  return v6;
}

uint64_t __122__HUAccessorySceneListContentItemManager_createItemProviderForContentSource_serviceLikeItem_home_persistAddedSuggestions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [v6 actions];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __122__HUAccessorySceneListContentItemManager_createItemProviderForContentSource_serviceLikeItem_home_persistAddedSuggestions___block_invoke_2;
  v12[3] = &unk_277DC23E0;
  v11 = *(a1 + 32);
  v8 = v11;
  v13 = v11;
  v9 = [v7 na_any:v12];

  return v9;
}

+ (id)computeNumberOfItemsToDisplayForContentSource:(unint64_t)source serviceLikeItem:(id)item home:(id)home
{
  itemCopy = item;
  homeCopy = home;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__27;
  v19 = __Block_byref_object_dispose__27;
  v20 = [self createItemProviderForContentSource:source serviceLikeItem:itemCopy home:homeCopy persistAddedSuggestions:0];
  reloadItems = [v16[5] reloadItems];
  v11 = [reloadItems flatMap:&__block_literal_global_94_0];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __109__HUAccessorySceneListContentItemManager_computeNumberOfItemsToDisplayForContentSource_serviceLikeItem_home___block_invoke_3;
  v14[3] = &unk_277DC2490;
  v14[4] = &v15;
  v12 = [v11 flatMap:v14];

  _Block_object_dispose(&v15, 8);

  return v12;
}

id __109__HUAccessorySceneListContentItemManager_computeNumberOfItemsToDisplayForContentSource_serviceLikeItem_home___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = [a2 allItems];
  v4 = [v3 allObjects];
  v5 = [v4 na_map:&__block_literal_global_98_1];
  v6 = [v2 combineAllFutures:v5];

  return v6;
}

id __109__HUAccessorySceneListContentItemManager_computeNumberOfItemsToDisplayForContentSource_serviceLikeItem_home___block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a2 na_filter:&__block_literal_global_101_1];
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 count];
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v13 = 134218242;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_20CEB6000, v4, OS_LOG_TYPE_DEFAULT, "Computed number of items to display: %lu with item provider: %@", &v13, 0x16u);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  v9 = MEMORY[0x277D2C900];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
  v11 = [v9 futureWithResult:v10];

  return v11;
}

uint64_t __109__HUAccessorySceneListContentItemManager_computeNumberOfItemsToDisplayForContentSource_serviceLikeItem_home___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:*MEMORY[0x277D13FB8]];
  v3 = v2;
  if (v2 == MEMORY[0x277CBEC38])
  {
    v4 = 0;
  }

  else if (v2)
  {
    v4 = [v2 isEqual:MEMORY[0x277CBEC38]] ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)actionSetBuilderForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  v5 = itemCopy;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x277D14398]);
    actionSet = [v7 actionSet];
    home = [(HFItemManager *)self home];
    v11 = [v8 initWithExistingObject:actionSet inHome:home];
  }

  else
  {
    latestResults = [v5 latestResults];
    v13 = *MEMORY[0x277D13D40];
    v14 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13D40]];

    if (v14)
    {
      latestResults2 = [v5 latestResults];
      v11 = [latestResults2 objectForKeyedSubscript:v13];
    }

    else
    {
      NSLog(&cfstr_UnexpectedItem_2.isa, v5);
      v11 = 0;
    }
  }

  return v11;
}

- (id)commitSelectionChangesWithSelectedItems:(id)items
{
  itemsCopy = items;
  v5 = MEMORY[0x277D2C900];
  allDisplayedItems = [(HFItemManager *)self allDisplayedItems];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __82__HUAccessorySceneListContentItemManager_commitSelectionChangesWithSelectedItems___block_invoke;
  v15 = &unk_277DC24E0;
  selfCopy = self;
  v17 = itemsCopy;
  v7 = itemsCopy;
  v8 = [allDisplayedItems na_map:&v12];
  allObjects = [v8 allObjects];
  v10 = [v5 combineAllFutures:allObjects];

  return v10;
}

id __82__HUAccessorySceneListContentItemManager_commitSelectionChangesWithSelectedItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) actionSetBuilderForItem:v3];
  if (!v4)
  {
    v11 = 0;
    goto LABEL_9;
  }

  v5 = [*(a1 + 32) committedActionBuildersByActionSetID];
  v6 = [v4 actionSet];
  v7 = [v6 uniqueIdentifier];
  v8 = [v5 na_objectForKey:v7 withDefaultValue:&__block_literal_global_111_6];

  if ([*(a1 + 40) containsObject:v3])
  {
    v9 = [v4 actions];
    v10 = [v9 na_filter:&__block_literal_global_115_0];
    [v8 addObjectsFromArray:v10];
  }

  else
  {
    if (![v8 count])
    {
      v11 = 0;
      goto LABEL_8;
    }

    v12 = [v4 actions];
    v13 = [v12 copy];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __82__HUAccessorySceneListContentItemManager_commitSelectionChangesWithSelectedItems___block_invoke_4;
    v18 = &unk_277DC24B8;
    v19 = v8;
    v20 = v4;
    [v13 na_each:&v15];
  }

  v11 = [v4 commitItem];
LABEL_8:

LABEL_9:

  return v11;
}

BOOL __82__HUAccessorySceneListContentItemManager_commitSelectionChangesWithSelectedItems___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 action];
  v3 = v2 == 0;

  return v3;
}

void __82__HUAccessorySceneListContentItemManager_commitSelectionChangesWithSelectedItems___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __82__HUAccessorySceneListContentItemManager_commitSelectionChangesWithSelectedItems___block_invoke_5;
  v6[3] = &unk_277DB96C8;
  v5 = v3;
  v7 = v5;
  if ([v4 na_any:v6])
  {
    [*(a1 + 40) removeAction:v5];
  }
}

uint64_t __82__HUAccessorySceneListContentItemManager_commitSelectionChangesWithSelectedItems___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 createNewAction];
  v5 = [v3 hasSameTargetAsAction:v4];

  return v5;
}

- (id)_buildItemProvidersForHome:(id)home
{
  v10[1] = *MEMORY[0x277D85DE8];
  homeCopy = home;
  contentSource = [(HUAccessorySceneListContentItemManager *)self contentSource];
  serviceLikeItem = [(HUAccessorySceneListContentItemManager *)self serviceLikeItem];
  v7 = [HUAccessorySceneListContentItemManager createItemProviderForContentSource:contentSource serviceLikeItem:serviceLikeItem home:homeCopy persistAddedSuggestions:[(HUAccessorySceneListContentItemManager *)self persistAddedSuggestions]];

  v10[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  return v8;
}

- (id)_transformedUpdateOutcomeForItem:(id)item proposedOutcome:(id)outcome
{
  itemCopy = item;
  outcomeCopy = outcome;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [outcomeCopy mutableCopy];

    [v8 setObject:&unk_282491FB8 forKeyedSubscript:*MEMORY[0x277D14068]];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = HUAccessorySceneListContentItemManager;
    v8 = [(HFItemManager *)&v10 _transformedUpdateOutcomeForItem:itemCopy proposedOutcome:outcomeCopy];
  }

  return v8;
}

- (id)suggestionItemProvider
{
  itemProviders = [(HFItemManager *)self itemProviders];
  v3 = [itemProviders na_firstObjectPassingTest:&__block_literal_global_124_4];

  return v3;
}

uint64_t __64__HUAccessorySceneListContentItemManager_suggestionItemProvider__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)_action:(id)_action involvesServiceLikeItem:(id)item
{
  _actionCopy = _action;
  itemCopy = item;
  hf_affectedCharacteristic = [_actionCopy hf_affectedCharacteristic];
  if (hf_affectedCharacteristic && (v8 = hf_affectedCharacteristic, [itemCopy services], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(_actionCopy, "hf_affectedCharacteristic"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "service"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v9, "containsObject:", v11), v11, v10, v9, v8, (v12 & 1) != 0))
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    v14 = _actionCopy;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16 && [HUAccessorySceneListContentItemManager matterAction:v16 involves:itemCopy])
    {
      v13 = 1;
    }

    else
    {
      v17 = itemCopy;
      if ([v17 conformsToProtocol:&unk_28251B3F0])
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      hf_affectedAccessoryProfiles = [v14 hf_affectedAccessoryProfiles];
      if (hf_affectedAccessoryProfiles)
      {
        profiles = [v19 profiles];
        hf_affectedAccessoryProfiles2 = [v14 hf_affectedAccessoryProfiles];
        v13 = [profiles intersectsSet:hf_affectedAccessoryProfiles2];
      }

      else
      {
        v13 = 0;
      }
    }
  }

  return v13;
}

@end