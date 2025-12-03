@interface UnifiedTabBar
- (BOOL)canCloseItem:(id)item;
- (BOOL)shouldPinItemsDroppedAtPoint:(CGPoint)point;
- (BOOL)shouldSpringLoadItem:(id)item;
- (BOOL)shouldUseAddressFieldContextMenuForItem:(id)item;
- (NSArray)items;
- (UnifiedTabBarDelegate)delegate;
- (_SFNavigationIntentHandling)navigationIntentHandler;
- (id)itemAtPoint:(CGPoint)point;
- (id)targetedDragPreviewForLiftingItem:(id)item;
- (id)targetedPreviewForDismissingMenuForItem:(id)item;
- (int64_t)itemDragContentType;
- (unint64_t)contextMenuOptionsForItem:(id)item;
- (void)activateItem:(id)item;
- (void)closeItem:(id)item;
- (void)didEndShowingContextMenuForItem:(id)item;
- (void)didSelectItem:(id)item;
- (void)performDropWithNavigationIntent:(id)intent;
- (void)willBeginShowingContextMenuForItem:(id)item;
@end

@implementation UnifiedTabBar

- (void)didSelectItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabCollectionView:self didSelectItem:itemCopy];
}

- (BOOL)canCloseItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(self) = [WeakRetained tabCollectionView:self canCloseItem:itemCopy];

  return self;
}

- (void)closeItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabCollectionView:self closeItem:itemCopy];
}

- (NSArray)items
{
  itemArrangement = [(SFUnifiedTabBar *)self itemArrangement];
  items = [itemArrangement items];
  v4 = [items safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_73];

  return v4;
}

void *__22__UnifiedTabBar_items__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (int64_t)itemDragContentType
{
  if ([(SFUnifiedTabBar *)self role]== 1)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

- (void)activateItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabCollectionView:self didSelectItem:itemCopy];
}

- (id)itemAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  itemArrangement = [(SFUnifiedTabBar *)self itemArrangement];
  activeItemIsExpanded = [itemArrangement activeItemIsExpanded];

  if (activeItemIsExpanded)
  {
    v8 = 0;
  }

  else
  {
    v9 = [(SFUnifiedTabBar *)self tabBarItemAtPoint:x, y];
    v10 = [(SFUnifiedTabBar *)self viewForBarItem:v9];
    v11 = [(SFUnifiedTabBar *)self hitTest:0 withEvent:x, y];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v8 = 0, v11 == v10))
    {
      v8 = v9;
    }
  }

  return v8;
}

- (id)targetedDragPreviewForLiftingItem:(id)item
{
  v4 = [(SFUnifiedTabBar *)self viewForBarItem:item];
  window = [v4 window];

  if (window)
  {
    v6 = objc_alloc(MEMORY[0x277D75488]);
    superview = [v4 superview];
    itemContainerView = superview;
    if (!superview)
    {
      itemContainerView = [(SFUnifiedTabBar *)self itemContainerView];
    }

    [v4 center];
    v9 = [v6 initWithContainer:itemContainerView center:?];
    if (!superview)
    {
    }

    v10 = objc_alloc(MEMORY[0x277D75B88]);
    previewParameters = [v4 previewParameters];
    window = [v10 initWithView:v4 parameters:previewParameters target:v9];
  }

  return window;
}

- (id)targetedPreviewForDismissingMenuForItem:(id)item
{
  v4 = [(SFUnifiedTabBar *)self viewForBarItem:item];
  window = [v4 window];

  if (window)
  {
    v6 = objc_alloc(MEMORY[0x277D75488]);
    superview = [v4 superview];
    itemContainerView = superview;
    if (!superview)
    {
      itemContainerView = [(SFUnifiedTabBar *)self itemContainerView];
    }

    [v4 center];
    v9 = [v6 initWithContainer:itemContainerView center:?];
    if (!superview)
    {
    }

    v10 = objc_alloc(MEMORY[0x277D75B88]);
    previewParameters = [v4 previewParameters];
    window = [v10 initWithView:v4 parameters:previewParameters target:v9];
  }

  return window;
}

- (BOOL)shouldUseAddressFieldContextMenuForItem:(id)item
{
  itemCopy = item;
  itemArrangement = [(SFUnifiedTabBar *)self itemArrangement];
  activeItem = [itemArrangement activeItem];

  v7 = activeItem == itemCopy && [(SFUnifiedTabBar *)self role]!= 2;
  return v7;
}

- (unint64_t)contextMenuOptionsForItem:(id)item
{
  itemCopy = item;
  if ([(UnifiedTabBar *)self hidesInactiveTabs])
  {
    v5 = 0;
  }

  else
  {
    v5 = 53298;
  }

  itemArrangement = [(SFUnifiedTabBar *)self itemArrangement];
  activeItem = [itemArrangement activeItem];

  if (activeItem == itemCopy)
  {
    role = [(SFUnifiedTabBar *)self role];

    if (role != 2)
    {
      searchFieldShowsPersistentStopReloadButton = [(SFUnifiedTabBar *)self searchFieldShowsPersistentStopReloadButton];
      v10 = 8325;
      if (searchFieldShowsPersistentStopReloadButton)
      {
        v10 = 8197;
      }

      v5 |= v10;
    }
  }

  else
  {
  }

  return v5;
}

- (void)willBeginShowingContextMenuForItem:(id)item
{
  itemContainerView = [(SFUnifiedTabBar *)self itemContainerView];
  [itemContainerView setUserInteractionEnabled:0];
}

- (void)didEndShowingContextMenuForItem:(id)item
{
  itemCopy = item;
  itemContainerView = [(SFUnifiedTabBar *)self itemContainerView];
  [itemContainerView setUserInteractionEnabled:1];

  [(UnifiedTabBar *)self cleanUpDragPreviewForItem:itemCopy];
}

- (BOOL)shouldSpringLoadItem:(id)item
{
  itemCopy = item;
  itemArrangement = [(SFUnifiedTabBar *)self itemArrangement];
  activeItem = [itemArrangement activeItem];

  return activeItem != itemCopy;
}

- (BOOL)shouldPinItemsDroppedAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(SFUnifiedTabBar *)self pinnedItemDropArea];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (void)performDropWithNavigationIntent:(id)intent
{
  intentCopy = intent;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    itemArrangement = [(SFUnifiedTabBar *)self itemArrangement];
    activeItem = [itemArrangement activeItem];
    [WeakRetained tabCollectionView:self item:activeItem didProduceNavigationIntent:intentCopy];
  }
}

- (UnifiedTabBarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (_SFNavigationIntentHandling)navigationIntentHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationIntentHandler);

  return WeakRetained;
}

@end