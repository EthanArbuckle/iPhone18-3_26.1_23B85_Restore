@interface MUDirectionsActionRowItemViewModel
- (BOOL)_hasETA;
- (MUDirectionsActionRowItemViewModel)initWithETAProvider:(id)provider;
- (id)leadingActionBarItem;
- (id)symbolName;
- (id)titleText;
@end

@implementation MUDirectionsActionRowItemViewModel

- (id)leadingActionBarItem
{
  v3 = [MUPlaceActionBarTypeDirections alloc];
  actionBarSymbolName = [(MUActionRowItemViewModel *)self actionBarSymbolName];
  symbolName = actionBarSymbolName;
  if (!actionBarSymbolName)
  {
    symbolName = [(MUDirectionsActionRowItemViewModel *)self symbolName];
  }

  if ([(MUDirectionsActionRowItemViewModel *)self _hasETA])
  {
    titleText = [(MUDirectionsActionRowItemViewModel *)self titleText];
    v7 = [(MUPlaceActionBarTypeDirections *)v3 initWithModality:symbolName eta:titleText];

    if (actionBarSymbolName)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = [(MUPlaceActionBarTypeDirections *)v3 initWithModality:symbolName eta:0];
    if (actionBarSymbolName)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  v8 = [MUPlaceActionBarItem alloc];
  accessibilityIdentifier = [(MUDirectionsActionRowItemViewModel *)self accessibilityIdentifier];
  v10 = [(MUPlaceActionBarItem *)v8 initWithType:v7 axID:accessibilityIdentifier];

  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__MUDirectionsActionRowItemViewModel_leadingActionBarItem__block_invoke;
  v12[3] = &unk_1E821BAC8;
  objc_copyWeak(&v13, &location);
  [(MUPlaceActionBarItem *)v10 addHandler:v12];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v10;
}

void __58__MUDirectionsActionRowItemViewModel_leadingActionBarItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _notifyObserversDidSelect];
    WeakRetained = v2;
  }
}

- (BOOL)_hasETA
{
  [(MKETAProvider *)self->_etaProvider etaTravelTime];
  if (v3 <= 0.0)
  {
    return 0;
  }

  [(MKETAProvider *)self->_etaProvider etaTravelTime];
  v5 = [MUPlaceHeaderETAFormatter etaStringFromSeconds:v4 isRenderingInFullWidth:0];
  v6 = [v5 length] != 0;

  return v6;
}

- (id)titleText
{
  [(MKETAProvider *)self->_etaProvider etaTravelTime];
  if (v3 <= 0.0)
  {
    v7 = _MULocalizedStringFromThisBundle(@"Directions [Placecard]");
  }

  else
  {
    [(MKETAProvider *)self->_etaProvider etaTravelTime];
    v5 = [MUPlaceHeaderETAFormatter etaStringFromSeconds:v4 isRenderingInFullWidth:0];
    if ([v5 length])
    {
      v6 = v5;
    }

    else
    {
      v6 = _MULocalizedStringFromThisBundle(@"Directions [Placecard]");
    }

    v7 = v6;
  }

  return v7;
}

- (id)symbolName
{
  etaTransportType = [(MKETAProvider *)self->_etaProvider etaTransportType];

  return [MUETAHelper etaSymbolForTransportType:etaTransportType];
}

- (MUDirectionsActionRowItemViewModel)initWithETAProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = MUDirectionsActionRowItemViewModel;
  v6 = [(MUActionRowItemViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_etaProvider, provider);
    [(MKETAProvider *)v7->_etaProvider addObserver:v7];
  }

  return v7;
}

@end