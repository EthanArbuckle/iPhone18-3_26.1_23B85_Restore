@interface MUDirectionsActionRowItemViewModel
- (BOOL)_hasETA;
- (MUDirectionsActionRowItemViewModel)initWithETAProvider:(id)a3;
- (id)leadingActionBarItem;
- (id)symbolName;
- (id)titleText;
@end

@implementation MUDirectionsActionRowItemViewModel

- (id)leadingActionBarItem
{
  v3 = [MUPlaceActionBarTypeDirections alloc];
  v4 = [(MUActionRowItemViewModel *)self actionBarSymbolName];
  v5 = v4;
  if (!v4)
  {
    v5 = [(MUDirectionsActionRowItemViewModel *)self symbolName];
  }

  if ([(MUDirectionsActionRowItemViewModel *)self _hasETA])
  {
    v6 = [(MUDirectionsActionRowItemViewModel *)self titleText];
    v7 = [(MUPlaceActionBarTypeDirections *)v3 initWithModality:v5 eta:v6];

    if (v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = [(MUPlaceActionBarTypeDirections *)v3 initWithModality:v5 eta:0];
    if (v4)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  v8 = [MUPlaceActionBarItem alloc];
  v9 = [(MUDirectionsActionRowItemViewModel *)self accessibilityIdentifier];
  v10 = [(MUPlaceActionBarItem *)v8 initWithType:v7 axID:v9];

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
  v2 = [(MKETAProvider *)self->_etaProvider etaTransportType];

  return [MUETAHelper etaSymbolForTransportType:v2];
}

- (MUDirectionsActionRowItemViewModel)initWithETAProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUDirectionsActionRowItemViewModel;
  v6 = [(MUActionRowItemViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_etaProvider, a3);
    [(MKETAProvider *)v7->_etaProvider addObserver:v7];
  }

  return v7;
}

@end