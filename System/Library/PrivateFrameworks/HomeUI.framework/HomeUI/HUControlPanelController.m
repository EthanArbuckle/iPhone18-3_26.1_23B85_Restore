@interface HUControlPanelController
- (BOOL)shouldShowSectionFooterForItem:(id)a3;
- (BOOL)shouldShowSectionTitleForItem:(id)a3;
- (Class)cellClassForItem:(id)a3;
- (HUControlPanelController)initWithDelegate:(id)a3;
- (HUControlPanelControllerDelegate)delegate;
- (id)_configurationForItem:(id)a3;
- (id)_controlItemForControlView:(id)a3;
- (id)_controlPanelItemForControlView:(id)a3;
- (id)_createConfigurations;
- (id)_createWriteThrottleForControlItem:(id)a3 controlPanelItem:(id)a4;
- (id)_valueTransformerForControlItem:(id)a3 controlPanelItem:(id)a4;
- (id)sectionFooterForItem:(id)a3 forSourceItem:(id)a4;
- (id)sectionTitleForItem:(id)a3 forSourceItem:(id)a4;
- (void)_updateStateForControlView:(id)a3 controlPanelItem:(id)a4;
- (void)_updateWriteStateForControlItem:(id)a3 controlPanelItem:(id)a4;
- (void)_updateWriteStateForControlView:(id)a3;
- (void)addItem:(id)a3;
- (void)controlView:(id)a3 valueDidChange:(id)a4;
- (void)controlViewDidBeginUserInteraction:(id)a3;
- (void)controlViewDidEndUserInteraction:(id)a3;
- (void)removeItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUControlPanelController

- (HUControlPanelController)initWithDelegate:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HUControlPanelController;
  v5 = [(HUControlPanelController *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
    v7 = [(HUControlPanelController *)v6 _createConfigurations];
    configurations = v6->_configurations;
    v6->_configurations = v7;

    v9 = [MEMORY[0x277CBEB38] dictionary];
    interactionStateByControlID = v6->_interactionStateByControlID;
    v6->_interactionStateByControlID = v9;

    v11 = [MEMORY[0x277CBEB58] set];
    allItems = v6->_allItems;
    v6->_allItems = v11;
  }

  return v6;
}

- (void)addItem:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUControlPanelController *)self allItems];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    NSLog(&cfstr_AlreadyAddedIt.isa, v4);
  }

  [(NSMutableSet *)self->_allItems addObject:v4];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [v4 controlItems];
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
        v12 = [v4 identifierForControlItem:v11];
        v13 = [(HUControlPanelController *)self _createWriteThrottleForControlItem:v11 controlPanelItem:v4];
        v14 = objc_alloc_init(HUControlInteractionState);
        [(HUControlInteractionState *)v14 setWriteThrottler:v13];
        v15 = [(HUControlPanelController *)self interactionStateByControlID];
        [v15 setObject:v14 forKeyedSubscript:v12];
      }

      v8 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }
}

- (void)removeItem:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HUControlPanelController *)self allItems];
  v6 = [v5 containsObject:v4];

  if ((v6 & 1) == 0)
  {
    NSLog(&cfstr_ItemNotFound.isa, v4);
  }

  [(NSMutableSet *)self->_allItems removeObject:v4];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [v4 controlItems];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [v4 identifierForControlItem:*(*(&v14 + 1) + 8 * v11)];
        v13 = [(HUControlPanelController *)self interactionStateByControlID];
        [v13 removeObjectForKey:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (Class)cellClassForItem:(id)a3
{
  v3 = [(HUControlPanelController *)self _configurationForItem:a3];
  v4 = [v3 cellClass];

  return v4;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(HUControlPanelController *)self allItems];
  v9 = [v8 containsObject:v7];

  if ((v9 & 1) == 0)
  {
    NSLog(&cfstr_AttemptingToSe.isa, v7);
  }

  v10 = [(HUControlPanelController *)self _configurationForItem:v7];
  [v10 setupControlsForCell:v6 item:v7];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [v6 allControlViews];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v17 + 1) + 8 * i);
        [v16 setDelegate:self];
        [(HUControlPanelController *)self _updateStateForControlView:v16 controlPanelItem:v7];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(HUControlPanelController *)self allItems];
  v10 = [v9 containsObject:v8];

  if ((v10 & 1) == 0)
  {
    NSLog(&cfstr_AttemptingToUp.isa, v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = [v7 allControlViews];
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v11);
        }

        [(HUControlPanelController *)self _updateStateForControlView:*(*(&v16 + 1) + 8 * v15++) controlPanelItem:v8];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

- (BOOL)shouldShowSectionTitleForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUControlPanelController *)self _configurationForItem:v4];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 shouldShowSectionTitleForItem:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)shouldShowSectionFooterForItem:(id)a3
{
  v4 = a3;
  v5 = [(HUControlPanelController *)self _configurationForItem:v4];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 shouldShowSectionFooterForItem:v4];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)sectionTitleForItem:(id)a3 forSourceItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(HUControlPanelController *)self shouldShowSectionTitleForItem:v6])
  {
    v8 = [(HUControlPanelController *)self _configurationForItem:v6];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v8 sectionTitleForItem:v6 forSourceItem:v7];
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

- (id)sectionFooterForItem:(id)a3 forSourceItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(HUControlPanelController *)self shouldShowSectionFooterForItem:v6])
  {
    v8 = [(HUControlPanelController *)self _configurationForItem:v6];
    if (objc_opt_respondsToSelector())
    {
      v9 = [v8 sectionFooterForItem:v6 forSourceItem:v7];
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

- (void)_updateStateForControlView:(id)a3 controlPanelItem:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 identifier];
  v13 = [v6 controlItemForIdentifier:v8];

  v9 = [v13 latestResults];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D13818]];

  v11 = [(HUControlPanelController *)self _valueTransformerForControlItem:v13 controlPanelItem:v6];

  v12 = [v11 transformedValueForValue:v10];
  [v7 setValue:v12];

  [v7 setDisabled:v10 == 0];
}

- (id)_controlPanelItemForControlView:(id)a3
{
  v4 = a3;
  v5 = [(HUControlPanelController *)self allItems];
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __60__HUControlPanelController__controlPanelItemForControlView___block_invoke;
  v12 = &unk_277DC3E60;
  v6 = v4;
  v13 = v6;
  v7 = [v5 na_firstObjectPassingTest:&v9];

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

- (id)_controlItemForControlView:(id)a3
{
  v4 = a3;
  v5 = [(HUControlPanelController *)self _controlPanelItemForControlView:v4];
  v6 = [v4 identifier];

  v7 = [v5 controlItemForIdentifier:v6];

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

- (id)_configurationForItem:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v11 = [v10 rule];
        v12 = [v11 ruleMatchesItem:v4];

        if (v12)
        {
          if (v7)
          {
            v13 = v8;
            v14 = v4;
            v15 = MEMORY[0x277CCABB0];
            v16 = [v7 rule];
            [v16 priority];
            v17 = [v15 numberWithDouble:?];
            v18 = MEMORY[0x277CCABB0];
            v19 = [v10 rule];
            [v19 priority];
            v20 = [v18 numberWithDouble:?];
            v21 = [v17 compare:v20];

            if (v21)
            {
              if (v21 == -1)
              {
                v22 = v10;

                v7 = v22;
              }

              v4 = v14;
            }

            else
            {
              v4 = v14;
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

- (id)_valueTransformerForControlItem:(id)a3 controlPanelItem:(id)a4
{
  v6 = a3;
  v7 = [(HUControlPanelController *)self _configurationForItem:a4];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([v7 valueTransformerForControlItem:v6], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [MEMORY[0x277D14CF0] identityTransformer];
  }

  return v8;
}

- (id)_createWriteThrottleForControlItem:(id)a3 controlPanelItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 identifierForControlItem:v6];
  v9 = [objc_alloc(MEMORY[0x277D2C940]) initWithThrottleInterval:0.25];
  objc_initWeak(&location, self);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__HUControlPanelController__createWriteThrottleForControlItem_controlPanelItem___block_invoke;
  v15[3] = &unk_277DC3EB0;
  objc_copyWeak(&v19, &location);
  v10 = v8;
  v16 = v10;
  v11 = v6;
  v17 = v11;
  v12 = v7;
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

- (void)_updateWriteStateForControlView:(id)a3
{
  v4 = a3;
  v7 = [(HUControlPanelController *)self _controlPanelItemForControlView:v4];
  v5 = [v4 identifier];

  v6 = [v7 controlItemForIdentifier:v5];

  [(HUControlPanelController *)self _updateWriteStateForControlItem:v6 controlPanelItem:v7];
}

- (void)_updateWriteStateForControlItem:(id)a3 controlPanelItem:(id)a4
{
  v16 = a3;
  v6 = [a4 identifierForControlItem:?];
  v7 = [(HUControlPanelController *)self interactionStateByControlID];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = [v8 areWritesInProgressOrPossible];
  v10 = ([v8 isUserInteractionActive] & 1) != 0 || objc_msgSend(v8, "inFlightWriteCount") != 0;
  [v8 setWritesInProgressOrPossible:v10];
  if (v9 != [v8 areWritesInProgressOrPossible])
  {
    v11 = [v8 areWritesInProgressOrPossible];
    v12 = [(HUControlPanelController *)self delegate];
    if (v11)
    {
      v13 = objc_opt_respondsToSelector();

      if ((v13 & 1) == 0)
      {
        goto LABEL_11;
      }

      v14 = [(HUControlPanelController *)self delegate];
      [v14 controlPanelController:self willBeginPossibleWritesForControlItem:v16];
    }

    else
    {
      v15 = objc_opt_respondsToSelector();

      if ((v15 & 1) == 0)
      {
        goto LABEL_11;
      }

      v14 = [(HUControlPanelController *)self delegate];
      [v14 controlPanelController:self didEndPossibleWritesForControlItem:v16];
    }
  }

LABEL_11:
}

- (void)controlViewDidBeginUserInteraction:(id)a3
{
  v4 = a3;
  v5 = [(HUControlPanelController *)self interactionStateByControlID];
  v6 = [v4 identifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  [v7 setUserInteractionActive:1];
  [(HUControlPanelController *)self _updateWriteStateForControlView:v4];
}

- (void)controlViewDidEndUserInteraction:(id)a3
{
  v4 = a3;
  v5 = [(HUControlPanelController *)self interactionStateByControlID];
  v6 = [v4 identifier];
  v8 = [v5 objectForKeyedSubscript:v6];

  [v8 setUserInteractionActive:0];
  v7 = [v8 writeThrottler];
  [v7 flushValueChanges];

  [(HUControlPanelController *)self _updateWriteStateForControlView:v4];
}

- (void)controlView:(id)a3 valueDidChange:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HUControlPanelController *)self interactionStateByControlID];
  v9 = [v7 identifier];

  v11 = [v8 objectForKeyedSubscript:v9];

  v10 = [v11 writeThrottler];
  [v10 setValue:v6 notifyObservers:1];
}

- (HUControlPanelControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end