@interface UnifiedBar
- (CGRect)URLOutlineFrameInNavigationBarSpace;
- (CGRect)urlOutlineFrameRelativeToView:(id)view;
- (NSArray)popoverPassthroughViews;
- (UITextField)textField;
- (UnifiedBar)initWithFrame:(CGRect)frame;
- (_SFNavigationBarDelegateCommon)delegate;
- (_SFPopoverSourceInfo)URLOutlinePopoverSourceInfo;
- (_SFPopoverSourceInfo)formatMenuButtonPopoverSourceInfo;
- (id)popoverSourceInfoForBarItem:(int64_t)item;
- (id)unifiedTabBar:(id)bar mediaStateMuteButtonMenuElementsForItem:(id)item;
- (id)viewForBarItem:(int64_t)item;
- (void)animateLinkImage:(CGImage *)image fromRect:(CGRect)rect inView:(id)view toBarItem:(int64_t)item afterDestinationLayerBouncesBlock:(id)block;
- (void)metricsDidChange;
- (void)setOneStepBookmarkingController:(id)controller;
- (void)squishedBarTapped;
- (void)unifiedTabBar:(id)bar didFinishShowingAvailabilityLabelOfType:(int64_t)type;
- (void)unifiedTabBar:(id)bar didTapMediaStateMuteButtonForItem:(id)item;
- (void)unifiedTabBar:(id)bar extensionButtonTapped:(id)tapped extension:(id)extension;
- (void)unifiedTabBar:(id)bar multipleExtensionButtonTapped:(id)tapped;
- (void)unifiedTabBarMenuButtonClicked:(id)clicked;
- (void)unifiedTabBarMenuButtonReceivedTouchDown:(id)down;
- (void)unifiedTabBarMenuButtonTapped:(id)tapped;
- (void)unifiedTabBarReaderButtonTapped:(id)tapped;
- (void)unifiedTabBarReloadButtonTapped:(id)tapped;
- (void)unifiedTabBarStopButtonTapped:(id)tapped;
- (void)unifiedTabBarTranslationButtonTapped:(id)tapped;
- (void)unifiedTabBarURLTapped:(id)tapped completionHandler:(id)handler;
- (void)unifiedTabBarVoiceSearchButtonTapped:(id)tapped;
@end

@implementation UnifiedBar

- (UnifiedBar)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = UnifiedBar;
  v3 = [(SFUnifiedBar *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    bookmarkLinkAnimationDestination = v3->_bookmarkLinkAnimationDestination;
    v3->_bookmarkLinkAnimationDestination = &__block_literal_global_45;

    v6 = v4;
  }

  return v4;
}

- (void)metricsDidChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarMetricsDidChange:self];
  }
}

- (void)squishedBarTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained compressedNavigationBarWasTapped:self];
}

- (id)viewForBarItem:(int64_t)item
{
  WeakRetained = objc_loadWeakRetained(&self->_barRegistrationToken);
  v5 = [WeakRetained viewForBarItem:item];

  return v5;
}

- (void)setOneStepBookmarkingController:(id)controller
{
  controllerCopy = controller;
  if (self->_oneStepBookmarkingController != controllerCopy)
  {
    objc_storeStrong(&self->_oneStepBookmarkingController, controller);
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__UnifiedBar_setOneStepBookmarkingController___block_invoke;
    v6[3] = &unk_2781D92D8;
    objc_copyWeak(&v7, &location);
    [(OneStepBookmarkingController *)self->_oneStepBookmarkingController setDidSaveBookmark:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __46__UnifiedBar_setOneStepBookmarkingController___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_11;
  }

  v6 = [WeakRetained viewForBarItem:3];
  v7 = [v6 window];
  if (!v7 || ([v6 alpha], v8 == 0.0))
  {
  }

  else
  {
    v9 = [v6 isHidden];

    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v10 = [v5 bookmarkLinkAnimationDestination];
  v11 = v10[2]();

  v6 = v11;
LABEL_8:
  v12 = [v6 window];

  if (v12)
  {
    v13 = SFSmallSafariIconLinkImage();
    v14 = MEMORY[0x277D75D18];
    [v23 bounds];
    UIRectGetCenter();
    v16 = v15;
    v18 = v17;
    [v6 bounds];
    [v14 _sf_animateLinkImage:v13 withAnimation:1 fromPoint:v23 inView:v6 toRect:0 inView:0 afterImageDisappearsBlock:v16 afterDestinationLayerBouncesBlock:{v18, v19, v20, v21, v22}];
  }

LABEL_11:
}

- (void)unifiedTabBarMenuButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarFormatMenuButtonWasTapped:self];
  }
}

- (void)unifiedTabBarMenuButtonReceivedTouchDown:(id)down
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarFormatMenuButtonStartedInteraction:self];
  }
}

- (void)unifiedTabBarMenuButtonClicked:(id)clicked
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarReaderButtonWasTapped:self];
  }
}

- (void)unifiedTabBarVoiceSearchButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarVoiceSearchButtonWasTapped:self];
  }
}

- (void)unifiedTabBarReloadButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarReloadButtonWasTapped:self];
  }
}

- (void)unifiedTabBarStopButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarStopLoadingButtonWasTapped:self];
  }
}

- (void)unifiedTabBarReaderButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarReaderButtonWasTapped:self];
  }
}

- (void)unifiedTabBarTranslationButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarTranslateButtonWasTapped:self];
  }
}

- (void)unifiedTabBar:(id)bar didTapMediaStateMuteButtonForItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarMediaStateMuteButtonWasTapped:self forItem:itemCopy];
  }
}

- (id)unifiedTabBar:(id)bar mediaStateMuteButtonMenuElementsForItem:(id)item
{
  itemCopy = item;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained navigationBar:self mediaStateMuteButtonMenuElementsForItem:itemCopy];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (void)unifiedTabBarURLTapped:(id)tapped completionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarURLWasTapped:self completionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2]();
  }
}

- (void)unifiedTabBar:(id)bar didFinishShowingAvailabilityLabelOfType:(int64_t)type
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBar:self didFinishShowingAvailabilityLabelOfType:type];
  }
}

- (void)unifiedTabBar:(id)bar extensionButtonTapped:(id)tapped extension:(id)extension
{
  tappedCopy = tapped;
  extensionCopy = extension;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBar:self extensionButtonTapped:tappedCopy extension:extensionCopy];
  }
}

- (void)unifiedTabBar:(id)bar multipleExtensionButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBar:self multipleExtensionsButtonTapped:tappedCopy];
  }
}

- (void)animateLinkImage:(CGImage *)image fromRect:(CGRect)rect inView:(id)view toBarItem:(int64_t)item afterDestinationLayerBouncesBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  blockCopy = block;
  viewCopy = view;
  if (item == 5)
  {
    contentArrangement = [(SFUnifiedBar *)self contentArrangement];
    inlineContentView = [contentArrangement inlineContentView];
    menuPopoverSourceView = [inlineContentView menuPopoverSourceView];
  }

  else
  {
    menuPopoverSourceView = [(UnifiedBar *)self viewForBarItem:item];
  }

  v19 = MEMORY[0x277D75D18];
  [menuPopoverSourceView bounds];
  [v19 _sf_animateLinkImage:image withAnimation:1 fromRect:viewCopy inView:menuPopoverSourceView toRect:0 inView:blockCopy afterImageDisappearsBlock:x afterDestinationLayerBouncesBlock:{y, width, height, v20, v21, v22, v23}];
}

- (id)popoverSourceInfoForBarItem:(int64_t)item
{
  if (item == 5)
  {
    v4 = objc_alloc(MEMORY[0x277D28F68]);
    WeakRetained = [(SFUnifiedBar *)self contentArrangement];
    inlineContentView = [WeakRetained inlineContentView];
    menuPopoverSourceView = [inlineContentView menuPopoverSourceView];
    v8 = [v4 initWithView:menuPopoverSourceView];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_barRegistrationToken);
    v8 = [WeakRetained popoverSourceInfoForItem:item];
  }

  return v8;
}

- (UITextField)textField
{
  contentArrangement = [(SFUnifiedBar *)self contentArrangement];
  inlineContentView = [contentArrangement inlineContentView];

  searchField = [inlineContentView searchField];

  return searchField;
}

- (NSArray)popoverPassthroughViews
{
  v14[1] = *MEMORY[0x277D85DE8];
  contentArrangement = [(SFUnifiedBar *)self contentArrangement];
  inlineContentView = [contentArrangement inlineContentView];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14[0] = self;
    v6 = MEMORY[0x277CBEA60];
    v7 = v14;
LABEL_7:
    contentArrangement = [v6 arrayWithObjects:v7 count:1];
    goto LABEL_8;
  }

  role = [inlineContentView role];
  if (role == 2)
  {
    selfCopy = self;
    v6 = MEMORY[0x277CBEA60];
    v7 = &selfCopy;
    goto LABEL_7;
  }

  if (role != 1)
  {
    if (role)
    {
      goto LABEL_8;
    }

    selfCopy2 = self;
    v6 = MEMORY[0x277CBEA60];
    v7 = &selfCopy2;
    goto LABEL_7;
  }

  v12[0] = inlineContentView;
  leadingItemContainerView = [(SFUnifiedBar *)self leadingItemContainerView];
  v12[1] = leadingItemContainerView;
  trailingItemContainerView = [(SFUnifiedBar *)self trailingItemContainerView];
  v12[2] = trailingItemContainerView;
  contentArrangement = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

LABEL_8:

  return contentArrangement;
}

- (CGRect)URLOutlineFrameInNavigationBarSpace
{
  contentArrangement = [(SFUnifiedBar *)self contentArrangement];
  inlineContentView = [contentArrangement inlineContentView];

  searchFieldPopoverSourceView = [inlineContentView searchFieldPopoverSourceView];
  [searchFieldPopoverSourceView bounds];
  [(UnifiedBar *)self convertRect:searchFieldPopoverSourceView fromView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [inlineContentView searchFieldPopoverSourceInsets];
  v15 = v7 + v14;
  v17 = v9 + v16;
  v19 = v11 - (v14 + v18);
  v21 = v13 - (v16 + v20);

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)urlOutlineFrameRelativeToView:(id)view
{
  viewCopy = view;
  [(UnifiedBar *)self URLOutlineFrameInNavigationBarSpace];
  [(UnifiedBar *)self convertRect:viewCopy toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (_SFPopoverSourceInfo)formatMenuButtonPopoverSourceInfo
{
  contentArrangement = [(SFUnifiedBar *)self contentArrangement];
  inlineContentView = [contentArrangement inlineContentView];

  menuPopoverSourceView = [inlineContentView menuPopoverSourceView];
  v5 = [objc_alloc(MEMORY[0x277D28F68]) initWithView:menuPopoverSourceView];
  [v5 setPermittedArrowDirections:3];
  [v5 setShouldHideArrow:1];
  [v5 setShouldPassthroughSuperview:1];
  role = [inlineContentView role];
  if (role)
  {
    if (role != 1)
    {
      goto LABEL_6;
    }

    v7 = 3;
  }

  else
  {
    v7 = 4;
  }

  [v5 setProvenance:v7];
LABEL_6:

  return v5;
}

- (_SFPopoverSourceInfo)URLOutlinePopoverSourceInfo
{
  contentArrangement = [(SFUnifiedBar *)self contentArrangement];
  inlineContentView = [contentArrangement inlineContentView];

  v4 = objc_alloc(MEMORY[0x277D28F68]);
  searchFieldPopoverSourceView = [inlineContentView searchFieldPopoverSourceView];
  [inlineContentView searchFieldPopoverSourceInsets];
  v6 = [v4 initWithView:searchFieldPopoverSourceView insets:?];

  return v6;
}

- (_SFNavigationBarDelegateCommon)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end