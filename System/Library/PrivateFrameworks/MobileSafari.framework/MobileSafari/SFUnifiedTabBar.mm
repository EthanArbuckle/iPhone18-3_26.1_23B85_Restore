@interface SFUnifiedTabBar
- (BOOL)_isSectionAnimating:(id)animating;
- (BOOL)searchFieldShowsPersistentStopReloadButton;
- (BOOL)usesMoreMenu;
- (CGPoint)_adjustedContentOffsetForContentOffset:(CGPoint)offset size:(CGSize)size contentSize:(CGSize)contentSize;
- (CGPoint)_targetContentOffsetForAnimatedResizeWithTargetLayout:(id)layout;
- (CGPoint)midpointForCenteredContent;
- (CGRect)_squishedTitleContainerFrame;
- (CGRect)frameForTabBarItem:(id)item;
- (CGRect)pinnedItemDropArea;
- (CGRect)squishedGlassFrameForTabBarItemView:(id)view;
- (CGSize)preferredSize;
- (NSArray)squishedAccessoryViews;
- (NSDirectionalEdgeInsets)contentInset;
- (SFUnifiedTabBar)initWithFrame:(CGRect)frame;
- (SFUnifiedTabBarDragObserving)dragObserver;
- (SFUnifiedTabBarNavigationDelegate)navigationDelegate;
- (UIEdgeInsets)_itemTouchInsets;
- (UIEdgeInsets)searchFieldPopoverSourceInsets;
- (UIEdgeInsets)squishedContentInset;
- (UIImage)searchFieldIcon;
- (UITextField)searchField;
- (UIView)menuPopoverSourceView;
- (UIView)searchFieldPopoverSourceView;
- (UIViewControllerTransitionCoordinator)transitionCoordinator;
- (double)_preferredWidth;
- (double)preferredOpacity;
- (double)preferredSquishedBottomSpacing;
- (id)_activeTabBarItemView;
- (id)_backgroundViewForSection:(id)section;
- (id)_captureGroupNameForItem:(id)item inArrangement:(id)arrangement;
- (id)_currentLayoutConfiguration;
- (id)_dequeueOrCreateBackgroundViewForSection:(id)section;
- (id)_existingBackgroundViewForSection:(id)section;
- (id)_firstFullyVisibleInactiveItem;
- (id)_pinnedOverflowMenu;
- (id)_prepareForResizeIfNeeded;
- (id)_superviewForItem:(id)item inArrangement:(id)arrangement;
- (id)_viewForItem:(id)item inArrangement:(id)arrangement;
- (id)dragPreviewForBarItem:(id)item;
- (id)dragPreviewForBarItem:(id)item pinned:(BOOL)pinned;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)itemDifferenceRemovingMovesBetweenSections:(id)sections from:(id)from to:(id)to;
- (id)mediaStateMuteButtonMenuElementsForTabBarItemView:(id)view;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (id)preferredFocusEnvironments;
- (id)tabBarItemAtPoint:(CGPoint)point;
- (id)tabBarItemClosestToPoint:(CGPoint)point;
- (int64_t)_itemViewAccessoryButtonLayout;
- (int64_t)_platterStyleForTabBarItem:(id)item;
- (unint64_t)_animationOptions;
- (unint64_t)_pinnedItemLimitForItemArrangement:(id)arrangement;
- (void)_applyLayoutInfo:(id *)info toItemView:(id)view;
- (void)_applyLayoutInfo:(id *)info toSectionBackground:(id)background;
- (void)_beginTransitioningSearchField;
- (void)_configureTabBarItemView:(id)view forItem:(id)item inArrangement:(id)arrangement isPreview:(BOOL)preview;
- (void)_didEndAnimationsForItems:(id)items;
- (void)_didEndAnimationsForSections:(id)sections;
- (void)_didSelectItemView:(id)view event:(id)event;
- (void)_discardBackgroundViewForSection:(id)section;
- (void)_discardBackgroundViewsForAnimatingSectionsIfNeeded:(id)needed;
- (void)_discardBackgroundViewsForIndexes:(id)indexes ofSections:(id)sections;
- (void)_discardItemView:(id)view;
- (void)_discardSectionBackgroundView:(id)view;
- (void)_discardViewForItem:(id)item;
- (void)_discardViewsForAnimatingItemsIfNeeded:(id)needed;
- (void)_discardViewsForIndexes:(id)indexes ofItems:(id)items;
- (void)_endTransitioningSearchFieldInItemView:(id)view;
- (void)_hover:(id)_hover;
- (void)_installSearchFieldIfNeeded;
- (void)_layOutAppearingSectionBackgroundsAtIndexes:(id)indexes withTransitionInfo:(id)info;
- (void)_layOutDisappearingSectionBackgroundsAtIndexes:(id)indexes withTransitionInfo:(id)info;
- (void)_layOutPinnedItemsSeparator;
- (void)_layOutSectionBackgrounds;
- (void)_layOutSectionBackgroundsAtIndexes:(id)indexes usingLayout:(id)layout;
- (void)_layoutAppearingItemsAtIndexes:(id)indexes withTransitionInfo:(id)info;
- (void)_layoutDisappearingItemsAtIndexes:(id)indexes withTransitionInfo:(id)info;
- (void)_layoutItems;
- (void)_layoutItemsAtIndexes:(id)indexes usingLayout:(id)layout;
- (void)_layoutSquishedTitleContainer;
- (void)_setResolvedItemArrangement:(id)arrangement animated:(BOOL)animated keepingItemVisible:(id)visible completionHandler:(id)handler;
- (void)_setRevealsSquishedActiveItem:(BOOL)item animated:(BOOL)animated;
- (void)_setUpBuiltInItemViewRegistrations;
- (void)_setUpPinnedItemsSeparatorIfNeeded;
- (void)_tearDownPinnedItemsSeparatorIfNeeded;
- (void)_uninstallSearchFieldIfNeeded;
- (void)_updateBackgroundCaptureMode;
- (void)_updateBarMetricsForTraitChange;
- (void)_updateContentSizeIfNeeded;
- (void)_updateHoveringItem:(id)item;
- (void)_updateItemSizesIfNeeded;
- (void)_updateMinimizedProgressViewFillColor;
- (void)_updatePinnedItemsSeparator;
- (void)_updateScrolling;
- (void)_updateShowsMinimizedProgressView;
- (void)_willBeginAnimationsForItems:(id)items;
- (void)_willBeginAnimationsForSections:(id)sections;
- (void)cleanUpDragPreviewForBarItem:(id)item;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)registerReuseIdentifier:(id)identifier withItemViewProvider:(id)provider configurationHandler:(id)handler;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setActiveItem:(id)item animated:(BOOL)animated;
- (void)setActiveItemIsExpanded:(BOOL)expanded animated:(BOOL)animated completionHandler:(id)handler;
- (void)setBarBackgroundAlpha:(double)alpha;
- (void)setBarMetrics:(id)metrics;
- (void)setBarTheme:(id)theme;
- (void)setContentInset:(NSDirectionalEdgeInsets)inset;
- (void)setItemArrangement:(id)arrangement animated:(BOOL)animated keepingItemVisible:(id)visible completionHandler:(id)handler;
- (void)setItemsNeedEraserBasedCutoutBorder:(BOOL)border;
- (void)setMidpointForCenteredContent:(CGPoint)content;
- (void)setMinimizedProgressView:(id)view;
- (void)setRole:(int64_t)role;
- (void)setSearchFieldIcon:(id)icon;
- (void)setSearchFieldShowsFormatMenuButtonAccessories:(BOOL)accessories;
- (void)setShowsSquishedAccessoryViews:(BOOL)views;
- (void)setShowsSquishedTitleContainer:(BOOL)container;
- (void)setSizeClass:(unint64_t)class;
- (void)setSquishTransformFactor:(double)factor;
- (void)setSquishedContentInset:(UIEdgeInsets)inset;
- (void)setStyle:(int64_t)style;
- (void)setThemeColorVisibility:(double)visibility;
- (void)tabBarItemView:(id)view didFinishShowingAvailabilityLabelOfType:(int64_t)type;
- (void)tabBarItemView:(id)view didMakeOneStepBookmarkingButton:(id)button;
- (void)tabBarItemView:(id)view didUpdateHovering:(BOOL)hovering;
- (void)tabBarItemView:(id)view extensionButtonTapped:(id)tapped extension:(id)extension;
- (void)tabBarItemView:(id)view multipleExtensionButtonTapped:(id)tapped;
- (void)tabBarItemViewCloseButtonTapped:(id)tapped;
- (void)tabBarItemViewDidRequestFocusForPencilInput:(id)input completionHandler:(id)handler;
- (void)tabBarItemViewMediaStateMuteButtonTapped:(id)tapped;
- (void)tabBarItemViewMenuButtonClicked:(id)clicked;
- (void)tabBarItemViewMenuButtonReceivedTouchDown:(id)down;
- (void)tabBarItemViewMenuButtonTapped:(id)tapped;
- (void)tabBarItemViewReaderButtonTapped:(id)tapped;
- (void)tabBarItemViewReloadButtonTapped:(id)tapped;
- (void)tabBarItemViewStopButtonTapped:(id)tapped;
- (void)tabBarItemViewTitleChanged:(id)changed;
- (void)tabBarItemViewTranslationButtonTapped:(id)tapped;
- (void)tabBarItemViewVoiceSearchButtonTapped:(id)tapped;
- (void)updateLayout;
@end

@implementation SFUnifiedTabBar

- (SFUnifiedTabBar)initWithFrame:(CGRect)frame
{
  v52.receiver = self;
  v52.super_class = SFUnifiedTabBar;
  v3 = [(SFUnifiedTabBar *)&v52 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_themeColorVisibility = 1.0;
    v3->_squishTransformFactor = 1.0;
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    searchFieldPopoverAlignmentView = v4->_searchFieldPopoverAlignmentView;
    v4->_searchFieldPopoverAlignmentView = v5;

    [(UIView *)v4->_searchFieldPopoverAlignmentView setHidden:1];
    [(SFUnifiedTabBar *)v4 addSubview:v4->_searchFieldPopoverAlignmentView];
    v7 = objc_alloc_init(MEMORY[0x1E69DD838]);
    backgroundCaptureView = v4->_backgroundCaptureView;
    v4->_backgroundCaptureView = v7;

    [(_UIVisualEffectBackdropView *)v4->_backgroundCaptureView setRenderMode:1];
    _backgroundCaptureGroupName = [(SFUnifiedTabBar *)v4 _backgroundCaptureGroupName];
    captureGroup = [(_UIVisualEffectBackdropView *)v4->_backgroundCaptureView captureGroup];
    [captureGroup setGroupName:_backgroundCaptureGroupName];

    layer = [(_UIVisualEffectBackdropView *)v4->_backgroundCaptureView layer];
    [layer setZPosition:-1000.0];

    v12 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    scrollView = v4->_scrollView;
    v4->_scrollView = v12;

    [(UIScrollView *)v4->_scrollView setDelegate:v4];
    [(UIScrollView *)v4->_scrollView setShowsHorizontalScrollIndicator:0];
    [(UIScrollView *)v4->_scrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v4->_scrollView setAlwaysBounceHorizontal:1];
    [(UIScrollView *)v4->_scrollView setContentInsetAdjustmentBehavior:2];
    [(UIScrollView *)v4->_scrollView setClipsToBounds:0];
    [(SFUnifiedTabBar *)v4 addSubview:v4->_scrollView];
    [(UIScrollView *)v4->_scrollView addSubview:v4->_backgroundCaptureView];
    v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
    dragPreviewContainer = v4->_dragPreviewContainer;
    v4->_dragPreviewContainer = v14;

    [(UIView *)v4->_dragPreviewContainer setHidden:1];
    [(UIScrollView *)v4->_scrollView addSubview:v4->_dragPreviewContainer];
    v16 = [SFUnifiedTabBarMetrics alloc];
    traitCollection = [(SFUnifiedTabBar *)v4 traitCollection];
    v18 = [(SFUnifiedTabBarMetrics *)v16 initWithTraitCollection:traitCollection];
    barMetrics = v4->_barMetrics;
    v4->_barMetrics = v18;

    v20 = objc_alloc_init(SFUnifiedTabBarItemArrangement);
    itemArrangement = v4->_itemArrangement;
    v4->_itemArrangement = v20;

    v22 = [SFUnifiedTabBarLayout alloc];
    v23 = v4->_itemArrangement;
    _currentLayoutConfiguration = [(SFUnifiedTabBar *)v4 _currentLayoutConfiguration];
    v25 = [(SFUnifiedTabBarLayout *)v22 initWithItemArrangement:v23 configuration:_currentLayoutConfiguration];
    layout = v4->_layout;
    v4->_layout = v25;

    v27 = objc_alloc_init(SFUnifiedTabBarItemArrangement);
    unresolvedItemArrangement = v4->_unresolvedItemArrangement;
    v4->_unresolvedItemArrangement = v27;

    v29 = [MEMORY[0x1E696AB50] set];
    animatingSectionIdentifiers = v4->_animatingSectionIdentifiers;
    v4->_animatingSectionIdentifiers = v29;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    sectionBackgroundViews = v4->_sectionBackgroundViews;
    v4->_sectionBackgroundViews = dictionary;

    array = [MEMORY[0x1E695DF70] array];
    sectionBackgroundViewReuseStack = v4->_sectionBackgroundViewReuseStack;
    v4->_sectionBackgroundViewReuseStack = array;

    newSearchField = [(SFUnifiedTabBar *)v4 newSearchField];
    searchField = v4->_searchField;
    v4->_searchField = newSearchField;

    [(UITextField *)v4->_searchField setAdjustsFontForContentSizeCategory:1];
    [(UITextField *)v4->_searchField setAutocapitalizationType:0];
    [(UITextField *)v4->_searchField setAutocorrectionType:1];
    [(UITextField *)v4->_searchField setClearButtonMode:3];
    [(UITextField *)v4->_searchField setKeyboardType:10];
    [(UITextField *)v4->_searchField setSmartDashesType:1];
    [(UITextField *)v4->_searchField setSmartQuotesType:1];
    [(UITextField *)v4->_searchField setTintAdjustmentMode:1];
    v37 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v4 action:sel__hover_];
    hoverRecognizer = v4->_hoverRecognizer;
    v4->_hoverRecognizer = v37;

    [(SFUnifiedTabBar *)v4 addGestureRecognizer:v4->_hoverRecognizer];
    v39 = objc_alloc_init(SFTabHoverPreviewController);
    tabHoverPreviewController = v4->_tabHoverPreviewController;
    v4->_tabHoverPreviewController = v39;

    [(SFTabHoverPreviewController *)v4->_tabHoverPreviewController setHoverRecognizer:v4->_hoverRecognizer];
    v41 = objc_alloc_init(SFPinnedOverflowItem);
    pinnedOverflowItem = v4->_pinnedOverflowItem;
    v4->_pinnedOverflowItem = v41;

    v43 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v4];
    pointerInteraction = v4->_pointerInteraction;
    v4->_pointerInteraction = v43;

    [(SFUnifiedTabBar *)v4 addInteraction:v4->_pointerInteraction];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    itemViewRegistrationsByReuseIdentifier = v4->_itemViewRegistrationsByReuseIdentifier;
    v4->_itemViewRegistrationsByReuseIdentifier = dictionary2;

    [(SFUnifiedTabBar *)v4 _setUpBuiltInItemViewRegistrations];
    v47 = +[SFUnifiedBarTheme defaultTheme];
    [(SFUnifiedTabBar *)v4 setBarTheme:v47];

    v48 = +[SFUnifiedBarMetrics traitsAffectingBarMetrics];
    v49 = [(SFUnifiedTabBar *)v4 registerForTraitChanges:v48 withTarget:v4 action:sel__updateBarMetricsForTraitChange];

    v50 = v4;
  }

  return v4;
}

- (void)setShowsSquishedTitleContainer:(BOOL)container
{
  if ([(SFUnifiedTabBar *)self showsSquishedTitleContainer]!= container)
  {
    if (container)
    {
      v5 = [[SFUnifiedTabBarItemTitleContainerView alloc] initWithAlignment:1];
      squishedTitleContainer = self->_squishedTitleContainer;
      self->_squishedTitleContainer = v5;

      [(SFUnifiedTabBarItemTitleContainerView *)self->_squishedTitleContainer setCollapsed:0];
      isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
      barTheme = self->_barTheme;
      if (isSolariumEnabled)
      {
        [(SFUnifiedTabBarItemTitleContainerView *)self->_squishedTitleContainer setOverrideUserInterfaceStyle:[(_SFBarTheme *)barTheme glassURLFieldUserInterfaceStyle]];
        [(SFUnifiedBarTheme *)self->_barTheme activeTabTitleTheme];
      }

      else
      {
        [(SFUnifiedBarTheme *)barTheme titleTheme];
      }
      v11 = ;
      [(SFUnifiedTabBarItemTitleContainerView *)self->_squishedTitleContainer setTheme:v11];

      [(SFUnifiedTabBarItemTitleContainerView *)self->_squishedTitleContainer setShowsPrivateAnnotation:[(SFUnifiedBarTheme *)self->_barTheme isPrivate]];
      [(SFUnifiedTabBarItemTitleContainerView *)self->_squishedTitleContainer setUserInteractionEnabled:0];
      v12 = self->_squishedTitleContainer;
      _activeTabBarItemView = [(SFUnifiedTabBar *)self _activeTabBarItemView];
      [_activeTabBarItemView setSquishedTitleContainer:v12];

      v14 = self->_squishedTitleContainer;

      [(SFUnifiedTabBar *)self addSubview:v14];
    }

    else
    {
      _activeTabBarItemView2 = [(SFUnifiedTabBar *)self _activeTabBarItemView];
      [_activeTabBarItemView2 setSquishedTitleContainer:0];

      [(SFUnifiedTabBarItemTitleContainerView *)self->_squishedTitleContainer removeFromSuperview];
      v10 = self->_squishedTitleContainer;
      self->_squishedTitleContainer = 0;
    }
  }
}

- (void)layoutSubviews
{
  self->_isLayingOut = 1;
  v38.receiver = self;
  v38.super_class = SFUnifiedTabBar;
  [(SFUnifiedTabBar *)&v38 layoutSubviews];
  [(SFUnifiedTabBar *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(SFUnifiedBarMetrics *)self->_barMetrics itemHeight];
  v12 = v11;
  [(SFUnifiedTabBar *)self layoutMargins];
  v14 = v13;
  _prepareForResizeIfNeeded = [(SFUnifiedTabBar *)self _prepareForResizeIfNeeded];
  v39.origin.x = v4;
  v39.origin.y = v6;
  v39.size.width = v8;
  v39.size.height = v10;
  Width = CGRectGetWidth(v39);
  [(UIScrollView *)self->_scrollView frame];
  v45.origin.x = 0.0;
  v45.origin.y = v14;
  v45.size.width = Width;
  v45.size.height = v12;
  if (!CGRectEqualToRect(v40, v45))
  {
    [(UIScrollView *)self->_scrollView setFrame:0.0, v14, Width, v12];
  }

  [(UIScrollView *)self->_scrollView bounds];
  MinX = CGRectGetMinX(v41);
  v42.origin.x = v4;
  v42.origin.y = v6;
  v42.size.width = v8;
  v42.size.height = v10;
  [(_UIVisualEffectBackdropView *)self->_backgroundCaptureView setFrame:MinX, v14, CGRectGetWidth(v42), v12];
  x = self->_midpointForCenteredContent.x;
  v43.origin.x = v4;
  v43.origin.y = v6;
  v43.size.width = v8;
  v43.size.height = v10;
  v19 = x + CGRectGetWidth(v43) * -0.5;
  v44.origin.x = v4;
  v44.origin.y = v6;
  v44.size.width = v8;
  v44.size.height = v10;
  [(UIView *)self->_searchFieldPopoverAlignmentView setFrame:v19, v14, CGRectGetWidth(v44), v12];
  superview = [(_SFFluidProgressView *)self->_minimizedProgressView superview];
  [superview bounds];
  [(_SFFluidProgressView *)self->_minimizedProgressView setFrame:?];

  v21 = titleTextStyleForRole(self->_role);
  [(SFUnifiedTabBarItemTitleContainerView *)self->_squishedTitleContainer setTitleTextStyle:v21];

  [(UIScrollView *)self->_scrollView setScrollEnabled:[(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIsExpanded]^ 1];
  [(SFUnifiedTabBarLayout *)self->_layout autoScrollTouchInsets];
  [(UIScrollView *)self->_scrollView _setAutoScrollTouchInsets:?];
  [(SFUnifiedTabBar *)self _updateItemSizesIfNeeded];
  [(SFUnifiedTabBar *)self _updateContentSizeIfNeeded];
  [(SFUnifiedTabBar *)self _layoutSquishedTitleContainer];
  v22 = MEMORY[0x1E69DD250];
  v23 = _prepareForResizeIfNeeded != 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __33__SFUnifiedTabBar_layoutSubviews__block_invoke;
  v35[3] = &unk_1E721B400;
  v36 = _prepareForResizeIfNeeded;
  selfCopy = self;
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __33__SFUnifiedTabBar_layoutSubviews__block_invoke_2;
  v32 = &unk_1E721BB60;
  selfCopy2 = self;
  v34 = v36;
  v24 = v36;
  [v22 sf_animate:v23 usingDefaultMotionWithOptions:2 animations:v35 completion:&v29];
  [(UIView *)self ss_untransformedFrame:v29];
  self->_lastLayoutFrame.origin.x = v25;
  self->_lastLayoutFrame.origin.y = v26;
  self->_lastLayoutFrame.size.width = v27;
  self->_lastLayoutFrame.size.height = v28;
  self->_isLayingOut = 0;
}

uint64_t __33__SFUnifiedTabBar_layoutSubviews__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 targetContentOffset];
    [*(*(a1 + 40) + 408) setContentOffset:?];
  }

  [*(a1 + 40) _layOutSectionBackgrounds];
  v3 = *(a1 + 40);

  return [v3 _layoutItems];
}

void __33__SFUnifiedTabBar_layoutSubviews__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) itemsToKeepVisible];
  [v1 _didEndAnimationsForItems:v2];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v36 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v34.receiver = self;
  v34.super_class = SFUnifiedTabBar;
  v8 = [(SFUnifiedTabBar *)&v34 hitTest:eventCopy withEvent:x, y];
  v9 = v8;
  if (v8)
  {
    v29 = v8;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    visibleItems = [(SFUnifiedTabBarLayout *)self->_layout visibleItems];
    v11 = [visibleItems countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v31;
      v15 = -1.79769313e308;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(visibleItems);
          }

          reusableView = [*(*(&v30 + 1) + 8 * i) reusableView];
          _outermostLayer = [reusableView _outermostLayer];
          [_outermostLayer zPosition];
          v20 = v19;

          if (v20 >= v15)
          {
            [reusableView convertPoint:self fromView:{x, y}];
            v21 = [reusableView hitTest:eventCopy withEvent:?];
            v22 = v21;
            if (v21)
            {
              v23 = v21;

              _outermostLayer2 = [reusableView _outermostLayer];
              [_outermostLayer2 zPosition];
              v15 = v25;

              v13 = v23;
            }
          }
        }

        v12 = [visibleItems countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v12);
    }

    else
    {
      v13 = 0;
    }

    v9 = v29;
    if (v13)
    {
      v27 = v13;
    }

    else
    {
      v27 = v29;
    }

    v26 = v27;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (void)_updateBarMetricsForTraitChange
{
  barMetrics = self->_barMetrics;
  traitCollection = [(SFUnifiedTabBar *)self traitCollection];
  LODWORD(barMetrics) = [(SFUnifiedBarMetrics *)barMetrics updateWithTraitCollection:traitCollection];

  if (barMetrics)
  {

    [(SFUnifiedTabBar *)self setNeedsLayout];
  }
}

- (void)setItemArrangement:(id)arrangement animated:(BOOL)animated keepingItemVisible:(id)visible completionHandler:(id)handler
{
  animatedCopy = animated;
  arrangementCopy = arrangement;
  handlerCopy = handler;
  visibleCopy = visible;
  v14 = [(SFUnifiedTabBarItemArrangement *)arrangementCopy resolvedArrangementWithPinnedItemLimit:[(SFUnifiedTabBar *)self _pinnedItemLimitForItemArrangement:arrangementCopy] overflowItem:self->_pinnedOverflowItem];
  [(SFUnifiedTabBar *)self _setResolvedItemArrangement:v14 animated:animatedCopy keepingItemVisible:visibleCopy completionHandler:handlerCopy];

  unresolvedItemArrangement = self->_unresolvedItemArrangement;
  self->_unresolvedItemArrangement = arrangementCopy;
}

- (void)_setResolvedItemArrangement:(id)arrangement animated:(BOOL)animated keepingItemVisible:(id)visible completionHandler:(id)handler
{
  arrangementCopy = arrangement;
  visibleCopy = visible;
  handlerCopy = handler;
  v14 = self->_itemArrangement;
  v15 = [arrangementCopy isEqualToArrangement:v14];
  if (visibleCopy || !v15)
  {
    animatedCopy = animated;
    items = [(SFUnifiedTabBarItemArrangement *)v14 items];
    items2 = [arrangementCopy items];
    v17 = [items2 differenceFromArray:items withOptions:4];
    arrangementCopy2 = arrangement;
    if (self->_style)
    {
      v18 = [(SFUnifiedTabBar *)self itemDifferenceRemovingMovesBetweenSections:v17 from:v14 to:arrangementCopy];

      v17 = v18;
    }

    v19 = arrangementCopy;
    safari_insertionIndexes = [v17 safari_insertionIndexes];
    safari_removalIndexes = [v17 safari_removalIndexes];
    [(SFUnifiedTabBarItemArrangement *)v14 sections];
    v21 = v20 = v14;
    sections = [v19 sections];
    v85 = v21;
    v23 = v21;
    v14 = v20;
    v24 = [v23 safari_mapObjectsUsingBlock:&__block_literal_global_624];
    v88 = sections;
    v87 = [sections safari_mapObjectsUsingBlock:&__block_literal_global_624];
    v98 = v24;
    v97 = [v87 differenceFromArray:v24 withOptions:4];
    safari_removalIndexes2 = [v97 safari_removalIndexes];
    if ([(SFUnifiedTabBarItemArrangement *)v14 activeItemIsExpanded])
    {
      v83 = 0;
    }

    else
    {
      v83 = [v19 activeItemIsExpanded] ^ 1;
    }

    arrangementCopy = v19;
    v100 = v17;
    v101 = visibleCopy;
    v86 = items;
    v96 = handlerCopy;
    activeItem = [v19 activeItem];
    activeItem2 = [(SFUnifiedTabBarItemArrangement *)v14 activeItem];
    if (activeItem == activeItem2)
    {
      items3 = [v19 items];
      items4 = [(SFUnifiedTabBarItemArrangement *)v14 items];
      v27 = [items3 isEqual:items4];
    }

    else
    {
      v27 = 0;
    }

    [v19 determineActiveItemSquishStateIfNeeded:{-[SFUnifiedTabBarItemArrangement revealsSquishedActiveItem](v14, "revealsSquishedActiveItem") & v27}];
    activeItem3 = [(SFUnifiedTabBarItemArrangement *)v14 activeItem];
    activeItem4 = [v19 activeItem];

    if (activeItem3 != activeItem4)
    {
      _activeTabBarItemView = [(SFUnifiedTabBar *)self _activeTabBarItemView];
      [_activeTabBarItemView setSquishedTitleContainer:0];
    }

    v33 = self->_layout;
    objc_storeStrong(&self->_itemArrangement, arrangementCopy2);
    v34 = [SFUnifiedTabBarLayout alloc];
    _currentLayoutConfiguration = [(SFUnifiedTabBar *)self _currentLayoutConfiguration];
    v36 = [(SFUnifiedTabBarLayout *)v34 initWithItemArrangement:arrangementCopy configuration:_currentLayoutConfiguration];
    layout = self->_layout;
    self->_layout = v36;

    items5 = [arrangementCopy items];
    -[UIScrollView setAlwaysBounceHorizontal:](self->_scrollView, "setAlwaysBounceHorizontal:", [items5 count] > 1);

    [(SFUnifiedTabBar *)self setNeedsLayout];
    v39 = v100;
    visibleCopy = v101;
    if (v101 && ((v40 = [items2 indexOfObject:v101], v40 != 0x7FFFFFFFFFFFFFFFLL) ? (v41 = v83) : (v41 = 0), v41 == 1))
    {
      [(SFUnifiedTabBarLayout *)self->_layout contentOffsetForScrollingToItemAtIndex:v40];
    }

    else
    {
      [(UIScrollView *)self->_scrollView contentOffset];
    }

    v44 = v42;
    v45 = v43;
    insertions = [v100 insertions];
    v47 = [insertions safari_containsObjectPassingTest:&__block_literal_global_33];

    if (v47)
    {
      [(SFUnifiedTabBarLayout *)self->_layout contentOffsetForScrollingToDroppingItems];
      v44 = v48;
      v45 = v49;
    }

    scrollView = self->_scrollView;
    if (animatedCopy)
    {
      [(UIScrollView *)scrollView bounds];
      v52 = v51;
      v54 = v53;
      v56 = v55;
      v58 = v57;
      [(UIScrollView *)self->_scrollView contentOffset];
      v60 = v44 - v59;
      v61 = v52 + v44 - v59;
      v62 = MEMORY[0x1E695DFA8];
      visibleItems = [(SFUnifiedTabBarLayout *)v33 visibleItems];
      v64 = [v62 setWithArray:visibleItems];

      v65 = [(SFUnifiedTabBarLayout *)self->_layout itemsVisibleInRect:v61, v54, v56, v58];
      [v64 unionSet:v65];

      v66 = MEMORY[0x1E695DFA8];
      visibleSections = [(SFUnifiedTabBarLayout *)v33 visibleSections];
      v68 = [v66 setWithSet:visibleSections];

      v69 = [(SFUnifiedTabBarLayout *)self->_layout sectionsVisibleInRect:v61, v54, v56, v58];
      [v68 unionSet:v69];

      [(SFUnifiedTabBar *)self _willBeginAnimationsForItems:v64];
      [(SFUnifiedTabBar *)self _willBeginAnimationsForSections:v68];
      removals = [v100 removals];
      v94 = [removals safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_30];

      v71 = [v98 objectsAtIndexes:safari_removalIndexes2];
      v91 = [(NSMutableDictionary *)self->_sectionBackgroundViews safari_objectsForKeys:v71];

      [(SFUnifiedTabBar *)self _didBeginScrollingAnimation];
      v72 = objc_alloc_init(SFUnifiedTabBarLayoutTransitionInfo);
      [(SFUnifiedTabBarLayoutTransitionInfo *)v72 setDistanceToScroll:v60];
      [(SFUnifiedTabBarLayoutTransitionInfo *)v72 setNextLayout:self->_layout];
      [(SFUnifiedTabBarLayoutTransitionInfo *)v72 setPreviousLayout:v33];
      v73 = MEMORY[0x1E69DD250];
      v126[0] = MEMORY[0x1E69E9820];
      v126[1] = 3221225472;
      v126[2] = __93__SFUnifiedTabBar__setResolvedItemArrangement_animated_keepingItemVisible_completionHandler___block_invoke_4;
      v126[3] = &unk_1E721D7C0;
      v126[4] = self;
      v89 = v33;
      v127 = v33;
      v74 = v97;
      v128 = v74;
      v75 = v72;
      v129 = v75;
      v130 = safari_insertionIndexes;
      [v73 performWithoutAnimation:v126];
      v124[0] = 0;
      v124[1] = v124;
      v124[2] = 0x3032000000;
      v124[3] = __Block_byref_object_copy__3;
      v124[4] = __Block_byref_object_dispose__3;
      v125 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __93__SFUnifiedTabBar__setResolvedItemArrangement_animated_keepingItemVisible_completionHandler___block_invoke_32;
      aBlock[3] = &unk_1E721D7E8;
      aBlock[4] = self;
      v122 = v44;
      v123 = v45;
      v118 = v74;
      v84 = v75;
      v119 = v84;
      v120 = safari_removalIndexes;
      v121 = v124;
      v76 = _Block_copy(aBlock);
      v109[0] = MEMORY[0x1E69E9820];
      v109[1] = 3221225472;
      v109[2] = __93__SFUnifiedTabBar__setResolvedItemArrangement_animated_keepingItemVisible_completionHandler___block_invoke_2_33;
      v109[3] = &unk_1E721D810;
      v95 = v94;
      v110 = v95;
      selfCopy = self;
      v82 = v91;
      v112 = v82;
      v92 = v64;
      v113 = v92;
      v77 = v68;
      v114 = v77;
      v116 = v124;
      handlerCopy = v96;
      v115 = v96;
      v78 = _Block_copy(v109);
      WeakRetained = objc_loadWeakRetained(&self->_transitionCoordinator);
      if (WeakRetained && self->_role == 1)
      {
        v107[0] = MEMORY[0x1E69E9820];
        v107[1] = 3221225472;
        v107[2] = __93__SFUnifiedTabBar__setResolvedItemArrangement_animated_keepingItemVisible_completionHandler___block_invoke_3_34;
        v107[3] = &unk_1E721D838;
        v108 = v76;
        v105[0] = MEMORY[0x1E69E9820];
        v105[1] = 3221225472;
        v105[2] = __93__SFUnifiedTabBar__setResolvedItemArrangement_animated_keepingItemVisible_completionHandler___block_invoke_4_36;
        v105[3] = &unk_1E721D838;
        v106 = v78;
        [WeakRetained animateAlongsideTransition:v107 completion:v105];
      }

      else
      {
        [MEMORY[0x1E69DD250] sf_animate:1 usingDefaultMotionWithOptions:-[SFUnifiedTabBar _animationOptions](self animations:"_animationOptions") completion:{v76, v78}];
      }

      _Block_object_dispose(v124, 8);
      v39 = v100;
      visibleCopy = v101;
      v80 = v85;
      v81 = v86;
      v33 = v89;
    }

    else
    {
      [(UIScrollView *)scrollView setContentOffset:v44, v45];
      v80 = v85;
      [(SFUnifiedTabBar *)self _discardBackgroundViewsForIndexes:safari_removalIndexes2 ofSections:v85];
      v81 = v86;
      [(SFUnifiedTabBar *)self _discardViewsForIndexes:safari_removalIndexes ofItems:v86];
      v131[0] = MEMORY[0x1E69E9820];
      v131[1] = 3221225472;
      v131[2] = __93__SFUnifiedTabBar__setResolvedItemArrangement_animated_keepingItemVisible_completionHandler___block_invoke_2;
      v131[3] = &unk_1E721B360;
      v131[4] = self;
      [MEMORY[0x1E69DD250] performWithoutAnimation:v131];
      handlerCopy = v96;
      if (v96)
      {
        v96[2](v96);
      }
    }
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

uint64_t __93__SFUnifiedTabBar__setResolvedItemArrangement_animated_keepingItemVisible_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 object];
  v3 = [v2 isDropping];

  return v3;
}

uint64_t __93__SFUnifiedTabBar__setResolvedItemArrangement_animated_keepingItemVisible_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updatePinnedItemsSeparator];
  [*(a1 + 32) layoutIfNeeded];
  [*(a1 + 32) _uninstallSearchFieldIfNeeded];
  [*(*(a1 + 32) + 472) setShowsSearchField:1];
  v2 = *(*(a1 + 32) + 472);

  return [v2 layoutIfNeeded];
}

id __93__SFUnifiedTabBar__setResolvedItemArrangement_animated_keepingItemVisible_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = [v2 object];
    v4 = [v3 reusableView];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __93__SFUnifiedTabBar__setResolvedItemArrangement_animated_keepingItemVisible_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) nonVisibleSectionIndexes];
  [v2 _layOutSectionBackgroundsAtIndexes:v3 usingLayout:*(a1 + 40)];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) nonVisibleItemIndexes];
  [v4 _layoutItemsAtIndexes:v5 usingLayout:*(a1 + 40)];

  [*(a1 + 32) _setUpPinnedItemsSeparatorIfNeeded];
  v6 = *(a1 + 32);
  v7 = [*(a1 + 48) safari_insertionIndexes];
  [v6 _layOutAppearingSectionBackgroundsAtIndexes:v7 withTransitionInfo:*(a1 + 56)];

  v8 = *(a1 + 32);
  v10 = *(a1 + 56);
  v9 = *(a1 + 64);

  return [v8 _layoutAppearingItemsAtIndexes:v9 withTransitionInfo:v10];
}

void __93__SFUnifiedTabBar__setResolvedItemArrangement_animated_keepingItemVisible_completionHandler___block_invoke_32(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setContentOffset:{*(a1 + 72), *(a1 + 80)}];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) safari_removalIndexes];
  [v2 _layOutDisappearingSectionBackgroundsAtIndexes:v3 withTransitionInfo:*(a1 + 48)];

  [*(a1 + 32) _layoutDisappearingItemsAtIndexes:*(a1 + 56) withTransitionInfo:*(a1 + 48)];
  [*(a1 + 32) layoutIfNeeded];
  [*(a1 + 32) _beginTransitioningSearchField];
  v4 = *(*(a1 + 32) + 472);
  v5 = (*(*(a1 + 64) + 8) + 40);

  objc_storeStrong(v5, v4);
}

uint64_t __93__SFUnifiedTabBar__setResolvedItemArrangement_animated_keepingItemVisible_completionHandler___block_invoke_2_33(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _discardItemView:*(*(&v17 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v4);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(a1 + 48);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(a1 + 40) _discardSectionBackgroundView:{*(*(&v13 + 1) + 8 * v11++), v13}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v9);
  }

  [*(a1 + 40) _didEndAnimationsForItems:*(a1 + 56)];
  [*(a1 + 40) _didEndAnimationsForSections:*(a1 + 64)];
  [*(a1 + 40) _didEndScrollingAnimation];
  [*(a1 + 40) _endTransitioningSearchFieldInItemView:*(*(*(a1 + 80) + 8) + 40)];
  [*(a1 + 40) _tearDownPinnedItemsSeparatorIfNeeded];
  result = *(a1 + 72);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)_animationOptions
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled] && self->_role == 1)
  {
    return 2;
  }

  else
  {
    return 610;
  }
}

- (void)setActiveItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  unresolvedItemArrangement = self->_unresolvedItemArrangement;
  itemCopy = item;
  v8 = [(SFUnifiedTabBarItemArrangement *)unresolvedItemArrangement arrangementWithActiveItem:itemCopy];
  [(SFUnifiedTabBar *)self setItemArrangement:v8 animated:animatedCopy keepingItemVisible:itemCopy completionHandler:0];
}

- (void)setActiveItemIsExpanded:(BOOL)expanded animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  expandedCopy = expanded;
  unresolvedItemArrangement = self->_unresolvedItemArrangement;
  handlerCopy = handler;
  v10 = [(SFUnifiedTabBarItemArrangement *)unresolvedItemArrangement arrangementWithActiveItemIsExpanded:expandedCopy];
  [(SFUnifiedTabBar *)self setItemArrangement:v10 animated:animatedCopy keepingItemVisible:0 completionHandler:handlerCopy];
}

- (void)setItemsNeedEraserBasedCutoutBorder:(BOOL)border
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_itemsNeedEraserBasedCutoutBorder != border)
  {
    borderCopy = border;
    self->_itemsNeedEraserBasedCutoutBorder = border;
    layer = [(UIScrollView *)self->_scrollView layer];
    [layer setCreatesCompositingGroup:borderCopy];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    visibleItems = [(SFUnifiedTabBarLayout *)self->_layout visibleItems];
    v7 = [visibleItems countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        v10 = 0;
        do
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(visibleItems);
          }

          reusableView = [*(*(&v21 + 1) + 8 * v10) reusableView];
          [reusableView setItemsNeedEraserBasedCutoutBorder:borderCopy];

          ++v10;
        }

        while (v8 != v10);
        v8 = [visibleItems countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v8);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    allValues = [(NSMutableDictionary *)self->_sectionBackgroundViews allValues];
    v13 = [allValues countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        v16 = 0;
        do
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v17 + 1) + 8 * v16++) setItemsNeedEraserBasedCutoutBorder:borderCopy];
        }

        while (v14 != v16);
        v14 = [allValues countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v14);
    }
  }
}

- (void)updateLayout
{
  [(SFUnifiedTabBarLayout *)self->_layout updateItemSizes];
  [(SFUnifiedTabBar *)self setNeedsLayout];

  [(SFUnifiedTabBar *)self layoutIfNeeded];
}

- (UIView)searchFieldPopoverSourceView
{
  if ([(SFUnifiedTabBarLayout *)self->_layout contentIsCentered])
  {
    selfCopy = [(SFUnifiedTabBar *)self _activeTabBarItemView];
  }

  else if ([(SFUnifiedTabBarLayout *)self->_layout centersActiveItemWhenExpanded])
  {
    selfCopy = self->_searchFieldPopoverAlignmentView;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (UIEdgeInsets)searchFieldPopoverSourceInsets
{
  if ([(SFUnifiedTabBarLayout *)self->_layout contentIsCentered]|| [(SFUnifiedTabBarLayout *)self->_layout centersActiveItemWhenExpanded])
  {
    v3 = *MEMORY[0x1E69DDCE0];
    v4 = *(MEMORY[0x1E69DDCE0] + 8);
    v5 = *(MEMORY[0x1E69DDCE0] + 16);
    v6 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    [(SFUnifiedTabBar *)self layoutMargins];
    UIEdgeInsetsReplace();
  }

  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (BOOL)usesMoreMenu
{
  if (self->_role)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v3 = +[SFFeatureManager sharedFeatureManager];
    v2 = [v3 usesFormatMenuInUnifiedTabBar] ^ 1;
  }

  return v2;
}

- (UIView)menuPopoverSourceView
{
  _activeTabBarItemView = [(SFUnifiedTabBar *)self _activeTabBarItemView];
  menuPopoverSourceView = [_activeTabBarItemView menuPopoverSourceView];

  return menuPopoverSourceView;
}

- (UITextField)searchField
{
  [(SFUnifiedTabBar *)self layoutIfNeeded];
  searchField = self->_searchField;

  return searchField;
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(SFUnifiedTabBarLayout *)self->_layout setStyle:?];

    [(SFUnifiedTabBar *)self setNeedsLayout];
  }
}

- (void)_didSelectItemView:(id)view event:(id)event
{
  viewCopy = view;
  item = [viewCopy item];
  if (item)
  {
    activeItem = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];
    if (item != activeItem || [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement revealsSquishedActiveItem])
    {

LABEL_5:
      if (![viewCopy isOccluded] || -[SFUnifiedTabBarItemArrangement activeItemIsExpanded](self->_itemArrangement, "activeItemIsExpanded") || -[SFUnifiedTabBarLayout horizontalSpaceIsExtremelyConstrained](self->_layout, "horizontalSpaceIsExtremelyConstrained"))
      {
        [(SFUnifiedTabBar *)self didSelectItem:item];
      }

      else
      {
        [(SFUnifiedTabBar *)self scrollToItem:item animated:1];
      }

      goto LABEL_9;
    }

    activeItemIsSquished = [(SFUnifiedTabBarLayout *)self->_layout activeItemIsSquished];

    if (!activeItemIsSquished)
    {
      goto LABEL_5;
    }

    [(SFUnifiedTabBar *)self _setRevealsSquishedActiveItem:1 animated:1];
    date = [MEMORY[0x1E695DF00] date];
    lastTapToRevealActiveItemDate = self->_lastTapToRevealActiveItemDate;
    self->_lastTapToRevealActiveItemDate = date;
  }

LABEL_9:
}

- (void)_hover:(id)_hover
{
  scrollView = self->_scrollView;
  _hoverCopy = _hover;
  [_hoverCopy locationInView:scrollView];
  v7 = v6;
  v9 = v8;
  state = [_hoverCopy state];

  if ((state - 1) > 1)
  {
    tabHoverPreviewController = self->_tabHoverPreviewController;

    [(SFTabHoverPreviewController *)tabHoverPreviewController updateWithItem:0 atLocation:v7, v9];
  }

  else
  {
    v11 = [(SFUnifiedTabBarLayout *)self->_layout itemAtPoint:v7, v9];
    if (v11)
    {
      v14 = v11;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v14;
      }

      else
      {
        v12 = 0;
      }

      [(SFTabHoverPreviewController *)self->_tabHoverPreviewController updateWithItem:v12 atLocation:v7, v9];
      v11 = v14;
    }
  }
}

- (void)_updateHoveringItem:(id)item
{
  itemCopy = item;
  hoveringItem = [(SFUnifiedTabBarLayout *)self->_layout hoveringItem];

  if (hoveringItem != itemCopy)
  {
    hoveringItem2 = [(SFUnifiedTabBarLayout *)self->_layout hoveringItem];
    reusableView = [hoveringItem2 reusableView];
    [reusableView setHovering:0];

    [(SFUnifiedTabBarLayout *)self->_layout setHoveringItem:itemCopy];
    [(SFUnifiedTabBar *)self setNeedsLayout];
  }
}

- (void)_layoutItems
{
  allItemIndexes = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement allItemIndexes];
  [(SFUnifiedTabBar *)self _layoutItemsAtIndexes:allItemIndexes usingLayout:self->_layout];

  [(SFUnifiedTabBar *)self _installSearchFieldIfNeeded];

  [(SFUnifiedTabBar *)self _layOutPinnedItemsSeparator];
}

- (void)_layoutItemsAtIndexes:(id)indexes usingLayout:(id)layout
{
  layoutCopy = layout;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__SFUnifiedTabBar__layoutItemsAtIndexes_usingLayout___block_invoke;
  v8[3] = &unk_1E721D888;
  v8[4] = self;
  v9 = layoutCopy;
  v7 = layoutCopy;
  [v7 enumerateLayoutForItemsAtIndexes:indexes usingBlock:v8];
}

void __53__SFUnifiedTabBar__layoutItemsAtIndexes_usingLayout___block_invoke(uint64_t a1, void *a2, uint64_t a3, __int128 *a4)
{
  v7 = a2;
  v8 = v7;
  if ((*(a4 + 56) & 1) != 0 || [v7 activeAnimationCount])
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) itemArrangement];
    v11 = [v9 _viewForItem:v8 inArrangement:v10];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__SFUnifiedTabBar__layoutItemsAtIndexes_usingLayout___block_invoke_2;
    aBlock[3] = &unk_1E721D860;
    v12 = *(a1 + 32);
    v13 = a4[7];
    v29 = a4[6];
    v30 = v13;
    v31 = *(a4 + 16);
    v14 = a4[3];
    v25 = a4[2];
    v26 = v14;
    v15 = a4[4];
    v28 = a4[5];
    v27 = v15;
    v16 = *a4;
    v24 = a4[1];
    v23 = v16;
    aBlock[4] = v12;
    v20 = v11;
    v21 = v8;
    v22 = *(a1 + 40);
    v17 = v11;
    v18 = _Block_copy(aBlock);
    v18[2]();
  }

  else
  {
    [*(a1 + 32) _discardViewForItem:v8];
  }

  [*(a1 + 40) setItemAtIndex:a3 isVisible:*(a4 + 56)];
  [*(a1 + 40) setItemAtIndex:a3 isOccluded:*(a4 + 57)];
}

void __53__SFUnifiedTabBar__layoutItemsAtIndexes_usingLayout___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 176);
  v11[6] = *(a1 + 160);
  v11[7] = v4;
  v12 = *(a1 + 192);
  v5 = *(a1 + 112);
  v11[2] = *(a1 + 96);
  v11[3] = v5;
  v6 = *(a1 + 144);
  v11[4] = *(a1 + 128);
  v11[5] = v6;
  v7 = *(a1 + 80);
  v11[0] = *(a1 + 64);
  v11[1] = v7;
  [v2 _applyLayoutInfo:v11 toItemView:v3];
  [*(a1 + 40) layoutIfNeeded];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = *(a1 + 48);
    v9 = [*(a1 + 56) itemArrangement];
    v10 = [v9 itemTitles];
    [v8 updateTitleWhenCollapsedWithItemTitles:v10];
  }
}

- (void)_applyLayoutInfo:(id *)info toItemView:(id)view
{
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *&v14.a = *MEMORY[0x1E695EFD0];
  *&v14.c = v5;
  *&v14.tx = *(MEMORY[0x1E695EFD0] + 32);
  viewCopy = view;
  [viewCopy setTransform:&v14];
  [viewCopy setFrame:{info->var0.origin.x, info->var0.origin.y, info->var0.size.width, info->var0.size.height, *&v14.a, *&v14.c, *&v14.tx}];
  [viewCopy setAlpha:info->var1];
  CGAffineTransformMakeScale(&v17, info->var2, info->var2);
  v14 = v17;
  [viewCopy setTransform:&v14];
  var3 = info->var3;
  [viewCopy zOffsetWithinSection];
  v9 = var3 + v8;
  _outermostLayer = [viewCopy _outermostLayer];
  [_outermostLayer setZPosition:v9];

  [viewCopy setVisible:info->var4];
  [viewCopy setOccluded:info->var5];
  [viewCopy setSquishedInset:info->var6];
  [viewCopy setContentAlpha:info->var8];
  [viewCopy setContentBlurRadius:info->var7];
  _sf_usesLeftToRightLayout = [viewCopy _sf_usesLeftToRightLayout];
  var0 = info->var9.var0;
  if (_sf_usesLeftToRightLayout)
  {
    var1 = info->var9.var0;
  }

  else
  {
    var1 = info->var9.var1;
  }

  if (_sf_usesLeftToRightLayout)
  {
    var0 = info->var9.var1;
  }

  v14.a = var1;
  v14.b = var1;
  v14.c = var0;
  v14.d = var0;
  v14.tx = var0;
  v14.ty = var0;
  v15 = var1;
  v16 = var1;
  [viewCopy setCornerRadii:&v14];
  [viewCopy setVisibleSeparatorEdges:info->var11];
  [viewCopy setSeparatorOutset:info->var12];
  [viewCopy setSeparatorVerticalInset:info->var13];
}

- (void)_layoutSquishedTitleContainer
{
  squishedTitleContainer = self->_squishedTitleContainer;
  if (squishedTitleContainer)
  {
    [(SFUnifiedTabBarItemTitleContainerView *)squishedTitleContainer setHidden:self->_squishTransformFactor == 1.0];
    squishTransformFactor = self->_squishTransformFactor;
    if (squishTransformFactor != 1.0)
    {
      [(SFUnifiedTabBarItemTitleContainerView *)self->_squishedTitleContainer setAlpha:_SFClamp(squishTransformFactor * -2.0 + 1.5, 0.0, 1.0)];
      [(SFUnifiedTabBar *)self _squishedTitleContainerFrame];
      v5 = self->_squishedTitleContainer;

      [(SFUnifiedTabBarItemTitleContainerView *)v5 setFrame:?];
    }
  }
}

- (CGRect)_squishedTitleContainerFrame
{
  [(SFUnifiedTabBar *)self layoutMargins];
  v4 = v3;
  [(SFUnifiedTabBar *)self bounds];
  Width = CGRectGetWidth(v14);
  [(SFUnifiedBarMetrics *)self->_barMetrics itemHeight];
  top = self->_squishedContentInset.top;
  left = self->_squishedContentInset.left;
  v8 = left + 0.0;
  v9 = v4 + top;
  v10 = Width - (left + self->_squishedContentInset.right);
  v12 = v11 - (top + self->_squishedContentInset.bottom);
  v13 = v8;
  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v13;
  return result;
}

- (CGRect)frameForTabBarItem:(id)item
{
  [(SFUnifiedTabBarLayout *)self->_layout frameForItem:item];
  scrollView = self->_scrollView;

  [(SFUnifiedTabBar *)self convertRect:scrollView fromView:?];
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)tabBarItemAtPoint:(CGPoint)point
{
  layout = self->_layout;
  [(UIScrollView *)self->_scrollView convertPoint:self fromView:point.x, point.y];
  v4 = [(SFUnifiedTabBarLayout *)layout itemAtPoint:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tabBarItemClosestToPoint:(CGPoint)point
{
  layout = self->_layout;
  [(UIScrollView *)self->_scrollView convertPoint:self fromView:point.x, point.y];

  return [(SFUnifiedTabBarLayout *)layout itemClosestToPoint:&__block_literal_global_44 passingTest:?];
}

uint64_t __44__SFUnifiedTabBar_tabBarItemClosestToPoint___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (UIEdgeInsets)_itemTouchInsets
{
  [(SFUnifiedTabBar *)self layoutMargins];
  v3 = -v2;
  v5 = -v4;
  v6 = 0.0;
  v7 = 0.0;
  result.right = v7;
  result.bottom = v5;
  result.left = v6;
  result.top = v3;
  return result;
}

- (id)_currentLayoutConfiguration
{
  v3 = [[SFUnifiedTabBarLayoutConfiguration alloc] initWithScrollView:self->_scrollView];
  [(SFUnifiedTabBarLayoutConfiguration *)v3 setBarMetrics:self->_barMetrics];
  [(SFUnifiedTabBarLayoutConfiguration *)v3 setStyle:self->_style];
  [(SFUnifiedTabBarLayoutConfiguration *)v3 setMidpointForCenteredContent:self->_midpointForCenteredContent.x, self->_midpointForCenteredContent.y];
  [(SFUnifiedTabBarLayoutConfiguration *)v3 setStandalone:[(SFUnifiedTabBar *)self isStandalone]];
  [(SFUnifiedTabBarLayoutConfiguration *)v3 setFlipped:[(UIView *)self _sf_usesLeftToRightLayout]^ 1];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__SFUnifiedTabBar__currentLayoutConfiguration__block_invoke;
  v5[3] = &unk_1E721D8D0;
  objc_copyWeak(&v6, &location);
  [(SFUnifiedTabBarLayoutConfiguration *)v3 setPreferredWidthForItem:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

double __46__SFUnifiedTabBar__currentLayoutConfiguration__block_invoke(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = 0.0;
  if (WeakRetained && [v5 isDynamicallySized])
  {
    v8 = [WeakRetained viewForBarItem:v5];
    [v8 preferredWidthForHeight:a3];
    v7 = v9;
  }

  return v7;
}

- (void)setBarMetrics:(id)metrics
{
  metricsCopy = metrics;
  if (self->_barMetrics != metricsCopy)
  {
    v6 = metricsCopy;
    objc_storeStrong(&self->_barMetrics, metrics);
    [(SFUnifiedTabBarLayout *)self->_layout setBarMetrics:v6];
    [(SFUnifiedTabBar *)self setNeedsLayout];
    metricsCopy = v6;
  }
}

- (void)_updateItemSizesIfNeeded
{
  if ([(SFUnifiedTabBarMetrics *)self->_barMetrics sizeClass]== self->_sizeClass)
  {
    layout = self->_layout;

    [(SFUnifiedTabBarLayout *)layout updateItemSizesIfNeeded];
  }

  else
  {
    [(SFUnifiedTabBarMetrics *)self->_barMetrics setSizeClass:?];
    v4 = self->_layout;

    [(SFUnifiedTabBarLayout *)v4 updateItemSizes];
  }
}

- (void)_updateContentSizeIfNeeded
{
  [(SFUnifiedTabBarLayout *)self->_layout contentSize];
  v4 = v3;
  v6 = v5;
  [(UIScrollView *)self->_scrollView contentSize];
  if (v8 != v4 || v7 != v6)
  {
    scrollView = self->_scrollView;

    [(UIScrollView *)scrollView setContentSize:v4, v6];
  }
}

- (void)_updateScrolling
{
  v3 = [(UIScrollView *)self->_scrollView isDragging]|| self->_scrollingAnimationCount != 0;
  v4 = !v3;
  [(UIPointerInteraction *)self->_pointerInteraction setEnabled:v4];
  [(UIHoverGestureRecognizer *)self->_hoverRecognizer setEnabled:v4];
  if (v4)
  {
    if (self->_tabHoverPreviewSnapshotsNeedUpdate)
    {
      [(SFTabHoverPreviewController *)self->_tabHoverPreviewController setNeedsSnapshotUpdate];
      self->_tabHoverPreviewSnapshotsNeedUpdate = 0;
    }
  }

  else
  {
    tabHoverPreviewController = self->_tabHoverPreviewController;

    [(SFTabHoverPreviewController *)tabHoverPreviewController cancel];
  }
}

- (CGPoint)_adjustedContentOffsetForContentOffset:(CGPoint)offset size:(CGSize)size contentSize:(CGSize)contentSize
{
  width = contentSize.width;
  v6 = size.width;
  y = offset.y;
  x = offset.x;
  [(UIScrollView *)self->_scrollView adjustedContentInset:offset.x];
  v10 = fmax(fmin(x + v9, width - v6), 0.0) - v9;
  v11 = y;
  result.y = v11;
  result.x = v10;
  return result;
}

- (void)registerReuseIdentifier:(id)identifier withItemViewProvider:(id)provider configurationHandler:(id)handler
{
  handlerCopy = handler;
  providerCopy = provider;
  identifierCopy = identifier;
  v11 = [[SFUnifiedTabBarItemViewRegistration alloc] initWithViewProvider:providerCopy configurationHandler:handlerCopy];

  [(NSMutableDictionary *)self->_itemViewRegistrationsByReuseIdentifier setObject:v11 forKeyedSubscript:identifierCopy];
}

- (id)_viewForItem:(id)item inArrangement:(id)arrangement
{
  itemCopy = item;
  arrangementCopy = arrangement;
  viewReuseIdentifier = [itemCopy viewReuseIdentifier];
  v9 = [(NSMutableDictionary *)self->_itemViewRegistrationsByReuseIdentifier objectForKeyedSubscript:viewReuseIdentifier];
  v10 = [v9 dequeueOrCreateViewForItem:itemCopy isPreview:0];
  [v10 setReuseIdentifier:viewReuseIdentifier];
  [v9 configureView:v10 forItem:itemCopy inArrangement:arrangementCopy isPreview:0];
  if (self->_tabHoverPreviewSnapshotsNeedUpdate)
  {
    self->_tabHoverPreviewSnapshotsNeedUpdate = 1;
  }

  else
  {
    superview = [v10 superview];
    if (superview == self->_scrollView)
    {
      isHidden = [v10 isHidden];
    }

    else
    {
      isHidden = 1;
    }

    self->_tabHoverPreviewSnapshotsNeedUpdate = isHidden;
  }

  v13 = [(SFUnifiedTabBar *)self _superviewForItem:itemCopy inArrangement:arrangementCopy];
  superview2 = [v10 superview];

  if (superview2 != v13)
  {
    [v13 addSubview:v10];
  }

  [v10 setBarMetrics:self->_barMetrics];
  [v10 setBarTheme:self->_barTheme];
  v15 = [(SFUnifiedTabBar *)self _captureGroupNameForItem:itemCopy inArrangement:arrangementCopy];
  [v10 setCutoutBorderCopyGroupName:v15];

  [v10 setBarBackgroundAlpha:self->_barBackgroundAlpha];
  [v10 setItemsNeedEraserBasedCutoutBorder:self->_itemsNeedEraserBasedCutoutBorder];
  [v10 setShouldEnableCopyCutoutBorder:{-[SFUnifiedTabBar _needsBackgroundCaptureView](self, "_needsBackgroundCaptureView")}];
  [v10 setThemeColorVisibility:self->_themeColorVisibility];
  [v10 setShowsSeparators:self->_style == 1];
  [v10 setSquishTransformFactor:self->_squishTransformFactor];
  [(SFUnifiedTabBar *)self _itemTouchInsets];
  [v10 _setTouchInsets:?];
  [v10 setHidden:{objc_msgSend(itemCopy, "isHidden")}];

  return v10;
}

- (id)_superviewForItem:(id)item inArrangement:(id)arrangement
{
  style = self->_style;
  if (style == 1)
  {
    v7 = [arrangement sectionForItem:item];
    sectionBackgroundViews = self->_sectionBackgroundViews;
    identifier = [v7 identifier];
    v10 = [(NSMutableDictionary *)sectionBackgroundViews objectForKeyedSubscript:identifier];

    if (v10)
    {
      contentView = [v10 contentView];
    }

    else
    {
      contentView = self->_scrollView;
    }

    v4 = contentView;
  }

  else if (!style)
  {
    v4 = self->_scrollView;
  }

  return v4;
}

- (id)_captureGroupNameForItem:(id)item inArrangement:(id)arrangement
{
  itemCopy = item;
  arrangementCopy = arrangement;
  v9 = arrangementCopy;
  style = self->_style;
  if (style == 1)
  {
    v11 = [arrangementCopy sectionForItem:itemCopy];
    sectionBackgroundViews = self->_sectionBackgroundViews;
    identifier = [v11 identifier];
    v14 = [(NSMutableDictionary *)sectionBackgroundViews objectForKeyedSubscript:identifier];

    if (v14)
    {
      [v14 glassCaptureGroupName];
    }

    else
    {
      [(SFUnifiedTabBar *)self _backgroundCaptureGroupName];
    }
    _backgroundCaptureGroupName = ;
  }

  else if (!style)
  {
    _backgroundCaptureGroupName = [(SFUnifiedTabBar *)self _backgroundCaptureGroupName];
  }

  return _backgroundCaptureGroupName;
}

- (void)_discardViewForItem:(id)item
{
  itemCopy = item;
  reusableView = [itemCopy reusableView];
  if (reusableView)
  {
    [(SFUnifiedTabBar *)self _discardItemView:reusableView];
    [reusableView setItem:0];
    [itemCopy setReusableView:0];
  }
}

- (void)_discardItemView:(id)view
{
  viewCopy = view;
  [(SFUnifiedTabBarItemView *)viewCopy setHidden:1];
  [(SFUnifiedTabBarItemView *)viewCopy endEditing:0];
  v4 = viewCopy;
  itemViewOwningSearchField = self->_itemViewOwningSearchField;
  if (itemViewOwningSearchField == viewCopy)
  {
    self->_itemViewOwningSearchField = 0;

    v4 = viewCopy;
  }

  itemViewRegistrationsByReuseIdentifier = self->_itemViewRegistrationsByReuseIdentifier;
  reuseIdentifier = [(SFUnifiedBarItemView *)v4 reuseIdentifier];
  v8 = [(NSMutableDictionary *)itemViewRegistrationsByReuseIdentifier objectForKeyedSubscript:reuseIdentifier];

  [v8 enqueueItemView:viewCopy];
}

- (void)_discardViewsForIndexes:(id)indexes ofItems:(id)items
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__SFUnifiedTabBar__discardViewsForIndexes_ofItems___block_invoke;
  v4[3] = &unk_1E721D8F8;
  v4[4] = self;
  [items enumerateObjectsAtIndexes:indexes options:0 usingBlock:v4];
}

- (void)_discardViewsForAnimatingItemsIfNeeded:(id)needed
{
  v16 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [neededCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(neededCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        reusableView = [v9 reusableView];
        if (([reusableView isVisible] & 1) == 0 && !objc_msgSend(v9, "activeAnimationCount"))
        {
          [(SFUnifiedTabBar *)self _discardViewForItem:v9];
        }
      }

      v6 = [neededCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_willBeginAnimationsForItems:(id)items
{
  v13 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [itemsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(itemsCopy);
        }

        [*(*(&v8 + 1) + 8 * v7) setActiveAnimationCount:{objc_msgSend(*(*(&v8 + 1) + 8 * v7), "activeAnimationCount") + 1}];
        ++v7;
      }

      while (v5 != v7);
      v5 = [itemsCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_didEndAnimationsForItems:(id)items
{
  v15 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = itemsCopy;
  if (itemsCopy)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = [itemsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9) setActiveAnimationCount:{objc_msgSend(*(*(&v10 + 1) + 8 * v9), "activeAnimationCount") - 1}];
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(SFUnifiedTabBar *)self _discardViewsForAnimatingItemsIfNeeded:v5];
  }
}

- (id)_firstFullyVisibleInactiveItem
{
  visibleItems = [(SFUnifiedTabBarLayout *)self->_layout visibleItems];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__SFUnifiedTabBar__firstFullyVisibleInactiveItem__block_invoke;
  v6[3] = &unk_1E721B710;
  v6[4] = self;
  v4 = [visibleItems safari_firstObjectPassingTest:v6];

  return v4;
}

BOOL __49__SFUnifiedTabBar__firstFullyVisibleInactiveItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 reusableView];
  v5 = v4;
  if (v4 && ([v4 isOccluded] & 1) == 0)
  {
    v7 = [*(*(a1 + 32) + 672) activeItem];
    v6 = v7 != v3;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setUpBuiltInItemViewRegistrations
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__SFUnifiedTabBar__setUpBuiltInItemViewRegistrations__block_invoke_2;
  v5[3] = &unk_1E721D940;
  objc_copyWeak(&v6, &location);
  [(SFUnifiedTabBar *)self registerReuseIdentifier:@"SFUnifiedTabBarItem" withItemViewProvider:&__block_literal_global_51 configurationHandler:v5];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__SFUnifiedTabBar__setUpBuiltInItemViewRegistrations__block_invoke_3;
  v3[3] = &unk_1E721D968;
  objc_copyWeak(&v4, &location);
  [(SFUnifiedTabBar *)self registerReuseIdentifier:@"SFPinnedOverflowItem" withItemViewProvider:v3 configurationHandler:0];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

SFUnifiedTabBarItemView *__53__SFUnifiedTabBar__setUpBuiltInItemViewRegistrations__block_invoke()
{
  v0 = objc_alloc_init(SFUnifiedTabBarItemView);

  return v0;
}

void __53__SFUnifiedTabBar__setUpBuiltInItemViewRegistrations__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a4;
  v10 = a3;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configureTabBarItemView:v11 forItem:v10 inArrangement:v9 isPreview:a5];
}

SFPinnedOverflowItemView *__53__SFUnifiedTabBar__setUpBuiltInItemViewRegistrations__block_invoke_3(uint64_t a1)
{
  v2 = objc_alloc_init(SFPinnedOverflowItemView);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [(SFPinnedOverflowItemView *)v2 setDelegate:WeakRetained];
    v4 = [WeakRetained _pinnedOverflowMenu];
    [(SFPinnedOverflowItemView *)v2 setMenu:v4];
  }

  return v2;
}

- (void)_configureTabBarItemView:(id)view forItem:(id)item inArrangement:(id)arrangement isPreview:(BOOL)preview
{
  viewCopy = view;
  itemCopy = item;
  arrangementCopy = arrangement;
  activeItem = [arrangementCopy activeItem];

  [viewCopy setDelegate:self];
  if (activeItem == itemCopy)
  {
    [viewCopy setActive:{-[SFUnifiedTabBar isStandalone](self, "isStandalone") ^ 1}];
    [viewCopy setSelected:1];
    v13 = [(SFUnifiedTabBar *)self canCloseItem:itemCopy];
  }

  else
  {
    [viewCopy setActive:0];
    [viewCopy setSelected:0];
    v13 = 0;
  }

  [viewCopy setShowsCloseButton:v13];
  [viewCopy setAccessoryButtonLayout:{-[SFUnifiedTabBar _itemViewAccessoryButtonLayout](self, "_itemViewAccessoryButtonLayout")}];
  items = [arrangementCopy items];
  v15 = [items count] == 1 && -[SFUnifiedTabBar _centersContentForSingleItem](self, "_centersContentForSingleItem") || self->_role == 2;

  [viewCopy setContentAlignment:v15];
  [viewCopy setFollowsKeyboardLayoutDirection:self->_role != 2];
  [viewCopy setTitleFadesWhenTruncated:self->_style == 0];
  v16 = titleTextStyleForRole(self->_role);
  [viewCopy setTitleTextStyle:v16];

  [viewCopy setPlatterStyle:{-[SFUnifiedTabBar _platterStyleForTabBarItem:](self, "_platterStyleForTabBarItem:", itemCopy)}];
  if ([itemCopy isPinned])
  {
    allowsScrollingPinnedItems = [arrangementCopy allowsScrollingPinnedItems];
  }

  else
  {
    allowsScrollingPinnedItems = 0;
  }

  [viewCopy setShowsPinnedIndicator:allowsScrollingPinnedItems];
  if (!preview)
  {
    [viewCopy removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
    [viewCopy addTarget:self action:sel__didSelectItemView_event_ forControlEvents:0x2000];
    activeItem2 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];
    squishedTitleContainer = 0;
    if (activeItem2 == itemCopy)
    {
      squishedTitleContainer = self->_squishedTitleContainer;
    }

    [viewCopy setSquishedTitleContainer:squishedTitleContainer];

    menuButtonConfigurator = [itemCopy menuButtonConfigurator];
    [viewCopy setFormatMenuButtonConfigurator:menuButtonConfigurator];
  }
}

- (UIImage)searchFieldIcon
{
  _activeTabBarItemView = [(SFUnifiedTabBar *)self _activeTabBarItemView];
  searchFieldIcon = [_activeTabBarItemView searchFieldIcon];

  return searchFieldIcon;
}

- (void)setSearchFieldIcon:(id)icon
{
  iconCopy = icon;
  _activeTabBarItemView = [(SFUnifiedTabBar *)self _activeTabBarItemView];
  [_activeTabBarItemView setSearchFieldIcon:iconCopy];
}

- (id)_activeTabBarItemView
{
  if (self->_role == 2)
  {
    v2 = 0;
  }

  else
  {
    activeItem = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];
    reusableView = [activeItem reusableView];

    if (reusableView && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v2 = reusableView;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

- (int64_t)_platterStyleForTabBarItem:(id)item
{
  itemCopy = item;
  if (self->_role == 1)
  {
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v5 = 12;
    }

    else
    {
      v5 = 5;
    }
  }

  else
  {
    activeItem = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];

    if (self->_role == 2)
    {
      if (self->_style == 1)
      {
        if (activeItem == itemCopy)
        {
          items = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
          if ([items count] <= 1)
          {
            v5 = 7;
          }

          else
          {
            v5 = 11;
          }
        }

        else
        {
          v5 = 7;
        }
      }

      else if (activeItem == itemCopy)
      {
        v5 = 4;
      }

      else
      {
        v5 = 1;
      }
    }

    else if (activeItem == itemCopy)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (int64_t)_itemViewAccessoryButtonLayout
{
  if (self->_role != 1)
  {
    return 0;
  }

  if (self->_searchFieldShowsFormatMenuButtonAccessories)
  {
    return 2;
  }

  return 1;
}

- (void)_layOutSectionBackgrounds
{
  allSectionIndexes = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement allSectionIndexes];
  [(SFUnifiedTabBar *)self _layOutSectionBackgroundsAtIndexes:allSectionIndexes usingLayout:self->_layout];
}

- (void)_layOutSectionBackgroundsAtIndexes:(id)indexes usingLayout:(id)layout
{
  if (self->_style)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __66__SFUnifiedTabBar__layOutSectionBackgroundsAtIndexes_usingLayout___block_invoke;
    v4[3] = &unk_1E721D990;
    v4[4] = self;
    [layout enumerateLayoutForSectionBackgroundsAtIndexes:indexes usingBlock:v4];
  }
}

void __66__SFUnifiedTabBar__layOutSectionBackgroundsAtIndexes_usingLayout___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if ((*(a4 + 56) & 1) != 0 || [*(a1 + 32) _isSectionAnimating:v6])
  {
    v7 = [*(a1 + 32) _backgroundViewForSection:v6];
    v8 = *(a1 + 32);
    v9 = *(a4 + 112);
    v13[6] = *(a4 + 96);
    v13[7] = v9;
    v14 = *(a4 + 128);
    v10 = *(a4 + 48);
    v13[2] = *(a4 + 32);
    v13[3] = v10;
    v11 = *(a4 + 80);
    v13[4] = *(a4 + 64);
    v13[5] = v11;
    v12 = *(a4 + 16);
    v13[0] = *a4;
    v13[1] = v12;
    [v8 _applyLayoutInfo:v13 toSectionBackground:v7];
  }

  else
  {
    [*(a1 + 32) _discardBackgroundViewForSection:v6];
  }
}

- (void)_layOutAppearingSectionBackgroundsAtIndexes:(id)indexes withTransitionInfo:(id)info
{
  if (self->_style)
  {
    infoCopy = info;
    indexesCopy = indexes;
    nextLayout = [infoCopy nextLayout];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__SFUnifiedTabBar__layOutAppearingSectionBackgroundsAtIndexes_withTransitionInfo___block_invoke;
    v9[3] = &unk_1E721D990;
    v9[4] = self;
    [nextLayout enumerateInitialLayoutForAppearingSectionBackgroundsAtIndexes:indexesCopy withTransitionInfo:infoCopy usingBlock:v9];
  }
}

void __82__SFUnifiedTabBar__layOutAppearingSectionBackgroundsAtIndexes_withTransitionInfo___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 56) == 1)
  {
    v16 = v4;
    v17 = v5;
    v8 = [*(a1 + 32) _backgroundViewForSection:a2];
    v9 = *(a1 + 32);
    v10 = *(a4 + 112);
    v14[6] = *(a4 + 96);
    v14[7] = v10;
    v15 = *(a4 + 128);
    v11 = *(a4 + 48);
    v14[2] = *(a4 + 32);
    v14[3] = v11;
    v12 = *(a4 + 80);
    v14[4] = *(a4 + 64);
    v14[5] = v12;
    v13 = *(a4 + 16);
    v14[0] = *a4;
    v14[1] = v13;
    [v9 _applyLayoutInfo:v14 toSectionBackground:v8];
  }
}

- (void)_layOutDisappearingSectionBackgroundsAtIndexes:(id)indexes withTransitionInfo:(id)info
{
  if (self->_style)
  {
    infoCopy = info;
    indexesCopy = indexes;
    previousLayout = [infoCopy previousLayout];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __85__SFUnifiedTabBar__layOutDisappearingSectionBackgroundsAtIndexes_withTransitionInfo___block_invoke;
    v9[3] = &unk_1E721D990;
    v9[4] = self;
    [previousLayout enumerateFinalLayoutForDisappearingSectionBackgroundsAtIndexes:indexesCopy withTransitionInfo:infoCopy usingBlock:v9];
  }
}

void __85__SFUnifiedTabBar__layOutDisappearingSectionBackgroundsAtIndexes_withTransitionInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [*(a1 + 32) _existingBackgroundViewForSection:v6];
  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = *(a4 + 112);
    v15[6] = *(a4 + 96);
    v15[7] = v9;
    v16 = *(a4 + 128);
    v10 = *(a4 + 48);
    v15[2] = *(a4 + 32);
    v15[3] = v10;
    v11 = *(a4 + 80);
    v15[4] = *(a4 + 64);
    v15[5] = v11;
    v12 = *(a4 + 16);
    v15[0] = *a4;
    v15[1] = v12;
    [v8 _applyLayoutInfo:v15 toSectionBackground:v7];
    v13 = *(*(a1 + 32) + 592);
    v14 = [v6 identifier];
    [v13 setObject:0 forKeyedSubscript:v14];
  }
}

- (void)_applyLayoutInfo:(id *)info toSectionBackground:(id)background
{
  v6 = *(MEMORY[0x1E695EFD0] + 16);
  *&v19.a = *MEMORY[0x1E695EFD0];
  *&v19.c = v6;
  *&v19.tx = *(MEMORY[0x1E695EFD0] + 32);
  backgroundCopy = background;
  [backgroundCopy setTransform:&v19];
  [backgroundCopy setFrame:{info->var0.origin.x, info->var0.origin.y, info->var0.size.width, info->var0.size.height, *&v19.a, *&v19.c, *&v19.tx}];
  [backgroundCopy setAlpha:info->var1];
  CGAffineTransformMakeScale(&v22, info->var2, info->var2);
  v19 = v22;
  [backgroundCopy setTransform:&v19];
  var3 = info->var3;
  layer = [backgroundCopy layer];
  [layer setZPosition:var3];

  [backgroundCopy setVisible:info->var4];
  _sf_usesLeftToRightLayout = [backgroundCopy _sf_usesLeftToRightLayout];
  var0 = info->var9.var0;
  if (_sf_usesLeftToRightLayout)
  {
    var1 = info->var9.var0;
  }

  else
  {
    var1 = info->var9.var1;
  }

  if (_sf_usesLeftToRightLayout)
  {
    var0 = info->var9.var1;
  }

  v19.a = var1;
  v19.b = var1;
  v19.c = var0;
  v19.d = var0;
  v19.tx = var0;
  v19.ty = var0;
  v20 = var1;
  v21 = var1;
  [backgroundCopy setCornerRadii:&v19];
  x = info->var0.origin.x;
  width = info->var0.size.width;
  height = info->var0.size.height;
  [(SFUnifiedTabBarMetrics *)self->_barMetrics backgroundOutset];
  v17 = -v16;
  contentView = [backgroundCopy contentView];
  [contentView setBounds:{x, v17, width, height}];

  [backgroundCopy layoutIfNeeded];
}

- (id)itemDifferenceRemovingMovesBetweenSections:(id)sections from:(id)from to:(id)to
{
  v33 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  fromCopy = from;
  toCopy = to;
  array = [MEMORY[0x1E695DF70] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = sectionsCopy;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      v12 = 0;
      v26 = v10;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * v12);
        if ([v13 associatedIndex] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [array addObject:v13];
        }

        else
        {
          v14 = array;
          object = [v13 object];
          v16 = [fromCopy sectionForItem:object];
          v17 = [toCopy sectionForItem:object];
          identifier = [v16 identifier];
          identifier2 = [v17 identifier];
          v20 = [identifier isEqual:identifier2];

          if (v20)
          {
            array = v14;
            [v14 addObject:v13];
          }

          else
          {
            safari_changeRemovingAssociatedIndex = [v13 safari_changeRemovingAssociatedIndex];
            array = v14;
            [v14 addObject:safari_changeRemovingAssociatedIndex];
          }

          v10 = v26;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v10);
  }

  v22 = [objc_alloc(MEMORY[0x1E696ADD8]) initWithChanges:array];

  return v22;
}

- (void)_willBeginAnimationsForSections:(id)sections
{
  animatingSectionIdentifiers = self->_animatingSectionIdentifiers;
  v4 = [sections safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_626];
  [(NSCountedSet *)animatingSectionIdentifiers unionSet:v4];
}

- (void)_didEndAnimationsForSections:(id)sections
{
  animatingSectionIdentifiers = self->_animatingSectionIdentifiers;
  sectionsCopy = sections;
  v5 = [sectionsCopy safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_626];
  [(NSCountedSet *)animatingSectionIdentifiers minusSet:v5];

  [(SFUnifiedTabBar *)self _discardBackgroundViewsForAnimatingSectionsIfNeeded:sectionsCopy];
}

- (BOOL)_isSectionAnimating:(id)animating
{
  animatingSectionIdentifiers = self->_animatingSectionIdentifiers;
  identifier = [animating identifier];
  LOBYTE(animatingSectionIdentifiers) = [(NSCountedSet *)animatingSectionIdentifiers containsObject:identifier];

  return animatingSectionIdentifiers;
}

- (void)_discardBackgroundViewsForAnimatingSectionsIfNeeded:(id)needed
{
  v16 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [neededCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(neededCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [(SFUnifiedTabBar *)self _existingBackgroundViewForSection:v9];
        if (([v10 isVisible] & 1) == 0 && !-[SFUnifiedTabBar _isSectionAnimating:](self, "_isSectionAnimating:", v9))
        {
          [(SFUnifiedTabBar *)self _discardBackgroundViewForSection:v9];
        }
      }

      v6 = [neededCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (id)_backgroundViewForSection:(id)section
{
  v4 = [(SFUnifiedTabBar *)self _dequeueOrCreateBackgroundViewForSection:section];
  [v4 setBarBackgroundAlpha:self->_barBackgroundAlpha];
  [v4 setBarMetrics:self->_barMetrics];
  [v4 setBarTheme:self->_barTheme];
  _backgroundCaptureGroupName = [(SFUnifiedTabBar *)self _backgroundCaptureGroupName];
  [v4 setCutoutBorderCopyGroupName:_backgroundCaptureGroupName];

  [v4 setItemsNeedEraserBasedCutoutBorder:self->_itemsNeedEraserBasedCutoutBorder];
  [v4 setShouldEnableCopyCutoutBorder:{-[SFUnifiedTabBar _needsBackgroundCaptureView](self, "_needsBackgroundCaptureView")}];

  return v4;
}

- (id)_dequeueOrCreateBackgroundViewForSection:(id)section
{
  sectionCopy = section;
  sectionBackgroundViews = self->_sectionBackgroundViews;
  identifier = [sectionCopy identifier];
  v7 = [(NSMutableDictionary *)sectionBackgroundViews objectForKeyedSubscript:identifier];

  if (!v7)
  {
    safari_popLastObject = [(NSMutableArray *)self->_sectionBackgroundViewReuseStack safari_popLastObject];
    v9 = safari_popLastObject;
    v10 = safari_popLastObject ? safari_popLastObject : objc_alloc_init(SFUnifiedTabBarSectionBackgroundView);
    v7 = v10;

    [v7 setHidden:0];
    v11 = self->_sectionBackgroundViews;
    identifier2 = [sectionCopy identifier];
    [(NSMutableDictionary *)v11 setObject:v7 forKeyedSubscript:identifier2];

    superview = [v7 superview];
    scrollView = self->_scrollView;

    if (superview != scrollView)
    {
      [(UIScrollView *)self->_scrollView addSubview:v7];
    }
  }

  v15 = v7;

  return v15;
}

- (id)_existingBackgroundViewForSection:(id)section
{
  sectionBackgroundViews = self->_sectionBackgroundViews;
  identifier = [section identifier];
  v5 = [(NSMutableDictionary *)sectionBackgroundViews objectForKeyedSubscript:identifier];

  return v5;
}

- (void)_discardBackgroundViewForSection:(id)section
{
  sectionCopy = section;
  sectionBackgroundViews = self->_sectionBackgroundViews;
  v10 = sectionCopy;
  identifier = [sectionCopy identifier];
  v7 = [(NSMutableDictionary *)sectionBackgroundViews objectForKeyedSubscript:identifier];

  if (v7)
  {
    [(SFUnifiedTabBar *)self _discardSectionBackgroundView:v7];
    v8 = self->_sectionBackgroundViews;
    identifier2 = [v10 identifier];
    [(NSMutableDictionary *)v8 setObject:0 forKeyedSubscript:identifier2];
  }
}

- (void)_discardSectionBackgroundView:(id)view
{
  viewCopy = view;
  [viewCopy setHidden:1];
  [(NSMutableArray *)self->_sectionBackgroundViewReuseStack addObject:viewCopy];
}

- (void)_discardBackgroundViewsForIndexes:(id)indexes ofSections:(id)sections
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__SFUnifiedTabBar__discardBackgroundViewsForIndexes_ofSections___block_invoke;
  v4[3] = &unk_1E721D9B8;
  v4[4] = self;
  [sections enumerateObjectsAtIndexes:indexes options:0 usingBlock:v4];
}

- (id)_prepareForResizeIfNeeded
{
  v45 = *MEMORY[0x1E69E9840];
  p_lastLayoutFrame = &self->_lastLayoutFrame;
  if (CGRectEqualToRect(*MEMORY[0x1E695F058], self->_lastLayoutFrame))
  {
    goto LABEL_18;
  }

  [(UIView *)self ss_untransformedFrame];
  if (CGRectEqualToRect(v47, *p_lastLayoutFrame))
  {
    goto LABEL_18;
  }

  v4 = [(SFUnifiedTabBar *)self _pinnedItemLimitForItemArrangement:self->_unresolvedItemArrangement];
  if (![(SFUnifiedTabBarItemArrangement *)self->_itemArrangement allowsScrollingPinnedItems]&& [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement pinnedItemLimit]!= v4)
  {
    v5 = [(SFUnifiedTabBarItemArrangement *)self->_unresolvedItemArrangement resolvedArrangementWithPinnedItemLimit:v4 overflowItem:self->_pinnedOverflowItem];
    [(SFUnifiedTabBar *)self _setResolvedItemArrangement:v5 animated:0 keepingItemVisible:0 completionHandler:0];
  }

  [MEMORY[0x1E69DD250] inheritedAnimationDuration];
  if (v6 == 0.0)
  {
LABEL_18:
    v34 = 0;
  }

  else
  {
    [(SFUnifiedTabBar *)self bounds];
    v8 = v7;
    v10 = v9;
    _currentLayoutConfiguration = [(SFUnifiedTabBar *)self _currentLayoutConfiguration];
    [(UIScrollView *)self->_scrollView contentOffset];
    [_currentLayoutConfiguration setVisibleRectOverride:?];
    v12 = [[SFUnifiedTabBarLayout alloc] initWithItemArrangement:self->_itemArrangement configuration:_currentLayoutConfiguration];
    [(SFUnifiedTabBar *)self _targetContentOffsetForAnimatedResizeWithTargetLayout:v12];
    v14 = v13;
    v16 = v15;
    visibleItemIndexes = [(SFUnifiedTabBarLayout *)self->_layout visibleItemIndexes];
    v18 = [(SFUnifiedTabBarLayout *)v12 indexesOfItemsVisibleInRect:v14, v16, v8, v10];
    v19 = [v18 mutableCopy];

    [v19 removeIndexes:visibleItemIndexes];
    v37 = visibleItemIndexes;
    v20 = [visibleItemIndexes mutableCopy];
    [v20 addIndexes:v19];
    v21 = MEMORY[0x1E695DFD8];
    items = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
    v36 = v20;
    v23 = [items objectsAtIndexes:v20];
    v24 = [v21 setWithArray:v23];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v41;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v41 != v28)
          {
            objc_enumerationMutation(v25);
          }

          [*(*(&v40 + 1) + 8 * i) setActiveAnimationCount:{objc_msgSend(*(*(&v40 + 1) + 8 * i), "activeAnimationCount") + 1}];
        }

        v27 = [v25 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v27);
    }

    v30 = MEMORY[0x1E69DD250];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __44__SFUnifiedTabBar__prepareForResizeIfNeeded__block_invoke;
    v38[3] = &unk_1E721B400;
    v38[4] = self;
    v31 = v19;
    v39 = v31;
    [v30 performWithoutAnimation:v38];
    [_currentLayoutConfiguration setVisibleRectOverride:{v14, v16, v8, v10}];
    v32 = [[SFUnifiedTabBarLayout alloc] initWithItemArrangement:self->_itemArrangement configuration:_currentLayoutConfiguration];

    if (![(SFUnifiedTabBarLayout *)self->_layout activeItemIsSquished]&& [(SFUnifiedTabBarLayout *)v32 activeItemIsSquished])
    {
      v33 = [(SFUnifiedTabBarItemArrangement *)self->_unresolvedItemArrangement arrangementWithActiveItemSquishState:1];
      [(SFUnifiedTabBar *)self setItemArrangement:v33 animated:0 keepingItemVisible:0 completionHandler:0];
    }

    v34 = [[SFUnifiedTabBarAnimatedResizingInfo alloc] initWithItemsToKeepVisible:v25 targetContentOffset:v14, v16];
  }

  return v34;
}

- (CGPoint)_targetContentOffsetForAnimatedResizeWithTargetLayout:(id)layout
{
  layoutCopy = layout;
  [(UIScrollView *)self->_scrollView contentOffset];
  v6 = v5;
  v8 = v7;
  if (self->_pinsScrollPositionToTrailingEdgeDuringResize)
  {
    if ([(UIView *)self _sf_usesLeftToRightLayout])
    {
      [(UIView *)self ss_untransformedFrame];
      MinX = CGRectGetMinX(v46);
      v6 = v6 + MinX - CGRectGetMinX(self->_lastLayoutFrame);
    }
  }

  else
  {
    _firstFullyVisibleInactiveItem = [(SFUnifiedTabBar *)self _firstFullyVisibleInactiveItem];
    if (_firstFullyVisibleInactiveItem)
    {
      [(SFUnifiedTabBarLayout *)self->_layout frameForItem:_firstFullyVisibleInactiveItem];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      [layoutCopy frameForItem:_firstFullyVisibleInactiveItem];
      rect = v19;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      if ([(UIView *)self _sf_usesLeftToRightLayout])
      {
        v47.origin.x = v12;
        v47.origin.y = v14;
        v47.size.width = v16;
        v47.size.height = v18;
        v26 = CGRectGetMinX(v47);
        [(UIScrollView *)self->_scrollView bounds];
        v27 = v26 - CGRectGetMinX(v48);
        v49.origin.x = rect;
        v49.origin.y = v21;
        v49.size.width = v23;
        v49.size.height = v25;
        v6 = CGRectGetMinX(v49) - v27;
      }

      else
      {
        [(UIScrollView *)self->_scrollView bounds];
        v43 = v25;
        MaxX = CGRectGetMaxX(v50);
        v51.origin.x = v12;
        v51.origin.y = v14;
        v51.size.width = v16;
        v51.size.height = v18;
        v29 = MaxX - CGRectGetMaxX(v51);
        v52.size.height = v43;
        v52.origin.x = rect;
        v52.origin.y = v21;
        v52.size.width = v23;
        v30 = CGRectGetMaxX(v52) + v29;
        [(SFUnifiedTabBar *)self bounds];
        v6 = v30 - CGRectGetWidth(v53);
      }
    }
  }

  [(SFUnifiedTabBar *)self bounds];
  v32 = v31;
  v34 = v33;
  [layoutCopy contentSize];
  [(SFUnifiedTabBar *)self _adjustedContentOffsetForContentOffset:v6 size:v8 contentSize:v32, v34, v35, v36];
  v38 = v37;
  v40 = v39;

  v41 = v38;
  v42 = v40;
  result.y = v42;
  result.x = v41;
  return result;
}

- (void)_beginTransitioningSearchField
{
  [(SFUnifiedTabBar *)self _installSearchFieldIfNeeded];
  [(SFUnifiedTabBarItemView *)self->_itemViewOwningSearchField beginTransitioningSearchField];
  [(SFUnifiedTabBarItemView *)self->_itemViewOwningSearchField setShowsSearchField:[(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIsExpanded]];
  itemViewOwningSearchField = self->_itemViewOwningSearchField;

  [(SFUnifiedTabBarItemView *)itemViewOwningSearchField layoutIfNeeded];
}

- (void)_endTransitioningSearchFieldInItemView:(id)view
{
  [view endTransitioningSearchField];

  [(SFUnifiedTabBar *)self _uninstallSearchFieldIfNeeded];
}

- (void)_installSearchFieldIfNeeded
{
  if ([(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIsExpanded])
  {
    activeItem = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];
    hasOverlayConfiguration = [activeItem hasOverlayConfiguration];

    if ((hasOverlayConfiguration & 1) == 0)
    {
      _activeTabBarItemView = [(SFUnifiedTabBar *)self _activeTabBarItemView];
      itemViewOwningSearchField = self->_itemViewOwningSearchField;
      if (_activeTabBarItemView != itemViewOwningSearchField)
      {
        v10 = _activeTabBarItemView;
        v7 = _activeTabBarItemView;
        v8 = self->_itemViewOwningSearchField;
        self->_itemViewOwningSearchField = v7;
        v9 = itemViewOwningSearchField;

        [(SFUnifiedTabBarItemView *)v7 setSearchField:self->_searchField];
        [(SFUnifiedTabBarItemView *)v9 setSearchField:0];
        [(SFUnifiedTabBarItemView *)v9 setShowsSearchField:0];
        [(SFUnifiedTabBarItemView *)v9 layoutIfNeeded];

        _activeTabBarItemView = v10;
      }
    }
  }
}

- (void)_uninstallSearchFieldIfNeeded
{
  if (![(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItemIsExpanded])
  {
    [(SFUnifiedTabBarItemView *)self->_itemViewOwningSearchField setSearchField:0];
    itemViewOwningSearchField = self->_itemViewOwningSearchField;
    self->_itemViewOwningSearchField = 0;
  }
}

- (id)dragPreviewForBarItem:(id)item
{
  itemCopy = item;
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *&v36.a = *MEMORY[0x1E695EFD0];
  *&v36.c = v5;
  *&v36.tx = *(MEMORY[0x1E695EFD0] + 32);
  overflowPinnedItems = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement overflowPinnedItems];
  v7 = [overflowPinnedItems containsObject:itemCopy];

  layout = self->_layout;
  if (v7)
  {
    [(SFUnifiedTabBarLayout *)layout frameForItem:self->_pinnedOverflowItem];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    CGAffineTransformMakeScale(&v36, 0.0, 0.0);
  }

  else
  {
    [(SFUnifiedTabBarLayout *)layout frameForItem:itemCopy];
    v10 = v17;
    v12 = v18;
    v14 = v19;
    v16 = v20;
  }

  itemViewRegistrationsByReuseIdentifier = self->_itemViewRegistrationsByReuseIdentifier;
  viewReuseIdentifier = [itemCopy viewReuseIdentifier];
  v23 = [(NSMutableDictionary *)itemViewRegistrationsByReuseIdentifier objectForKeyedSubscript:viewReuseIdentifier];

  createItemView = [v23 createItemView];
  [v23 configureView:createItemView forItem:itemCopy inArrangement:self->_itemArrangement isPreview:1];
  [createItemView setBarMetrics:self->_barMetrics];
  [createItemView setBarTheme:self->_barTheme];
  [createItemView setFrame:{v10, v12, v14, v16}];
  [createItemView layoutIfNeeded];
  v25 = self->_scrollView;
  items = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement items];
  v27 = [items containsObject:itemCopy];

  if (v27)
  {
    v28 = [(SFUnifiedTabBar *)self _superviewForItem:itemCopy inArrangement:self->_itemArrangement];

    v25 = v28;
  }

  v29 = objc_alloc(MEMORY[0x1E69DC9A8]);
  UIRectGetCenter();
  v35 = v36;
  v30 = [v29 initWithContainer:v25 center:&v35 transform:?];
  v31 = objc_alloc(MEMORY[0x1E69DD068]);
  previewParameters = [createItemView previewParameters];
  v33 = [v31 initWithView:createItemView parameters:previewParameters target:v30];

  return v33;
}

- (id)dragPreviewForBarItem:(id)item pinned:(BOOL)pinned
{
  pinnedCopy = pinned;
  itemCopy = item;
  itemViewRegistrationsByReuseIdentifier = self->_itemViewRegistrationsByReuseIdentifier;
  viewReuseIdentifier = [itemCopy viewReuseIdentifier];
  v9 = [(NSMutableDictionary *)itemViewRegistrationsByReuseIdentifier objectForKeyedSubscript:viewReuseIdentifier];

  v10 = [v9 dequeueOrCreateViewForItem:itemCopy isPreview:1];
  [v9 configureView:v10 forItem:itemCopy inArrangement:self->_itemArrangement isPreview:1];
  [(UIView *)self->_dragPreviewContainer addSubview:v10];
  [v10 setBarMetrics:self->_barMetrics];
  [v10 setBarTheme:self->_barTheme];
  layout = self->_layout;
  if (pinnedCopy)
  {
    v12 = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement allowsScrollingPinnedItems]^ 1;
  }

  else
  {
    v12 = 0;
  }

  [(SFUnifiedTabBarLayout *)layout frameForPreviewingItem:itemCopy pinned:v12];
  [v10 setFrame:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = pinnedCopy && [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement allowsScrollingPinnedItems];
    [v10 setShowsPinnedIndicator:v13];
  }

  v14 = MEMORY[0x1E69DD250];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __48__SFUnifiedTabBar_dragPreviewForBarItem_pinned___block_invoke;
  v20[3] = &unk_1E721B360;
  v21 = v10;
  v15 = v10;
  [v14 performWithoutAnimation:v20];
  v16 = objc_alloc(MEMORY[0x1E69DC998]);
  previewParameters = [v15 previewParameters];
  v18 = [v16 initWithView:v15 parameters:previewParameters];

  return v18;
}

- (void)cleanUpDragPreviewForBarItem:(id)item
{
  itemCopy = item;
  reusablePreviewView = [itemCopy reusablePreviewView];
  [reusablePreviewView removeFromSuperview];

  [itemCopy setReusablePreviewView:0];
}

- (void)_layoutAppearingItemsAtIndexes:(id)indexes withTransitionInfo:(id)info
{
  scrollView = self->_scrollView;
  infoCopy = info;
  indexesCopy = indexes;
  [(UIScrollView *)scrollView bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [infoCopy distanceToScroll];
  v18 = v17 + v10;
  nextLayout = [infoCopy nextLayout];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __69__SFUnifiedTabBar__layoutAppearingItemsAtIndexes_withTransitionInfo___block_invoke;
  v21[3] = &unk_1E721D9E0;
  v23 = v18;
  v24 = v12;
  v25 = v14;
  v26 = v16;
  v21[4] = self;
  v22 = nextLayout;
  v20 = nextLayout;
  [v20 enumerateInitialLayoutForAppearingItemsAtIndexes:indexesCopy withTransitionInfo:infoCopy usingBlock:v21];
}

void __69__SFUnifiedTabBar__layoutAppearingItemsAtIndexes_withTransitionInfo___block_invoke(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8)
{
  v14 = a2;
  v25.origin.x = a3;
  v25.origin.y = a4;
  v25.size.width = a5;
  v25.size.height = a6;
  if (CGRectIntersectsRect(v25, *(a1 + 48)))
  {
    v15 = *(a1 + 32);
    v16 = [*(a1 + 40) itemArrangement];
    v17 = [v15 _viewForItem:v14 inArrangement:v16];

    v18 = *(a1 + 32);
    v19 = *(a8 + 112);
    v23[6] = *(a8 + 96);
    v23[7] = v19;
    v24 = *(a8 + 128);
    v20 = *(a8 + 48);
    v23[2] = *(a8 + 32);
    v23[3] = v20;
    v21 = *(a8 + 80);
    v23[4] = *(a8 + 64);
    v23[5] = v21;
    v22 = *(a8 + 16);
    v23[0] = *a8;
    v23[1] = v22;
    [v18 _applyLayoutInfo:v23 toItemView:v17];
    [v17 layoutIfNeeded];
  }
}

- (void)_layoutDisappearingItemsAtIndexes:(id)indexes withTransitionInfo:(id)info
{
  infoCopy = info;
  indexesCopy = indexes;
  previousLayout = [infoCopy previousLayout];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__SFUnifiedTabBar__layoutDisappearingItemsAtIndexes_withTransitionInfo___block_invoke;
  v9[3] = &unk_1E721DA08;
  v9[4] = self;
  [previousLayout enumerateFinalLayoutForDisappearingItemsAtIndexes:indexesCopy withTransitionInfo:infoCopy usingBlock:v9];
}

void __72__SFUnifiedTabBar__layoutDisappearingItemsAtIndexes_withTransitionInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [v6 reusableView];
  if (v7)
  {
    [v7 setShouldEnableCopyCutoutBorder:{objc_msgSend(*(a1 + 32), "_needsBackgroundCaptureView")}];
    v8 = *(a1 + 32);
    v9 = *(a4 + 112);
    v13[6] = *(a4 + 96);
    v13[7] = v9;
    v14 = *(a4 + 128);
    v10 = *(a4 + 48);
    v13[2] = *(a4 + 32);
    v13[3] = v10;
    v11 = *(a4 + 80);
    v13[4] = *(a4 + 64);
    v13[5] = v11;
    v12 = *(a4 + 16);
    v13[0] = *a4;
    v13[1] = v12;
    [v8 _applyLayoutInfo:v13 toItemView:v7];
    [v7 setShowsSeparators:0];
    [v7 layoutIfNeeded];
    [v6 setReusableView:0];
    [v7 setItem:0];
  }
}

- (void)_setRevealsSquishedActiveItem:(BOOL)item animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = item && [(SFUnifiedTabBarLayout *)self->_layout activeItemIsSquished];
  if (v6 != [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement revealsSquishedActiveItem])
  {
    v7 = [(SFUnifiedTabBarItemArrangement *)self->_unresolvedItemArrangement arrangementWithActiveItemSquishState:v6];
    [(SFUnifiedTabBar *)self setItemArrangement:v7 animated:animatedCopy keepingItemVisible:0 completionHandler:0];
  }
}

- (CGRect)pinnedItemDropArea
{
  [(SFUnifiedTabBarLayout *)self->_layout pinnedItemDropArea];
  scrollView = self->_scrollView;

  [(SFUnifiedTabBar *)self convertRect:scrollView fromView:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)_layOutPinnedItemsSeparator
{
  if ([(SFUnifiedTabBarLayout *)self->_layout showsPinnedItemsSeparator])
  {
    [(SFUnifiedTabBarLayout *)self->_layout pinnedItemsSeparatorFrame];
    p_pinnedItemsSeparator = &self->_pinnedItemsSeparator;
    [(UIView *)self->_pinnedItemsSeparator setFrame:?];
    [(SFUnifiedTabBarLayout *)self->_layout pinnedItemsSeparatorOpacity];
    v5 = v4 * SFBarContentAlphaForSquishTransformFactor(self->_squishTransformFactor);
  }

  else
  {
    p_pinnedItemsSeparator = &self->_pinnedItemsSeparator;
    v5 = 0.0;
  }

  v6 = *p_pinnedItemsSeparator;

  [(UIView *)v6 setAlpha:v5];
}

- (void)_updatePinnedItemsSeparator
{
  [(SFUnifiedTabBar *)self _setUpPinnedItemsSeparatorIfNeeded];

  [(SFUnifiedTabBar *)self _tearDownPinnedItemsSeparatorIfNeeded];
}

- (void)_setUpPinnedItemsSeparatorIfNeeded
{
  if (!self->_pinnedItemsSeparator && [(SFUnifiedTabBarLayout *)self->_layout showsPinnedItemsSeparator])
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    pinnedItemsSeparator = self->_pinnedItemsSeparator;
    self->_pinnedItemsSeparator = v3;

    separatorColor = [(SFUnifiedBarTheme *)self->_barTheme separatorColor];
    [(UIView *)self->_pinnedItemsSeparator setBackgroundColor:separatorColor];

    +[SFUnifiedBarMetrics separatorWidth];
    [(UIView *)self->_pinnedItemsSeparator _setCornerRadius:v6 * 0.5];
    [(SFUnifiedTabBarLayout *)self->_layout pinnedItemsSeparatorFrame];
    [(UIView *)self->_pinnedItemsSeparator setFrame:?];
    [(UIView *)self->_pinnedItemsSeparator setAlpha:0.0];
    layer = [(UIView *)self->_pinnedItemsSeparator layer];
    [layer setZPosition:-1.79769313e308];

    scrollView = self->_scrollView;
    v9 = self->_pinnedItemsSeparator;

    [(UIScrollView *)scrollView addSubview:v9];
  }
}

- (void)_tearDownPinnedItemsSeparatorIfNeeded
{
  if (![(SFUnifiedTabBarLayout *)self->_layout showsPinnedItemsSeparator])
  {
    [(UIView *)self->_pinnedItemsSeparator removeFromSuperview];
    pinnedItemsSeparator = self->_pinnedItemsSeparator;
    self->_pinnedItemsSeparator = 0;
  }
}

- (id)_pinnedOverflowMenu
{
  objc_initWeak(&location, self);
  v2 = MEMORY[0x1E69DCC60];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__SFUnifiedTabBar__pinnedOverflowMenu__block_invoke;
  v5[3] = &unk_1E721C890;
  objc_copyWeak(&v6, &location);
  v3 = [v2 safari_menuWithUncachedChildrenProvider:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

id __38__SFUnifiedTabBar__pinnedOverflowMenu__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[84] overflowPinnedItems];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38__SFUnifiedTabBar__pinnedOverflowMenu__block_invoke_2;
    v7[3] = &unk_1E721DA58;
    objc_copyWeak(&v8, (a1 + 32));
    v5 = [v4 safari_mapAndFilterObjectsUsingBlock:v7];
    objc_destroyWeak(&v8);
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

id __38__SFUnifiedTabBar__pinnedOverflowMenu__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__SFUnifiedTabBar__pinnedOverflowMenu__block_invoke_3;
  v6[3] = &unk_1E721DA30;
  objc_copyWeak(&v7, (a1 + 32));
  v4 = [v3 menuElementRepresentationWithSelectionHandler:v6];
  objc_destroyWeak(&v7);

  return v4;
}

void __38__SFUnifiedTabBar__pinnedOverflowMenu__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didSelectItem:v3];
}

- (unint64_t)_pinnedItemLimitForItemArrangement:(id)arrangement
{
  arrangementCopy = arrangement;
  [(SFUnifiedTabBar *)self bounds];
  v5 = [SFUnifiedTabBarLayout pinnedItemLimitForItemArrangement:arrangementCopy tabBarWidth:self->_barMetrics barMetrics:[(SFUnifiedTabBar *)self isStandalone] standalone:CGRectGetWidth(v8)];
  pinnedItems = [arrangementCopy pinnedItems];

  LODWORD(arrangementCopy) = [pinnedItems safari_containsObjectPassingTest:&__block_literal_global_73_0];
  return v5 + arrangementCopy;
}

- (void)setRole:(int64_t)role
{
  if (self->_role != role)
  {
    self->_role = role;
    _shouldDelayContentTouches = [(SFUnifiedTabBar *)self _shouldDelayContentTouches];
    scrollView = self->_scrollView;

    [(UIScrollView *)scrollView setDelaysContentTouches:_shouldDelayContentTouches];
  }
}

- (void)setSearchFieldShowsFormatMenuButtonAccessories:(BOOL)accessories
{
  if (self->_searchFieldShowsFormatMenuButtonAccessories != accessories)
  {
    self->_searchFieldShowsFormatMenuButtonAccessories = accessories;
    [(SFUnifiedTabBar *)self setNeedsLayout];
  }
}

- (BOOL)searchFieldShowsPersistentStopReloadButton
{
  _activeTabBarItemView = [(SFUnifiedTabBar *)self _activeTabBarItemView];
  showsPersistentStopReloadButton = [_activeTabBarItemView showsPersistentStopReloadButton];

  return showsPersistentStopReloadButton;
}

- (void)_updateBackgroundCaptureMode
{
  v25 = *MEMORY[0x1E69E9840];
  _needsBackgroundCaptureView = [(SFUnifiedTabBar *)self _needsBackgroundCaptureView];
  if ([(_UIVisualEffectBackdropView *)self->_backgroundCaptureView renderMode]!= _needsBackgroundCaptureView)
  {
    [(_UIVisualEffectBackdropView *)self->_backgroundCaptureView setRenderMode:_needsBackgroundCaptureView];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    visibleItems = [(SFUnifiedTabBarLayout *)self->_layout visibleItems];
    v5 = [visibleItems countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        v8 = 0;
        do
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(visibleItems);
          }

          reusableView = [*(*(&v19 + 1) + 8 * v8) reusableView];
          [reusableView setShouldEnableCopyCutoutBorder:_needsBackgroundCaptureView];

          ++v8;
        }

        while (v6 != v8);
        v6 = [visibleItems countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v6);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    allValues = [(NSMutableDictionary *)self->_sectionBackgroundViews allValues];
    v11 = [allValues countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v15 + 1) + 8 * v14++) setShouldEnableCopyCutoutBorder:_needsBackgroundCaptureView];
        }

        while (v12 != v14);
        v12 = [allValues countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v12);
    }
  }
}

- (void)setBarBackgroundAlpha:(double)alpha
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_barBackgroundAlpha != alpha)
  {
    self->_barBackgroundAlpha = alpha;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    visibleItems = [(SFUnifiedTabBarLayout *)self->_layout visibleItems];
    v6 = [visibleItems countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(visibleItems);
          }

          reusableView = [*(*(&v11 + 1) + 8 * i) reusableView];
          [reusableView setBarBackgroundAlpha:alpha];
        }

        v7 = [visibleItems countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [(SFUnifiedTabBar *)self _updateBackgroundCaptureMode];
  }
}

- (void)setBarTheme:(id)theme
{
  v29 = *MEMORY[0x1E69E9840];
  themeCopy = theme;
  objc_storeStrong(&self->_barTheme, theme);
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    -[SFUnifiedTabBarItemTitleContainerView setOverrideUserInterfaceStyle:](self->_squishedTitleContainer, "setOverrideUserInterfaceStyle:", [themeCopy glassURLFieldUserInterfaceStyle]);
    [themeCopy activeTabTitleTheme];
  }

  else
  {
    [themeCopy titleTheme];
  }
  v6 = ;
  [(SFUnifiedTabBarItemTitleContainerView *)self->_squishedTitleContainer setTheme:v6];

  -[SFUnifiedTabBarItemTitleContainerView setShowsPrivateAnnotation:](self->_squishedTitleContainer, "setShowsPrivateAnnotation:", [themeCopy isPrivate]);
  separatorColor = [themeCopy separatorColor];
  [(UIView *)self->_pinnedItemsSeparator setBackgroundColor:separatorColor];

  [(SFUnifiedTabBar *)self _updateMinimizedProgressViewFillColor];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  visibleItems = [(SFUnifiedTabBarLayout *)self->_layout visibleItems];
  v9 = [visibleItems countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(visibleItems);
        }

        reusableView = [*(*(&v23 + 1) + 8 * v12) reusableView];
        [reusableView setBarTheme:themeCopy];

        ++v12;
      }

      while (v10 != v12);
      v10 = [visibleItems countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  allValues = [(NSMutableDictionary *)self->_sectionBackgroundViews allValues];
  v15 = [allValues countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v19 + 1) + 8 * v18++) setBarTheme:themeCopy];
      }

      while (v16 != v18);
      v16 = [allValues countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }
}

- (void)setContentInset:(NSDirectionalEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.leading;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.trailing;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInset.top), vceqq_f64(v4, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset = inset;
    bottom = inset.bottom;
    trailing = inset.trailing;
    top = inset.top;
    leading = inset.leading;
    _sf_usesLeftToRightLayout = [(UIView *)self _sf_usesLeftToRightLayout];
    if (_sf_usesLeftToRightLayout)
    {
      v7 = leading;
    }

    else
    {
      v7 = trailing;
    }

    if (_sf_usesLeftToRightLayout)
    {
      v8 = trailing;
    }

    else
    {
      v8 = leading;
    }

    [(UIScrollView *)self->_scrollView setContentInset:top, v7, bottom, v8];

    [(SFUnifiedTabBar *)self setNeedsLayout];
  }
}

- (void)setMidpointForCenteredContent:(CGPoint)content
{
  if (self->_midpointForCenteredContent.x != content.x || self->_midpointForCenteredContent.y != content.y)
  {
    self->_midpointForCenteredContent = content;
    [(SFUnifiedTabBarLayout *)self->_layout setMidpointForCenteredContent:?];

    [(SFUnifiedTabBar *)self setNeedsLayout];
  }
}

- (CGSize)preferredSize
{
  [(SFUnifiedTabBar *)self _preferredWidth];
  v4 = v3;
  [(SFUnifiedBarMetrics *)self->_barMetrics itemHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (double)_preferredWidth
{
  if (self->_role != 1)
  {
    return 1.79769313e308;
  }

  [(SFUnifiedTabBarMetrics *)self->_barMetrics maximumActiveItemWidth];
  return result;
}

- (void)setSizeClass:(unint64_t)class
{
  if (self->_sizeClass != class)
  {
    self->_sizeClass = class;
    [(SFUnifiedTabBar *)self setNeedsLayout];
  }
}

- (void)setThemeColorVisibility:(double)visibility
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_themeColorVisibility != visibility)
  {
    self->_themeColorVisibility = visibility;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    visibleItems = [(SFUnifiedTabBarLayout *)self->_layout visibleItems];
    v5 = [visibleItems countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(visibleItems);
          }

          reusableView = [*(*(&v10 + 1) + 8 * i) reusableView];
          [reusableView setThemeColorVisibility:visibility];
        }

        v6 = [visibleItems countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)setSquishTransformFactor:(double)factor
{
  squishTransformFactor = self->_squishTransformFactor;
  if (squishTransformFactor != factor)
  {
    v5 = (factor != 1.0) ^ (squishTransformFactor == 1.0);
    v6 = squishTransformFactor != 0.0 && factor == 0.0;
    self->_squishTransformFactor = factor;
    [(SFUnifiedTabBar *)self setNeedsLayout];
    if ((v5 & 1) == 0)
    {
      [(SFUnifiedTabBar *)self setNeedsFocusUpdate];
    }

    if (v6)
    {

      [(SFUnifiedTabBar *)self _setRevealsSquishedActiveItem:1 animated:0];
    }
  }
}

- (void)setSquishedContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_squishedContentInset.top, v3), vceqq_f64(*&self->_squishedContentInset.bottom, v4)))) & 1) == 0)
  {
    self->_squishedContentInset = inset;
    [(SFUnifiedTabBar *)self setNeedsLayout];
  }
}

- (NSArray)squishedAccessoryViews
{
  squishedAccessoryViews = [(SFUnifiedTabBarItemTitleContainerView *)self->_squishedTitleContainer squishedAccessoryViews];
  v4 = squishedAccessoryViews;
  v5 = MEMORY[0x1E695E0F0];
  if (squishedAccessoryViews)
  {
    v5 = squishedAccessoryViews;
  }

  v6 = v5;

  if (self->_minimizedProgressView)
  {
    v7 = [v6 arrayByAddingObject:?];

    v6 = v7;
  }

  return v6;
}

- (void)_updateMinimizedProgressViewFillColor
{
  controlsTintColor = [(_SFBarTheme *)self->_barTheme controlsTintColor];
  [(_SFFluidProgressView *)self->_minimizedProgressView setProgressBarFillColor:controlsTintColor];
}

- (void)_updateShowsMinimizedProgressView
{
  v3 = [(_SFFluidProgressView *)self->_minimizedProgressView isShowingProgress]^ 1;
  minimizedProgressView = self->_minimizedProgressView;

  [(_SFFluidProgressView *)minimizedProgressView setHidden:v3];
}

- (void)setMinimizedProgressView:(id)view
{
  viewCopy = view;
  if (self->_minimizedProgressView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_minimizedProgressView, view);
    [(_SFFluidProgressView *)self->_minimizedProgressView setDelegate:self];
    [(SFUnifiedTabBar *)self _updateShowsMinimizedProgressView];
    [(SFUnifiedTabBar *)self _updateMinimizedProgressViewFillColor];
    viewCopy = v6;
  }
}

- (void)setShowsSquishedAccessoryViews:(BOOL)views
{
  viewsCopy = views;
  self->_showsSquishedAccessoryViews = views;
  [(SFUnifiedTabBarItemTitleContainerView *)self->_squishedTitleContainer setShowsSquishedAccessoryViews:?];
  _activeTabBarItemView = [(SFUnifiedTabBar *)self _activeTabBarItemView];
  [_activeTabBarItemView setShowsSquishedAccessoryViews:viewsCopy];
}

- (double)preferredSquishedBottomSpacing
{
  squishedTitleContainer = self->_squishedTitleContainer;
  [(SFUnifiedBarMetrics *)self->_barMetrics itemHeight];
  [(SFUnifiedTabBarItemTitleContainerView *)squishedTitleContainer urlBaselineToBottomBoundsDistanceForHeight:?];
  v4 = v3;
  +[SFUnifiedBarMetrics minimumSquishScale];
  v6 = v5;
  +[SFUnifiedBarMetrics defaultSquishedContentSpacing];
  return v7 - v4 * v6;
}

- (double)preferredOpacity
{
  if (self->_style == 1)
  {
    return SFBarBackgroundAlphaForSquishTransformFactor(self->_squishTransformFactor);
  }

  else
  {
    return 1.0;
  }
}

- (void)tabBarItemViewDidRequestFocusForPencilInput:(id)input completionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(UITextField *)self->_searchField isFirstResponder])
  {
    v6 = WBS_LOG_CHANNEL_PREFIXPencilInput();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SFUnifiedTabBar tabBarItemViewDidRequestFocusForPencilInput:v6 completionHandler:?];
    }

    handlerCopy[2](handlerCopy);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained unifiedTabBarURLTapped:self completionHandler:handlerCopy];
    }

    else
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

- (void)tabBarItemViewCloseButtonTapped:(id)tapped
{
  item = [tapped item];
  if (item)
  {
    v5 = item;
    [(SFUnifiedTabBar *)self closeItem:item];
    item = v5;
  }
}

- (void)tabBarItemViewMenuButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained unifiedTabBarMenuButtonTapped:self];
  }
}

- (void)tabBarItemViewMenuButtonReceivedTouchDown:(id)down
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained unifiedTabBarMenuButtonReceivedTouchDown:self];
  }
}

- (void)tabBarItemViewMenuButtonClicked:(id)clicked
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained unifiedTabBarMenuButtonClicked:self];
  }
}

- (void)tabBarItemViewVoiceSearchButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained unifiedTabBarVoiceSearchButtonTapped:self];
  }
}

- (void)tabBarItemViewReloadButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained unifiedTabBarReloadButtonTapped:self];
  }
}

- (void)tabBarItemViewStopButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained unifiedTabBarStopButtonTapped:self];
  }
}

- (void)tabBarItemViewReaderButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained unifiedTabBarReaderButtonTapped:self];
  }
}

- (void)tabBarItemViewTranslationButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained unifiedTabBarTranslationButtonTapped:self];
  }
}

- (void)tabBarItemViewMediaStateMuteButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  if (objc_opt_respondsToSelector())
  {
    item = [tappedCopy item];
    [WeakRetained unifiedTabBar:self didTapMediaStateMuteButtonForItem:item];
  }
}

- (id)mediaStateMuteButtonMenuElementsForTabBarItemView:(id)view
{
  viewCopy = view;
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  if (objc_opt_respondsToSelector())
  {
    item = [viewCopy item];
    v7 = [WeakRetained unifiedTabBar:self mediaStateMuteButtonMenuElementsForItem:item];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (void)tabBarItemView:(id)view extensionButtonTapped:(id)tapped extension:(id)extension
{
  tappedCopy = tapped;
  extensionCopy = extension;
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained unifiedTabBar:self extensionButtonTapped:tappedCopy extension:extensionCopy];
  }
}

- (void)tabBarItemView:(id)view multipleExtensionButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained unifiedTabBar:self multipleExtensionButtonTapped:tappedCopy];
  }
}

- (void)tabBarItemView:(id)view didUpdateHovering:(BOOL)hovering
{
  hoveringCopy = hovering;
  item = [view item];
  if (hoveringCopy)
  {
    selfCopy2 = self;
    v7 = item;
  }

  else
  {
    hoveringItem = [(SFUnifiedTabBarLayout *)self->_layout hoveringItem];

    v9 = item;
    if (hoveringItem != item)
    {
      goto LABEL_6;
    }

    selfCopy2 = self;
    v7 = 0;
  }

  [(SFUnifiedTabBar *)selfCopy2 _updateHoveringItem:v7];
  v9 = item;
LABEL_6:
}

- (void)tabBarItemView:(id)view didFinishShowingAvailabilityLabelOfType:(int64_t)type
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained unifiedTabBar:self didFinishShowingAvailabilityLabelOfType:type];
  }
}

- (void)tabBarItemViewTitleChanged:(id)changed
{
  [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement setNeedsUpdateCachedItemTitles];
  if (!self->_isLayingOut)
  {

    [(SFUnifiedTabBar *)self setNeedsLayout];
  }
}

- (void)tabBarItemView:(id)view didMakeOneStepBookmarkingButton:(id)button
{
  buttonCopy = button;
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained unifiedTabBar:self didMakeOneStepBookmarkingButton:buttonCopy];
  }
}

- (CGRect)squishedGlassFrameForTabBarItemView:(id)view
{
  if (self->_role == 1)
  {
    squishedTitleContainer = self->_squishedTitleContainer;
    viewCopy = view;
    [(SFUnifiedTabBarItemTitleContainerView *)squishedTitleContainer contentFrame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(SFUnifiedTabBarMetrics *)self->_barMetrics squishedGlassInsets];
    [viewCopy convertRect:self->_squishedTitleContainer fromView:{v7 + v17, v9 + v14, v11 - (v17 + v15), v13 - (v14 + v16)}];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
  }

  else
  {
    v19 = *MEMORY[0x1E695F050];
    v21 = *(MEMORY[0x1E695F050] + 8);
    v23 = *(MEMORY[0x1E695F050] + 16);
    v25 = *(MEMORY[0x1E695F050] + 24);
  }

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  [(SFUnifiedTabBar *)self _updateScrolling];
  lastTapToRevealActiveItemDate = self->_lastTapToRevealActiveItemDate;
  if (!lastTapToRevealActiveItemDate || ([(NSDate *)lastTapToRevealActiveItemDate safari_timeIntervalUntilNow], v5 > 0.1))
  {
    [(SFUnifiedTabBar *)self _setRevealsSquishedActiveItem:0 animated:1];
  }

  WeakRetained = objc_loadWeakRetained(&self->_dragObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained unifiedTabBarWillBeginDragging:self];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  [(SFUnifiedTabBar *)self _updateScrolling];
  WeakRetained = objc_loadWeakRetained(&self->_dragObserver);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained unifiedTabBarDidEndDragging:self];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    [(SFUnifiedTabBar *)self _updateScrolling];
    WeakRetained = objc_loadWeakRetained(&self->_dragObserver);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained unifiedTabBarDidEndDragging:self];
    }
  }
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  [request location];
  v7 = v6;
  v9 = v8;
  [(UIScrollView *)self->_scrollView frame];
  v39.x = v7;
  v39.y = v9;
  if (CGRectContainsPoint(v40, v39))
  {
    layout = self->_layout;
    [(UIScrollView *)self->_scrollView convertPoint:self fromView:v7, v9];
    v11 = [(SFUnifiedTabBarLayout *)layout itemAtPoint:?];
    reusableView = [v11 reusableView];

    if (reusableView)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = reusableView;
        [(SFUnifiedTabBar *)self convertPoint:v13 toView:v7, v9];
        v14 = [(SFUnifiedTabBarPointerRegionIdentifier *)v13 pointerRegionIdentifierForInteractionLocation:?];
        v15 = v14;
        if (v14)
        {
          viewForPreview = [v14 viewForPreview];
          [viewForPreview frame];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;
          viewForPreview2 = [v15 viewForPreview];
          superview = [viewForPreview2 superview];
          [(SFUnifiedTabBar *)self convertRect:superview fromView:v18, v20, v22, v24];
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;

          v35 = [MEMORY[0x1E69DCDC0] regionWithRect:v15 identifier:{v28, v30, v32, v34}];
        }

        else
        {
          v35 = 0;
        }
      }

      else
      {
        v13 = objc_alloc_init(SFUnifiedTabBarPointerRegionIdentifier);
        [(SFUnifiedTabBarPointerRegionIdentifier *)v13 setViewForPreview:reusableView];
        [(SFUnifiedTabBarPointerRegionIdentifier *)v13 setPointerStyle:3];
        v36 = MEMORY[0x1E69DCDC0];
        [reusableView bounds];
        [(SFUnifiedTabBar *)self convertRect:reusableView fromView:?];
        v35 = [v36 regionWithRect:v13 identifier:?];
      }
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  regionCopy = region;
  identifier = [regionCopy identifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v27 = 0;
    goto LABEL_17;
  }

  identifier2 = [regionCopy identifier];
  viewForPreview = [identifier2 viewForPreview];
  v10 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:viewForPreview];
  pointerStyle = [identifier2 pointerStyle];
  v12 = 0;
  if (pointerStyle <= 1)
  {
    if (pointerStyle)
    {
      v13 = 0;
      if (pointerStyle == 1)
      {
        v13 = [MEMORY[0x1E69DCDA0] effectWithPreview:v10];
        v14 = viewForPreview;
        superview = [v14 superview];
        imageView = [v14 imageView];
        [imageView frame];
        [superview convertRect:v14 fromView:?];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
        v26 = 3.0;
        if (isSolariumEnabled)
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      }

      goto LABEL_16;
    }

    v13 = [MEMORY[0x1E69DCDA0] effectWithPreview:v10];
    [(SFUnifiedBarMetrics *)self->_barMetrics defaultItemHeight];
    v40 = v39;
    [viewForPreview bounds];
    v42 = fmax(v41, v40);
    v44 = fmin(v43, v40);
    [viewForPreview center];
    v64.size.width = *MEMORY[0x1E695F060];
    v64.size.height = *(MEMORY[0x1E695F060] + 8);
    v65 = CGRectInset(v64, 2.0 - v42 * 0.5, 2.0 - v44 * 0.5);
    x = v65.origin.x;
    y = v65.origin.y;
    width = v65.size.width;
    height = v65.size.height;
    v28 = MEMORY[0x1E69DCDC8];
    [(SFUnifiedBarMetrics *)self->_barMetrics itemCornerRadius];
    v38 = v45 + -2.0;
LABEL_12:
    v12 = [v28 shapeWithRoundedRect:x cornerRadius:{y, width, height, v38}];
    goto LABEL_16;
  }

  if (pointerStyle == 2)
  {
    v13 = [MEMORY[0x1E69DCDA0] effectWithPreview:v10];
    v14 = viewForPreview;
    superview2 = [v14 superview];
    imageView2 = [v14 imageView];
    [imageView2 frame];
    [superview2 convertRect:v14 fromView:?];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;

    v66.origin.x = v49;
    v66.origin.y = v51;
    v66.size.width = v53;
    v66.size.height = v55;
    v56 = CGRectGetWidth(v66);
    v67.origin.x = v49;
    v67.origin.y = v51;
    v67.size.width = v53;
    v67.size.height = v55;
    v57 = CGRectGetHeight(v67);
    v58 = fmax(v56, v57) + 8.0;
    v59 = (v56 - v58) * 0.5;
    v60 = (v57 - v58) * 0.5;
    v68.origin.x = v49;
    v68.origin.y = v51;
    v68.size.width = v53;
    v68.size.height = v55;
    v69 = CGRectInset(v68, v59, v60);
    v18 = v69.origin.x;
    v20 = v69.origin.y;
    v22 = v69.size.width;
    v24 = v69.size.height;
    isSolariumEnabled2 = [MEMORY[0x1E69C8880] isSolariumEnabled];
    v26 = 3.0;
    if (isSolariumEnabled2)
    {
LABEL_14:
      v70.origin.x = v18;
      v70.origin.y = v20;
      v70.size.width = v22;
      v70.size.height = v24;
      v26 = CGRectGetWidth(v70) * 0.5;
    }

LABEL_15:
    v12 = [MEMORY[0x1E69DCDC8] shapeWithRoundedRect:v18 cornerRadius:{v20, v22, v24, v26}];

    goto LABEL_16;
  }

  v13 = 0;
  if (pointerStyle == 3)
  {
    v13 = [MEMORY[0x1E69DCDA0] effectWithPreview:v10];
    v28 = MEMORY[0x1E69DCDC8];
    [viewForPreview frame];
    x = v29;
    y = v31;
    width = v33;
    height = v35;
    [(SFUnifiedBarMetrics *)self->_barMetrics itemCornerRadius];
    v38 = v37;
    goto LABEL_12;
  }

LABEL_16:
  v27 = [MEMORY[0x1E69DCDD0] styleWithEffect:v13 shape:v12];

LABEL_17:

  return v27;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedView = [context nextFocusedView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = nextFocusedView;
  }

  else
  {
    v5 = 0;
  }

  item = [v5 item];
  if (item)
  {
    [(SFUnifiedTabBar *)self scrollToItem:item animated:1];
  }
}

- (id)preferredFocusEnvironments
{
  v6[1] = *MEMORY[0x1E69E9840];
  activeItem = [(SFUnifiedTabBarItemArrangement *)self->_itemArrangement activeItem];
  reusableView = [activeItem reusableView];

  if (reusableView)
  {
    v6[0] = reusableView;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (NSDirectionalEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  leading = self->_contentInset.leading;
  bottom = self->_contentInset.bottom;
  trailing = self->_contentInset.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (CGPoint)midpointForCenteredContent
{
  x = self->_midpointForCenteredContent.x;
  y = self->_midpointForCenteredContent.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)squishedContentInset
{
  top = self->_squishedContentInset.top;
  left = self->_squishedContentInset.left;
  bottom = self->_squishedContentInset.bottom;
  right = self->_squishedContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (SFUnifiedTabBarDragObserving)dragObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_dragObserver);

  return WeakRetained;
}

- (SFUnifiedTabBarNavigationDelegate)navigationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationDelegate);

  return WeakRetained;
}

- (UIViewControllerTransitionCoordinator)transitionCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_transitionCoordinator);

  return WeakRetained;
}

@end