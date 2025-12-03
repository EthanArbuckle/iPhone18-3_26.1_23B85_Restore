@interface MUPlaceAddStopActionRowItemViewModel
- (BOOL)isHidden;
- (MUPlaceAddStopActionRowItemViewModel)initWithSearchAlongRoute:(BOOL)route ETAProvider:(id)provider detourInfo:(id)info canShowDetourTime:(BOOL)time;
- (id)leadingActionBarItem;
- (id)titleText;
- (void)ETAProviderUpdated:(id)updated;
@end

@implementation MUPlaceAddStopActionRowItemViewModel

- (id)leadingActionBarItem
{
  v3 = [MUPlaceActionBarTypeDirections alloc];
  actionBarSymbolName = [(MUActionRowItemViewModel *)self actionBarSymbolName];
  symbolName = actionBarSymbolName;
  if (!actionBarSymbolName)
  {
    symbolName = [(MUPlaceAddStopActionRowItemViewModel *)self symbolName];
  }

  titleText = [(MUPlaceAddStopActionRowItemViewModel *)self titleText];
  v7 = [(MUPlaceActionBarTypeDirections *)v3 initWithModality:symbolName eta:titleText];

  if (!actionBarSymbolName)
  {
  }

  v8 = [MUPlaceActionBarItem alloc];
  accessibilityIdentifier = [(MUPlaceAddStopActionRowItemViewModel *)self accessibilityIdentifier];
  v10 = [(MUPlaceActionBarItem *)v8 initWithType:v7 axID:accessibilityIdentifier];

  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __60__MUPlaceAddStopActionRowItemViewModel_leadingActionBarItem__block_invoke;
  v12[3] = &unk_1E821BAC8;
  objc_copyWeak(&v13, &location);
  [(MUPlaceActionBarItem *)v10 addHandler:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v10;
}

void __60__MUPlaceAddStopActionRowItemViewModel_leadingActionBarItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _notifyObserversDidSelect];
    WeakRetained = v2;
  }
}

- (void)ETAProviderUpdated:(id)updated
{
  updatedCopy = updated;
  if (self->_etaTravelTime == 0.0)
  {
    v7 = updatedCopy;
    [updatedCopy etaTravelTime];
    updatedCopy = v7;
    if (v5 > 0.0)
    {
      [v7 etaTravelTime];
      self->_etaTravelTime = v6;
      [(MUActionRowItemViewModel *)self _notifyObserversDidUpdate];
      updatedCopy = v7;
    }
  }
}

- (id)titleText
{
  [(GEOMapItemDetourInfo *)self->_detourInfo detourTime];
  if (v3 > 0.0 && self->_canShowDetourTime)
  {
    v4 = MEMORY[0x1E696AEC0];
    [(GEOMapItemDetourInfo *)self->_detourInfo detourTime];
    v6 = [v4 _navigation_stringWithSeconds:v5 andAbbreviationType:1];
    v7 = MEMORY[0x1E696AEC0];
    v8 = _MULocalizedStringFromThisBundle(@"Add Stop With Detour Time [Placecard]");
    v9 = [v7 stringWithFormat:v8, v6];
  }

  else
  {
    v9 = _MULocalizedStringFromThisBundle(@"Add Stop [Placecard]");
  }

  return v9;
}

- (BOOL)isHidden
{
  if (self->_isSearchAlongRoute && self->_hiddenWhileWaitingForETA)
  {
    return ![(MUPlaceAddStopActionRowItemViewModel *)self isEnabled:v2];
  }

  else
  {
    return 0;
  }
}

- (MUPlaceAddStopActionRowItemViewModel)initWithSearchAlongRoute:(BOOL)route ETAProvider:(id)provider detourInfo:(id)info canShowDetourTime:(BOOL)time
{
  routeCopy = route;
  providerCopy = provider;
  infoCopy = info;
  v19.receiver = self;
  v19.super_class = MUPlaceAddStopActionRowItemViewModel;
  v13 = [(MUActionRowItemViewModel *)&v19 init];
  v14 = v13;
  if (v13)
  {
    v13->_isSearchAlongRoute = routeCopy;
    objc_storeStrong(&v13->_etaProvider, provider);
    objc_storeStrong(&v14->_detourInfo, info);
    v14->_canShowDetourTime = time;
    if (providerCopy)
    {
      if (!infoCopy && routeCopy)
      {
        isLikelyToReturnETA = [providerCopy isLikelyToReturnETA];
        v14->_hiddenWhileWaitingForETA = isLikelyToReturnETA ^ 1;
        if ((isLikelyToReturnETA & 1) == 0)
        {
          v16 = MUGetPlaceCardLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *v18 = 0;
            _os_log_impl(&dword_1C5620000, v16, OS_LOG_TYPE_INFO, "Hiding directions button while waiting for valid ETA", v18, 2u);
          }
        }

        [(MKETAProvider *)v14->_etaProvider addObserver:v14];
      }
    }
  }

  return v14;
}

@end