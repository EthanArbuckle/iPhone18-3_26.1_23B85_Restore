@interface UnifiedTabBar
- (BOOL)canCloseItem:(id)a3;
- (BOOL)shouldPinItemsDroppedAtPoint:(CGPoint)a3;
- (BOOL)shouldSpringLoadItem:(id)a3;
- (BOOL)shouldUseAddressFieldContextMenuForItem:(id)a3;
- (NSArray)items;
- (UnifiedTabBarDelegate)delegate;
- (_SFNavigationIntentHandling)navigationIntentHandler;
- (id)itemAtPoint:(CGPoint)a3;
- (id)targetedDragPreviewForLiftingItem:(id)a3;
- (id)targetedPreviewForDismissingMenuForItem:(id)a3;
- (int64_t)itemDragContentType;
- (unint64_t)contextMenuOptionsForItem:(id)a3;
- (void)activateItem:(id)a3;
- (void)closeItem:(id)a3;
- (void)didEndShowingContextMenuForItem:(id)a3;
- (void)didSelectItem:(id)a3;
- (void)performDropWithNavigationIntent:(id)a3;
- (void)willBeginShowingContextMenuForItem:(id)a3;
@end

@implementation UnifiedTabBar

- (void)didSelectItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabCollectionView:self didSelectItem:v4];
}

- (BOOL)canCloseItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  LOBYTE(self) = [WeakRetained tabCollectionView:self canCloseItem:v4];

  return self;
}

- (void)closeItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabCollectionView:self closeItem:v4];
}

- (NSArray)items
{
  v2 = [(SFUnifiedTabBar *)self itemArrangement];
  v3 = [v2 items];
  v4 = [v3 safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_73];

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

- (void)activateItem:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained tabCollectionView:self didSelectItem:v4];
}

- (id)itemAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(SFUnifiedTabBar *)self itemArrangement];
  v7 = [v6 activeItemIsExpanded];

  if (v7)
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

- (id)targetedDragPreviewForLiftingItem:(id)a3
{
  v4 = [(SFUnifiedTabBar *)self viewForBarItem:a3];
  v5 = [v4 window];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D75488]);
    v7 = [v4 superview];
    v8 = v7;
    if (!v7)
    {
      v8 = [(SFUnifiedTabBar *)self itemContainerView];
    }

    [v4 center];
    v9 = [v6 initWithContainer:v8 center:?];
    if (!v7)
    {
    }

    v10 = objc_alloc(MEMORY[0x277D75B88]);
    v11 = [v4 previewParameters];
    v5 = [v10 initWithView:v4 parameters:v11 target:v9];
  }

  return v5;
}

- (id)targetedPreviewForDismissingMenuForItem:(id)a3
{
  v4 = [(SFUnifiedTabBar *)self viewForBarItem:a3];
  v5 = [v4 window];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D75488]);
    v7 = [v4 superview];
    v8 = v7;
    if (!v7)
    {
      v8 = [(SFUnifiedTabBar *)self itemContainerView];
    }

    [v4 center];
    v9 = [v6 initWithContainer:v8 center:?];
    if (!v7)
    {
    }

    v10 = objc_alloc(MEMORY[0x277D75B88]);
    v11 = [v4 previewParameters];
    v5 = [v10 initWithView:v4 parameters:v11 target:v9];
  }

  return v5;
}

- (BOOL)shouldUseAddressFieldContextMenuForItem:(id)a3
{
  v4 = a3;
  v5 = [(SFUnifiedTabBar *)self itemArrangement];
  v6 = [v5 activeItem];

  v7 = v6 == v4 && [(SFUnifiedTabBar *)self role]!= 2;
  return v7;
}

- (unint64_t)contextMenuOptionsForItem:(id)a3
{
  v4 = a3;
  if ([(UnifiedTabBar *)self hidesInactiveTabs])
  {
    v5 = 0;
  }

  else
  {
    v5 = 53298;
  }

  v6 = [(SFUnifiedTabBar *)self itemArrangement];
  v7 = [v6 activeItem];

  if (v7 == v4)
  {
    v8 = [(SFUnifiedTabBar *)self role];

    if (v8 != 2)
    {
      v9 = [(SFUnifiedTabBar *)self searchFieldShowsPersistentStopReloadButton];
      v10 = 8325;
      if (v9)
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

- (void)willBeginShowingContextMenuForItem:(id)a3
{
  v3 = [(SFUnifiedTabBar *)self itemContainerView];
  [v3 setUserInteractionEnabled:0];
}

- (void)didEndShowingContextMenuForItem:(id)a3
{
  v5 = a3;
  v4 = [(SFUnifiedTabBar *)self itemContainerView];
  [v4 setUserInteractionEnabled:1];

  [(UnifiedTabBar *)self cleanUpDragPreviewForItem:v5];
}

- (BOOL)shouldSpringLoadItem:(id)a3
{
  v4 = a3;
  v5 = [(SFUnifiedTabBar *)self itemArrangement];
  v6 = [v5 activeItem];

  return v6 != v4;
}

- (BOOL)shouldPinItemsDroppedAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(SFUnifiedTabBar *)self pinnedItemDropArea];
  v9 = x;
  v10 = y;

  return CGRectContainsPoint(*&v5, *&v9);
}

- (void)performDropWithNavigationIntent:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [(SFUnifiedTabBar *)self itemArrangement];
    v6 = [v5 activeItem];
    [WeakRetained tabCollectionView:self item:v6 didProduceNavigationIntent:v7];
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