@interface UnifiedBar
- (CGRect)URLOutlineFrameInNavigationBarSpace;
- (CGRect)urlOutlineFrameRelativeToView:(id)a3;
- (NSArray)popoverPassthroughViews;
- (UITextField)textField;
- (UnifiedBar)initWithFrame:(CGRect)a3;
- (_SFNavigationBarDelegateCommon)delegate;
- (_SFPopoverSourceInfo)URLOutlinePopoverSourceInfo;
- (_SFPopoverSourceInfo)formatMenuButtonPopoverSourceInfo;
- (id)popoverSourceInfoForBarItem:(int64_t)a3;
- (id)unifiedTabBar:(id)a3 mediaStateMuteButtonMenuElementsForItem:(id)a4;
- (id)viewForBarItem:(int64_t)a3;
- (void)animateLinkImage:(CGImage *)a3 fromRect:(CGRect)a4 inView:(id)a5 toBarItem:(int64_t)a6 afterDestinationLayerBouncesBlock:(id)a7;
- (void)metricsDidChange;
- (void)setOneStepBookmarkingController:(id)a3;
- (void)squishedBarTapped;
- (void)unifiedTabBar:(id)a3 didFinishShowingAvailabilityLabelOfType:(int64_t)a4;
- (void)unifiedTabBar:(id)a3 didTapMediaStateMuteButtonForItem:(id)a4;
- (void)unifiedTabBar:(id)a3 extensionButtonTapped:(id)a4 extension:(id)a5;
- (void)unifiedTabBar:(id)a3 multipleExtensionButtonTapped:(id)a4;
- (void)unifiedTabBarMenuButtonClicked:(id)a3;
- (void)unifiedTabBarMenuButtonReceivedTouchDown:(id)a3;
- (void)unifiedTabBarMenuButtonTapped:(id)a3;
- (void)unifiedTabBarReaderButtonTapped:(id)a3;
- (void)unifiedTabBarReloadButtonTapped:(id)a3;
- (void)unifiedTabBarStopButtonTapped:(id)a3;
- (void)unifiedTabBarTranslationButtonTapped:(id)a3;
- (void)unifiedTabBarURLTapped:(id)a3 completionHandler:(id)a4;
- (void)unifiedTabBarVoiceSearchButtonTapped:(id)a3;
@end

@implementation UnifiedBar

- (UnifiedBar)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = UnifiedBar;
  v3 = [(SFUnifiedBar *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (id)viewForBarItem:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_barRegistrationToken);
  v5 = [WeakRetained viewForBarItem:a3];

  return v5;
}

- (void)setOneStepBookmarkingController:(id)a3
{
  v5 = a3;
  if (self->_oneStepBookmarkingController != v5)
  {
    objc_storeStrong(&self->_oneStepBookmarkingController, a3);
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

- (void)unifiedTabBarMenuButtonTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarFormatMenuButtonWasTapped:self];
  }
}

- (void)unifiedTabBarMenuButtonReceivedTouchDown:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarFormatMenuButtonStartedInteraction:self];
  }
}

- (void)unifiedTabBarMenuButtonClicked:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarReaderButtonWasTapped:self];
  }
}

- (void)unifiedTabBarVoiceSearchButtonTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarVoiceSearchButtonWasTapped:self];
  }
}

- (void)unifiedTabBarReloadButtonTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarReloadButtonWasTapped:self];
  }
}

- (void)unifiedTabBarStopButtonTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarStopLoadingButtonWasTapped:self];
  }
}

- (void)unifiedTabBarReaderButtonTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarReaderButtonWasTapped:self];
  }
}

- (void)unifiedTabBarTranslationButtonTapped:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarTranslateButtonWasTapped:self];
  }
}

- (void)unifiedTabBar:(id)a3 didTapMediaStateMuteButtonForItem:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarMediaStateMuteButtonWasTapped:self forItem:v6];
  }
}

- (id)unifiedTabBar:(id)a3 mediaStateMuteButtonMenuElementsForItem:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v7 = [WeakRetained navigationBar:self mediaStateMuteButtonMenuElementsForItem:v5];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (void)unifiedTabBarURLTapped:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBarURLWasTapped:self completionHandler:v6];
  }

  else if (v6)
  {
    v6[2]();
  }
}

- (void)unifiedTabBar:(id)a3 didFinishShowingAvailabilityLabelOfType:(int64_t)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBar:self didFinishShowingAvailabilityLabelOfType:a4];
  }
}

- (void)unifiedTabBar:(id)a3 extensionButtonTapped:(id)a4 extension:(id)a5
{
  v9 = a4;
  v7 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBar:self extensionButtonTapped:v9 extension:v7];
  }
}

- (void)unifiedTabBar:(id)a3 multipleExtensionButtonTapped:(id)a4
{
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained navigationBar:self multipleExtensionsButtonTapped:v6];
  }
}

- (void)animateLinkImage:(CGImage *)a3 fromRect:(CGRect)a4 inView:(id)a5 toBarItem:(int64_t)a6 afterDestinationLayerBouncesBlock:(id)a7
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a7;
  v16 = a5;
  if (a6 == 5)
  {
    v17 = [(SFUnifiedBar *)self contentArrangement];
    v18 = [v17 inlineContentView];
    v24 = [v18 menuPopoverSourceView];
  }

  else
  {
    v24 = [(UnifiedBar *)self viewForBarItem:a6];
  }

  v19 = MEMORY[0x277D75D18];
  [v24 bounds];
  [v19 _sf_animateLinkImage:a3 withAnimation:1 fromRect:v16 inView:v24 toRect:0 inView:v15 afterImageDisappearsBlock:x afterDestinationLayerBouncesBlock:{y, width, height, v20, v21, v22, v23}];
}

- (id)popoverSourceInfoForBarItem:(int64_t)a3
{
  if (a3 == 5)
  {
    v4 = objc_alloc(MEMORY[0x277D28F68]);
    WeakRetained = [(SFUnifiedBar *)self contentArrangement];
    v6 = [WeakRetained inlineContentView];
    v7 = [v6 menuPopoverSourceView];
    v8 = [v4 initWithView:v7];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_barRegistrationToken);
    v8 = [WeakRetained popoverSourceInfoForItem:a3];
  }

  return v8;
}

- (UITextField)textField
{
  v2 = [(SFUnifiedBar *)self contentArrangement];
  v3 = [v2 inlineContentView];

  v4 = [v3 searchField];

  return v4;
}

- (NSArray)popoverPassthroughViews
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [(SFUnifiedBar *)self contentArrangement];
  v4 = [v3 inlineContentView];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14[0] = self;
    v6 = MEMORY[0x277CBEA60];
    v7 = v14;
LABEL_7:
    v3 = [v6 arrayWithObjects:v7 count:1];
    goto LABEL_8;
  }

  v5 = [v4 role];
  if (v5 == 2)
  {
    v11 = self;
    v6 = MEMORY[0x277CBEA60];
    v7 = &v11;
    goto LABEL_7;
  }

  if (v5 != 1)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    v13 = self;
    v6 = MEMORY[0x277CBEA60];
    v7 = &v13;
    goto LABEL_7;
  }

  v12[0] = v4;
  v9 = [(SFUnifiedBar *)self leadingItemContainerView];
  v12[1] = v9;
  v10 = [(SFUnifiedBar *)self trailingItemContainerView];
  v12[2] = v10;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

LABEL_8:

  return v3;
}

- (CGRect)URLOutlineFrameInNavigationBarSpace
{
  v3 = [(SFUnifiedBar *)self contentArrangement];
  v4 = [v3 inlineContentView];

  v5 = [v4 searchFieldPopoverSourceView];
  [v5 bounds];
  [(UnifiedBar *)self convertRect:v5 fromView:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v4 searchFieldPopoverSourceInsets];
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

- (CGRect)urlOutlineFrameRelativeToView:(id)a3
{
  v4 = a3;
  [(UnifiedBar *)self URLOutlineFrameInNavigationBarSpace];
  [(UnifiedBar *)self convertRect:v4 toView:?];
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
  v2 = [(SFUnifiedBar *)self contentArrangement];
  v3 = [v2 inlineContentView];

  v4 = [v3 menuPopoverSourceView];
  v5 = [objc_alloc(MEMORY[0x277D28F68]) initWithView:v4];
  [v5 setPermittedArrowDirections:3];
  [v5 setShouldHideArrow:1];
  [v5 setShouldPassthroughSuperview:1];
  v6 = [v3 role];
  if (v6)
  {
    if (v6 != 1)
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
  v2 = [(SFUnifiedBar *)self contentArrangement];
  v3 = [v2 inlineContentView];

  v4 = objc_alloc(MEMORY[0x277D28F68]);
  v5 = [v3 searchFieldPopoverSourceView];
  [v3 searchFieldPopoverSourceInsets];
  v6 = [v4 initWithView:v5 insets:?];

  return v6;
}

- (_SFNavigationBarDelegateCommon)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end