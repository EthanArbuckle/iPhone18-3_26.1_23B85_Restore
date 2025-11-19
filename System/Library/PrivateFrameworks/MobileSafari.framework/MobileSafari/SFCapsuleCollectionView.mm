@interface SFCapsuleCollectionView
- (BOOL)_contentIsDismissed;
- (BOOL)_hasReachedTrailingActionPullThreshold;
- (BOOL)_shouldAnimateKeyboardHeightChanges;
- (BOOL)_shouldInteractivelySquish;
- (BOOL)_shouldToggleMinimizedWithTranslation:(double)a3 velocity:(double)a4 gestureEnded:(BOOL)a5;
- (BOOL)_shouldUseNormalLayoutForMinimizedCapsule;
- (BOOL)_translationIsAlmostHorizontal:(CGPoint)a3;
- (BOOL)_updateTrailingAction;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)prefersHiddenForSupplementaryWithIdentifier:(id)a3;
- (CGAffineTransform)_lockdownIndicatorTransform;
- (CGAffineTransform)_selectedItemContentTransformForFrame:(SEL)a3;
- (CGPoint)_offsetForPanFromLinkedPageView;
- (CGPoint)_panGestureTranslationConstrainedToPanAxis;
- (CGPoint)selectedCapsuleOffset;
- (CGRect)_bottomBackdropFrame;
- (CGRect)_detachedCapsuleSelectionRect;
- (CGRect)_inputAccessoryViewFrame;
- (CGRect)_passthroughRect;
- (CGRect)_selectedCapsuleFrame;
- (CGRect)_tapToShowBarBottomRegion;
- (CGRect)capsuleFrame;
- (CGRect)inputAccessoryViewFrame;
- (CGRect)minimizedCapsuleFrame;
- (CGRect)presentationValueFromAnimatableRect:(id)a3;
- (CGRect)selectedCapsuleFrame;
- (CGRect)valueFromAnimatableRect:(id)a3;
- (SFCapsuleCollectionView)initWithFrame:(CGRect)a3;
- (SFCapsuleCollectionViewDataSource)dataSource;
- (SFCapsuleCollectionViewDelegate)delegate;
- (UIEdgeInsets)_insetsByApplyingSelectedItemOffset;
- (UIEdgeInsets)bottomCapsulePadding;
- (UIEdgeInsets)concentricEdgeInsetsForEdge:(unint64_t)a3 bounds:(CGRect)a4 minimumEdgeInsets:(UIEdgeInsets)a5;
- (UIEdgeInsets)obscuredInsets;
- (UIEdgeInsets)obscuredInsetsForState:(int64_t)a3;
- (UIEdgeInsets)obscuredInsetsForState:(int64_t)a3 ignoringKeyboard:(BOOL)a4;
- (UIEdgeInsets)obscuredInsetsIgnoringKeyboard;
- (UIView)popoverSourceView;
- (double)_distanceToTopEdgeIncludingDeceleration:(BOOL)a3;
- (double)_insetForCapsuleEdgeWithInsets:(UIEdgeInsets)a3;
- (double)_keyboardHeightBelowCapsule;
- (double)_percentToActivatingTopActionWithTranslation:(CGPoint)a3;
- (double)_percentToSelectItemIndex:(int64_t)a3;
- (double)_scaleFromLinkedPageView;
- (double)_selectedItemBackgroundAlpha;
- (double)_selectedItemContentMinimizationPercent;
- (double)_selectedItemMinimizationPercent;
- (double)_swipeTranslationFactorWithPercentToTopAction:(double)a3;
- (double)_toolbarBackdropAlpha;
- (double)capsuleBackgroundCornerRadius;
- (double)defaultCapsuleHeight;
- (double)horizontalSwipeOffsetForItemAtIndex:(int64_t)a3 selectedItemIndex:(int64_t)a4;
- (double)minimizedCapsuleHeightAboveKeyboard;
- (double)minimizedContentScale;
- (double)pageOffsetForItemAtIndex:(int64_t)a3 selectedItemIndex:(int64_t)a4;
- (double)pageWidth;
- (id)_buttonPointerStyleProviderForContentView:(id)a3;
- (id)_coordinatorForUpdatingSelectedItemFromState:(int64_t)a3 toState:(int64_t)a4;
- (id)_indexesOfVisibleItemsIncludingAction:(BOOL)a3;
- (id)_indexesOfVisibleItemsWithSelectedItemIndex:(int64_t)a3;
- (id)_setSelectedItemStateWithoutPerformingTransition:(int64_t)a3 options:(int64_t)a4;
- (id)_superviewForCapsules;
- (id)_trailingActionContentView;
- (id)_visualEffectGroupName;
- (id)contentViewForCapsuleAlignment;
- (id)contentViewForItemAtIndex:(int64_t)a3;
- (id)createFocusedLayout;
- (id)createMinimizedPageLayout;
- (id)createNormalPageLayout;
- (id)createOrDequeueContentViewWithIdentifier:(id)a3 atIndex:(int64_t)a4;
- (id)detachViewForItemAtIndex:(int64_t)a3 forInternalBorrow:(BOOL)a4;
- (id)hitTest:(CGPoint)a3 forCapsuleFrameWithEvent:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)infoForCapsuleOnPage:(id)a3;
- (id)infoForSupplementaryWithIdentifier:(id)a3 onPage:(id)a4;
- (id)infoWithEffectiveLayoutExemptFromHidden:(BOOL)a3 inBlock:(id)a4;
- (id)inputAccessoryView;
- (id)pageForIndex:(unint64_t)a3;
- (id)superviewForSupplementaryViewWithLayoutInfo:(id)a3 isTopAligned:(BOOL *)a4;
- (id)viewForItemAtIndex:(int64_t)a3;
- (int64_t)_indexOfTargetItemWithTranslation:(double)a3 roundingThreshold:(double)a4 allowActionIndex:(BOOL)a5 allowOutOfBounds:(BOOL)a6;
- (int64_t)_insertionIndexForShadowInView:(id)a3;
- (int64_t)_keyboardBackdropStyle;
- (int64_t)_nextItemIndexForSelectionGesture;
- (int64_t)itemBackgroundStyle;
- (int64_t)selectedItemBackgroundStyle;
- (unint64_t)_capsuleAlphaOptionsForSelectionGesture;
- (unint64_t)_maximumNumberOfVisibleViews;
- (unint64_t)selectionGestureAxis;
- (void)_animateSwitchingLinkedPageViewToItemAtIndex:(int64_t)a3;
- (void)_applyEffectsForChangeType:(int64_t)a3 update:(id)a4;
- (void)_applyToolbarTheme;
- (void)_createToolbarBackdropIfNeeded;
- (void)_decrementAnimationCountForItems:(id)a3;
- (void)_dequeueOrCreateViewForItem:(id)a3 atIndex:(int64_t)a4;
- (void)_didEndBackdropHeightAnimation;
- (void)_didReceiveDismissPan:(id)a3;
- (void)_didReceivePan:(id)a3;
- (void)_didReceiveTap:(id)a3;
- (void)_didReceiveTapOnPeekCapsule:(id)a3;
- (void)_discardExcessViewsForReuse;
- (void)_fetchContentViewForItem:(id)a3 atIndex:(int64_t)a4;
- (void)_incrementAnimationCountForItems:(id)a3;
- (void)_keyboardWillChangeFrame:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_layOutItems:(id)a3 atIndexes:(id)a4 selectedItemIndex:(int64_t)a5;
- (void)_layOutKeyboardBackdrop;
- (void)_layOutLockdownStatusBar;
- (void)_layOutMinimizedProgressView;
- (void)_performVisualEffectTransitionWithCoordinator:(id)a3;
- (void)_performWithoutSettingNeedsLayout:(id)a3;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_reclaimViewForItem:(id)a3;
- (void)_reloadDataWithoutLayout;
- (void)_scheduleTimerToDiscardViewsForReuseIfNeeded;
- (void)_sendMinimizationDidEndToObservers;
- (void)_sendMinimizationDidUpdateToObservers;
- (void)_setCapsuleSafeAreaInsetsFrozen:(BOOL)a3;
- (void)_setIndexesOfLoadedViews:(id)a3;
- (void)_setKeyboardHeight:(double)a3;
- (void)_setOffsetForMinimization:(double)a3;
- (void)_setSuppressingDataSourceCalls:(BOOL)a3;
- (void)_setUpdateRequestActive:(BOOL)a3;
- (void)_updateActions;
- (void)_updateBackdropHeight;
- (void)_updateCanBlurCapsules;
- (void)_updateCapsuleAlpha;
- (void)_updateContentBlurRadius;
- (void)_updateDragWithOffset:(double)a3 velocity:(double)a4 ended:(BOOL)a5;
- (void)_updateKeyboardBackdropViewStyle;
- (void)_updateLayoutMargins;
- (void)_updateMinimizedProgressViewFillColor;
- (void)_updateOffsetForPan;
- (void)_updateRangeOfLoadedViews;
- (void)_updateShowsMinimizedProgressView;
- (void)_updateStateFlagsForContentViewAtIndex:(int64_t)a3;
- (void)_updateSuperviewForCapsule:(id)a3;
- (void)_updateToolbarTheme;
- (void)_updateTopAction;
- (void)_updateTrailingCapsule;
- (void)_updateVisualEffectGroupName;
- (void)_willBeginBackdropHeightAnimation;
- (void)addGestureObserver:(id)a3;
- (void)applyGeometryToPageLayout:(id)a3;
- (void)beginDraggingWithOffset:(double)a3;
- (void)beginHiddenExemptionForCapsule;
- (void)beginHiddenExemptionForSupplementaryWithIdentifier:(id)a3;
- (void)beginUpdates;
- (void)clearCachedLayoutValues;
- (void)createLayouts;
- (void)deleteItemsAtIndexes:(id)a3 animated:(BOOL)a4;
- (void)didMoveToWindow;
- (void)endHiddenExemptionForCapsule;
- (void)endHiddenExemptionForSupplementaryWithIdentifier:(id)a3;
- (void)endUpdates;
- (void)freezeHiddenSupplementaries;
- (void)insertItemsAtIndexes:(id)a3 animated:(BOOL)a4;
- (void)invalidateHeightForCapsuleContentView:(id)a3 animated:(BOOL)a4 animations:(id)a5 completion:(id)a6;
- (void)layOutSupplementaryViews;
- (void)layOutToolbarBackdropView;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)performIgnoringKeyboard:(id)a3;
- (void)present:(id)a3;
- (void)reattachControls;
- (void)reattachView:(id)a3;
- (void)registerContentViewIdentifier:(id)a3 block:(id)a4;
- (void)reloadData;
- (void)reloadItemsAtIndexes:(id)a3;
- (void)removeGestureObserver:(id)a3;
- (void)safeAreaInsetsDidChange;
- (void)setBottomScrollPocketInteraction:(id)a3;
- (void)setDataSource:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setEdgeMargin:(double)a3;
- (void)setHidingStyle:(int64_t)a3;
- (void)setIgnoresKeyboardHideEvents:(BOOL)a3;
- (void)setItemsAreHidden:(BOOL)a3;
- (void)setLayoutStyle:(int64_t)a3;
- (void)setMinimizationStyle:(int64_t)a3;
- (void)setMinimizedTheme:(id)a3;
- (void)setNavigationBarItem:(id)a3;
- (void)setNeedsLayout;
- (void)setSelectedItemAccessoryView:(id)a3 forState:(int64_t)a4;
- (void)setSelectedItemIndex:(int64_t)a3 animated:(BOOL)a4;
- (void)setSelectedItemState:(int64_t)a3 options:(int64_t)a4 animated:(BOOL)a5;
- (void)setSelectedItemUsesLiftedPreviewAppearance:(BOOL)a3 animator:(id)a4;
- (void)setShouldDismissContent:(BOOL)a3 withDelay:(double)a4;
- (void)setShowingLockdownStatusBar:(BOOL)a3;
- (void)setTheme:(id)a3;
- (void)setTopScrollPocketInteraction:(id)a3;
- (void)showTipIfNeeded;
- (void)startPageViewControllerDidScroll:(id)a3;
- (void)takeOwnershipOfDetachedViewForItemAtIndex:(int64_t)a3;
- (void)tintColorDidChange;
- (void)unfreezeHiddenSupplementaries;
- (void)updateAnimatableRect:(id)a3 ignoreMinimization:(BOOL)a4 infoBlock:(id)a5;
- (void)updateSupplementariesAlpha;
- (void)updateSupplementaryViewTheme;
- (void)updateSupplementaryViews;
- (void)updateTrailingActionAnimated:(BOOL)a3;
- (void)updateVerticalSwipeThreshold;
@end

@implementation SFCapsuleCollectionView

- (id)createMinimizedPageLayout
{
  minimizationStyle = self->_minimizationStyle;
  if (minimizationStyle == 1)
  {
    v8 = self->_hiddenLayout;
    goto LABEL_15;
  }

  if (!minimizationStyle)
  {
    layoutStyle = self->_layoutStyle;
    switch(layoutStyle)
    {
      case 1:
        v5 = [MEMORY[0x1E69C8880] isSolariumEnabled];
        v6 = off_1E7218B68;
        v7 = off_1E7219088;
LABEL_11:
        if (v5)
        {
          v6 = v7;
        }

        goto LABEL_13;
      case 3:
        v6 = off_1E7219090;
LABEL_13:
        v8 = [objc_alloc(*v6) initWithContainer:self baseLayout:self->_normalLayout];
        goto LABEL_14;
      case 2:
        v5 = [MEMORY[0x1E69C8880] isSolariumEnabled];
        v6 = off_1E7218B80;
        v7 = &off_1E7219098;
        goto LABEL_11;
    }
  }

  v8 = 0;
LABEL_14:
  [(SFCapsuleCollectionView *)self applyGeometryToPageLayout:v8];
LABEL_15:

  return v8;
}

- (id)createFocusedLayout
{
  layoutStyle = self->_layoutStyle;
  if (layoutStyle == 1 || layoutStyle == 3)
  {
    v6 = SFCapsulePageLayoutBottomToolbarFocused;
LABEL_7:
    v2 = [[v6 alloc] initWithContainer:self baseLayout:self->_normalLayout];
    [(SFCapsuleCollectionView *)self applyGeometryToPageLayout:v2];
    goto LABEL_12;
  }

  if (layoutStyle == 2)
  {
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v6 = _TtC12MobileSafari37SFCapsulePageLayoutTopFloatingFocused;
      goto LABEL_7;
    }

    v2 = self->_normalLayout;
  }

LABEL_12:

  return v2;
}

- (void)_updateActions
{
  [(SFCapsuleCollectionView *)self _updateTrailingAction];

  [(SFCapsuleCollectionView *)self _updateTopAction];
}

- (BOOL)_updateTrailingAction
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = self->_trailingAction;
  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained trailingActionForCapsuleCollectionView:self];
  }

  else
  {
    v5 = 0;
  }

  trailingAction = self->_trailingAction;
  self->_trailingAction = v5;

  v7 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_trailingAction)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = v8;
    v13 = 138412290;
    v14 = v9;
    _os_log_impl(&dword_18B7AC000, v7, OS_LOG_TYPE_DEFAULT, "Update trailing action = %@", &v13, 0xCu);
  }

  v10 = WBSIsEqual();
  if ((v10 & 1) == 0)
  {
    [(SFCapsuleCollectionView *)self setNeedsLayout];
    if ([(NSArray *)self->_items count]== self->_numberOfItems + 1)
    {
      if ([(NSIndexSet *)self->_indexesOfLoadedViews containsIndex:?])
      {
        v11 = [(NSArray *)self->_items lastObject];
        [(SFCapsuleCollectionView *)self _fetchContentViewForItem:v11 atIndex:self->_numberOfItems];
      }
    }
  }

  return v10 ^ 1;
}

- (void)_updateTopAction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ([(SFCapsuleCollectionView *)self _layoutStyleIsTop]|| (objc_opt_respondsToSelector() & 1) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [WeakRetained topActionForCapsuleCollectionView:self];
  }

  topAction = self->_topAction;
  self->_topAction = v3;
}

- (void)_updateRangeOfLoadedViews
{
  if (self->_numberOfItems)
  {
    v9 = [MEMORY[0x1E696AD50] indexSetWithIndex:self->_selectedItemIndex];
    v3 = [(SFCapsuleCollectionView *)self _indexesOfVisibleItemsIncludingAction:1];
    [v9 addIndexes:v3];

    v4 = [(SFCapsuleCollectionView *)self _indexesOfAnimatingItems];
    [v9 addIndexes:v4];
    v5 = [(NSArray *)self->_items indexesOfObjectsPassingTest:&__block_literal_global_155];
    [v9 addIndexes:v5];

    v6 = self->_indexesOfLoadedViews;
    [(SFCapsuleCollectionView *)self _setIndexesOfLoadedViews:v9];
    WeakRetained = objc_loadWeakRetained(&self->_timerToDiscardViewsForReuse);
    if ([v4 count] && WeakRetained)
    {
      v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:1.0];
      [WeakRetained setFireDate:v8];
    }

    else if (![(NSIndexSet *)self->_indexesOfLoadedViews isEqualToIndexSet:v6])
    {
      [(SFCapsuleCollectionView *)self _scheduleTimerToDiscardViewsForReuseIfNeeded];
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AC90] indexSet];
    [(SFCapsuleCollectionView *)self _setIndexesOfLoadedViews:v9];
  }
}

- (void)_createToolbarBackdropIfNeeded
{
  if (!self->_toolbarBackdropView && ([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
  {
    v3 = objc_alloc(MEMORY[0x1E69DD298]);
    v4 = [MEMORY[0x1E69DC730] effectWithStyle:10];
    v5 = [v3 initWithEffect:v4];

    [(UIView *)v5 _setCaptureView:self->_backgroundCaptureView];
    v6 = objc_alloc(MEMORY[0x1E69DD250]);
    v7 = [(UIView *)v5 contentView];
    [v7 bounds];
    Width = CGRectGetWidth(v16);
    v9 = [v6 initWithFrame:{0.0, 0.0, Width, _SFOnePixel()}];
    bottomSeparator = self->_bottomSeparator;
    self->_bottomSeparator = v9;

    [(UIView *)self->_bottomSeparator setAutoresizingMask:34];
    v11 = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)self->_bottomSeparator setBackgroundColor:v11];

    v12 = [(UIView *)v5 contentView];
    [v12 addSubview:self->_bottomSeparator];

    toolbarBackdropView = self->_toolbarBackdropView;
    self->_toolbarBackdropView = v5;
    v14 = v5;

    [(UIView *)self->_contentView insertSubview:self->_toolbarBackdropView atIndex:0];
  }
}

- (id)createNormalPageLayout
{
  layoutStyle = self->_layoutStyle;
  switch(layoutStyle)
  {
    case 1:
      v4 = [MEMORY[0x1E69C8880] isSolariumEnabled];
      v5 = off_1E7218B60;
      v6 = off_1E7219068;
LABEL_7:
      if (v4)
      {
        v5 = v6;
      }

      goto LABEL_9;
    case 3:
      v5 = off_1E7219078;
LABEL_9:
      v7 = [objc_alloc(*v5) initWithContainer:self];
      goto LABEL_11;
    case 2:
      v4 = [MEMORY[0x1E69C8880] isSolariumEnabled];
      v5 = off_1E7218B78;
      v6 = off_1E7219080;
      goto LABEL_7;
  }

  v7 = 0;
LABEL_11:
  [(SFCapsuleCollectionView *)self applyGeometryToPageLayout:v7];
  [(SFCapsulePageDerivativeLayout *)self->_hiddenLayout setBaseLayout:v7];

  return v7;
}

- (void)_updateShowsMinimizedProgressView
{
  v3 = ![(_SFFluidProgressView *)self->_minimizedProgressView isShowingProgress]|| self->_selectedItemState != 1 || self->_minimizationStyle == 1;
  v4 = [MEMORY[0x1E69C8880] isSolariumEnabled] | v3;
  WeakRetained = objc_loadWeakRetained(&self->_currentTransitionCoordinator);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __60__SFCapsuleCollectionView__updateShowsMinimizedProgressView__block_invoke;
    v7[3] = &unk_1E721B5B0;
    v7[4] = self;
    v8 = v4 & 1;
    [WeakRetained addAnimations:v7];
  }

  else
  {
    [(_SFFluidProgressView *)self->_minimizedProgressView setAlpha:((v4 & 1) == 0)];
  }
}

- (void)_updateCanBlurCapsules
{
  if (self->_selectionGestureState)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_layoutStyle != 2;
  }

  v4 = ([MEMORY[0x1E69C8880] isSolariumEnabled] | v3) & 1;
  if (self->_canBlurCapsules != v4)
  {
    self->_canBlurCapsules = v4;

    [(SFCapsuleCollectionView *)self setNeedsLayout];
  }
}

- (void)setNeedsLayout
{
  if (!self->_ignoreSetNeedsLayout)
  {
    v2.receiver = self;
    v2.super_class = SFCapsuleCollectionView;
    [(SFCapsuleCollectionView *)&v2 setNeedsLayout];
  }
}

- (void)_reloadDataWithoutLayout
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18B7AC000, v3, OS_LOG_TYPE_DEFAULT, "Reload data", buf, 2u);
  }

  v4 = [MEMORY[0x1E696AC90] indexSet];
  [(SFCapsuleCollectionView *)self _setIndexesOfLoadedViews:v4];

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  self->_numberOfItems = [WeakRetained numberOfItemsInCapsuleCollectionView:self];

  self->_selectedItemIndex = 0;
  v6 = [(NSArray *)self->_items mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_numberOfItems];
  }

  v9 = v8;

  v10 = self->_numberOfItems + 1;
  while ([v9 count] > v10)
  {
    [v9 removeLastObject];
  }

  while ([v9 count] < v10)
  {
    v11 = [[SFCapsuleCollectionViewItem alloc] initWithCollectionView:self];
    [v9 addObject:v11];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v20 + 1) + 8 * i) invalidateCapsuleHeight];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v14);
  }

  v17 = [v12 copy];
  items = self->_items;
  self->_items = v17;

  [(SFCapsuleCollectionView *)self _updateActions];
  v19 = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [v19 capsuleCollectionViewWillReloadData:self];
  }

  [(SFCapsuleCollectionView *)self _updateRangeOfLoadedViews];
  [(SFCapsuleCollectionView *)self setNeedsLayout];
}

uint64_t __51__SFCapsuleCollectionView_updateSupplementaryViews__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 944);
  if (!v4)
  {
    v4 = *(v3 + 912);
  }

  v5 = [v4 infoForSupplementaryIdentifier:a2 page:*(a1 + 40)];
  v10 = [v5 parentIdentifier];

  if (v10)
  {
    v6 = [*(a1 + 48) objectForKeyedSubscript:v10];
    if (v6)
    {
      v7 = v6;
      v8 = [*(a1 + 56) objectForKeyedSubscript:v10];
      if (!v8)
      {
        v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
        [*(a1 + 56) setObject:v8 forKeyedSubscript:v10];
        [v7 addSubview:v8];
      }
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

- (void)updateSupplementaryViewTheme
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSDictionary *)self->_supplementaryViews allValues];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(_SFBarTheme *)self->_theme toolbarControlsTintColor];
        [v8 setTintColor:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(SFCapsuleCollectionView *)self _updateToolbarTheme];
}

- (UIEdgeInsets)bottomCapsulePadding
{
  top = self->_bottomCapsulePadding.top;
  left = self->_bottomCapsulePadding.left;
  bottom = self->_bottomCapsulePadding.bottom;
  right = self->_bottomCapsulePadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)_visualEffectGroupName
{
  if ([(SFCapsuleCollectionView *)self selectedItemIsMinimized]&& !self->_visualEffectTransitionCount && (objc_opt_respondsToSelector() & 1) != 0 && !self->_minimizationStyle)
  {
    v3 = [(_SFBarTheme *)self->_minimizedTheme backdropGroupName];
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SFCapsuleCollectionView.%p", self];
  }

  return v3;
}

- (double)capsuleBackgroundCornerRadius
{
  v3 = [(SFCapsuleCollectionView *)self pageForIndex:self->_selectedItemIndex];
  v4 = [(SFCapsuleCollectionView *)self infoForCapsuleOnPage:v3];
  [v4 cornerRadius];
  v6 = v5;

  return v6;
}

- (double)_selectedItemMinimizationPercent
{
  if ((self->_minimizationFlags & 0x11) == 0 || self->_minimizationScrollBehavior)
  {
    return [(SFCapsuleCollectionView *)self selectedItemIsMinimized];
  }

  [(SFCapsuleCollectionView *)self obscuredInsetsForState:0];
  [(SFCapsuleCollectionView *)self _insetForCapsuleEdgeWithInsets:?];
  v5 = v4;
  [(SFCapsuleCollectionView *)self obscuredInsetsForState:1];
  [(SFCapsuleCollectionView *)self _insetForCapsuleEdgeWithInsets:?];
  v7 = _SFClamp(fabs(self->_offsetForMinimization / (v6 - v5)), 0.0, 1.0);
  v8 = [(SFCapsuleCollectionView *)self selectedItemIsMinimized];
  result = 1.0 - v7;
  if (!v8)
  {
    return v7 + 0.0;
  }

  return result;
}

- (void)reloadData
{
  numberOfUpdates = self->_numberOfUpdates;
  v4 = [(SFCapsuleCollectionViewUpdate *)self->_update deletedItems];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __37__SFCapsuleCollectionView_reloadData__block_invoke;
  v10[3] = &unk_1E721BA98;
  v10[4] = self;
  [v4 enumerateObjectsUsingBlock:v10];

  update = self->_update;
  self->_update = 0;

  self->_numberOfUpdates = 0;
  v6 = objc_alloc_init(MEMORY[0x1E69C8A40]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __37__SFCapsuleCollectionView_reloadData__block_invoke_2;
  v9[3] = &unk_1E721BAC0;
  v9[4] = self;
  v9[5] = numberOfUpdates;
  [v6 setHandler:v9];
  [(SFCapsuleCollectionView *)self _reloadDataWithoutLayout];
  v7 = [(SFCapsuleCollectionView *)self window];

  if (v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__SFCapsuleCollectionView_reloadData__block_invoke_3;
    v8[3] = &unk_1E721B360;
    v8[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v8];
  }
}

- (CGRect)capsuleFrame
{
  cachedNormalLayout = self->_cachedNormalLayout;
  if (!cachedNormalLayout)
  {
    cachedNormalLayout = self->_normalLayout;
  }

  v3 = [(SFCapsuleCollectionView *)self pageForIndex:self->_selectedItemIndex];
  v4 = [cachedNormalLayout capsuleInfoForPage:v3];
  [v4 frame];
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

- (void)_applyToolbarTheme
{
  v3 = [(_SFBarTheme *)self->_toolbarTheme toolbarControlsTintColor];
  [(UIView *)self->_toolbar setTintColor:v3];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(SFCapsuleCollectionView *)self _layoutStyleIsTop]|| ![(SFCapsuleCollectionView *)self selectedItemIsMinimized]|| (toolbarTheme = self->_minimizedTheme) == 0 || self->_minimizationStyle)
    {
      toolbarTheme = self->_toolbarTheme;
    }

    [(_SFBarTheme *)toolbarTheme applyBackdropEffectsToView:self->_toolbarBackdropView];
  }

  [(SFCapsuleCollectionView *)self _updateVisualEffectGroupName];
}

- (void)_updateVisualEffectGroupName
{
  v3 = [(SFCapsuleCollectionView *)self _visualEffectGroupName];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(SFCapsuleCollectionView *)self _shouldGroupToolbarBackdropWithCapsules])
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    [(UIView *)self->_toolbarBackdropView _setGroupName:v4];
  }

  items = self->_items;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__SFCapsuleCollectionView__updateVisualEffectGroupName__block_invoke;
  v7[3] = &unk_1E721BB10;
  v7[4] = self;
  v8 = v3;
  v6 = v3;
  [(NSArray *)items enumerateObjectsUsingBlock:v7];
}

void __55__SFCapsuleCollectionView__updateVisualEffectGroupName__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = [a2 capsuleView];
  v5 = *(a1 + 32);
  if (v5[132] == a3 && (v6 = [v5 itemBackgroundStyle], v6 != objc_msgSend(*(a1 + 32), "selectedItemBackgroundStyle")))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a1 + 40);
  }

  [v8 setVisualEffectGroupName:v7];
}

- (int64_t)itemBackgroundStyle
{
  layoutStyle = self->_layoutStyle;
  if (layoutStyle == 1)
  {
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  else if (layoutStyle == 2)
  {
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 2;
  }
}

- (int64_t)selectedItemBackgroundStyle
{
  layoutStyle = self->_layoutStyle;
  if (layoutStyle == 1)
  {
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      if (self->_selectedItemUsesLiftedPreviewAppearance && ![(SFCapsuleCollectionView *)self selectedItemIsMinimized])
      {
        return 2;
      }

      if (self->_selectedItemState == 2)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (layoutStyle != 2 || ([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) != 0)
    {
      return 2;
    }

    return !self->_selectedItemUsesLiftedPreviewAppearance;
  }
}

- (double)pageWidth
{
  [(SFCapsuleCollectionView *)self capsuleFrame];
  Width = CGRectGetWidth(v6);
  [(SFCapsuleCollectionView *)self interCapsuleSpacing];
  return Width + v4;
}

- (void)updateSupplementaryViews
{
  v56 = *MEMORY[0x1E69E9840];
  [(SFCapsuleCollectionView *)self _createToolbarBackdropIfNeeded];
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v3 = 576;
  v4 = [(NSDictionary *)self->_supplementaryViews allValues];
  v5 = [v4 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v50;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v50 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v49 + 1) + 8 * i) removeFromSuperview];
      }

      v6 = [v4 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v6);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v9 = [(NSDictionary *)self->_supplementaryContainers allValues];
  v10 = [v9 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v46;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v45 + 1) + 8 * j) removeFromSuperview];
      }

      v11 = [v9 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v11);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = [MEMORY[0x1E695DF90] dictionary];
  v16 = [MEMORY[0x1E695DF90] dictionary];
  if (objc_opt_respondsToSelector())
  {
    cachedNormalLayout = self->_cachedNormalLayout;
    if (!cachedNormalLayout)
    {
      cachedNormalLayout = self->_normalLayout;
    }

    v18 = [cachedNormalLayout supplementaryIdentifiers];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v41 objects:v53 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v42;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v41 + 1) + 8 * k);
          v24 = [WeakRetained capsuleCollectionView:self createSupplementaryViewWithIdentifier:v23];
          [v15 setObject:v24 forKeyedSubscript:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v41 objects:v53 count:16];
      }

      while (v20);
    }

    v16 = v35;
    v3 = v36;
  }

  v25 = [(SFCapsuleCollectionView *)self pageForIndex:self->_selectedItemIndex];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __51__SFCapsuleCollectionView_updateSupplementaryViews__block_invoke;
  v37[3] = &unk_1E721BF58;
  v37[4] = self;
  v38 = v25;
  v26 = v15;
  v39 = v26;
  v27 = v16;
  v40 = v27;
  v28 = v25;
  [v26 enumerateKeysAndObjectsUsingBlock:v37];
  v29 = *(&self->super.super.super.isa + v3);
  *(&self->super.super.super.isa + v3) = v26;
  v30 = v26;

  supplementaryContainers = self->_supplementaryContainers;
  self->_supplementaryContainers = v27;
  v32 = v27;

  v33 = [v30 objectForKeyedSubscript:@"SFCapsuleSupplementaryViewToolbar"];
  toolbar = self->_toolbar;
  self->_toolbar = v33;

  [(SFCapsuleCollectionView *)self updateSupplementaryViewTheme];
}

- (void)_updateToolbarTheme
{
  theme = self->_theme;
  if (theme)
  {
    if (self->_toolbarBackdropView)
    {
      v4 = [_SFBarTheme themeWithBarTintStyle:[(_SFBarTheme *)theme tintStyle]];
    }

    else
    {
      v4 = 0;
    }

    toolbarTheme = self->_toolbarTheme;
    self->_toolbarTheme = v4;

    [(SFCapsuleNavigationBarTheme *)self->_effectiveTheme setBackgroundTheme:self->_toolbarTheme];

    [(SFCapsuleCollectionView *)self _applyToolbarTheme];
  }
}

- (void)updateVerticalSwipeThreshold
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 safari_doubleForKey:@"DebugLoweredBarVerticalMinimizingSwipeThreshold" defaultValue:40.0];
  v5 = v4;

  self->_verticalSwipeThreshold = tan(v5 / 180.0 * 3.14159265);
}

- (id)_superviewForCapsules
{
  if (self->_canBlurCapsules || ![(SFCapsuleCollectionView *)self _contentIsDismissed])
  {
    v4 = [(SFCapsuleCollectionView *)self pageForIndex:self->_selectedItemIndex];
    v5 = [(SFCapsuleCollectionView *)self infoForCapsuleOnPage:v4];
    v6 = [v5 parentIdentifier];

    if (!v6 || ([(NSDictionary *)self->_supplementaryContainers objectForKeyedSubscript:v6], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v3 = [(SFCapsuleCollectionView *)self contentViewForCapsuleAlignment];
    }
  }

  else
  {
    v3 = self;
  }

  return v3;
}

- (id)contentViewForCapsuleAlignment
{
  v3 = [(SFCapsuleCollectionView *)self _layoutStyleIsTop];
  v4 = &OBJC_IVAR___SFCapsuleCollectionView__contentView;
  if (v3)
  {
    v4 = &OBJC_IVAR___SFCapsuleCollectionView__topContentView;
  }

  v5 = *(&self->super.super.super.isa + *v4);

  return v5;
}

- (SFCapsuleCollectionViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __37__SFCapsuleCollectionView_reloadData__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(a1 + 32) + 808) = v1;
  if (v1)
  {
    v3 = [[SFCapsuleCollectionViewUpdate alloc] initWithCollectionView:*(a1 + 32)];
    v4 = *(a1 + 32);
    v5 = *(v4 + 800);
    *(v4 + 800) = v3;
  }
}

- (void)_updateMinimizedProgressViewFillColor
{
  v3 = [(SFCapsuleCollectionView *)self selectedItemIsMinimized];
  effectiveMinimizedTheme = self->_effectiveMinimizedTheme;
  if (v3)
  {
    [(_SFBarTheme *)effectiveMinimizedTheme controlsTintColor];
  }

  else
  {
    [(_SFBarTheme *)effectiveMinimizedTheme platterProgressBarTintColor];
  }
  v5 = ;
  [(_SFFluidProgressView *)self->_minimizedProgressView setProgressBarFillColor:v5];
}

- (void)_scheduleTimerToDiscardViewsForReuseIfNeeded
{
  v3 = [(NSIndexSet *)self->_indexesOfLoadedViews count];
  v4 = [(NSMutableSet *)self->_viewsForReuse count]+ v3;
  if (v4 > [(SFCapsuleCollectionView *)self _softMaximumNumberOfViews])
  {
    WeakRetained = objc_loadWeakRetained(&self->_timerToDiscardViewsForReuse);

    if (!WeakRetained)
    {
      v6 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__discardExcessViewsForReuse selector:0 userInfo:0 repeats:1.0];
      objc_storeWeak(&self->_timerToDiscardViewsForReuse, v6);
    }
  }
}

- (unint64_t)_maximumNumberOfVisibleViews
{
  [(SFCapsuleCollectionView *)self capsuleFrame];
  Width = CGRectGetWidth(v11);
  [(SFCapsuleCollectionView *)self bounds];
  v4 = CGRectGetWidth(v12);
  if (v4 <= Width)
  {
    return 1;
  }

  v5 = v4;
  [(SFCapsuleCollectionView *)self pageWidth];
  v7 = (floor((v5 - Width) / v6) + 1.0);
  v8 = v5 - v7 * v6;
  [(SFCapsuleCollectionView *)self interCapsuleSpacing];
  if (v8 <= v9)
  {
    if (v8 > 0.0)
    {
      ++v7;
    }
  }

  else
  {
    v7 += 2;
  }

  return v7;
}

- (unint64_t)selectionGestureAxis
{
  if (self->_selectionGestureState)
  {
    return self->_panAxis;
  }

  else
  {
    return 0;
  }
}

- (double)minimizedContentScale
{
  if (!self->_numberOfItems)
  {
    return 1.0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  cachedMinimizedContentScale = self->_cachedMinimizedContentScale;
  if (cachedMinimizedContentScale == 0.0)
  {
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained capsuleCollectionViewMinimizedContentScale:self];
      self->_cachedMinimizedContentScale = cachedMinimizedContentScale;
    }

    else
    {
      cachedMinimizedContentScale = self->_cachedMinimizedContentScale;
    }
  }

  if (cachedMinimizedContentScale == 0.0)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = cachedMinimizedContentScale;
  }

  return v5;
}

- (UIEdgeInsets)obscuredInsets
{
  if (self->_backdropHeightAnimationCount)
  {
    topBackdropHeightPresentationValue = self->_topBackdropHeightPresentationValue;
    bottomBackdropHeightPresentationValue = self->_bottomBackdropHeightPresentationValue;
    v4 = 0.0;
    v5 = 0.0;
  }

  else
  {
    [(SFCapsuleCollectionView *)self _obscuredInsetsIgnoringAnimation];
  }

  result.right = v5;
  result.bottom = bottomBackdropHeightPresentationValue;
  result.left = v4;
  result.top = topBackdropHeightPresentationValue;
  return result;
}

- (UIEdgeInsets)_insetsByApplyingSelectedItemOffset
{
  [(SFCapsuleCollectionView *)self _selectedItemMinimizationPercent];
  if (self->_selectedItemState == 2)
  {
    v4 = self;
    v5 = 2;
LABEL_5:

    [(SFCapsuleCollectionView *)v4 obscuredInsetsForState:v5];
    goto LABEL_10;
  }

  v6 = v3;
  if (v3 == 1.0)
  {
    v4 = self;
    v5 = 1;
    goto LABEL_5;
  }

  [(SFCapsuleCollectionView *)self obscuredInsetsForState:0];
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  if (v6 != 0.0)
  {
    [(SFCapsuleCollectionView *)self obscuredInsetsForState:1];
    v7 = SFInterpolateEdgeInsets(v11, v12, v13, v14, v15, v16, v17, v18, v6);
  }

LABEL_10:
  result.right = v10;
  result.bottom = v9;
  result.left = v8;
  result.top = v7;
  return result;
}

- (UIEdgeInsets)obscuredInsetsIgnoringKeyboard
{
  if (self->_showingKeyboard)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x4010000000;
    v18 = "";
    v19 = 0u;
    v20 = 0u;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__SFCapsuleCollectionView_obscuredInsetsIgnoringKeyboard__block_invoke;
    v14[3] = &unk_1E721B980;
    v14[4] = self;
    v14[5] = &v15;
    [(SFCapsuleCollectionView *)self performIgnoringKeyboard:v14];
    v2 = v16[4];
    v3 = v16[5];
    v4 = v16[6];
    v5 = v16[7];
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    [(SFCapsuleCollectionView *)self obscuredInsets];
    v2 = v6;
    v3 = v7;
    v4 = v8;
    v5 = v9;
  }

  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SFCapsuleCollectionView;
  [(SFCapsuleCollectionView *)&v3 didMoveToWindow];
  if (!self->_numberOfItems)
  {
    [(SFCapsuleCollectionView *)self _reloadDataWithoutLayout];
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = SFCapsuleCollectionView;
  [(SFCapsuleCollectionView *)&v3 tintColorDidChange];
  if (self->_keyboardHeight != 0.0)
  {
    [(SFCapsuleCollectionView *)self setNeedsLayout];
  }
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = SFCapsuleCollectionView;
  [(SFCapsuleCollectionView *)&v3 safeAreaInsetsDidChange];
  [(SFCapsuleCollectionView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v53.receiver = self;
  v53.super_class = SFCapsuleCollectionView;
  [(SFCapsuleCollectionView *)&v53 layoutSubviews];
  [(SFCapsuleCollectionView *)self clearCachedLayoutValues];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __41__SFCapsuleCollectionView_layoutSubviews__block_invoke;
  v52[3] = &unk_1E721B360;
  v52[4] = self;
  [(SFCapsuleCollectionView *)self _performWithoutSettingNeedsLayout:v52];
  if ([(NSIndexSet *)self->_indexesOfLoadedViews count]&& !self->_numberOfUpdates)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      self->_cachedMinimizedContentScale = 0.0;
    }

    v4 = [(SFCapsuleCollectionView *)self pageForIndex:self->_selectedItemIndex];
    cachedNormalLayout = self->_cachedNormalLayout;
    if (!cachedNormalLayout)
    {
      cachedNormalLayout = self->_normalLayout;
    }

    v6 = [cachedNormalLayout topBackdropInfoForPage:v4];
    [v6 frame];
    MaxY = CGRectGetMaxY(v54);

    [(SFCapsuleCollectionView *)self bounds];
    x = v55.origin.x;
    y = v55.origin.y;
    width = v55.size.width;
    height = v55.size.height;
    v12 = CGRectGetHeight(v55);
    normalLayout = self->_cachedNormalLayout;
    if (!normalLayout)
    {
      normalLayout = self->_normalLayout;
    }

    v14 = [normalLayout bottomBackdropInfoForPage:v4];
    [v14 frame];
    v15 = v12 - CGRectGetMinY(v56);

    if ([(SFCapsuleCollectionView *)self _layoutStyleIsTop])
    {
      v16 = self->_cachedNormalLayout;
      if (!v16)
      {
        v16 = self->_normalLayout;
      }

      v17 = [v16 capsuleInfoForPage:v4];
      [v17 frame];
      v18 = fmax(MaxY, CGRectGetMaxY(v57));
    }

    else
    {
      v51 = MaxY;
      v58.origin.x = x;
      v58.origin.y = y;
      v58.size.width = width;
      v58.size.height = height;
      v19 = x;
      v20 = CGRectGetHeight(v58);
      v21 = self->_cachedNormalLayout;
      if (!v21)
      {
        v21 = self->_normalLayout;
      }

      v22 = [v21 capsuleInfoForPage:v4];
      [v22 frame];
      v50 = fmax(v15, v20 - CGRectGetMinY(v59));

      v23 = [(SFCapsuleCollectionView *)self infoForCapsuleOnPage:v4];
      [v23 frame];
      v25 = v24;
      recta = v26;
      v28 = v27;
      v30 = v29;

      v60.origin.x = v19;
      v60.origin.y = y;
      v60.size.width = width;
      v60.size.height = height;
      x = v19;
      v31 = CGRectGetHeight(v60);
      v61.origin.x = v25;
      v61.origin.y = recta;
      v61.size.width = v28;
      v61.size.height = v30;
      v15 = fmax(v50, v31 - CGRectGetMinY(v61));
      v18 = v51;
    }

    v62.origin.x = x;
    v62.origin.y = y;
    v62.size.width = width;
    v62.size.height = height;
    v32 = CGRectGetHeight(v62) - v15;
    v63.origin.x = x;
    v63.origin.y = y;
    v63.size.width = width;
    v63.size.height = height;
    [(UIView *)self->_contentView setFrame:0.0, v32, CGRectGetWidth(v63), v15];
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = width;
    v64.size.height = height;
    [(UIView *)self->_topContentView setFrame:0.0, 0.0, CGRectGetWidth(v64), v18];
    [(SFCapsuleCollectionView *)self layOutSupplementaryViews];
    [(SFCapsuleCollectionView *)self _layOutItems:self->_items atIndexes:self->_indexesOfLoadedViews selectedItemIndex:self->_selectedItemIndex];
    [(SFCapsuleCollectionView *)self bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = [(NSArray *)self->_items objectAtIndexedSubscript:self->_selectedItemIndex];
    v42 = [v41 capsuleView];
    [v42 ss_untransformedFrame];
    CGRectGetMinY(v65);
    UIEdgeInsetsMakeWithEdges();
    [(_UIVisualEffectBackdropView *)self->_backgroundCaptureView setFrame:v34 + v46, v36 + v43, v38 - (v46 + v44), v40 - (v43 + v45)];

    [(SFCapsuleCollectionView *)self _updateCapsuleAlpha];
    [(SFCapsuleCollectionView *)self _layOutKeyboardBackdrop];
    [(SFCapsuleCollectionView *)self updateSupplementariesAlpha];
    [(SFCapsuleCollectionView *)self layOutToolbarBackdropView];
    [(SFCapsuleCollectionView *)self _layOutMinimizedProgressView];
    [(SFCapsuleCollectionView *)self _layOutLockdownStatusBar];
    [(SFCapsuleCollectionView *)self _updateContentBlurRadius];
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      [(UIView *)self->_contentView setAlpha:([(SFCapsuleCollectionView *)self _contentIsDismissed]^ 1)];
      [(UIView *)self->_topContentView setAlpha:([(SFCapsuleCollectionView *)self _contentIsDismissed]^ 1)];
    }

    items = self->_items;
    v48 = [(SFCapsuleCollectionView *)self _indexesOfLoadedViews];
    [(NSArray *)items enumerateObjectsAtIndexes:v48 options:0 usingBlock:&__block_literal_global_64];

    self->_previousContentIsDismissed = [(SFCapsuleCollectionView *)self _contentIsDismissed];
  }
}

- (void)_updateLayoutMargins
{
  if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
  {
    [(SFCapsuleCollectionView *)self bounds];
    v7 = SFCapsuleSideMarginForViewWithBoundsSafeAreaInsets(v3, v4, v5, v6);
    [(SFCapsuleCollectionView *)self safeAreaInsets];
    v9 = v8;
    [(SFCapsuleCollectionView *)self layoutMargins];
    v14 = v7 == v13 && v9 == v10;
    v15 = v14 && v7 == v12;
    if (!v15 || v11 != 0.0)
    {

      [(SFCapsuleCollectionView *)self setLayoutMargins:v9, v7, 0.0, v7];
    }
  }
}

- (void)layOutSupplementaryViews
{
  v68 = *MEMORY[0x1E69E9840];
  v46 = [(SFCapsuleCollectionView *)self pageForIndex:self->_selectedItemIndex];
  v43 = [(SFCapsuleCollectionView *)self selectedItemIsMinimized];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [(NSDictionary *)self->_supplementaryViews allKeys];
  v3 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
  if (v3)
  {
    v4 = v3;
    v45 = *v64;
    v42 = *MEMORY[0x1E69796E8];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v64 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v63 + 1) + 8 * i);
        v7 = [(SFCapsuleCollectionView *)self infoForSupplementaryWithIdentifier:v6 onPage:v46, v42];
        v62 = 0;
        v8 = [(SFCapsuleCollectionView *)self superviewForSupplementaryViewWithLayoutInfo:v7 isTopAligned:&v62];
        v9 = [(NSDictionary *)self->_supplementaryViews objectForKeyedSubscript:v6];
        v10 = [v9 superview];

        if (v10 != v8)
        {
          contentView = self->_contentView;
          if (v8 == contentView)
          {
            if (self->_toolbarBackdropView)
            {
              [(UIView *)contentView insertSubview:v9 aboveSubview:?];
            }

            else
            {
              [(UIView *)contentView insertSubview:v9 atIndex:?];
            }
          }

          else
          {
            [(UIView *)v8 addSubview:v9];
          }
        }

        if (([v7 ignoresCornerRadius] & 1) == 0)
        {
          if (![v7 canRepresentCornersAsRadius])
          {
            goto LABEL_19;
          }

          v12 = [v9 layer];
          v13 = v12;
          if (v12)
          {
            [v12 cornerRadii];
          }

          else
          {
            v60 = 0u;
            v61 = 0u;
            v58 = 0u;
            v59 = 0u;
          }

          v14 = *(MEMORY[0x1E6979288] + 16);
          v54 = *MEMORY[0x1E6979288];
          v15 = *(MEMORY[0x1E6979288] + 32);
          v16 = *(MEMORY[0x1E6979288] + 48);
          v55 = v14;
          v56 = v15;
          v57 = v16;
          v17 = CACornerRadiiEqualToRadii();

          if (v17)
          {
            [v7 cornerRadius];
            [v9 _setContinuousCornerRadius:?];
          }

          else
          {
LABEL_19:
            v18 = [v9 layer];
            [v18 setCornerCurve:v42];

            if (v7)
            {
              [v7 cornerRadii];
            }

            else
            {
              v52 = 0u;
              v53 = 0u;
              v50 = 0u;
              v51 = 0u;
            }

            v19 = [v9 layer];
            v58 = v50;
            v59 = v51;
            v60 = v52;
            v61 = v53;
            [v19 setCornerRadii:&v58];
          }
        }

        [v7 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v28 = &OBJC_IVAR___SFCapsuleCollectionView__contentView;
        if (v62)
        {
          v28 = &OBJC_IVAR___SFCapsuleCollectionView__topContentView;
        }

        v29 = *(&self->super.super.super.isa + *v28);
        [(SFCapsuleCollectionView *)self convertRect:v29 toView:v21, v23, v25, v27];
        v31 = v30;
        v33 = v32;
        [v9 ss_setUntransformedFrame:?];
        if (objc_opt_respondsToSelector())
        {
          [v9 setIsMinimized:v43];
        }

        v34 = [(NSDictionary *)self->_supplementaryContainers objectForKeyedSubscript:v6];
        if (v34)
        {
          [v29 bounds];
          [v34 setFrame:{v35 - v31, v36 - v33}];
        }

        if ([MEMORY[0x1E69C8880] isSolariumEnabled])
        {
          [v7 alpha];
          [v9 setAlpha:?];
          v37 = [v9 isHidden];
          if (v37 != [v7 isHidden])
          {
            [v9 setHidden:{objc_msgSend(v7, "isHidden")}];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v63 objects:v67 count:16];
    }

    while (v4);
  }

  v38 = [(SFCapsuleCollectionView *)self _contentIsDismissed];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__SFCapsuleCollectionView_layOutSupplementaryViews__block_invoke;
  aBlock[3] = &unk_1E721B600;
  aBlock[4] = self;
  v49 = v38;
  v39 = v46;
  v48 = v39;
  v40 = _Block_copy(aBlock);
  v41 = v40;
  if (self->_previousContentIsDismissed == v38)
  {
    (*(v40 + 2))(v40);
  }

  else
  {
    [MEMORY[0x1E69DD250] _animateUsingDefaultDampedSpringWithDelay:98 initialSpringVelocity:v40 options:0 animations:self->_toolbarCrossfadeDelay completion:0.0];
  }
}

void __51__SFCapsuleCollectionView_layOutSupplementaryViews__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 576);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__SFCapsuleCollectionView_layOutSupplementaryViews__block_invoke_2;
  v4[3] = &unk_1E721BF30;
  v6 = *(a1 + 48);
  v4[4] = v2;
  v5 = v1;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (BOOL)_contentIsDismissed
{
  if (self->_shouldDismissContent)
  {
    return 1;
  }

  if (self->_offsetForPan.y >= -10.0)
  {
    return 0;
  }

  return self->_panAxis == 2;
}

void __51__SFCapsuleCollectionView_layOutSupplementaryViews__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (*(a1 + 48) == 1)
  {
    v7 = [v5 superview];
    v8 = v7;
    if (v7 == *(*(a1 + 32) + 416))
    {

LABEL_8:
      [v6 ss_untransformedFrame];
      MidY = CGRectGetMidY(v20);
      [*(a1 + 32) bounds];
      v14 = (MidY - CGRectGetMidY(v21)) * 0.05;
      v15 = *(MEMORY[0x1E695EFD0] + 16);
      *&v19.a = *MEMORY[0x1E695EFD0];
      *&v19.c = v15;
      *&v19.tx = *(MEMORY[0x1E695EFD0] + 32);
      *&v18.a = *&v19.a;
      *&v18.c = v15;
      *&v18.tx = *&v19.tx;
      CGAffineTransformScale(&v19, &v18, 1.05, 1.05);
      v17 = v19;
      CGAffineTransformTranslate(&v18, &v17, 0.0, v14);
      v19 = v18;
      [v6 setTransform:&v18];
      goto LABEL_11;
    }

    v9 = [v6 superview];
    v10 = *(*(a1 + 32) + 424);

    if (v9 == v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v11 = [*(a1 + 32) infoForSupplementaryWithIdentifier:a2 onPage:*(a1 + 40)];
    v12 = v11;
    if (v11)
    {
      [v11 transform];
    }

    else
    {
      memset(&v16, 0, sizeof(v16));
    }

    v19 = v16;
    [v6 setTransform:{&v19, *&v16.a, *&v16.c, *&v16.tx}];
  }

LABEL_11:
}

- (BOOL)_shouldInteractivelySquish
{
  v3 = [(SFCapsuleCollectionView *)self _layoutStyleIsTop];
  if (v3)
  {
    LOBYTE(v3) = self->_minimizationStyle == 0;
  }

  return v3;
}

- (double)_selectedItemContentMinimizationPercent
{
  [(SFCapsuleCollectionView *)self _selectedItemMinimizationPercent];

  return _SFClampPercent(v2, 0.0, 0.3);
}

- (void)_updateCapsuleAlpha
{
  if ([(NSArray *)self->_items count])
  {
    v3 = [(NSArray *)self->_items objectAtIndexedSubscript:self->_selectedItemIndex];
    v4 = [v3 capsuleIsDetached];

    [(SFCapsuleCollectionView *)self _selectedItemBackgroundAlpha];
    v6 = v5;
    v7 = [(SFCapsuleCollectionView *)self _capsuleAlphaOptionsForSelectionGesture];
    if ((v7 & 2) != 0)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v6;
    }

    if (v7)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 1.0;
    }

    v26 = v9;
    v10 = 0.0;
    if ((v7 & 4) != 0)
    {
      v11 = [(SFCapsuleCollectionView *)self _nextItemIndexForSelectionGesture];
      [(SFCapsuleCollectionView *)self _percentToSelectItemIndex:v11];
      v10 = 1.0;
      if (v12 + v12 < 1.0)
      {
        [(SFCapsuleCollectionView *)self _percentToSelectItemIndex:v11];
        v10 = v13 + v13;
      }
    }

    if (self->_selectedItemState)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v8;
    }

    v15 = [(SFCapsuleCollectionView *)self selectedItemIsMinimized];
    [(SFCapsuleCollectionView *)self capsuleFrame];
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    v20 = CGRectGetWidth(v32);
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v21 = v20 - CGRectGetHeight(v33);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__SFCapsuleCollectionView__updateCapsuleAlpha__block_invoke;
    aBlock[3] = &unk_1E721BDD0;
    aBlock[4] = self;
    v30 = v4;
    *&aBlock[5] = v21;
    *&aBlock[6] = v26;
    *&aBlock[7] = v10;
    *&aBlock[8] = v8;
    *&aBlock[9] = v14;
    v31 = v15;
    v22 = _Block_copy(aBlock);
    items = self->_items;
    indexesOfLoadedViews = self->_indexesOfLoadedViews;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __46__SFCapsuleCollectionView__updateCapsuleAlpha__block_invoke_2;
    v27[3] = &unk_1E721BE20;
    v28 = v22;
    v25 = v22;
    [(NSArray *)items enumerateObjectsAtIndexes:indexesOfLoadedViews options:0 usingBlock:v27];
  }
}

- (double)_selectedItemBackgroundAlpha
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    return 1.0;
  }

  [(SFCapsuleCollectionView *)self _selectedItemMinimizationPercent];
  v5 = 0.5 - v4 + 0.5 - v4;

  return _SFClamp(v5, 0.0, 1.0);
}

- (unint64_t)_capsuleAlphaOptionsForSelectionGesture
{
  if (!self->_selectionGestureState)
  {
    return 0;
  }

  [(SFCapsuleCollectionView *)self _panGestureTranslationConstrainedToPanAxis];
  panAxis = self->_panAxis;
  if (v3 < 0.0 && panAxis == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = panAxis == 2 && v3 < -50.0;
  if (v7 && !self->_linkedPageView)
  {
    ++v6;
  }

  if ([(SFCapsuleCollectionView *)self _nextItemIndexForSelectionGesture]== self->_numberOfItems && self->_selectionGestureState != 2 && panAxis != 2)
  {
    v6 |= 4uLL;
  }

  return v6;
}

void __46__SFCapsuleCollectionView__updateCapsuleAlpha__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v38 = [v5 capsuleView];
  v6 = *(*(a1 + 32) + 1056);
  v7 = [v5 capsuleIsDetached];

  if (v7)
  {
    goto LABEL_59;
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 992));
  if (objc_opt_respondsToSelector())
  {
    v9 = [WeakRetained capsuleCollectionView:*(a1 + 32) shouldHideShadowForItemAtIndex:a3];
  }

  else
  {
    v9 = 0;
  }

  [*(a1 + 32) horizontalSwipeOffsetForItemAtIndex:a3 selectedItemIndex:*(*(a1 + 32) + 1056)];
  v10 = *(a1 + 40);
  v12 = v10 - fmin(v10, fabs(v11));
  v13 = *(a1 + 32);
  if (*(v13 + 969) == 1 && (*(a1 + 80) & 1) == 0)
  {
    if (*(v13 + 600))
    {
      v15 = v6 == a3;
    }

    else
    {
      v15 = 0;
    }

    v14 = !v15;
  }

  else
  {
    v14 = 0;
  }

  v16 = v12 / v10;
  if (![v13 _contentIsDismissed])
  {
    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    v21 = [v38 shadowView];
    [v21 setAlpha:0.0];

    [v38 setAlpha:0.0];
    v22 = 1.0;
    if (v6 == a3)
    {
      goto LABEL_43;
    }

    goto LABEL_34;
  }

  if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0 && (v6 != a3 || !*(*(a1 + 32) + 1064)))
  {
    goto LABEL_24;
  }

LABEL_18:
  v17 = *(a1 + 32);
  if (v6 != a3)
  {
    if (*(v17 + 976) == a3)
    {
      v18 = 0.0;
      if ((v9 & 1) == 0)
      {
        v18 = *(a1 + 56);
      }

      v19 = [v38 shadowView];
      [v19 setAlpha:v18];

      v20 = *(a1 + 56);
    }

    else
    {
      v20 = *(a1 + 64);
      if ([MEMORY[0x1E69C8880] isSolariumEnabled])
      {
        v20 = v20 * _SFClampPercent(v16, 0.0, 0.3);
      }

      v26 = 0.0;
      if ((v9 & 1) == 0)
      {
        v26 = *(a1 + 72);
      }

      v27 = [v38 shadowView];
      [v27 setAlpha:v26];
    }

    [v38 setAlpha:v20];
LABEL_34:
    if (*(*(a1 + 32) + 1064))
    {
      v22 = 1.0;
    }

    else
    {
      v22 = 0.0;
    }

    goto LABEL_43;
  }

  v23 = *(v17 + 1048);
  v24 = 0.0;
  if ((v23 - 1) >= 2)
  {
    if (v23)
    {
      goto LABEL_40;
    }

    if (((*(v17 + 971) | v9) & 1) == 0)
    {
      v28 = *(a1 + 48);
      [v17 _selectedItemBackgroundAlpha];
      v24 = v28 * v29;
    }
  }

  v25 = [v38 shadowView];
  [v25 setAlpha:v24];

LABEL_40:
  v30 = *(a1 + 48);
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v30 = v30 * _SFClampPercent(v16, 0.0, 0.3);
  }

  [v38 setAlpha:v30];
  v22 = 1.0;
LABEL_43:
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v22 = v22 * _SFClampPercent(v16, 0.3, 0.6);
  }

  v31 = [v38 contentView];
  [v31 setAlpha:v22];

  if (v6 == a3)
  {
    [*(a1 + 32) _selectedItemBackgroundAlpha];
    [v38 setBackgroundAlpha:?];
  }

  else
  {
    [v38 setBackgroundAlpha:1.0];
    if (*(a1 + 81) == 1)
    {
      v32 = *(*(a1 + 32) + 1032) == 0;
      goto LABEL_50;
    }
  }

  v32 = 0;
LABEL_50:
  [v38 setForceMinimizedTheme:v32];
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v33 = [v38 contentView];
    v34 = objc_opt_respondsToSelector();

    if (v34)
    {
      v35 = *(a1 + 32);
      if (*(v35 + 1064))
      {
        if (*(v35 + 688) == 2)
        {
          v36 = 1.0;
        }

        else
        {
          v36 = 0.0;
        }
      }

      else
      {
        v36 = 1.0;
      }

      v37 = [v38 contentView];
      [v37 setNonKeyContentAlpha:v36];
    }
  }

LABEL_59:
}

- (void)_layOutKeyboardBackdrop
{
  if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
  {
    if ([(SFCapsuleCollectionView *)self _layoutStyleIsTop])
    {
      [(UIKBVisualEffectView *)self->_keyboardBackdropView removeFromSuperview];
      keyboardBackdropView = self->_keyboardBackdropView;
      self->_keyboardBackdropView = 0;
    }

    else
    {
      v4 = [(NSArray *)self->_items objectAtIndexedSubscript:self->_selectedItemIndex];
      [(UIView *)self->_contentView bounds];
      x = v41.origin.x;
      y = v41.origin.y;
      width = v41.size.width;
      height = v41.size.height;
      selectedItemState = self->_selectedItemState;
      v10 = CGRectGetWidth(v41) - 8.0 - 8.0;
      [(SFCapsuleCollectionView *)self defaultCapsuleHeight];
      [v4 capsuleHeightForWidth:2 defaultHeight:self->_selectedItemIndex state:v10 index:v11];
      top = 12.0;
      v14 = self->_keyboardBackdropView;
      v36 = v12 + 12.0 + 8.0;
      v38 = height;
      if (selectedItemState == 2)
      {
        if (!v14)
        {
          v39[0] = MEMORY[0x1E69E9820];
          v39[1] = 3221225472;
          v39[2] = __50__SFCapsuleCollectionView__layOutKeyboardBackdrop__block_invoke;
          v39[3] = &unk_1E721B9F8;
          *&v39[5] = x;
          *&v39[6] = y;
          *&v39[7] = width;
          *&v39[8] = height;
          *&v39[9] = v12 + 12.0 + 8.0;
          v39[4] = self;
          [MEMORY[0x1E69DD250] performWithoutAnimation:v39];
          v14 = self->_keyboardBackdropView;
        }

        v15 = width;
        v16 = y;
        v17 = x;
        v18 = 1.0;
      }

      else
      {
        v15 = width;
        v16 = y;
        v17 = x;
        v18 = 0.0;
      }

      [(UIKBVisualEffectView *)v14 setAlpha:v18, *&v36];
      v19 = [v4 capsuleView];
      [v19 frame];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v42.origin.x = v21;
      v42.origin.y = v23;
      v42.size.width = v25;
      v42.size.height = v27;
      MinY = CGRectGetMinY(v42);
      if (selectedItemState != 2)
      {
        top = self->_bottomCapsulePadding.top;
      }

      v29 = v17;
      if (self->_inputAccessoryView)
      {
        [(SFCapsuleCollectionView *)self _inputAccessoryViewFrame];
        MaxY = CGRectGetMaxY(v43);
        v31 = v16;
        v32 = v15;
        v33 = v38;
      }

      else
      {
        v44.origin.x = v17;
        v31 = v16;
        v44.origin.y = v16;
        v32 = v15;
        v44.size.width = v15;
        v33 = v38;
        v44.size.height = v38;
        MaxY = v37 + CGRectGetHeight(v44);
      }

      v34 = MinY - top;
      v35 = v34;
      if (self->_itemsAreHidden)
      {
        v45.origin.x = v29;
        v45.origin.y = v31;
        v45.size.width = v32;
        v45.size.height = v33;
        v35 = CGRectGetHeight(v45);
      }

      v46.origin.x = v29;
      v46.origin.y = v31;
      v46.size.width = v32;
      v46.size.height = v33;
      [(UIKBVisualEffectView *)self->_keyboardBackdropView setFrame:0.0, v35, CGRectGetWidth(v46), MaxY - v34];
    }
  }
}

- (void)updateSupplementariesAlpha
{
  v36 = *MEMORY[0x1E69E9840];
  if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
  {
    [(SFCapsuleCollectionView *)self _toolbarBackdropAlpha];
    v4 = v3;
    v22 = [(SFCapsuleCollectionView *)self pageForIndex:self->_selectedItemIndex];
    v23 = [MEMORY[0x1E695DF90] dictionary];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = [(NSDictionary *)self->_supplementaryViews allKeys];
    v6 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          [(SFCapsuleCollectionView *)self infoForSupplementaryWithIdentifier:v11 onPage:v22];
          v13 = v12 = self;
          [v13 alpha];
          v15 = v4 * v14;
          v16 = [MEMORY[0x1E696AD98] numberWithDouble:v4 * v14];
          [v23 setObject:v16 forKeyedSubscript:v11];

          v8 |= v15 < 0.01;
          self = v12;
        }

        v7 = [v5 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v7);

      if (v8)
      {
        v17 = 0.3;
      }

      else
      {
        v17 = 0.2;
      }
    }

    else
    {

      v17 = 0.2;
    }

    toolbarCrossfadeDelay = self->_toolbarCrossfadeDelay;
    v19 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v32 = v4;
      v33 = 2114;
      v34 = v23;
      _os_log_impl(&dword_18B7AC000, v19, OS_LOG_TYPE_DEFAULT, "Set _toolbarBackdropView.alpha = %f, supplementaries: %{public}@", buf, 0x16u);
    }

    v20 = MEMORY[0x1E69DD250];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __53__SFCapsuleCollectionView_updateSupplementariesAlpha__block_invoke;
    v24[3] = &unk_1E721B9A8;
    v26 = v4;
    v24[4] = self;
    v25 = v23;
    v21 = v23;
    [v20 animateWithDuration:50331654 delay:v24 options:0 animations:v17 completion:toolbarCrossfadeDelay];
  }
}

- (void)layOutToolbarBackdropView
{
  contentBorrowed = self->_contentBorrowed;
  toolbarBackdropView = self->_toolbarBackdropView;
  if (contentBorrowed)
  {

    [(UIView *)toolbarBackdropView setHidden:1];
  }

  else
  {
    [(UIView *)toolbarBackdropView setHidden:0];
    if (self->_toolbarBackdropView)
    {
      v5 = [(SFCapsuleCollectionView *)self _contentIsDismissed];
      toolbarCrossfadeDelay = self->_toolbarCrossfadeDelay;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __52__SFCapsuleCollectionView_layOutToolbarBackdropView__block_invoke;
      v17[3] = &unk_1E721BFA8;
      v18 = v5;
      v17[4] = self;
      [MEMORY[0x1E69DD250] _animateUsingDefaultDampedSpringWithDelay:98 initialSpringVelocity:v17 options:0 animations:toolbarCrossfadeDelay completion:0.0];
      [(SFCapsuleCollectionView *)self _bottomBackdropFrame];
      [(UIView *)self->_contentView convertRect:self fromView:?];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;
      [(UIView *)self->_toolbarBackdropView frame];
      v21.origin.x = v8;
      v21.origin.y = v10;
      v21.size.width = v12;
      v21.size.height = v14;
      if (!CGRectEqualToRect(v20, v21) && !self->_bottomBackdropFrame)
      {
        v15 = [(UIView *)self->_toolbarBackdropView superview];
        contentView = self->_contentView;

        if (v15 == contentView)
        {
          [(UIView *)self->_toolbarBackdropView ss_setUntransformedFrame:v8, v10, v12, v14];
        }
      }
    }
  }
}

- (void)_layOutMinimizedProgressView
{
  v3 = [(_SFFluidProgressView *)self->_minimizedProgressView superview];
  contentView = self->_contentView;

  if (v3 == contentView)
  {
    v5 = [(SFCapsuleCollectionView *)self _layoutStyleIsTop];
    v6 = 0.0;
    if (!v5)
    {
      [(SFCapsuleCollectionView *)self bounds];
      Height = CGRectGetHeight(v18);
      [(SFCapsuleCollectionView *)self obscuredInsets];
      v6 = Height - v8;
    }

    [(SFCapsuleCollectionView *)self obscuredInsetsIgnoringKeyboard];
    v10 = v9;
    v12 = v11;
    v13 = self->_contentView;
    [(SFCapsuleCollectionView *)self bounds];
    Width = CGRectGetWidth(v19);
    if (v5)
    {
      v15 = v10;
    }

    else
    {
      v15 = v12;
    }

    [(UIView *)v13 convertRect:self fromView:0.0, v6, Width, v15];
    minimizedProgressView = self->_minimizedProgressView;

    [(_SFFluidProgressView *)minimizedProgressView setFrame:?];
  }
}

- (void)_layOutLockdownStatusBar
{
  v3 = [(SFCapsuleCollectionView *)self _layoutStyleIsTop];
  selectedItemState = self->_selectedItemState;
  v5 = [(SFCapsuleCollectionView *)self _contentIsDismissed];
  v6 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  v7 = 0.0;
  if (!self->_itemsAreHidden)
  {
    v8 = selectedItemState != 2 || v3;
    if (self->_offsetForPan.y == 0.0 && v8 != 0)
    {
      v7 = (v6 & 1u | !v5);
    }
  }

  [(SFLockdownStatusBar *)self->_lockdownStatusBar setAlpha:v7];
  v10 = [(SFLockdownStatusBar *)self->_lockdownStatusBar superview];
  v11 = v10;
  if (v10 == self->_contentView)
  {
  }

  else
  {
    v12 = [(SFLockdownStatusBar *)self->_lockdownStatusBar superview];
    topContentView = self->_topContentView;

    if (v12 != topContentView)
    {
      return;
    }
  }

  v14 = [(SFCapsuleCollectionView *)self pageForIndex:self->_selectedItemIndex];
  v15 = [(SFCapsuleCollectionView *)self infoForSupplementaryWithIdentifier:@"SFCapsuleSupplementaryViewLockdownStatusBar" onPage:v14];
  [v15 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(SFLockdownStatusBar *)self->_lockdownStatusBar superview];
  [(SFCapsuleCollectionView *)self convertRect:v24 toView:v17, v19, v21, v23];
  [(UIView *)self->_lockdownStatusBar ss_setUntransformedFrame:?];

  [(SFCapsuleCollectionView *)self _lockdownIndicatorTransform];
  lockdownStatusBar = self->_lockdownStatusBar;
  v26[0] = v26[3];
  v26[1] = v26[4];
  v26[2] = v26[5];
  [(SFLockdownStatusBar *)lockdownStatusBar setTransform:v26];
}

- (void)_updateContentBlurRadius
{
  blurSpringBehavior = self->_blurSpringBehavior;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__SFCapsuleCollectionView__updateContentBlurRadius__block_invoke;
  v3[3] = &unk_1E721B360;
  v3[4] = self;
  [MEMORY[0x1E69DD250] _animateUsingSpringBehavior:blurSpringBehavior tracking:0 animations:v3 completion:0];
}

void __51__SFCapsuleCollectionView__updateContentBlurRadius__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _contentIsDismissed])
  {
    v2 = 6.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(*(a1 + 32) + 416) layer];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:v2];
  [v3 setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];

  v6 = [*(*(a1 + 32) + 424) layer];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:v2];
  [v6 setValue:v5 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (id)inputAccessoryView
{
  if ([(SFCapsuleCollectionView *)self _layoutStyleIsTop]|| self->_selectedItemState != 2)
  {
    v8 = 0;
  }

  else
  {
    inputAccessoryView = self->_inputAccessoryView;
    if (!inputAccessoryView)
    {
      v4 = [(NSArray *)self->_items objectAtIndexedSubscript:self->_selectedItemIndex];
      v5 = [v4 capsuleView];

      v6 = [[SFCapsuleInputAccessorySpacerView alloc] initWithCapsuleView:v5];
      v7 = self->_inputAccessoryView;
      self->_inputAccessoryView = v6;

      [(SFCapsuleInputAccessorySpacerView *)self->_inputAccessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
      inputAccessoryView = self->_inputAccessoryView;
    }

    v8 = inputAccessoryView;
  }

  return v8;
}

- (BOOL)_shouldAnimateKeyboardHeightChanges
{
  v3 = [(SFCapsuleCollectionView *)self _shouldDodgeKeyboard];
  if (v3)
  {
    if (UIAccessibilityIsReduceMotionEnabled())
    {

      LOBYTE(v3) = [(SFCapsuleCollectionView *)self _layoutStyleIsTop];
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (CGRect)inputAccessoryViewFrame
{
  if (self->_inputAccessoryView)
  {
    [(SFCapsuleCollectionView *)self _inputAccessoryViewFrame];
  }

  else
  {
    v2 = *MEMORY[0x1E695F050];
    v3 = *(MEMORY[0x1E695F050] + 8);
    v4 = *(MEMORY[0x1E695F050] + 16);
    v5 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_inputAccessoryViewFrame
{
  v3 = [(SFCapsuleInputAccessorySpacerView *)self->_inputAccessoryView window];
  inputAccessoryView = self->_inputAccessoryView;
  if (v3)
  {
    [(SFCapsuleInputAccessorySpacerView *)inputAccessoryView bounds];
    [(SFCapsuleCollectionView *)self convertRect:self->_inputAccessoryView fromView:?];
  }

  else
  {
    [(SFCapsuleInputAccessorySpacerView *)inputAccessoryView frame];
  }

  x = v5;
  y = v6;
  width = v7;
  v12 = v8;

  if (y == 0.0)
  {
    [(SFCapsuleCollectionView *)self bounds];
    Height = CGRectGetHeight(v18);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = v12;
    v20 = CGRectOffset(v19, 0.0, Height);
    x = v20.origin.x;
    y = v20.origin.y;
    width = v20.size.width;
    v12 = v20.size.height;
  }

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = v12;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

uint64_t __57__SFCapsuleCollectionView_obscuredInsetsIgnoringKeyboard__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _insetsByApplyingSelectedItemOffset];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (SFCapsuleCollectionView)initWithFrame:(CGRect)a3
{
  v53[1] = *MEMORY[0x1E69E9840];
  v50.receiver = self;
  v50.super_class = SFCapsuleCollectionView;
  v3 = [(SFCapsuleCollectionView *)&v50 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [objc_opt_class() maximumContentSizeCategory];
    [v3 setMaximumContentSizeCategory:v4];

    *(v3 + 1160) = SFBottomCapsuleWithToolbarPadding;
    *(v3 + 1176) = unk_18BC3DF98;
    *(v3 + 142) = 0x4020000000000000;
    v5 = [MEMORY[0x1E696AC90] indexSet];
    v6 = *(v3 + 143);
    *(v3 + 143) = v5;

    *(v3 + 127) = 1;
    [v3 createLayouts];
    v7 = [[SFCapsulePageLayoutHidden alloc] initWithContainer:v3 baseLayout:*(v3 + 114)];
    v8 = *(v3 + 117);
    *(v3 + 117) = v7;

    v9 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v10 = *(v3 + 97);
    *(v3 + 97) = v9;

    v11 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v3 action:sel__didReceiveTap_];
    v12 = *(v3 + 83);
    *(v3 + 83) = v11;

    [*(v3 + 83) setDelegate:v3];
    [v3 addGestureRecognizer:*(v3 + 83)];
    if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
    {
      v13 = objc_alloc_init(MEMORY[0x1E69DD838]);
      v14 = *(v3 + 59);
      *(v3 + 59) = v13;

      [*(v3 + 59) setUserInteractionEnabled:0];
      [v3 addSubview:*(v3 + 59)];
    }

    v15 = objc_alloc(MEMORY[0x1E69DD250]);
    [v3 bounds];
    v16 = [v15 initWithFrame:?];
    v17 = *(v3 + 52);
    *(v3 + 52) = v16;

    [v3 addSubview:*(v3 + 52)];
    v18 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v19 = *(v3 + 53);
    *(v3 + 53) = v18;

    [v3 addSubview:*(v3 + 53)];
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      [*(v3 + 52) safari_setGlassGroupEnabled:1];
      [*(v3 + 53) safari_setGlassGroupEnabled:1];
    }

    v20 = objc_alloc_init(_SFFluidProgressView);
    v21 = *(v3 + 139);
    *(v3 + 139) = v20;

    [*(v3 + 139) setDelegate:v3];
    [*(v3 + 139) setAlignsToTop:1];
    [v3 _updateShowsMinimizedProgressView];
    [*(v3 + 52) addSubview:*(v3 + 139)];
    v22 = *(v3 + 144);
    *(v3 + 144) = MEMORY[0x1E695E0F0];

    v23 = [MEMORY[0x1E695DFA8] set];
    v24 = *(v3 + 55);
    *(v3 + 55) = v23;

    v25 = [MEMORY[0x1E695DF90] dictionary];
    v26 = *(v3 + 56);
    *(v3 + 56) = v25;

    [v3 setInsetsLayoutMarginsFromSafeArea:0];
    v27 = objc_alloc_init(MEMORY[0x1E69DCF40]);
    v28 = *(v3 + 88);
    *(v3 + 88) = v27;

    v29 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v3 action:sel__didReceivePan_];
    v30 = *(v3 + 84);
    *(v3 + 84) = v29;

    [*(v3 + 84) setDelegate:v3];
    [*(v3 + 84) _setHysteresis:5.0];
    [v3 addGestureRecognizer:*(v3 + 84)];
    v31 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v3 action:sel__didReceiveDismissPan_];
    v32 = *(v3 + 85);
    *(v3 + 85) = v31;

    [*(v3 + 85) setDelegate:v3];
    [v3 addGestureRecognizer:*(v3 + 85)];
    [v3 _updateCanBlurCapsules];
    v33 = [MEMORY[0x1E69DD280] behaviorWithDampingRatio:1.0 response:0.45];
    v34 = *(v3 + 110);
    *(v3 + 110) = v33;

    v35 = [MEMORY[0x1E6979378] safari_gaussianBlurWithRadius:0.0];
    v53[0] = v35;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
    v37 = [*(v3 + 52) layer];
    [v37 setFilters:v36];

    v38 = [MEMORY[0x1E6979378] safari_gaussianBlurWithRadius:0.0];
    v52 = v38;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
    v40 = [*(v3 + 53) layer];
    [v40 setFilters:v39];

    v41 = [MEMORY[0x1E696AD88] defaultCenter];
    [v41 addObserver:v3 selector:sel__keyboardWillChangeFrame_ name:*MEMORY[0x1E69DE068] object:0];
    [v41 addObserver:v3 selector:sel__keyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];
    [v41 addObserver:v3 selector:sel__keyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
    [v41 addObserver:v3 selector:sel__keyboardDidHide_ name:*MEMORY[0x1E69DDF70] object:0];
    [v3 registerContentViewIdentifier:@"SFCapsuleCollectionViewActionContentView" block:&__block_literal_global_4];
    v42 = [MEMORY[0x1E695DF90] dictionary];
    v43 = *(v3 + 69);
    *(v3 + 69) = v42;

    v51 = objc_opt_class();
    v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
    v45 = [v3 registerForTraitChanges:v44 withTarget:v3 action:sel__preferredContentSizeCategoryDidChange];

    v46 = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v47 = [v3 registerForTraitChanges:v46 withTarget:v3 action:sel__updateKeyboardBackdropViewStyle];

    [v3 safari_setCornerMaskingConfiguration:1];
    v48 = v3;
  }

  return v3;
}

SFCapsuleCollectionActionView *__41__SFCapsuleCollectionView_initWithFrame___block_invoke()
{
  v0 = objc_alloc_init(SFCapsuleCollectionActionView);

  return v0;
}

- (void)layoutMarginsDidChange
{
  v3.receiver = self;
  v3.super_class = SFCapsuleCollectionView;
  [(SFCapsuleCollectionView *)&v3 layoutMarginsDidChange];
  [(SFCapsuleCollectionView *)self _updateRangeOfLoadedViews];
}

- (void)_preferredContentSizeCategoryDidChange
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_items;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidateCapsuleHeight];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(SFCapsuleCollectionView *)self setNeedsLayout];
}

- (void)_setOffsetForMinimization:(double)a3
{
  if (self->_offsetForMinimization != a3)
  {
    self->_offsetForMinimization = a3;
    if (self->_numberOfItems)
    {
      [(SFCapsuleCollectionView *)self setNeedsLayout];
    }
  }
}

void __41__SFCapsuleCollectionView_layoutSubviews__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 capsuleView];
  [v2 setNeedsInitialLayout:0];
}

- (void)_performWithoutSettingNeedsLayout:(id)a3
{
  ignoreSetNeedsLayout = self->_ignoreSetNeedsLayout;
  self->_ignoreSetNeedsLayout = 1;
  (*(a3 + 2))(a3, a2);
  self->_ignoreSetNeedsLayout = ignoreSetNeedsLayout;
}

- (CGAffineTransform)_lockdownIndicatorTransform
{
  [(SFCapsuleCollectionView *)self _selectedItemMinimizationPercent];
  v6 = v5;
  [(SFCapsuleCollectionView *)self minimizedContentScale];
  v8 = _SFInterpolate(1.0, v7, v6);
  v9 = [(SFCapsuleCollectionView *)self _contentIsDismissed];
  v10 = 1.05;
  if (!v9)
  {
    v10 = 1.0;
  }

  v11 = v8 * v10;

  return CGAffineTransformMakeScale(retstr, v11, v11);
}

- (void)setShowingLockdownStatusBar:(BOOL)a3
{
  if (self->_showingLockdownStatusBar != a3)
  {
    self->_showingLockdownStatusBar = a3;
    if (a3)
    {
      v5 = objc_alloc_init(SFLockdownStatusBar);
      lockdownStatusBar = self->_lockdownStatusBar;
      self->_lockdownStatusBar = v5;

      [(SFLockdownStatusBar *)self->_lockdownStatusBar setNavigationBarItem:self->_navigationBarItem];
      [(SFLockdownStatusBar *)self->_lockdownStatusBar setShouldAnimateNavigationBarItemChanges:self->_layoutStyle == 1];
      v7 = [(SFCapsuleCollectionView *)self contentViewForCapsuleAlignment];
      [v7 addSubview:self->_lockdownStatusBar];
    }

    else
    {
      [(SFLockdownStatusBar *)self->_lockdownStatusBar removeFromSuperview];
      v7 = self->_lockdownStatusBar;
      self->_lockdownStatusBar = 0;
    }

    [(SFCapsuleCollectionView *)self setNeedsLayout];
  }
}

- (void)setNavigationBarItem:(id)a3
{
  v5 = a3;
  navigationBarItem = self->_navigationBarItem;
  if (navigationBarItem != v5)
  {
    v12 = v5;
    v7 = [(SFNavigationBarItem *)navigationBarItem fluidProgressController];
    [v7 unregisterObserver:self->_minimizedProgressView];

    objc_storeStrong(&self->_navigationBarItem, a3);
    v8 = [(SFNavigationBarItem *)self->_navigationBarItem fluidProgressController];
    [v8 registerObserver:self->_minimizedProgressView];

    minimizedProgressView = self->_minimizedProgressView;
    v10 = [(SFNavigationBarItem *)self->_navigationBarItem fluidProgressStateSource];
    v11 = [v10 progressState];
    [(_SFFluidProgressView *)minimizedProgressView setProgressToCurrentPositionForState:v11];

    [(SFLockdownStatusBar *)self->_lockdownStatusBar setNavigationBarItem:v12];
    [(SFCapsuleCollectionView *)self _updateShowsMinimizedProgressView];
    v5 = v12;
  }
}

- (UIView)popoverSourceView
{
  v3 = [(SFCapsuleCollectionView *)self pageForIndex:self->_selectedItemIndex];
  v4 = [(SFCapsuleCollectionView *)self infoForCapsuleOnPage:v3];
  v5 = [v4 parentIdentifier];

  if (v5)
  {
    v6 = [(NSDictionary *)self->_supplementaryViews objectForKeyedSubscript:v5];
  }

  else
  {
    v7 = [(NSArray *)self->_items objectAtIndexedSubscript:self->_selectedItemIndex];
    v6 = [v7 capsuleView];
  }

  return v6;
}

- (void)setEdgeMargin:(double)a3
{
  if (self->_edgeMargin != a3)
  {
    self->_edgeMargin = a3;
    [(SFCapsuleCollectionView *)self setNeedsLayout];
  }
}

- (UIEdgeInsets)concentricEdgeInsetsForEdge:(unint64_t)a3 bounds:(CGRect)a4 minimumEdgeInsets:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = [MEMORY[0x1E695E000] safari_browserDefaults];
  v16 = [v15 BOOLForKey:@"CapsuleUsesSystemConcentricCorners"];

  if (v16)
  {
    v21.receiver = self;
    v21.super_class = SFCapsuleCollectionView;
    [(SFCapsuleCollectionView *)&v21 _concentricEdgeInsetsForEdge:a3 bounds:x minimumEdgeInsets:y, width, height, top, left, bottom, right];
  }

  else
  {
    edgeMargin = self->_edgeMargin;
    if (edgeMargin == 0.0)
    {
      edgeMargin = 34.0;
      if (self->_layoutStyle != 3)
      {
        edgeMargin = 28.0;
      }
    }

    v18 = edgeMargin;
    v19 = edgeMargin;
    v20 = edgeMargin;
  }

  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = edgeMargin;
  return result;
}

- (void)performIgnoringKeyboard:(id)a3
{
  v18 = a3;
  showingKeyboard = self->_showingKeyboard;
  selectedItemState = self->_selectedItemState;
  keyboardHeight = self->_keyboardHeight;
  v5 = self->_cachedNormalLayout;
  v6 = self->_cachedMinimizedLayout;
  v7 = self->_cachedFocusedLayout;
  if (self->_showingKeyboard)
  {
    self->_showingKeyboard = 0;
    self->_selectedItemState = self->_selectedItemStateBeforeShowingKeyboard;
    self->_keyboardHeight = 0.0;
    cachedNormalLayout = self->_cachedNormalLayout;
    self->_cachedNormalLayout = 0;

    cachedMinimizedLayout = self->_cachedMinimizedLayout;
    self->_cachedMinimizedLayout = 0;

    cachedFocusedLayout = self->_cachedFocusedLayout;
    self->_cachedFocusedLayout = 0;
  }

  v18[2]();
  self->_selectedItemState = selectedItemState;
  self->_showingKeyboard = showingKeyboard;
  self->_keyboardHeight = keyboardHeight;
  v11 = self->_cachedNormalLayout;
  self->_cachedNormalLayout = v5;
  v12 = v5;

  v13 = self->_cachedMinimizedLayout;
  self->_cachedMinimizedLayout = v6;
  v14 = v6;

  v15 = self->_cachedFocusedLayout;
  self->_cachedFocusedLayout = v7;
}

- (void)_layOutItems:(id)a3 atIndexes:(id)a4 selectedItemIndex:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (self->_contentBorrowed)
  {
    v11 = v9;
  }

  else
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __68__SFCapsuleCollectionView__layOutItems_atIndexes_selectedItemIndex___block_invoke;
    v44[3] = &unk_1E721B498;
    v12 = v8;
    v45 = v12;
    v11 = [v10 indexesPassingTest:v44];

    if ([v11 count])
    {
      v13 = self->_selectedItemState == 2;
      v14 = [(SFCapsuleCollectionView *)self _contentIsDismissed];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __68__SFCapsuleCollectionView__layOutItems_atIndexes_selectedItemIndex___block_invoke_2;
      aBlock[3] = &unk_1E721B890;
      v43 = v14;
      aBlock[4] = self;
      v15 = _Block_copy(aBlock);
      [(SFCapsuleCollectionView *)self capsuleBackgroundCornerRadius];
      v17 = v16;
      v18 = v13 || v14;
      v19 = [(SFCapsuleCollectionView *)self _indexesOfVisibleItemsIncludingAction:1];
      [(SFCapsuleCollectionView *)self bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __68__SFCapsuleCollectionView__layOutItems_atIndexes_selectedItemIndex___block_invoke_3;
      v30[3] = &unk_1E721B8E0;
      v35 = a5;
      v31 = v12;
      v32 = self;
      v36 = v21;
      v37 = v23;
      v38 = v25;
      v39 = v27;
      v41 = v18;
      v40 = v17;
      v33 = v19;
      v34 = v15;
      v28 = v19;
      v29 = v15;
      [v31 enumerateObjectsAtIndexes:v11 options:0 usingBlock:v30];
    }
  }
}

uint64_t __68__SFCapsuleCollectionView__layOutItems_atIndexes_selectedItemIndex___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  v3 = [v2 capsuleView];
  if (v3)
  {
    v4 = [v2 capsuleIsDetached] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __68__SFCapsuleCollectionView__layOutItems_atIndexes_selectedItemIndex___block_invoke_2(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v10 = MEMORY[0x1E695EFD0];
    v11 = *(MEMORY[0x1E695EFD0] + 16);
    *a3 = *MEMORY[0x1E695EFD0];
    *(a3 + 16) = v11;
    v12 = *(v10 + 32);
LABEL_10:
    *(a3 + 32) = v12;
    return;
  }

  v5 = *(a1 + 32);
  if (!a2 || !v5[133])
  {
    [v5 bounds];
    UIRectGetCenter();
    v14 = v13;
    v16 = v15;
    UIRectGetCenter();
    v18 = (v17 - v14) * 0.05;
    v20 = (v19 - v16) * 0.05;
    v21 = *(MEMORY[0x1E695EFD0] + 16);
    *&v27.a = *MEMORY[0x1E695EFD0];
    *&v27.c = v21;
    *&v27.tx = *(MEMORY[0x1E695EFD0] + 32);
    *&v26.a = *&v27.a;
    *&v26.c = v21;
    *&v26.tx = *&v27.tx;
    CGAffineTransformScale(&v27, &v26, 1.05, 1.05);
    v25 = v27;
    CGAffineTransformTranslate(&v26, &v25, v18, v20);
    v22 = *&v26.c;
    v12 = *&v26.tx;
    v27 = v26;
    *a3 = *&v26.a;
    *(a3 + 16) = v22;
    goto LABEL_10;
  }

  v6 = [v5 _superviewForCapsules];
  v7 = *(a1 + 32);
  if (v6 == v7 || v6 == v7[52] || v6 == v7[53])
  {
    v24 = v6;
    if (v7[141])
    {
      [v7 _scaleFromLinkedPageView];
    }

    else
    {
      v23 = 1.0;
    }

    CGAffineTransformMakeScale(a3, v23, v23);
    v6 = v24;
  }

  else
  {
    v8 = MEMORY[0x1E695EFD0];
    v9 = *(MEMORY[0x1E695EFD0] + 16);
    *a3 = *MEMORY[0x1E695EFD0];
    *(a3 + 16) = v9;
    *(a3 + 32) = *(v8 + 32);
  }
}

void __68__SFCapsuleCollectionView__layOutItems_atIndexes_selectedItemIndex___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 64);
  v7 = [SFCapsulePageAdapter alloc];
  v8 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v9 = [(SFCapsulePageAdapter *)v7 initWithItem:v8 atIndex:a3 selectedItemIndex:*(a1 + 64)];

  [(SFCapsulePageAdapter *)v9 setLockdownStatusBar:*(*(a1 + 40) + 1120)];
  v10 = *(a1 + 40);
  v11 = [v5 capsuleView];
  [v10 _updateSuperviewForCapsule:v11];

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __68__SFCapsuleCollectionView__layOutItems_atIndexes_selectedItemIndex___block_invoke_4;
  v24 = &unk_1E721B8B8;
  v12 = v5;
  v13 = *(a1 + 40);
  v25 = v12;
  v26 = v13;
  v34 = v6 == a3;
  v14 = v9;
  v27 = v14;
  v15 = *(a1 + 88);
  v29 = *(a1 + 72);
  v30 = v15;
  v35 = *(a1 + 112);
  v17 = *(a1 + 56);
  v16 = *(a1 + 64);
  v31 = a3;
  v32 = v16;
  v28 = v17;
  v33 = *(a1 + 104);
  v18 = _Block_copy(&v21);
  if (![v12 animationCount] && !objc_msgSend(*(a1 + 48), "containsIndex:", a3) || v6 == a3 && (*(*(a1 + 40) + 971) & 1) != 0 || (objc_msgSend(v12, "capsuleView"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "needsInitialLayout"), v19, (v20 & 1) != 0))
  {
    [MEMORY[0x1E69DD250] safari_performWithoutRetargetingAnimations:v18];
  }

  else
  {
    v18[2](v18);
  }
}

void __68__SFCapsuleCollectionView__layOutItems_atIndexes_selectedItemIndex___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) capsuleView];
  [*(a1 + 40) _updateSuperviewForCapsule:v2];
  v3 = *(a1 + 120);
  v4 = [*(a1 + 40) infoForCapsuleOnPage:*(a1 + 48)];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (v3 == 1)
  {
    v13 = [MEMORY[0x1E69C8880] isSolariumEnabled];
    v14 = *(a1 + 40);
    v15 = v8;
    v16 = v6;
    if ((v13 & 1) == 0)
    {
      v15 = v8 + v14[82];
      v16 = v6 + v14[81];
    }

    v17 = [v14 contentViewForCapsuleAlignment];
    [v17 convertRect:*(a1 + 40) fromView:{v16, v15, v10, v12}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    [v2 ss_setUntransformedFrame:{v19, v21, v23, v25}];
    v64.origin.x = v19;
    v64.origin.y = v21;
    v64.size.width = v23;
    v64.size.height = v25;
    [*(*(a1 + 40) + 536) setCapsuleHeight:CGRectGetHeight(v64)];
    v26 = *(a1 + 40);
    if (v26)
    {
      [v26 _selectedItemContentTransformForFrame:{v19, v21, v23, v25}];
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
      v61 = 0u;
    }

    v58 = v61;
    v59 = v62;
    v60 = v63;
    [v2 setContentTransform:&v58];
    v41 = SFEdgeInsetsForInsetingRectToRect(*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), v6, v8, v10, v12);
    v43 = v42;
    v45 = v44;
    if ([*(a1 + 40) _sf_usesLeftToRightLayout])
    {
      v46 = v45;
    }

    else
    {
      v46 = v43;
    }

    [v2 setAccessoryViewInsets:{0.0, 8.0, 0.0, fmax(8.0 - v46, 0.0)}];
    [v2 setBackgroundStyle:{objc_msgSend(*(a1 + 40), "selectedItemBackgroundStyle")}];
    [*(a1 + 40) _selectedItemContentMinimizationPercent];
  }

  else
  {
    if (*(a1 + 121) == 1)
    {
      v27 = *(a1 + 40);
    }

    else
    {
      v28 = [MEMORY[0x1E69C8880] isSolariumEnabled];
      v27 = *(a1 + 40);
      if ((v28 & 1) == 0)
      {
        v6 = v6 + v27[81];
      }
    }

    v29 = [v27 contentViewForCapsuleAlignment];
    [v29 convertRect:*(a1 + 40) fromView:{v6, v8, v10, v12}];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    [*(a1 + 40) pageOffsetForItemAtIndex:*(a1 + 96) selectedItemIndex:*(a1 + 104)];
    [v2 ss_setUntransformedFrame:{v31 + v38, v33, v35, v37}];
    v39 = *(MEMORY[0x1E695EFD0] + 16);
    v58 = *MEMORY[0x1E695EFD0];
    v59 = v39;
    v60 = *(MEMORY[0x1E695EFD0] + 32);
    [v2 setContentTransform:&v58];
    [v2 setBackgroundStyle:{objc_msgSend(*(a1 + 40), "itemBackgroundStyle")}];
    v40 = 0.0;
  }

  [v2 setMinimizationPercent:v40];
  [v2 frameForShadowView];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = [v2 shadowView];
  [v55 ss_setUntransformedFrame:{v48, v50, v52, v54}];

  v56 = *(a1 + 56);
  [v2 ss_untransformedFrame];
  (*(v56 + 16))(v57, v56, *(a1 + 120));
  v58 = v57[0];
  v59 = v57[1];
  v60 = v57[2];
  [v2 setTransform:&v58];
  [v2 setBackgroundCornerRadius:*(a1 + 112)];
  [*(a1 + 40) horizontalSwipeOffsetForItemAtIndex:*(a1 + 96) selectedItemIndex:*(a1 + 104)];
  [v2 setHorizontalSwipeOffset:?];
}

- (double)pageOffsetForItemAtIndex:(int64_t)a3 selectedItemIndex:(int64_t)a4
{
  v7 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  result = 0.0;
  if ((v7 & 1) == 0)
  {
    v9 = [(UIView *)self _sf_usesLeftToRightLayout];
    v10 = __OFSUB__(a3, a4);
    v11 = a3 - a4;
    v12 = v11 < 0 != v10;
    if ((v11 < 0) ^ v10 | (v11 == 0))
    {
      v13 = 1;
    }

    else
    {
      v13 = v9;
    }

    v14 = -1.0;
    v15 = 1.0;
    if (!v13)
    {
      v15 = -1.0;
    }

    if (v12 && v9)
    {
      v16 = -1.0;
    }

    else
    {
      v16 = v15;
    }

    selectedItemState = self->_selectedItemState;
    if (selectedItemState)
    {
      if (selectedItemState == 1)
      {
        cachedMinimizedLayout = self->_cachedMinimizedLayout;
        if (!cachedMinimizedLayout)
        {
          v19 = &OBJC_IVAR___SFCapsuleCollectionView__minimizedLayout;
          goto LABEL_22;
        }
      }

      else
      {
        v14 = 0.0;
        if (selectedItemState != 2)
        {
          return fabs(v11) * v16 * v14;
        }

        cachedMinimizedLayout = self->_cachedFocusedLayout;
        if (!cachedMinimizedLayout)
        {
          v19 = &OBJC_IVAR___SFCapsuleCollectionView__focusedLayout;
LABEL_22:
          cachedMinimizedLayout = *(&self->super.super.super.isa + *v19);
        }
      }
    }

    else
    {
      cachedMinimizedLayout = self->_cachedNormalLayout;
      if (!cachedMinimizedLayout)
      {
        v19 = &OBJC_IVAR___SFCapsuleCollectionView__normalLayout;
        goto LABEL_22;
      }
    }

    [(SFCachedPageLayout *)cachedMinimizedLayout pageWidth:v14];
    return fabs(v11) * v16 * v14;
  }

  return result;
}

- (double)horizontalSwipeOffsetForItemAtIndex:(int64_t)a3 selectedItemIndex:(int64_t)a4
{
  x = 0.0;
  if (![MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    return x;
  }

  if (self->_panAxis == 1)
  {
    x = self->_offsetForPan.x;
  }

  if (a3 == a4)
  {
    return x;
  }

  [(SFCapsuleCollectionView *)self capsuleFrame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(UIView *)self _sf_usesLeftToRightLayout];
  v18 = a3 <= a4 || v17;
  v19 = 1.0;
  if (!v18)
  {
    v19 = -1.0;
  }

  if (a3 < a4 && v17)
  {
    v20 = -1.0;
  }

  else
  {
    v20 = v19;
  }

  v21.origin.x = v10;
  v21.origin.y = v12;
  v21.size.width = v14;
  v21.size.height = v16;
  return x + v20 * (CGRectGetWidth(v21) + 44.0);
}

- (double)minimizedCapsuleHeightAboveKeyboard
{
  if ([(SFCapsuleCollectionView *)self _layoutStyleIsTop])
  {
    return 0.0;
  }

  keyboardHeight = self->_keyboardHeight;
  showingKeyboard = self->_showingKeyboard;
  self->_showingKeyboard = 1;
  self->_keyboardHeight = 999.0;
  minimizedLayout = self->_minimizedLayout;
  v7 = [(SFCapsuleCollectionView *)self pageForIndex:self->_selectedItemIndex];
  v8 = [(SFCapsulePageLayout *)minimizedLayout capsuleInfoForPage:v7];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(SFCapsuleCollectionView *)self bounds];
  Height = CGRectGetHeight(v18);
  v19.origin.x = v10;
  v19.origin.y = v12;
  v19.size.width = v14;
  v19.size.height = v16;
  result = fmax(Height - CGRectGetMinY(v19) - self->_keyboardHeight, 0.0);
  self->_showingKeyboard = showingKeyboard;
  self->_keyboardHeight = keyboardHeight;
  return result;
}

- (void)setLayoutStyle:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  if (self->_layoutStyle != a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained capsuleCollectionView:self willChangeToLayoutStyle:a3];
    }

    self->_layoutStyle = a3;
    [(SFCapsuleCollectionView *)self createLayouts];
    [(SFCapsuleCollectionView *)self updateSupplementaryViews];
    [(SFCapsuleCollectionView *)self _reloadDataWithoutLayout];
    [(SFCapsuleCollectionView *)self _updateVisualEffectGroupName];
    if ([(SFCapsuleCollectionView *)self _layoutStyleIsTop])
    {
      [(SFCapsuleCollectionView *)self _layOutKeyboardBackdrop];
    }

    [(SFCapsuleCollectionView *)self capsuleBackgroundCornerRadius];
    v7 = v6;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_items;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v15 + 1) + 8 * v12) capsuleView];
          [v13 setBackgroundCornerRadius:v7];
          [v13 setLayoutStyle:a3];

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    v14 = a3 == 1;
    [(_SFFluidProgressView *)self->_minimizedProgressView setAlignsToTop:v14];
    [(SFLockdownStatusBar *)self->_lockdownStatusBar setShouldAnimateNavigationBarItemChanges:v14];
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained capsuleCollectionViewLayoutStyleDidChange:self];
    }
  }
}

- (void)createLayouts
{
  v3 = [(SFCapsuleCollectionView *)self createNormalPageLayout];
  normalLayout = self->_normalLayout;
  self->_normalLayout = v3;

  v5 = [(SFCapsuleCollectionView *)self createMinimizedPageLayout];
  minimizedLayout = self->_minimizedLayout;
  self->_minimizedLayout = v5;

  v7 = [(SFCapsuleCollectionView *)self createFocusedLayout];
  focusedLayout = self->_focusedLayout;
  self->_focusedLayout = v7;

  v9 = [[_TtC12MobileSafari18SFCachedPageLayout alloc] initWithContainer:self baseLayout:self->_normalLayout];
  cachedNormalLayout = self->_cachedNormalLayout;
  self->_cachedNormalLayout = v9;

  v11 = [[_TtC12MobileSafari18SFCachedPageLayout alloc] initWithContainer:self baseLayout:self->_minimizedLayout];
  cachedMinimizedLayout = self->_cachedMinimizedLayout;
  self->_cachedMinimizedLayout = v11;

  v13 = self->_focusedLayout;
  v14 = self->_normalLayout;
  if (v13 == v14)
  {
    v15 = self->_cachedNormalLayout;
  }

  else
  {
    v15 = [[_TtC12MobileSafari18SFCachedPageLayout alloc] initWithContainer:self baseLayout:self->_focusedLayout];
  }

  v16 = v15;
  objc_storeStrong(&self->_cachedFocusedLayout, v15);
  if (v13 != v14)
  {
  }
}

- (void)setMinimizationStyle:(int64_t)a3
{
  if (self->_minimizationStyle != a3)
  {
    self->_minimizationStyle = a3;
    v5 = [(SFCapsuleCollectionView *)self createMinimizedPageLayout];
    minimizedLayout = self->_minimizedLayout;
    self->_minimizedLayout = v5;

    v7 = [[_TtC12MobileSafari18SFCachedPageLayout alloc] initWithContainer:self baseLayout:self->_minimizedLayout];
    cachedMinimizedLayout = self->_cachedMinimizedLayout;
    self->_cachedMinimizedLayout = v7;
  }
}

- (void)clearCachedLayoutValues
{
  [(SFCachedPageLayout *)self->_cachedNormalLayout clearCachedValues];
  [(SFCachedPageLayout *)self->_cachedMinimizedLayout clearCachedValues];
  cachedFocusedLayout = self->_cachedFocusedLayout;

  [(SFCachedPageLayout *)cachedFocusedLayout clearCachedValues];
}

- (void)applyGeometryToPageLayout:(id)a3
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    top = self->_bottomCapsulePadding.top;
    left = self->_bottomCapsulePadding.left;
    bottom = self->_bottomCapsulePadding.bottom;
    right = self->_bottomCapsulePadding.right;
    v8 = v9;
    [v8 setCapsulePadding:{top, left, bottom, right}];
    [v8 setInterCapsuleSpacing:self->_interCapsuleSpacing];
  }
}

- (id)infoForSupplementaryWithIdentifier:(id)a3 onPage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SFCapsuleCollectionView *)self infoForCapsuleOnPage:v7];
  v9 = [v8 parentIdentifier];

  LOBYTE(v8) = [v9 isEqualToString:v6];
  v10 = [(NSCountedSet *)self->_supplementaryHiddenExemptionCount containsObject:v6];
  capsuleHiddenExemptionCount = self->_capsuleHiddenExemptionCount;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__SFCapsuleCollectionView_infoForSupplementaryWithIdentifier_onPage___block_invoke;
  v16[3] = &unk_1E721B908;
  LODWORD(v8) = (capsuleHiddenExemptionCount > 0) & v8;
  v17 = v6;
  v18 = v7;
  v12 = v7;
  v13 = v6;
  v14 = [(SFCapsuleCollectionView *)self infoWithEffectiveLayoutExemptFromHidden:v10 | v8 inBlock:v16];

  return v14;
}

- (id)infoForCapsuleOnPage:(id)a3
{
  v4 = a3;
  if ([v4 isSelected])
  {
    v5 = self->_capsuleHiddenExemptionCount > 0;
  }

  else
  {
    v5 = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__SFCapsuleCollectionView_infoForCapsuleOnPage___block_invoke;
  v9[3] = &unk_1E721B930;
  v10 = v4;
  v6 = v4;
  v7 = [(SFCapsuleCollectionView *)self infoWithEffectiveLayoutExemptFromHidden:v5 inBlock:v9];

  return v7;
}

- (id)infoWithEffectiveLayoutExemptFromHidden:(BOOL)a3 inBlock:(id)a4
{
  v6 = a4;
  cachedNormalLayout = self->_cachedNormalLayout;
  if (!cachedNormalLayout)
  {
    cachedNormalLayout = self->_normalLayout;
  }

  v8 = cachedNormalLayout;
  cachedMinimizedLayout = self->_cachedMinimizedLayout;
  if (!cachedMinimizedLayout)
  {
    cachedMinimizedLayout = self->_minimizedLayout;
  }

  v10 = cachedMinimizedLayout;
  cachedFocusedLayout = self->_cachedFocusedLayout;
  if (!cachedFocusedLayout)
  {
    cachedFocusedLayout = self->_focusedLayout;
  }

  v12 = cachedFocusedLayout;
  [(SFCapsuleCollectionView *)self _selectedItemMinimizationPercent];
  v14 = v13;
  if (self->_itemsAreHidden && !a3)
  {
    v6[2](v6, self->_hiddenLayout);
    v15 = LABEL_15:;
    goto LABEL_16;
  }

  if (self->_selectedItemState == 2)
  {
    v6[2](v6, v12);
    goto LABEL_15;
  }

  if (v13 == 1.0 || self->_forceHidden)
  {
    v6[2](v6, v10);
    goto LABEL_15;
  }

  v17 = v6[2](v6, v8);
  v18 = v17;
  if (v14 == 0.0)
  {
    v15 = v17;
  }

  else
  {
    v19 = v6[2](v6, v10);
    v15 = objc_alloc_init(_TtC12MobileSafari23SFCapsulePageLayoutInfo);
    [v18 frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    [v19 frame];
    v32 = SFInterpolateRect(v21, v23, v25, v27, v28, v29, v30, v31, v14);
    [(SFCapsulePageLayoutInfo *)v15 setFrame:_SFRoundRectToPixels(v32)];
    if ([v18 canRepresentCornersAsRadius] && (objc_msgSend(v19, "canRepresentCornersAsRadius") & 1) != 0)
    {
      [v18 cornerRadius];
      v34 = v33;
      [v19 cornerRadius];
      [(SFCapsulePageLayoutInfo *)v15 setCornerRadius:_SFInterpolate(v34, v35, v14)];
    }

    else
    {
      if (v18)
      {
        [v18 cornerRadii];
        v36 = *&v138;
      }

      else
      {
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v36 = 0.0;
      }

      if (v19)
      {
        [v19 cornerRadii];
        v37 = *&v134;
      }

      else
      {
        v134 = 0u;
        v133 = 0u;
        v132 = 0u;
        v131 = 0u;
        v37 = 0.0;
      }

      v65 = _SFInterpolate(v36, v37, v14);
      if (v18)
      {
        [v18 cornerRadii];
        v38 = *(&v130 + 1);
      }

      else
      {
        v130 = 0u;
        v129 = 0u;
        v127 = 0u;
        v128 = 0u;
        v38 = 0.0;
      }

      if (v19)
      {
        [v19 cornerRadii];
        v39 = *(&v126 + 1);
      }

      else
      {
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v39 = 0.0;
      }

      v40 = _SFInterpolate(v38, v39, v14);
      if (v18)
      {
        [v18 cornerRadii];
        v41 = *&v119;
      }

      else
      {
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v41 = 0.0;
      }

      if (v19)
      {
        [v19 cornerRadii];
        v42 = *&v115;
      }

      else
      {
        v117 = 0u;
        v118 = 0u;
        v115 = 0u;
        v116 = 0u;
        v42 = 0.0;
      }

      v43 = _SFInterpolate(v41, v42, v14);
      if (v18)
      {
        [v18 cornerRadii];
        v44 = *(&v111 + 1);
      }

      else
      {
        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v44 = 0.0;
      }

      if (v19)
      {
        [v19 cornerRadii];
        v45 = *(&v107 + 1);
      }

      else
      {
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v45 = 0.0;
      }

      v46 = _SFInterpolate(v44, v45, v14);
      if (v18)
      {
        [v18 cornerRadii];
        v47 = *&v105;
      }

      else
      {
        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        v47 = 0.0;
      }

      if (v19)
      {
        [v19 cornerRadii];
        v48 = *&v101;
      }

      else
      {
        v101 = 0u;
        v102 = 0u;
        v99 = 0u;
        v100 = 0u;
        v48 = 0.0;
      }

      v49 = _SFInterpolate(v47, v48, v14);
      if (v18)
      {
        [v18 cornerRadii];
        v50 = *(&v97 + 1);
      }

      else
      {
        v97 = 0u;
        v98 = 0u;
        v95 = 0u;
        v96 = 0u;
        v50 = 0.0;
      }

      if (v19)
      {
        [v19 cornerRadii];
        v51 = *(&v93 + 1);
      }

      else
      {
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v51 = 0.0;
      }

      v52 = _SFInterpolate(v50, v51, v14);
      if (v18)
      {
        [v18 cornerRadii];
        v53 = *&v88;
      }

      else
      {
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v53 = 0.0;
      }

      if (v19)
      {
        [v19 cornerRadii];
        v54 = *&v84;
      }

      else
      {
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v54 = 0.0;
      }

      v55 = _SFInterpolate(v53, v54, v14);
      if (v18)
      {
        [v18 cornerRadii];
        v56 = *(&v80 + 1);
      }

      else
      {
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v56 = 0.0;
      }

      if (v19)
      {
        [v19 cornerRadii];
        v57 = *(&v76 + 1);
      }

      else
      {
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v57 = 0.0;
      }

      *&v70 = v43;
      *(&v70 + 1) = v46;
      *&v71 = v55;
      *(&v71 + 1) = _SFInterpolate(v56, v57, v14);
      *&v72 = v49;
      *(&v72 + 1) = v52;
      v73 = v65;
      v74 = v40;
      [(SFCapsulePageLayoutInfo *)v15 setCornerRadii:&v70];
    }

    [v18 alpha];
    v59 = v58;
    [v19 alpha];
    [(SFCapsulePageLayoutInfo *)v15 setAlpha:_SFInterpolate(v59, v60, v14)];
    v61 = [v18 parentIdentifier];
    [(SFCapsulePageLayoutInfo *)v15 setParentIdentifier:v61];

    if (self->_selectedItemState == 1)
    {
      v62 = v19;
    }

    else
    {
      v62 = v18;
    }

    -[SFCapsulePageLayoutInfo setIsHidden:](v15, "setIsHidden:", [v62 isHidden]);
    v63 = 0uLL;
    v71 = 0u;
    v72 = 0u;
    v70 = 0u;
    if (v18)
    {
      [v18 transform];
      v63 = 0uLL;
    }

    v68 = v63;
    v69 = v63;
    v67 = v63;
    if (v19)
    {
      [v19 transform];
      v64 = *&v67;
    }

    else
    {
      v64 = 0.0;
    }

    v66[0] = _SFInterpolate(*&v70, v64, v14);
    v66[1] = _SFInterpolate(*(&v70 + 1), *(&v67 + 1), v14);
    v66[2] = _SFInterpolate(*&v71, *&v68, v14);
    v66[3] = _SFInterpolate(*(&v71 + 1), *(&v68 + 1), v14);
    v66[4] = _SFInterpolate(*&v72, *&v69, v14);
    v66[5] = _SFInterpolate(*(&v72 + 1), *(&v69 + 1), v14);
    [(SFCapsulePageLayoutInfo *)v15 setTransform:v66];
  }

LABEL_16:

  return v15;
}

- (double)defaultCapsuleHeight
{
  layoutStyle = self->_layoutStyle;
  if (layoutStyle != 3)
  {
    if (layoutStyle == 2)
    {
      v3 = &SFTopCapsuleHeight;
      return *v3;
    }

    if (layoutStyle != 1)
    {
      return result;
    }
  }

  v3 = &SFCapsuleWithToolbarHeight;
  return *v3;
}

- (id)pageForIndex:(unint64_t)a3
{
  if ([(NSArray *)self->_items count]<= a3)
  {
    v7 = objc_alloc_init(SFCapsulePageAdapter);
  }

  else
  {
    v5 = [SFCapsulePageAdapter alloc];
    v6 = [(NSArray *)self->_items objectAtIndexedSubscript:a3];
    v7 = [(SFCapsulePageAdapter *)v5 initWithItem:v6 atIndex:a3 selectedItemIndex:self->_selectedItemIndex];

    if (self->_selectedItemIndex == a3)
    {
      [(SFCapsulePageAdapter *)v7 setLockdownStatusBar:self->_lockdownStatusBar];
    }
  }

  return v7;
}

- (CGRect)minimizedCapsuleFrame
{
  cachedMinimizedLayout = self->_cachedMinimizedLayout;
  if (!cachedMinimizedLayout)
  {
    cachedMinimizedLayout = self->_minimizedLayout;
  }

  v3 = [(SFCapsuleCollectionView *)self pageForIndex:self->_selectedItemIndex];
  v4 = [cachedMinimizedLayout capsuleInfoForPage:v3];
  [v4 frame];
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

- (UIEdgeInsets)obscuredInsetsForState:(int64_t)a3
{
  [(SFCapsuleCollectionView *)self obscuredInsetsForState:a3 ignoringKeyboard:0];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)obscuredInsetsForState:(int64_t)a3 ignoringKeyboard:(BOOL)a4
{
  if (a4)
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x4010000000;
    v52 = "";
    v53 = 0u;
    v54 = 0u;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __67__SFCapsuleCollectionView_obscuredInsetsForState_ignoringKeyboard___block_invoke;
    v48[3] = &unk_1E721B958;
    v48[4] = self;
    v48[5] = &v49;
    v48[6] = a3;
    [(SFCapsuleCollectionView *)self performIgnoringKeyboard:v48];
    v6 = v50[4];
    v5 = v50[5];
    v7 = v50[6];
    v8 = v50[7];
    _Block_object_dispose(&v49, 8);
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    cachedMinimizedLayout = self->_cachedMinimizedLayout;
    if (!cachedMinimizedLayout)
    {
      v10 = &OBJC_IVAR___SFCapsuleCollectionView__minimizedLayout;
LABEL_8:
      cachedMinimizedLayout = *(&self->super.super.super.isa + *v10);
    }
  }

  else
  {
    cachedMinimizedLayout = self->_cachedNormalLayout;
    if (!cachedMinimizedLayout)
    {
      v10 = &OBJC_IVAR___SFCapsuleCollectionView__normalLayout;
      goto LABEL_8;
    }
  }

  v11 = MEMORY[0x1E69DDCE0];
  selectedItemIndex = self->_selectedItemIndex;
  v13 = cachedMinimizedLayout;
  v14 = [(SFCapsuleCollectionView *)self pageForIndex:selectedItemIndex];
  v15 = [(SFCachedPageLayout *)v13 topBackdropInfoForPage:v14];
  [v15 frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = [(SFCachedPageLayout *)v13 bottomBackdropInfoForPage:v14];
  [v24 frame];
  v46 = v26;
  v47 = v25;
  v44 = v28;
  v45 = v27;

  [(SFCapsuleCollectionView *)self bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v55.origin.x = v30;
  v55.origin.y = v32;
  v55.size.width = v34;
  v55.size.height = v36;
  v61.origin.x = v17;
  v61.origin.y = v19;
  v61.size.width = v21;
  v61.size.height = v23;
  if (CGRectIntersectsRect(v55, v61))
  {
    v56.origin.x = v17;
    v56.origin.y = v19;
    v56.size.width = v21;
    v56.size.height = v23;
    MaxY = CGRectGetMaxY(v56);
  }

  else
  {
    MaxY = *v11;
  }

  v43 = MaxY;
  v57.origin.x = v30;
  v57.origin.y = v32;
  v57.size.width = v34;
  v57.size.height = v36;
  v62.origin.x = v47;
  v62.origin.y = v46;
  v62.size.width = v45;
  v62.size.height = v44;
  if (CGRectIntersectsRect(v57, v62))
  {
    v58.origin.x = v30;
    v58.origin.y = v32;
    v58.size.width = v34;
    v58.size.height = v36;
    Height = CGRectGetHeight(v58);
    v59.origin.x = v47;
    v59.origin.y = v46;
    v59.size.width = v45;
    v59.size.height = v44;
    v7 = Height - CGRectGetMinY(v59);
  }

  else
  {
    v7 = v11[2];
  }

  v5 = v11[1];
  v8 = v11[3];

  v6 = v43;
LABEL_16:
  v39 = v6;
  v40 = v5;
  v41 = v7;
  v42 = v8;
  result.right = v42;
  result.bottom = v41;
  result.left = v40;
  result.top = v39;
  return result;
}

uint64_t __67__SFCapsuleCollectionView_obscuredInsetsForState_ignoringKeyboard___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) obscuredInsetsForState:*(a1 + 48) ignoringKeyboard:0];
  v3 = *(*(a1 + 40) + 8);
  v3[4] = v4;
  v3[5] = v5;
  v3[6] = v6;
  v3[7] = v7;
  return result;
}

- (CGRect)selectedCapsuleFrame
{
  if ([(SFCapsuleCollectionView *)self selectedItemIsMinimized])
  {
    [(SFCapsuleCollectionView *)self minimizedCapsuleFrame];
  }

  else
  {
    [(SFCapsuleCollectionView *)self capsuleFrame];
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)_selectedCapsuleFrame
{
  selectedItemIndex = self->_selectedItemIndex;
  if (selectedItemIndex >= [(NSArray *)self->_items count])
  {
    v16 = *MEMORY[0x1E695F058];
    v18 = *(MEMORY[0x1E695F058] + 8);
    v20 = *(MEMORY[0x1E695F058] + 16);
    v22 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    v4 = [(NSArray *)self->_items objectAtIndexedSubscript:self->_selectedItemIndex];
    v5 = [v4 capsuleView];

    [v5 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [v5 superview];
    [(SFCapsuleCollectionView *)self convertRect:v14 fromView:v7, v9, v11, v13];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
  }

  v23 = v16;
  v24 = v18;
  v25 = v20;
  v26 = v22;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (CGRect)_bottomBackdropFrame
{
  v3 = [(SFCapsuleCollectionView *)self pageForIndex:self->_selectedItemIndex];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __47__SFCapsuleCollectionView__bottomBackdropFrame__block_invoke;
  v18[3] = &unk_1E721B930;
  v19 = v3;
  v4 = v3;
  v5 = [(SFCapsuleCollectionView *)self infoWithEffectiveLayoutExemptFromHidden:0 inBlock:v18];
  [v5 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (id)viewForItemAtIndex:(int64_t)a3
{
  v3 = [(NSArray *)self->_items objectAtIndexedSubscript:a3];
  v4 = [v3 capsuleView];

  return v4;
}

- (id)contentViewForItemAtIndex:(int64_t)a3
{
  v3 = [(NSArray *)self->_items objectAtIndexedSubscript:a3];
  v4 = [v3 capsuleView];
  v5 = [v4 contentView];

  return v5;
}

- (id)detachViewForItemAtIndex:(int64_t)a3 forInternalBorrow:(BOOL)a4
{
  if (a3 < 0 || self->_numberOfItems <= a3)
  {
    v9 = 0;
  }

  else
  {
    v6 = a4;
    v7 = [(NSArray *)self->_items objectAtIndexedSubscript:a3];
    [v7 setCapsuleIsDetached:1];
    [(SFCapsuleCollectionView *)self _updateRangeOfLoadedViews];
    v8 = [v7 capsuleView];
    v9 = v8;
    if (v6)
    {
      v10 = v8;
    }

    else
    {
      v11 = MEMORY[0x1E69DD250];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __70__SFCapsuleCollectionView_detachViewForItemAtIndex_forInternalBorrow___block_invoke;
      v16[3] = &unk_1E721B9A8;
      v12 = v8;
      v17 = v12;
      v18 = self;
      v19 = a3;
      [v11 safari_performWithoutRetargetingAnimations:v16];
      if (self->_itemsAreHidden)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __70__SFCapsuleCollectionView_detachViewForItemAtIndex_forInternalBorrow___block_invoke_2;
        v15[3] = &unk_1E721B360;
        v15[4] = self;
        [MEMORY[0x1E69DD250] safari_performWithoutRetargetingAnimations:v15];
      }

      v13 = v12;
    }
  }

  return v9;
}

void __70__SFCapsuleCollectionView_detachViewForItemAtIndex_forInternalBorrow___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) shadowView];
  if (v2)
  {
    [*(a1 + 32) insertSubview:v2 atIndex:0];
    v3 = *(MEMORY[0x1E695EFD0] + 16);
    v9[0] = *MEMORY[0x1E695EFD0];
    v9[1] = v3;
    v9[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v2 setTransform:v9];
    [*(a1 + 32) frameForShadowView];
    [v2 setFrame:?];
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 992));
    v5 = 1.0;
    if (objc_opt_respondsToSelector())
    {
      v5 = ([WeakRetained capsuleCollectionView:*(a1 + 40) shouldHideShadowForItemAtIndex:*(a1 + 48)] ^ 1);
    }

    [v2 setAlpha:v5];
  }

  v6 = [*(a1 + 32) layer];
  [v6 removeAllAnimations];

  [*(a1 + 32) _setSafeAreaInsetsFrozen:1];
  v7 = [*(a1 + 32) layer];
  [v7 setAllowsGroupOpacity:0];

  [*(a1 + 32) setHidden:1];
  [*(a1 + 32) setAlpha:1.0];
  v8 = [*(a1 + 32) contentView];
  [v8 setAlpha:1.0];
}

void __70__SFCapsuleCollectionView_detachViewForItemAtIndex_forInternalBorrow___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[144];
  v4 = [v2 _indexesOfVisibleItemsIncludingAction:1];
  [v2 _layOutItems:v3 atIndexes:v4 selectedItemIndex:*(*(a1 + 32) + 1056)];
}

- (void)reattachView:(id)a3
{
  v4 = a3;
  items = self->_items;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __40__SFCapsuleCollectionView_reattachView___block_invoke;
  v19[3] = &unk_1E721B9D0;
  v6 = v4;
  v20 = v6;
  v7 = [(NSArray *)items indexOfObjectPassingTest:v19];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 removeFromSuperview];
  }

  else
  {
    v8 = v7;
    v9 = [(NSArray *)self->_items objectAtIndexedSubscript:v7];
    v10 = MEMORY[0x1E69DD250];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __40__SFCapsuleCollectionView_reattachView___block_invoke_2;
    v15 = &unk_1E721B9A8;
    v11 = v9;
    v16 = v11;
    v17 = self;
    v18 = v8;
    [v10 performWithoutAnimation:&v12];
    [(SFCapsuleCollectionView *)self _updateRangeOfLoadedViews:v12];
    if ([(NSIndexSet *)self->_indexesOfLoadedViews containsIndex:v8])
    {
      [(SFCapsuleCollectionView *)self _updateCapsuleAlpha];
      [(SFCapsuleCollectionView *)self setNeedsLayout];
    }
  }
}

BOOL __40__SFCapsuleCollectionView_reattachView___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 capsuleView];
  v4 = v3 == *(a1 + 32);

  return v4;
}

void __40__SFCapsuleCollectionView_reattachView___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) capsuleView];
  [v2 _setSafeAreaInsetsFrozen:0];
  v3 = [v2 layer];
  [v3 setAllowsGroupOpacity:1];

  [v2 setHidden:0];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:1];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v4;
  v8[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v2 setTransform:v8];
  [*(a1 + 40) _updateSuperviewForCapsule:v2];
  [*(a1 + 32) setCapsuleIsDetached:0];
  v5 = *(a1 + 40);
  v6 = v5[144];
  v7 = [MEMORY[0x1E696AC90] indexSetWithIndex:*(a1 + 48)];
  [v5 _layOutItems:v6 atIndexes:v7 selectedItemIndex:*(*(a1 + 40) + 1056)];
}

- (void)reattachControls
{
  lockdownStatusBar = self->_lockdownStatusBar;
  if (lockdownStatusBar)
  {
    v4 = [(SFLockdownStatusBar *)lockdownStatusBar superview];
    contentView = self->_contentView;

    if (v4 != contentView)
    {
      v6 = [(SFCapsuleCollectionView *)self contentViewForCapsuleAlignment];
      [v6 addSubview:self->_lockdownStatusBar];
    }
  }

  v7 = [(_SFFluidProgressView *)self->_minimizedProgressView superview];
  v8 = self->_contentView;

  if (v7 != v8)
  {
    v9 = self->_contentView;
    minimizedProgressView = self->_minimizedProgressView;

    [(UIView *)v9 addSubview:minimizedProgressView];
  }
}

- (void)takeOwnershipOfDetachedViewForItemAtIndex:(int64_t)a3
{
  v4 = [(NSArray *)self->_items objectAtIndexedSubscript:a3];
  v6 = [v4 capsuleView];

  [v6 setHidden:0];
  v5 = [(SFCapsuleCollectionView *)self _superviewForCapsules];
  [v5 addSubview:v6];
}

- (void)setTheme:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (![(_SFBarTheme *)self->_theme isEqual:v5])
  {
    objc_storeStrong(&self->_theme, a3);
    v6 = [(_SFBarTheme *)SFCapsuleNavigationBarTheme themeWithTheme:v5];
    effectiveTheme = self->_effectiveTheme;
    self->_effectiveTheme = v6;

    [(SFCapsuleCollectionView *)self updateSupplementaryViewTheme];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = self->_items;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        v12 = 0;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = self->_effectiveTheme;
          v14 = [*(*(&v24 + 1) + 8 * v12) capsuleView];
          [v14 setTheme:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = self->_viewsForReuse;
    v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v20 + 1) + 8 * v19++) setTheme:{self->_effectiveTheme, v20}];
        }

        while (v17 != v19);
        v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v17);
    }
  }
}

- (void)setMinimizedTheme:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_minimizedTheme, a3);
    v6 = [(_SFBarTheme *)SFCapsuleNavigationBarTheme themeWithTheme:self->_minimizedTheme];
    effectiveMinimizedTheme = self->_effectiveMinimizedTheme;
    self->_effectiveMinimizedTheme = v6;

    [(SFCapsuleNavigationBarTheme *)self->_effectiveMinimizedTheme setBackgroundTheme:self->_minimizedTheme];
    [(SFCapsuleNavigationBarTheme *)self->_effectiveMinimizedTheme setHidesOverlayEffects:1];
    [(SFCapsuleCollectionView *)self _applyToolbarTheme];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = self->_items;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        v12 = 0;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = self->_effectiveMinimizedTheme;
          v14 = [*(*(&v24 + 1) + 8 * v12) capsuleView];
          [v14 setMinimizedTheme:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = self->_viewsForReuse;
    v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v20 + 1) + 8 * v19++) setMinimizedTheme:{self->_effectiveMinimizedTheme, v20}];
        }

        while (v17 != v19);
        v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v17);
    }

    [(SFCapsuleCollectionView *)self _updateMinimizedProgressViewFillColor];
  }
}

- (void)setHidingStyle:(int64_t)a3
{
  if (self->_hidingStyle == a3)
  {
    return;
  }

  self->_hidingStyle = a3;
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_7;
    }

    v4 = off_1E7219070;
  }

  else
  {
    v4 = off_1E7218B70;
  }

  v5 = [objc_alloc(*v4) initWithContainer:self baseLayout:self->_normalLayout];
  hiddenLayout = self->_hiddenLayout;
  self->_hiddenLayout = v5;

LABEL_7:
  if (self->_minimizationStyle == 1)
  {
    objc_storeStrong(&self->_minimizedLayout, self->_hiddenLayout);
    v7 = [[_TtC12MobileSafari18SFCachedPageLayout alloc] initWithContainer:self baseLayout:self->_minimizedLayout];
    cachedMinimizedLayout = self->_cachedMinimizedLayout;
    self->_cachedMinimizedLayout = v7;
  }
}

- (void)addGestureObserver:(id)a3
{
  v5 = a3;
  [(NSHashTable *)self->_gestureObservers addObject:?];
  if (self->_sendProgressMessageToObservers)
  {
    v4 = 1;
  }

  else
  {
    v4 = objc_opt_respondsToSelector();
  }

  self->_sendProgressMessageToObservers = v4 & 1;
}

- (void)removeGestureObserver:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(NSHashTable *)self->_gestureObservers removeObject:v4];
  if (self->_sendProgressMessageToObservers)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_gestureObservers;
    v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        v9 = 0;
        v10 = v4;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v4 = *(*(&v12 + 1) + 8 * v9);

          if (objc_opt_respondsToSelector())
          {
            v11 = 1;
            goto LABEL_13;
          }

          ++v9;
          v10 = v4;
        }

        while (v7 != v9);
        v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v4 = 0;
    v11 = 0;
LABEL_13:
  }

  else
  {
    v11 = 0;
  }

  self->_sendProgressMessageToObservers = v11;
}

- (void)setIgnoresKeyboardHideEvents:(BOOL)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_ignoresKeyboardHideEvents != a3)
  {
    self->_ignoresKeyboardHideEvents = a3;
    if (a3)
    {
      v4 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LOWORD(v8) = 0;
        _os_log_impl(&dword_18B7AC000, v4, OS_LOG_TYPE_INFO, "Begin ignoring keyboard hide events.", &v8, 2u);
      }
    }

    else
    {
      v5 = !self->_showingKeyboard && self->_keyboardHeight != 0.0;
      v6 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = &stru_1EFF36230;
        if (v5)
        {
          v7 = @" and clear keyboard height";
        }

        v8 = 138412290;
        v9 = v7;
        _os_log_impl(&dword_18B7AC000, v6, OS_LOG_TYPE_INFO, "End ignoring keyboard hide events%@.", &v8, 0xCu);
      }

      if (v5)
      {
        self->_keyboardHeight = 0.0;
        [(SFCapsuleCollectionView *)self setNeedsLayout];
      }
    }
  }
}

- (void)_setKeyboardHeight:(double)a3
{
  v9 = *MEMORY[0x1E69E9840];
  if ((a3 != 0.0 || !self->_ignoresKeyboardHideEvents) && self->_keyboardHeight != a3)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v8 = a3;
      _os_log_impl(&dword_18B7AC000, v5, OS_LOG_TYPE_DEFAULT, "Set _keyboardHeight = %f", buf, 0xCu);
    }

    self->_keyboardHeight = a3;
    if (self->_numberOfItems && [(SFCapsuleCollectionView *)self _shouldDodgeKeyboard])
    {
      if (self->_backdropHeightAnimationCount)
      {
        v6[0] = MEMORY[0x1E69E9820];
        v6[1] = 3221225472;
        v6[2] = __46__SFCapsuleCollectionView__setKeyboardHeight___block_invoke;
        v6[3] = &unk_1E721B360;
        v6[4] = self;
        [MEMORY[0x1E69DD250] _animateByRetargetingAnimations:v6 completion:0];
      }

      [(SFCapsuleCollectionView *)self setNeedsLayout];
    }
  }
}

- (double)_keyboardHeightBelowCapsule
{
  v3 = [(SFCapsuleCollectionView *)self _shouldDodgeKeyboard];
  keyboardHeight = self->_keyboardHeight;
  if (!v3)
  {
    return self->_keyboardHeight;
  }

  [(SFCapsuleCollectionView *)self selectedCapsuleFrame];
  return fmax(keyboardHeight - CGRectGetHeight(v6), 0.0);
}

- (void)_keyboardWillChangeFrame:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 name];
    if (self->_showingKeyboard)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = v8;
    *buf = 138543618;
    v43 = v7;
    v44 = 2114;
    v45 = v9;
    _os_log_impl(&dword_18B7AC000, v6, OS_LOG_TYPE_DEFAULT, "Recieved %{public}@, with _showingKeyboard = %{public}@", buf, 0x16u);
  }

  v10 = [v4 userInfo];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69DDFA0]];
  [v11 CGRectValue];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [(SFCapsuleCollectionView *)self convertRect:0 fromView:v13, v15, v17, v19];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  keyboardHeight = self->_keyboardHeight;
  [(SFCapsuleCollectionView *)self bounds];
  v49.origin.x = v29;
  v49.origin.y = v30;
  v49.size.width = v31;
  v49.size.height = v32;
  v47.origin.x = v21;
  v47.origin.y = v23;
  v47.size.width = v25;
  v47.size.height = v27;
  v48 = CGRectIntersection(v47, v49);
  Height = CGRectGetHeight(v48);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if ((objc_opt_respondsToSelector() & 1) != 0 && [WeakRetained capsuleCollectionViewKeyboardHeightIncludesCapsuleHeight:self])
  {
    [(SFCapsuleCollectionView *)self minimizedCapsuleHeightAboveKeyboard];
    Height = fmax(Height - v35, 0.0);
  }

  [(SFCapsuleCollectionView *)self _setKeyboardHeight:Height];
  v36 = [v10 objectForKey:*MEMORY[0x1E69DDF40]];
  [v36 doubleValue];
  v38 = v37;

  if (self->_showingKeyboard && keyboardHeight != self->_keyboardHeight && [(SFCapsuleCollectionView *)self _shouldAnimateKeyboardHeightChanges]&& v38 != 0.0)
  {
    v39 = [v10 objectForKey:*MEMORY[0x1E69DDF38]];
    v40 = [v39 integerValue] << 16;

    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __52__SFCapsuleCollectionView__keyboardWillChangeFrame___block_invoke;
    v41[3] = &unk_1E721B360;
    v41[4] = self;
    [MEMORY[0x1E69DD250] sf_animate:1 withDuration:v40 delay:v41 options:0 animations:v38 completion:0.0];
  }
}

- (void)_keyboardWillShow:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 name];
    if (self->_showingKeyboard)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = v8;
    *buf = 138543618;
    v18 = v7;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&dword_18B7AC000, v6, OS_LOG_TYPE_DEFAULT, "Recieved %{public}@, with _showingKeyboard = %{public}@", buf, 0x16u);
  }

  if (!self->_showingKeyboard)
  {
    self->_selectedItemStateBeforeShowingKeyboard = self->_selectedItemState;
    self->_showingKeyboard = 1;
    [(SFCapsuleCollectionView *)self updateSupplementariesAlpha];
    [(SFCapsuleCollectionView *)self setNeedsLayout];
    v10 = [v4 userInfo];
    v11 = [v10 objectForKey:*MEMORY[0x1E69DDF40]];
    [v11 doubleValue];
    v13 = v12;

    if (self->_keyboardHeight != 0.0 && [(SFCapsuleCollectionView *)self _shouldAnimateKeyboardHeightChanges]&& v13 != 0.0)
    {
      [(SFCapsuleCollectionView *)self _removeAllRetargetableAnimations:1];
      v14 = [v10 objectForKey:*MEMORY[0x1E69DDF38]];
      v15 = [v14 integerValue] << 16;

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __45__SFCapsuleCollectionView__keyboardWillShow___block_invoke;
      v16[3] = &unk_1E721B360;
      v16[4] = self;
      [MEMORY[0x1E69DD250] sf_animate:1 withDuration:v15 delay:v16 options:0 animations:v13 completion:0.0];
    }
  }
}

- (void)_keyboardWillHide:(id)a3
{
  [(SFCapsuleCollectionView *)self _setKeyboardHeight:a3, 0.0];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (!self->_suppressesSelectedItemUnfocus && self->_selectedItemState == 2)
  {
    v5 = WeakRetained;
    if (objc_opt_respondsToSelector())
    {
      [v5 capsuleCollectionViewWillHideKeyboard:self];
    }
  }

  self->_suppressesSelectedItemUnfocus = 0;

  MEMORY[0x1EEE66BE0]();
}

uint64_t __50__SFCapsuleCollectionView__layOutKeyboardBackdrop__block_invoke(uint64_t a1)
{
  Height = CGRectGetHeight(*(a1 + 40));
  Width = CGRectGetWidth(*(a1 + 40));
  v4 = *(*(a1 + 32) + 544);
  if (v4)
  {
    [v4 frame];
    v6 = v5;
    Height = v7;
    v9 = v8;
    v11 = *(a1 + 72) + v10;
  }

  else
  {
    v9 = Width;
    v11 = *(a1 + 72);
    v6 = 0.0;
  }

  v12 = [objc_alloc(MEMORY[0x1E69DCB90]) initWithFrame:objc_msgSend(*(a1 + 32) style:{"_keyboardBackdropStyle"), v6, Height, v9, v11}];
  v13 = *(a1 + 32);
  v14 = *(v13 + 528);
  *(v13 + 528) = v12;

  v15 = *(a1 + 32);
  v16 = v15[52];
  v17 = v15[66];
  if (v15[68])
  {
    [v16 insertSubview:v17 aboveSubview:?];
  }

  else
  {
    [v16 insertSubview:v17 atIndex:?];
  }

  v18 = *(*(a1 + 32) + 528);

  return [v18 setAlpha:0.0];
}

- (int64_t)_keyboardBackdropStyle
{
  if ([(_SFBarTheme *)self->_effectiveTheme overrideUserInterfaceStyle]== 2)
  {
    [MEMORY[0x1E69DCB48] darkConfig];
  }

  else
  {
    [MEMORY[0x1E69DCB48] defaultConfig];
  }
  v2 = ;
  v3 = [v2 backdropStyle];

  return v3;
}

- (void)_updateKeyboardBackdropViewStyle
{
  keyboardBackdropView = self->_keyboardBackdropView;
  v3 = [(SFCapsuleCollectionView *)self _keyboardBackdropStyle];

  [(UIKBVisualEffectView *)keyboardBackdropView transitionToStyle:v3];
}

- (void)startPageViewControllerDidScroll:(id)a3
{
  if (self->_inputAccessoryView)
  {
    [(SFCapsuleCollectionView *)self setNeedsLayout];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_itemsAreHidden)
  {
    goto LABEL_2;
  }

  if (self->_tapGestureRecognizer != v4)
  {
    if (self->_panGesture == v4)
    {
      if (self->_selectedItemState)
      {
LABEL_2:
        v6 = 0;
        goto LABEL_23;
      }

      if (!self->_topAction && !self->_trailingAction)
      {
        v6 = self->_numberOfItems > 1;
        goto LABEL_23;
      }
    }

    else if (self->_dismissPanGestureRecognizer == v4)
    {
      if (![(SFCapsuleCollectionView *)self _layoutStyleIsTop]&& self->_selectedItemState == 2)
      {
        [(SFCapsuleCollectionView *)self _inputAccessoryViewFrame];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;
        [(SFCapsuleCollectionView *)self bounds];
        v25.origin.x = v19;
        v25.origin.y = v20;
        v25.size.width = v21;
        v25.size.height = v22;
        v24.origin.x = v12;
        v24.origin.y = v14;
        v24.size.width = v16;
        v24.size.height = v18;
        v6 = CGRectIntersectsRect(v24, v25);
        goto LABEL_23;
      }

      goto LABEL_2;
    }

    v6 = 1;
    goto LABEL_23;
  }

  [(UIPanGestureRecognizer *)v4 locationInView:self];
  v7 = [(SFCapsuleCollectionView *)self hitTest:0 withEvent:?];
  v8 = v7;
  v6 = 1;
  if (v7 && v7 != self)
  {
    while (1)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        break;
      }

      v10 = [(SFCapsuleCollectionView *)v8 superview];

      if (v10)
      {
        v8 = v10;
        if (v10 != self)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    v10 = v8;
LABEL_21:
    v6 = isKindOfClass ^ 1;
    v8 = v10;
  }

LABEL_23:
  return v6 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_tapGestureRecognizer == v6)
  {
    if (![(SFCapsuleCollectionView *)self selectedItemIsMinimized])
    {
      [v7 locationInView:self];
      v21 = v20;
      v23 = v22;
      if ([MEMORY[0x1E69C8880] isSolariumEnabled])
      {
        [(SFCapsuleCollectionView *)self capsuleFrame];
        v24.x = v21;
        v24.y = v23;
        LOBYTE(self) = CGRectContainsPoint(v29, v24);
        goto LABEL_6;
      }

      [(SFCapsuleCollectionView *)self _detachedCapsuleSelectionRect];
      v25.x = v21;
      v25.y = v23;
      if (!CGRectContainsPoint(v30, v25))
      {
        [(SFCapsuleCollectionView *)self _passthroughRect];
        v26.x = v21;
        v26.y = v23;
        LODWORD(self) = !CGRectContainsPoint(v31, v26);
        goto LABEL_6;
      }
    }

    goto LABEL_5;
  }

  if (self->_panGesture != v6)
  {
LABEL_5:
    LOBYTE(self) = 1;
    goto LABEL_6;
  }

  [(SFCapsuleCollectionView *)self capsuleFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v7 locationInView:self];
  v17 = v16;
  v27.origin.x = v9;
  v27.origin.y = v11;
  v27.size.width = v13;
  v27.size.height = v15;
  v18 = vabdd_f64(v17, CGRectGetMidY(v27));
  v28.origin.x = v9;
  v28.origin.y = v11;
  v28.size.width = v13;
  v28.size.height = v15;
  LOBYTE(self) = v18 <= fmax(CGRectGetHeight(v28), 84.0) * 0.5;
LABEL_6:

  return self;
}

- (void)invalidateHeightForCapsuleContentView:(id)a3 animated:(BOOL)a4 animations:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  items = self->_items;
  indexesOfLoadedViews = self->_indexesOfLoadedViews;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __96__SFCapsuleCollectionView_invalidateHeightForCapsuleContentView_animated_animations_completion___block_invoke;
  v27[3] = &unk_1E721B9D0;
  v15 = v10;
  v28 = v15;
  v16 = [(NSArray *)items indexesOfObjectsAtIndexes:indexesOfLoadedViews options:0 passingTest:v27];
  v17 = [v16 firstIndex];

  if (v17 == 0x7FFFFFFFFFFFFFFFLL || (-[NSArray objectAtIndexedSubscript:](self->_items, "objectAtIndexedSubscript:", v17), v18 = objc_claimAutoreleasedReturnValue(), [v18 invalidateCapsuleHeight], v18, -[SFCapsuleCollectionView setNeedsLayout](self, "setNeedsLayout"), !a4))
  {
    if (v12)
    {
      v12[2](v12);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_currentTransitionCoordinator);
    if (WeakRetained)
    {
      if (v11)
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __96__SFCapsuleCollectionView_invalidateHeightForCapsuleContentView_animated_animations_completion___block_invoke_2;
        v25[3] = &unk_1E721BA20;
        v26 = v11;
        [WeakRetained addAnimations:v25];
      }

      if (v12)
      {
        [WeakRetained addCompletion:v12];
      }
    }

    else
    {
      v20 = MEMORY[0x1E69DD250];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __96__SFCapsuleCollectionView_invalidateHeightForCapsuleContentView_animated_animations_completion___block_invoke_3;
      v23[3] = &unk_1E721BA48;
      v23[4] = self;
      v24 = v11;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __96__SFCapsuleCollectionView_invalidateHeightForCapsuleContentView_animated_animations_completion___block_invoke_4;
      v21[3] = &unk_1E721BA70;
      v22 = v12;
      [v20 _animateUsingDefaultDampedSpringWithDelay:2 initialSpringVelocity:v23 options:v21 animations:0.0 completion:0.0];
    }
  }
}

BOOL __96__SFCapsuleCollectionView_invalidateHeightForCapsuleContentView_animated_animations_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 capsuleView];
  v7 = [v6 contentView];
  v8 = *(a1 + 32);

  if (v7 == v8)
  {
    *a4 = 1;
  }

  return v7 == v8;
}

uint64_t __96__SFCapsuleCollectionView_invalidateHeightForCapsuleContentView_animated_animations_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t __96__SFCapsuleCollectionView_invalidateHeightForCapsuleContentView_animated_animations_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateTrailingActionAnimated:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  v5 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v7 = v6;
    *buf = 138412290;
    v10 = v7;
    _os_log_impl(&dword_18B7AC000, v5, OS_LOG_TYPE_DEFAULT, "Update trailing action animated = %@", buf, 0xCu);
  }

  if (-[SFCapsuleCollectionView _updateTrailingAction](self, "_updateTrailingAction") && v3 && -[SFCapsuleCollectionView _canAnimateUpdates](self, "_canAnimateUpdates") && ([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__SFCapsuleCollectionView_updateTrailingActionAnimated___block_invoke;
    v8[3] = &unk_1E721B360;
    v8[4] = self;
    [MEMORY[0x1E69DD250] sf_animate:1 usingDefaultMotionWithOptions:2 animations:v8 completion:0];
  }
}

- (void)reloadItemsAtIndexes:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_18B7AC000, v5, OS_LOG_TYPE_DEFAULT, "Reload indexes = %@", buf, 0xCu);
  }

  if ([v4 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_currentTransitionCoordinator);
    items = self->_items;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__SFCapsuleCollectionView_reloadItemsAtIndexes___block_invoke;
    v9[3] = &unk_1E721BB10;
    v9[4] = self;
    v10 = WeakRetained;
    v8 = WeakRetained;
    [(NSArray *)items enumerateObjectsAtIndexes:v4 options:0 usingBlock:v9];
  }
}

void __48__SFCapsuleCollectionView_reloadItemsAtIndexes___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(*(a1 + 32) + 1144) containsIndex:a3])
  {
    [*(a1 + 32) setNeedsLayout];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__SFCapsuleCollectionView_reloadItemsAtIndexes___block_invoke_2;
    aBlock[3] = &unk_1E721BAE8;
    aBlock[4] = *(a1 + 32);
    v6 = v5;
    v13 = v6;
    v14 = a3;
    v7 = _Block_copy(aBlock);
    v8 = *(a1 + 40);
    if (v8)
    {
      [v8 addAnimations:v7];
      v9 = [v6 capsuleView];
      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 792));
      v11 = [WeakRetained publicCoordinator];
      [v9 willReloadWithCoordinator:v11];
    }

    else
    {
      v7[2](v7, 0);
    }
  }
}

uint64_t __48__SFCapsuleCollectionView_reloadItemsAtIndexes___block_invoke_2(uint64_t a1)
{
  if (*(*(a1 + 32) + 975) == 1)
  {
    return [*(a1 + 40) setCapsuleContentIsValid:0];
  }

  else
  {
    return [*(a1 + 32) _fetchContentViewForItem:*(a1 + 40) atIndex:*(a1 + 48)];
  }
}

- (void)_fetchContentViewForItem:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = [v6 capsuleView];
  v8 = [v7 contentView];
  if (v8)
  {
    v9 = [v7 reusableContentViewIdentifier];

    if (v9)
    {
      contentViewRegistrations = self->_contentViewRegistrations;
      v11 = [v7 reusableContentViewIdentifier];
      v12 = [(NSMutableDictionary *)contentViewRegistrations objectForKeyedSubscript:v11];
      v13 = [v7 contentView];
      [v12 enqueueView:v13];
    }
  }

  if (self->_numberOfItems <= a4)
  {
    v15 = [(SFCapsuleCollectionView *)self _trailingActionContentView];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v15 = [WeakRetained capsuleCollectionView:self contentViewForItemAtIndex:a4];
  }

  if (objc_opt_respondsToSelector())
  {
    [(UIView *)v15 setSizeUpdater:self];
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = [(SFCapsuleCollectionView *)self _buttonPointerStyleProviderForContentView:v15];
    [(UIView *)v15 setButtonPointerStyleProvider:v16];
  }

  v17 = objc_loadWeakRetained(&self->_currentTransitionCoordinator);
  if (v17 && ([v7 contentViewUpdateHandler], v18 = objc_claimAutoreleasedReturnValue(), v18, !v18))
  {
    v20 = [v17 publicCoordinator];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __60__SFCapsuleCollectionView__fetchContentViewForItem_atIndex___block_invoke;
    v25[3] = &unk_1E721BB38;
    objc_copyWeak(&v27, &location);
    v21 = v20;
    v26 = v21;
    [v7 setContentViewUpdateHandler:v25];

    objc_destroyWeak(&v27);
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  [v7 setContentView:v15];
  if (v15 == self->_reuseableContentView)
  {
    reusableContentViewIdentifier = self->_reusableContentViewIdentifier;
  }

  else
  {
    reusableContentViewIdentifier = 0;
  }

  [v7 setReusableContentViewIdentifier:reusableContentViewIdentifier];
  if (v19)
  {
    [v7 setContentViewUpdateHandler:0];
  }

  reuseableContentView = self->_reuseableContentView;
  self->_reuseableContentView = 0;

  v24 = self->_reusableContentViewIdentifier;
  self->_reusableContentViewIdentifier = 0;

  [(SFCapsuleCollectionView *)self _updateStateFlagsForContentViewAtIndex:a4];
  objc_destroyWeak(&location);
}

void __60__SFCapsuleCollectionView__fetchContentViewForItem_atIndex___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained layoutIfNeeded];

  v11 = [v7 contentContainer];
  [v11 addSubview:v9];

  v12 = *(a1 + 32);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__SFCapsuleCollectionView__fetchContentViewForItem_atIndex___block_invoke_2;
  v15[3] = &unk_1E721B400;
  v16 = v8;
  v17 = v7;
  v13 = v7;
  v14 = v8;
  [v12 addCompletion:v15];
}

void __60__SFCapsuleCollectionView__fetchContentViewForItem_atIndex___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) contentView];
  if (v2 == v3)
  {
  }

  else
  {
    v6 = v3;
    v4 = [*(a1 + 32) isDescendantOfView:*(a1 + 40)];

    if (v4)
    {
      v5 = *(a1 + 32);

      [v5 removeFromSuperview];
    }
  }
}

- (id)_trailingActionContentView
{
  v3 = [(SFCapsuleCollectionView *)self createOrDequeueContentViewWithIdentifier:@"SFCapsuleCollectionViewActionContentView" atIndex:self->_numberOfItems];
  v4 = v3;
  if (self->_trailingAction)
  {
    [v3 setAction:?];
  }

  return v4;
}

- (void)beginUpdates
{
  numberOfUpdates = self->_numberOfUpdates;
  self->_numberOfUpdates = numberOfUpdates + 1;
  if (numberOfUpdates <= 0)
  {
    v10 = v2;
    v11 = v3;
    v6 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_18B7AC000, v6, OS_LOG_TYPE_DEFAULT, "Begin updates", v9, 2u);
    }

    [(SFCapsuleCollectionView *)self _setSuppressingDataSourceCalls:1];
    v7 = [[SFCapsuleCollectionViewUpdate alloc] initWithCollectionView:self];
    update = self->_update;
    self->_update = v7;
  }
}

- (void)endUpdates
{
  v6 = self->_numberOfUpdates - 1;
  self->_numberOfUpdates = v6;
  if (!v6)
  {
    v103 = v5;
    v104 = v4;
    v105 = v2;
    v106 = v3;
    v8 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v102[0] = 0;
      _os_log_impl(&dword_18B7AC000, v8, OS_LOG_TYPE_DEFAULT, "End updates", v102, 2u);
    }

    v9 = self->_update;
    update = self->_update;
    self->_update = 0;

    if ([(SFCapsuleCollectionViewUpdate *)v9 isAnimated])
    {
      v11 = [(SFCapsuleCollectionView *)self _canAnimateUpdates];
    }

    else
    {
      v11 = 0;
    }

    v12 = [(SFCapsuleCollectionViewUpdate *)v9 indexesOfInsertedItems];
    v13 = [(SFCapsuleCollectionViewUpdate *)v9 indexesOfDeletedItems];
    v14 = [(SFCapsuleCollectionViewUpdate *)v9 selectedItemIndexBeforeUpdate];
    v15 = [(SFCapsuleCollectionViewUpdate *)v9 selectedItemIndexAfterUpdate];
    if (![v13 count] && (!objc_msgSend(v12, "count") ? (v16 = v15 == v14) : (v16 = 0), v16))
    {
      [(SFCapsuleCollectionView *)self _updateTrailingCapsule];
      [(SFCapsuleCollectionView *)self _setSuppressingDataSourceCalls:0];
    }

    else
    {
      v17 = [(SFCapsuleCollectionViewUpdate *)v9 itemsBeforeUpdate];
      v18 = [(SFCapsuleCollectionViewUpdate *)v9 itemsAfterUpdate];
      v49 = [(SFCapsuleCollectionViewUpdate *)v9 indexesOfVisibleItemsBeforeUpdate];
      v19 = [(SFCapsuleCollectionView *)self _indexesOfVisibleItemsIncludingAction:1];
      v100[0] = MEMORY[0x1E69E9820];
      v100[1] = 3221225472;
      v100[2] = __37__SFCapsuleCollectionView_endUpdates__block_invoke;
      v100[3] = &unk_1E721B498;
      v20 = v19;
      v101 = v20;
      v57 = [v12 indexesPassingTest:v100];
      v52 = [v17 objectAtIndexedSubscript:v14];
      v60 = v18;
      v56 = [v18 objectAtIndexedSubscript:v15];
      if (([v13 containsIndex:v14] & 1) != 0 || objc_msgSend(v17, "count") <= 1)
      {
        v21 = ([v12 containsIndex:v15] & 1) != 0 || objc_msgSend(v18, "count") < 2;
        v48 = v21;
      }

      else
      {
        v48 = 0;
      }

      v51 = v15;
      v22 = [v12 count] != 1 || objc_msgSend(v12, "firstIndex") != self->_numberOfItems - 1 || objc_msgSend(v13, "count") != 0;
      v58 = v11;
      if (v11)
      {
        if (v22 | ![(SFCapsuleCollectionView *)self _isSendingTrailingAction])
        {
          v23 = [MEMORY[0x1E695DFA0] orderedSet];
          v24 = [v17 objectsAtIndexes:v49];
          [v23 addObjectsFromArray:v24];

          v25 = [v60 objectsAtIndexes:v20];
          [v23 addObjectsFromArray:v25];

          v26 = [v23 array];
          v96[0] = MEMORY[0x1E69E9820];
          v96[1] = 3221225472;
          v96[2] = __37__SFCapsuleCollectionView_endUpdates__block_invoke_10;
          v96[3] = &unk_1E721BBB0;
          v96[4] = self;
          [v60 enumerateObjectsAtIndexes:v57 options:0 usingBlock:v96];
          v54 = MEMORY[0x1E69DD250];
          v86[0] = MEMORY[0x1E69E9820];
          v86[1] = 3221225472;
          v86[2] = __37__SFCapsuleCollectionView_endUpdates__block_invoke_11;
          v86[3] = &unk_1E721BBD8;
          v86[4] = self;
          v53 = v26;
          v87 = v53;
          v88 = v17;
          v95 = v48;
          v93 = v14;
          v94 = v51;
          v89 = v9;
          v90 = v60;
          v91 = v52;
          v92 = v57;
          [v54 performWithoutAnimation:v86];

          v55 = 0;
        }

        else
        {
          v23 = [v60 lastObject];
          [v60 objectAtIndexedSubscript:{objc_msgSend(v12, "firstIndex")}];
          v27 = v47 = v13;
          v28 = [v23 capsuleView];
          [v23 setCapsuleView:0];
          [v27 setCapsuleView:v28];
          v99[0] = MEMORY[0x1E69E9820];
          v99[1] = 3221225472;
          v99[2] = __37__SFCapsuleCollectionView_endUpdates__block_invoke_2;
          v99[3] = &unk_1E721BB88;
          v99[4] = self;
          v55 = v28;
          [v28 setContentViewUpdateHandler:v99];
          -[SFCapsuleCollectionView _dequeueOrCreateViewForItem:atIndex:](self, "_dequeueOrCreateViewForItem:atIndex:", v23, [v60 count] - 1);
          v29 = [v23 capsuleView];
          [v23 setCapsuleContentIsValid:0];
          v30 = MEMORY[0x1E69DD250];
          v97[0] = MEMORY[0x1E69E9820];
          v97[1] = 3221225472;
          v97[2] = __37__SFCapsuleCollectionView_endUpdates__block_invoke_9;
          v97[3] = &unk_1E721B400;
          v97[4] = self;
          v98 = v29;
          v31 = v29;
          [v30 safari_performWithoutRetargetingAnimations:v97];

          v13 = v47;
          v53 = 0;
        }
      }

      else
      {
        v53 = 0;
        v55 = 0;
      }

      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __37__SFCapsuleCollectionView_endUpdates__block_invoke_12;
      v84[3] = &unk_1E721B498;
      v50 = v49;
      v85 = v50;
      v32 = [v13 indexesPassingTest:v84];
      v33 = MEMORY[0x1E69DD250];
      v78[0] = MEMORY[0x1E69E9820];
      v78[1] = 3221225472;
      v78[2] = __37__SFCapsuleCollectionView_endUpdates__block_invoke_13;
      v78[3] = &unk_1E721BC28;
      v34 = v17;
      v79 = v34;
      v35 = v32;
      v80 = v35;
      v36 = v9;
      v83 = v58;
      v81 = v36;
      v82 = self;
      [v33 performWithoutAnimation:v78];
      [(SFCapsuleCollectionView *)self _updateRangeOfLoadedViews];
      [(SFCapsuleCollectionView *)self _setSuppressingDataSourceCalls:0];
      if (([v13 containsIndex:v14] & 1) == 0)
      {
        [(SFCapsuleCollectionView *)self _updateStateFlagsForContentViewAtIndex:[(SFCapsuleCollectionViewUpdate *)v36 indexAfterUpdateOfSelectedItemBeforeUpdate]];
      }

      [(SFCapsuleCollectionView *)self _updateStateFlagsForContentViewAtIndex:self->_selectedItemIndex];
      if (v58)
      {
        v59 = v20;
        if ([v12 containsIndex:v51])
        {
          v37 = MEMORY[0x1E69DD250];
          v76[0] = MEMORY[0x1E69E9820];
          v76[1] = 3221225472;
          v76[2] = __37__SFCapsuleCollectionView_endUpdates__block_invoke_15;
          v76[3] = &unk_1E721B360;
          v77 = v56;
          [v37 performWithoutAnimation:v76];
        }

        [(SFCapsuleCollectionView *)self setNeedsLayout];
        WeakRetained = objc_loadWeakRetained(&self->_currentTransitionCoordinator);
        v39 = WeakRetained;
        if (WeakRetained)
        {
          v40 = WeakRetained;
        }

        else
        {
          v40 = objc_alloc_init(SFTransitionCoordinator);
        }

        v41 = v40;

        if ([(SFCapsuleCollectionViewLinkablePageView *)self->_linkedPageView drivesCapsuleSelection]&& [(SFCapsuleCollectionViewLinkablePageView *)self->_linkedPageView isSendingTrailingAction])
        {
          v42 = [(SFCapsuleCollectionViewLinkablePageView *)self->_linkedPageView animationSettingsForCapsuleSelectionGesture];
          [(SFTransitionCoordinator *)v41 setSpringAnimationBehavior:v42];
        }

        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v66[2] = __37__SFCapsuleCollectionView_endUpdates__block_invoke_16;
        v66[3] = &unk_1E721BC50;
        v67 = v60;
        v68 = v57;
        v69 = self;
        v75 = v48;
        v70 = v36;
        v74 = v14;
        v43 = v34;
        v71 = v43;
        v72 = v56;
        v44 = v35;
        v73 = v44;
        [(SFTransitionCoordinator *)v41 addAnimations:v66];
        v61[0] = MEMORY[0x1E69E9820];
        v61[1] = 3221225472;
        v61[2] = __37__SFCapsuleCollectionView_endUpdates__block_invoke_18;
        v61[3] = &unk_1E721BC78;
        v62 = v43;
        v63 = v44;
        v64 = self;
        v65 = v53;
        [(SFTransitionCoordinator *)v41 addCompletion:v61];
        v45 = objc_loadWeakRetained(&self->_delegate);
        if (objc_opt_respondsToSelector())
        {
          v46 = [(SFTransitionCoordinator *)v41 publicCoordinator];
          [v45 capsuleCollectionView:self willPerformUpdateWithCoordinator:v46];
        }

        [(SFTransitionCoordinator *)v41 performTransitionWithAnimation:1 inContextOfContainerView:self];
        [v55 setContentViewUpdateHandler:0];

        v20 = v59;
      }
    }
  }
}

void __37__SFCapsuleCollectionView_endUpdates__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = MEMORY[0x1E69DD250];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __37__SFCapsuleCollectionView_endUpdates__block_invoke_3;
  v29[3] = &unk_1E721B650;
  v29[4] = *(a1 + 32);
  v11 = v9;
  v30 = v11;
  v12 = v7;
  v31 = v12;
  [v10 safari_performWithoutRetargetingAnimations:v29];
  [v8 setAutoresizingMask:2];
  v13 = MEMORY[0x1E69DD250];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __37__SFCapsuleCollectionView_endUpdates__block_invoke_4;
  v26[3] = &unk_1E721B400;
  v27 = v8;
  v14 = v11;
  v28 = v14;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __37__SFCapsuleCollectionView_endUpdates__block_invoke_7;
  v23[3] = &unk_1E721BB60;
  v15 = v12;
  v24 = v15;
  v25 = v27;
  v16 = v27;
  [v13 animateKeyframesWithDuration:3072 delay:v26 options:v23 animations:0.3 completion:0.0];
  v17 = MEMORY[0x1E69DD250];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __37__SFCapsuleCollectionView_endUpdates__block_invoke_8;
  v20[3] = &unk_1E721B400;
  v21 = v14;
  v22 = v15;
  v18 = v15;
  v19 = v14;
  [v17 safari_performWithoutRetargetingAnimations:v20];
}

void __37__SFCapsuleCollectionView_endUpdates__block_invoke_3(id *a1)
{
  v2 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  [a1[4] capsuleFrame];
  [a1[5] setFrame:{v2, v3}];
  [a1[5] layoutIfNeeded];
  [a1[5] setAlpha:0.0];
  v4 = [a1[6] contentContainer];
  [v4 addSubview:a1[5]];
}

void __37__SFCapsuleCollectionView_endUpdates__block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__SFCapsuleCollectionView_endUpdates__block_invoke_5;
  v6[3] = &unk_1E721B360;
  v7 = *(a1 + 32);
  [v2 addKeyframeWithRelativeStartTime:v6 relativeDuration:0.0 animations:0.67];
  v3 = MEMORY[0x1E69DD250];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__SFCapsuleCollectionView_endUpdates__block_invoke_6;
  v4[3] = &unk_1E721B360;
  v5 = *(a1 + 40);
  [v3 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.33 animations:0.67];
}

void __37__SFCapsuleCollectionView_endUpdates__block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) contentView];
  v3 = *(a1 + 40);

  if (v2 != v3)
  {
    v4 = *(a1 + 40);

    [v4 removeFromSuperview];
  }
}

void __37__SFCapsuleCollectionView_endUpdates__block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 40) contentContainer];
  [v2 bounds];
  [*(a1 + 32) setFrame:?];
}

uint64_t __37__SFCapsuleCollectionView_endUpdates__block_invoke_9(uint64_t a1)
{
  [*(a1 + 32) selectedCapsuleFrame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(a1 + 32) bounds];
  Width = CGRectGetWidth(v15);
  v16.origin.x = v3;
  v16.origin.y = v5;
  v16.size.width = v7;
  v16.size.height = v9;
  MinY = CGRectGetMinY(v16);
  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  [*(a1 + 40) setFrame:{Width, MinY, 106.0, CGRectGetHeight(v17)}];
  v12 = *(a1 + 40);

  return [v12 setNeedsInitialLayout:0];
}

void __37__SFCapsuleCollectionView_endUpdates__block_invoke_11(uint64_t a1)
{
  [*(a1 + 32) _incrementAnimationCountForItems:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, objc_msgSend(v3, "count")}];
  [v2 _layOutItems:v3 atIndexes:v4 selectedItemIndex:*(a1 + 88)];

  if (*(a1 + 104) == 1)
  {
    v5 = *(a1 + 96);
  }

  else
  {
    v5 = [*(a1 + 56) indexAfterUpdateOfSelectedItemBeforeUpdate];
  }

  v6 = *(a1 + 64);
  v13 = v6;
  if (*(a1 + 104) == 1)
  {
    v7 = [v6 mutableCopy];
    [v7 insertObject:*(a1 + 72) atIndex:v5];
    v8 = [v7 copy];

    v13 = v8;
  }

  v9 = *(a1 + 80);
  v10 = v9;
  if (*(a1 + 104) == 1)
  {
    v11 = [v9 mutableCopy];
    [v11 shiftIndexesStartingAtIndex:v5 by:1];
    v12 = [v11 copy];

    v10 = v12;
  }

  [*(a1 + 32) _layOutItems:v13 atIndexes:v10 selectedItemIndex:v5];
  [*(a1 + 32) _applyEffectsForChangeType:0 update:*(a1 + 56)];
}

void __37__SFCapsuleCollectionView_endUpdates__block_invoke_13(uint64_t a1)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [*(a1 + 32) objectsAtIndexes:*(a1 + 40)];
  v4 = [v2 setWithArray:v3];

  v5 = [*(a1 + 48) deletedItems];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__SFCapsuleCollectionView_endUpdates__block_invoke_14;
  v8[3] = &unk_1E721BC00;
  v11 = *(a1 + 64);
  v6 = *(a1 + 56);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  [v5 enumerateObjectsUsingBlock:v8];
}

void __37__SFCapsuleCollectionView_endUpdates__block_invoke_14(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 48) != 1 || (v3 = [*(a1 + 32) containsObject:v5], v4 = v5, (v3 & 1) == 0))
  {
    [*(a1 + 40) _reclaimViewForItem:v5];
    v4 = v5;
  }
}

void __37__SFCapsuleCollectionView_endUpdates__block_invoke_15(uint64_t a1)
{
  v2 = [*(a1 + 32) capsuleView];
  v1 = [v2 contentView];
  [v1 layoutIfNeeded];
}

void __37__SFCapsuleCollectionView_endUpdates__block_invoke_16(uint64_t a1)
{
  [*(a1 + 32) enumerateObjectsAtIndexes:*(a1 + 40) options:0 usingBlock:&__block_literal_global_144];
  [*(a1 + 48) layoutIfNeeded];
  v2 = [*(a1 + 56) indexBeforeUpdateOfSelectedItemAfterUpdate];
  if (*(a1 + 96) == 1)
  {
    v3 = *(a1 + 88) + 1;
  }

  else
  {
    v3 = v2;
    if (v2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v3 = [*(a1 + 56) selectedItemIndexBeforeUpdate];
    }
  }

  v4 = *(a1 + 64);
  v11 = v4;
  if (*(a1 + 96) == 1)
  {
    v5 = [v4 mutableCopy];
    [v5 insertObject:*(a1 + 72) atIndex:v3];
    v6 = [v5 copy];

    v11 = v6;
  }

  v7 = *(a1 + 80);
  v8 = v7;
  if (*(a1 + 96) == 1)
  {
    v9 = [v7 mutableCopy];
    [v9 shiftIndexesStartingAtIndex:v3 by:1];
    v10 = [v9 copy];

    v8 = v10;
  }

  [*(a1 + 48) _layOutItems:v11 atIndexes:v8 selectedItemIndex:v3];
  [*(a1 + 48) _applyEffectsForChangeType:1 update:*(a1 + 56)];
}

void __37__SFCapsuleCollectionView_endUpdates__block_invoke_17(uint64_t a1, void *a2)
{
  v2 = [a2 capsuleView];
  [v2 setDirectionalCollapsedContentEdge:0];
  [v2 setAlpha:1.0];
}

uint64_t __37__SFCapsuleCollectionView_endUpdates__block_invoke_18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __37__SFCapsuleCollectionView_endUpdates__block_invoke_19;
  v5[3] = &unk_1E721BBB0;
  v3 = *(a1 + 40);
  v5[4] = *(a1 + 48);
  [v2 enumerateObjectsAtIndexes:v3 options:0 usingBlock:v5];
  return [*(a1 + 48) _decrementAnimationCountForItems:*(a1 + 56)];
}

void __37__SFCapsuleCollectionView_endUpdates__block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 capsuleView];
  [v4 setAlpha:1.0];
  [v4 setDirectionalCollapsedContentEdge:0];
  [*(a1 + 32) _reclaimViewForItem:v3];
}

- (void)_applyEffectsForChangeType:(int64_t)a3 update:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3 == 1)
  {
    v7 = [v5 itemsBeforeUpdate];
    v8 = [v6 indexesOfDeletedItems];
    v9 = [v6 selectedItemIndexBeforeUpdate];
    v10 = [v6 indexBeforeUpdateOfSelectedItemAfterUpdate];
    v11 = [v6 indexesOfDeletedItems];
    if ([v11 containsIndex:{objc_msgSend(v6, "selectedItemIndexBeforeUpdate")}])
    {
      v12 = [v6 indexesOfInsertedItems];
      v13 = [v12 containsIndex:{objc_msgSend(v6, "selectedItemIndexAfterUpdate")}] ^ 1;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    if (a3)
    {
      v7 = 0;
      v10 = 0;
      v9 = 0;
      v8 = 0;
    }

    else
    {
      v7 = [v5 itemsAfterUpdate];
      v8 = [v6 indexesOfInsertedItems];
      v9 = [v6 selectedItemIndexAfterUpdate];
      v10 = [v6 indexAfterUpdateOfSelectedItemBeforeUpdate];
    }

    v13 = 1;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__SFCapsuleCollectionView__applyEffectsForChangeType_update___block_invoke;
  v14[3] = &__block_descriptor_49_e44_v32__0__SFCapsuleCollectionViewItem_8Q16_B24l;
  v15 = v13;
  v14[4] = v9;
  v14[5] = v10;
  [v7 enumerateObjectsAtIndexes:v8 options:0 usingBlock:v14];
}

void __61__SFCapsuleCollectionView__applyEffectsForChangeType_update___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 capsuleView];
  v20 = v5;
  if (*(a1 + 48) == 1)
  {
    v6 = *(a1 + 32);
    if (v6 == a3)
    {
      v7 = *(a1 + 40);
      v8 = 8;
      if (v7 <= a3)
      {
        v8 = 2;
      }

      if (v7 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = 2;
      }

      else
      {
        v9 = v8;
      }
    }

    else if (v6 <= a3)
    {
      v9 = 2;
    }

    else
    {
      v9 = 8;
    }

    [v5 setDirectionalCollapsedContentEdge:v9];
    v5 = v20;
  }

  [v5 layoutIfNeeded];
  [v20 frameForShadowView];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v20 shadowView];
  [v18 setFrame:{v11, v13, v15, v17}];

  [v20 setAlpha:0.0];
  v19 = [v20 shadowView];
  [v19 setAlpha:0.0];
}

- (void)setSelectedItemIndex:(int64_t)a3 animated:(BOOL)a4
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_selectedItemIndex != a3)
  {
    v4 = a4;
    if ([(SFCapsuleCollectionViewLinkablePageView *)self->_linkedPageView drivesCapsuleSelection]&& self->_selectionGestureState == 1)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      nextSelectedItemIndexAfterPan = self->_nextSelectedItemIndexAfterPan;
      self->_nextSelectedItemIndexAfterPan = v7;
    }

    else
    {
      [(SFCapsuleCollectionView *)self beginUpdates];
      v9 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = @"NO";
        if (v4)
        {
          v10 = @"YES";
        }

        v11 = v10;
        v12[0] = 67109378;
        v12[1] = a3;
        v13 = 2112;
        v14 = v11;
        _os_log_impl(&dword_18B7AC000, v9, OS_LOG_TYPE_DEFAULT, "Select index = %d; animated = %@", v12, 0x12u);
      }

      [(SFCapsuleCollectionViewUpdate *)self->_update setSelectedItemIndex:a3 animated:v4];
      self->_selectedItemIndex = [(SFCapsuleCollectionViewUpdate *)self->_update selectedItemIndexAfterUpdate];
      [(SFCapsuleCollectionView *)self setNeedsLayout];
      [(SFCapsuleCollectionView *)self endUpdates];
    }
  }
}

- (void)deleteItemsAtIndexes:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(SFCapsuleCollectionView *)self beginUpdates];
  v7 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v4)
    {
      v8 = @"YES";
    }

    v9 = v8;
    v16 = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_18B7AC000, v7, OS_LOG_TYPE_DEFAULT, "Delete indexes = %@; animated = %@", &v16, 0x16u);
  }

  [(SFCapsuleCollectionViewUpdate *)self->_update deleteItemsAtIndexes:v6 animated:v4];
  v10 = [(SFCapsuleCollectionViewUpdate *)self->_update itemsAfterUpdate];
  v11 = [v10 copy];
  items = self->_items;
  self->_items = v11;

  self->_selectedItemIndex = [(SFCapsuleCollectionViewUpdate *)self->_update selectedItemIndexAfterUpdate];
  v13 = [(NSArray *)self->_items indexesOfObjectsPassingTest:&__block_literal_global_149];
  indexesOfLoadedViews = self->_indexesOfLoadedViews;
  self->_indexesOfLoadedViews = v13;

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  self->_numberOfItems = [WeakRetained numberOfItemsInCapsuleCollectionView:self];

  [(SFCapsuleCollectionView *)self clearCachedLayoutValues];
  [(SFCapsuleCollectionView *)self _updateActions];
  [(SFCapsuleCollectionView *)self setNeedsLayout];
  [(SFCapsuleCollectionView *)self endUpdates];
}

BOOL __57__SFCapsuleCollectionView_deleteItemsAtIndexes_animated___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 capsuleView];
  v3 = v2 != 0;

  return v3;
}

- (void)insertItemsAtIndexes:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [(SFCapsuleCollectionView *)self beginUpdates];
  v7 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v4)
    {
      v8 = @"YES";
    }

    v9 = v8;
    v16 = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_18B7AC000, v7, OS_LOG_TYPE_DEFAULT, "Insert indexes = %@; animated = %@", &v16, 0x16u);
  }

  [(SFCapsuleCollectionViewUpdate *)self->_update insertItemsAtIndexes:v6 animated:v4];
  v10 = [(SFCapsuleCollectionViewUpdate *)self->_update itemsAfterUpdate];
  v11 = [v10 copy];
  items = self->_items;
  self->_items = v11;

  self->_selectedItemIndex = [(SFCapsuleCollectionViewUpdate *)self->_update selectedItemIndexAfterUpdate];
  v13 = [(NSArray *)self->_items indexesOfObjectsPassingTest:&__block_literal_global_151];
  indexesOfLoadedViews = self->_indexesOfLoadedViews;
  self->_indexesOfLoadedViews = v13;

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  self->_numberOfItems = [WeakRetained numberOfItemsInCapsuleCollectionView:self];

  [(SFCapsuleCollectionView *)self clearCachedLayoutValues];
  [(SFCapsuleCollectionView *)self _updateActions];
  [(SFCapsuleCollectionView *)self endUpdates];
}

BOOL __57__SFCapsuleCollectionView_insertItemsAtIndexes_animated___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 capsuleView];
  v3 = v2 != 0;

  return v3;
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(SFCapsuleCollectionView *)self _reloadDataWithoutLayout];
    v5 = obj;
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(SFCapsuleCollectionView *)self updateSupplementaryViews];
    [(SFCapsuleCollectionView *)self _reloadDataWithoutLayout];
    v5 = obj;
  }
}

- (void)_setSuppressingDataSourceCalls:(BOOL)a3
{
  if (self->_suppressingDataSourceCalls != a3)
  {
    self->_suppressingDataSourceCalls = a3;
    if (!a3)
    {
      v7[5] = v3;
      v7[6] = v4;
      items = self->_items;
      indexesOfLoadedViews = self->_indexesOfLoadedViews;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __58__SFCapsuleCollectionView__setSuppressingDataSourceCalls___block_invoke;
      v7[3] = &unk_1E721BBB0;
      v7[4] = self;
      [(NSArray *)items enumerateObjectsAtIndexes:indexesOfLoadedViews options:0 usingBlock:v7];
    }
  }
}

void __58__SFCapsuleCollectionView__setSuppressingDataSourceCalls___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (([v5 capsuleContentIsValid] & 1) == 0)
  {
    [*(a1 + 32) _fetchContentViewForItem:v5 atIndex:a3];
    [v5 setCapsuleContentIsValid:1];
  }
}

- (void)registerContentViewIdentifier:(id)a3 block:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[SFCapsuleContentViewRegistration alloc] initWithCreateViewBlock:v6];

  [(NSMutableDictionary *)self->_contentViewRegistrations setObject:v8 forKeyedSubscript:v7];
}

- (id)createOrDequeueContentViewWithIdentifier:(id)a3 atIndex:(int64_t)a4
{
  contentViewRegistrations = self->_contentViewRegistrations;
  v7 = a3;
  v8 = [(NSMutableDictionary *)contentViewRegistrations objectForKeyedSubscript:v7];
  v9 = [(NSArray *)self->_items objectAtIndexedSubscript:a4];
  v10 = [v9 capsuleView];
  v11 = [v10 contentView];
  v12 = [v8 createOrDequeueViewWithExistingView:v11];
  reuseableContentView = self->_reuseableContentView;
  self->_reuseableContentView = v12;

  v14 = [v7 copy];
  reusableContentViewIdentifier = self->_reusableContentViewIdentifier;
  self->_reusableContentViewIdentifier = v14;

  v16 = self->_reuseableContentView;

  return v16;
}

- (void)_updateTrailingCapsule
{
  if (!self->_numberOfItems)
  {
    return;
  }

  v10 = [(NSArray *)self->_items lastObject];
  v3 = [(NSArray *)self->_items count]- 1;
  v4 = [(SFCapsuleCollectionView *)self _indexesOfVisibleItemsIncludingAction:1];
  v5 = [v4 containsIndex:v3];

  v6 = [(NSIndexSet *)self->_indexesOfLoadedViews mutableCopy];
  v7 = v6;
  if (v5)
  {
    [(NSIndexSet *)v6 addIndex:v3];
    [(SFCapsuleCollectionView *)self _dequeueOrCreateViewForItem:v10 atIndex:v3];
LABEL_7:
    [(SFCapsuleCollectionView *)self setNeedsLayout];
    goto LABEL_8;
  }

  [(NSIndexSet *)v6 removeIndex:v3];
  v8 = [v10 capsuleView];

  if (v8)
  {
    [(SFCapsuleCollectionView *)self _reclaimViewForItem:v10];
    [(SFCapsuleCollectionView *)self _scheduleTimerToDiscardViewsForReuseIfNeeded];
    goto LABEL_7;
  }

LABEL_8:
  indexesOfLoadedViews = self->_indexesOfLoadedViews;
  self->_indexesOfLoadedViews = v7;
}

- (void)_discardExcessViewsForReuse
{
  WeakRetained = objc_loadWeakRetained(&self->_timerToDiscardViewsForReuse);
  [WeakRetained invalidate];

  objc_storeWeak(&self->_timerToDiscardViewsForReuse, 0);
  v17 = [(SFCapsuleCollectionView *)self _indexesOfAnimatingItems];
  if ([v17 count])
  {
  }

  else
  {
    v4 = [(NSIndexSet *)self->_indexesOfLoadedViews count];
    v5 = [(SFCapsuleCollectionView *)self _maximumNumberOfVisibleViews];

    if (v4 <= v5)
    {
      v6 = [(SFCapsuleCollectionView *)self _softMaximumNumberOfViews];
      v7 = [(NSIndexSet *)self->_indexesOfLoadedViews count];
      if ([(NSMutableSet *)self->_viewsForReuse count]+ v7 > v6)
      {
        do
        {
          v8 = [(NSMutableSet *)self->_viewsForReuse anyObject];
          [(NSMutableSet *)self->_viewsForReuse removeObject:v8];
          [v8 removeFromSuperview];
          v9 = [v8 contentView];
          if (v9)
          {
            v10 = v9;
            v11 = [v8 reusableContentViewIdentifier];

            if (v11)
            {
              contentViewRegistrations = self->_contentViewRegistrations;
              v13 = [v8 reusableContentViewIdentifier];
              v14 = [(NSMutableDictionary *)contentViewRegistrations objectForKeyedSubscript:v13];
              v15 = [v8 contentView];
              [v14 discardView:v15];
            }
          }

          v16 = [(NSIndexSet *)self->_indexesOfLoadedViews count];
        }

        while ([(NSMutableSet *)self->_viewsForReuse count]+ v16 > v6);
      }
    }
  }
}

- (id)_indexesOfVisibleItemsIncludingAction:(BOOL)a3
{
  if (self->_numberOfItems)
  {
    x = self->_offsetForPan.x;
    v6 = [(SFCapsuleCollectionView *)self _indexOfCentermostItemWithTranslation:x];
    v7 = [MEMORY[0x1E696AD50] indexSetWithIndex:v6];
    [(SFCapsuleCollectionView *)self pageWidth];
    v9 = v8;
    v33 = v8;
    [(SFCapsuleCollectionView *)self bounds];
    Width = CGRectGetWidth(v35);
    [(SFCapsuleCollectionView *)self capsuleFrame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = x + v17 + (v6 - self->_selectedItemIndex) * v9;
    [(SFCapsuleCollectionView *)self interCapsuleSpacing];
    v20 = v19;
    v36.origin.x = v18;
    v36.origin.y = v12;
    v36.size.width = v14;
    v36.size.height = v16;
    v21 = fmax(fmin(Width, CGRectGetMinX(v36) - v20), 0.0);
    v37.origin.x = v18;
    v37.origin.y = v12;
    v37.size.width = v14;
    v37.size.height = v16;
    v22 = fmax(fmin(Width, Width - CGRectGetMaxX(v37) - v20), 0.0);
    v23 = [(UIView *)self _sf_usesLeftToRightLayout];
    if (v23)
    {
      v24 = v21;
    }

    else
    {
      v24 = v22;
    }

    if (v23)
    {
      v21 = v22;
    }

    v25 = ceil(v24 / v33);
    if (v25 <= v6)
    {
      v26 = (v6 - v25);
    }

    else
    {
      v26 = 0;
    }

    [v7 addIndexesInRange:{v26, v6 - v26}];
    v27 = [(NSArray *)self->_items count];
    if (self->_trailingAction != 0 && a3)
    {
      v28 = -1;
    }

    else
    {
      v28 = -2;
    }

    v29 = ceil(v21 / v33) + v6;
    if (v29 > (v28 + v27))
    {
      v30 = [(NSArray *)self->_items count];
      if (self->_trailingAction != 0 && a3)
      {
        v31 = -1;
      }

      else
      {
        v31 = -2;
      }

      v29 = (v31 + v30);
    }

    [v7 addIndexesInRange:{v6 + 1, v29 - v6}];
  }

  else
  {
    v7 = [MEMORY[0x1E696AC90] indexSet];
  }

  return v7;
}

- (id)_indexesOfVisibleItemsWithSelectedItemIndex:(int64_t)a3
{
  if ([(NSArray *)self->_items count]<= a3)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(SFCapsuleCollectionView *)&self->_items _indexesOfVisibleItemsWithSelectedItemIndex:v10];
    }

    v6 = [MEMORY[0x1E696AC90] indexSet];
  }

  else
  {
    v5 = [MEMORY[0x1E696AD50] indexSetWithIndex:a3];
    v6 = v5;
    v7 = a3 - 1;
    if (a3 >= 1)
    {
      [v5 addIndex:v7];
    }

    v8 = [(NSArray *)self->_items count];
    v9 = -2;
    if (self->_trailingAction)
    {
      v9 = -1;
    }

    if ((v9 + v8) > a3)
    {
      [v6 addIndex:a3 + 1];
    }
  }

  return v6;
}

- (void)_incrementAnimationCountForItems:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        v7 |= [v10 animationCount] == 0;
        [v10 setAnimationCount:{objc_msgSend(v10, "animationCount") + 1}];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
    if (v7)
    {
      [(SFCapsuleCollectionView *)self _updateRangeOfLoadedViews];
    }
  }
}

- (void)_decrementAnimationCountForItems:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v10 setAnimationCount:{objc_msgSend(v10, "animationCount") - 1}];
        v7 |= [v10 animationCount] == 0;
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
    if (v7)
    {
      [(SFCapsuleCollectionView *)self _updateRangeOfLoadedViews];
    }
  }
}

- (void)_setIndexesOfLoadedViews:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_indexesOfLoadedViews, a3);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  items = self->_items;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__SFCapsuleCollectionView__setIndexesOfLoadedViews___block_invoke;
  v17[3] = &unk_1E721BCE0;
  v7 = v5;
  v18 = v7;
  v19 = self;
  v20 = &v21;
  [(NSArray *)items enumerateObjectsUsingBlock:v17];
  v8 = self->_items;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __52__SFCapsuleCollectionView__setIndexesOfLoadedViews___block_invoke_2;
  v13 = &unk_1E721BCE0;
  v9 = v7;
  v14 = v9;
  v15 = self;
  v16 = &v21;
  [(NSArray *)v8 enumerateObjectsUsingBlock:&v10];
  if (*(v22 + 24) == 1)
  {
    [(SFCapsuleCollectionView *)self setNeedsLayout:v10];
  }

  _Block_object_dispose(&v21, 8);
}

void __52__SFCapsuleCollectionView__setIndexesOfLoadedViews___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [*(a1 + 32) containsIndex:a3];
  v6 = [v8 capsuleView];

  if ((v5 & 1) == 0 && v6)
  {
    v7 = *(a1 + 40);
    if (v7[132] == a3)
    {
      [v7 _updateOffsetForPan];
      v7 = *(a1 + 40);
    }

    [v7 _reclaimViewForItem:v8];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void __52__SFCapsuleCollectionView__setIndexesOfLoadedViews___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) containsIndex:a3])
  {
    [*(a1 + 40) _dequeueOrCreateViewForItem:v5 atIndex:a3];
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (void)_reclaimViewForItem:(id)a3
{
  v4 = a3;
  v5 = [v4 capsuleView];
  if (v5)
  {
    if (([v4 capsuleIsDetached] & 1) == 0)
    {
      [v4 setCapsuleView:0];
      [v4 setCapsuleContentIsValid:0];
      [v5 setHidden:1];
      v6 = *(MEMORY[0x1E695EFD0] + 16);
      v14[0] = *MEMORY[0x1E695EFD0];
      v14[1] = v6;
      v14[2] = *(MEMORY[0x1E695EFD0] + 32);
      [v5 setTransform:v14];
      [(NSMutableSet *)self->_viewsForReuse addObject:v5];
      v7 = [v5 contentView];
      if (v7)
      {
        v8 = v7;
        v9 = [v5 reusableContentViewIdentifier];

        if (v9)
        {
          contentViewRegistrations = self->_contentViewRegistrations;
          v11 = [v5 reusableContentViewIdentifier];
          v12 = [(NSMutableDictionary *)contentViewRegistrations objectForKeyedSubscript:v11];
          v13 = [v5 contentView];
          [v12 enqueueView:v13];
        }
      }
    }
  }
}

- (void)_dequeueOrCreateViewForItem:(id)a3 atIndex:(int64_t)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E69DD250];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__SFCapsuleCollectionView__dequeueOrCreateViewForItem_atIndex___block_invoke;
  v9[3] = &unk_1E721B9A8;
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
  [v7 safari_performWithoutRetargetingAnimations:v9];
}

void __63__SFCapsuleCollectionView__dequeueOrCreateViewForItem_atIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) capsuleView];
  if (!v2)
  {
    if ([*(*(a1 + 40) + 440) count])
    {
      v13 = [*(*(a1 + 40) + 440) anyObject];
      [*(*(a1 + 40) + 440) removeObject:v13];
      [(SFCapsuleView *)v13 setHidden:0];
    }

    else
    {
      v3 = [SFCapsuleView alloc];
      [*(a1 + 40) capsuleFrame];
      v13 = [(SFCapsuleView *)v3 initWithFrame:?];
      [*(a1 + 40) _updateSuperviewForCapsule:?];
    }

    v4 = [*(a1 + 32) capsuleView];
    [(SFCapsuleView *)v13 setNeedsInitialLayout:v13 != v4];

    [*(a1 + 40) capsuleBackgroundCornerRadius];
    [(SFCapsuleView *)v13 setBackgroundCornerRadius:?];
    v5 = [*(a1 + 40) _visualEffectGroupName];
    [(SFCapsuleView *)v13 setVisualEffectGroupName:v5];

    [(SFCapsuleView *)v13 setTheme:*(*(a1 + 40) + 480)];
    [(SFCapsuleView *)v13 setMinimizedTheme:*(*(a1 + 40) + 488)];
    [(SFCapsuleView *)v13 setLayoutStyle:*(*(a1 + 40) + 1016)];
    v6 = [(SFCapsuleView *)v13 backgroundView];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v8 = *(*(a1 + 40) + 472);
      v9 = [(SFCapsuleView *)v13 backgroundView];
      [v9 _setCaptureView:v8];
    }

    [*(a1 + 32) setCapsuleView:v13];
    v2 = v13;
  }

  v14 = v2;
  v10 = *(a1 + 40);
  if (v10[975] == 1)
  {
    v11 = *(a1 + 32);
    v12 = 0;
  }

  else
  {
    [v10 _fetchContentViewForItem:*(a1 + 32) atIndex:*(a1 + 48)];
    [*(a1 + 40) _updateStateFlagsForContentViewAtIndex:*(a1 + 48)];
    v11 = *(a1 + 32);
    v12 = 1;
  }

  [v11 setCapsuleContentIsValid:v12];
}

- (void)_updateStateFlagsForContentViewAtIndex:(int64_t)a3
{
  if ([(NSArray *)self->_items count]> a3)
  {
    selectedItemIndex = self->_selectedItemIndex;
    selectedItemState = self->_selectedItemState;
    if ([(SFCapsuleCollectionView *)self selectedItemIsMinimized]&& [(SFCapsuleCollectionView *)self _shouldUseNormalLayoutForMinimizedCapsule])
    {
      v7 = 0;
    }

    else
    {
      v7 = self->_selectedItemState;
    }

    self->_selectedItemState = v7;
    v8 = [(NSArray *)self->_items objectAtIndexedSubscript:a3];
    v16 = [v8 capsuleView];

    [v16 setSelected:selectedItemIndex == a3];
    if (self->_minimizationStyle)
    {
      v9 = 0;
    }

    else
    {
      v9 = selectedItemIndex == a3;
    }

    if (v9)
    {
      v10 = self->_selectedItemState;
    }

    else
    {
      v10 = 0;
    }

    [v16 setState:v10];
    if (selectedItemIndex == a3)
    {
      selectedItemAccessoryViews = self->_selectedItemAccessoryViews;
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_selectedItemState];
      v13 = [(NSMutableDictionary *)selectedItemAccessoryViews objectForKeyedSubscript:v12];
      [v16 setAccessoryView:v13];
    }

    else
    {
      [v16 setAccessoryView:0];
    }

    v14 = [v16 state];
    Height = 0.0;
    if (v14 == 1 && self->_layoutStyle == 1)
    {
      [(SFCapsuleCollectionView *)self capsuleFrame];
      Height = CGRectGetHeight(v18);
    }

    [v16 setBackgroundHeight:Height];
    self->_selectedItemState = selectedItemState;
  }
}

- (int64_t)_insertionIndexForShadowInView:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [v3 subviews];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SFCapsuleCollectionView__insertionIndexForShadowInView___block_invoke;
  v7[3] = &unk_1E721BD08;
  v7[4] = &v8;
  [v4 enumerateObjectsUsingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __58__SFCapsuleCollectionView__insertionIndexForShadowInView___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

- (void)_updateSuperviewForCapsule:(id)a3
{
  v9 = a3;
  v4 = [(SFCapsuleCollectionView *)self _superviewForCapsules];
  v5 = [v9 superview];

  if (v5 != v4)
  {
    [v4 addSubview:v9];
  }

  v6 = [v9 shadowView];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 superview];

    if (v8 != v4)
    {
      [v4 insertSubview:v7 atIndex:{-[SFCapsuleCollectionView _insertionIndexForShadowInView:](self, "_insertionIndexForShadowInView:", v4)}];
    }
  }
}

- (void)_didReceiveTap:(id)a3
{
  v4 = a3;
  v5 = v4;
  selectedItemState = self->_selectedItemState;
  if (selectedItemState == 1)
  {
    [v4 locationInView:self];
    if (self->_layoutStyle == 2 && (v22 = v20, v23 = v21, [(SFCapsuleCollectionView *)self _tapToShowBarBottomRegion], v30.x = v22, v30.y = v23, CGRectContainsPoint(v33, v30)))
    {
      self->_minimizationFlags |= 8uLL;
      v24 = [(SFCapsuleCollectionView *)self _setSelectedItemStateWithoutPerformingTransition:0 options:0];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __42__SFCapsuleCollectionView__didReceiveTap___block_invoke;
      v28[3] = &unk_1E721B360;
      v28[4] = self;
      [v24 addCompletion:v28];
    }

    else
    {
      v24 = [(SFCapsuleCollectionView *)self _setSelectedItemStateWithoutPerformingTransition:0 options:0];
    }

    v25 = [(SFCapsuleCollectionView *)self window];
    [v24 performTransitionWithAnimation:1 inContextOfContainerView:v25];
  }

  else if (!selectedItemState)
  {
    [v4 locationInView:self];
    v8 = v7;
    v10 = v9;
    [(SFCapsuleCollectionView *)self _detachedCapsuleSelectionRect];
    x = v31.origin.x;
    y = v31.origin.y;
    width = v31.size.width;
    height = v31.size.height;
    if (CGRectIsNull(v31))
    {
      [(SFCapsuleCollectionView *)self _selectedCapsuleFrame];
      x = v15;
      y = v16;
      width = v17;
      height = v18;
    }

    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v29.x = v8;
    v29.y = v10;
    if (CGRectContainsPoint(v32, v29))
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if ((objc_opt_respondsToSelector() & 1) == 0 || [WeakRetained capsuleCollectionViewShouldFocusSelectedItem:self])
      {
        [(SFCapsuleCollectionView *)self setSelectedItemState:2 animated:1];
      }
    }

    else
    {
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      if (v10 <= CGRectGetMaxY(v34))
      {
        [(SFCapsuleCollectionView *)self _didReceiveTapOnPeekCapsule:v5];
      }
    }

    v26 = [(NSArray *)self->_items objectAtIndexedSubscript:self->_selectedItemIndex];
    v27 = [v26 capsuleView];
    [v27 setAllowsHighlight:1];
  }
}

- (void)_didReceiveTapOnPeekCapsule:(id)a3
{
  if (self->_selectedItemState)
  {
    return;
  }

  [a3 locationInView:self];
  v5 = v4;
  [(SFCapsuleCollectionView *)self _selectedCapsuleFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  selectedItemIndex = self->_selectedItemIndex;
  v15 = [(UIView *)self _sf_usesLeftToRightLayout];
  v37.origin.x = v7;
  v37.origin.y = v9;
  v37.size.width = v11;
  v37.size.height = v13;
  MinX = CGRectGetMinX(v37);
  if (!v15)
  {
    if (v5 < MinX)
    {
      v20 = self->_selectedItemIndex + 1;
      if (v20 < [(NSArray *)self->_items count])
      {
        v21 = self->_selectedItemIndex;
        goto LABEL_17;
      }
    }

    v38.origin.x = v7;
    v38.origin.y = v9;
    v38.size.width = v11;
    v38.size.height = v13;
    MaxX = CGRectGetMaxX(v38);
    v21 = self->_selectedItemIndex;
    v23 = v21 - 1;
    if (v21 <= 0)
    {
      v23 = selectedItemIndex;
    }

    if (MaxX < v5)
    {
      selectedItemIndex = v23;
    }

LABEL_18:
    if (selectedItemIndex == v21)
    {
      return;
    }

    goto LABEL_19;
  }

  if (v5 < MinX)
  {
    v17 = self->_selectedItemIndex;
    v18 = v17 < 1;
    v19 = v17 - 1;
    if (!v18)
    {
      selectedItemIndex = v19;
      goto LABEL_19;
    }
  }

  v39.origin.x = v7;
  v39.origin.y = v9;
  v39.size.width = v11;
  v39.size.height = v13;
  v24 = CGRectGetMaxX(v39);
  v21 = self->_selectedItemIndex;
  if (v24 >= v5)
  {
    goto LABEL_18;
  }

  v25 = v21 + 1;
  v26 = [(NSArray *)self->_items count];
  v21 = self->_selectedItemIndex;
  if (v25 >= v26)
  {
    goto LABEL_18;
  }

LABEL_17:
  selectedItemIndex = v21 + 1;
LABEL_19:
  if (selectedItemIndex != self->_numberOfItems)
  {
    if ([(SFCapsuleCollectionViewLinkablePageView *)self->_linkedPageView drivesCapsuleSelection])
    {

      [(SFCapsuleCollectionView *)self _animateSwitchingLinkedPageViewToItemAtIndex:selectedItemIndex];
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v28 = objc_alloc_init(SFTransitionCoordinator);
        objc_storeWeak(&self->_currentTransitionCoordinator, v28);
        v29 = [(SFTransitionCoordinator *)v28 publicCoordinator];
        [WeakRetained capsuleCollectionView:self willSelectItemAtIndex:selectedItemIndex coordinator:v29];

        [(SFCapsuleCollectionView *)self setSelectedItemIndex:selectedItemIndex animated:1];
        if (v28)
        {
          objc_storeWeak(&self->_currentTransitionCoordinator, 0);
        }
      }

      else
      {
        [(SFCapsuleCollectionView *)self setSelectedItemIndex:selectedItemIndex animated:1];
      }

      v30 = [MEMORY[0x1E69DC668] sharedApplication];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __55__SFCapsuleCollectionView__didReceiveTapOnPeekCapsule___block_invoke;
      v32[3] = &unk_1E721B9A8;
      v33 = WeakRetained;
      v34 = self;
      v35 = selectedItemIndex;
      v31 = WeakRetained;
      [v30 _performBlockAfterCATransactionCommits:v32];
    }
  }
}

uint64_t __55__SFCapsuleCollectionView__didReceiveTapOnPeekCapsule___block_invoke(void *a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = a1[4];
    v4 = a1[5];
    v5 = a1[6];

    return [v3 capsuleCollectionView:v4 didSelectItemAtIndex:v5];
  }

  return result;
}

- (CGRect)_tapToShowBarBottomRegion
{
  if (self->_selectedItemState == 1 && (self->_layoutStyle != 1 || self->_minimizationStyle))
  {
    [(SFCapsuleCollectionView *)self obscuredInsetsForState:0];
    v4 = v3;
    [(SFCapsuleCollectionView *)self bounds];
    x = v14.origin.x;
    y = v14.origin.y;
    width = v14.size.width;
    height = v14.size.height;
    v9 = CGRectGetHeight(v14) - v4;
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    v10 = CGRectGetWidth(v15);
    v11 = 0.0;
  }

  else
  {
    v11 = *MEMORY[0x1E695F050];
    v9 = *(MEMORY[0x1E695F050] + 8);
    v10 = *(MEMORY[0x1E695F050] + 16);
    v4 = *(MEMORY[0x1E695F050] + 24);
  }

  v12 = v9;
  v13 = v4;
  result.size.height = v13;
  result.size.width = v10;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)_updateOffsetForPan
{
  if (self->_numberOfItems)
  {
    if (([(UIPanGestureRecognizer *)self->_panGesture state]- 1) > 1)
    {
      v3 = *MEMORY[0x1E695EFF8];
      v4 = *(MEMORY[0x1E695EFF8] + 8);
    }

    else if (self->_linkedPageView)
    {
      [(SFCapsuleCollectionView *)self _offsetForPanFromLinkedPageView];
    }

    else
    {
      [(SFCapsuleCollectionView *)self _panGestureTranslationConstrainedToPanAxis];
    }

    if (v3 != self->_offsetForPan.x || v4 != self->_offsetForPan.y)
    {
      self->_offsetForPan.x = v3;
      self->_offsetForPan.y = v4;

      [(SFCapsuleCollectionView *)self setNeedsLayout];
    }
  }
}

- (CGPoint)_panGestureTranslationConstrainedToPanAxis
{
  [(UIPanGestureRecognizer *)self->_panGesture translationInView:self];
  v4 = v3;
  v6 = v5;
  [(SFCapsuleCollectionView *)self capsuleFrame];
  Height = CGRectGetHeight(v29);
  v8 = Height;
  if (self->_panAxis == 1)
  {
    [(SFCapsuleCollectionView *)self pageWidth];
    v10 = v9;
    v11 = [(UIView *)self _sf_usesLeftToRightLayout];
    numberOfItems = self->_numberOfItems;
    selectedItemIndex = self->_selectedItemIndex;
    v14 = numberOfItems + ~selectedItemIndex;
    v15 = numberOfItems - selectedItemIndex;
    if (!self->_trailingAction)
    {
      v15 = v14;
    }

    if (v11)
    {
      v16 = v15;
    }

    else
    {
      v16 = self->_selectedItemIndex;
    }

    v17 = -(v10 * v16);
    if (v11)
    {
      v15 = self->_selectedItemIndex;
    }

    v18 = v10 * v15;
    [(SFCapsuleCollectionView *)self bounds];
    Width = CGRectGetWidth(v30);
    v20 = v4;
    v21 = v17;
    v22 = v18;
  }

  else
  {
    Width = Height * 0.5;
    v21 = 0.0;
    v22 = 0.0;
    v20 = v4;
  }

  v23 = SFRubberBandOffsetForOffset(v20, v21, v22, Width);
  if (self->_panAxis == 2)
  {
    [(SFCapsuleCollectionView *)self bounds];
    v24 = CGRectGetHeight(v31) / -3.0;
    [(SFCapsuleCollectionView *)self layoutMargins];
    v26 = fmin(SFRubberBandOffsetForOffset(v6, v24, v25, v8), 0.0);
  }

  else
  {
    v26 = *(MEMORY[0x1E695EFF8] + 8);
  }

  v27 = v23;
  result.y = v26;
  result.x = v27;
  return result;
}

- (int64_t)_indexOfTargetItemWithTranslation:(double)a3 roundingThreshold:(double)a4 allowActionIndex:(BOOL)a5 allowOutOfBounds:(BOOL)a6
{
  v7 = a5;
  [(SFCapsuleCollectionView *)self pageWidth];
  v12 = a3 / v11;
  v13 = [(UIView *)self _sf_usesLeftToRightLayout];
  v14 = -v12;
  if (!v13)
  {
    v14 = v12;
  }

  if (v14 < 0.0)
  {
    if (v14 <= -a4)
    {
      v15 = vcvtpd_s64_f64(v14 + -1.0);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v14 < a4)
  {
LABEL_7:
    v15 = 0;
    goto LABEL_9;
  }

  v15 = vcvtmd_s64_f64(v14 + 1.0);
LABEL_9:
  if (v15 < 0)
  {
    v15 = -1;
  }

  if (v15 >= 1)
  {
    v15 = 1;
  }

  result = self->_selectedItemIndex + v15;
  if (!a6)
  {
    LODWORD(v17) = !v7;
    if (self->_trailingAction)
    {
      v17 = v17;
    }

    else
    {
      v17 = 1;
    }

    v18 = self->_numberOfItems - v17;
    if (v18 >= result)
    {
      v18 = result;
    }

    return v18 & ~(v18 >> 63);
  }

  return result;
}

- (int64_t)_nextItemIndexForSelectionGesture
{
  [(SFCapsuleCollectionView *)self _panGestureTranslationConstrainedToPanAxis];

  return [SFCapsuleCollectionView _indexOfTargetItemWithTranslation:"_indexOfTargetItemWithTranslation:roundingThreshold:allowActionIndex:allowOutOfBounds:" roundingThreshold:1 allowActionIndex:0 allowOutOfBounds:?];
}

- (double)_percentToSelectItemIndex:(int64_t)a3
{
  [(SFCapsuleCollectionView *)self _panGestureTranslationConstrainedToPanAxis];
  v6 = v5;
  [(SFCapsuleCollectionView *)self capsuleFrame];
  Width = CGRectGetWidth(v11);
  [(SFCapsuleCollectionView *)self interCapsuleSpacing];
  v9 = 0.0;
  if (self->_selectedItemIndex != a3)
  {
    return fabs(v6) / (Width + v8);
  }

  return v9;
}

- (BOOL)_hasReachedTrailingActionPullThreshold
{
  v3 = [(UIView *)self _sf_usesLeftToRightLayout];
  x = self->_offsetForPan.x;
  if (v3)
  {
    return x < -106.0;
  }

  else
  {
    return x > 106.0;
  }
}

- (void)_didReceivePan:(id)a3
{
  v182 = *MEMORY[0x1E69E9840];
  v129 = a3;
  v128 = [(SFCapsuleCollectionView *)self _indexesOfVisibleItemsIncludingAction:1];
  v4 = MEMORY[0x1E695DFD8];
  v5 = [(NSArray *)self->_items objectsAtIndexes:v128];
  v127 = [v4 setWithArray:v5];

  v6 = [v129 view];
  [v129 velocityInView:v6];
  v8 = v7;
  v10 = v9;

  v11 = self->_previousVelocity.x + (v8 - self->_previousVelocity.x) * 0.5;
  v12 = self->_previousVelocity.y + (v10 - self->_previousVelocity.y) * 0.5;
  self->_previousVelocity.x = v11;
  self->_previousVelocity.y = v12;
  selectedItemIndex = self->_selectedItemIndex;
  v14 = [v129 state];
  if ((v14 - 3) >= 2)
  {
    if ((v14 - 1) > 1)
    {
      goto LABEL_131;
    }

    v15 = v129;
    if ([v129 state] == 1)
    {
      v16 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
      if (os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_18B7AC000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "PanGesture", " isAnimation=YES ", buf, 2u);
      }

      v17 = [(NSArray *)self->_items objectAtIndexedSubscript:self->_selectedItemIndex];
      v18 = [v17 capsuleView];

      [(SFCapsuleCollectionView *)self _setUpdateRequestActive:1];
      [v18 _setSafeAreaInsetsFrozen:1];
      self->_selectionGestureState = 1;
      [(SFCapsuleCollectionView *)self freezeHiddenSupplementaries];
      v19 = fabs(v11);
      v20 = fabs(v12);
      v21 = v19 > v20 || self->_topAction == 0;
      v22 = 1;
      if (!v21)
      {
        v22 = 2;
      }

      self->_panAxis = v22;
      [(SFCapsuleCollectionView *)self _updateCanBlurCapsules];
      if (self->_panAxis == 1)
      {
        [v18 setAllowsHighlight:0];
      }

      self->_axisSwitchTime = CACurrentMediaTime();
      [(UISelectionFeedbackGenerator *)self->_feedbackGenerator prepare];
      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      v23 = self->_gestureObservers;
      v24 = [(NSHashTable *)v23 countByEnumeratingWithState:&v172 objects:v181 count:16];
      if (v24)
      {
        v25 = *v173;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v173 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v172 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v27 capsuleCollectionView:self didBeginSelectionGestureOnAxis:self->_panAxis];
            }
          }

          v24 = [(NSHashTable *)v23 countByEnumeratingWithState:&v172 objects:v181 count:16];
        }

        while (v24);
      }

      v15 = v129;
    }

    else
    {
      v19 = fabs(v11);
      v20 = fabs(v12);
    }

    [(SFCapsuleCollectionViewLinkablePageView *)self->_linkedPageView didReceiveLinkedPanGesture:v15];
    [v129 translationInView:self];
    v34 = v33;
    v36 = v35;
    panAxis = self->_panAxis;
    v38 = CACurrentMediaTime();
    v39 = _SFClampPercent(v38 - self->_axisSwitchTime, 0.0, 0.5);
    v40 = _SFInterpolate(1.49253731, 0.67, v39);
    if (v19 <= 50.0 || v19 <= v20 + v20 || fabs(v34) <= fabs(v36) * v40)
    {
      if (v20 <= 50.0 || v20 <= v19 + v19 || fabs(v36) <= fabs(v34) * v40 || v36 > 0.0 || !self->_topAction)
      {
        goto LABEL_39;
      }

      v41 = 2;
    }

    else
    {
      v41 = 1;
    }

    self->_panAxis = v41;
LABEL_39:
    v123 = [(SFCapsuleCollectionView *)self _hasReachedTrailingActionPullThreshold];
    [(SFCapsuleCollectionView *)self _updateOffsetForPan];
    [(SFCapsuleCollectionView *)self _updateRangeOfLoadedViews];
    v42 = 0x1E69DD000;
    v43 = &off_18BC3D000;
    if (panAxis != self->_panAxis)
    {
      self->_axisSwitchTime = CACurrentMediaTime();
      [(UISelectionFeedbackGenerator *)self->_feedbackGenerator selectionChanged];
      v171[0] = MEMORY[0x1E69E9820];
      v171[1] = 3221225472;
      v171[2] = __42__SFCapsuleCollectionView__didReceivePan___block_invoke;
      v171[3] = &unk_1E721B360;
      v171[4] = self;
      [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:0 animations:v171 completion:0];
      v169 = 0u;
      v170 = 0u;
      v167 = 0u;
      v168 = 0u;
      v44 = self->_gestureObservers;
      v45 = [(NSHashTable *)v44 countByEnumeratingWithState:&v167 objects:v180 count:16];
      if (v45)
      {
        v46 = *v168;
        do
        {
          for (j = 0; j != v45; ++j)
          {
            if (*v168 != v46)
            {
              objc_enumerationMutation(v44);
            }

            v48 = *(*(&v167 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v48 capsuleCollectionView:self selectionGestureDidChangeFromAxis:panAxis];
            }
          }

          v45 = [(NSHashTable *)v44 countByEnumeratingWithState:&v167 objects:v180 count:16];
        }

        while (v45);
      }

      v43 = &off_18BC3D000;
      v42 = 0x1E69DD000uLL;
    }

    v49 = *(v42 + 592);
    v166[0] = MEMORY[0x1E69E9820];
    v50 = *(v43 + 280);
    v166[1] = v50;
    v166[2] = __42__SFCapsuleCollectionView__didReceivePan___block_invoke_2;
    v166[3] = &unk_1E721B360;
    v166[4] = self;
    [v49 animateWithDuration:v166 animations:0.15];
    if (self->_trailingAction && self->_panAxis == 1 && self->_selectedItemIndex + 1 == self->_numberOfItems && v123 != [(SFCapsuleCollectionView *)self _hasReachedTrailingActionPullThreshold])
    {
      [(UISelectionFeedbackGenerator *)self->_feedbackGenerator selectionChanged];
    }

    if (self->_sendProgressMessageToObservers)
    {
      [(SFCapsuleCollectionView *)self _panGestureTranslationConstrainedToPanAxis];
      v51 = [SFCapsuleCollectionView _indexOfTargetItemWithTranslation:"_indexOfTargetItemWithTranslation:roundingThreshold:allowActionIndex:allowOutOfBounds:" roundingThreshold:1 allowActionIndex:1 allowOutOfBounds:?];
      [(SFCapsuleCollectionView *)self _percentToActivatingTopActionWithTranslation:self->_offsetForPan.x, self->_offsetForPan.y];
      v53 = v52;
      [(SFCapsuleCollectionView *)self _percentToSelectItemIndex:v51];
      v55 = v54;
      [(SFCapsuleCollectionView *)self _swipeTranslationFactorWithPercentToTopAction:v53];
      v57 = v56;
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v58 = self->_gestureObservers;
      v59 = [(NSHashTable *)v58 countByEnumeratingWithState:&v162 objects:v179 count:16];
      if (v59)
      {
        v60 = v55 * v57;
        v61 = *v163;
        do
        {
          for (k = 0; k != v59; ++k)
          {
            if (*v163 != v61)
            {
              objc_enumerationMutation(v58);
            }

            v63 = *(*(&v162 + 1) + 8 * k);
            if (objc_opt_respondsToSelector())
            {
              [v63 capsuleCollectionView:self didUpdateProgress:v51 toSelectItemAtIndex:self->_panAxis progressToTopAction:v60 snapToAxis:v53];
            }
          }

          v59 = [(NSHashTable *)v58 countByEnumeratingWithState:&v162 objects:v179 count:16];
        }

        while (v59);
      }
    }

    linkedPageView = self->_linkedPageView;
    if (linkedPageView)
    {
      v65 = [(SFCapsuleCollectionViewLinkablePageView *)linkedPageView animationSettingsForCapsuleSelectionGesture];
      v161[0] = MEMORY[0x1E69E9820];
      v161[1] = v50;
      v161[2] = __42__SFCapsuleCollectionView__didReceivePan___block_invoke_3;
      v161[3] = &unk_1E721B360;
      v161[4] = self;
      [v65 performInteractive:1 animations:v161 completion:0];
    }

    goto LABEL_131;
  }

  v120 = selectedItemIndex;
  [(SFCapsuleCollectionViewLinkablePageView *)self->_linkedPageView didReceiveLinkedPanGesture:v129];
  v28 = [(NSArray *)self->_items objectAtIndexedSubscript:self->_selectedItemIndex];
  v121 = [v28 capsuleView];

  [v121 _setSafeAreaInsetsFrozen:0];
  [v121 setAllowsHighlight:1];
  x = self->_offsetForPan.x;
  y = self->_offsetForPan.y;
  v124 = self->_selectedItemIndex;
  if ([(SFCapsuleCollectionViewLinkablePageView *)self->_linkedPageView drivesCapsuleSelection])
  {
    nextSelectedItemIndexAfterPan = self->_nextSelectedItemIndexAfterPan;
    if (nextSelectedItemIndexAfterPan)
    {
      v32 = [(NSNumber *)nextSelectedItemIndexAfterPan integerValue];
      if (v32 >= [(NSArray *)self->_items count])
      {
        v70 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          [(SFCapsuleCollectionView *)&self->_items _didReceivePan:v70];
        }
      }

      else
      {
        v124 = v32;
      }
    }

    v71 = self->_nextSelectedItemIndexAfterPan;
    self->_nextSelectedItemIndexAfterPan = 0;

    v122 = 0;
  }

  else
  {
    if ([v129 state] == 3)
    {
      v66 = SFProjectedOffsetForOffsetWithVelocity(x, y, v11, v12, *MEMORY[0x1E69DE3A8], *MEMORY[0x1E69DE3A8]);
      [(SFCapsuleCollectionView *)self _percentToActivatingTopActionWithTranslation:?];
      v68 = v67;
      [(SFCapsuleCollectionView *)self _swipeTranslationFactorWithPercentToTopAction:?];
      if (fabs(x) <= fabs(y) && self->_topAction)
      {
        if (v68 >= 0.5)
        {
          v122 = 1;
          goto LABEL_78;
        }
      }

      else
      {
        v124 = [(SFCapsuleCollectionView *)self _indexOfTargetItemWithTranslation:v66 * v69 roundingThreshold:0.5];
      }
    }

    v122 = 0;
  }

LABEL_78:
  v119 = self->_selectedItemIndex;
  v72 = [(SFCapsuleCollectionView *)self _hasReachedTrailingActionPullThreshold];
  if (v119 != v124)
  {
    [(SFCapsuleCollectionView *)self unfreezeHiddenSupplementaries];
    v118 = 0;
    v75 = 2;
    if (v122)
    {
      v75 = 4;
    }

    goto LABEL_90;
  }

  if (!self->_trailingAction)
  {
    [(SFCapsuleCollectionView *)self unfreezeHiddenSupplementaries];
    if (v122)
    {
      v118 = 0;
      v75 = 4;
      goto LABEL_90;
    }

LABEL_89:
    v118 = 0;
    v75 = 5;
    goto LABEL_90;
  }

  v73 = v72;
  v74 = self->_selectedItemIndex + 1 == self->_numberOfItems;
  [(SFCapsuleCollectionView *)self unfreezeHiddenSupplementaries];
  v75 = 3;
  if (v122)
  {
    v75 = 4;
  }

  if (((v122 | (v74 && v73)) & 1) == 0)
  {
    goto LABEL_89;
  }

  v118 = v122 ^ 1 | (v74 && v73);
LABEL_90:
  self->_selectionGestureState = v75;
  [(SFCapsuleCollectionView *)self layOutToolbarBackdropView];
  *buf = 0;
  v156 = buf;
  v157 = 0x3032000000;
  v158 = __Block_byref_object_copy_;
  v159 = __Block_byref_object_dispose_;
  v160 = 0;
  v76 = MEMORY[0x1E69DD250];
  v151[0] = MEMORY[0x1E69E9820];
  v151[1] = 3221225472;
  v151[2] = __42__SFCapsuleCollectionView__didReceivePan___block_invoke_176;
  v151[3] = &unk_1E721BD30;
  v151[4] = self;
  v154 = v124;
  v152 = v127;
  v153 = buf;
  [v76 safari_performWithoutRetargetingAnimations:v151];
  v77 = objc_alloc_init(SFTransitionCoordinator);
  objc_storeWeak(&self->_currentTransitionCoordinator, v77);
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v78 = self->_gestureObservers;
  v79 = [(NSHashTable *)v78 countByEnumeratingWithState:&v147 objects:v178 count:16];
  if (v79)
  {
    v80 = *v148;
    do
    {
      for (m = 0; m != v79; ++m)
      {
        if (*v148 != v80)
        {
          objc_enumerationMutation(v78);
        }

        v82 = *(*(&v147 + 1) + 8 * m);
        if (objc_opt_respondsToSelector())
        {
          v83 = [(SFTransitionCoordinator *)v77 publicCoordinator];
          [v82 capsuleCollectionView:self willEndSelectionGestureWithCoordinator:v83];
        }
      }

      v79 = [(NSHashTable *)v78 countByEnumeratingWithState:&v147 objects:v178 count:16];
    }

    while (v79);
  }

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v84 = [(NSDictionary *)self->_supplementaryViews allValues];
  v85 = [v84 countByEnumeratingWithState:&v143 objects:v177 count:16];
  if (v85)
  {
    v86 = *v144;
    do
    {
      for (n = 0; n != v85; ++n)
      {
        if (*v144 != v86)
        {
          objc_enumerationMutation(v84);
        }

        v88 = *(*(&v143 + 1) + 8 * n);
        if (objc_opt_respondsToSelector())
        {
          v89 = [(SFTransitionCoordinator *)v77 publicCoordinator];
          [v88 willBeginTransitionWithCoordinator:v89];
        }
      }

      v85 = [v84 countByEnumeratingWithState:&v143 objects:v177 count:16];
    }

    while (v85);
  }

  v142[0] = MEMORY[0x1E69E9820];
  v142[1] = 3221225472;
  v142[2] = __42__SFCapsuleCollectionView__didReceivePan___block_invoke_3_182;
  v142[3] = &unk_1E721BD58;
  v142[4] = self;
  [(SFTransitionCoordinator *)v77 addAnimations:v142];
  v141[0] = MEMORY[0x1E69E9820];
  v141[1] = 3221225472;
  v141[2] = __42__SFCapsuleCollectionView__didReceivePan___block_invoke_4;
  v141[3] = &unk_1E721BD80;
  v141[4] = self;
  v141[5] = buf;
  [(SFTransitionCoordinator *)v77 addCompletion:v141];
  [(SFCapsuleCollectionView *)self setSelectedItemIndex:v124];
  self->_previousVelocity = *MEMORY[0x1E695EFF8];
  [(SFCapsuleCollectionView *)self _updateOffsetForPan];
  [(SFCapsuleCollectionView *)self pageWidth];
  v91 = v120 * v90 - v90 * self->_selectedItemIndex;
  v92 = 0.0;
  if (!_SFEqualWithEpsilon(v91, x, 0.1))
  {
    v92 = v11 / (v91 - x);
  }

  [(SFCapsuleCollectionView *)self setNeedsLayout];
  objc_storeWeak(&self->_currentTransitionCoordinator, 0);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__SFCapsuleCollectionView__didReceivePan___block_invoke_183;
  aBlock[3] = &unk_1E721B360;
  v93 = v77;
  v140 = v93;
  v94 = _Block_copy(aBlock);
  v137[0] = MEMORY[0x1E69E9820];
  v137[1] = 3221225472;
  v137[2] = __42__SFCapsuleCollectionView__didReceivePan___block_invoke_2_184;
  v137[3] = &unk_1E721B360;
  v95 = v93;
  v138 = v95;
  v96 = _Block_copy(v137);
  v97 = self->_linkedPageView;
  if (v97)
  {
    v98 = [(SFCapsuleCollectionViewLinkablePageView *)v97 animationSettingsForCapsuleSelectionGesture];
    v99 = v136;
    v136[0] = MEMORY[0x1E69E9820];
    v136[1] = 3221225472;
    v136[2] = __42__SFCapsuleCollectionView__didReceivePan___block_invoke_3_185;
    v136[3] = &unk_1E721BDA8;
    v136[4] = v96;
    [v98 performInteractive:0 animations:v94 completion:v136];
  }

  else
  {
    v100 = MEMORY[0x1E69DD250];
    v183 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
    minimum = v183.minimum;
    maximum = v183.maximum;
    preferred = v183.preferred;
    v99 = v135;
    v135[0] = MEMORY[0x1E69E9820];
    v135[1] = 3221225472;
    v135[2] = __42__SFCapsuleCollectionView__didReceivePan___block_invoke_4_187;
    v135[3] = &unk_1E721BA70;
    v135[4] = v96;
    *&v104 = minimum;
    *&v105 = maximum;
    *&v106 = preferred;
    [v100 sf_animateUsingDefaultDampedSpringWithDelay:2 initialSpringVelocity:v94 options:v135 preferredFrameRateRange:0.0 animations:v92 completion:{v104, v105, v106}];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (v119 != v124 && ([(SFCapsuleCollectionViewLinkablePageView *)self->_linkedPageView drivesCapsuleSelection]& 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained capsuleCollectionView:self didSelectItemAtIndex:v124];
  }

  if (v122)
  {
    v107 = self->_topAction;
    v108 = objc_alloc_init(MEMORY[0x1E69DC8F0]);
    [v108 sendAction:v107];
  }

  if (v118)
  {
    v109 = [(NSArray *)self->_items lastObject];
    v110 = [v109 capsuleView];
    v111 = [v110 contentView];

    v112 = self->_trailingAction;
    [v111 sendAction:v112];
  }

  v125 = v96;
  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  v113 = self->_gestureObservers;
  v114 = [(NSHashTable *)v113 countByEnumeratingWithState:&v131 objects:v176 count:16];
  if (v114)
  {
    v115 = *v132;
    do
    {
      for (ii = 0; ii != v114; ++ii)
      {
        if (*v132 != v115)
        {
          objc_enumerationMutation(v113);
        }

        v117 = *(*(&v131 + 1) + 8 * ii);
        if (objc_opt_respondsToSelector())
        {
          [v117 capsuleCollectionViewDidEndSelectionGesture:self];
        }
      }

      v114 = [(NSHashTable *)v113 countByEnumeratingWithState:&v131 objects:v176 count:16];
    }

    while (v114);
  }

  self->_selectionGestureState = 0;
  v130[0] = MEMORY[0x1E69E9820];
  v130[1] = 3221225472;
  v130[2] = __42__SFCapsuleCollectionView__didReceivePan___block_invoke_5;
  v130[3] = &unk_1E721B360;
  v130[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v130 animations:0.15];
  [(SFCapsuleCollectionView *)self _setUpdateRequestActive:0];

  _Block_object_dispose(buf, 8);
LABEL_131:
}

uint64_t __42__SFCapsuleCollectionView__didReceivePan___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateCapsuleAlpha];
  v2 = *(a1 + 32);

  return [v2 layOutToolbarBackdropView];
}

void __42__SFCapsuleCollectionView__didReceivePan___block_invoke_176(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 1144);
  v4 = *(v2 + 1152);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __42__SFCapsuleCollectionView__didReceivePan___block_invoke_2_177;
  v13[3] = &unk_1E721B9D0;
  v14 = *(a1 + 40);
  v5 = v3;
  v6 = [v4 indexesOfObjectsPassingTest:v13];
  v7 = [v6 mutableCopy];
  v8 = [*(a1 + 32) _indexesOfVisibleItemsWithSelectedItemIndex:*(a1 + 56)];
  [v7 addIndexes:v8];

  v9 = [*(*(a1 + 32) + 1152) objectsAtIndexes:v7];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  [*(a1 + 32) _incrementAnimationCountForItems:*(*(*(a1 + 48) + 8) + 40)];
  v12 = [*(*(a1 + 32) + 1144) mutableCopy];
  [v12 removeIndexes:v5];
  [*(a1 + 32) _layOutItems:*(*(a1 + 32) + 1152) atIndexes:v12 selectedItemIndex:*(*(a1 + 32) + 1056)];
}

void __42__SFCapsuleCollectionView__didReceivePan___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) _decrementAnimationCountForItems:*(*(*(a1 + 40) + 8) + 40)];
  [*(a1 + 32) _updateCanBlurCapsules];
  v2 = WBS_LOG_CHANNEL_PREFIXLoweredTabBar();
  if (os_signpost_enabled(v2))
  {
    *v3 = 0;
    _os_signpost_emit_with_name_impl(&dword_18B7AC000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "PanGesture", "", v3, 2u);
  }
}

uint64_t __42__SFCapsuleCollectionView__didReceivePan___block_invoke_183(uint64_t a1)
{
  [*(a1 + 32) disableKeyframeAnimations];
  v2 = *(a1 + 32);

  return [v2 invokeAnimations];
}

- (void)_setUpdateRequestActive:(BOOL)a3
{
  if (a3)
  {
    MEMORY[0x1EEE4E388](&panningUpdateRequest, 1638401);
  }

  else
  {
    MEMORY[0x1EEE4E390](&panningUpdateRequest, 1638401);
  }
}

- (double)_percentToActivatingTopActionWithTranslation:(CGPoint)a3
{
  if (!self->_topAction)
  {
    return 0.0;
  }

  y = a3.y;
  [(SFCapsuleCollectionView *)self bounds];
  Height = CGRectGetHeight(v6);
  return fmax(SFRubberBandOffsetForOffset(y / (Height / -3.0), 0.0, 1.0, 1.0), 0.0);
}

- (double)_swipeTranslationFactorWithPercentToTopAction:(double)a3
{
  if (!self->_topAction)
  {
    return 1.0;
  }

  v3 = _SFClamp(a3, 0.0, 1.0);
  return 1.0 - v3 * v3;
}

void __46__SFCapsuleCollectionView__updateCapsuleAlpha__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = [v7 capsuleView];
  v9 = [v8 needsInitialLayout];

  if (v9)
  {
    v10 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__SFCapsuleCollectionView__updateCapsuleAlpha__block_invoke_3;
    v11[3] = &unk_1E721BDF8;
    v13 = *(a1 + 32);
    v12 = v7;
    v14 = a3;
    v15 = a4;
    [v10 safari_performWithoutRetargetingAnimations:v11];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (CGPoint)selectedCapsuleOffset
{
  x = self->_offsetForPan.x;
  y = self->_offsetForPan.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)setItemsAreHidden:(BOOL)a3
{
  if (self->_itemsAreHidden != a3)
  {
    self->_itemsAreHidden = a3;
    [(SFCapsuleCollectionView *)self setNeedsLayout];
  }
}

- (void)beginHiddenExemptionForCapsule
{
  capsuleHiddenExemptionCount = self->_capsuleHiddenExemptionCount;
  self->_capsuleHiddenExemptionCount = capsuleHiddenExemptionCount + 1;
  if (!capsuleHiddenExemptionCount && self->_itemsAreHidden)
  {
    [(SFCapsuleCollectionView *)self setNeedsLayout];
  }
}

- (void)endHiddenExemptionForCapsule
{
  v2 = self->_capsuleHiddenExemptionCount - 1;
  self->_capsuleHiddenExemptionCount = v2;
  if (!v2 && self->_itemsAreHidden)
  {
    [(SFCapsuleCollectionView *)self setNeedsLayout];
  }
}

- (void)beginHiddenExemptionForSupplementaryWithIdentifier:(id)a3
{
  v4 = a3;
  supplementaryHiddenExemptionCount = self->_supplementaryHiddenExemptionCount;
  v8 = v4;
  if (!supplementaryHiddenExemptionCount)
  {
    v6 = [MEMORY[0x1E696AB50] set];
    v7 = self->_supplementaryHiddenExemptionCount;
    self->_supplementaryHiddenExemptionCount = v6;

    v4 = v8;
    supplementaryHiddenExemptionCount = self->_supplementaryHiddenExemptionCount;
  }

  [(NSCountedSet *)supplementaryHiddenExemptionCount addObject:v4];
  if ([(NSCountedSet *)self->_supplementaryHiddenExemptionCount countForObject:v8]== 1 && self->_itemsAreHidden)
  {
    [(SFCapsuleCollectionView *)self setNeedsLayout];
  }
}

- (void)endHiddenExemptionForSupplementaryWithIdentifier:(id)a3
{
  supplementaryHiddenExemptionCount = self->_supplementaryHiddenExemptionCount;
  v5 = a3;
  [(NSCountedSet *)supplementaryHiddenExemptionCount removeObject:v5];
  v6 = [(NSCountedSet *)self->_supplementaryHiddenExemptionCount countForObject:v5];

  if (!v6 && self->_itemsAreHidden)
  {

    [(SFCapsuleCollectionView *)self setNeedsLayout];
  }
}

- (void)setSelectedItemUsesLiftedPreviewAppearance:(BOOL)a3 animator:(id)a4
{
  if (self->_selectedItemUsesLiftedPreviewAppearance != a3)
  {
    v18 = v4;
    v19 = v5;
    self->_selectedItemUsesLiftedPreviewAppearance = a3;
    items = self->_items;
    selectedItemIndex = self->_selectedItemIndex;
    v10 = a4;
    v11 = [(NSArray *)items objectAtIndexedSubscript:selectedItemIndex];
    v12 = [v11 capsuleView];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __79__SFCapsuleCollectionView_setSelectedItemUsesLiftedPreviewAppearance_animator___block_invoke;
    v14[3] = &unk_1E721B600;
    v17 = a3;
    v15 = v12;
    v16 = self;
    v13 = v12;
    [v10 addAnimations:v14];
  }
}

uint64_t __79__SFCapsuleCollectionView_setSelectedItemUsesLiftedPreviewAppearance_animator___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [MEMORY[0x1E69C8880] isSolariumEnabled];
  if ([*(a1 + 40) selectedItemIsMinimized] && (v3 & 1) == 0 && (v2 & 1) != 0)
  {
    v4 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
  }

  v5 = v4;
  [*(a1 + 32) setBackgroundColor:v4];

  [*(a1 + 32) setBackgroundStyle:{objc_msgSend(*(a1 + 40), "selectedItemBackgroundStyle")}];
  [*(a1 + 40) _updateVisualEffectGroupName];
  v6 = *(a1 + 40);

  return [v6 _updateCapsuleAlpha];
}

- (double)_distanceToTopEdgeIncludingDeceleration:(BOOL)a3
{
  v3 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained capsuleCollectionView:self distanceToTopEdgeIncludingDeceleration:v3];
    v7 = v6;
  }

  else
  {
    v7 = 1.79769313e308;
  }

  return v7;
}

- (CGAffineTransform)_selectedItemContentTransformForFrame:(SEL)a3
{
  result = [(SFCapsuleCollectionView *)self _shouldInteractivelySquish];
  if (result & 1) != 0 && ((result = [(SFCapsuleCollectionView *)self selectedItemIsMinimized], !result) || (result = [(SFCapsuleCollectionView *)self _shouldUseNormalLayoutForMinimizedCapsule], (result)) && (self->_minimizationFlags)
  {
    [(SFCapsuleCollectionView *)self _selectedItemMinimizationPercent];
    v10 = v9;
    [(SFCapsuleCollectionView *)self minimizedContentScale];
    v12 = _SFInterpolate(1.0, v11, v10);
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {

      return CGAffineTransformMakeScale(retstr, v12, v12);
    }

    else
    {
      [(SFCapsuleCollectionView *)self capsuleFrame];
      sx = v12;
      [(SFCapsuleCollectionView *)self minimizedCapsuleFrame];
      UIRectGetCenter();
      v14 = v13;
      UIRectGetCenter();
      v16 = _SFInterpolate(v14, v15, v10);
      UIRectGetCenter();
      memset(&v20, 0, sizeof(v20));
      CGAffineTransformMakeTranslation(&v20, 0.0, v16 - v17);
      v19 = v20;
      return CGAffineTransformScale(retstr, &v19, sx, sx);
    }
  }

  else
  {
    v7 = MEMORY[0x1E695EFD0];
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v8;
    *&retstr->tx = *(v7 + 32);
  }

  return result;
}

- (BOOL)_shouldUseNormalLayoutForMinimizedCapsule
{
  if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
  {
    v3 = [(SFCapsuleCollectionView *)self _shouldInteractivelySquish];
    if (!v3)
    {
      return v3;
    }

    if (self->_minimizationFlags)
    {
      v3 = [(SFCapsuleCollectionView *)self selectedItemIsMinimized];
      if (!v3)
      {
        return v3;
      }

      if ((self->_minimizationFlags & 4) != 0)
      {
        [(SFCapsuleCollectionView *)self _selectedItemMinimizationPercent];
        LOBYTE(v3) = v4 < 1.0;
        return v3;
      }
    }
  }

  LOBYTE(v3) = 0;
  return v3;
}

- (double)_insetForCapsuleEdgeWithInsets:(UIEdgeInsets)a3
{
  bottom = a3.bottom;
  top = a3.top;
  if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0 && -[SFCapsuleCollectionView _layoutStyleIsTop](self, "_layoutStyleIsTop"))
  {
    return top;
  }

  return bottom;
}

- (void)_sendMinimizationDidUpdateToObservers
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_gestureObservers;
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
          [v8 capsuleCollectionViewDidUpdateMinimizationGesture:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_sendMinimizationDidEndToObservers
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_gestureObservers;
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
          [v8 capsuleCollectionViewDidEndMinimizationGesture:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (BOOL)_shouldToggleMinimizedWithTranslation:(double)a3 velocity:(double)a4 gestureEnded:(BOOL)a5
{
  v5 = a5;
  v9 = [(SFCapsuleCollectionView *)self _layoutStyleIsTop];
  v10 = ([MEMORY[0x1E69C8880] isSolariumEnabled] ^ 1) & v9;
  if ([(SFCapsuleCollectionView *)self selectedItemIsMinimized])
  {
    v11 = fabs(a4);
    if ((self->_minimizationFlags & 2) == 0)
    {
      v11 = a4;
    }

    if (v5 && v11 >= 250.0)
    {
      return 1;
    }

    if (v5 && [(SFCapsuleCollectionView *)self _layoutStyleIsTop]&& ([(SFCapsuleCollectionView *)self _overscrollDistanceForTopEdge], v17 != 0.0))
    {
      return 1;
    }

    else if (a3 >= 62.0)
    {
      return v10 ^ 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    [(SFCapsuleCollectionView *)self obscuredInsetsForState:0];
    v14 = v13;
    [(SFCapsuleCollectionView *)self obscuredInsetsForState:1];
    v16 = v14 - v15;
    if (!v10 || v5)
    {
      [(SFCapsuleCollectionView *)self _distanceToTopEdgeIncludingDeceleration:1];
      return v18 >= v16 && a3 >= 31.0;
    }

    else
    {
      return v16 <= a3;
    }
  }
}

- (BOOL)_translationIsAlmostHorizontal:(CGPoint)a3
{
  if (a3.y < 0.0)
  {
    a3.y = -a3.y;
  }

  if (a3.x < 0.0)
  {
    a3.x = -a3.x;
  }

  return a3.y <= a3.x * self->_verticalSwipeThreshold;
}

- (void)_setCapsuleSafeAreaInsetsFrozen:(BOOL)a3
{
  items = self->_items;
  indexesOfLoadedViews = self->_indexesOfLoadedViews;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__SFCapsuleCollectionView__setCapsuleSafeAreaInsetsFrozen___block_invoke;
  v5[3] = &__block_descriptor_33_e44_v32__0__SFCapsuleCollectionViewItem_8Q16_B24l;
  v6 = a3;
  [(NSArray *)items enumerateObjectsAtIndexes:indexesOfLoadedViews options:0 usingBlock:v5];
}

void __59__SFCapsuleCollectionView__setCapsuleSafeAreaInsetsFrozen___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 capsuleView];
  [v3 _setSafeAreaInsetsFrozen:v2];
}

- (void)beginDraggingWithOffset:(double)a3
{
  v23 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_items count])
  {
    if (self->_selectedItemState != 2 && !self->_forceHidden)
    {
      v5 = [(NSArray *)self->_items objectAtIndexedSubscript:self->_selectedItemIndex];
      v6 = [v5 capsuleIsDetached];

      if ((v6 & 1) == 0 && self->_minimizationScrollBehavior != 2)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        if ((objc_opt_respondsToSelector() & 1) == 0 || [WeakRetained capsuleCollectionViewAllowsMinimizationGesture:self])
        {
          v8 = (objc_opt_respondsToSelector() & 1) != 0 && ([WeakRetained capsuleCollectionViewBoundaryEdgesForScrollableContent:self] & 5) == 4;
          v9 = [(SFCapsuleCollectionView *)self selectedItemIsMinimized];
          v10 = 4;
          if (v9 && v8)
          {
            v10 = 7;
          }

          if (!v8)
          {
            v10 = 5;
          }

          if (!v9)
          {
            v10 = !v8;
          }

          self->_minimizationFlags = v10;
          self->_minimizationStartingDragOffset = a3;
          [(SFCapsuleCollectionView *)self _distanceToTopEdgeIncludingDeceleration:0];
          self->_distanceToTopEdgeAtMinimizationBegan = v11;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v12 = self->_gestureObservers;
          v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v19;
            do
            {
              v16 = 0;
              do
              {
                if (*v19 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v18 + 1) + 8 * v16);
                if (objc_opt_respondsToSelector())
                {
                  [v17 capsuleCollectionViewDidBeginMinimizationGesture:{self, v18}];
                }

                ++v16;
              }

              while (v14 != v16);
              v14 = [(NSHashTable *)v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
            }

            while (v14);
          }
        }
      }
    }
  }
}

- (void)_updateDragWithOffset:(double)a3 velocity:(double)a4 ended:(BOOL)a5
{
  minimizationFlags = self->_minimizationFlags;
  if ((minimizationFlags & 1) != 0 && !self->_forceHidden)
  {
    v7 = a5;
    if (a5)
    {
      self->_minimizationFlags = minimizationFlags & 0xFFFFFFFFFFFFFFEELL | 0x10;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v61 = WeakRetained;
    v11 = (objc_opt_respondsToSelector() & 1) == 0 || ([WeakRetained capsuleCollectionViewBoundaryEdgesForScrollableContent:self] & 4) == 0;
    v12 = [(SFCapsuleCollectionView *)self selectedItemIsMinimized];
    minimizationStartingDragOffset = self->_minimizationStartingDragOffset;
    self->_minimizationLastDragOffset = a3;
    v14 = minimizationStartingDragOffset - a3;
    if (v12)
    {
      v15 = v14;
    }

    else
    {
      v15 = -v14;
    }

    if (v14 < 0.0)
    {
      v14 = -v14;
    }

    if ((self->_minimizationFlags & 2) == 0)
    {
      v14 = v15;
    }

    v16 = fmax(v14, 0.0);
    selectedItemState = self->_selectedItemState;
    offsetForMinimization = self->_offsetForMinimization;
    if ([(SFCapsuleCollectionView *)self _shouldToggleMinimizedWithTranslation:v7 velocity:v16 gestureEnded:a4])
    {
      self->_previousMinimizationVelocity = *MEMORY[0x1E695EFF8];
      [(SFCapsuleCollectionView *)self _setCapsuleSafeAreaInsetsFrozen:0];
      selectedItemState = !v12;
      v18 = [(SFCapsuleCollectionView *)self _coordinatorForUpdatingSelectedItemFromState:self->_selectedItemState toState:selectedItemState];
      [(SFCapsuleCollectionView *)self _setOffsetForMinimization:0.0];
      self->_minimizationStartingDragOffset = a3;
      if ((self->_minimizationFlags & 2) != 0)
      {
        self->_minimizationFlags = 0;
      }

      v19 = 1;
    }

    else if (v7)
    {
      self->_previousMinimizationVelocity = *MEMORY[0x1E695EFF8];
      [(SFCapsuleCollectionView *)self _setCapsuleSafeAreaInsetsFrozen:0];
      v20 = _SFEqualWithEpsilon(0.0, self->_offsetForMinimization, 0.1);
      v19 = !v20;
      if (v20)
      {
        v18 = 0;
      }

      else
      {
        v18 = objc_alloc_init(SFTransitionCoordinator);
        [(SFCapsuleCollectionView *)self _willBeginBackdropHeightAnimation];
        v29 = [(SFTransitionCoordinator *)v18 publicCoordinator];
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __64__SFCapsuleCollectionView__updateDragWithOffset_velocity_ended___block_invoke;
        v71[3] = &unk_1E721BD58;
        v71[4] = self;
        [v29 addRetargetableAnimations:v71];

        v70[0] = MEMORY[0x1E69E9820];
        v70[1] = 3221225472;
        v70[2] = __64__SFCapsuleCollectionView__updateDragWithOffset_velocity_ended___block_invoke_2;
        v70[3] = &unk_1E721B360;
        v70[4] = self;
        [(SFTransitionCoordinator *)v18 addCompletion:v70];
      }

      [(SFCapsuleCollectionView *)self _setOffsetForMinimization:0.0];
    }

    else
    {
      if (v11)
      {
        [(SFCapsuleCollectionView *)self obscuredInsetsForState:0];
        v22 = v21;
        [(SFCapsuleCollectionView *)self obscuredInsetsForState:1];
        v24 = v23;
        if (v12 != [(SFCapsuleCollectionView *)self _layoutStyleIsTop])
        {
          v25 = -1.0;
        }

        else
        {
          v25 = 1.0;
        }

        if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) != 0 || v22 == v24)
        {
          v30 = [(SFCapsuleCollectionView *)self pageForIndex:self->_selectedItemIndex];
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __64__SFCapsuleCollectionView__updateDragWithOffset_velocity_ended___block_invoke_3;
          aBlock[3] = &unk_1E721BE68;
          aBlock[4] = self;
          v31 = v30;
          v69 = v31;
          v32 = _Block_copy(aBlock);
          v33 = v32;
          cachedMinimizedLayout = self->_cachedMinimizedLayout;
          if (!cachedMinimizedLayout)
          {
            cachedMinimizedLayout = self->_minimizedLayout;
          }

          v72.origin.x = (*(v32 + 2))(v32, cachedMinimizedLayout);
          MinY = CGRectGetMinY(v72);
          cachedNormalLayout = self->_cachedNormalLayout;
          if (!cachedNormalLayout)
          {
            cachedNormalLayout = self->_normalLayout;
          }

          v73.origin.x = (v33)[2](v33, cachedNormalLayout);
          v37 = MinY - CGRectGetMinY(v73);
          v38 = 62.0;
          if (!v12)
          {
            v38 = 31.0;
          }

          v39 = v37 / 3.0;
          v40 = _SFClampPercent(v16, 0.0, v38);
          v28 = _SFRoundFloatToPixels(v25 * (v40 * v39));
        }

        else
        {
          v26 = v22 - v24;
          if (v12 && !self->_minimizationStyle)
          {
            [(SFCapsuleCollectionView *)self _overscrollDistanceForTopEdge];
            v26 = fmin(v26, v27);
          }

          v28 = v25 * fmax(fmin(v26, v16), 0.0);
        }

        [(SFCapsuleCollectionView *)self _setOffsetForMinimization:v28];
        [(SFCapsuleCollectionView *)self _setCapsuleSafeAreaInsetsFrozen:1];
      }

      v19 = 0;
      v18 = 0;
    }

    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __64__SFCapsuleCollectionView__updateDragWithOffset_velocity_ended___block_invoke_4;
    v67[3] = &unk_1E721B360;
    v67[4] = self;
    v41 = _Block_copy(v67);
    v42 = self->_selectedItemState;
    v43 = selectedItemState != v42 && v7;
    if (selectedItemState == v42)
    {
      if (v19)
      {
        location = &self->_currentTransitionCoordinator;
        objc_storeWeak(&self->_currentTransitionCoordinator, v18);
        goto LABEL_53;
      }
    }

    else
    {
      self->_minimizationFlags = self->_minimizationFlags & 0xFFFFFFFFFFFFFFFBLL | (4 * (selectedItemState == 1));
      if (v19)
      {
        location = &self->_currentTransitionCoordinator;
        objc_storeWeak(&self->_currentTransitionCoordinator, v18);
        [(SFCapsuleCollectionView *)self _performVisualEffectTransitionWithCoordinator:v18];
        v44 = objc_loadWeakRetained(&self->_delegate);
        if (objc_opt_respondsToSelector())
        {
          v45 = [(SFTransitionCoordinator *)v18 publicCoordinator];
          [v44 capsuleCollectionView:self selectedItemWillChangeToState:selectedItemState options:0 coordinator:v45];
        }

LABEL_53:
        v63[0] = MEMORY[0x1E69E9820];
        v63[1] = 3221225472;
        v63[2] = __64__SFCapsuleCollectionView__updateDragWithOffset_velocity_ended___block_invoke_6;
        v63[3] = &unk_1E721BE90;
        v63[4] = self;
        v64 = v41;
        v65 = !v43;
        [(SFTransitionCoordinator *)v18 addAnimations:v63];
        v46 = [(NSArray *)self->_items objectAtIndexedSubscript:self->_selectedItemIndex];
        v47 = [v46 capsuleView];

        if (!self->_minimizationStyle && (selectedItemState == 1) == (self->_selectedItemState != 1))
        {
          v48 = [(SFTransitionCoordinator *)v18 publicCoordinator];
          [v47 willChangeToMinimized:selectedItemState == 1 coordinator:v48];
        }

        selectedItemAccessoryViews = self->_selectedItemAccessoryViews;
        v50 = [MEMORY[0x1E696AD98] numberWithInteger:selectedItemState];
        v51 = [(NSMutableDictionary *)selectedItemAccessoryViews objectForKeyedSubscript:v50];
        v52 = [(SFTransitionCoordinator *)v18 publicCoordinator];
        v53 = v47;
        v54 = v52;
        v60 = v53;
        [v53 setAccessoryView:v51 coordinator:v52];

        objc_storeWeak(location, 0);
        self->_selectedItemState = selectedItemState;
        if (v7)
        {
          self->_minimizationFlags = 0;
        }

        [(SFCapsuleCollectionView *)self _updateShowsMinimizedProgressView];
        if ([MEMORY[0x1E69C8880] isSolariumEnabled])
        {
          v55 = 1;
        }

        else
        {
          v58 = [(SFCapsuleCollectionView *)self _shouldInteractivelySquish];
          v55 = 1;
          if (selectedItemState != v42)
          {
            v56 = v61;
            if (v58 && !v7 && offsetForMinimization != 0.0)
            {
              if (objc_opt_respondsToSelector())
              {
                v55 = [v61 capsuleCollectionViewContentScaleCompletesMinimization:self] ^ 1;
              }

              else
              {
                v55 = 0;
              }
            }

            goto LABEL_61;
          }
        }

        v56 = v61;
LABEL_61:
        v57 = [(SFCapsuleCollectionView *)self window];
        [(SFTransitionCoordinator *)v18 performTransitionWithAnimation:v55 inContextOfContainerView:v57];

        if (v7)
        {
          [(SFCapsuleCollectionView *)self _sendMinimizationDidEndToObservers];
        }

LABEL_72:
        return;
      }
    }

    if (v7)
    {
      self->_minimizationFlags = 0;
    }

    v56 = v61;
    if (self->_backdropHeightAnimationCount)
    {
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __64__SFCapsuleCollectionView__updateDragWithOffset_velocity_ended___block_invoke_5;
      v66[3] = &unk_1E721B360;
      v66[4] = self;
      [MEMORY[0x1E69DD250] _performWithoutRetargetingAnimations:v66];
    }

    v41[2](v41);
    if (!v43)
    {
      [(SFCapsuleCollectionView *)self _sendMinimizationDidUpdateToObservers];
    }

    if (v7)
    {
      [(SFCapsuleCollectionView *)self _sendMinimizationDidEndToObservers];
    }

    goto LABEL_72;
  }
}

double __64__SFCapsuleCollectionView__updateDragWithOffset_velocity_ended___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([MEMORY[0x1E69C8880] isSolariumEnabled] && objc_msgSend(*(a1 + 32), "_layoutStyleIsTop"))
  {
    v4 = [v3 bottomBackdropInfoForPage:*(a1 + 40)];
  }

  else
  {
    v4 = [v3 capsuleInfoForPage:*(a1 + 40)];
  }

  v5 = v4;
  [v4 frame];
  v7 = v6;

  return v7;
}

void __64__SFCapsuleCollectionView__updateDragWithOffset_velocity_ended___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) _shouldUseNormalLayoutForMinimizedCapsule];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v3 + 1048);
  }

  v5 = [*(v3 + 1152) objectAtIndexedSubscript:*(v3 + 1056)];
  v6 = [v5 capsuleView];
  v7 = [v6 state];

  if (v7 != v4)
  {
    v8 = *(a1 + 32);
    v9 = v8[132];

    [v8 _updateStateFlagsForContentViewAtIndex:v9];
  }
}

uint64_t __64__SFCapsuleCollectionView__updateDragWithOffset_velocity_ended___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) layoutIfNeeded];
  result = (*(*(a1 + 40) + 16))();
  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 32);

    return [v3 _sendMinimizationDidUpdateToObservers];
  }

  return result;
}

- (void)_didReceiveDismissPan:(id)a3
{
  v10 = a3;
  if ([v10 state] == 2)
  {
    [v10 translationInView:self];
    v5 = v4;
    v6 = [(NSArray *)self->_items objectAtIndexedSubscript:self->_selectedItemIndex];
    v7 = [v6 capsuleView];
    [v7 frame];
    Height = CGRectGetHeight(v12);

    if (v5 >= Height * 0.5)
    {
      [v10 setEnabled:0];
      [v10 setEnabled:1];
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained capsuleCollectionViewWillHideKeyboard:self];
    }
  }
}

- (void)setSelectedItemState:(int64_t)a3 options:(int64_t)a4 animated:(BOOL)a5
{
  if (self->_selectedItemState != a3)
  {
    v6 = a5;
    v9 = [SFCapsuleCollectionView _setSelectedItemStateWithoutPerformingTransition:"_setSelectedItemStateWithoutPerformingTransition:options:" options:?];
    objc_storeWeak(&self->_currentTransitionCoordinator, v9);
    v8 = [(SFCapsuleCollectionView *)self window];
    [v9 performTransitionWithAnimation:v6 inContextOfContainerView:v8];

    objc_storeWeak(&self->_currentTransitionCoordinator, 0);
  }
}

- (id)_setSelectedItemStateWithoutPerformingTransition:(int64_t)a3 options:(int64_t)a4
{
  v7 = [(SFCapsuleCollectionView *)self _coordinatorForUpdatingSelectedItemFromState:self->_selectedItemState toState:a3];
  v8 = (a3 == 1) ^ (self->_selectedItemState != 1);
  objc_storeWeak(&self->_currentTransitionCoordinator, v7);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v10 = [v7 publicCoordinator];
    [WeakRetained capsuleCollectionView:self selectedItemWillChangeToState:a3 options:a4 coordinator:v10];
  }

  objc_storeWeak(&self->_currentTransitionCoordinator, 0);
  v11 = [(NSArray *)self->_items objectAtIndexedSubscript:self->_selectedItemIndex];
  v12 = [v11 capsuleView];

  if (!((self->_minimizationStyle != 0) | v8 & 1))
  {
    v13 = [v7 publicCoordinator];
    [v12 willChangeToMinimized:a3 == 1 coordinator:v13];
  }

  selectedItemAccessoryViews = self->_selectedItemAccessoryViews;
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v16 = [(NSMutableDictionary *)selectedItemAccessoryViews objectForKeyedSubscript:v15];
  v17 = [v7 publicCoordinator];
  [v12 setAccessoryView:v16 coordinator:v17];

  self->_selectedItemState = a3;
  [(SFCapsuleCollectionView *)self _updateShowsMinimizedProgressView];
  if (self->_keyboardHeight != 0.0 && self->_backdropHeightAnimationCount)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __84__SFCapsuleCollectionView__setSelectedItemStateWithoutPerformingTransition_options___block_invoke;
    v19[3] = &unk_1E721B360;
    v19[4] = self;
    [MEMORY[0x1E69DD250] _animateByRetargetingAnimations:v19 completion:0];
  }

  if ((v8 & 1) == 0 && self->_numberOfItems)
  {
    [(SFCapsuleCollectionView *)self _performVisualEffectTransitionWithCoordinator:v7];
  }

  return v7;
}

- (void)_performVisualEffectTransitionWithCoordinator:(id)a3
{
  if (self->_minimizationStyle != 1)
  {
    v7[7] = v3;
    v7[8] = v4;
    v6 = a3;
    [(SFCapsuleCollectionView *)self beginVisualEffectTransition];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __73__SFCapsuleCollectionView__performVisualEffectTransitionWithCoordinator___block_invoke;
    v7[3] = &unk_1E721B360;
    v7[4] = self;
    [v6 addCompletion:v7];
  }
}

- (id)_coordinatorForUpdatingSelectedItemFromState:(int64_t)a3 toState:(int64_t)a4
{
  v6 = a4 == 1;
  v7 = a3 == 1;
  v8 = v7 ^ v6;
  if (v7 != v6)
  {
    [(SFCapsuleCollectionView *)self _willBeginBackdropHeightAnimation];
  }

  v9 = [SFTransitionCoordinator alloc];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__SFCapsuleCollectionView__coordinatorForUpdatingSelectedItemFromState_toState___block_invoke;
  v16[3] = &unk_1E721BD58;
  v16[4] = self;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__SFCapsuleCollectionView__coordinatorForUpdatingSelectedItemFromState_toState___block_invoke_2;
  v14[3] = &unk_1E721BEB8;
  v15 = v8;
  v14[4] = self;
  v14[5] = a3;
  v10 = [(SFTransitionCoordinator *)v9 initWithAnimations:v16 completion:v14];
  v11 = [(SFTransitionCoordinator *)v10 publicCoordinator];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__SFCapsuleCollectionView__coordinatorForUpdatingSelectedItemFromState_toState___block_invoke_3;
  v13[3] = &unk_1E721BD58;
  v13[4] = self;
  [v11 addRetargetableAnimations:v13];

  return v10;
}

void *__80__SFCapsuleCollectionView__coordinatorForUpdatingSelectedItemFromState_toState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateStateFlagsForContentViewAtIndex:*(*(a1 + 32) + 1056)];
  [*(a1 + 32) _applyToolbarTheme];
  [*(a1 + 32) setNeedsLayout];
  result = *(a1 + 32);
  if (result[131] == 2)
  {

    return [result reloadInputViews];
  }

  return result;
}

void __80__SFCapsuleCollectionView__coordinatorForUpdatingSelectedItemFromState_toState___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) _didEndBackdropHeightAnimation];
  }

  v2 = *(a1 + 32);
  if (*(v2 + 1048) != 2)
  {
    v3 = *(v2 + 536);
    if (v3)
    {
      *(v2 + 536) = 0;

      [*(a1 + 32) reloadInputViews];
    }
  }

  if (*(a1 + 40) == 2)
  {
    v4 = *(a1 + 32);
    if (*(v4 + 1048) != 2)
    {
      [*(v4 + 528) removeFromSuperview];
      v5 = *(a1 + 32);
      v6 = *(v5 + 528);
      *(v5 + 528) = 0;
    }
  }
}

- (void)_updateBackdropHeight
{
  v3 = [(SFCapsuleCollectionView *)self pageForIndex:self->_selectedItemIndex];
  bottomBackdropFrame = self->_bottomBackdropFrame;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__SFCapsuleCollectionView__updateBackdropHeight__block_invoke;
  v10[3] = &unk_1E721B930;
  v5 = v3;
  v11 = v5;
  [(SFCapsuleCollectionView *)self updateAnimatableRect:bottomBackdropFrame ignoreMinimization:0 infoBlock:v10];
  topBackdropFrame = self->_topBackdropFrame;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__SFCapsuleCollectionView__updateBackdropHeight__block_invoke_2;
  v8[3] = &unk_1E721B930;
  v9 = v5;
  v7 = v5;
  [(SFCapsuleCollectionView *)self updateAnimatableRect:topBackdropFrame ignoreMinimization:0 infoBlock:v8];
}

- (void)updateAnimatableRect:(id)a3 ignoreMinimization:(BOOL)a4 infoBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v31 = 0;
  v32 = &v31;
  v33 = 0x4010000000;
  v34 = "";
  v35 = 0u;
  v36 = 0u;
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __77__SFCapsuleCollectionView_updateAnimatableRect_ignoreMinimization_infoBlock___block_invoke;
  v26 = &unk_1E721BEE0;
  v30 = a4;
  v29 = &v31;
  v10 = v9;
  v27 = self;
  v28 = v10;
  [(SFCapsuleCollectionView *)self performIgnoringKeyboard:&v23];
  [(SFCapsuleCollectionView *)self valueFromAnimatableRect:v8, v23, v24, v25, v26];
  v37.origin.x = v11;
  v37.origin.y = v12;
  v37.size.width = v13;
  v37.size.height = v14;
  if (!CGRectEqualToRect(v32[1], v37))
  {
    x = v32[1].origin.x;
    v16 = [v8 objectAtIndexedSubscript:0];
    [v16 setValue:x];

    y = v32[1].origin.y;
    v18 = [v8 objectAtIndexedSubscript:1];
    [v18 setValue:y];

    width = v32[1].size.width;
    v20 = [v8 objectAtIndexedSubscript:2];
    [v20 setValue:width];

    height = v32[1].size.height;
    v22 = [v8 objectAtIndexedSubscript:3];
    [v22 setValue:height];
  }

  _Block_object_dispose(&v31, 8);
}

void __77__SFCapsuleCollectionView_updateAnimatableRect_ignoreMinimization_infoBlock___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(v3 + 944);
    if (!v4)
    {
      v4 = *(v3 + 912);
    }

    v5 = (*(v2 + 16))(v2, v4);
  }

  else
  {
    v5 = [*(a1 + 32) infoWithEffectiveLayoutExemptFromHidden:0 inBlock:*(a1 + 40)];
  }

  v11 = v5;
  [v5 frame];
  v6 = *(*(a1 + 48) + 8);
  v6[4] = v7;
  v6[5] = v8;
  v6[6] = v9;
  v6[7] = v10;
}

- (CGRect)valueFromAnimatableRect:(id)a3
{
  v3 = a3;
  v4 = [v3 objectAtIndexedSubscript:0];
  [v4 value];
  v6 = v5;
  v7 = [v3 objectAtIndexedSubscript:1];
  [v7 value];
  v9 = v8;
  v10 = [v3 objectAtIndexedSubscript:2];
  [v10 value];
  v12 = v11;
  v13 = [v3 objectAtIndexedSubscript:3];

  [v13 value];
  v15 = v14;

  v16 = v6;
  v17 = v9;
  v18 = v12;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)presentationValueFromAnimatableRect:(id)a3
{
  v3 = a3;
  v4 = [v3 objectAtIndexedSubscript:0];
  [v4 presentationValue];
  v6 = v5;
  v7 = [v3 objectAtIndexedSubscript:1];
  [v7 presentationValue];
  v9 = v8;
  v10 = [v3 objectAtIndexedSubscript:2];
  [v10 presentationValue];
  v12 = v11;
  v13 = [v3 objectAtIndexedSubscript:3];

  [v13 presentationValue];
  v15 = v14;

  v16 = v6;
  v17 = v9;
  v18 = v12;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)_willBeginBackdropHeightAnimation
{
  v32[4] = *MEMORY[0x1E69E9840];
  backdropHeightAnimationCount = self->_backdropHeightAnimationCount;
  self->_backdropHeightAnimationCount = backdropHeightAnimationCount + 1;
  if (backdropHeightAnimationCount <= 0)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD268]);
    v32[0] = v4;
    v5 = objc_alloc_init(MEMORY[0x1E69DD268]);
    v32[1] = v5;
    v6 = objc_alloc_init(MEMORY[0x1E69DD268]);
    v32[2] = v6;
    v7 = objc_alloc_init(MEMORY[0x1E69DD268]);
    v32[3] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    bottomBackdropFrame = self->_bottomBackdropFrame;
    self->_bottomBackdropFrame = v8;

    v10 = objc_alloc_init(MEMORY[0x1E69DD268]);
    v31[0] = v10;
    v11 = objc_alloc_init(MEMORY[0x1E69DD268]);
    v31[1] = v11;
    v12 = objc_alloc_init(MEMORY[0x1E69DD268]);
    v31[2] = v12;
    v13 = objc_alloc_init(MEMORY[0x1E69DD268]);
    v31[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    topBackdropFrame = self->_topBackdropFrame;
    self->_topBackdropFrame = v14;

    v16 = [(SFCapsuleCollectionView *)self pageForIndex:self->_selectedItemIndex];
    v17 = self->_bottomBackdropFrame;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __60__SFCapsuleCollectionView__willBeginBackdropHeightAnimation__block_invoke;
    v29[3] = &unk_1E721B930;
    v18 = v16;
    v30 = v18;
    [(SFCapsuleCollectionView *)self updateAnimatableRect:v17 ignoreMinimization:0 infoBlock:v29];
    v19 = self->_topBackdropFrame;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __60__SFCapsuleCollectionView__willBeginBackdropHeightAnimation__block_invoke_2;
    v27[3] = &unk_1E721B930;
    v20 = v18;
    v28 = v20;
    [(SFCapsuleCollectionView *)self updateAnimatableRect:v19 ignoreMinimization:0 infoBlock:v27];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __60__SFCapsuleCollectionView__willBeginBackdropHeightAnimation__block_invoke_3;
    v26[3] = &unk_1E721B360;
    v26[4] = self;
    [MEMORY[0x1E69DD250] performWithoutAnimation:v26];
    [(SFCapsuleCollectionView *)self valueFromAnimatableRect:self->_topBackdropFrame];
    self->_topBackdropHeightPresentationValue = CGRectGetMaxY(v33);
    objc_initWeak(&location, self);
    v21 = MEMORY[0x1E69DD250];
    v22 = [(NSArray *)self->_bottomBackdropFrame arrayByAddingObjectsFromArray:self->_topBackdropFrame];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __60__SFCapsuleCollectionView__willBeginBackdropHeightAnimation__block_invoke_4;
    v23[3] = &unk_1E721BF08;
    objc_copyWeak(&v24, &location);
    [v21 _createTransformerWithInputAnimatableProperties:v22 presentationValueChangedCallback:v23];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }
}

double __60__SFCapsuleCollectionView__willBeginBackdropHeightAnimation__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) valueFromAnimatableRect:*(*(a1 + 32) + 840)];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [*(*(a1 + 32) + 416) convertRect:? fromView:?];
  [*(*(a1 + 32) + 544) setFrame:?];
  [*(a1 + 32) bounds];
  Height = CGRectGetHeight(v12);
  v13.origin.x = v3;
  v13.origin.y = v5;
  v13.size.width = v7;
  v13.size.height = v9;
  result = Height - CGRectGetMinY(v13);
  *(*(a1 + 32) + 856) = result;
  return result;
}

void __60__SFCapsuleCollectionView__willBeginBackdropHeightAnimation__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[105])
  {
    rect_8 = WeakRetained;
    [WeakRetained presentationValueFromAnimatableRect:?];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;
    [rect_8 presentationValueFromAnimatableRect:rect_8[106]];
    rect = v10;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [rect_8[52] convertRect:rect_8 fromView:{v3, v5, v7, v9}];
    [rect_8[68] setFrame:?];
    [rect_8 bounds];
    Height = CGRectGetHeight(v21);
    v22.origin.x = v3;
    v22.origin.y = v5;
    v22.size.width = v7;
    v22.size.height = v9;
    *(rect_8 + 107) = Height - CGRectGetMinY(v22);
    v23.origin.x = rect;
    v23.origin.y = v12;
    v23.size.width = v14;
    v23.size.height = v16;
    *(rect_8 + 108) = CGRectGetMaxY(v23);
    [rect_8 setNeedsLayout];
    [rect_8 _sendMinimizationDidUpdateToObservers];
    WeakRetained = rect_8;
  }
}

- (void)_didEndBackdropHeightAnimation
{
  v28 = *MEMORY[0x1E69E9840];
  [(SFCapsuleCollectionView *)self obscuredInsets];
  v7 = self->_backdropHeightAnimationCount - 1;
  self->_backdropHeightAnimationCount = v7;
  if (!v7)
  {
    v8 = v3;
    v9 = v4;
    v10 = v5;
    v11 = v6;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [(NSArray *)self->_bottomBackdropFrame arrayByAddingObjectsFromArray:self->_topBackdropFrame, 0];
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v23 + 1) + 8 * v16++) invalidate];
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    bottomBackdropFrame = self->_bottomBackdropFrame;
    self->_bottomBackdropFrame = 0;

    topBackdropFrame = self->_topBackdropFrame;
    self->_topBackdropFrame = 0;

    [(SFCapsuleCollectionView *)self obscuredInsets];
    if (v9 != v22 || v8 != v19 || v11 != v21 || v10 != v20)
    {
      [(SFCapsuleCollectionView *)self _sendMinimizationDidUpdateToObservers];
    }

    [(SFCapsuleCollectionView *)self setNeedsLayout];
  }
}

- (void)setSelectedItemAccessoryView:(id)a3 forState:(int64_t)a4
{
  selectedItemAccessoryViews = self->_selectedItemAccessoryViews;
  v7 = MEMORY[0x1E696AD98];
  v8 = a3;
  v9 = [v7 numberWithInteger:a4];
  [(NSMutableDictionary *)selectedItemAccessoryViews setObject:v8 forKeyedSubscript:v9];

  if (self->_numberOfItems && self->_selectedItemState == a4)
  {
    selectedItemIndex = self->_selectedItemIndex;

    [(SFCapsuleCollectionView *)self _updateStateFlagsForContentViewAtIndex:selectedItemIndex];
  }
}

- (id)superviewForSupplementaryViewWithLayoutInfo:(id)a3 isTopAligned:(BOOL *)a4
{
  v6 = a3;
  [v6 frame];
  MaxY = CGRectGetMaxY(v14);
  [(SFCapsuleCollectionView *)self bounds];
  MidY = CGRectGetMidY(v15);
  *a4 = MaxY < MidY;
  v9 = [v6 parentIdentifier];

  if (!v9 || ([(NSDictionary *)self->_supplementaryContainers objectForKeyedSubscript:v9], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11 = &OBJC_IVAR___SFCapsuleCollectionView__contentView;
    if (MaxY < MidY)
    {
      v11 = &OBJC_IVAR___SFCapsuleCollectionView__topContentView;
    }

    v10 = *(&self->super.super.super.isa + *v11);
  }

  return v10;
}

- (void)freezeHiddenSupplementaries
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = [MEMORY[0x1E695DFA8] set];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(NSDictionary *)self->_supplementaryViews allKeys];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([WeakRetained capsuleCollectionView:self shouldHideSupplementaryViewWithIdentifier:v10])
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    v11 = [v4 copy];
    hiddenSupplementaries = self->_hiddenSupplementaries;
    self->_hiddenSupplementaries = v11;
  }
}

- (void)unfreezeHiddenSupplementaries
{
  hiddenSupplementaries = self->_hiddenSupplementaries;
  self->_hiddenSupplementaries = 0;
}

- (BOOL)prefersHiddenForSupplementaryWithIdentifier:(id)a3
{
  v4 = a3;
  hiddenSupplementaries = self->_hiddenSupplementaries;
  if (hiddenSupplementaries)
  {
    v6 = [(NSSet *)hiddenSupplementaries containsObject:v4];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v6 = [WeakRetained capsuleCollectionView:self shouldHideSupplementaryViewWithIdentifier:v4];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)showTipIfNeeded
{
  if (self->_layoutStyle == 3)
  {
    block[5] = v2;
    block[6] = v3;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__SFCapsuleCollectionView_showTipIfNeeded__block_invoke;
    block[3] = &unk_1E721B360;
    block[4] = self;
    if (showTipIfNeeded_onceToken != -1)
    {
      dispatch_once(&showTipIfNeeded_onceToken, block);
    }
  }
}

void __42__SFCapsuleCollectionView_showTipIfNeeded__block_invoke(uint64_t a1)
{
  v2 = +[SFOnboardingCoordinator sharedCoordinator];
  v3 = [v2 tipsForTabBar];
  v4 = [v3 firstObject];

  [v4 setDelegate:*(a1 + 32)];
  [v4 triggerTip];
}

- (void)present:(id)a3
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained capsuleCollectionView:self didRequestViewControllerPresentation:v5];
  }
}

- (void)setShouldDismissContent:(BOOL)a3 withDelay:(double)a4
{
  if (self->_shouldDismissContent != a3)
  {
    [(SFCapsuleCollectionView *)self layoutIfNeeded];
    self->_shouldDismissContent = a3;
    [(SFCapsuleCollectionView *)self setNeedsLayout];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __61__SFCapsuleCollectionView_setShouldDismissContent_withDelay___block_invoke;
    v9[3] = &unk_1E721BAC0;
    v9[4] = self;
    *&v9[5] = a4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__SFCapsuleCollectionView_setShouldDismissContent_withDelay___block_invoke_2;
    v7[3] = &unk_1E721BF80;
    v8 = a3;
    v7[4] = self;
    [MEMORY[0x1E69DD250] _animateUsingDefaultDampedSpringWithDelay:2 initialSpringVelocity:v9 options:v7 animations:a4 completion:0.0];
  }
}

uint64_t __61__SFCapsuleCollectionView_setShouldDismissContent_withDelay___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 904) = *(a1 + 40);
  result = [*(a1 + 32) layoutIfNeeded];
  *(*(a1 + 32) + 904) = 0;
  return result;
}

uint64_t __61__SFCapsuleCollectionView_setShouldDismissContent_withDelay___block_invoke_2(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    result = *(result + 32);
    if (*(result + 970) == 1 && *(result + 1048) == 1)
    {
      return [result setSelectedItemState:0 animated:0];
    }
  }

  return result;
}

uint64_t __52__SFCapsuleCollectionView_layOutToolbarBackdropView__block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    [*(*(a1 + 32) + 544) ss_untransformedFrame];
    MidY = CGRectGetMidY(v9);
    [*(a1 + 32) bounds];
    v3 = (MidY - CGRectGetMidY(v10)) * 0.05;
    v4 = 0.0;
    if (*(a1 + 40))
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 0.0;
  }

  CGAffineTransformMakeTranslation(&v8, 0.0, v4);
  v5 = *(*(a1 + 32) + 544);
  v7 = v8;
  return [v5 setTransform:&v7];
}

void __53__SFCapsuleCollectionView_updateSupplementariesAlpha__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 544) setAlpha:*(a1 + 48)];
  v2 = *(*(a1 + 32) + 576);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__SFCapsuleCollectionView_updateSupplementariesAlpha__block_invoke_2;
  v3[3] = &unk_1E721BFD0;
  v4 = *(a1 + 40);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __53__SFCapsuleCollectionView_updateSupplementariesAlpha__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v7 = [v4 objectForKeyedSubscript:a2];
  [v7 floatValue];
  [v5 setAlpha:v6];
}

- (double)_toolbarBackdropAlpha
{
  result = 0.0;
  if (self->_selectedItemState != 2)
  {
    v3 = [(SFCapsuleCollectionView *)self _contentIsDismissed];
    v4 = [MEMORY[0x1E69C8880] isSolariumEnabled];
    result = 1.0;
    if (((v4 ^ 1) & v3) != 0)
    {
      return 0.0;
    }
  }

  return result;
}

- (CGRect)_detachedCapsuleSelectionRect
{
  v3 = [(NSArray *)self->_items objectAtIndexedSubscript:self->_selectedItemIndex];
  if ([v3 capsuleIsDetached])
  {
    v4 = [v3 capsuleView];
    v5 = [v4 superview];
    v6 = [v4 layer];
    v7 = [v6 safari_presentationOrSelf];
    [v7 frame];
    [v5 convertRect:self toView:?];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [(SFCapsuleCollectionView *)self _selectedCapsuleFrame];
    v27.origin.x = v9;
    v27.origin.y = v11;
    v27.size.width = v13;
    v27.size.height = v15;
    v25 = CGRectUnion(v24, v27);
    x = v25.origin.x;
    y = v25.origin.y;
    width = v25.size.width;
    height = v25.size.height;
  }

  else
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
  }

  v20 = x;
  v21 = y;
  v22 = width;
  v23 = height;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)_passthroughRect
{
  [(SFCapsuleCollectionView *)self _obscuredInsetsIgnoringAnimation];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(SFCapsuleCollectionView *)self _layoutStyleIsTop])
  {
    [(SFCapsuleCollectionView *)self _selectedCapsuleFrame];
    v4 = fmax(v4, CGRectGetMaxY(v20));
    if ([(SFCapsuleCollectionView *)self selectedItemIsMinimized])
    {
      v4 = v4 + 5.0;
    }
  }

  else
  {
    [(SFCapsuleCollectionView *)self bounds];
    Height = CGRectGetHeight(v21);
    [(SFCapsuleCollectionView *)self _selectedCapsuleFrame];
    v8 = fmax(v8, Height - CGRectGetMinY(v22));
    if ([(SFCapsuleCollectionView *)self selectedItemIsMinimized])
    {
      v8 = v8 + 5.0;
    }
  }

  [(SFCapsuleCollectionView *)self bounds];
  v13 = v6 + v12;
  v15 = v4 + v14;
  v17 = v16 - (v6 + v10);
  v19 = v18 - (v8 + v4);
  result.size.height = v19;
  result.size.width = v17;
  result.origin.y = v15;
  result.origin.x = v13;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v35 = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (self->_itemsAreHidden || ([(SFCapsuleCollectionView *)self isHidden]& 1) != 0 || ![(SFCapsuleCollectionView *)self isUserInteractionEnabled])
  {
    v4 = 0;
    goto LABEL_9;
  }

  selectedItemState = self->_selectedItemState;
  if (selectedItemState)
  {
    if (selectedItemState != 2)
    {
      if (selectedItemState != 1)
      {
        goto LABEL_9;
      }

      goto LABEL_24;
    }

    v11 = [(NSArray *)self->_items objectAtIndexedSubscript:self->_selectedItemIndex];
    v12 = [v11 capsuleView];

    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 convertPoint:self fromView:{x, y}];
    v37.x = v21;
    v37.y = v22;
    v38.origin.x = v14;
    v38.origin.y = v16;
    v38.size.width = v18;
    v38.size.height = v20;
    if (!CGRectContainsPoint(v38, v37))
    {
      v4 = 0;
      goto LABEL_26;
    }

    v29.receiver = self;
    v29.super_class = SFCapsuleCollectionView;
    v23 = [(SFCapsuleCollectionView *)&v29 hitTest:v8 withEvent:x, y];
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = [(NSDictionary *)self->_supplementaryViews allValues];
    v24 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (!v24)
    {
LABEL_23:

LABEL_24:
      v4 = [(SFCapsuleCollectionView *)self hitTest:v8 forCapsuleFrameWithEvent:x, y];
      goto LABEL_9;
    }

    v25 = v24;
    v26 = *v31;
LABEL_17:
    v27 = 0;
    while (1)
    {
      if (*v31 != v26)
      {
        objc_enumerationMutation(v12);
      }

      v28 = *(*(&v30 + 1) + 8 * v27);
      [v28 convertPoint:self fromView:{x, y}];
      v23 = [v28 hitTest:v8 withEvent:?];
      if (v23)
      {
        break;
      }

      if (v25 == ++v27)
      {
        v25 = [v12 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v25)
        {
          goto LABEL_17;
        }

        goto LABEL_23;
      }
    }
  }

  v4 = v23;
LABEL_26:

LABEL_9:

  return v4;
}

- (id)hitTest:(CGPoint)a3 forCapsuleFrameWithEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(SFCapsuleCollectionView *)self _detachedCapsuleSelectionRect];
  v20.x = x;
  v20.y = y;
  if (!CGRectContainsPoint(v22, v20))
  {
    [(SFCapsuleCollectionView *)self _passthroughRect];
    v21.x = x;
    v21.y = y;
    if (CGRectContainsPoint(v23, v21))
    {
      v10 = 0;
      goto LABEL_15;
    }

    v18.receiver = self;
    v18.super_class = SFCapsuleCollectionView;
    v11 = [(SFCapsuleCollectionView *)&v18 hitTest:v7 withEvent:x, y];
    v8 = v11;
    if (v11)
    {
      v12 = v11;
      if (v11 == self)
      {
LABEL_13:
        v9 = v12;
        goto LABEL_14;
      }
    }

    else
    {
      v13 = [(SFCapsuleCollectionView *)self selectedItemIsMinimized];
      v12 = 0;
      if (!self)
      {
        goto LABEL_13;
      }

      v12 = 0;
      if (!v13)
      {
        goto LABEL_13;
      }
    }

    v14 = [(NSArray *)self->_items objectAtIndexedSubscript:self->_selectedItemIndex];
    v15 = [v14 capsuleView];
    v16 = [(SFCapsuleCollectionView *)v8 isDescendantOfView:v15];

    if (v16)
    {
      v12 = v8;
    }

    else
    {
      v12 = self;
    }

    goto LABEL_13;
  }

  v8 = [(NSArray *)self->_items objectAtIndexedSubscript:self->_selectedItemIndex];
  v9 = [(SFCapsuleCollectionView *)v8 capsuleView];
LABEL_14:
  v10 = v9;

LABEL_15:

  return v10;
}

- (id)_buttonPointerStyleProviderForContentView:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  objc_initWeak(&from, v4);

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__SFCapsuleCollectionView__buttonPointerStyleProviderForContentView___block_invoke;
  v7[3] = &unk_1E721BFF8;
  objc_copyWeak(&v8, &location);
  objc_copyWeak(&v9, &from);
  v5 = _Block_copy(v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v5;
}

id __69__SFCapsuleCollectionView__buttonPointerStyleProviderForContentView___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained((a1 + 40));
    v9 = [v5 superview];
    [v5 bounds];
    [v9 convertRect:v5 fromView:?];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    if (objc_opt_respondsToSelector())
    {
      [v8 horizontalPointerPaddingForButton:v5];
      v19 = v18;
    }

    else
    {
      v19 = *MEMORY[0x1E695EFF8];
    }

    [v8 bounds];
    Height = CGRectGetHeight(v32);
    v33.origin.x = v11;
    v33.origin.y = v13;
    v33.size.width = v15;
    v33.size.height = v17;
    v22 = 2.0 - fmax((Height - CGRectGetHeight(v33)) * 0.5, 0.0);
    v34.origin.x = v11;
    v34.origin.y = v13;
    v34.size.width = v15;
    v34.size.height = v17;
    v35 = CGRectInset(v34, 2.0 - v19, v22);
    x = v35.origin.x;
    y = v35.origin.y;
    width = v35.size.width;
    v26 = v35.size.height;
    v27 = MEMORY[0x1E69DCDC8];
    [WeakRetained capsuleBackgroundCornerRadius];
    v29 = [v27 shapeWithRoundedRect:x cornerRadius:{y, width, v26, v28 + -2.0}];
    v20 = [MEMORY[0x1E69DCDD0] styleWithEffect:v6 shape:v29];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (void)_animateSwitchingLinkedPageViewToItemAtIndex:(int64_t)a3
{
  obj = objc_alloc_init(SFTransitionCoordinator);
  v5 = [(SFCapsuleCollectionViewLinkablePageView *)self->_linkedPageView animationSettingsForCapsuleSelectionUpdate];
  [(SFTransitionCoordinator *)obj setSpringAnimationBehavior:v5];

  objc_storeWeak(&self->_currentTransitionCoordinator, obj);
  [(SFCapsuleCollectionViewLinkablePageView *)self->_linkedPageView animateSwitchingToItemAtIndex:a3];
  objc_storeWeak(&self->_currentTransitionCoordinator, 0);
}

- (double)_scaleFromLinkedPageView
{
  [(SFCapsuleCollectionViewLinkablePageView *)self->_linkedPageView frameForItemLinkedToCapsuleAtIndex:self->_selectedItemIndex];
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v7 = 1.0;
  if (!CGRectIsNull(v11))
  {
    v12.origin.x = x;
    v12.origin.y = y;
    v12.size.width = width;
    v12.size.height = height;
    v8 = CGRectGetWidth(v12);
    v9 = [(SFCapsuleCollectionView *)self window];
    [v9 bounds];
    v7 = v8 / CGRectGetWidth(v13);
  }

  return v7;
}

- (CGPoint)_offsetForPanFromLinkedPageView
{
  [(SFCapsuleCollectionViewLinkablePageView *)self->_linkedPageView frameForItemLinkedToCapsuleAtIndex:self->_selectedItemIndex];
  x = v44.origin.x;
  y = v44.origin.y;
  width = v44.size.width;
  height = v44.size.height;
  if (CGRectIsNull(v44))
  {
    v7 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    [(SFCapsuleCollectionView *)self capsuleFrame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(SFCapsuleCollectionViewLinkablePageView *)self->_linkedPageView linkedPageContainerCoordinateSpace];
    [(SFCapsuleCollectionView *)self convertRect:v17 toCoordinateSpace:v10, v12, v14, v16];
    UIRectGetCenter();
    v41 = v19;
    v42 = v18;

    v20 = [(SFCapsuleCollectionViewLinkablePageView *)self->_linkedPageView linkedPageContainerCoordinateSpace];
    [v20 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v45.origin.x = v22;
    v45.origin.y = v24;
    v45.size.width = v26;
    v45.size.height = v28;
    v40 = v42 / CGRectGetWidth(v45);
    v46.origin.x = v22;
    v46.origin.y = v24;
    v46.size.width = v26;
    v46.size.height = v28;
    v29 = v41 / CGRectGetHeight(v46);
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    MinX = CGRectGetMinX(v47);
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    v31 = MinX + CGRectGetWidth(v48) * v40;
    v49.origin.x = x;
    v49.origin.y = y;
    v49.size.width = width;
    v49.size.height = height;
    MinY = CGRectGetMinY(v49);
    v50.origin.x = x;
    v50.origin.y = y;
    v50.size.width = width;
    v50.size.height = height;
    v33 = MinY + CGRectGetHeight(v50) * v29;
    [(SFCapsuleCollectionView *)self pageWidth];
    v35 = v34;
    [(SFCapsuleCollectionViewLinkablePageView *)self->_linkedPageView pageWidth];
    v8 = v33 - v41;
    v37 = v35 / v36;
    [(SFCapsuleCollectionView *)self bounds];
    v38 = CGRectGetHeight(v51);
    v7 = (v31 - v42) * _SFInterpolate(v37, 1.0, fmax(fmin(fabs(v8 / (v38 * 0.25)), 1.0), 0.0));
  }

  v39 = v8;
  result.y = v39;
  result.x = v7;
  return result;
}

- (void)setBottomScrollPocketInteraction:(id)a3
{
  v6 = a3;
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v5 = self->_bottomScrollPocketInteraction;
    if (v5 != v6)
    {
      objc_storeStrong(&self->_bottomScrollPocketInteraction, a3);
      if (v5)
      {
        [(UIView *)self->_contentView removeInteraction:v5];
      }

      if (v6)
      {
        [(UIView *)self->_contentView addInteraction:v6];
      }
    }
  }
}

- (void)setTopScrollPocketInteraction:(id)a3
{
  v6 = a3;
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v5 = self->_topScrollPocketInteraction;
    if (v5 != v6)
    {
      objc_storeStrong(&self->_topScrollPocketInteraction, a3);
      if (v5)
      {
        [(UIView *)self->_topContentView removeInteraction:v5];
      }

      if (v6)
      {
        [(UIView *)self->_topContentView addInteraction:v6];
      }
    }
  }
}

- (SFCapsuleCollectionViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)_indexesOfVisibleItemsWithSelectedItemIndex:(void *)a1 .cold.1(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  [v2 count];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_18B7AC000, v4, v5, "Selecting item at index %zd in array of %lu items", v6, v7, v8, v9, v10);
}

- (void)_didReceivePan:(void *)a1 .cold.1(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  [v2 count];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_18B7AC000, v4, v5, "Next selected item index after pan %zd is beyond bounds of array of %lu items", v6, v7, v8, v9, v10);
}

@end