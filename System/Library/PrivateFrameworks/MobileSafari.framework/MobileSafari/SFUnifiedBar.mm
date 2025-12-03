@interface SFUnifiedBar
- (BOOL)_isShowingWindowControls;
- (BOOL)inlineContentViewPinsScrollPositionToTrailingEdgeDuringResize;
- (BOOL)verticallyCentersSquishedContentInExpandedArea;
- (CGPoint)_inlineContentSquishAnchorPoint;
- (CGPoint)_squishAnchorPointForStandaloneContentViewAtIndex:(unint64_t)index;
- (CGRect)boundsForCentering;
- (SFUnifiedBar)initWithFrame:(CGRect)frame;
- (double)_backgroundAlpha;
- (double)_contentViewSpacing;
- (double)_inlineContentHeight;
- (double)_itemSpacing;
- (double)_layOutStandaloneContentView:(id)view atIndex:(unint64_t)index minY:(double)y;
- (double)_layoutIndexes:(id)indexes ofItems:(id)items alongEdge:(int64_t)edge transitioning:(BOOL)transitioning;
- (double)_spacingBelowContentView:(id)view;
- (double)_squishVerticalOffset;
- (double)_squishedInlineContentTopOverflow;
- (double)_topMargin;
- (double)expandedHeight;
- (double)squishTransformFactor;
- (double)squishedHeight;
- (id)_superviewForInlineContentView;
- (id)_superviewForItems;
- (void)_installContentView:(id)view;
- (void)_layOutInlineContentView;
- (void)_layOutStandaloneContentViews;
- (void)_layoutItems:(id)items alongEdge:(int64_t)edge;
- (void)_removeContainerViewsForGroupsWithIdentifiers:(id)identifiers;
- (void)_removeViewsForIndexes:(id)indexes ofItems:(id)items;
- (void)_setNeedsRemovalForViewsAtIndexes:(id)indexes ofItems:(id)items;
- (void)_setShowsSquishedContent:(BOOL)content;
- (void)_setUpContainerViewsForGroupsWithIdentifiers:(id)identifiers;
- (void)_uninstallContentView:(id)view;
- (void)_updateBackgroundAlpha;
- (void)_updateBarMetricsForTraitChange;
- (void)_updateSeparatorColor;
- (void)_updateSizeClass;
- (void)_updateSquishedAccessoryViews;
- (void)_updateSuperviewForInlineContentView;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setBackgroundVisibility:(unint64_t)visibility;
- (void)setBarTheme:(id)theme animated:(BOOL)animated;
- (void)setChromelessScrollDistance:(double)distance;
- (void)setContentArrangement:(id)arrangement;
- (void)setInlineContentViewPinsScrollPositionToTrailingEdgeDuringResize:(BOOL)resize;
- (void)setItemArrangement:(id)arrangement animated:(BOOL)animated;
- (void)setMarginLevel:(unint64_t)level;
- (void)setScrollPocketInteraction:(id)interaction;
- (void)setShowsSeparator:(BOOL)separator;
- (void)setUsesFaintSeparator:(BOOL)separator;
@end

@implementation SFUnifiedBar

- (SFUnifiedBar)initWithFrame:(CGRect)frame
{
  v53.receiver = self;
  v53.super_class = SFUnifiedBar;
  v3 = [(SFUnifiedBar *)&v53 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    defaultLayoutMargins();
    [(SFUnifiedBar *)v3 setDirectionalLayoutMargins:?];
    [(SFUnifiedBar *)v3 setEdgesInsettingLayoutMarginsFromSafeArea:10];
    [(SFUnifiedBar *)v3 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC38]];
    v4 = objc_alloc_init(SFUnifiedBarItemArrangement);
    itemArrangement = v3->_itemArrangement;
    v3->_itemArrangement = v4;

    v6 = objc_alloc_init(SFUnifiedBarContentArrangement);
    contentArrangement = v3->_contentArrangement;
    v3->_contentArrangement = v6;

    v8 = [SFUnifiedBarMetrics alloc];
    traitCollection = [(SFUnifiedBar *)v3 traitCollection];
    v10 = [(SFUnifiedBarMetrics *)v8 initWithTraitCollection:traitCollection];
    barMetrics = v3->_barMetrics;
    v3->_barMetrics = v10;

    v12 = [SFThemeColorEffectView alloc];
    v13 = [MEMORY[0x1E69DC730] effectWithStyle:10];
    v14 = [(SFThemeColorEffectView *)v12 initWithEffect:v13];
    backgroundView = v3->_backgroundView;
    v3->_backgroundView = v14;

    [(SFThemeColorEffectView *)v3->_backgroundView setThemeColorVisibility:1.0];
    [(SFUnifiedBar *)v3 addSubview:v3->_backgroundView];
    v16 = v3;
    v17 = v16;
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      v18 = objc_alloc_init(MEMORY[0x1E69DD250]);
      scrollPocketView = v16->_scrollPocketView;
      v16->_scrollPocketView = v18;

      [(UIView *)v16->_scrollPocketView setUserInteractionEnabled:0];
      v20 = v16->_scrollPocketView;
      v21 = [objc_alloc(MEMORY[0x1E69DD6C8]) initWithStyle:2];
      [(UIView *)v20 addInteraction:v21];

      [(SFUnifiedBar *)v16 addSubview:v16->_scrollPocketView];
      v22 = [SFTouchPassthroughView alloc];
      [(SFUnifiedBar *)v16 bounds];
      v23 = [(SFTouchPassthroughView *)v22 initWithFrame:?];
      glassGroup = v16->_glassGroup;
      v16->_glassGroup = v23;

      [(UIView *)v16->_glassGroup safari_setGlassGroupEnabled:1];
      [(SFTouchPassthroughView *)v16->_glassGroup setEdgesInsettingLayoutMarginsFromSafeArea:10];
      [(SFTouchPassthroughView *)v16->_glassGroup setLayoutMargins:*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)];
      [(SFTouchPassthroughView *)v16->_glassGroup setPreservesSuperviewLayoutMargins:1];
      objc_initWeak(&location, v16);
      v47 = MEMORY[0x1E69E9820];
      v48 = 3221225472;
      v49 = __30__SFUnifiedBar_initWithFrame___block_invoke;
      v50 = &unk_1E721BF08;
      objc_copyWeak(&v51, &location);
      [(SFTouchPassthroughView *)v16->_glassGroup setSafeAreaInsetsChangeHandler:&v47];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        [(SFTouchPassthroughView *)v16->_glassGroup _setSafeAreaCornerAdaptation:3, v47, v48, v49, v50];
      }

      [(SFUnifiedBar *)v16 addSubview:v16->_glassGroup, v47, v48, v49, v50];
      v17 = v16->_glassGroup;

      objc_destroyWeak(&v51);
      objc_destroyWeak(&location);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    groupContainerViews = v16->_groupContainerViews;
    v16->_groupContainerViews = dictionary;

    v27 = objc_alloc_init(MEMORY[0x1E69DD250]);
    leadingItemContainerView = v16->_leadingItemContainerView;
    v16->_leadingItemContainerView = v27;

    v29 = v16->_leadingItemContainerView;
    v30 = objc_alloc_init(MEMORY[0x1E69DCC18]);
    [(UIView *)v29 addInteraction:v30];

    [(SFTouchPassthroughView *)v17 addSubview:v16->_leadingItemContainerView];
    v31 = objc_alloc_init(MEMORY[0x1E69DD250]);
    trailingItemContainerView = v16->_trailingItemContainerView;
    v16->_trailingItemContainerView = v31;

    v33 = v16->_trailingItemContainerView;
    v34 = objc_alloc_init(MEMORY[0x1E69DCC18]);
    [(UIView *)v33 addInteraction:v34];

    [(SFTouchPassthroughView *)v17 addSubview:v16->_trailingItemContainerView];
    v35 = objc_alloc_init(MEMORY[0x1E69DD310]);
    [(SFTouchPassthroughView *)v17 addInteraction:v35];

    v36 = objc_alloc_init(MEMORY[0x1E69DD250]);
    squishedContentView = v16->_squishedContentView;
    v16->_squishedContentView = v36;

    [(UIView *)v16->_squishedContentView setHidden:1];
    [(SFUnifiedBar *)v16 addSubview:v16->_squishedContentView];
    v38 = objc_alloc_init(_SFCompressedBarButton);
    squishedBarButton = v16->_squishedBarButton;
    v16->_squishedBarButton = &v38->super;

    [(UIButton *)v16->_squishedBarButton setSpringLoaded:1];
    [(UIButton *)v16->_squishedBarButton addTarget:v16 action:sel_squishedBarTapped forControlEvents:64];
    [(UIView *)v16->_squishedContentView addSubview:v16->_squishedBarButton];
    v40 = [MEMORY[0x1E695DFA8] set];
    itemViewsToRemoveOnNextLayout = v16->_itemViewsToRemoveOnNextLayout;
    v16->_itemViewsToRemoveOnNextLayout = v40;

    v42 = +[SFUnifiedBarTheme defaultTheme];
    [(SFUnifiedBar *)v16 setBarTheme:v42];

    v43 = +[SFUnifiedBarMetrics traitsAffectingBarMetrics];
    v44 = [(SFUnifiedBar *)v16 registerForTraitChanges:v43 withTarget:v16 action:sel__updateBarMetricsForTraitChange];

    v45 = v16;
  }

  return v3;
}

void __30__SFUnifiedBar_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

- (void)_updateBarMetricsForTraitChange
{
  barMetrics = self->_barMetrics;
  traitCollection = [(SFUnifiedBar *)self traitCollection];
  LODWORD(barMetrics) = [(SFUnifiedBarMetrics *)barMetrics updateWithTraitCollection:traitCollection];

  if (barMetrics)
  {
    self->_needsNotifyMetricsDidChange = 1;

    [(SFUnifiedBar *)self setNeedsLayout];
  }
}

- (void)didMoveToSuperview
{
  v5.receiver = self;
  v5.super_class = SFUnifiedBar;
  [(SFUnifiedBar *)&v5 didMoveToSuperview];
  superview = [(SFUnifiedBar *)self superview];
  if (superview)
  {
    controlsTintColor = [(_SFBarTheme *)self->_barTheme controlsTintColor];
    [(SFUnifiedBar *)self setTintColor:controlsTintColor];
  }

  else
  {
    [(SFUnifiedBar *)self setTintColor:0];
  }
}

- (void)setItemArrangement:(id)arrangement animated:(BOOL)animated
{
  arrangementCopy = arrangement;
  if (![(SFUnifiedBarItemArrangement *)self->_itemArrangement isEqual:arrangementCopy])
  {
    [(SFUnifiedBarItemArrangement *)self->_itemArrangement leadingItems];
    v8 = v24 = animated;
    leadingItems = [arrangementCopy leadingItems];
    v29 = v8;
    v10 = [leadingItems differenceFromArray:v8 withOptions:4];
    safari_removalIndexes = [v10 safari_removalIndexes];
    trailingItems = [(SFUnifiedBarItemArrangement *)self->_itemArrangement trailingItems];
    trailingItems2 = [arrangementCopy trailingItems];
    v31 = trailingItems;
    v13 = [trailingItems2 differenceFromArray:trailingItems withOptions:4];
    safari_removalIndexes2 = [v13 safari_removalIndexes];
    groupIdentifiers = [(SFUnifiedBarItemArrangement *)self->_itemArrangement groupIdentifiers];
    groupIdentifiers2 = [arrangementCopy groupIdentifiers];
    v16 = [groupIdentifiers2 safari_setBySubtractingSet:groupIdentifiers];
    v26 = groupIdentifiers2;
    v17 = groupIdentifiers2;
    v18 = v16;
    v25 = [groupIdentifiers safari_setBySubtractingSet:v17];
    objc_storeStrong(&self->_itemArrangement, arrangement);
    [(SFUnifiedBar *)self setNeedsLayout];
    [(SFUnifiedBar *)self _setUpContainerViewsForGroupsWithIdentifiers:v18];
    safari_insertionIndexes = [v10 safari_insertionIndexes];
    [(SFUnifiedBar *)self _layoutIndexes:safari_insertionIndexes ofItems:leadingItems alongEdge:0 transitioning:1];

    safari_insertionIndexes2 = [v13 safari_insertionIndexes];
    v27 = trailingItems2;
    [(SFUnifiedBar *)self _layoutIndexes:safari_insertionIndexes2 ofItems:trailingItems2 alongEdge:1 transitioning:1];

    if (v24)
    {
      v21 = MEMORY[0x1E69DD250];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __44__SFUnifiedBar_setItemArrangement_animated___block_invoke;
      v38[3] = &unk_1E721D7C0;
      v38[4] = self;
      v39 = safari_removalIndexes;
      v40 = v29;
      v41 = safari_removalIndexes2;
      v42 = v31;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __44__SFUnifiedBar_setItemArrangement_animated___block_invoke_2;
      v32[3] = &unk_1E721DF50;
      v32[4] = self;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v36 = v42;
      v22 = v25;
      v37 = v25;
      [v21 sf_animate:1 usingDefaultMotionWithOptions:98 animations:v38 completion:v32];
    }

    else
    {
      [(SFUnifiedBar *)self _setNeedsRemovalForViewsAtIndexes:safari_removalIndexes ofItems:v29];
      [(SFUnifiedBar *)self _setNeedsRemovalForViewsAtIndexes:safari_removalIndexes2 ofItems:v31];
      selfCopy = self;
      v22 = v25;
      [(SFUnifiedBar *)selfCopy _removeContainerViewsForGroupsWithIdentifiers:v25];
    }
  }
}

uint64_t __44__SFUnifiedBar_setItemArrangement_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _layoutIndexes:*(a1 + 40) ofItems:*(a1 + 48) alongEdge:0 transitioning:1];
  [*(a1 + 32) _layoutIndexes:*(a1 + 56) ofItems:*(a1 + 64) alongEdge:1 transitioning:1];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

uint64_t __44__SFUnifiedBar_setItemArrangement_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _removeViewsForIndexes:*(a1 + 40) ofItems:*(a1 + 48)];
  [*(a1 + 32) _removeViewsForIndexes:*(a1 + 56) ofItems:*(a1 + 64)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);

  return [v2 _removeContainerViewsForGroupsWithIdentifiers:v3];
}

- (void)setContentArrangement:(id)arrangement
{
  v49 = *MEMORY[0x1E69E9840];
  arrangementCopy = arrangement;
  v6 = self->_contentArrangement;
  if (![(SFUnifiedBarContentArrangement *)v6 isEqual:arrangementCopy])
  {
    objc_storeStrong(&self->_contentArrangement, arrangement);
    v32 = v6;
    allContentViews = [(SFUnifiedBarContentArrangement *)v6 allContentViews];
    allContentViews2 = [arrangementCopy allContentViews];
    v31 = allContentViews;
    v8 = [allContentViews2 differenceFromArray:allContentViews withOptions:4];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    removals = [v8 removals];
    v10 = [removals countByEnumeratingWithState:&v42 objects:v48 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v43;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(removals);
          }

          object = [*(*(&v42 + 1) + 8 * i) object];
          [(SFUnifiedBar *)self _uninstallContentView:object];
        }

        v11 = [removals countByEnumeratingWithState:&v42 objects:v48 count:16];
      }

      while (v11);
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    insertions = [v8 insertions];
    v16 = [insertions countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v39;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(insertions);
          }

          object2 = [*(*(&v38 + 1) + 8 * j) object];
          [(SFUnifiedBar *)self _installContentView:object2];
        }

        v17 = [insertions countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v17);
    }

    v29 = v8;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v33 = arrangementCopy;
    standaloneContentViews = [arrangementCopy standaloneContentViews];
    v22 = [standaloneContentViews countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v25 = *v35;
      do
      {
        for (k = 0; k != v23; ++k)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(standaloneContentViews);
          }

          v27 = *(*(&v34 + 1) + 8 * k);
          if (objc_opt_respondsToSelector())
          {
            barMetrics = [v27 barMetrics];
            [barMetrics setMetricsCategory:1];
          }

          if (objc_opt_respondsToSelector())
          {
            v24 |= [v27 showsSquishedContent];
          }
        }

        v23 = [standaloneContentViews countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v23);
    }

    else
    {
      LOBYTE(v24) = 0;
    }

    self->_hasSquishedStandaloneContentView = v24 & 1;
    [(SFUnifiedBar *)self setNeedsLayout];

    v6 = v32;
    arrangementCopy = v33;
  }
}

- (void)_installContentView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    v7 = viewCopy;
    if (objc_opt_respondsToSelector())
    {
      [(SFUnifiedBar *)self _backgroundAlpha];
      [v7 setBarBackgroundAlpha:?];
    }

    if (objc_opt_respondsToSelector())
    {
      [v7 setBarTheme:self->_barTheme];
    }

    if (objc_opt_respondsToSelector())
    {
      [v7 setSizeClass:self->_sizeClass];
    }

    if (objc_opt_respondsToSelector())
    {
      [(SFUnifiedBar *)self _themeColorVisibility];
      [v7 setThemeColorVisibility:?];
    }

    [v7 setInsetsLayoutMarginsFromSafeArea:0];
    inlineContentView = [(SFUnifiedBarContentArrangement *)self->_contentArrangement inlineContentView];

    if (inlineContentView == v7)
    {
      _superviewForInlineContentView = [(SFUnifiedBar *)self _superviewForInlineContentView];
      [_superviewForInlineContentView addSubview:v7];
    }

    else
    {
      [SFUnifiedBar insertSubview:"insertSubview:aboveSubview:" aboveSubview:?];
    }

    [(SFUnifiedBar *)self setNeedsLayout];
    viewCopy = v7;
  }
}

- (void)_uninstallContentView:(id)view
{
  if (view)
  {
    [view removeFromSuperview];
  }
}

- (BOOL)inlineContentViewPinsScrollPositionToTrailingEdgeDuringResize
{
  inlineContentView = [(SFUnifiedBarContentArrangement *)self->_contentArrangement inlineContentView];
  if (objc_opt_respondsToSelector())
  {
    pinsScrollPositionToTrailingEdgeDuringResize = [inlineContentView pinsScrollPositionToTrailingEdgeDuringResize];
  }

  else
  {
    pinsScrollPositionToTrailingEdgeDuringResize = 0;
  }

  return pinsScrollPositionToTrailingEdgeDuringResize;
}

- (void)setInlineContentViewPinsScrollPositionToTrailingEdgeDuringResize:(BOOL)resize
{
  resizeCopy = resize;
  inlineContentView = [(SFUnifiedBarContentArrangement *)self->_contentArrangement inlineContentView];
  if (objc_opt_respondsToSelector())
  {
    [inlineContentView setPinsScrollPositionToTrailingEdgeDuringResize:resizeCopy];
  }
}

- (void)_layoutItems:(id)items alongEdge:(int64_t)edge
{
  v6 = MEMORY[0x1E696AC90];
  itemsCopy = items;
  v8 = [v6 indexSetWithIndexesInRange:{0, objc_msgSend(itemsCopy, "count")}];
  [(SFUnifiedBar *)self _layoutIndexes:v8 ofItems:itemsCopy alongEdge:edge transitioning:0];
  v10 = v9;

  v11 = &OBJC_IVAR___SFUnifiedBar__trailingItemContainerView;
  if (!edge)
  {
    v11 = &OBJC_IVAR___SFUnifiedBar__leadingItemContainerView;
  }

  v12 = *(&self->super.super.super.isa + *v11);
  _sf_usesLeftToRightLayout = [(UIView *)self _sf_usesLeftToRightLayout];
  [(SFUnifiedBar *)self bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(SFUnifiedBar *)self layoutMargins];
  v63 = v25;
  v64 = v24;
  v26 = v22;
  v27 = v23;
  if (_sf_usesLeftToRightLayout == edge)
  {
    v28 = v23;
  }

  else
  {
    v28 = v22;
  }

  if (objc_opt_respondsToSelector())
  {
    v29 = [MEMORY[0x1E69DD270] marginsLayoutRegionWithCornerAdaptation:1];
    [(SFUnifiedBar *)self edgeInsetsForLayoutRegion:v29];
    v60 = v30;
    v61 = v21;
    v62 = v10;
    v32 = v31;
    v33 = v19;
    v35 = v34;
    v36 = v17;
    v37 = v15;
    v39 = v38;

    if (_sf_usesLeftToRightLayout == edge)
    {
      v40 = v39;
    }

    else
    {
      v40 = v32;
    }

    if (_sf_usesLeftToRightLayout == edge)
    {
      v41 = v32;
    }

    else
    {
      v41 = v39;
    }

    v42 = v63 == v35;
    v19 = v33;
    v42 = v42 && v27 == v39;
    v15 = v37;
    v17 = v36;
    v21 = v61;
    v44 = v42 && v64 == v60 && v26 == v32;
    v10 = v62;
    if (v44 || v40 <= v41)
    {
      v28 = v40;
    }

    else
    {
      v28 = v40 + 12.0;
    }
  }

  if (_sf_usesLeftToRightLayout == edge)
  {
    v69.origin.x = v15;
    v69.origin.y = v17;
    v69.size.width = v19;
    v69.size.height = v21;
    v28 = CGRectGetWidth(v69) - v10 - v28;
  }

  [(SFUnifiedBar *)self _topMargin];
  v47 = v46;
  [(SFUnifiedBarMetrics *)self->_barMetrics itemHeight];
  v49 = v48;
  v50 = *(MEMORY[0x1E695EFD0] + 16);
  v66 = *MEMORY[0x1E695EFD0];
  v67 = v50;
  v68 = *(MEMORY[0x1E695EFD0] + 32);
  [v12 setTransform:&v66];
  [v12 setFrame:{v28, v47, v10, v49}];
  [(SFUnifiedBar *)self _inlineContentSquishAnchorPoint];
  v52 = v51;
  v54 = v53;
  [(SFUnifiedBar *)self squishTransformFactor];
  v56 = v55;
  [(SFUnifiedBar *)self _squishVerticalOffset];
  v58 = v57;
  +[SFUnifiedBarMetrics minimumSquishScaleForStandaloneContent];
  makeSquishTransformWithMinimumScale(v65, v52, v54, v56, v58, v59);
  v66 = v65[0];
  v67 = v65[1];
  v68 = v65[2];
  [v12 setTransform:&v66];
}

- (double)_layoutIndexes:(id)indexes ofItems:(id)items alongEdge:(int64_t)edge transitioning:(BOOL)transitioning
{
  indexesCopy = indexes;
  itemsCopy = items;
  v12 = &OBJC_IVAR___SFUnifiedBar__trailingItemContainerView;
  if (!edge)
  {
    v12 = &OBJC_IVAR___SFUnifiedBar__leadingItemContainerView;
  }

  v13 = *(&self->super.super.super.isa + *v12);
  _sf_usesLeftToRightLayout = [(UIView *)self _sf_usesLeftToRightLayout];
  [(SFUnifiedBarMetrics *)self->_barMetrics defaultItemWidth];
  v16 = v15;
  [(SFUnifiedBarMetrics *)self->_barMetrics itemHeight];
  v18 = v17;
  [(SFUnifiedBar *)self _itemSpacing];
  v20 = v19;
  [(SFUnifiedBarMetrics *)self->_barMetrics minimumItemWidth];
  v22 = v21;
  [(SFUnifiedBar *)self squishTransformFactor];
  v24 = v23;
  if (_sf_usesLeftToRightLayout)
  {
    v25 = 0;
  }

  else
  {
    v25 = 2;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __63__SFUnifiedBar__layoutIndexes_ofItems_alongEdge_transitioning___block_invoke;
  v34[3] = &unk_1E721DF78;
  v41 = v16;
  v42 = v20;
  v43 = v18;
  v44 = v22;
  v46 = _sf_usesLeftToRightLayout;
  v27 = itemsCopy;
  v35 = v27;
  selfCopy = self;
  v40 = &v48;
  v28 = indexesCopy;
  v37 = v28;
  transitioningCopy = transitioning;
  v29 = dictionary;
  v38 = v29;
  v30 = v13;
  v39 = v30;
  v45 = v24;
  [v27 enumerateObjectsWithOptions:v25 usingBlock:v34];
  if (!transitioning)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __63__SFUnifiedBar__layoutIndexes_ofItems_alongEdge_transitioning___block_invoke_2;
    v33[3] = &unk_1E721DFA0;
    v33[4] = self;
    [v29 enumerateKeysAndObjectsUsingBlock:v33];
  }

  v31 = v49[3];

  _Block_object_dispose(&v48, 8);
  return v31;
}

void __63__SFUnifiedBar__layoutIndexes_ofItems_alongEdge_transitioning___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 view];
  v7 = *(a1 + 80);
  v8 = *(a1 + 88);
  [v6 preferredWidthForHeight:*(a1 + 96)];
  if (v9 <= 0.0)
  {
    v9 = v7;
  }

  if (*(a1 + 104) <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(a1 + 104);
  }

  if (*(a1 + 120) != 1)
  {
    if (a3)
    {
      v11 = *(a1 + 32);
      v12 = a3 - 1;
      goto LABEL_11;
    }

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  if (a3 + 1 >= [*(a1 + 32) count])
  {
    goto LABEL_12;
  }

  v11 = *(a1 + 32);
  v12 = a3 + 1;
LABEL_11:
  v13 = [v11 objectAtIndexedSubscript:v12];
LABEL_13:
  v14 = [v5 groupIdentifier];
  if (!v14 || ([v13 groupIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqual:", v15), v15, v17 = 0.0, (v16 & 1) == 0))
  {
    if ([v5 spacingOptions])
    {
      v17 = v8;
      if (([v13 spacingOptions] & 2) != 0)
      {
        [*(*(a1 + 40) + 408) minimumItemSpacing];
        v17 = v18 * 0.5;
      }
    }

    else
    {
      v17 = v8;
    }
  }

  v19 = *(*(*(a1 + 72) + 8) + 24);
  v20 = *(a1 + 96);
  v21 = *(a1 + 120);
  if (v21 == 1)
  {
    v22 = [*(a1 + 32) count];
    v23 = v10;
    if (a3 + 1 == v22)
    {
      goto LABEL_24;
    }

    LOBYTE(v21) = *(a1 + 120);
  }

  v23 = v10 + v17;
  if (!((a3 != 0) | v21 & 1))
  {
    v23 = v10;
  }

LABEL_24:
  *(*(*(a1 + 72) + 8) + 24) = v23 + *(*(*(a1 + 72) + 8) + 24);
  if ([*(a1 + 48) containsIndex:a3])
  {
    v51 = *(MEMORY[0x1E695EFD0] + 16);
    v53 = *MEMORY[0x1E695EFD0];
    *&v60.a = *MEMORY[0x1E695EFD0];
    *&v60.c = v51;
    v49 = *(MEMORY[0x1E695EFD0] + 32);
    *&v60.tx = v49;
    if (*(a1 + 121) == 1)
    {
      +[SFUnifiedBarMetrics transitioningItemScale];
      *&v55.a = v53;
      *&v55.c = v51;
      *&v55.tx = v49;
      CGAffineTransformScale(&v60, &v55, v24, v24);
    }

    v25 = -fmax((44.0 - v10) * 0.5, 0.0);
    [*(*(a1 + 40) + 456) removeObject:{v6, v49, v51, v53}];
    if (v14)
    {
      v26 = [*(a1 + 56) objectForKeyedSubscript:v14];
      v27 = v26;
      if (v26)
      {
        [v26 CGRectValue];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;
      }

      else
      {
        v29 = *MEMORY[0x1E695F050];
        v31 = *(MEMORY[0x1E695F050] + 8);
        v33 = *(MEMORY[0x1E695F050] + 16);
        v35 = *(MEMORY[0x1E695F050] + 24);
      }

      v38 = MEMORY[0x1E696B098];
      v61.origin.y = 0.0;
      v61.origin.x = v19;
      v61.size.width = v10;
      v61.size.height = v20;
      v59 = CGRectUnion(v61, *&v29);
      v39 = [v38 valueWithBytes:&v59 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];

      [*(a1 + 56) setObject:v39 forKeyedSubscript:v14];
      v40 = [*(*(a1 + 40) + 504) objectForKeyedSubscript:v14];
      v41 = [v40 superview];
      v42 = *(a1 + 64);

      if (v41 != v42)
      {
        [*(a1 + 64) addSubview:v40];
      }

      v43 = [v6 superview];
      v44 = [v40 contentView];

      if (v43 != v44)
      {
        v45 = [v40 contentView];
        [v45 addSubview:v6];
      }

      [v6 setPlatterStyle:0];
    }

    else
    {
      v36 = [v6 superview];
      v37 = *(a1 + 64);

      if (v36 != v37)
      {
        [*(a1 + 64) addSubview:v6];
      }
    }

    [v6 setBarMetrics:*(*(a1 + 40) + 408)];
    [v6 setBarTheme:*(*(a1 + 40) + 536)];
    [*(*(a1 + 40) + 408) itemCornerRadius];
    SFCACornerRadiiMake(&v57.a, v46);
    v55 = v57;
    v56 = v58;
    [v6 setCornerRadii:&v55];
    [v6 setSquishTransformFactor:*(a1 + 112)];
    *&v55.a = v54;
    *&v55.c = v52;
    *&v55.tx = v50;
    [v6 setTransform:&v55];
    [v6 setFrame:_SFRoundRectToPixels(v19)];
    [v6 setAlpha:(*(a1 + 121) ^ 1u)];
    v55 = v60;
    [v6 setTransform:&v55];
    v47 = -*(a1 + 121);
    v48 = [v6 layer];
    [v48 setZPosition:v47];

    [v6 _setTouchInsets:{0.0, v25, 0.0, v25}];
    [v6 layoutIfNeeded];
  }
}

void __63__SFUnifiedBar__layoutIndexes_ofItems_alongEdge_transitioning___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = [*(*(a1 + 32) + 504) objectForKeyedSubscript:v5];

  [v15 setFrame:{v7, v9, v11, v13}];
  v14 = [v15 contentView];
  [v14 setBounds:{v7, v9, v11, v13}];

  [*(*(a1 + 32) + 408) itemCornerRadius];
  [v15 _setContinuousCornerRadius:?];
}

- (void)layoutSubviews
{
  v27 = *MEMORY[0x1E69E9840];
  v25.receiver = self;
  v25.super_class = SFUnifiedBar;
  [(SFUnifiedBar *)&v25 layoutSubviews];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = self->_itemViewsToRemoveOnNextLayout;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v21 + 1) + 8 * i) removeFromSuperview];
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  [(NSMutableSet *)self->_itemViewsToRemoveOnNextLayout removeAllObjects];
  [(SFUnifiedBar *)self squishTransformFactor];
  [(SFTouchPassthroughView *)self->_glassGroup setAlpha:SFBarBackgroundAlphaForSquishTransformFactor(v8)];
  [(SFUnifiedBar *)self bounds];
  [(SFTouchPassthroughView *)self->_glassGroup setFrame:?];
  [(SFUnifiedBar *)self _updateSuperviewForInlineContentView];
  [(SFUnifiedBar *)self _updateSizeClass];
  leadingItems = [(SFUnifiedBarItemArrangement *)self->_itemArrangement leadingItems];
  [(SFUnifiedBar *)self _layoutItems:leadingItems alongEdge:0];

  trailingItems = [(SFUnifiedBarItemArrangement *)self->_itemArrangement trailingItems];
  [(SFUnifiedBar *)self _layoutItems:trailingItems alongEdge:1];

  [(SFUnifiedBar *)self bounds];
  v12 = v11;
  contentUnderStatusBarHeight = self->_contentUnderStatusBarHeight;
  v15 = v14 + 0.0;
  v17 = v16 - contentUnderStatusBarHeight;
  v19 = v18 - (0.0 - contentUnderStatusBarHeight);
  [(SFThemeColorEffectView *)self->_backgroundView setFrame:v14 + 0.0, v16 - contentUnderStatusBarHeight, v12, v19];
  [(UIView *)self->_squishedContentView setFrame:v15, v17, v12, v19];
  [(UIView *)self->_scrollPocketView setFrame:v15, v17, v12, v19];
  [(UIView *)self->_squishedContentView bounds];
  [(UIButton *)self->_squishedBarButton setFrame:?];
  [(SFUnifiedBar *)self squishTransformFactor];
  [(SFUnifiedBar *)self _setShowsSquishedContent:_SFEqualWithEpsilon(v20, 0.0, 0.01)];
  [(SFUnifiedBar *)self _layOutInlineContentView];
  [(SFUnifiedBar *)self _layOutStandaloneContentViews];
  if (self->_needsNotifyMetricsDidChange)
  {
    self->_needsNotifyMetricsDidChange = 0;
    [(SFUnifiedBar *)self metricsDidChange];
  }

  [(SFUnifiedBar *)self bringSubviewToFront:self->_squishedContentView, v21];
}

- (void)_layOutInlineContentView
{
  inlineContentView = [(SFUnifiedBarContentArrangement *)self->_contentArrangement inlineContentView];
  if (inlineContentView)
  {
    [(SFUnifiedBar *)self bounds];
    v94 = v5;
    v95 = v4;
    v92 = v7;
    v93 = v6;
    _superviewForItems = [(SFUnifiedBar *)self _superviewForItems];
    [_superviewForItems directionalLayoutMargins];
    rect_16 = v10;
    rect_24 = v9;
    [_superviewForItems layoutMargins];
    v96 = v11;
    rect_8 = v12;
    [(SFUnifiedBar *)self squishTransformFactor];
    v91 = v13;
    _sf_usesLeftToRightLayout = [(UIView *)self _sf_usesLeftToRightLayout];
    leadingItems = [(SFUnifiedBarItemArrangement *)self->_itemArrangement leadingItems];
    lastObject = [leadingItems lastObject];

    v17 = lastObject;
    trailingItems = [(SFUnifiedBarItemArrangement *)self->_itemArrangement trailingItems];
    firstObject = [trailingItems firstObject];

    v20 = !_sf_usesLeftToRightLayout;
    v21 = firstObject;
    if (v20)
    {
      v22 = firstObject;
    }

    else
    {
      v22 = v17;
    }

    if (v20)
    {
      v23 = v17;
    }

    else
    {
      v23 = firstObject;
    }

    if (v20)
    {
      v24 = &OBJC_IVAR___SFUnifiedBar__trailingItemContainerView;
    }

    else
    {
      v24 = &OBJC_IVAR___SFUnifiedBar__leadingItemContainerView;
    }

    if (v20)
    {
      v25 = &OBJC_IVAR___SFUnifiedBar__leadingItemContainerView;
    }

    else
    {
      v25 = &OBJC_IVAR___SFUnifiedBar__trailingItemContainerView;
    }

    v26 = v22;
    v27 = v23;
    [*(&self->super.super.super.isa + *v24) ss_untransformedFrame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    [*(&self->super.super.super.isa + *v25) ss_untransformedFrame];
    rect = v36;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    [(SFUnifiedBar *)self _itemSpacing];
    v44 = v43;
    if (v26)
    {
      v101.origin.x = v29;
      v101.origin.y = v31;
      v101.size.width = v33;
      v101.size.height = v35;
      v45 = v44 + CGRectGetMaxX(v101);
    }

    else
    {
      v45 = v96;
    }

    v46 = _superviewForItems;
    if (v27)
    {
      v102.origin.x = rect;
      v102.origin.y = v38;
      v102.size.width = v40;
      v102.size.height = v42;
      v47 = CGRectGetMinX(v102) - v44;
    }

    else
    {
      v103.origin.y = v94;
      v103.origin.x = v95;
      v103.size.height = v92;
      v103.size.width = v93;
      v47 = CGRectGetWidth(v103) - rect_8;
    }

    if (([v26 spacingOptions] & 4) != 0)
    {
      v48 = v45 + 6.0;
    }

    else
    {
      v48 = v45;
    }

    if (([v27 spacingOptions] & 4) != 0)
    {
      v49 = v47 + -6.0;
    }

    else
    {
      v49 = v47;
    }

    [inlineContentView preferredSize];
    v51 = v50;
    if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0 && v51 != 1.79769313e308)
    {
      leadingItems2 = [(SFUnifiedBarItemArrangement *)self->_itemArrangement leadingItems];
      v53 = [leadingItems2 count];
      trailingItems2 = [(SFUnifiedBarItemArrangement *)self->_itemArrangement trailingItems];
      if (v53 == [trailingItems2 count])
      {
        allowsCenteringInlineContentView = [(SFUnifiedBarItemArrangement *)self->_itemArrangement allowsCenteringInlineContentView];

        if (allowsCenteringInlineContentView)
        {
          v104.origin.x = v95;
          v104.origin.y = v94;
          v104.size.width = v93;
          v104.size.height = v92;
          v48 = fmax(v48, CGRectGetWidth(v104) - v49);
          v105.origin.x = v95;
          v105.origin.y = v94;
          v105.size.width = v93;
          v105.size.height = v92;
          CGRectGetWidth(v105);
        }
      }

      else
      {
      }

      v46 = _superviewForItems;
    }

    [(SFUnifiedBar *)self _topMargin];
    v56 = *(MEMORY[0x1E695EFD0] + 16);
    v98 = *MEMORY[0x1E695EFD0];
    v99 = v56;
    v100 = *(MEMORY[0x1E695EFD0] + 32);
    [inlineContentView setTransform:&v98];
    [inlineContentView setFrame:_SFRoundRectToPixels(v48)];
    [(SFUnifiedBar *)self _inlineContentSquishAnchorPoint];
    v58 = v57;
    v60 = v59;
    [(SFUnifiedBar *)self _squishVerticalOffset];
    v62 = v61;
    +[SFUnifiedBarMetrics minimumSquishScale];
    makeSquishTransformWithMinimumScale(v97, v58, v60, v91, v62, v63);
    v98 = v97[0];
    v99 = v97[1];
    v100 = v97[2];
    [inlineContentView setTransform:&v98];
    [inlineContentView setDirectionalLayoutMargins:{0.0, rect_24, 0.0, rect_16}];
    standaloneContentViews = [(SFUnifiedBarContentArrangement *)self->_contentArrangement standaloneContentViews];
    v65 = [standaloneContentViews count];
    layer = [inlineContentView layer];
    [layer setZPosition:v65];

    [(SFUnifiedBar *)self boundsForCentering];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    if (objc_opt_respondsToSelector())
    {
      UIRectGetCenter();
      [inlineContentView convertPoint:self fromView:?];
      [inlineContentView setMidpointForCenteredContent:?];
    }

    v75 = v96;
    if (objc_opt_respondsToSelector())
    {
      [inlineContentView setSquishTransformFactor:v91];
    }

    if (objc_opt_respondsToSelector())
    {
      +[SFUnifiedBarMetrics minimumSquishScale];
      v77 = _SFInterpolate(v76, 1.0, v91);
      v78 = fmax(v96, rect_8);
      if (self->_contentUnderSidebarWidth == 0.0)
      {
        v75 = v78;
        v79 = v78;
      }

      else
      {
        v79 = rect_8;
      }

      v106.origin.x = v68;
      v106.origin.y = v70;
      v106.size.width = v72;
      v106.size.height = v74;
      MidX = CGRectGetMidX(v106);
      [(SFUnifiedBar *)self convertPoint:inlineContentView toView:_SFInterpolate(MidX, v75, v77), 0.0];
      v82 = v81;
      v107.origin.x = v68;
      v107.origin.y = v70;
      v107.size.width = v72;
      v107.size.height = v74;
      v83 = CGRectGetMidX(v107);
      v108.origin.y = v94;
      v108.origin.x = v95;
      v108.size.height = v92;
      v108.size.width = v93;
      Width = CGRectGetWidth(v108);
      [(SFUnifiedBar *)self convertPoint:inlineContentView toView:_SFInterpolate(v83, Width - v79, v77), 0.0];
      v86 = v85;
      [inlineContentView bounds];
      [inlineContentView setSquishedContentInset:{0.0, v82, 0.0, CGRectGetWidth(v109) - v86}];
    }

    [inlineContentView layoutIfNeeded];
  }
}

- (void)_layOutStandaloneContentViews
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  [(SFUnifiedBar *)self _topMargin];
  v4 = v3;
  [(SFUnifiedBar *)self _inlineContentHeight];
  v6 = v4 + v5;
  inlineContentView = [(SFUnifiedBarContentArrangement *)self->_contentArrangement inlineContentView];
  [(SFUnifiedBar *)self _spacingBelowContentView:inlineContentView];
  v9 = v6 + v8;

  *&v12[3] = v9;
  standaloneContentViews = [(SFUnifiedBarContentArrangement *)self->_contentArrangement standaloneContentViews];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__SFUnifiedBar__layOutStandaloneContentViews__block_invoke;
  v11[3] = &unk_1E721DFC8;
  v11[4] = self;
  v11[5] = v12;
  [standaloneContentViews enumerateObjectsUsingBlock:v11];

  _Block_object_dispose(v12, 8);
}

double __45__SFUnifiedBar__layOutStandaloneContentViews__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _layOutStandaloneContentView:a2 atIndex:a3 minY:*(*(*(a1 + 40) + 8) + 24)];
  v4 = *(*(a1 + 40) + 8);
  result = v5 + *(v4 + 24);
  *(v4 + 24) = result;
  return result;
}

- (double)_layOutStandaloneContentView:(id)view atIndex:(unint64_t)index minY:(double)y
{
  viewCopy = view;
  [(SFUnifiedBar *)self directionalLayoutMargins];
  v48 = v9;
  v11 = v10;
  [(SFUnifiedBar *)self squishTransformFactor];
  v13 = v12;
  contentArrangement = self->_contentArrangement;
  if (index)
  {
    standaloneContentViews = [(SFUnifiedBarContentArrangement *)contentArrangement standaloneContentViews];
    inlineContentView = [standaloneContentViews objectAtIndexedSubscript:index - 1];
  }

  else
  {
    inlineContentView = [(SFUnifiedBarContentArrangement *)contentArrangement inlineContentView];
  }

  if (objc_opt_respondsToSelector())
  {
    isContentHidden = [viewCopy isContentHidden];
  }

  else
  {
    isContentHidden = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    showsSquishedContent = [viewCopy showsSquishedContent];
  }

  else
  {
    showsSquishedContent = 0;
  }

  v19 = 0.0;
  if (objc_opt_respondsToSelector())
  {
    [(SFUnifiedBar *)self _spacingBelowContentView:inlineContentView];
    v21 = v20;
    [viewCopy preferredTopSpacing];
    v19 = v22 - v21;
  }

  [viewCopy preferredSize];
  v24 = v23;
  if (showsSquishedContent)
  {
    v25 = 0;
  }

  else
  {
    v25 = [MEMORY[0x1E69C8880] isSolariumEnabled] ^ 1;
  }

  v26 = v19 + y;
  [(SFUnifiedBar *)self bounds];
  Width = CGRectGetWidth(v53);
  if (isContentHidden)
  {
    v54.origin.x = 0.0;
    v54.origin.y = v26;
    v54.size.width = Width;
    v54.size.height = v24;
    CGRectGetHeight(v54);
  }

  v47 = v19;
  if (v25)
  {
    [(SFUnifiedBar *)self expandedHeight];
    v29 = v28;
    [(SFUnifiedBar *)self squishedHeight];
    _SFInterpolate(v29 + v30, 0.0, v13);
    +[SFUnifiedBarMetrics minimumSquishScale];
  }

  v31 = v13;
  if (showsSquishedContent)
  {
    +[SFUnifiedBarMetrics minimumSquishScale];
  }

  else
  {
    +[SFUnifiedBarMetrics minimumSquishScaleForStandaloneContent];
  }

  v33 = v32;
  v34 = *(MEMORY[0x1E695EFD0] + 16);
  v50 = *MEMORY[0x1E695EFD0];
  v51 = v34;
  v52 = *(MEMORY[0x1E695EFD0] + 32);
  [viewCopy setTransform:&v50];
  [viewCopy setFrame:_SFRoundRectToPixels(0.0)];
  [(SFUnifiedBar *)self _squishAnchorPointForStandaloneContentViewAtIndex:index];
  v36 = v35;
  v38 = v37;
  [(SFUnifiedBar *)self _squishVerticalOffset];
  makeSquishTransformWithMinimumScale(v49, v36, v38, v31, v39, v33);
  v50 = v49[0];
  v51 = v49[1];
  v52 = v49[2];
  [viewCopy setTransform:&v50];
  [viewCopy setDirectionalLayoutMargins:{0.0, v48, 0.0, v11}];
  indexCopy = index;
  layer = [viewCopy layer];
  [layer setZPosition:indexCopy];

  [viewCopy setUserInteractionEnabled:isContentHidden ^ 1u];
  if (objc_opt_respondsToSelector())
  {
    [viewCopy setContentInset:{0.0, v48, 0.0, v11}];
  }

  if (objc_opt_respondsToSelector())
  {
    [(SFUnifiedBar *)self boundsForCentering];
    UIRectGetCenter();
    [viewCopy convertPoint:self fromView:?];
    [viewCopy setMidpointForCenteredContent:?];
  }

  v42 = objc_opt_respondsToSelector();
  if (v42)
  {
    [viewCopy setSquishTransformFactor:v31];
  }

  if (isContentHidden)
  {
    v43 = 0.0;
    [viewCopy setAlpha:0.0];
    [viewCopy layoutIfNeeded];
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      [viewCopy preferredOpacity];
    }

    else
    {
      v44 = 1.0;
      if (((v42 | showsSquishedContent) & 1) == 0)
      {
        v44 = SFBarContentAlphaForSquishTransformFactor(v31);
      }
    }

    [viewCopy setAlpha:v44];
    [viewCopy layoutIfNeeded];
    [(SFUnifiedBar *)self _spacingBelowContentView:viewCopy];
    v43 = v47 + v24 + v45;
  }

  return v43;
}

- (CGRect)boundsForCentering
{
  [(SFUnifiedBar *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(UIView *)self _sf_usesLeftToRightLayout])
  {
    contentUnderSidebarWidth = self->_contentUnderSidebarWidth;
  }

  else
  {
    contentUnderSidebarWidth = 0.0;
  }

  v12 = v4 + contentUnderSidebarWidth;
  v13 = v6 + 0.0;
  v14 = v8 - (self->_contentUnderSidebarWidth + 0.0);
  v15 = v10;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (double)_spacingBelowContentView:(id)view
{
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    [viewCopy preferredBottomSpacing];
  }

  else
  {
    standaloneContentViews = [(SFUnifiedBarContentArrangement *)self->_contentArrangement standaloneContentViews];
    lastObject = [standaloneContentViews lastObject];
    if (!lastObject)
    {
      lastObject = [(SFUnifiedBarContentArrangement *)self->_contentArrangement inlineContentView];
    }

    v8 = lastObject;

    if (v8 == viewCopy)
    {
      [(SFUnifiedBar *)self layoutMargins];
      v9 = v11;
      goto LABEL_8;
    }

    [(SFUnifiedBar *)self _contentViewSpacing];
  }

  v9 = v5;
LABEL_8:

  return v9;
}

- (double)_squishedInlineContentTopOverflow
{
  inlineContentView = [(SFUnifiedBarContentArrangement *)self->_contentArrangement inlineContentView];
  [inlineContentView preferredSize];
  v5 = v4;
  +[SFUnifiedBarMetrics minimumSquishScale];
  v7 = v6;
  [(SFUnifiedBarMetrics *)self->_barMetrics squishedInlineBarHeight];
  v9 = -(v8 - v5 * v7) * 0.5;
  [(SFUnifiedBar *)self _squishVerticalOffset];
  v11 = v10 + v9;

  return v11;
}

- (CGPoint)_squishAnchorPointForStandaloneContentViewAtIndex:(unint64_t)index
{
  +[SFUnifiedBarMetrics minimumSquishScaleForStandaloneContent];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__SFUnifiedBar__squishAnchorPointForStandaloneContentViewAtIndex___block_invoke;
  aBlock[3] = &__block_descriptor_40_e44_d20__0__UIView_SFUnifiedBarContentView__8B16l;
  aBlock[4] = v5;
  v6 = _Block_copy(aBlock);
  standaloneContentViews = [(SFUnifiedBarContentArrangement *)self->_contentArrangement standaloneContentViews];
  v8 = [standaloneContentViews objectAtIndexedSubscript:index];

  if (objc_opt_respondsToSelector())
  {
    showsSquishedContent = [v8 showsSquishedContent];
  }

  else
  {
    showsSquishedContent = 0;
  }

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3032000000;
  v31[3] = __Block_byref_object_copy__6;
  v31[4] = __Block_byref_object_dispose__6;
  inlineContentView = [(SFUnifiedBarContentArrangement *)self->_contentArrangement inlineContentView];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  standaloneContentViews2 = [(SFUnifiedBarContentArrangement *)self->_contentArrangement standaloneContentViews];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __66__SFUnifiedBar__squishAnchorPointForStandaloneContentViewAtIndex___block_invoke_76;
  v21 = &unk_1E721E010;
  v26 = showsSquishedContent;
  indexCopy = index;
  v23 = v31;
  v11 = v6;
  v22 = v11;
  v24 = &v27;
  [standaloneContentViews2 enumerateObjectsUsingBlock:&v18];

  [(SFUnifiedBar *)self _inlineContentSquishAnchorPoint:v18];
  v13 = v12;
  v15 = v14 + _SFRoundFloatToPixels(v28[3]);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(v31, 8);

  v16 = v13;
  v17 = v15;
  result.y = v17;
  result.x = v16;
  return result;
}

double __66__SFUnifiedBar__squishAnchorPointForStandaloneContentViewAtIndex___block_invoke(uint64_t a1, void *a2, int a3)
{
  [a2 preferredSize];
  v6 = v5;
  if (a3)
  {
    +[SFUnifiedBarMetrics minimumSquishScale];
  }

  else
  {
    v7 = *(a1 + 32);
  }

  return v6 - v6 * v7;
}

void __66__SFUnifiedBar__squishAnchorPointForStandaloneContentViewAtIndex___block_invoke_76(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 56) == a3)
  {
    *a4 = 1;
  }

  v18 = v8;
  if (objc_opt_respondsToSelector())
  {
    v9 = [v18 showsSquishedContent];
  }

  else
  {
    v9 = 0;
  }

  if (*(a1 + 64) == v9)
  {
    [*(*(*(a1 + 40) + 8) + 40) preferredSize];
    v11 = v10;
    [v18 preferredSize];
    v13 = v11 * 0.5 + v12 * 0.5;
    if (a3)
    {
      v14 = v9;
    }

    else
    {
      v14 = 1;
    }

    v15 = (*(*(a1 + 32) + 16))(*(a1 + 32), *(*(*(a1 + 40) + 8) + 40), v14) * 0.5;
    *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + v13 - (v15 + (*(*(a1 + 32) + 16))() * 0.5);
    if (objc_opt_respondsToSelector())
    {
      [*(*(*(a1 + 40) + 8) + 40) preferredSquishedBottomSpacing];
      *(*(*(a1 + 48) + 8) + 24) = v16 + *(*(*(a1 + 48) + 8) + 24);
    }

    if (objc_opt_respondsToSelector())
    {
      [v18 topSquishedSpacingAdjustment];
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) - v17;
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (void)setMarginLevel:(unint64_t)level
{
  if (self->_marginLevel == level)
  {
    return;
  }

  v8 = v3;
  self->_marginLevel = level;
  switch(level)
  {
    case 2uLL:
      goto LABEL_7;
    case 1uLL:
      _SFDeviceIsPad();
      goto LABEL_7;
    case 0uLL:
      defaultLayoutMargins();
LABEL_7:
      [(SFUnifiedBar *)self setDirectionalLayoutMargins:v4, v8, v5];
      break;
  }

  [(SFUnifiedBar *)self setNeedsLayout];
}

- (void)_setNeedsRemovalForViewsAtIndexes:(id)indexes ofItems:(id)items
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__SFUnifiedBar__setNeedsRemovalForViewsAtIndexes_ofItems___block_invoke;
  v4[3] = &unk_1E721D8F8;
  v4[4] = self;
  [items enumerateObjectsAtIndexes:indexes options:0 usingBlock:v4];
}

void __58__SFUnifiedBar__setNeedsRemovalForViewsAtIndexes_ofItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 456);
  v3 = [a2 view];
  [v2 addObject:v3];
}

- (void)_removeViewsForIndexes:(id)indexes ofItems:(id)items
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SFUnifiedBar__removeViewsForIndexes_ofItems___block_invoke;
  v4[3] = &unk_1E721D8F8;
  v4[4] = self;
  [items enumerateObjectsAtIndexes:indexes options:0 usingBlock:v4];
}

void __47__SFUnifiedBar__removeViewsForIndexes_ofItems___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(*(a1 + 32) + 520) leadingItems];
  if (([v3 containsObject:v6] & 1) == 0)
  {
    v4 = [*(*(a1 + 32) + 520) trailingItems];
    v5 = [v4 containsObject:v6];

    if (v5)
    {
      goto LABEL_5;
    }

    v3 = [v6 view];
    [v3 removeFromSuperview];
  }

LABEL_5:
}

- (double)_itemSpacing
{
  inlineContentView = [(SFUnifiedBarContentArrangement *)self->_contentArrangement inlineContentView];
  if (objc_opt_respondsToSelector())
  {
    [inlineContentView preferredSize];
    v5 = v4;
  }

  else
  {
    v5 = 1.79769313e308;
  }

  [(SFUnifiedBarMetrics *)self->_barMetrics minimumItemSpacing];
  v7 = v6;
  [(SFUnifiedBarMetrics *)self->_barMetrics maximumItemSpacing];
  v9 = v8;
  [(SFUnifiedBarMetrics *)self->_barMetrics itemHeight];
  v11 = v10;
  [(SFUnifiedBar *)self bounds];
  if (v5 <= CGRectGetWidth(v30))
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __28__SFUnifiedBar__itemSpacing__block_invoke;
    v21[3] = &unk_1E721E060;
    v21[6] = v11;
    *&v21[7] = v7;
    v21[4] = &v22;
    v21[5] = &v26;
    v12 = _Block_copy(v21);
    leadingItems = [(SFUnifiedBarItemArrangement *)self->_itemArrangement leadingItems];
    v12[2](v12, leadingItems, 0);

    trailingItems = [(SFUnifiedBarItemArrangement *)self->_itemArrangement trailingItems];
    v12[2](v12, trailingItems, 1);

    _superviewForItems = [(SFUnifiedBar *)self _superviewForItems];
    [_superviewForItems layoutMargins];
    v17 = v16;
    v19 = v18;

    [(SFUnifiedBar *)self bounds];
    v7 = fmax(v7, fmin(v9, (CGRectGetWidth(v31) - v17 - v19 - v5 - v23[3]) / v27[3]));

    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);
  }

  return v7;
}

void __28__SFUnifiedBar__itemSpacing__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a3 == 1;
  v6 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v7 = *(a1 + 56);
  v12 = *(a1 + 48);
  v9[2] = __28__SFUnifiedBar__itemSpacing__block_invoke_2;
  v9[3] = &unk_1E721E038;
  v13 = a3;
  v10 = v6;
  v14 = v7;
  v11 = *(a1 + 32);
  v8 = v6;
  [v8 enumerateObjectsWithOptions:2 * v5 usingBlock:v9];
}

void __28__SFUnifiedBar__itemSpacing__block_invoke_2(uint64_t a1, void *a2, char *a3)
{
  v10 = a2;
  v5 = [v10 view];
  [v5 preferredWidthForHeight:*(a1 + 56)];
  *(*(*(a1 + 40) + 8) + 24) = v6 + *(*(*(a1 + 40) + 8) + 24);

  if (!*(a1 + 64))
  {
    v9 = (a3 + 1);
    if (v9 >= [*(a1 + 32) count])
    {
      a3 = 0;
      goto LABEL_8;
    }

    v7 = *(a1 + 32);
    v8 = v9;
    goto LABEL_6;
  }

  if (a3)
  {
    v7 = *(a1 + 32);
    v8 = a3 - 1;
LABEL_6:
    a3 = [v7 objectAtIndexedSubscript:v8];
  }

LABEL_8:
  if (([v10 spacingOptions] & 1) != 0 && (objc_msgSend(a3, "spacingOptions") & 2) != 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = *(a1 + 72) * 0.5 + *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

- (double)_contentViewSpacing
{
  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  result = 10.0;
  if ((isSolariumEnabled & 1) == 0)
  {
    result = 12.0;
    if (self->_marginLevel - 1 < 2)
    {
      return 10.0;
    }
  }

  return result;
}

- (id)_superviewForItems
{
  if (self->_glassGroup)
  {
    self = self->_glassGroup;
  }

  return self;
}

- (id)_superviewForInlineContentView
{
  selfCopy = self;
  if (self->_glassGroup)
  {
    [(SFUnifiedBar *)self squishTransformFactor];
    if (v3 == 1.0)
    {
      selfCopy = selfCopy->_glassGroup;
    }
  }

  v4 = selfCopy;

  return v4;
}

- (void)_updateSuperviewForInlineContentView
{
  _superviewForInlineContentView = [(SFUnifiedBar *)self _superviewForInlineContentView];
  inlineContentView = [(SFUnifiedBarContentArrangement *)self->_contentArrangement inlineContentView];
  superview = [inlineContentView superview];

  if (superview != _superviewForInlineContentView)
  {
    [(SFTouchPassthroughView *)_superviewForInlineContentView addSubview:inlineContentView];
  }

  inlineContentView2 = [(SFUnifiedBarContentArrangement *)self->_contentArrangement inlineContentView];
  [inlineContentView2 safari_setGlassGroupEnabled:_superviewForInlineContentView != self->_glassGroup];
}

- (double)_inlineContentHeight
{
  [(SFUnifiedBarMetrics *)self->_barMetrics itemHeight];
  v4 = v3;
  inlineContentView = [(SFUnifiedBarContentArrangement *)self->_contentArrangement inlineContentView];
  [inlineContentView preferredSize];
  v7 = fmax(v4, v6);

  return v7;
}

- (double)_topMargin
{
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    [(SFUnifiedBar *)self layoutMargins];
    return fmax(v3 - self->_contentUnderStatusBarHeight, 0.0);
  }

  else
  {
    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    supportsMultipleScenes = [mEMORY[0x1E69DC668] supportsMultipleScenes];

    [(SFUnifiedBar *)self layoutMargins];
    if (supportsMultipleScenes)
    {
      return fmax(result + self->_contentUnderStatusBarHeight, 8.0) - self->_contentUnderStatusBarHeight;
    }
  }

  return result;
}

- (void)_updateSizeClass
{
  v26 = *MEMORY[0x1E69E9840];
  [(SFUnifiedBar *)self bounds];
  Width = CGRectGetWidth(v27);
  _screen = [(SFUnifiedBar *)self _screen];
  [_screen bounds];
  v5 = CGRectGetWidth(v28);

  _screen2 = [(SFUnifiedBar *)self _screen];
  [_screen2 bounds];
  v7 = CGRectGetWidth(v29);

  if (v7 <= 1366.0)
  {
    if (Width != v5)
    {
LABEL_13:
      v11 = 2;
      goto LABEL_14;
    }

LABEL_11:
    if (_SFDeviceIsPad())
    {
      window = [(SFUnifiedBar *)self window];
      windowScene = [window windowScene];
      v11 = ([windowScene interfaceOrientation] - 1) < 2;

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  traitCollection = [(SFUnifiedBar *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v10 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC70]);

  if (v10 == NSOrderedDescending)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  if (v10 != NSOrderedDescending && Width == v5)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (self->_sizeClass != v11)
  {
    self->_sizeClass = v11;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    allContentViews = [(SFUnifiedBarContentArrangement *)self->_contentArrangement allContentViews];
    v16 = [allContentViews countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(allContentViews);
          }

          v20 = *(*(&v21 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v20 setSizeClass:v11];
          }
        }

        v17 = [allContentViews countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v17);
    }
  }
}

- (void)_setUpContainerViewsForGroupsWithIdentifiers:(id)identifiers
{
  v17 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [identifiersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_groupContainerViews objectForKeyedSubscript:v9];

        if (!v10)
        {
          v11 = objc_alloc_init(SFUnifiedBarItemGroupContainerView);
          [(NSMutableDictionary *)self->_groupContainerViews setObject:v11 forKeyedSubscript:v9];
        }
      }

      v6 = [identifiersCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)_removeContainerViewsForGroupsWithIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [identifiersCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(identifiersCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        groupIdentifiers = [(SFUnifiedBarItemArrangement *)self->_itemArrangement groupIdentifiers];
        v11 = [groupIdentifiers containsObject:v9];

        if ((v11 & 1) == 0)
        {
          v12 = [(NSMutableDictionary *)self->_groupContainerViews objectForKeyedSubscript:v9];
          [v12 removeFromSuperview];

          [(NSMutableDictionary *)self->_groupContainerViews setObject:0 forKeyedSubscript:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [identifiersCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (double)expandedHeight
{
  v30 = *MEMORY[0x1E69E9840];
  [(SFUnifiedBar *)self _topMargin];
  v4 = v3;
  [(SFUnifiedBar *)self _inlineContentHeight];
  v6 = v4 + v5;
  inlineContentView = [(SFUnifiedBarContentArrangement *)self->_contentArrangement inlineContentView];
  [(SFUnifiedBar *)self _spacingBelowContentView:inlineContentView];
  v9 = v6 + v8;

  inlineContentView2 = [(SFUnifiedBarContentArrangement *)self->_contentArrangement inlineContentView];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  standaloneContentViews = [(SFUnifiedBarContentArrangement *)self->_contentArrangement standaloneContentViews];
  v12 = [standaloneContentViews countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      v15 = 0;
      do
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(standaloneContentViews);
        }

        v16 = *(*(&v25 + 1) + 8 * v15);
        if ((objc_opt_respondsToSelector() & 1) == 0 || ([v16 isContentHidden] & 1) == 0)
        {
          [v16 preferredSize];
          v18 = v17;
          [(SFUnifiedBar *)self _spacingBelowContentView:v16];
          v9 = v9 + v18 + v19;
          if (objc_opt_respondsToSelector())
          {
            [(SFUnifiedBar *)self _spacingBelowContentView:inlineContentView2];
            v21 = v9 - v20;
            [v16 preferredTopSpacing];
            v9 = v21 + v22;
          }

          v23 = v16;

          inlineContentView2 = v23;
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [standaloneContentViews countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  return v9;
}

- (double)squishedHeight
{
  v35 = *MEMORY[0x1E69E9840];
  [(SFUnifiedBar *)self _inlineContentHeight];
  v4 = v3;
  if (self->_hasSquishedStandaloneContentView)
  {
    +[SFUnifiedBarMetrics minimumSquishScale];
    v6 = v4 * v5;
    [(SFUnifiedBar *)self _squishedInlineContentTopOverflow];
    v8 = v6 - v7;
    inlineContentView = [(SFUnifiedBarContentArrangement *)self->_contentArrangement inlineContentView];
    v27 = inlineContentView;
    if (objc_opt_respondsToSelector())
    {
      [inlineContentView preferredSquishedBottomSpacing];
      v8 = v8 + v10;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    selfCopy = self;
    standaloneContentViews = [(SFUnifiedBarContentArrangement *)self->_contentArrangement standaloneContentViews];
    v12 = [standaloneContentViews countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(standaloneContentViews);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          if ((objc_opt_respondsToSelector() & 1) != 0 && [v16 showsSquishedContent])
          {
            [v16 preferredSize];
            v18 = v17;
            +[SFUnifiedBarMetrics minimumSquishScale];
            v8 = v8 + v18 * v19;
            if (objc_opt_respondsToSelector())
            {
              [v16 preferredSquishedBottomSpacing];
              v8 = v8 + v20;
            }

            if (objc_opt_respondsToSelector())
            {
              [v16 topSquishedSpacingAdjustment];
              v8 = v8 - v21;
            }
          }
        }

        v13 = [standaloneContentViews countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v13);
    }

    v22 = _SFRoundFloatToPixels(v8);
    if ([(SFUnifiedBar *)selfCopy verticallyCentersSquishedContentInExpandedArea])
    {
      [(SFUnifiedBar *)selfCopy _topMargin];
      v22 = (v4 + v22) * 0.5 + v23;
    }
  }

  else
  {
    [(SFUnifiedBarMetrics *)self->_barMetrics squishedInlineBarHeight];
    v22 = v24;
    if ([(SFUnifiedBar *)self verticallyCentersSquishedContentInExpandedArea])
    {
      [(SFUnifiedBar *)self _topMargin];
      return (v4 + v22) * 0.5 + v25;
    }
  }

  return v22;
}

- (BOOL)verticallyCentersSquishedContentInExpandedArea
{
  isSolariumEnabled = [MEMORY[0x1E69C8880] isSolariumEnabled];
  if (isSolariumEnabled)
  {

    LOBYTE(isSolariumEnabled) = [(SFUnifiedBar *)self _isShowingWindowControls];
  }

  return isSolariumEnabled;
}

- (BOOL)_isShowingWindowControls
{
  v3 = [MEMORY[0x1E69DD270] marginsLayoutRegionWithCornerAdaptation:1];
  [(SFUnifiedBar *)self edgeInsetsForLayoutRegion:v3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(SFUnifiedBar *)self layoutMargins];
  v15 = v14 != v7;
  if (v16 != v5)
  {
    v15 = 1;
  }

  if (v13 != v11)
  {
    v15 = 1;
  }

  return v12 != v9 || v15;
}

- (double)squishTransformFactor
{
  [(SFUnifiedBar *)self frame];
  if (CGRectEqualToRect(v13, *MEMORY[0x1E695F058]))
  {
    return 1.0;
  }

  [(SFUnifiedBar *)self squishedHeight];
  v5 = v4;
  [(SFUnifiedBar *)self expandedHeight];
  v7 = v6;
  [(SFUnifiedBar *)self extendedBottomHeight];
  v9 = v7 + v8;
  [(SFUnifiedBar *)self bounds];
  Height = CGRectGetHeight(v14);
  v11 = _SFUninterpolate(Height, v5, v9);

  return _SFClamp(v11, 0.0, 1.0);
}

- (CGPoint)_inlineContentSquishAnchorPoint
{
  verticallyCentersSquishedContentInExpandedArea = [(SFUnifiedBar *)self verticallyCentersSquishedContentInExpandedArea];
  [(SFUnifiedBar *)self boundsForCentering];
  MidX = CGRectGetMidX(v9);
  if (verticallyCentersSquishedContentInExpandedArea)
  {
    [(SFUnifiedBar *)self _topMargin];
    [(SFUnifiedBar *)self _inlineContentHeight];
  }

  else
  {
    [(SFUnifiedBarMetrics *)self->_barMetrics squishedInlineBarHeight];
  }

  v5 = _SFRoundPointToPixels(MidX);
  result.y = v6;
  result.x = v5;
  return result;
}

- (double)_squishVerticalOffset
{
  verticallyCentersSquishedContentInExpandedArea = [(SFUnifiedBar *)self verticallyCentersSquishedContentInExpandedArea];
  result = 0.0;
  if (!verticallyCentersSquishedContentInExpandedArea)
  {
    contentUnderStatusBarHeight = self->_contentUnderStatusBarHeight;
    result = 5.0;
    if (contentUnderStatusBarHeight <= 20.0)
    {
      result = 0.0;
      if (contentUnderStatusBarHeight > 0.0)
      {
        return 2.5;
      }
    }
  }

  return result;
}

- (void)_setShowsSquishedContent:(BOOL)content
{
  if (self->_showsSquishedContent != content)
  {
    contentCopy = content;
    self->_showsSquishedContent = content;
    v6 = !content;
    [(UIView *)self->_squishedContentView setHidden:!content];
    if (!v6)
    {
      [(SFUnifiedBar *)self _updateSquishedAccessoryViews];
    }

    inlineContentView = [(SFUnifiedBarContentArrangement *)self->_contentArrangement inlineContentView];
    if (objc_opt_respondsToSelector())
    {
      [inlineContentView setShowsSquishedAccessoryViews:contentCopy];
    }
  }
}

- (void)_updateSquishedAccessoryViews
{
  v24 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  subviews = [(UIView *)self->_squishedContentView subviews];
  v4 = [subviews countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v18 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [subviews countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  inlineContentView = [(SFUnifiedBarContentArrangement *)self->_contentArrangement inlineContentView];
  if (objc_opt_respondsToSelector())
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    squishedAccessoryViews = [inlineContentView squishedAccessoryViews];
    v10 = [squishedAccessoryViews countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(squishedAccessoryViews);
          }

          [(UIView *)self->_squishedContentView addSubview:*(*(&v14 + 1) + 8 * v13++)];
        }

        while (v11 != v13);
        v11 = [squishedAccessoryViews countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v11);
    }
  }

  [(UIView *)self->_squishedContentView addSubview:self->_squishedBarButton];
}

- (void)setBarTheme:(id)theme animated:(BOOL)animated
{
  animatedCopy = animated;
  themeCopy = theme;
  if (([themeCopy isEqual:self->_barTheme] & 1) == 0)
  {
    objc_storeStrong(&self->_barTheme, theme);
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __37__SFUnifiedBar_setBarTheme_animated___block_invoke;
    v13 = &unk_1E721B400;
    selfCopy = self;
    v15 = themeCopy;
    v8 = _Block_copy(&v10);
    v9 = v8;
    if (animatedCopy)
    {
      [MEMORY[0x1E69DD250] _animateUsingDefaultTimingWithOptions:50331650 animations:v8 completion:{0, v10, v11, v12, v13, selfCopy}];
    }

    else
    {
      (*(v8 + 2))(v8);
    }
  }
}

void __37__SFUnifiedBar_setBarTheme_animated___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) superview];

  if (v2)
  {
    v3 = [*(a1 + 40) controlsTintColor];
    [*(a1 + 32) setTintColor:v3];
  }

  v4 = [*(a1 + 40) toolbarControlsTintColor];
  [*(*(a1 + 32) + 464) setTintColor:v4];

  v5 = [*(a1 + 40) toolbarControlsTintColor];
  [*(*(a1 + 32) + 472) setTintColor:v5];

  [*(a1 + 32) setOverrideUserInterfaceStyle:{objc_msgSend(*(*(a1 + 32) + 536), "userInterfaceStyle")}];
  [*(a1 + 32) _updateSeparatorColor];
  v6 = MEMORY[0x1E69DD250];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __37__SFUnifiedBar_setBarTheme_animated___block_invoke_2;
  v21[3] = &unk_1E721B400;
  v7 = *(a1 + 40);
  v21[4] = *(a1 + 32);
  v22 = v7;
  [v6 performWithoutAnimation:v21];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [*(*(a1 + 32) + 528) allContentViews];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 setBarTheme:*(a1 + 40)];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v10);
  }

  v14 = *(*(a1 + 32) + 520);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __37__SFUnifiedBar_setBarTheme_animated___block_invoke_3;
  v15[3] = &unk_1E721E088;
  v16 = *(a1 + 40);
  [v14 enumerateAllItemsUsingBlock:v15];
}

void __37__SFUnifiedBar_setBarTheme_animated___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 view];
  [v3 setBarTheme:v2];
}

- (void)setShowsSeparator:(BOOL)separator
{
  v21[4] = *MEMORY[0x1E69E9840];
  if ([(SFUnifiedBar *)self showsSeparator]!= separator)
  {
    if (separator)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
      separator = self->_separator;
      self->_separator = v5;

      [(SFUnifiedBar *)self _updateSeparatorColor];
      [(UIView *)self->_separator setTranslatesAutoresizingMaskIntoConstraints:0];
      [(SFUnifiedBar *)self addSubview:self->_separator];
      v18 = MEMORY[0x1E696ACD8];
      leadingAnchor = [(UIView *)self->_separator leadingAnchor];
      leadingAnchor2 = [(SFUnifiedBar *)self leadingAnchor];
      v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v21[0] = v7;
      topAnchor = [(UIView *)self->_separator topAnchor];
      bottomAnchor = [(SFUnifiedBar *)self bottomAnchor];
      v10 = [topAnchor constraintEqualToAnchor:bottomAnchor];
      v21[1] = v10;
      trailingAnchor = [(SFUnifiedBar *)self trailingAnchor];
      trailingAnchor2 = [(UIView *)self->_separator trailingAnchor];
      v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v21[2] = v13;
      heightAnchor = [(UIView *)self->_separator heightAnchor];
      v15 = [heightAnchor constraintEqualToConstant:_SFOnePixel()];
      v21[3] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
      [v18 activateConstraints:v16];
    }

    else
    {
      [(UIView *)self->_separator removeFromSuperview];
      v17 = self->_separator;
      self->_separator = 0;
    }
  }
}

- (void)setUsesFaintSeparator:(BOOL)separator
{
  if (self->_usesFaintSeparator != separator)
  {
    self->_usesFaintSeparator = separator;
    [(SFUnifiedBar *)self _updateSeparatorColor];
  }
}

- (void)_updateSeparatorColor
{
  if (self->_usesFaintSeparator)
  {
    [MEMORY[0x1E69DC888] sf_secondaryBarHairlineOutlineColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] sf_barHairlineShadowColor];
  }
  v3 = ;
  [(UIView *)self->_separator setBackgroundColor:v3];
}

- (void)setBackgroundVisibility:(unint64_t)visibility
{
  if (self->_backgroundVisibility != visibility)
  {
    self->_backgroundVisibility = visibility;
    [(SFUnifiedBar *)self _updateBackgroundAlpha];
  }
}

- (void)setChromelessScrollDistance:(double)distance
{
  v18 = *MEMORY[0x1E69E9840];
  self->_chromelessScrollDistance = distance;
  [(SFUnifiedBar *)self _updateBackgroundAlpha];
  [(SFUnifiedBar *)self _themeColorVisibility];
  v5 = v4;
  [(SFThemeColorEffectView *)self->_backgroundView themeColorVisibility];
  if (v6 != v5)
  {
    [(SFThemeColorEffectView *)self->_backgroundView setThemeColorVisibility:v5];
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allContentViews = [(SFUnifiedBarContentArrangement *)self->_contentArrangement allContentViews];
    v8 = [allContentViews countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(allContentViews);
          }

          v12 = *(*(&v13 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 setThemeColorVisibility:v5];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [allContentViews countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }
}

- (void)_updateBackgroundAlpha
{
  v17 = *MEMORY[0x1E69E9840];
  [(SFUnifiedBar *)self _backgroundAlpha];
  v4 = v3;
  [(SFThemeColorEffectView *)self->_backgroundView alpha];
  if (v5 != v4)
  {
    [(SFThemeColorEffectView *)self->_backgroundView setAlpha:v4];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allContentViews = [(SFUnifiedBarContentArrangement *)self->_contentArrangement allContentViews];
    v7 = [allContentViews countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(allContentViews);
          }

          v11 = *(*(&v12 + 1) + 8 * v10);
          if (objc_opt_respondsToSelector())
          {
            [v11 setBarBackgroundAlpha:v4];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [allContentViews countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }
  }
}

- (double)_backgroundAlpha
{
  backgroundVisibility = self->_backgroundVisibility;
  if (backgroundVisibility == 2)
  {
    return fmin(SFChromeVisibilityForScrollDistance(self->_chromelessScrollDistance), 0.999);
  }

  result = 1.0;
  if (backgroundVisibility == 1)
  {
    return 0.0;
  }

  return result;
}

- (void)setScrollPocketInteraction:(id)interaction
{
  interactionCopy = interaction;
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v5 = self->_scrollPocketInteraction;
    if (v5 != interactionCopy)
    {
      objc_storeStrong(&self->_scrollPocketInteraction, interaction);
      if (v5)
      {
        [(SFUnifiedBar *)self removeInteraction:v5];
      }

      if (interactionCopy)
      {
        [(SFUnifiedBar *)self addInteraction:interactionCopy];
      }
    }
  }
}

@end