@interface TabBarItemLayoutInfo
- (BOOL)_requiresViews;
- (CGRect)frame;
- (TabBar)tabBar;
- (TabBarItem)tabBarItem;
- (TabBarItemLayoutInfo)initWithTabBar:(id)bar item:(id)item;
- (TabBarItemView)tabBarItemPreviewView;
- (TabBarItemView)tabBarItemView;
- (TabBarItemView)viewForDragPreview;
- (id)_reusableView;
- (id)tabEntityUUIDForView:(id)view;
- (int64_t)_visibleEdge;
- (void)_clearView:(id)view;
- (void)_clearViews;
- (void)_clearViewsIfNeeded;
- (void)_updateHidesTitleText;
- (void)clearPreviewView;
- (void)closeButtonTapped:(id)tapped;
- (void)dealloc;
- (void)itemDidUpdateIcon;
- (void)itemDidUpdateIsActive;
- (void)itemDidUpdateIsPinned;
- (void)itemDidUpdateIsPlaceholder;
- (void)itemDidUpdateIsUnread;
- (void)itemDidUpdateMediaState;
- (void)itemDidUpdateShareParticipants;
- (void)itemDidUpdateTitle;
- (void)mediaStateMuteButtonTapped:(id)tapped;
- (void)setActiveAnimationCount:(unint64_t)count;
- (void)setCanClose:(BOOL)close;
- (void)setFrame:(CGRect)frame;
- (void)setLeadingEdgeVisible:(BOOL)visible;
- (void)setRemovedFromTabBar:(BOOL)bar;
- (void)setTrailingActiveItem:(BOOL)item;
- (void)setTrailingEdgeVisible:(BOOL)visible;
@end

@implementation TabBarItemLayoutInfo

- (TabBarItemLayoutInfo)initWithTabBar:(id)bar item:(id)item
{
  barCopy = bar;
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = TabBarItemLayoutInfo;
  v8 = [(TabBarItemLayoutInfo *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_tabBar, barCopy);
    objc_storeWeak(&v9->_tabBarItem, itemCopy);
    v10 = v9;
  }

  return v9;
}

- (void)dealloc
{
  [(TabBarItemLayoutInfo *)self _clearViews];
  [(TabBarItemLayoutInfo *)self clearPreviewView];
  v3.receiver = self;
  v3.super_class = TabBarItemLayoutInfo;
  [(TabBarItemLayoutInfo *)&v3 dealloc];
}

- (void)itemDidUpdateTitle
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarItem);
  title = [WeakRetained title];
  [(TabBarItemView *)self->_tabBarItemView setTitleText:title];
}

- (void)itemDidUpdateIcon
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarItem);
  icon = [WeakRetained icon];

  [(TabBarItemView *)self->_tabBarItemView setIcon:icon];
}

- (void)itemDidUpdateIsActive
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarItem);
  isActive = [WeakRetained isActive];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__TabBarItemLayoutInfo_itemDidUpdateIsActive__block_invoke;
  v6[3] = &unk_2781D51B8;
  v6[4] = self;
  v7 = isActive;
  [MEMORY[0x277D75D18] _animateUsingDefaultTimingWithOptions:2 animations:v6 completion:0];
  if ([(TabBarItemLayoutInfo *)self hasViews])
  {
    v5 = objc_loadWeakRetained(&self->_tabBar);
    [v5 setNeedsLayout];
  }
}

- (void)itemDidUpdateIsPlaceholder
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarItem);
  isPlaceholder = [WeakRetained isPlaceholder];

  [(TabBarItemView *)self->_tabBarItemView setIsPlaceholder:isPlaceholder];

  [(TabBarItemLayoutInfo *)self _updateHidesTitleText];
}

- (void)itemDidUpdateMediaState
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarItem);
  mediaStateIcon = [WeakRetained mediaStateIcon];

  tabBarItemView = self->_tabBarItemView;

  [(TabBarItemView *)tabBarItemView setMediaStateIcon:mediaStateIcon];
}

- (void)itemDidUpdateIsPinned
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarItem);
  -[TabBarItemView setPinned:](self->_tabBarItemView, "setPinned:", [WeakRetained isPinned]);

  _visibleEdge = [(TabBarItemLayoutInfo *)self _visibleEdge];
  tabBarItemView = self->_tabBarItemView;

  [(TabBarItemView *)tabBarItemView setVisibleEdge:_visibleEdge];
}

- (void)itemDidUpdateIsUnread
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarItem);
  -[TabBarItemView setUnread:](self->_tabBarItemView, "setUnread:", [WeakRetained isUnread]);
}

- (void)itemDidUpdateShareParticipants
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarItem);
  shareParticipants = [WeakRetained shareParticipants];
  [(TabBarItemView *)self->_tabBarItemView setShareParticipants:shareParticipants];
}

- (void)closeButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  v4 = objc_loadWeakRetained(&self->_tabBarItem);
  if (WeakRetained && v4)
  {
    [WeakRetained _itemDidPressCloseButton:v4];
  }
}

- (void)mediaStateMuteButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  v4 = objc_loadWeakRetained(&self->_tabBarItem);
  mediaStateIcon = [v4 mediaStateIcon];
  if (WeakRetained && mediaStateIcon)
  {
    [WeakRetained _toggleMediaStateMutedForItem:v4];
  }
}

- (void)setFrame:(CGRect)frame
{
  self->_frame = frame;
  [(TabBarItemView *)self->_tabBarItemView setFrame:?];
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  itemSnapshotView = self->_itemSnapshotView;

  [(UIView *)itemSnapshotView setFrame:x, y, width, height];
}

- (void)setCanClose:(BOOL)close
{
  closeCopy = close;
  self->_canClose = close;
  closeButton = [(TabBarItemView *)self->_tabBarItemView closeButton];
  [closeButton setHidden:!closeCopy];
}

- (int64_t)_visibleEdge
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarItem);
  if ([WeakRetained isPinned])
  {
    trailingEdgeVisible = self->_trailingEdgeVisible;

    if (trailingEdgeVisible)
    {
      return 2;
    }
  }

  else
  {
  }

  if (self->_trailingActiveItem)
  {
    if (self->_trailingEdgeVisible)
    {
      return 2;
    }
  }

  else if (self->_leadingEdgeVisible)
  {
    return 1;
  }

  return 0;
}

- (void)setLeadingEdgeVisible:(BOOL)visible
{
  self->_leadingEdgeVisible = visible;
  _visibleEdge = [(TabBarItemLayoutInfo *)self _visibleEdge];
  tabBarItemView = self->_tabBarItemView;

  [(TabBarItemView *)tabBarItemView setVisibleEdge:_visibleEdge];
}

- (void)setTrailingEdgeVisible:(BOOL)visible
{
  self->_trailingEdgeVisible = visible;
  _visibleEdge = [(TabBarItemLayoutInfo *)self _visibleEdge];
  tabBarItemView = self->_tabBarItemView;

  [(TabBarItemView *)tabBarItemView setVisibleEdge:_visibleEdge];
}

- (void)setTrailingActiveItem:(BOOL)item
{
  if (self->_trailingActiveItem != item)
  {
    v9[7] = v3;
    v9[8] = v4;
    self->_trailingActiveItem = item;
    [(TabBarItemView *)self->_tabBarItemView setVisibleEdge:[(TabBarItemLayoutInfo *)self _visibleEdge]];
    if (self->_trailingActiveItem)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    [(TabBarItemView *)self->_tabBarItemView setTitleAnchorEdge:v6];
    if (self->_activeAnimationCount)
    {
      [(UIView *)self->_itemSnapshotView removeFromSuperview];
      v7 = [(TabBarItemView *)self->_tabBarItemView snapshotViewAfterScreenUpdates:0];
      itemSnapshotView = self->_itemSnapshotView;
      self->_itemSnapshotView = v7;

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __46__TabBarItemLayoutInfo_setTrailingActiveItem___block_invoke;
      v9[3] = &unk_2781D4D40;
      v9[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v9];
    }
  }
}

void __46__TabBarItemLayoutInfo_setTrailingActiveItem___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) frame];
  [*(*(a1 + 32) + 24) setFrame:?];
  v2 = [*(*(a1 + 32) + 8) superview];
  [v2 insertSubview:*(*(a1 + 32) + 24) belowSubview:*(*(a1 + 32) + 8)];
}

- (id)_reusableView
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__7;
  v9 = __Block_byref_object_dispose__7;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __37__TabBarItemLayoutInfo__reusableView__block_invoke;
  v4[3] = &unk_2781D5B08;
  v4[4] = self;
  v4[5] = &v5;
  [MEMORY[0x277D75D18] performWithoutAnimation:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __37__TabBarItemLayoutInfo__reusableView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 48));
  v2 = objc_loadWeakRetained((*(a1 + 32) + 40));
  v3 = [v2 _requestReusableTabBarItemView];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [*(*(*(a1 + 40) + 8) + 40) setActive:{objc_msgSend(WeakRetained, "isActive")}];
  [*(*(*(a1 + 40) + 8) + 40) setIsPlaceholder:{objc_msgSend(WeakRetained, "isPlaceholder")}];
  [*(*(*(a1 + 40) + 8) + 40) setFrame:{*(*(a1 + 32) + 88), *(*(a1 + 32) + 96), *(*(a1 + 32) + 104), *(*(a1 + 32) + 112)}];
  v6 = 1;
  if ((*(*(a1 + 32) + 37) & 1) == 0)
  {
    v6 = [*(*(*(a1 + 40) + 8) + 40) isPlaceholder];
  }

  [*(*(*(a1 + 40) + 8) + 40) setHidesTitleText:v6];
  [*(*(*(a1 + 40) + 8) + 40) setReordering:*(*(a1 + 32) + 33)];
  [*(*(*(a1 + 40) + 8) + 40) setTitleAnchorAdditionalOffset:*(*(a1 + 32) + 64)];
  if (*(*(a1 + 32) + 36))
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [*(*(*(a1 + 40) + 8) + 40) setTitleAnchorEdge:v7];
  [*(*(*(a1 + 40) + 8) + 40) setTitleLayoutWidth:*(*(a1 + 32) + 56)];
  v8 = [WeakRetained title];
  [*(*(*(a1 + 40) + 8) + 40) setTitleText:v8];

  v9 = [WeakRetained icon];
  [*(*(*(a1 + 40) + 8) + 40) setIcon:v9];

  [*(*(*(a1 + 40) + 8) + 40) setHidesTitleText:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "hidesTitleText")}];
  [*(*(*(a1 + 40) + 8) + 40) setVisibleEdge:{objc_msgSend(*(a1 + 32), "_visibleEdge")}];
  [*(*(*(a1 + 40) + 8) + 40) setMediaStateIcon:{objc_msgSend(WeakRetained, "mediaStateIcon")}];
  [*(*(*(a1 + 40) + 8) + 40) setPinned:{objc_msgSend(WeakRetained, "isPinned")}];
  [*(*(*(a1 + 40) + 8) + 40) setUnread:{objc_msgSend(WeakRetained, "isUnread")}];
  v10 = [WeakRetained shareParticipants];
  [*(*(*(a1 + 40) + 8) + 40) setShareParticipants:v10];

  v11 = [*(*(*(a1 + 40) + 8) + 40) mediaStateMuteButton];
  [v11 addTarget:*(a1 + 32) action:sel_mediaStateMuteButtonTapped_ forControlEvents:0x2000];

  v12 = [*(*(*(a1 + 40) + 8) + 40) closeButton];
  [v12 setHidden:(*(*(a1 + 32) + 32) & 1) == 0];
  [v12 addTarget:*(a1 + 32) action:sel_closeButtonTapped_ forControlEvents:64];
}

- (TabBarItemView)viewForDragPreview
{
  _reusableView = [(TabBarItemLayoutInfo *)self _reusableView];
  [_reusableView removeFromSuperview];
  [_reusableView configureForDragPreview];

  return _reusableView;
}

- (TabBarItemView)tabBarItemPreviewView
{
  tabBarItemPreviewView = self->_tabBarItemPreviewView;
  if (!tabBarItemPreviewView)
  {
    viewForDragPreview = [(TabBarItemLayoutInfo *)self viewForDragPreview];
    v5 = self->_tabBarItemPreviewView;
    self->_tabBarItemPreviewView = viewForDragPreview;

    tabBarItemPreviewView = self->_tabBarItemPreviewView;
  }

  return tabBarItemPreviewView;
}

- (void)_clearView:(id)view
{
  viewCopy = view;
  closeButton = [viewCopy closeButton];
  [closeButton removeTarget:self action:sel_closeButtonTapped_ forControlEvents:64];

  mediaStateMuteButton = [viewCopy mediaStateMuteButton];
  [mediaStateMuteButton removeTarget:self action:sel_mediaStateMuteButtonTapped_ forControlEvents:0x2000];

  WeakRetained = objc_loadWeakRetained(&self->_tabBar);
  [WeakRetained _relinquishReusableTabBarItemView:viewCopy];
}

- (void)_clearViewsIfNeeded
{
  if (![(TabBarItemLayoutInfo *)self _requiresViews])
  {

    [(TabBarItemLayoutInfo *)self _clearViews];
  }
}

- (void)_clearViews
{
  [(TabBarItemLayoutInfo *)self _clearView:self->_tabBarItemView];
  tabBarItemView = self->_tabBarItemView;
  self->_tabBarItemView = 0;

  [(UIView *)self->_itemSnapshotView removeFromSuperview];
  itemSnapshotView = self->_itemSnapshotView;
  self->_itemSnapshotView = 0;
}

- (void)clearPreviewView
{
  [(TabBarItemLayoutInfo *)self _clearView:self->_tabBarItemPreviewView];
  [(TabBarItemView *)self->_tabBarItemPreviewView removeFromSuperview];
  tabBarItemPreviewView = self->_tabBarItemPreviewView;
  self->_tabBarItemPreviewView = 0;
}

- (TabBarItemView)tabBarItemView
{
  if (!self->_tabBarItemView && [(TabBarItemLayoutInfo *)self _requiresViews])
  {
    _reusableView = [(TabBarItemLayoutInfo *)self _reusableView];
    tabBarItemView = self->_tabBarItemView;
    self->_tabBarItemView = _reusableView;

    [(TabBarItemView *)self->_tabBarItemView safari_setTabEntityProviderWithInfoProvider:self];
  }

  v5 = self->_tabBarItemView;

  return v5;
}

- (BOOL)_requiresViews
{
  if (self->_removedFromTabBar)
  {
    return 0;
  }

  if (self->_visibleInTabBar)
  {
    return 1;
  }

  return self->_activeAnimationCount != 0;
}

- (void)_updateHidesTitleText
{
  if (self->_hidesTitleText)
  {
    isPlaceholder = 1;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_tabBarItem);
    isPlaceholder = [WeakRetained isPlaceholder];
  }

  tabBarItemView = self->_tabBarItemView;

  [(TabBarItemView *)tabBarItemView setHidesTitleText:isPlaceholder];
}

- (void)setRemovedFromTabBar:(BOOL)bar
{
  self->_removedFromTabBar = bar;
  if (bar)
  {
    [(TabBarItemLayoutInfo *)self _clearViewsIfNeeded];
  }
}

- (void)setActiveAnimationCount:(unint64_t)count
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_activeAnimationCount != count)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    closeButton = [(TabBarItemView *)self->_tabBarItemView closeButton];
    interactions = [closeButton interactions];

    v7 = [interactions countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(interactions);
          }

          v11 = *(*(&v13 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v11 invalidate];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [interactions countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }

  self->_activeAnimationCount = count;
  [(TabBarItemLayoutInfo *)self _clearViewsIfNeeded];
  if (self->_activeAnimationCount)
  {
    [(UIView *)self->_itemSnapshotView removeFromSuperview];
    itemSnapshotView = self->_itemSnapshotView;
    self->_itemSnapshotView = 0;
  }
}

- (id)tabEntityUUIDForView:(id)view
{
  if (self->_tabBarItemView == view)
  {
    WeakRetained = objc_loadWeakRetained(&self->_tabBarItem);
    uUID = [WeakRetained UUID];
  }

  else
  {
    uUID = 0;
  }

  return uUID;
}

- (TabBar)tabBar
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBar);

  return WeakRetained;
}

- (TabBarItem)tabBarItem
{
  WeakRetained = objc_loadWeakRetained(&self->_tabBarItem);

  return WeakRetained;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end