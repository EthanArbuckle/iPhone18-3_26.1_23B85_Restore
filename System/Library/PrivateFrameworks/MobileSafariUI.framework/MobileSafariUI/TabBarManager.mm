@interface TabBarManager
- (BOOL)_canAnimateInlineTabBarForTransitionToItemArrangement:(id)a3;
- (BOOL)_canAnimateStandaloneTabBarForTransitionToItemArrangement:(id)a3;
- (TabBarManager)init;
- (UnifiedTabBar)effectiveTabBar;
- (id)_inlineItemArrangementForItemArrangement:(id)a3 displayMode:(int64_t)a4;
- (id)createStandaloneTabBar;
- (id)standaloneItemArrangementForItemArrangement:(id)a3 displayMode:(int64_t)a4;
- (void)_configureStandaloneTabBar;
- (void)_notifyDidCreateTabBar:(id)a3;
- (void)_notifyDidUpdateDisplayMode;
- (void)_setItemArrangement:(id)a3 animated:(BOOL)a4 keepingItemVisible:(id)a5 completionHandler:(id)a6;
- (void)_setUsesInlineTabBar:(BOOL)a3;
- (void)_setUsesStandaloneTabBar:(BOOL)a3;
- (void)_updateSearchFieldIcon;
- (void)_updateUnifiedBarContentArrangement;
- (void)scrollToActiveItemAnimated:(BOOL)a3;
- (void)setActiveFavicon:(id)a3;
- (void)setActiveItem:(id)a3 animated:(BOOL)a4;
- (void)setActiveItemIsExpanded:(BOOL)a3 animated:(BOOL)a4 completionHandler:(id)a5;
- (void)setBookmarksBar:(id)a3;
- (void)setCompletionItemIcon:(id)a3;
- (void)setDisplayMode:(int64_t)a3;
- (void)setShowingLockdownStatusBar:(BOOL)a3;
- (void)setSuppressesStandaloneTabBar:(BOOL)a3;
- (void)setUnifiedBar:(id)a3;
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

    v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v5;

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

- (void)setUnifiedBar:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_unifiedBar != v5)
  {
    v8 = v5;
    v7 = objc_alloc_init(MEMORY[0x277D28E90]);
    [(SFUnifiedBar *)self->_unifiedBar setContentArrangement:v7];

    objc_storeStrong(&self->_unifiedBar, a3);
    [(SFUnifiedTabBar *)self->_inlineTabBar setNavigationDelegate:v8];
    [(SFUnifiedTabBar *)self->_standaloneTabBar setNavigationDelegate:v8];
    [(TabBarManager *)self _updateUnifiedBarContentArrangement];
    v6 = v8;
  }
}

- (void)setBookmarksBar:(id)a3
{
  v5 = a3;
  if (self->_bookmarksBar != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_bookmarksBar, a3);
    [(TabBarManager *)self _updateUnifiedBarContentArrangement];
    v5 = v6;
  }
}

- (void)setShowingLockdownStatusBar:(BOOL)a3
{
  if (self->_showingLockdownStatusBar != a3)
  {
    self->_showingLockdownStatusBar = a3;
    if (a3)
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

- (void)setActiveFavicon:(id)a3
{
  objc_storeStrong(&self->_activeFavicon, a3);

  [(TabBarManager *)self _updateSearchFieldIcon];
}

- (void)setCompletionItemIcon:(id)a3
{
  objc_storeStrong(&self->_completionItemIcon, a3);

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

- (void)setDisplayMode:(int64_t)a3
{
  if (self->_displayMode != a3)
  {
    v21 = v8;
    v22 = v7;
    v23 = v6;
    v24 = v5;
    v25 = v4;
    v26 = v3;
    self->_displayMode = a3;
    cachedInlineTabBar = self->_cachedInlineTabBar;
    [(TabBarManager *)self _setUsesInlineTabBar:(a3 - 1) < 2];
    [(TabBarManager *)self _updateUsesStandaloneTabBar];
    [(TabBarManager *)self _updateUnifiedBarContentArrangement];
    if (self->_inlineTabBar)
    {
      if (cachedInlineTabBar)
      {
        v14 = 0;
      }

      else
      {
        v14 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];
      }

      v15 = [(UnifiedTabBar *)self->_inlineTabBar window:v8];

      if (v15)
      {
        [(UnifiedTabBar *)self->_inlineTabBar layoutIfNeeded];
      }

      inlineTabBar = self->_inlineTabBar;
      v17 = [(TabBarManager *)self _inlineItemArrangementForItemArrangement:self->_itemArrangement displayMode:a3];
      [(SFUnifiedTabBar *)inlineTabBar setItemArrangement:v17 animated:0 keepingItemVisible:v14 completionHandler:0];

      [(SFUnifiedTabBar *)self->_inlineTabBar setRole:a3 == 2];
      [(SFUnifiedTabBar *)self->_inlineTabBar setNavigationDelegate:self->_unifiedBar];
      v18 = [(SFUnifiedTabBar *)self->_inlineTabBar tabHoverPreviewController];
      [v18 setEnabled:(a3 & 0xFFFFFFFFFFFFFFFDLL) != 0];

      [(SFUnifiedTabBar *)self->_inlineTabBar setSearchFieldShowsFormatMenuButtonAccessories:_SFDeviceIsPad() ^ 1];
      [(SFUnifiedTabBar *)self->_inlineTabBar setMinimizedProgressView:self->_minimizedProgressView];
    }

    [(TabBarManager *)self _configureStandaloneTabBar:v21];
    v19 = [MEMORY[0x277D49A08] isSolariumEnabled] ^ 1;
    if (a3 == 2)
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
  v5 = [MEMORY[0x277CBEB18] array];
  [v5 safari_addObjectUnlessNil:self->_lockdownStatusBar];
  [v5 safari_addObjectUnlessNil:self->_bookmarksBar];
  [v5 safari_addObjectUnlessNil:self->_standaloneTabBar];
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

  v4 = [objc_alloc(MEMORY[0x277D28E90]) initWithInlineContentView:self->_inlineTabBar standaloneContentViews:v5];
  [(SFUnifiedBar *)self->_unifiedBar setContentArrangement:v4];
}

- (void)_setUsesInlineTabBar:(BOOL)a3
{
  p_inlineTabBar = &self->_inlineTabBar;
  inlineTabBar = self->_inlineTabBar;
  if (((inlineTabBar == 0) ^ a3))
  {
    return;
  }

  p_cachedInlineTabBar = &self->_cachedInlineTabBar;
  if (a3)
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

- (void)_setUsesStandaloneTabBar:(BOOL)a3
{
  standaloneTabBar = self->_standaloneTabBar;
  if ((((standaloneTabBar == 0) ^ a3) & 1) == 0)
  {
    if (a3)
    {
      v5 = [(TabBarManager *)self createStandaloneTabBar];
      v6 = self->_standaloneTabBar;
      self->_standaloneTabBar = v5;

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

- (void)setSuppressesStandaloneTabBar:(BOOL)a3
{
  if (self->_suppressesStandaloneTabBar != a3)
  {
    self->_suppressesStandaloneTabBar = a3;
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
    v5 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];
    [(SFUnifiedTabBar *)standaloneTabBar setItemArrangement:v4 animated:0 keepingItemVisible:v5 completionHandler:0];

    unifiedBar = self->_unifiedBar;
    v7 = self->_standaloneTabBar;

    [(SFUnifiedTabBar *)v7 setNavigationDelegate:unifiedBar];
  }
}

- (void)setActiveItem:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement arrangementWithActiveItem:a3];
  [(TabBarManager *)self _setItemArrangement:v6 animated:v4 keepingItemVisible:0 completionHandler:0];
}

- (void)setActiveItemIsExpanded:(BOOL)a3 animated:(BOOL)a4 completionHandler:(id)a5
{
  v5 = a4;
  v6 = a3;
  itemArrangement = self->_itemArrangement;
  v9 = a5;
  v10 = [(SFUnifiedTabBarItemArrangement *)itemArrangement arrangementWithActiveItemIsExpanded:v6];
  [(TabBarManager *)self _setItemArrangement:v10 animated:v5 keepingItemVisible:0 completionHandler:v9];
}

- (void)_setItemArrangement:(id)a3 animated:(BOOL)a4 keepingItemVisible:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  objc_storeStrong(&self->_itemArrangement, a3);
  if (self->_inlineTabBar)
  {
    v14 = dispatch_group_create();
    v15 = v14;
    if (self->_inlineTabBar)
    {
      dispatch_group_enter(v14);
      v16 = [(TabBarManager *)self _inlineItemArrangementForItemArrangement:v11 displayMode:self->_displayMode];
      v17 = v8 && [(TabBarManager *)self _canAnimateInlineTabBarForTransitionToItemArrangement:v11];
      inlineTabBar = self->_inlineTabBar;
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __83__TabBarManager__setItemArrangement_animated_keepingItemVisible_completionHandler___block_invoke;
      v26[3] = &unk_2781D4D40;
      v27 = v15;
      [(SFUnifiedTabBar *)inlineTabBar setItemArrangement:v16 animated:v17 keepingItemVisible:v12 completionHandler:v26];
    }

    if (self->_standaloneTabBar)
    {
      dispatch_group_enter(v15);
      v19 = [(TabBarManager *)self standaloneItemArrangementForItemArrangement:v11 displayMode:self->_displayMode];
      if (v8)
      {
        if (v12)
        {
          v8 = 1;
        }

        else
        {
          v8 = [(TabBarManager *)self _canAnimateStandaloneTabBarForTransitionToItemArrangement:v19];
        }
      }

      standaloneTabBar = self->_standaloneTabBar;
      v21 = [v12 secondaryItem];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __83__TabBarManager__setItemArrangement_animated_keepingItemVisible_completionHandler___block_invoke_2;
      v24[3] = &unk_2781D4D40;
      v25 = v15;
      [(SFUnifiedTabBar *)standaloneTabBar setItemArrangement:v19 animated:v8 keepingItemVisible:v21 completionHandler:v24];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __83__TabBarManager__setItemArrangement_animated_keepingItemVisible_completionHandler___block_invoke_3;
    block[3] = &unk_2781D4D90;
    v23 = v13;
    dispatch_group_notify(v15, MEMORY[0x277D85CD0], block);
  }

  else if (v13)
  {
    v13[2](v13);
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

- (id)_inlineItemArrangementForItemArrangement:(id)a3 displayMode:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  switch(a4)
  {
    case 2:
      v11 = objc_alloc(MEMORY[0x277D28EA8]);
      v12 = [v7 activeItem];
      self = [v11 initWithItem:v12 activeItemIsExpanded:{objc_msgSend(v7, "activeItemIsExpanded")}];

      break;
    case 1:
      v8 = [v6 items];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __70__TabBarManager__inlineItemArrangementForItemArrangement_displayMode___block_invoke;
      v14[3] = &unk_2781DB868;
      v14[4] = self;
      v9 = [v8 safari_filterObjectsUsingBlock:v14];

      v10 = [v7 activeItem];
      if ([(NSSet *)self->_hiddenItems containsObject:v10])
      {

        v10 = 0;
      }

      self = [objc_alloc(MEMORY[0x277D28EA8]) initWithItems:v9 activeItem:v10 activeItemIsExpanded:objc_msgSend(v7 allowsScrollingPinnedItems:{"activeItemIsExpanded"), objc_msgSend(v7, "allowsScrollingPinnedItems")}];

      break;
    case 0:
      self = objc_alloc_init(MEMORY[0x277D28EA8]);
      break;
  }

  return self;
}

- (id)standaloneItemArrangementForItemArrangement:(id)a3 displayMode:(int64_t)a4
{
  v7 = a3;
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v8 = [MEMORY[0x277CBEB18] array];
      v9 = [v7 items];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __73__TabBarManager_standaloneItemArrangementForItemArrangement_displayMode___block_invoke;
      v16[3] = &unk_2781DB890;
      v16[4] = self;
      v10 = [v9 safari_mapAndFilterObjectsUsingBlock:v16];
      [v8 addObjectsFromArray:v10];

      v11 = [v7 activeItem];
      if ([(NSSet *)self->_hiddenItems containsObject:v11])
      {

        v11 = 0;
      }

      v12 = [v7 allowsScrollingPinnedItems];
      v13 = objc_alloc(MEMORY[0x277D28EA8]);
      v14 = [v11 secondaryItem];
      v4 = [v13 initWithItems:v8 activeItem:v14 activeItemIsExpanded:0 allowsScrollingPinnedItems:v12];
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

- (BOOL)_canAnimateInlineTabBarForTransitionToItemArrangement:(id)a3
{
  if (self->_displayMode != 2)
  {
    return 1;
  }

  v4 = [a3 activeItem];
  v5 = [(SFUnifiedTabBar *)self->_inlineTabBar itemArrangement];
  v6 = [v5 activeItem];
  v7 = v4 == v6;

  return v7;
}

- (BOOL)_canAnimateStandaloneTabBarForTransitionToItemArrangement:(id)a3
{
  standaloneTabBar = self->_standaloneTabBar;
  v4 = a3;
  v5 = [(SFUnifiedTabBar *)standaloneTabBar itemArrangement];
  v6 = [v5 items];
  v7 = [v4 items];

  LOBYTE(v4) = [v6 isEqualToArray:v7];
  return v4 ^ 1;
}

- (void)scrollToActiveItemAnimated:(BOOL)a3
{
  v3 = a3;
  itemArrangement = self->_itemArrangement;
  v6 = [(SFUnifiedTabBarItemArrangement *)itemArrangement activeItem];
  [(TabBarManager *)self setItemArrangement:itemArrangement animated:v3 keepingItemVisible:v6];
}

- (void)_notifyDidCreateTabBar:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
          [v10 tabBarManager:self didCreateTabBar:{v4, v11}];
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