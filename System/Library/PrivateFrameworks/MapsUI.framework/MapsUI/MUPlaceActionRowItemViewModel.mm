@interface MUPlaceActionRowItemViewModel
- (BOOL)isEnabled;
- (BOOL)isSelected;
- (MUPlaceActionRowItemViewModel)initWithActionRowItem:(id)a3 menuProvider:(id)a4 style:(unint64_t)a5;
- (MUPlaceCardActionsRowViewMenuProvider)menuProvider;
- (id)accessibilityIdentifier;
- (id)actionBarSymbolName;
- (id)analyticsButtonValue;
- (id)buildMenuWithPresentationOptions:(id)a3;
- (id)leadingActionBarItem;
- (id)preferredBackgroundColor;
- (id)preferredTintColor;
- (id)symbolName;
- (id)titleText;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setMenuProvider:(id)a3;
@end

@implementation MUPlaceActionRowItemViewModel

- (MUPlaceCardActionsRowViewMenuProvider)menuProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_menuProvider);

  return WeakRetained;
}

- (id)leadingActionBarItem
{
  v3 = [(MKPlaceCardActionItem *)self->_actionRowItem resolvedActionItem];
  v4 = [v3 type];

  if (v4 > 42)
  {
    switch(v4)
    {
      case '+':
        v5 = [MUPlaceActionBarTypeRate alloc];
        v6 = 1;
        goto LABEL_12;
      case ',':
        v7 = [MUPlaceActionBarTypeFavorite alloc];
        v8 = 0;
        break;
      case '-':
        v7 = [MUPlaceActionBarTypeFavorite alloc];
        v8 = 1;
        break;
      default:
        goto LABEL_13;
    }

    v11 = [(MUPlaceActionBarTypeFavorite *)v7 initWithFavorited:v8];
    goto LABEL_18;
  }

  if (v4 == 37)
  {
    v9 = [MUPlaceActionBarTypeAdd alloc];
    v10 = 0;
LABEL_15:
    v11 = [(MUPlaceActionBarTypeAdd *)v9 initWithAdded:v10];
    goto LABEL_18;
  }

  if (v4 == 38)
  {
    v9 = [MUPlaceActionBarTypeAdd alloc];
    v10 = 1;
    goto LABEL_15;
  }

  if (v4 != 42)
  {
LABEL_13:
    v20.receiver = self;
    v20.super_class = MUPlaceActionRowItemViewModel;
    v12 = [(MUActionRowItemViewModel *)&v20 leadingActionBarItem];
    goto LABEL_19;
  }

  v5 = [MUPlaceActionBarTypeRate alloc];
  v6 = 0;
LABEL_12:
  v11 = [(MUPlaceActionBarTypeRate *)v5 initWithRated:v6];
LABEL_18:
  v13 = v11;
  v14 = [MUPlaceActionBarItem alloc];
  v15 = [(MUPlaceActionRowItemViewModel *)self accessibilityIdentifier];
  v12 = [(MUPlaceActionBarItem *)v14 initWithType:v13 axID:v15];

  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__MUPlaceActionRowItemViewModel_leadingActionBarItem__block_invoke;
  v17[3] = &unk_1E821BAC8;
  objc_copyWeak(&v18, &location);
  [(MUPlaceActionBarItem *)v12 addHandler:v17];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

LABEL_19:

  return v12;
}

void __53__MUPlaceActionRowItemViewModel_leadingActionBarItem__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _notifyObserversDidSelect];
    WeakRetained = v2;
  }
}

- (id)analyticsButtonValue
{
  v2 = MEMORY[0x1E69A24B0];
  v3 = [(MUPlaceActionRowItemViewModel *)self actionRowItem];
  v4 = [v3 resolvedActionItem];
  v5 = [v2 moduleButtonForType:{MURevealedButtonModuleTypeForActionType(objc_msgSend(v4, "type"))}];

  return v5;
}

- (id)preferredBackgroundColor
{
  v2 = [(MKPlaceCardActionItem *)self->_actionRowItem resolvedActionItem];
  v3 = [v2 backgroundColor];

  return v3;
}

- (id)preferredTintColor
{
  v2 = [(MKPlaceCardActionItem *)self->_actionRowItem resolvedActionItem];
  v3 = [v2 glyphColor];

  return v3;
}

- (id)accessibilityIdentifier
{
  v2 = [(MKPlaceCardActionItem *)self->_actionRowItem resolvedActionItem];
  [v2 type];
  v3 = MKPlaceCardActionTypeAsString();

  return v3;
}

- (id)buildMenuWithPresentationOptions:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_menuProvider);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_menuProvider);
    v7 = [v6 menuForActionItem:self->_actionRowItem];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([v10 isEqualToString:@"enabled"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"selected"))
  {
    [(MUActionRowItemViewModel *)self _notifyObserversDidUpdate];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MUPlaceActionRowItemViewModel;
    [(MUPlaceActionRowItemViewModel *)&v13 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)setMenuProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_menuProvider);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_menuProvider, obj);
    [(MUActionRowItemViewModel *)self _notifyObserversDidUpdate];
    v5 = obj;
  }
}

- (BOOL)isSelected
{
  v2 = [(MKPlaceCardActionItem *)self->_actionRowItem resolvedActionItem];
  v3 = [v2 selected];

  return v3;
}

- (BOOL)isEnabled
{
  v2 = [(MKPlaceCardActionItem *)self->_actionRowItem resolvedActionItem];
  v3 = [v2 enabled];

  return v3;
}

- (id)actionBarSymbolName
{
  v2 = [(MKPlaceCardActionItem *)self->_actionRowItem resolvedActionItem];
  v3 = [v2 actionBarGlyph];

  return v3;
}

- (id)symbolName
{
  v2 = [(MKPlaceCardActionItem *)self->_actionRowItem resolvedActionItem];
  v3 = [v2 glyph];

  return v3;
}

- (id)titleText
{
  v2 = [(MKPlaceCardActionItem *)self->_actionRowItem resolvedActionItem];
  v3 = [v2 displayString];

  return v3;
}

- (void)dealloc
{
  [(MKPlaceCardActionItem *)self->_actionRowItem removeObserver:self forKeyPath:@"enabled"];
  [(MKPlaceCardActionItem *)self->_actionRowItem removeObserver:self forKeyPath:@"selected"];
  v3.receiver = self;
  v3.super_class = MUPlaceActionRowItemViewModel;
  [(MUPlaceActionRowItemViewModel *)&v3 dealloc];
}

- (MUPlaceActionRowItemViewModel)initWithActionRowItem:(id)a3 menuProvider:(id)a4 style:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = MUPlaceActionRowItemViewModel;
  v11 = [(MUActionRowItemViewModel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_actionRowItem, a3);
    objc_storeWeak(&v12->_menuProvider, v10);
    v12->_style = a5;
    [(MKPlaceCardActionItem *)v12->_actionRowItem addObserver:v12 forKeyPath:@"enabled" options:1 context:0];
    [(MKPlaceCardActionItem *)v12->_actionRowItem addObserver:v12 forKeyPath:@"selected" options:1 context:0];
  }

  return v12;
}

@end