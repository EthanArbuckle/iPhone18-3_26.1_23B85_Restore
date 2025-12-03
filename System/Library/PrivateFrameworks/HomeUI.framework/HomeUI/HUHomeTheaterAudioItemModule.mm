@interface HUHomeTheaterAudioItemModule
- (HFItem)selectedUncommittedItem;
- (HUHomeTheaterAudioItemModule)initWithItemUpdater:(id)updater mediaProfileContainer:(id)container includeLocalDestinations:(BOOL)destinations;
- (HUHomeTheaterAudioItemModuleAlertDelegate)alertDelegate;
- (HUHomeTheaterAudioItemModuleOnboardingDelegate)onboardingDelegate;
- (id)_updateDestinationToIdentifier:(id)identifier;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)commitConfiguration;
- (void)_createItemProviders;
- (void)_selectItem:(id)item;
- (void)selectItem:(id)item;
@end

@implementation HUHomeTheaterAudioItemModule

- (HUHomeTheaterAudioItemModule)initWithItemUpdater:(id)updater mediaProfileContainer:(id)container includeLocalDestinations:(BOOL)destinations
{
  updaterCopy = updater;
  containerCopy = container;
  if (!containerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUHomeTheaterAudioItemModule.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];
  }

  v15.receiver = self;
  v15.super_class = HUHomeTheaterAudioItemModule;
  v11 = [(HFItemModule *)&v15 initWithItemUpdater:updaterCopy];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaProfileContainer, container);
    v12->_includeLocalDestinations = destinations;
    v12->_disableAutomaticCommit = 0;
    objc_storeWeak(&v12->_selectedUncommittedItem, 0);
    [(HUHomeTheaterAudioItemModule *)v12 _createItemProviders];
  }

  return v12;
}

- (void)_createItemProviders
{
  if (self->_itemProviders)
  {
    NSLog(&cfstr_Createitemprov.isa, a2);
  }

  else
  {
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    if ([(HUHomeTheaterAudioItemModule *)self includeLocalDestinations])
    {
      v4 = [[HUMediaDestinationItem alloc] initWithDestination:0 withModule:self];
      [orderedSet addObject:v4];
    }

    mediaProfileContainer = [(HUHomeTheaterAudioItemModule *)self mediaProfileContainer];
    hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
    audioDestinationController = [hf_backingAccessory audioDestinationController];
    availableDestinations = [audioDestinationController availableDestinations];

    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __52__HUHomeTheaterAudioItemModule__createItemProviders__block_invoke;
    v18 = &unk_277DBE9C8;
    selfCopy = self;
    v20 = orderedSet;
    v9 = orderedSet;
    [availableDestinations na_each:&v15];
    v10 = objc_alloc(MEMORY[0x277D14B40]);
    v11 = [v9 set];
    v12 = [v10 initWithItems:v11];

    v13 = [MEMORY[0x277CBEB98] setWithObject:v12];
    itemProviders = self->_itemProviders;
    self->_itemProviders = v13;
  }
}

void __52__HUHomeTheaterAudioItemModule__createItemProviders__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[HUMediaDestinationItem alloc] initWithDestination:v3 withModule:*(a1 + 32)];

  [*(a1 + 40) addObject:v4];
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D14850];
  itemsCopy = items;
  v6 = [[v4 alloc] initWithIdentifier:@"HomeTheaterAudio"];
  if ([(HUHomeTheaterAudioItemModule *)self includeLocalDestinations])
  {
    v7 = _HULocalizedStringWithDefaultValue(@"HUHomeTheaterSettings_FooterTitle", @"HUHomeTheaterSettings_FooterTitle", 1);
    [v6 setFooterTitle:v7];
  }

  allItems = [(HFItemModule *)self allItems];
  v9 = [allItems na_setByIntersectingWithSet:itemsCopy];

  allObjects = [v9 allObjects];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__HUHomeTheaterAudioItemModule_buildSectionsWithDisplayedItems___block_invoke_2;
  v14[3] = &unk_277DBE9F0;
  v15 = &__block_literal_global_137;
  v11 = [allObjects sortedArrayUsingComparator:v14];
  [v6 setItems:v11];

  v16[0] = v6;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];

  return v12;
}

uint64_t __64__HUHomeTheaterAudioItemModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13FF8]];
  v8 = [v7 isEqualToString:@"kIdentifierStringForBuiltIn"];

  return v8;
}

uint64_t __64__HUHomeTheaterAudioItemModule_buildSectionsWithDisplayedItems___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ((*(*(a1 + 32) + 16))())
  {
    v7 = -1;
  }

  else if ((*(*(a1 + 32) + 16))())
  {
    v7 = 1;
  }

  else
  {
    v8 = [MEMORY[0x277D14778] defaultItemComparator];
    v7 = (v8)[2](v8, v5, v6);
  }

  return v7;
}

- (id)commitConfiguration
{
  selectedUncommittedItem = [(HUHomeTheaterAudioItemModule *)self selectedUncommittedItem];
  latestResults = [selectedUncommittedItem latestResults];
  v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FF8]];

  v6 = [(HUHomeTheaterAudioItemModule *)self _updateDestinationToIdentifier:v5];

  return v6;
}

- (void)selectItem:(id)item
{
  itemCopy = item;
  latestResults = [itemCopy latestResults];
  v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
  bOOLValue = [v5 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    [(HUHomeTheaterAudioItemModule *)self _selectItem:itemCopy];
  }
}

- (void)_selectItem:(id)item
{
  itemCopy = item;
  if ([(HUHomeTheaterAudioItemModule *)self disableAutomaticCommit])
  {
    objc_storeWeak(&self->_selectedUncommittedItem, itemCopy);
  }

  else
  {
    latestResults = [itemCopy latestResults];

    v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13FF8]];
    [(HUHomeTheaterAudioItemModule *)self setTappedDestinationIdentifier:v7];

    itemCopy = [(HUHomeTheaterAudioItemModule *)self tappedDestinationIdentifier];
    v8 = [(HUHomeTheaterAudioItemModule *)self _updateDestinationToIdentifier:itemCopy];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __44__HUHomeTheaterAudioItemModule__selectItem___block_invoke;
    v17[3] = &unk_277DBB420;
    v17[4] = self;
    v17[5] = a2;
    v9 = [v8 addCompletionBlock:v17];
  }

  onboardingDelegate = [(HUHomeTheaterAudioItemModule *)self onboardingDelegate];

  if (onboardingDelegate)
  {
    onboardingDelegate2 = [(HUHomeTheaterAudioItemModule *)self onboardingDelegate];
    [onboardingDelegate2 homeTheaterItemModuleDidChangeSelectedDestination:self];
  }

  v12 = MEMORY[0x277D14788];
  itemProviders = [(HUHomeTheaterAudioItemModule *)self itemProviders];
  v14 = [v12 requestToReloadItemProviders:itemProviders senderSelector:a2];

  itemUpdater = [(HFItemModule *)self itemUpdater];
  v16 = [itemUpdater performItemUpdateRequest:v14];
}

void __44__HUHomeTheaterAudioItemModule__selectItem___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) setTappedDestinationIdentifier:0];
  if (a3)
  {
    v5 = MEMORY[0x277D14788];
    v6 = [*(a1 + 32) itemProviders];
    v9 = [v5 requestToReloadItemProviders:v6 senderSelector:*(a1 + 40)];

    v7 = [*(a1 + 32) itemUpdater];
    v8 = [v7 performItemUpdateRequest:v9];
  }
}

- (id)_updateDestinationToIdentifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  mediaProfileContainer = [(HUHomeTheaterAudioItemModule *)self mediaProfileContainer];
  hf_backingAccessory = [mediaProfileContainer hf_backingAccessory];
  audioDestinationController = [hf_backingAccessory audioDestinationController];
  availableDestinations = [audioDestinationController availableDestinations];

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __63__HUHomeTheaterAudioItemModule__updateDestinationToIdentifier___block_invoke;
  v22[3] = &unk_277DBEA18;
  v23 = identifierCopy;
  v10 = identifierCopy;
  v11 = [availableDestinations na_firstObjectPassingTest:v22];
  v12 = HFLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    *buf = 138413058;
    selfCopy = self;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v11;
    v30 = 2112;
    v31 = availableDestinations;
    _os_log_impl(&dword_20CEB6000, v12, OS_LOG_TYPE_DEFAULT, "%@:%@ setting destination to %@ from possible destinations %@", buf, 0x2Au);
  }

  v14 = MEMORY[0x277D2C900];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63__HUHomeTheaterAudioItemModule__updateDestinationToIdentifier___block_invoke_31;
  v20[3] = &unk_277DBB448;
  v20[4] = self;
  v21 = v11;
  v15 = v11;
  v16 = [v14 futureWithErrorOnlyHandlerAdapterBlock:v20];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __63__HUHomeTheaterAudioItemModule__updateDestinationToIdentifier___block_invoke_2;
  v19[3] = &unk_277DBB420;
  v19[4] = self;
  v19[5] = a2;
  v17 = [v16 addCompletionBlock:v19];

  return v17;
}

uint64_t __63__HUHomeTheaterAudioItemModule__updateDestinationToIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 audioDestinationIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __63__HUHomeTheaterAudioItemModule__updateDestinationToIdentifier___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 mediaProfileContainer];
  v5 = [v7 hf_backingAccessory];
  v6 = [v5 audioDestinationController];
  [v6 updateDestination:*(a1 + 40) completionHandler:v4];
}

void __63__HUHomeTheaterAudioItemModule__updateDestinationToIdentifier___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HFLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = NSStringFromSelector(*(a1 + 40));
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_20CEB6000, v5, OS_LOG_TYPE_DEFAULT, "%@:%@ completed with error: %@", &v8, 0x20u);
  }
}

- (HUHomeTheaterAudioItemModuleOnboardingDelegate)onboardingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_onboardingDelegate);

  return WeakRetained;
}

- (HUHomeTheaterAudioItemModuleAlertDelegate)alertDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_alertDelegate);

  return WeakRetained;
}

- (HFItem)selectedUncommittedItem
{
  WeakRetained = objc_loadWeakRetained(&self->_selectedUncommittedItem);

  return WeakRetained;
}

@end