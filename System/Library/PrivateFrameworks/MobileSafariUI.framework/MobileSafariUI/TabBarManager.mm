@interface TabBarManager
- (BOOL)_canAnimateInlineTabBarForTransitionToItemArrangement:(id)arrangement;
- (BOOL)_canAnimateStandaloneTabBarForTransitionToItemArrangement:(id)arrangement;
- (TabBarManager)init;
- (UnifiedTabBar)effectiveTabBar;
- (id)_inlineItemArrangementForItemArrangement:(id)arrangement displayMode:(int64_t)mode;
- (id)createStandaloneTabBar;
- (id)standaloneItemArrangementForItemArrangement:(id)arrangement displayMode:(int64_t)mode;
- (void)_configureStandaloneTabBar;
- (void)_notifyDidCreateTabBar:(id)bar;
- (void)_notifyDidUpdateDisplayMode;
- (void)_setItemArrangement:(id)arrangement animated:(BOOL)animated keepingItemVisible:(id)visible completionHandler:(id)handler;
- (void)_setUsesInlineTabBar:(BOOL)bar;
- (void)_setUsesStandaloneTabBar:(BOOL)bar;
- (void)_updateSearchFieldIcon;
- (void)_updateUnifiedBarContentArrangement;
- (void)scrollToActiveItemAnimated:(BOOL)animated;
- (void)setActiveFavicon:(id)favicon;
- (void)setActiveItem:(id)item animated:(BOOL)animated;
- (void)setActiveItemIsExpanded:(BOOL)expanded animated:(BOOL)animated completionHandler:(id)handler;
- (void)setBookmarksBar:(id)bar;
- (void)setCompletionItemIcon:(id)icon;
- (void)setDisplayMode:(int64_t)mode;
- (void)setShowingLockdownStatusBar:(BOOL)bar;
- (void)setSuppressesStandaloneTabBar:(BOOL)bar;
- (void)setUnifiedBar:(id)bar;
@end

@implementation TabBarManager

- (TabBarManager)init
{
  v11.receiver = self;
  v11.super_class = TabBarManager;
  v2 = [(TabBarManager *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D28EA8]);
    itemArrangement = v2->_itemArrangement;
    v2->_itemArrangement = v3;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    if (([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0)
    {
      v7 = objc_alloc_init(MEMORY[0x277D28F28]);
      minimizedProgressView = v2->_minimizedProgressView;
      v2->_minimizedProgressView = v7;
    }

    v9 = v2;
  }

  return v2;
}

- (UnifiedTabBar)effectiveTabBar
{
  displayMode = self->_displayMode;
  if (displayMode == 1)
  {
    v4 = 64;
LABEL_5:
    v5 = *(&self->super.isa + v4);

    return v5;
  }

  if (displayMode == 2)
  {
    v4 = 72;
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (void)setUnifiedBar:(id)bar
{
  barCopy = bar;
  v6 = barCopy;
  if (self->_unifiedBar != barCopy)
  {
    v8 = barCopy;
    v7 = objc_alloc_init(MEMORY[0x277D28E90]);
    [(SFUnifiedBar *)self->_unifiedBar setContentArrangement:v7];

    objc_storeStrong(&self->_unifiedBar, bar);
    [(SFUnifiedTabBar *)self->_inlineTabBar setNavigationDelegate:v8];
    [(SFUnifiedTabBar *)self->_standaloneTabBar setNavigationDelegate:v8];
    [(TabBarManager *)self _updateUnifiedBarContentArrangement];
    v6 = v8;
  }
}

- (void)setBookmarksBar:(id)bar
{
  barCopy = bar;
  if (self->_bookmarksBar != barCopy)
  {
    v6 = barCopy;
    objc_storeStrong(&self->_bookmarksBar, bar);
    [(TabBarManager *)self _updateUnifiedBarContentArrangement];
    barCopy = v6;
  }
}

- (void)setShowingLockdownStatusBar:(BOOL)bar
{
  if (self->_showingLockdownStatusBar != bar)
  {
    self->_showingLockdownStatusBar = bar;
    if (bar)
    {
      v5 = objc_alloc_init(MEMORY[0x277D28CB0]);
    }

    else
    {
      v5 = 0;
    }

    lockdownStatusBar = self->_lockdownStatusBar;
    self->_lockdownStatusBar = v5;

    [(TabBarManager *)self _updateUnifiedBarContentArrangement];
  }
}

- (void)setActiveFavicon:(id)favicon
{
  objc_storeStrong(&self->_activeFavicon, favicon);

  [(TabBarManager *)self _updateSearchFieldIcon];
}

- (void)setCompletionItemIcon:(id)icon
{
  objc_storeStrong(&self->_completionItemIcon, icon);

  [(TabBarManager *)self _updateSearchFieldIcon];
}

- (void)_updateSearchFieldIcon
{
  if (self->_completionItemIcon || self->_activeFavicon)
  {
    inlineTabBar = self->_inlineTabBar;

    [(SFUnifiedTabBar *)inlineTabBar setSearchFieldIcon:?];
  }

  else
  {
    v4 = [MEMORY[0x277D755B8] systemImageNamed:@"globe"];
    [(SFUnifiedTabBar *)self->_inlineTabBar setSearchFieldIcon:v4];
  }
}

- (void)setDisplayMode:(int64_t)mode
{
  if (self->_displayMode != mode)
  {
    v21 = v8;
    v22 = v7;
    v23 = v6;
    v24 = v5;
    v25 = v4;
    v26 = v3;
    self->_displayMode = mode;
    cachedInlineTabBar = self->_cachedInlineTabBar;
    [(TabBarManager *)self _setUsesInlineTabBar:(mode - 1) < 2];
    [(TabBarManager *)self _updateUsesStandaloneTabBar];
    [(TabBarManager *)self _updateUnifiedBarContentArrangement];
    if (self->_inlineTabBar)
    {
      if (cachedInlineTabBar)
      {
        activeItem = 0;
      }

      else
      {
        activeItem = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];
      }

      v15 = [(UnifiedTabBar *)self->_inlineTabBar window:v8];

      if (v15)
      {
        [(UnifiedTabBar *)self->_inlineTabBar layoutIfNeeded];
      }

      inlineTabBar = self->_inlineTabBar;
      v17 = [(TabBarManager *)self _inlineItemArrangementForItemArrangement:self->_itemArrangement displayMode:mode];
      [(SFUnifiedTabBar *)inlineTabBar setItemArrangement:v17 animated:0 keepingItemVisible:activeItem completionHandler:0];

      [(SFUnifiedTabBar *)self->_inlineTabBar setRole:mode == 2];
      [(SFUnifiedTabBar *)self->_inlineTabBar setNavigationDelegate:self->_unifiedBar];
      tabHoverPreviewController = [(SFUnifiedTabBar *)self->_inlineTabBar tabHoverPreviewController];
      [tabHoverPreviewController setEnabled:(mode & 0xFFFFFFFFFFFFFFFDLL) != 0];

      [(SFUnifiedTabBar *)self->_inlineTabBar setSearchFieldShowsFormatMenuButtonAccessories:_SFDeviceIsPad() ^ 1];
      [(SFUnifiedTabBar *)self->_inlineTabBar setMinimizedProgressView:self->_minimizedProgressView];
    }

    [(TabBarManager *)self _configureStandaloneTabBar:v21];
    v19 = [MEMORY[0x277D49A08] isSolariumEnabled] ^ 1;
    if (mode == 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    [(SFUnifiedBar *)self->_unifiedBar setShowsSeparator:v20];

    [(TabBarManager *)self _notifyDidUpdateDisplayMode];
  }
}

- (void)_updateUnifiedBarContentArrangement
{
  array = [MEMORY[0x277CBEB18] array];
  [array safari_addObjectUnlessNil:self->_lockdownStatusBar];
  [array safari_addObjectUnlessNil:self->_bookmarksBar];
  [array safari_addObjectUnlessNil:self->_standaloneTabBar];
  if (([MEMORY[0x277D49A08] isSolariumEnabled] & 1) == 0)
  {
    if (self->_standaloneTabBar)
    {
      v3 = 2;
    }

    else
    {
      v3 = self->_suppressesStandaloneTabBar && self->_displayMode == 2;
    }

    [(SFUnifiedBar *)self->_unifiedBar setMarginLevel:v3];
  }

  v4 = [objc_alloc(MEMORY[0x277D28E90]) initWithInlineContentView:self->_inlineTabBar standaloneContentViews:array];
  [(SFUnifiedBar *)self->_unifiedBar setContentArrangement:v4];
}

- (void)_setUsesInlineTabBar:(BOOL)bar
{
  p_inlineTabBar = &self->_inlineTabBar;
  inlineTabBar = self->_inlineTabBar;
  if (((inlineTabBar == 0) ^ bar))
  {
    return;
  }

  p_cachedInlineTabBar = &self->_cachedInlineTabBar;
  if (bar)
  {
    if (*p_cachedInlineTabBar)
    {
      v7 = *p_cachedInlineTabBar;
    }

    else
    {
      v7 = objc_alloc_init(UnifiedTabBar);
    }

    v8 = self->_inlineTabBar;
    self->_inlineTabBar = v7;

    [(SFUnifiedTabBar *)self->_inlineTabBar setShowsSquishedTitleContainer:1];
    [(SFUnifiedTabBar *)self->_inlineTabBar setRole:self->_displayMode == 2];
    cachedInlineTabBar = self->_cachedInlineTabBar;
    if (cachedInlineTabBar)
    {
      goto LABEL_10;
    }

    [(TabBarManager *)self _notifyDidCreateTabBar:self->_inlineTabBar];
  }

  else
  {
    objc_storeStrong(&self->_cachedInlineTabBar, inlineTabBar);
    p_cachedInlineTabBar = p_inlineTabBar;
  }

  cachedInlineTabBar = *p_cachedInlineTabBar;
LABEL_10:
  *p_cachedInlineTabBar = 0;
}

- (void)_setUsesStandaloneTabBar:(BOOL)bar
{
  standaloneTabBar = self->_standaloneTabBar;
  if ((((standaloneTabBar == 0) ^ bar) & 1) == 0)
  {
    if (bar)
    {
      createStandaloneTabBar = [(TabBarManager *)self createStandaloneTabBar];
      v6 = self->_standaloneTabBar;
      self->_standaloneTabBar = createStandaloneTabBar;

      v7 = self->_standaloneTabBar;

      [(TabBarManager *)self _notifyDidCreateTabBar:v7];
    }

    else
    {
      self->_standaloneTabBar = 0;
    }
  }
}

- (id)createStandaloneTabBar
{
  v2 = objc_alloc_init(UnifiedTabBar);
  v3 = WBSMakeAccessibilityIdentifier();
  [(UnifiedTabBar *)v2 setAccessibilityIdentifier:v3];

  [(SFUnifiedTabBar *)v2 setRole:2];
  [(UnifiedTabBar *)v2 setMaximumContentSizeCategory:*MEMORY[0x277D76818]];
  if ([MEMORY[0x277D49A08] isSolariumEnabled])
  {
    [(SFUnifiedTabBar *)v2 setStyle:1];
  }

  return v2;
}

- (void)setSuppressesStandaloneTabBar:(BOOL)bar
{
  if (self->_suppressesStandaloneTabBar != bar)
  {
    self->_suppressesStandaloneTabBar = bar;
    [(TabBarManager *)self _updateUsesStandaloneTabBar];
    [(TabBarManager *)self _updateUnifiedBarContentArrangement];

    [(TabBarManager *)self _configureStandaloneTabBar];
  }
}

- (void)_configureStandaloneTabBar
{
  standaloneTabBar = self->_standaloneTabBar;
  if (standaloneTabBar)
  {
    v4 = [(TabBarManager *)self standaloneItemArrangementForItemArrangement:self->_itemArrangement displayMode:self->_displayMode];
    activeItem = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];
    [(SFUnifiedTabBar *)standaloneTabBar setItemArrangement:v4 animated:0 keepingItemVisible:activeItem completionHandler:0];

    unifiedBar = self->_unifiedBar;
    v7 = self->_standaloneTabBar;

    [(SFUnifiedTabBar *)v7 setNavigationDelegate:unifiedBar];
  }
}

- (void)setActiveItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement arrangementWithActiveItem:item];
  [(TabBarManager *)self _setItemArrangement:v6 animated:animatedCopy keepingItemVisible:0 completionHandler:0];
}

- (void)setActiveItemIsExpanded:(BOOL)expanded animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  expandedCopy = expanded;
  itemArrangement = self->_itemArrangement;
  handlerCopy = handler;
  v10 = [(SFUnifiedTabBarItemArrangement *)itemArrangement arrangementWithActiveItemIsExpanded:expandedCopy];
  [(TabBarManager *)self _setItemArrangement:v10 animated:animatedCopy keepingItemVisible:0 completionHandler:handlerCopy];
}

- (void)_setItemArrangement:(id)arrangement animated:(BOOL)animated keepingItemVisible:(id)visible completionHandler:(id)handler
{
  animatedCopy = animated;
  arrangementCopy = arrangement;
  visibleCopy = visible;
  handlerCopy = handler;
  objc_storeStrong(&self->_itemArrangement, arrangement);
  if (self->_inlineTabBar)
  {
    v14 = dispatch_group_create();
    v15 = v14;
    if (self->_inlineTabBar)
    {
      dispatch_group_enter(v14);
      v16 = [(TabBarManager *)self _inlineItemArrangementForItemArrangement:arrangementCopy displayMode:self->_displayMode];
      v17 = animatedCopy && [(TabBarManager *)self _canAnimateInlineTabBarForTransitionToItemArrangement:arrangementCopy];
      inlineTabBar = self->_inlineTabBar;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __83__TabBarManager__setItemArrangement_animated_keepingItemVisible_completionHandler___block_invoke;
      v26[3] = &unk_2781D4D40;
      v27 = v15;
      [(SFUnifiedTabBar *)inlineTabBar setItemArrangement:v16 animated:v17 keepingItemVisible:visibleCopy completionHandler:v26];
    }

    if (self->_standaloneTabBar)
    {
      dispatch_group_enter(v15);
      v19 = [(TabBarManager *)self standaloneItemArrangementForItemArrangement:arrangementCopy displayMode:self->_displayMode];
      if (animatedCopy)
      {
        if (visibleCopy)
        {
          animatedCopy = 1;
        }

        else
        {
          animatedCopy = [(TabBarManager *)self _canAnimateStandaloneTabBarForTransitionToItemArrangement:v19];
        }
      }

      standaloneTabBar = self->_standaloneTabBar;
      secondaryItem = [visibleCopy secondaryItem];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __83__TabBarManager__setItemArrangement_animated_keepingItemVisible_completionHandler___block_invoke_2;
      v24[3] = &unk_2781D4D40;
      v25 = v15;
      [(SFUnifiedTabBar *)standaloneTabBar setItemArrangement:v19 animated:animatedCopy keepingItemVisible:secondaryItem completionHandler:v24];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__TabBarManager__setItemArrangement_animated_keepingItemVisible_completionHandler___block_invoke_3;
    block[3] = &unk_2781D4D90;
    v23 = handlerCopy;
    dispatch_group_notify(v15, MEMORY[0x277D85CD0], block);
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

uint64_t __83__TabBarManager__setItemArrangement_animated_keepingItemVisible_completionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_inlineItemArrangementForItemArrangement:(id)arrangement displayMode:(int64_t)mode
{
  arrangementCopy = arrangement;
  v7 = arrangementCopy;
  switch(mode)
  {
    case 2:
      v11 = objc_alloc(MEMORY[0x277D28EA8]);
      activeItem = [v7 activeItem];
      self = [v11 initWithItem:activeItem activeItemIsExpanded:{objc_msgSend(v7, "activeItemIsExpanded")}];

      break;
    case 1:
      items = [arrangementCopy items];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __70__TabBarManager__inlineItemArrangementForItemArrangement_displayMode___block_invoke;
      v14[3] = &unk_2781DB868;
      v14[4] = self;
      v9 = [items safari_filterObjectsUsingBlock:v14];

      activeItem2 = [v7 activeItem];
      if ([(NSSet *)self->_hiddenItems containsObject:activeItem2])
      {

        activeItem2 = 0;
      }

      self = [objc_alloc(MEMORY[0x277D28EA8]) initWithItems:v9 activeItem:activeItem2 activeItemIsExpanded:objc_msgSend(v7 allowsScrollingPinnedItems:{"activeItemIsExpanded"), objc_msgSend(v7, "allowsScrollingPinnedItems")}];

      break;
    case 0:
      self = objc_alloc_init(MEMORY[0x277D28EA8]);
      break;
  }

  return self;
}

- (id)standaloneItemArrangementForItemArrangement:(id)arrangement displayMode:(int64_t)mode
{
  arrangementCopy = arrangement;
  if (mode >= 2)
  {
    if (mode == 2)
    {
      array = [MEMORY[0x277CBEB18] array];
      items = [arrangementCopy items];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __73__TabBarManager_standaloneItemArrangementForItemArrangement_displayMode___block_invoke;
      v16[3] = &unk_2781DB890;
      v16[4] = self;
      v10 = [items safari_mapAndFilterObjectsUsingBlock:v16];
      [array addObjectsFromArray:v10];

      activeItem = [arrangementCopy activeItem];
      if ([(NSSet *)self->_hiddenItems containsObject:activeItem])
      {

        activeItem = 0;
      }

      allowsScrollingPinnedItems = [arrangementCopy allowsScrollingPinnedItems];
      v13 = objc_alloc(MEMORY[0x277D28EA8]);
      secondaryItem = [activeItem secondaryItem];
      v4 = [v13 initWithItems:array activeItem:secondaryItem activeItemIsExpanded:0 allowsScrollingPinnedItems:allowsScrollingPinnedItems];
    }
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277D28EA8]);
  }

  return v4;
}

id __73__TabBarManager_standaloneItemArrangementForItemArrangement_displayMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 40) containsObject:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 secondaryItem];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    v4 = v7;
  }

  return v4;
}

- (BOOL)_canAnimateInlineTabBarForTransitionToItemArrangement:(id)arrangement
{
  if (self->_displayMode != 2)
  {
    return 1;
  }

  activeItem = [arrangement activeItem];
  itemArrangement = [(SFUnifiedTabBar *)self->_inlineTabBar itemArrangement];
  activeItem2 = [itemArrangement activeItem];
  v7 = activeItem == activeItem2;

  return v7;
}

- (BOOL)_canAnimateStandaloneTabBarForTransitionToItemArrangement:(id)arrangement
{
  standaloneTabBar = self->_standaloneTabBar;
  arrangementCopy = arrangement;
  itemArrangement = [(SFUnifiedTabBar *)standaloneTabBar itemArrangement];
  items = [itemArrangement items];
  items2 = [arrangementCopy items];

  LOBYTE(arrangementCopy) = [items isEqualToArray:items2];
  return arrangementCopy ^ 1;
}

- (void)scrollToActiveItemAnimated:(BOOL)animated
{
  animatedCopy = animated;
  itemArrangement = self->_itemArrangement;
  activeItem = [(SFUnifiedTabBarItemArrangement *)itemArrangement activeItem];
  [(TabBarManager *)self setItemArrangement:itemArrangement animated:animatedCopy keepingItemVisible:activeItem];
}

- (void)_notifyDidCreateTabBar:(id)bar
{
  v16 = *MEMORY[0x277D85DE8];
  barCopy = bar;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 tabBarManager:self didCreateTabBar:{barCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_notifyDidUpdateDisplayMode
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 tabBarManagerDidUpdateDisplayMode:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

@end