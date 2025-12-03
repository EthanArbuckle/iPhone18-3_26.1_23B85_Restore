@interface HUQuickControlViewControllerCoordinator
- (BOOL)valueSource:(id)source shouldOverrideValueForCharacteristic:(id)characteristic;
- (HUQuickControlContentHosting)controlHost;
- (HUQuickControlViewControllerCoordinator)initWithItem:(id)item controlItems:(id)items home:(id)home delegate:(id)delegate;
- (HUQuickControlViewControllerCoordinatorDelegate)delegate;
- (id)_itemToUseForIconAndStatus;
- (id)_primaryStatusTextForLatestResults:(id)results showingSecondaryStatus:(BOOL)status;
- (id)_secondaryStatusTextForLatestResults:(id)results;
- (id)valueSource:(id)source overrideValueForCharacteristic:(id)characteristic;
- (void)_createControlViewControllersForControlItems:(id)items;
- (void)_updateIconDescriptorNotifyingDelegate:(BOOL)delegate;
- (void)_updateReachabilityStateNotifiyingDelegate:(BOOL)delegate;
- (void)_updateStatusTextNotifyingDelegate:(BOOL)delegate;
- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item;
- (void)setControlHost:(id)host;
- (void)setControlsVisible:(BOOL)visible;
- (void)setShouldIncludeRoomNameInHeaderTitle:(BOOL)title;
@end

@implementation HUQuickControlViewControllerCoordinator

- (HUQuickControlViewControllerCoordinator)initWithItem:(id)item controlItems:(id)items home:(id)home delegate:(id)delegate
{
  itemCopy = item;
  itemsCopy = items;
  homeCopy = home;
  delegateCopy = delegate;
  v45.receiver = self;
  v45.super_class = HUQuickControlViewControllerCoordinator;
  v15 = [(HUQuickControlViewControllerCoordinator *)&v45 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_home, home);
    objc_storeWeak(&v16->_delegate, delegateCopy);
    objc_storeStrong(&v16->_controlItems, items);
    if ([itemCopy conformsToProtocol:&unk_28251B0C8])
    {
      v17 = MEMORY[0x277D14900];
      v18 = itemCopy;
      v19 = [v17 alloc];
      valueSource = [v18 valueSource];
      v21 = [v19 initWithOriginalValueSource:valueSource overrideValueProvider:v16];
      valueSource = v16->_valueSource;
      v16->_valueSource = v21;

      v23 = [v18 copyWithValueSource:v16->_valueSource];
    }

    else
    {
      v23 = [itemCopy copy];
    }

    item = v16->_item;
    v16->_item = v23;

    [(HUQuickControlViewControllerCoordinator *)v16 _createControlViewControllersForControlItems:itemsCopy];
    v25 = [itemCopy copy];
    reachabilityItem = v16->_reachabilityItem;
    v16->_reachabilityItem = v25;

    v27 = objc_alloc(MEMORY[0x277D14B08]);
    reachabilityItem = [(HUQuickControlViewControllerCoordinator *)v16 reachabilityItem];
    v29 = [v27 initWithDelegate:v16 sourceItem:reachabilityItem];
    reachabilityItemManager = v16->_reachabilityItemManager;
    v16->_reachabilityItemManager = v29;

    v31 = objc_alloc(MEMORY[0x277D14B08]);
    item = [(HUQuickControlViewControllerCoordinator *)v16 item];
    v33 = [v31 initWithDelegate:v16 sourceItem:item];
    itemManager = v16->_itemManager;
    v16->_itemManager = v33;

    v35 = [HUQuickControlContentCharacteristicWritingUpdateAdapter alloc];
    itemManager = [(HUQuickControlViewControllerCoordinator *)v16 itemManager];
    v37 = [(HUQuickControlContentCharacteristicWritingUpdateAdapter *)v35 initWithItemManager:itemManager];
    characteristicWritingAdapter = v16->_characteristicWritingAdapter;
    v16->_characteristicWritingAdapter = v37;

    characteristicWritingAdapter = [(HUQuickControlViewControllerCoordinator *)v16 characteristicWritingAdapter];
    [(HUQuickControlViewController *)v16->_activeController setCharacteristicWritingDelegate:characteristicWritingAdapter];

    [(HUQuickControlViewControllerCoordinator *)v16 _updateIconDescriptorNotifyingDelegate:0];
    [(HUQuickControlViewControllerCoordinator *)v16 _updateStatusTextNotifyingDelegate:0];
    [(HUQuickControlViewControllerCoordinator *)v16 _updateReachabilityStateNotifiyingDelegate:0];
    itemManager2 = [(HUQuickControlViewControllerCoordinator *)v16 itemManager];
    v41 = [itemManager2 reloadAndUpdateAllItemsFromSenderSelector:a2];

    reachabilityItemManager = [(HUQuickControlViewControllerCoordinator *)v16 reachabilityItemManager];
    v43 = [reachabilityItemManager reloadAndUpdateAllItemsFromSenderSelector:a2];
  }

  return v16;
}

- (void)_createControlViewControllersForControlItems:(id)items
{
  itemsCopy = items;
  delegate = [(HUQuickControlViewControllerCoordinator *)self delegate];
  v5 = [delegate isConfiguredForNonHomeUser:self];

  if (!v5 || ([itemsCopy na_firstObjectPassingTest:&__block_literal_global_234], v6 = objc_claimAutoreleasedReturnValue(), v7 = [HUQuickControlViewControllerConfiguration alloc], objc_msgSend(v6, "mediaRoutingIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = -[HUQuickControlViewControllerConfiguration initWithMediaRoutingIdentifier:](v7, "initWithMediaRoutingIdentifier:", v8), v8, v6, !v9))
  {
    v10 = [HUQuickControlViewControllerConfiguration alloc];
    home = [(HUQuickControlViewControllerCoordinator *)self home];
    v9 = [(HUQuickControlViewControllerConfiguration *)v10 initWithHome:home];
  }

  valueSource = [(HUQuickControlViewControllerCoordinator *)self valueSource];
  [(HUQuickControlViewControllerConfiguration *)v9 setValueSource:valueSource];

  v41 = v9;
  v13 = [MEMORY[0x277D145C8] hu_preferredQuickControlGroupContextForControlItems:itemsCopy configuration:v9];
  primaryQuickControlContext = [v13 primaryQuickControlContext];
  if ([objc_msgSend(primaryQuickControlContext "quickControlClass")])
  {
    goto LABEL_9;
  }

  alternateQuickControlContexts = [v13 alternateQuickControlContexts];
  if (![alternateQuickControlContexts count])
  {

LABEL_9:
    goto LABEL_10;
  }

  primaryQuickControlContext2 = [v13 primaryQuickControlContext];
  v17 = [objc_msgSend(primaryQuickControlContext2 "quickControlClass")];

  if ((v17 & 1) == 0)
  {
    v18 = [HUQuickControlGridViewController alloc];
    allControlItems = [v13 allControlItems];
    home2 = [(HUQuickControlViewControllerCoordinator *)self home];
    primaryQuickControlContext3 = [v13 primaryQuickControlContext];
    itemUpdater = [primaryQuickControlContext3 itemUpdater];
    primaryQuickControlContext4 = [v13 primaryQuickControlContext];
    controlOrientation = [primaryQuickControlContext4 controlOrientation];
    primaryQuickControlContext5 = [v13 primaryQuickControlContext];
    v26 = -[HUQuickControlGridViewController initWithControlItems:home:itemUpdater:controlOrientation:preferredControl:](v18, "initWithControlItems:home:itemUpdater:controlOrientation:preferredControl:", allControlItems, home2, itemUpdater, controlOrientation, [primaryQuickControlContext5 preferredControl]);
    goto LABEL_11;
  }

LABEL_10:
  primaryQuickControlContext6 = [v13 primaryQuickControlContext];
  v38 = objc_alloc([primaryQuickControlContext6 quickControlClass]);
  primaryQuickControlContext7 = [v13 primaryQuickControlContext];
  [primaryQuickControlContext7 controlItems];
  v28 = v40 = self;
  itemUpdater = [v13 primaryQuickControlContext];
  primaryQuickControlContext4 = [itemUpdater home];
  primaryQuickControlContext5 = [v13 primaryQuickControlContext];
  itemUpdater2 = [primaryQuickControlContext5 itemUpdater];
  primaryQuickControlContext8 = [v13 primaryQuickControlContext];
  controlOrientation2 = [primaryQuickControlContext8 controlOrientation];
  primaryQuickControlContext9 = [v13 primaryQuickControlContext];
  v26 = [v38 initWithControlItems:v28 home:primaryQuickControlContext4 itemUpdater:itemUpdater2 controlOrientation:controlOrientation2 preferredControl:{objc_msgSend(primaryQuickControlContext9, "preferredControl")}];

  primaryQuickControlContext3 = v28;
  self = v40;

  home2 = primaryQuickControlContext7;
  allControlItems = primaryQuickControlContext6;
LABEL_11:

  [(HUQuickControlViewControllerCoordinator *)self setActiveController:v26];
  activeController = [(HUQuickControlViewControllerCoordinator *)self activeController];
  [activeController setDelegate:self];

  characteristicWritingAdapter = [(HUQuickControlViewControllerCoordinator *)self characteristicWritingAdapter];
  activeController2 = [(HUQuickControlViewControllerCoordinator *)self activeController];
  [activeController2 setCharacteristicWritingDelegate:characteristicWritingAdapter];

  controlHost = [(HUQuickControlViewControllerCoordinator *)self controlHost];
  activeController3 = [(HUQuickControlViewControllerCoordinator *)self activeController];
  [activeController3 setQuickControlHost:controlHost];
}

uint64_t __88__HUQuickControlViewControllerCoordinator__createControlViewControllersForControlItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (void)setControlHost:(id)host
{
  hostCopy = host;
  objc_storeWeak(&self->_controlHost, hostCopy);
  [(HUQuickControlViewController *)self->_activeController setQuickControlHost:hostCopy];
}

- (void)setControlsVisible:(BOOL)visible
{
  if (self->_controlsVisible != visible)
  {
    self->_controlsVisible = visible;
    [(HUQuickControlViewController *)self->_activeController setControlsVisible:?];
  }
}

- (void)setShouldIncludeRoomNameInHeaderTitle:(BOOL)title
{
  if (self->_shouldIncludeRoomNameInHeaderTitle != title)
  {
    self->_shouldIncludeRoomNameInHeaderTitle = title;
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

- (void)_updateIconDescriptorNotifyingDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  _itemToUseForIconAndStatus = [(HUQuickControlViewControllerCoordinator *)self _itemToUseForIconAndStatus];
  latestResults = [_itemToUseForIconAndStatus latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E88]];

  activeController = [(HUQuickControlViewControllerCoordinator *)self activeController];

  if (activeController)
  {
    latestResults2 = [_itemToUseForIconAndStatus latestResults];
    v9 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D140C8]];
    if (v9)
    {
      v10 = v9;

LABEL_5:
      LOBYTE(activeController) = [v10 integerValue] != 2;

      goto LABEL_6;
    }

    latestResults3 = [_itemToUseForIconAndStatus latestResults];
    v10 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D14068]];

    if (v10)
    {
      goto LABEL_5;
    }

    LOBYTE(activeController) = 0;
  }

LABEL_6:
  iconDescriptor = self->_iconDescriptor;
  self->_iconDescriptor = v6;

  self->_showIconOffState = activeController;
  if (delegateCopy)
  {
    delegate = [(HUQuickControlViewControllerCoordinator *)self delegate];
    iconDescriptor = [(HUQuickControlViewControllerCoordinator *)self iconDescriptor];
    [delegate controllerCoordinator:self didUpdateIconDescriptor:iconDescriptor showOffState:{-[HUQuickControlViewControllerCoordinator showIconOffState](self, "showIconOffState")}];
  }
}

- (id)_primaryStatusTextForLatestResults:(id)results showingSecondaryStatus:(BOOL)status
{
  statusCopy = status;
  v18 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v7 = HFLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[HUQuickControlViewControllerCoordinator _primaryStatusTextForLatestResults:showingSecondaryStatus:]";
    v14 = 2112;
    v15 = resultsCopy;
    v16 = 1024;
    v17 = statusCopy;
    _os_log_impl(&dword_20CEB6000, v7, OS_LOG_TYPE_INFO, "%s %@ %d", &v12, 0x1Cu);
  }

  if (statusCopy || ([resultsCopy objectForKeyedSubscript:*MEMORY[0x277D13E40]], (v10 = objc_claimAutoreleasedReturnValue()) == 0) && (objc_msgSend(resultsCopy, "objectForKeyedSubscript:", *MEMORY[0x277D13E68]), (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    activeController = [(HUQuickControlViewControllerCoordinator *)self activeController];
    overrideStatusText = [activeController overrideStatusText];

    if (overrideStatusText)
    {
      goto LABEL_10;
    }

    v10 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277D13DE8]];
    if (!v10)
    {
      v10 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277D13E20]];
    }
  }

  overrideStatusText = v10;
LABEL_10:

  return overrideStatusText;
}

- (id)_secondaryStatusTextForLatestResults:(id)results
{
  resultsCopy = results;
  v5 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277D13E68]];
  if (v5)
  {
    goto LABEL_2;
  }

  activeController = [(HUQuickControlViewControllerCoordinator *)self activeController];
  overrideSecondaryStatusText = [activeController overrideSecondaryStatusText];

  if (!overrideSecondaryStatusText)
  {
    v5 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x277D13E38]];
LABEL_2:
    overrideSecondaryStatusText = v5;
  }

  return overrideSecondaryStatusText;
}

- (void)_updateStatusTextNotifyingDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  _itemToUseForIconAndStatus = [(HUQuickControlViewControllerCoordinator *)self _itemToUseForIconAndStatus];
  latestResults = [_itemToUseForIconAndStatus latestResults];

  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E10]];
  v7 = v6;
  if (!v6)
  {
    v6 = &unk_282492018;
  }

  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (unsignedIntegerValue == 1)
  {
    item = [(HUQuickControlViewControllerCoordinator *)self item];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v9 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
      v10 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E20]];
      if (![v10 length])
      {
        v13 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13DE8]];

        v10 = v13;
      }
    }

    else
    {
      v14 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F00]];
      if ([(HUQuickControlViewControllerCoordinator *)self shouldIncludeRoomNameInHeaderTitle])
      {
        [v14 composedString];
      }

      else
      {
        [v14 serviceName];
      }
      v9 = ;
      v10 = [(HUQuickControlViewControllerCoordinator *)self _primaryStatusTextForLatestResults:latestResults showingSecondaryStatus:0];
    }
  }

  else if (unsignedIntegerValue)
  {
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v9 = [(HUQuickControlViewControllerCoordinator *)self _primaryStatusTextForLatestResults:latestResults showingSecondaryStatus:1];
    v10 = [(HUQuickControlViewControllerCoordinator *)self _secondaryStatusTextForLatestResults:latestResults];
  }

  primaryStatusText = [(HUQuickControlViewControllerCoordinator *)self primaryStatusText];
  v16 = primaryStatusText;
  if (!primaryStatusText)
  {
    primaryStatusText = &stru_2823E0EE8;
  }

  v17 = [(__CFString *)primaryStatusText isEqualToString:v9];

  v18 = [v9 copy];
  [(HUQuickControlViewControllerCoordinator *)self setPrimaryStatusText:v18];

  secondaryStatusText = [(HUQuickControlViewControllerCoordinator *)self secondaryStatusText];
  v20 = secondaryStatusText;
  if (!secondaryStatusText)
  {
    secondaryStatusText = &stru_2823E0EE8;
  }

  v21 = [(__CFString *)secondaryStatusText isEqualToString:v10];

  v22 = [v10 copy];
  [(HUQuickControlViewControllerCoordinator *)self setSecondaryStatusText:v22];

  if ((v17 & v21 & 1) == 0 && delegateCopy)
  {
    delegate = [(HUQuickControlViewControllerCoordinator *)self delegate];
    primaryStatusText2 = [(HUQuickControlViewControllerCoordinator *)self primaryStatusText];
    secondaryStatusText2 = [(HUQuickControlViewControllerCoordinator *)self secondaryStatusText];
    [delegate controllerCoordinator:self didUpdateStatusWithPrimaryText:primaryStatusText2 secondaryText:secondaryStatusText2];
  }
}

- (void)_updateReachabilityStateNotifiyingDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  reachabilityItem = [(HUQuickControlViewControllerCoordinator *)self reachabilityItem];
  latestResults = [reachabilityItem latestResults];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D14068]];
  integerValue = [v7 integerValue];

  v9 = integerValue != 0;
  if (self->_reachable != v9)
  {
    self->_reachable = v9;
    if (delegateCopy)
    {
      v10 = integerValue != 0;
      delegate = [(HUQuickControlViewControllerCoordinator *)self delegate];
      [delegate controllerCoordinator:self didUpdateReachability:v10];
    }

    [(HUQuickControlViewControllerCoordinator *)self _updateStatusTextNotifyingDelegate:1];

    [(HUQuickControlViewControllerCoordinator *)self _updateIconDescriptorNotifyingDelegate:1];
  }
}

- (void)itemManager:(id)manager didUpdateResultsForSourceItem:(id)item
{
  itemCopy = item;
  reachabilityItem = [(HUQuickControlViewControllerCoordinator *)self reachabilityItem];

  if (reachabilityItem == itemCopy)
  {
    [(HUQuickControlViewControllerCoordinator *)self _updateReachabilityStateNotifiyingDelegate:1];
  }

  else
  {
    item = [(HUQuickControlViewControllerCoordinator *)self item];

    if (item == itemCopy)
    {
      [(HUQuickControlViewControllerCoordinator *)self _updateIconDescriptorNotifyingDelegate:1];
      [(HUQuickControlViewControllerCoordinator *)self _updateStatusTextNotifyingDelegate:1];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"HUQuickControlViewControllerCoordinator.m" lineNumber:291 description:{@"Unknown source item %@", itemCopy}];
    }
  }
}

- (BOOL)valueSource:(id)source shouldOverrideValueForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v6 = [(HUQuickControlViewControllerCoordinator *)self _controllerForControllableCharacteristic:characteristicCopy];
  v7 = [v6 overrideValueForCharacteristic:characteristicCopy];

  return v7 != 0;
}

- (id)valueSource:(id)source overrideValueForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v6 = [(HUQuickControlViewControllerCoordinator *)self _controllerForControllableCharacteristic:characteristicCopy];
  v7 = [v6 overrideValueForCharacteristic:characteristicCopy];

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