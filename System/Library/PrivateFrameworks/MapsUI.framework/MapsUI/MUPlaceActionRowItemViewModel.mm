@interface MUPlaceActionRowItemViewModel
- (BOOL)isEnabled;
- (BOOL)isSelected;
- (MUPlaceActionRowItemViewModel)initWithActionRowItem:(id)item menuProvider:(id)provider style:(unint64_t)style;
- (MUPlaceCardActionsRowViewMenuProvider)menuProvider;
- (id)accessibilityIdentifier;
- (id)actionBarSymbolName;
- (id)analyticsButtonValue;
- (id)buildMenuWithPresentationOptions:(id)options;
- (id)leadingActionBarItem;
- (id)preferredBackgroundColor;
- (id)preferredTintColor;
- (id)symbolName;
- (id)titleText;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setMenuProvider:(id)provider;
@end

@implementation MUPlaceActionRowItemViewModel

- (MUPlaceCardActionsRowViewMenuProvider)menuProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_menuProvider);

  return WeakRetained;
}

- (id)leadingActionBarItem
{
  resolvedActionItem = [(MKPlaceCardActionItem *)self->_actionRowItem resolvedActionItem];
  type = [resolvedActionItem type];

  if (type > 42)
  {
    switch(type)
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

  if (type == 37)
  {
    v9 = [MUPlaceActionBarTypeAdd alloc];
    v10 = 0;
LABEL_15:
    v11 = [(MUPlaceActionBarTypeAdd *)v9 initWithAdded:v10];
    goto LABEL_18;
  }

  if (type == 38)
  {
    v9 = [MUPlaceActionBarTypeAdd alloc];
    v10 = 1;
    goto LABEL_15;
  }

  if (type != 42)
  {
LABEL_13:
    v20.receiver = self;
    v20.super_class = MUPlaceActionRowItemViewModel;
    leadingActionBarItem = [(MUActionRowItemViewModel *)&v20 leadingActionBarItem];
    goto LABEL_19;
  }

  v5 = [MUPlaceActionBarTypeRate alloc];
  v6 = 0;
LABEL_12:
  v11 = [(MUPlaceActionBarTypeRate *)v5 initWithRated:v6];
LABEL_18:
  v13 = v11;
  v14 = [MUPlaceActionBarItem alloc];
  accessibilityIdentifier = [(MUPlaceActionRowItemViewModel *)self accessibilityIdentifier];
  leadingActionBarItem = [(MUPlaceActionBarItem *)v14 initWithType:v13 axID:accessibilityIdentifier];

  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__MUPlaceActionRowItemViewModel_leadingActionBarItem__block_invoke;
  v17[3] = &unk_1E821BAC8;
  objc_copyWeak(&v18, &location);
  [(MUPlaceActionBarItem *)leadingActionBarItem addHandler:v17];
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);

LABEL_19:

  return leadingActionBarItem;
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
  actionRowItem = [(MUPlaceActionRowItemViewModel *)self actionRowItem];
  resolvedActionItem = [actionRowItem resolvedActionItem];
  v5 = [v2 moduleButtonForType:{MURevealedButtonModuleTypeForActionType(objc_msgSend(resolvedActionItem, "type"))}];

  return v5;
}

- (id)preferredBackgroundColor
{
  resolvedActionItem = [(MKPlaceCardActionItem *)self->_actionRowItem resolvedActionItem];
  backgroundColor = [resolvedActionItem backgroundColor];

  return backgroundColor;
}

- (id)preferredTintColor
{
  resolvedActionItem = [(MKPlaceCardActionItem *)self->_actionRowItem resolvedActionItem];
  glyphColor = [resolvedActionItem glyphColor];

  return glyphColor;
}

- (id)accessibilityIdentifier
{
  resolvedActionItem = [(MKPlaceCardActionItem *)self->_actionRowItem resolvedActionItem];
  [resolvedActionItem type];
  v3 = MKPlaceCardActionTypeAsString();

  return v3;
}

- (id)buildMenuWithPresentationOptions:(id)options
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (([pathCopy isEqualToString:@"enabled"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"selected"))
  {
    [(MUActionRowItemViewModel *)self _notifyObserversDidUpdate];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MUPlaceActionRowItemViewModel;
    [(MUPlaceActionRowItemViewModel *)&v13 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)setMenuProvider:(id)provider
{
  obj = provider;
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
  resolvedActionItem = [(MKPlaceCardActionItem *)self->_actionRowItem resolvedActionItem];
  selected = [resolvedActionItem selected];

  return selected;
}

- (BOOL)isEnabled
{
  resolvedActionItem = [(MKPlaceCardActionItem *)self->_actionRowItem resolvedActionItem];
  enabled = [resolvedActionItem enabled];

  return enabled;
}

- (id)actionBarSymbolName
{
  resolvedActionItem = [(MKPlaceCardActionItem *)self->_actionRowItem resolvedActionItem];
  actionBarGlyph = [resolvedActionItem actionBarGlyph];

  return actionBarGlyph;
}

- (id)symbolName
{
  resolvedActionItem = [(MKPlaceCardActionItem *)self->_actionRowItem resolvedActionItem];
  glyph = [resolvedActionItem glyph];

  return glyph;
}

- (id)titleText
{
  resolvedActionItem = [(MKPlaceCardActionItem *)self->_actionRowItem resolvedActionItem];
  displayString = [resolvedActionItem displayString];

  return displayString;
}

- (void)dealloc
{
  [(MKPlaceCardActionItem *)self->_actionRowItem removeObserver:self forKeyPath:@"enabled"];
  [(MKPlaceCardActionItem *)self->_actionRowItem removeObserver:self forKeyPath:@"selected"];
  v3.receiver = self;
  v3.super_class = MUPlaceActionRowItemViewModel;
  [(MUPlaceActionRowItemViewModel *)&v3 dealloc];
}

- (MUPlaceActionRowItemViewModel)initWithActionRowItem:(id)item menuProvider:(id)provider style:(unint64_t)style
{
  itemCopy = item;
  providerCopy = provider;
  v14.receiver = self;
  v14.super_class = MUPlaceActionRowItemViewModel;
  v11 = [(MUActionRowItemViewModel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_actionRowItem, item);
    objc_storeWeak(&v12->_menuProvider, providerCopy);
    v12->_style = style;
    [(MKPlaceCardActionItem *)v12->_actionRowItem addObserver:v12 forKeyPath:@"enabled" options:1 context:0];
    [(MKPlaceCardActionItem *)v12->_actionRowItem addObserver:v12 forKeyPath:@"selected" options:1 context:0];
  }

  return v12;
}

@end