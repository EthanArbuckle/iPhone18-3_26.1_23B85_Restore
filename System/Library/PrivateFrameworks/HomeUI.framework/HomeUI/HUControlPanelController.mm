@interface HUControlPanelController
- (BOOL)shouldShowSectionFooterForItem:(id)item;
- (BOOL)shouldShowSectionTitleForItem:(id)item;
- (Class)cellClassForItem:(id)item;
- (HUControlPanelController)initWithDelegate:(id)delegate;
- (HUControlPanelControllerDelegate)delegate;
- (id)_configurationForItem:(id)item;
- (id)_controlItemForControlView:(id)view;
- (id)_controlPanelItemForControlView:(id)view;
- (id)_createConfigurations;
- (id)_createWriteThrottleForControlItem:(id)item controlPanelItem:(id)panelItem;
- (id)_valueTransformerForControlItem:(id)item controlPanelItem:(id)panelItem;
- (id)sectionFooterForItem:(id)item forSourceItem:(id)sourceItem;
- (id)sectionTitleForItem:(id)item forSourceItem:(id)sourceItem;
- (void)_updateStateForControlView:(id)view controlPanelItem:(id)item;
- (void)_updateWriteStateForControlItem:(id)item controlPanelItem:(id)panelItem;
- (void)_updateWriteStateForControlView:(id)view;
- (void)addItem:(id)item;
- (void)controlView:(id)view valueDidChange:(id)change;
- (void)controlViewDidBeginUserInteraction:(id)interaction;
- (void)controlViewDidEndUserInteraction:(id)interaction;
- (void)removeItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUControlPanelController

- (HUControlPanelController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = HUControlPanelController;
  v5 = [(HUControlPanelController *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    _createConfigurations = [(HUControlPanelController *)v6 _createConfigurations];
    configurations = v6->_configurations;
    v6->_configurations = _createConfigurations;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    interactionStateByControlID = v6->_interactionStateByControlID;
    v6->_interactionStateByControlID = dictionary;

    v11 = [MEMORY[0x277CBEB58] set];
    allItems = v6->_allItems;
    v6->_allItems = v11;
  }

  return v6;
}

- (void)addItem:(id)item
{
  v22 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  allItems = [(HUControlPanelController *)self allItems];
  v6 = [allItems containsObject:itemCopy];

  if (v6)
  {
    NSLog(&cfstr_AlreadyAddedIt.isa, itemCopy);
  }

  [(NSMutableSet *)self->_allItems addObject:itemCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [itemCopy controlItems];
  v7 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [itemCopy identifierForControlItem:v11];
        v13 = [(HUControlPanelController *)self _createWriteThrottleForControlItem:v11 controlPanelItem:itemCopy];
        v14 = objc_alloc_init(HUControlInteractionState);
        [(HUControlInteractionState *)v14 setWriteThrottler:v13];
        interactionStateByControlID = [(HUControlPanelController *)self interactionStateByControlID];
        [interactionStateByControlID setObject:v14 forKeyedSubscript:v12];
      }

      v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)removeItem:(id)item
{
  v19 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  allItems = [(HUControlPanelController *)self allItems];
  v6 = [allItems containsObject:itemCopy];

  if ((v6 & 1) == 0)
  {
    NSLog(&cfstr_ItemNotFound.isa, itemCopy);
  }

  [(NSMutableSet *)self->_allItems removeObject:itemCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  controlItems = [itemCopy controlItems];
  v8 = [controlItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(controlItems);
        }

        v12 = [itemCopy identifierForControlItem:*(*(&v14 + 1) + 8 * v11)];
        interactionStateByControlID = [(HUControlPanelController *)self interactionStateByControlID];
        [interactionStateByControlID removeObjectForKey:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [controlItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (Class)cellClassForItem:(id)item
{
  v3 = [(HUControlPanelController *)self _configurationForItem:item];
  cellClass = [v3 cellClass];

  return cellClass;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  v22 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  itemCopy = item;
  allItems = [(HUControlPanelController *)self allItems];
  v9 = [allItems containsObject:itemCopy];

  if ((v9 & 1) == 0)
  {
    NSLog(&cfstr_AttemptingToSe.isa, itemCopy);
  }

  v10 = [(HUControlPanelController *)self _configurationForItem:itemCopy];
  [v10 setupControlsForCell:cellCopy item:itemCopy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allControlViews = [cellCopy allControlViews];
  v12 = [allControlViews countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(allControlViews);
        }

        v16 = *(*(&v17 + 1) + 8 * i);
        [v16 setDelegate:self];
        [(HUControlPanelController *)self _updateStateForControlView:v16 controlPanelItem:itemCopy];
      }

      v13 = [allControlViews countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  v21 = *MEMORY[0x277D85DE8];
  cellCopy = cell;
  itemCopy = item;
  allItems = [(HUControlPanelController *)self allItems];
  v10 = [allItems containsObject:itemCopy];

  if ((v10 & 1) == 0)
  {
    NSLog(&cfstr_AttemptingToUp.isa, itemCopy);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  allControlViews = [cellCopy allControlViews];
  v12 = [allControlViews countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(allControlViews);
        }

        [(HUControlPanelController *)self _updateStateForControlView:*(*(&v16 + 1) + 8 * v15++) controlPanelItem:itemCopy];
      }

      while (v13 != v15);
      v13 = [allControlViews countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (BOOL)shouldShowSectionTitleForItem:(id)item
{
  itemCopy = item;
  v5 = [(HUControlPanelController *)self _configurationForItem:itemCopy];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 shouldShowSectionTitleForItem:itemCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)shouldShowSectionFooterForItem:(id)item
{
  itemCopy = item;
  v5 = [(HUControlPanelController *)self _configurationForItem:itemCopy];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 shouldShowSectionFooterForItem:itemCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)sectionTitleForItem:(id)item forSourceItem:(id)sourceItem
{
  itemCopy = item;
  sourceItemCopy = sourceItem;
  if ([(HUControlPanelController *)self shouldShowSectionTitleForItem:itemCopy])
  {
    v8 = [(HUControlPanelController *)self _configurationForItem:itemCopy];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v8 sectionTitleForItem:itemCopy forSourceItem:sourceItemCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)sectionFooterForItem:(id)item forSourceItem:(id)sourceItem
{
  itemCopy = item;
  sourceItemCopy = sourceItem;
  if ([(HUControlPanelController *)self shouldShowSectionFooterForItem:itemCopy])
  {
    v8 = [(HUControlPanelController *)self _configurationForItem:itemCopy];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v8 sectionFooterForItem:itemCopy forSourceItem:sourceItemCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateStateForControlView:(id)view controlPanelItem:(id)item
{
  itemCopy = item;
  viewCopy = view;
  identifier = [viewCopy identifier];
  v13 = [itemCopy controlItemForIdentifier:identifier];

  latestResults = [v13 latestResults];
  v10 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13818]];

  v11 = [(HUControlPanelController *)self _valueTransformerForControlItem:v13 controlPanelItem:itemCopy];

  v12 = [v11 transformedValueForValue:v10];
  [viewCopy setValue:v12];

  [viewCopy setDisabled:v10 == 0];
}

- (id)_controlPanelItemForControlView:(id)view
{
  viewCopy = view;
  allItems = [(HUControlPanelController *)self allItems];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __60__HUControlPanelController__controlPanelItemForControlView___block_invoke;
  v12 = &unk_277DC3E60;
  v6 = viewCopy;
  v13 = v6;
  v7 = [allItems na_firstObjectPassingTest:&v9];

  if (!v7)
  {
    NSLog(&cfstr_NoControlPanel.isa, v6, v9, v10, v11, v12);
  }

  return v7;
}

BOOL __60__HUControlPanelController__controlPanelItemForControlView___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [v3 controlItemForIdentifier:v4];

  return v5 != 0;
}

- (id)_controlItemForControlView:(id)view
{
  viewCopy = view;
  v5 = [(HUControlPanelController *)self _controlPanelItemForControlView:viewCopy];
  identifier = [viewCopy identifier];

  v7 = [v5 controlItemForIdentifier:identifier];

  return v7;
}

- (id)_createConfigurations
{
  v14[8] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_alloc_init(HUSimpleSliderControlPanelConfiguration);
  v14[0] = v3;
  v4 = objc_alloc_init(HUIncrementalStateSliderControlPanelConfiguration);
  v14[1] = v4;
  v5 = objc_alloc_init(HUSwitchControlPanelConfiguration);
  v14[2] = v5;
  v6 = objc_alloc_init(HUMultiStateControlPanelConfiguration);
  v14[3] = v6;
  v7 = objc_alloc_init(HUTemperatureControlPanelConfiguration);
  v14[4] = v7;
  v8 = objc_alloc_init(HUWheelControlPanelConfiguration);
  v14[5] = v8;
  v9 = objc_alloc_init(HUDurationWheelControlPanelConfiguration);
  v14[6] = v9;
  v10 = objc_alloc_init(HUTemperatureUnitControlPanelConfiguration);
  v14[7] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:8];
  v12 = [v2 setWithArray:v11];

  return v12;
}

- (id)_configurationForItem:(id)item
{
  v31 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(HUControlPanelController *)self configurations];
  v5 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v27;
    do
    {
      v9 = 0;
      v24 = v6;
      do
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * v9);
        rule = [v10 rule];
        v12 = [rule ruleMatchesItem:itemCopy];

        if (v12)
        {
          if (v7)
          {
            v13 = v8;
            v14 = itemCopy;
            v15 = MEMORY[0x277CCABB0];
            rule2 = [v7 rule];
            [rule2 priority];
            v17 = [v15 numberWithDouble:?];
            v18 = MEMORY[0x277CCABB0];
            rule3 = [v10 rule];
            [rule3 priority];
            v20 = [v18 numberWithDouble:?];
            v21 = [v17 compare:v20];

            if (v21)
            {
              if (v21 == -1)
              {
                v22 = v10;

                v7 = v22;
              }

              itemCopy = v14;
            }

            else
            {
              itemCopy = v14;
              NSLog(&cfstr_FoundTwoConfig.isa, v14, v7, v10);
            }

            v8 = v13;
            v6 = v24;
          }

          else
          {
            v7 = v10;
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_valueTransformerForControlItem:(id)item controlPanelItem:(id)panelItem
{
  itemCopy = item;
  v7 = [(HUControlPanelController *)self _configurationForItem:panelItem];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v7 valueTransformerForControlItem:itemCopy], (identityTransformer = objc_claimAutoreleasedReturnValue()) == 0))
  {
    identityTransformer = [MEMORY[0x277D14CF0] identityTransformer];
  }

  return identityTransformer;
}

- (id)_createWriteThrottleForControlItem:(id)item controlPanelItem:(id)panelItem
{
  itemCopy = item;
  panelItemCopy = panelItem;
  v8 = [panelItemCopy identifierForControlItem:itemCopy];
  v9 = [objc_alloc(MEMORY[0x277D2C940]) initWithThrottleInterval:0.25];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__HUControlPanelController__createWriteThrottleForControlItem_controlPanelItem___block_invoke;
  v15[3] = &unk_277DC3EB0;
  objc_copyWeak(&v19, &location);
  v10 = v8;
  v16 = v10;
  v11 = itemCopy;
  v17 = v11;
  v12 = panelItemCopy;
  v18 = v12;
  v13 = [v9 observeValueChangesWithBlock:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v9;
}

void __80__HUControlPanelController__createWriteThrottleForControlItem_controlPanelItem___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained interactionStateByControlID];
  v6 = [v5 objectForKeyedSubscript:*(a1 + 32)];

  [v6 setInFlightWriteCount:{objc_msgSend(v6, "inFlightWriteCount") + 1}];
  [WeakRetained _updateWriteStateForControlItem:*(a1 + 40) controlPanelItem:*(a1 + 48)];
  v7 = [WeakRetained _valueTransformerForControlItem:*(a1 + 40) controlPanelItem:*(a1 + 48)];
  v8 = [v7 valueForTransformedValue:v3];
  v9 = [*(a1 + 40) writeValue:v8];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__HUControlPanelController__createWriteThrottleForControlItem_controlPanelItem___block_invoke_2;
  v12[3] = &unk_277DC3E88;
  objc_copyWeak(&v16, (a1 + 56));
  v10 = v6;
  v13 = v10;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v11 = [v9 addCompletionBlock:v12];

  objc_destroyWeak(&v16);
}

void __80__HUControlPanelController__createWriteThrottleForControlItem_controlPanelItem___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [*(a1 + 32) setInFlightWriteCount:{objc_msgSend(*(a1 + 32), "inFlightWriteCount") - 1}];
  [*(a1 + 32) inFlightWriteCount];
  [WeakRetained _updateWriteStateForControlItem:*(a1 + 40) controlPanelItem:*(a1 + 48)];
}

- (void)_updateWriteStateForControlView:(id)view
{
  viewCopy = view;
  v7 = [(HUControlPanelController *)self _controlPanelItemForControlView:viewCopy];
  identifier = [viewCopy identifier];

  v6 = [v7 controlItemForIdentifier:identifier];

  [(HUControlPanelController *)self _updateWriteStateForControlItem:v6 controlPanelItem:v7];
}

- (void)_updateWriteStateForControlItem:(id)item controlPanelItem:(id)panelItem
{
  itemCopy = item;
  v6 = [panelItem identifierForControlItem:?];
  interactionStateByControlID = [(HUControlPanelController *)self interactionStateByControlID];
  v8 = [interactionStateByControlID objectForKeyedSubscript:v6];

  areWritesInProgressOrPossible = [v8 areWritesInProgressOrPossible];
  v10 = ([v8 isUserInteractionActive] & 1) != 0 || objc_msgSend(v8, "inFlightWriteCount") != 0;
  [v8 setWritesInProgressOrPossible:v10];
  if (areWritesInProgressOrPossible != [v8 areWritesInProgressOrPossible])
  {
    areWritesInProgressOrPossible2 = [v8 areWritesInProgressOrPossible];
    delegate = [(HUControlPanelController *)self delegate];
    if (areWritesInProgressOrPossible2)
    {
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
        goto LABEL_11;
      }

      delegate2 = [(HUControlPanelController *)self delegate];
      [delegate2 controlPanelController:self willBeginPossibleWritesForControlItem:itemCopy];
    }

    else
    {
      v15 = objc_opt_respondsToSelector();

      if ((v15 & 1) == 0)
      {
        goto LABEL_11;
      }

      delegate2 = [(HUControlPanelController *)self delegate];
      [delegate2 controlPanelController:self didEndPossibleWritesForControlItem:itemCopy];
    }
  }

LABEL_11:
}

- (void)controlViewDidBeginUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  interactionStateByControlID = [(HUControlPanelController *)self interactionStateByControlID];
  identifier = [interactionCopy identifier];
  v7 = [interactionStateByControlID objectForKeyedSubscript:identifier];

  [v7 setUserInteractionActive:1];
  [(HUControlPanelController *)self _updateWriteStateForControlView:interactionCopy];
}

- (void)controlViewDidEndUserInteraction:(id)interaction
{
  interactionCopy = interaction;
  interactionStateByControlID = [(HUControlPanelController *)self interactionStateByControlID];
  identifier = [interactionCopy identifier];
  v8 = [interactionStateByControlID objectForKeyedSubscript:identifier];

  [v8 setUserInteractionActive:0];
  writeThrottler = [v8 writeThrottler];
  [writeThrottler flushValueChanges];

  [(HUControlPanelController *)self _updateWriteStateForControlView:interactionCopy];
}

- (void)controlView:(id)view valueDidChange:(id)change
{
  changeCopy = change;
  viewCopy = view;
  interactionStateByControlID = [(HUControlPanelController *)self interactionStateByControlID];
  identifier = [viewCopy identifier];

  v11 = [interactionStateByControlID objectForKeyedSubscript:identifier];

  writeThrottler = [v11 writeThrottler];
  [writeThrottler setValue:changeCopy notifyObservers:1];
}

- (HUControlPanelControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end