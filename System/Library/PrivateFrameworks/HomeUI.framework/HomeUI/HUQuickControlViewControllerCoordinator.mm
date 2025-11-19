@interface HUQuickControlViewControllerCoordinator
- (BOOL)valueSource:(id)a3 shouldOverrideValueForCharacteristic:(id)a4;
- (HUQuickControlContentHosting)controlHost;
- (HUQuickControlViewControllerCoordinator)initWithItem:(id)a3 controlItems:(id)a4 home:(id)a5 delegate:(id)a6;
- (HUQuickControlViewControllerCoordinatorDelegate)delegate;
- (id)_itemToUseForIconAndStatus;
- (id)_primaryStatusTextForLatestResults:(id)a3 showingSecondaryStatus:(BOOL)a4;
- (id)_secondaryStatusTextForLatestResults:(id)a3;
- (id)valueSource:(id)a3 overrideValueForCharacteristic:(id)a4;
- (void)_createControlViewControllersForControlItems:(id)a3;
- (void)_updateIconDescriptorNotifyingDelegate:(BOOL)a3;
- (void)_updateReachabilityStateNotifiyingDelegate:(BOOL)a3;
- (void)_updateStatusTextNotifyingDelegate:(BOOL)a3;
- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4;
- (void)setControlHost:(id)a3;
- (void)setControlsVisible:(BOOL)a3;
- (void)setShouldIncludeRoomNameInHeaderTitle:(BOOL)a3;
@end

@implementation HUQuickControlViewControllerCoordinator

- (HUQuickControlViewControllerCoordinator)initWithItem:(id)a3 controlItems:(id)a4 home:(id)a5 delegate:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v45.receiver = self;
  v45.super_class = HUQuickControlViewControllerCoordinator;
  v15 = [(HUQuickControlViewControllerCoordinator *)&v45 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_home, a5);
    objc_storeWeak(&v16->_delegate, v14);
    objc_storeStrong(&v16->_controlItems, a4);
    if ([v11 conformsToProtocol:&unk_28251B0C8])
    {
      v17 = MEMORY[0x277D14900];
      v18 = v11;
      v19 = [v17 alloc];
      v20 = [v18 valueSource];
      v21 = [v19 initWithOriginalValueSource:v20 overrideValueProvider:v16];
      valueSource = v16->_valueSource;
      v16->_valueSource = v21;

      v23 = [v18 copyWithValueSource:v16->_valueSource];
    }

    else
    {
      v23 = [v11 copy];
    }

    item = v16->_item;
    v16->_item = v23;

    [(HUQuickControlViewControllerCoordinator *)v16 _createControlViewControllersForControlItems:v12];
    v25 = [v11 copy];
    reachabilityItem = v16->_reachabilityItem;
    v16->_reachabilityItem = v25;

    v27 = objc_alloc(MEMORY[0x277D14B08]);
    v28 = [(HUQuickControlViewControllerCoordinator *)v16 reachabilityItem];
    v29 = [v27 initWithDelegate:v16 sourceItem:v28];
    reachabilityItemManager = v16->_reachabilityItemManager;
    v16->_reachabilityItemManager = v29;

    v31 = objc_alloc(MEMORY[0x277D14B08]);
    v32 = [(HUQuickControlViewControllerCoordinator *)v16 item];
    v33 = [v31 initWithDelegate:v16 sourceItem:v32];
    itemManager = v16->_itemManager;
    v16->_itemManager = v33;

    v35 = [HUQuickControlContentCharacteristicWritingUpdateAdapter alloc];
    v36 = [(HUQuickControlViewControllerCoordinator *)v16 itemManager];
    v37 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)v35 initWithItemManager:v36];
    characteristicWritingAdapter = v16->_characteristicWritingAdapter;
    v16->_characteristicWritingAdapter = v37;

    v39 = [(HUQuickControlViewControllerCoordinator *)v16 characteristicWritingAdapter];
    [(HUQuickControlViewController *)v16->_activeController setCharacteristicWritingDelegate:v39];

    [(HUQuickControlViewControllerCoordinator *)v16 _updateIconDescriptorNotifyingDelegate:0];
    [(HUQuickControlViewControllerCoordinator *)v16 _updateStatusTextNotifyingDelegate:0];
    [(HUQuickControlViewControllerCoordinator *)v16 _updateReachabilityStateNotifiyingDelegate:0];
    v40 = [(HUQuickControlViewControllerCoordinator *)v16 itemManager];
    v41 = [v40 reloadAndUpdateAllItemsFromSenderSelector:a2];

    v42 = [(HUQuickControlViewControllerCoordinator *)v16 reachabilityItemManager];
    v43 = [v42 reloadAndUpdateAllItemsFromSenderSelector:a2];
  }

  return v16;
}

- (void)_createControlViewControllersForControlItems:(id)a3
{
  v42 = a3;
  v4 = [(HUQuickControlViewControllerCoordinator *)self delegate];
  v5 = [v4 isConfiguredForNonHomeUser:self];

  if (!v5 || ([v42 na_firstObjectPassingTest:&__block_literal_global_234], v6 = objc_claimAutoreleasedReturnValue(), v7 = [HUQuickControlViewControllerConfiguration alloc], objc_msgSend(v6, "mediaRoutingIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = -[HUQuickControlViewControllerConfiguration initWithMediaRoutingIdentifier:](v7, "initWithMediaRoutingIdentifier:", v8), v8, v6, !v9))
  {
    v10 = [HUQuickControlViewControllerConfiguration alloc];
    v11 = [(HUQuickControlViewControllerCoordinator *)self home];
    v9 = [(HUQuickControlViewControllerConfiguration *)v10 initWithHome:v11];
  }

  v12 = [(HUQuickControlViewControllerCoordinator *)self valueSource];
  [(HUQuickControlViewControllerConfiguration *)v9 setValueSource:v12];

  v41 = v9;
  v13 = [MEMORY[0x277D145C8] hu_preferredQuickControlGroupContextForControlItems:v42 configuration:v9];
  v14 = [v13 primaryQuickControlContext];
  if ([objc_msgSend(v14 "quickControlClass")])
  {
    goto LABEL_9;
  }

  v15 = [v13 alternateQuickControlContexts];
  if (![v15 count])
  {

LABEL_9:
    goto LABEL_10;
  }

  v16 = [v13 primaryQuickControlContext];
  v17 = [objc_msgSend(v16 "quickControlClass")];

  if ((v17 & 1) == 0)
  {
    v18 = [HUQuickControlGridViewController alloc];
    v19 = [v13 allControlItems];
    v20 = [(HUQuickControlViewControllerCoordinator *)self home];
    v21 = [v13 primaryQuickControlContext];
    v22 = [v21 itemUpdater];
    v23 = [v13 primaryQuickControlContext];
    v24 = [v23 controlOrientation];
    v25 = [v13 primaryQuickControlContext];
    v26 = -[HUQuickControlGridViewController initWithControlItems:home:itemUpdater:controlOrientation:preferredControl:](v18, "initWithControlItems:home:itemUpdater:controlOrientation:preferredControl:", v19, v20, v22, v24, [v25 preferredControl]);
    goto LABEL_11;
  }

LABEL_10:
  v39 = [v13 primaryQuickControlContext];
  v38 = objc_alloc([v39 quickControlClass]);
  v27 = [v13 primaryQuickControlContext];
  [v27 controlItems];
  v28 = v40 = self;
  v22 = [v13 primaryQuickControlContext];
  v23 = [v22 home];
  v25 = [v13 primaryQuickControlContext];
  v29 = [v25 itemUpdater];
  v30 = [v13 primaryQuickControlContext];
  v31 = [v30 controlOrientation];
  v32 = [v13 primaryQuickControlContext];
  v26 = [v38 initWithControlItems:v28 home:v23 itemUpdater:v29 controlOrientation:v31 preferredControl:{objc_msgSend(v32, "preferredControl")}];

  v21 = v28;
  self = v40;

  v20 = v27;
  v19 = v39;
LABEL_11:

  [(HUQuickControlViewControllerCoordinator *)self setActiveController:v26];
  v33 = [(HUQuickControlViewControllerCoordinator *)self activeController];
  [v33 setDelegate:self];

  v34 = [(HUQuickControlViewControllerCoordinator *)self characteristicWritingAdapter];
  v35 = [(HUQuickControlViewControllerCoordinator *)self activeController];
  [v35 setCharacteristicWritingDelegate:v34];

  v36 = [(HUQuickControlViewControllerCoordinator *)self controlHost];
  v37 = [(HUQuickControlViewControllerCoordinator *)self activeController];
  [v37 setQuickControlHost:v36];
}

uint64_t __88__HUQuickControlViewControllerCoordinator__createControlViewControllersForControlItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)setControlHost:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_controlHost, v4);
  [(HUQuickControlViewController *)self->_activeController setQuickControlHost:v4];
}

- (void)setControlsVisible:(BOOL)a3
{
  if (self->_controlsVisible != a3)
  {
    self->_controlsVisible = a3;
    [(HUQuickControlViewController *)self->_activeController setControlsVisible:?];
  }
}

- (void)setShouldIncludeRoomNameInHeaderTitle:(BOOL)a3
{
  if (self->_shouldIncludeRoomNameInHeaderTitle != a3)
  {
    self->_shouldIncludeRoomNameInHeaderTitle = a3;
    [(HUQuickControlViewControllerCoordinator *)self _updateStatusTextNotifyingDelegate:1];
  }
}

- (id)_itemToUseForIconAndStatus
{
  if ([(HUQuickControlViewControllerCoordinator *)self isReachable])
  {
    [(HUQuickControlViewControllerCoordinator *)self item];
  }

  else
  {
    [(HUQuickControlViewControllerCoordinator *)self reachabilityItem];
  }
  v3 = ;

  return v3;
}

- (void)_updateIconDescriptorNotifyingDelegate:(BOOL)a3
{
  v3 = a3;
  v15 = [(HUQuickControlViewControllerCoordinator *)self _itemToUseForIconAndStatus];
  v5 = [v15 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13E88]];

  v7 = [(HUQuickControlViewControllerCoordinator *)self activeController];

  if (v7)
  {
    v8 = [v15 latestResults];
    v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277D140C8]];
    if (v9)
    {
      v10 = v9;

LABEL_5:
      LOBYTE(v7) = [v10 integerValue] != 2;

      goto LABEL_6;
    }

    v11 = [v15 latestResults];
    v10 = [v11 objectForKeyedSubscript:*MEMORY[0x277D14068]];

    if (v10)
    {
      goto LABEL_5;
    }

    LOBYTE(v7) = 0;
  }

LABEL_6:
  iconDescriptor = self->_iconDescriptor;
  self->_iconDescriptor = v6;

  self->_showIconOffState = v7;
  if (v3)
  {
    v13 = [(HUQuickControlViewControllerCoordinator *)self delegate];
    v14 = [(HUQuickControlViewControllerCoordinator *)self iconDescriptor];
    [v13 controllerCoordinator:self didUpdateIconDescriptor:v14 showOffState:{-[HUQuickControlViewControllerCoordinator showIconOffState](self, "showIconOffState")}];
  }
}

- (id)_primaryStatusTextForLatestResults:(id)a3 showingSecondaryStatus:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[HUQuickControlViewControllerCoordinator _primaryStatusTextForLatestResults:showingSecondaryStatus:]";
    v14 = 2112;
    v15 = v6;
    v16 = 1024;
    v17 = v4;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_INFO, "%s %@ %d", &v12, 0x1Cu);
  }

  if (v4 || ([v6 objectForKeyedSubscript:*MEMORY[0x277D13E40]], (v10 = objc_claimAutoreleasedReturnValue()) == 0) && (objc_msgSend(v6, "objectForKeyedSubscript:", *MEMORY[0x277D13E68]), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v8 = [(HUQuickControlViewControllerCoordinator *)self activeController];
    v9 = [v8 overrideStatusText];

    if (v9)
    {
      goto LABEL_10;
    }

    v10 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13DE8]];
    if (!v10)
    {
      v10 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    }
  }

  v9 = v10;
LABEL_10:

  return v9;
}

- (id)_secondaryStatusTextForLatestResults:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13E68]];
  if (v5)
  {
    goto LABEL_2;
  }

  v7 = [(HUQuickControlViewControllerCoordinator *)self activeController];
  v6 = [v7 overrideSecondaryStatusText];

  if (!v6)
  {
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13E38]];
LABEL_2:
    v6 = v5;
  }

  return v6;
}

- (void)_updateStatusTextNotifyingDelegate:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUQuickControlViewControllerCoordinator *)self _itemToUseForIconAndStatus];
  v26 = [v5 latestResults];

  v6 = [v26 objectForKeyedSubscript:*MEMORY[0x277D13E10]];
  v7 = v6;
  if (!v6)
  {
    v6 = &unk_282492018;
  }

  v8 = [v6 unsignedIntegerValue];

  if (v8 == 1)
  {
    v11 = [(HUQuickControlViewControllerCoordinator *)self item];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [v26 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
      v10 = [v26 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
      if (![v10 length])
      {
        v13 = [v26 objectForKeyedSubscript:*MEMORY[0x277D13DE8]];

        v10 = v13;
      }
    }

    else
    {
      v14 = [v26 objectForKeyedSubscript:*MEMORY[0x277D13F00]];
      if ([(HUQuickControlViewControllerCoordinator *)self shouldIncludeRoomNameInHeaderTitle])
      {
        [v14 composedString];
      }

      else
      {
        [v14 serviceName];
      }
      v9 = ;
      v10 = [(HUQuickControlViewControllerCoordinator *)self _primaryStatusTextForLatestResults:v26 showingSecondaryStatus:0];
    }
  }

  else if (v8)
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v9 = [(HUQuickControlViewControllerCoordinator *)self _primaryStatusTextForLatestResults:v26 showingSecondaryStatus:1];
    v10 = [(HUQuickControlViewControllerCoordinator *)self _secondaryStatusTextForLatestResults:v26];
  }

  v15 = [(HUQuickControlViewControllerCoordinator *)self primaryStatusText];
  v16 = v15;
  if (!v15)
  {
    v15 = &stru_2823E0EE8;
  }

  v17 = [(__CFString *)v15 isEqualToString:v9];

  v18 = [v9 copy];
  [(HUQuickControlViewControllerCoordinator *)self setPrimaryStatusText:v18];

  v19 = [(HUQuickControlViewControllerCoordinator *)self secondaryStatusText];
  v20 = v19;
  if (!v19)
  {
    v19 = &stru_2823E0EE8;
  }

  v21 = [(__CFString *)v19 isEqualToString:v10];

  v22 = [v10 copy];
  [(HUQuickControlViewControllerCoordinator *)self setSecondaryStatusText:v22];

  if ((v17 & v21 & 1) == 0 && v3)
  {
    v23 = [(HUQuickControlViewControllerCoordinator *)self delegate];
    v24 = [(HUQuickControlViewControllerCoordinator *)self primaryStatusText];
    v25 = [(HUQuickControlViewControllerCoordinator *)self secondaryStatusText];
    [v23 controllerCoordinator:self didUpdateStatusWithPrimaryText:v24 secondaryText:v25];
  }
}

- (void)_updateReachabilityStateNotifiyingDelegate:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUQuickControlViewControllerCoordinator *)self reachabilityItem];
  v6 = [v5 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D14068]];
  v8 = [v7 integerValue];

  v9 = v8 != 0;
  if (self->_reachable != v9)
  {
    self->_reachable = v9;
    if (v3)
    {
      v10 = v8 != 0;
      v11 = [(HUQuickControlViewControllerCoordinator *)self delegate];
      [v11 controllerCoordinator:self didUpdateReachability:v10];
    }

    [(HUQuickControlViewControllerCoordinator *)self _updateStatusTextNotifyingDelegate:1];

    [(HUQuickControlViewControllerCoordinator *)self _updateIconDescriptorNotifyingDelegate:1];
  }
}

- (void)itemManager:(id)a3 didUpdateResultsForSourceItem:(id)a4
{
  v9 = a4;
  v6 = [(HUQuickControlViewControllerCoordinator *)self reachabilityItem];

  if (v6 == v9)
  {
    [(HUQuickControlViewControllerCoordinator *)self _updateReachabilityStateNotifiyingDelegate:1];
  }

  else
  {
    v7 = [(HUQuickControlViewControllerCoordinator *)self item];

    if (v7 == v9)
    {
      [(HUQuickControlViewControllerCoordinator *)self _updateIconDescriptorNotifyingDelegate:1];
      [(HUQuickControlViewControllerCoordinator *)self _updateStatusTextNotifyingDelegate:1];
    }

    else
    {
      v8 = [MEMORY[0x277CCA890] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"HUQuickControlViewControllerCoordinator.m" lineNumber:291 description:{@"Unknown source item %@", v9}];
    }
  }
}

- (BOOL)valueSource:(id)a3 shouldOverrideValueForCharacteristic:(id)a4
{
  v5 = a4;
  v6 = [(HUQuickControlViewControllerCoordinator *)self _controllerForControllableCharacteristic:v5];
  v7 = [v6 overrideValueForCharacteristic:v5];

  return v7 != 0;
}

- (id)valueSource:(id)a3 overrideValueForCharacteristic:(id)a4
{
  v5 = a4;
  v6 = [(HUQuickControlViewControllerCoordinator *)self _controllerForControllableCharacteristic:v5];
  v7 = [v6 overrideValueForCharacteristic:v5];

  return v7;
}

- (HUQuickControlViewControllerCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HUQuickControlContentHosting)controlHost
{
  WeakRetained = objc_loadWeakRetained(&self->_controlHost);

  return WeakRetained;
}

@end