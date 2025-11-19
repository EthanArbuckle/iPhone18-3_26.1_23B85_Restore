@interface MUActionItemCellModel
- (BOOL)isEnabled;
- (MUActionItemCellModel)initWithActionItem:(id)a3;
- (MUDynamicButtonCellModelChangeDelegate)changeDelegate;
- (NSString)symbolName;
- (NSString)titleString;
- (id)accessibilityIdentifierForAction;
- (int64_t)actionStyle;
- (void)_registerObserver;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation MUActionItemCellModel

- (MUDynamicButtonCellModelChangeDelegate)changeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);

  return WeakRetained;
}

- (void)dealloc
{
  [(MKPlaceCardActionItem *)self->_actionItem removeObserver:self forKeyPath:@"enabled"];
  [(MKPlaceCardActionItem *)self->_actionItem removeObserver:self forKeyPath:@"selected"];
  v3.receiver = self;
  v3.super_class = MUActionItemCellModel;
  [(MUActionItemCellModel *)&v3 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([v10 isEqualToString:@"enabled"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"selected"))
  {
    v13 = [(MUActionItemCellModel *)self changeDelegate];
    [v13 dynamicButtonCellModelDidChange:self];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = MUActionItemCellModel;
    [(MUActionItemCellModel *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)_registerObserver
{
  [(MKPlaceCardActionItem *)self->_actionItem addObserver:self forKeyPath:@"enabled" options:1 context:0];
  actionItem = self->_actionItem;

  [(MKPlaceCardActionItem *)actionItem addObserver:self forKeyPath:@"selected" options:1 context:0];
}

- (int64_t)actionStyle
{
  v2 = [(MUActionItemCellModel *)self _resolvedActionItem];
  v3 = [v2 isDestructiveForDisplayStyle:0];

  return v3;
}

- (BOOL)isEnabled
{
  v2 = [(MUActionItemCellModel *)self _resolvedActionItem];
  v3 = [v2 enabled];

  return v3;
}

- (id)accessibilityIdentifierForAction
{
  v2 = [(MKPlaceCardActionItem *)self->_actionItem resolvedActionItem];
  [v2 type];
  v3 = MKPlaceCardActionTypeAsString();

  return v3;
}

- (NSString)titleString
{
  v2 = [(MUActionItemCellModel *)self _resolvedActionItem];
  v3 = [v2 titleForDisplayStyle:0];

  return v3;
}

- (NSString)symbolName
{
  v2 = [(MUActionItemCellModel *)self _resolvedActionItem];
  v3 = [v2 symbolForDisplayStyle:0];

  return v3;
}

- (MUActionItemCellModel)initWithActionItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUActionItemCellModel;
  v6 = [(MUActionItemCellModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actionItem, a3);
    [(MUActionItemCellModel *)v7 _registerObserver];
  }

  return v7;
}

@end