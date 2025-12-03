@interface MUActionItemCellModel
- (BOOL)isEnabled;
- (MUActionItemCellModel)initWithActionItem:(id)item;
- (MUDynamicButtonCellModelChangeDelegate)changeDelegate;
- (NSString)symbolName;
- (NSString)titleString;
- (id)accessibilityIdentifierForAction;
- (int64_t)actionStyle;
- (void)_registerObserver;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (([pathCopy isEqualToString:@"enabled"] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", @"selected"))
  {
    changeDelegate = [(MUActionItemCellModel *)self changeDelegate];
    [changeDelegate dynamicButtonCellModelDidChange:self];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = MUActionItemCellModel;
    [(MUActionItemCellModel *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
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
  _resolvedActionItem = [(MUActionItemCellModel *)self _resolvedActionItem];
  v3 = [_resolvedActionItem isDestructiveForDisplayStyle:0];

  return v3;
}

- (BOOL)isEnabled
{
  _resolvedActionItem = [(MUActionItemCellModel *)self _resolvedActionItem];
  enabled = [_resolvedActionItem enabled];

  return enabled;
}

- (id)accessibilityIdentifierForAction
{
  resolvedActionItem = [(MKPlaceCardActionItem *)self->_actionItem resolvedActionItem];
  [resolvedActionItem type];
  v3 = MKPlaceCardActionTypeAsString();

  return v3;
}

- (NSString)titleString
{
  _resolvedActionItem = [(MUActionItemCellModel *)self _resolvedActionItem];
  v3 = [_resolvedActionItem titleForDisplayStyle:0];

  return v3;
}

- (NSString)symbolName
{
  _resolvedActionItem = [(MUActionItemCellModel *)self _resolvedActionItem];
  v3 = [_resolvedActionItem symbolForDisplayStyle:0];

  return v3;
}

- (MUActionItemCellModel)initWithActionItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = MUActionItemCellModel;
  v6 = [(MUActionItemCellModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_actionItem, item);
    [(MUActionItemCellModel *)v7 _registerObserver];
  }

  return v7;
}

@end