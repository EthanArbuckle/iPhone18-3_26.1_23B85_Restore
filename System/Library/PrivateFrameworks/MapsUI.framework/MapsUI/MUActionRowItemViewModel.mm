@interface MUActionRowItemViewModel
- (MUActionRowItemViewModel)init;
- (MUPlaceActionBarItem)leadingActionBarItem;
- (id)analyticsButtonValues;
- (void)setFeatureDiscoveryView:(id)view;
@end

@implementation MUActionRowItemViewModel

- (MUPlaceActionBarItem)leadingActionBarItem
{
  v3 = [MUPlaceActionBarTypeCustom alloc];
  actionBarSymbolName = [(MUActionRowItemViewModel *)self actionBarSymbolName];
  if (actionBarSymbolName)
  {
    v5 = [(MUPlaceActionBarTypeCustom *)v3 initWithSymbolName:actionBarSymbolName text:0];
  }

  else
  {
    symbolName = [(MUActionRowItemViewModel *)self symbolName];
    v5 = [(MUPlaceActionBarTypeCustom *)v3 initWithSymbolName:symbolName text:0];
  }

  v7 = [MUPlaceActionBarItem alloc];
  accessibilityIdentifier = [(MUActionRowItemViewModel *)self accessibilityIdentifier];
  v9 = [(MUPlaceActionBarItem *)v7 initWithType:v5 axID:accessibilityIdentifier];

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__MUActionRowItemViewModel_leadingActionBarItem__block_invoke;
  v11[3] = &unk_1E821BAC8;
  objc_copyWeak(&v12, &location);
  [(MUPlaceActionBarItem *)v9 addHandler:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v9;
}

void __48__MUActionRowItemViewModel_leadingActionBarItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _notifyObserversDidSelect];
    WeakRetained = v2;
  }
}

- (id)analyticsButtonValues
{
  v7[1] = *MEMORY[0x1E69E9840];
  analyticsButtonValue = [(MUActionRowItemViewModel *)self analyticsButtonValue];
  v3 = analyticsButtonValue;
  if (analyticsButtonValue)
  {
    v7[0] = analyticsButtonValue;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)setFeatureDiscoveryView:(id)view
{
  viewCopy = view;
  p_featureDiscoveryView = &self->_featureDiscoveryView;
  if (self->_featureDiscoveryView != viewCopy)
  {
    v7 = viewCopy;
    objc_storeStrong(p_featureDiscoveryView, view);
    p_featureDiscoveryView = [(GEOObserverHashTable *)self->_observers didUpdateFeatureDiscoveryStatus:self];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](p_featureDiscoveryView, viewCopy);
}

- (MUActionRowItemViewModel)init
{
  v7.receiver = self;
  v7.super_class = MUActionRowItemViewModel;
  v2 = [(MUActionRowItemViewModel *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69A22D8]);
    v4 = [v3 initWithProtocol:&unk_1F45342C8 queue:MEMORY[0x1E69E96A0]];
    observers = v2->_observers;
    v2->_observers = v4;
  }

  return v2;
}

@end