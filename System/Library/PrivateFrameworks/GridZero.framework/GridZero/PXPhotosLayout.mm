@interface PXPhotosLayout
- (BOOL)_shouldShowSectionedLayout;
- (BOOL)canScrollToInitialPosition;
- (BOOL)stackLayout:(id)layout shouldAlignSublayoutToVisibleTopEdge:(id)edge;
- (CGPoint)adjustedTargetVisibleOriginForProposedTargetVisibleOrigin:(CGPoint)origin scrollingVelocity:(CGPoint)velocity decelerationRate:(int64_t *)rate;
- (CGPoint)headerTitleOrigin;
- (CGPoint)visibleOriginForScrollingToNeighboringSectionInDirection:(unint64_t)direction;
- (CGRect)originalPlacementRect;
- (CGSize)_headerTitleReferenceSize;
- (CGSize)_headerTitleSize;
- (CGSize)contentSizeForProposedContentSize:(CGSize)size;
- (CGSize)headerTitleSize;
- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (PXFloatRange)bottomCollapsibleArea;
- (PXFloatRange)topCollapsibleArea;
- (PXPhotosLayout)initWithViewModel:(id)model specManager:(id)manager overlayController:(id)controller;
- (PXPhotosLayoutDelegate)delegate;
- (PXScrollDetent)detentForInitialScrollPosition;
- (UIEdgeInsets)additionalSafeAreaInsetsForSublayout:(id)sublayout;
- (UIEdgeInsets)paddingForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (double)_headerSubtitleLineHeight;
- (double)_headerTitleLineHeight;
- (id)attributedStringForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)axSpriteIndexes;
- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)createAnchorForScrollingToInitialPosition;
- (id)createCurrentLayoutState;
- (id)createDefaultAnimationForCurrentContext;
- (id)dateIntervalFutureForContentInRect:(CGRect)rect type:(unint64_t)type;
- (id)hitTestResultForSpriteIndex:(unsigned int)index;
- (id)imageConfigurationAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)itemPlacementControllerForItemReference:(id)reference;
- (id)locationNamesFutureForContentInRect:(CGRect)rect;
- (id)placementInContext:(id)context forItemReference:(id)reference;
- (id)regionOfInterestForAssetReference:(id)reference;
- (id)stringAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)stringAttributesAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)topmostSectionHeaderSnapshotInRect:(CGRect)rect;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference;
- (unint64_t)fullyVisibleEdgesWithDefaultTolerance;
- (unsigned)_expectedLocalSpriteCount;
- (unsigned)_globalBackgroundSpriteIndex;
- (unsigned)_titleBackgroundSpriteIndex;
- (void)_informTopHeaderLayoutAboutDataSourceChange;
- (void)_invalidateContentBelowTitle;
- (void)_invalidateDynamicHeaderTitle;
- (void)_invalidateFooter;
- (void)_invalidateGlobalHeaderLayout;
- (void)_invalidateHeaderAnimated:(BOOL)animated;
- (void)_invalidateHeaderAttributes;
- (void)_invalidateHeaderMeasurements;
- (void)_invalidateHeaderMeasurementsForTitleChange;
- (void)_invalidateHeaderTitle;
- (void)_invalidateLocalSprites;
- (void)_invalidateLocalSpritesAlpha;
- (void)_invalidateLocalSpritesCount;
- (void)_invalidateScrollDetentAnchor;
- (void)_invalidateSectionedLayout;
- (void)_invalidateSectionedLayoutPlacementOverrides;
- (void)_invalidateTopHeaderLayout;
- (void)_performPreUpdateInvalidationDeferredIfNeeded:(id)needed;
- (void)_updateContentBelowTitle;
- (void)_updateFooter;
- (void)_updateGlobalHeaderLayout;
- (void)_updateHeaderAnimated:(BOOL)animated;
- (void)_updateHeaderAttributes;
- (void)_updateHeaderFooterAlphaAnimator;
- (void)_updateHeaderMeasurements;
- (void)_updateHeaderOrigin;
- (void)_updateHeaderTitle;
- (void)_updateLocalSprites;
- (void)_updateLocalSpritesAlpha;
- (void)_updateLocalSpritesCount;
- (void)_updatePresentedLayoutState;
- (void)_updateScrollDetentAnchor;
- (void)_updateSectionedLayout;
- (void)_updateSectionedLayoutPlacementOverrides;
- (void)_updateTopHeaderLayout;
- (void)adjustCopiedSprites:(id *)sprites;
- (void)didUpdate;
- (void)displayScaleDidChange;
- (void)enumerateAssetCollectionsInRect:(CGRect)rect enumerator:(id)enumerator;
- (void)enumerateAssetsInRect:(CGRect)rect enumerator:(id)enumerator;
- (void)enumerateItemsGeometriesInRect:(CGRect)rect dataSource:(id)source usingBlock:(id)block;
- (void)enumerateScrollablePagesWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)hideSpritesForObjectReferences:(id)references;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)referenceSizeDidChange;
- (void)safeAreaInsetsDidChange;
- (void)setAlignsHeaderTitleWithLayoutMargins:(BOOL)margins;
- (void)setFooterView:(id)view;
- (void)setGlobalHeaderProvider:(id)provider;
- (void)setHeaderSubtitle:(id)subtitle;
- (void)setHeaderSubtitleOverBackgroundAttributes:(id)attributes;
- (void)setHeaderSubtitleOverContentAttributes:(id)attributes;
- (void)setHeaderTitle:(id)title;
- (void)setHeaderTitleBaselineToBottom:(double)bottom;
- (void)setHeaderTitleOrigin:(CGPoint)origin;
- (void)setHeaderTitleOverBackgroundAttributes:(id)attributes;
- (void)setHeaderTitleOverContentAttributes:(id)attributes;
- (void)setHeaderTitleSize:(CGSize)size;
- (void)setHeaderView:(id)view animated:(BOOL)animated;
- (void)setPlacementOverride:(id)override;
- (void)setPlacementOverride:(id)override forItemReference:(id)reference;
- (void)setSectionBodyProvider:(id)provider;
- (void)setSectionHeaderProvider:(id)provider;
- (void)setStatusBarHeight:(double)height;
- (void)setTitleBackgroundGradientAdditionalCoverage:(double)coverage;
- (void)setTitleBackgroundSpriteHeight:(double)height;
- (void)setWantsHeaderInSafeArea:(BOOL)area;
- (void)update;
- (void)visibleRectDidChange;
- (void)willUpdate;
@end

@implementation PXPhotosLayout

- (PXScrollDetent)detentForInitialScrollPosition
{
  selfCopy = self;
  v3 = sub_21AC112B0();

  return v3;
}

- (BOOL)canScrollToInitialPosition
{
  selfCopy = self;
  v3 = sub_21AC1139C();

  return v3 & 1;
}

- (CGSize)contentSizeForProposedContentSize:(CGSize)size
{
  width = size.width;
  selfCopy = self;
  v5 = sub_21AC11460(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGSize)headerTitleSize
{
  width = self->_headerTitleSize.width;
  height = self->_headerTitleSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)headerTitleOrigin
{
  x = self->_headerTitleOrigin.x;
  y = self->_headerTitleOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (PXPhotosLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)stackLayout:(id)layout shouldAlignSublayoutToVisibleTopEdge:(id)edge
{
  topHeaderLayout = self->_topHeaderLayout;
  if (topHeaderLayout)
  {
    v5 = topHeaderLayout == edge;
  }

  else
  {
    v5 = 0;
  }

  return v5 && self->_topHeaderLayoutShouldFloat;
}

- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  _globalBackgroundSpriteIndex = [(PXPhotosLayout *)self _globalBackgroundSpriteIndex];
  if (_globalBackgroundSpriteIndex == -1 || _globalBackgroundSpriteIndex != index)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:2143 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  specManager = [(PXPhotosLayout *)self specManager];
  spec = [specManager spec];
  contentBackgroundColor = [spec contentBackgroundColor];

  return contentBackgroundColor;
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  _titleBackgroundSpriteIndex = [(PXPhotosLayout *)self _titleBackgroundSpriteIndex];
  if (_titleBackgroundSpriteIndex == -1 || _titleBackgroundSpriteIndex != index)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v18 = currentHandler;
    v19 = a2;
    selfCopy2 = self;
    v21 = 2132;
    goto LABEL_15;
  }

  viewModel = [(PXPhotosLayout *)self viewModel];
  navBarStyle = [viewModel navBarStyle];

  if (navBarStyle <= 8)
  {
    if (((1 << navBarStyle) & 0x60) != 0)
    {
      specManager = [(PXPhotosLayout *)self specManager];
      spec = [specManager spec];
      visualEffectViewGroupName = [spec visualEffectViewGroupName];

      goto LABEL_8;
    }

    if (((1 << navBarStyle) & 0x84) != 0)
    {
      specManager2 = [(PXPhotosLayout *)self specManager];
      spec2 = [specManager2 spec];
      specManager = [spec2 backgroundGradientImageConfiguration];

      visualEffectViewGroupName = [[PXTitleLegibilityDimmingViewConfiguration alloc] initWithGradientImageConfiguration:specManager];
LABEL_8:

      goto LABEL_9;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v18 = currentHandler;
    v19 = a2;
    selfCopy2 = self;
    v21 = 2115;
LABEL_15:
    [currentHandler handleFailureInMethod:v19 object:selfCopy2 file:@"PXPhotosLayout.m" lineNumber:v21 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  visualEffectViewGroupName = 0;
LABEL_9:

  return visualEffectViewGroupName;
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  _titleBackgroundSpriteIndex = [(PXPhotosLayout *)self _titleBackgroundSpriteIndex];
  if (_titleBackgroundSpriteIndex == -1 || _titleBackgroundSpriteIndex != index)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v13 = currentHandler;
    v14 = a2;
    selfCopy2 = self;
    v16 = 2101;
    goto LABEL_13;
  }

  viewModel = [(PXPhotosLayout *)self viewModel];
  navBarStyle = [viewModel navBarStyle];

  if (navBarStyle <= 8)
  {
    if (((1 << navBarStyle) & 0x60) != 0 || ((1 << navBarStyle) & 0x84) != 0)
    {
      self = objc_opt_class();
      goto LABEL_7;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v13 = currentHandler;
    v14 = a2;
    selfCopy2 = self;
    v16 = 2084;
LABEL_13:
    [currentHandler handleFailureInMethod:v14 object:selfCopy2 file:@"PXPhotosLayout.m" lineNumber:v16 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_7:

  return self;
}

- (id)axSpriteIndexes
{
  if (self->_managesHeaderSprites && [(PXPhotosLayout *)self localNumberOfSprites])
  {
    indexSet = [MEMORY[0x277CCAA78] indexSetWithIndex:3];
  }

  else
  {
    indexSet = [MEMORY[0x277CCAA78] indexSet];
  }

  return indexSet;
}

- (id)imageConfigurationAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  _titleBackgroundSpriteIndex = [(PXPhotosLayout *)self _titleBackgroundSpriteIndex];
  if (_titleBackgroundSpriteIndex == -1 || _titleBackgroundSpriteIndex != index)
  {
    if (index != 2)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:2057 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    specManager = [(PXPhotosLayout *)self specManager];
    spec = [specManager spec];
    behindContentBackgroundGradientImageConfiguration = [spec behindContentBackgroundGradientImageConfiguration];
  }

  else
  {
    specManager = [(PXPhotosLayout *)self specManager];
    spec = [specManager spec];
    behindContentBackgroundGradientImageConfiguration = [spec backgroundGradientImageConfiguration];
  }

  v12 = behindContentBackgroundGradientImageConfiguration;

  return v12;
}

- (id)attributedStringForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  headerTitle = [(PXPhotosLayout *)self headerTitle];
  headerSubtitle = [(PXPhotosLayout *)self headerSubtitle];
  v10 = headerSubtitle;
  v11 = 0;
  if (headerTitle && headerSubtitle)
  {
    if (index == 3)
    {
      headerTitleOverContentAttributes = [(PXPhotosLayout *)self headerTitleOverContentAttributes];
      headerSubtitleOverContentAttributes = [(PXPhotosLayout *)self headerSubtitleOverContentAttributes];
    }

    else
    {
      if (index != 4)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:2038 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      headerTitleOverContentAttributes = [(PXPhotosLayout *)self headerTitleOverBackgroundAttributes];
      headerSubtitleOverContentAttributes = [(PXPhotosLayout *)self headerSubtitleOverBackgroundAttributes];
    }

    v14 = headerSubtitleOverContentAttributes;
    v11 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:headerTitle attributes:headerTitleOverContentAttributes];
    v15 = objc_alloc(MEMORY[0x277CCA898]);
    headerSubtitle2 = [(PXPhotosLayout *)self headerSubtitle];
    v17 = [@"\n" stringByAppendingString:headerSubtitle2];
    v18 = [v15 initWithString:v17 attributes:v14];

    [v11 appendAttributedString:v18];
  }

  return v11;
}

- (UIEdgeInsets)paddingForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  v4 = *MEMORY[0x277D73D80];
  v5 = *(MEMORY[0x277D73D80] + 8);
  v6 = *(MEMORY[0x277D73D80] + 16);
  v7 = *(MEMORY[0x277D73D80] + 24);
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (id)stringAttributesAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (index == 4)
  {
    headerTitleOverBackgroundAttributes = [(PXPhotosLayout *)self headerTitleOverBackgroundAttributes];
  }

  else
  {
    if (index != 3)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:2006 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    headerTitleOverBackgroundAttributes = [(PXPhotosLayout *)self headerTitleOverContentAttributes];
  }

  v9 = headerTitleOverBackgroundAttributes;

  return v9;
}

- (id)stringAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (index - 3 > 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:1996 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = layoutCopy;
  headerTitle = [(PXPhotosLayout *)self headerTitle];
  v10 = headerTitle;
  if (headerTitle)
  {
    v11 = headerTitle;
  }

  else
  {
    v11 = &stru_282C2F4D0;
  }

  v12 = v11;

  return v11;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  v10 = observableCopy;
  if (ViewModelObservationContext_7497 == context)
  {
    if (change)
    {
      viewModel = [(PXPhotosLayout *)self viewModel];
      wantsDynamicTitles = [viewModel wantsDynamicTitles];

      if (wantsDynamicTitles)
      {
        [(PXPhotosLayout *)self _invalidateDynamicHeaderTitle];
      }

      else
      {
        [(PXPhotosLayout *)self _performPreUpdateInvalidationDeferredIfNeeded:&__block_literal_global_117];
      }

      if (self->_headerProviderRespondsTo.topHeaderLayoutDidChangeDataSource && self->_topHeaderLayout)
      {
        [(PXPhotosLayout *)self _performPreUpdateInvalidationDeferredIfNeeded:&__block_literal_global_119];
      }

      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __47__PXPhotosLayout_observable_didChange_context___block_invoke_3;
      v26[3] = &unk_278298DE8;
      v26[4] = self;
      [(PXPhotosLayout *)self _performPreUpdateInvalidationDeferredIfNeeded:v26];
      if ((change & 0x4000) == 0)
      {
LABEL_12:
        if ((change & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_48;
      }
    }

    else if ((change & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    [(PXPhotosLayout *)self _invalidateSectionedLayout];
    if ((change & 4) == 0)
    {
LABEL_13:
      if ((change & 0x100000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_49;
    }

LABEL_48:
    [(PXPhotosLayout *)self _invalidateTopHeaderLayout];
    if ((change & 0x100000000) == 0)
    {
LABEL_14:
      if ((change & 0x800000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_50;
    }

LABEL_49:
    [(PXGStackLayout *)self invalidateAdditionalSafeAreaInsets];
    [(PXPhotosLayout *)self _invalidateLocalSprites];
    [(PXPhotosLayout *)self _invalidateLocalSpritesAlpha];
    if ((change & 0x800000000) == 0)
    {
LABEL_15:
      if ((change & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_51;
    }

LABEL_50:
    [(PXPhotosLayout *)self _invalidateLocalSpritesAlpha];
    if ((change & 0x40) == 0)
    {
LABEL_16:
      if ((change & 0x20000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_51:
    [(PXPhotosLayout *)self clearLastVisibleAreaAnchoringInformation];
    if ((change & 0x20000000) == 0)
    {
LABEL_18:
      if ((change & 0x80002000) != 0)
      {
        [(PXPhotosLayout *)self _invalidateLocalSpritesAlpha];
      }

      if ((change & 0x1001000) != 0)
      {
        [(PXPhotosLayout *)self _invalidateLocalSprites];
      }

      if ((change & 0x400000000) != 0)
      {
        v13 = [(PXPhotosLayout *)self createFenceWithType:3];
        [v13 setTimeout:0.5];

        [(PXPhotosLayout *)self _invalidateFooter];
        [(PXPhotosLayout *)self _invalidateSectionedLayout];
        if ((change & 0x100000000000) == 0)
        {
LABEL_24:
          if ((change & 0x20000000000000) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_34;
        }
      }

      else if ((change & 0x100000000000) == 0)
      {
        goto LABEL_24;
      }

      [(PXPhotosLayout *)self _invalidateFooter];
      [(PXPhotosLayout *)self _invalidateSectionedLayout];
      [(PXPhotosLayout *)self _invalidateScrollDetentAnchor];
      [(PXPhotosLayout *)self _invalidateContentBelowTitle];
      if ((change & 0x20000000000000) == 0)
      {
LABEL_25:
        if ((change & 0x40000000000000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_35;
      }

LABEL_34:
      [(PXPhotosLayout *)self _invalidateLocalSpritesAlpha];
      if ((change & 0x40000000000000) == 0)
      {
LABEL_26:
        if ((change & 0x400000000000) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_36;
      }

LABEL_35:
      [(PXPhotosLayout *)self _invalidateLocalSprites];
      if ((change & 0x400000000000) == 0)
      {
        goto LABEL_62;
      }

LABEL_36:
      [(PXPhotosLayout *)self _invalidateHeaderMeasurements];
      goto LABEL_62;
    }

LABEL_17:
    [(PXPhotosLayout *)self _updateHeaderFooterAlphaAnimator];
    goto LABEL_18;
  }

  if (SpecManagerObservationContext == context)
  {
    if (change)
    {
      [(PXPhotosLayout *)self _invalidateHeaderAttributes];
      [(PXPhotosLayout *)self _invalidateHeaderMeasurements];
      [(PXPhotosLayout *)self _invalidateTopHeaderLayout];
      [(PXPhotosLayout *)self _invalidateGlobalHeaderLayout];
      [(PXPhotosLayout *)self _invalidateSectionedLayout];
      [(PXPhotosLayout *)self _invalidateSectionedLayoutPlacementOverrides];
      [(PXPhotosLayout *)self _invalidateGlobalBackground];
      [(PXPhotosLayout *)self _invalidateLocalSprites];
    }

    goto LABEL_62;
  }

  if (AlternateAppearanceMixAnimatorObservationContext == context)
  {
    if ((change & 2) == 0)
    {
      goto LABEL_62;
    }

    v14 = observableCopy;
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_40;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v18 = objc_opt_class();
      v17 = NSStringFromClass(v18);
      px_descriptionForAssertionMessage = [v14 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:1959 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v17, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:1959 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v17}];
    }

LABEL_40:
    if (([v14 isBeingMutated] & 1) == 0)
    {
      [(PXPhotosLayout *)self _invalidateLocalSpritesAlpha];
    }

    goto LABEL_58;
  }

  if (HeaderFooterAlphaAnimatorObservationContext == context)
  {
    if ((change & 2) == 0)
    {
      goto LABEL_62;
    }

    v14 = observableCopy;
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_56;
      }

      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v23 = objc_opt_class();
      v22 = NSStringFromClass(v23);
      px_descriptionForAssertionMessage2 = [v14 px_descriptionForAssertionMessage];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:1966 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v22, px_descriptionForAssertionMessage2}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:1966 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v22}];
    }

LABEL_56:
    if (([v14 isBeingMutated] & 1) == 0)
    {
      [(PXPhotosLayout *)self _invalidateLocalSpritesAlpha];
      [(PXPhotosLayout *)self _invalidateHeaderAnimated:0];
      [(PXPhotosLayout *)self _invalidateFooter];
    }

LABEL_58:

    goto LABEL_62;
  }

  if (HeaderCustomizationModelObservationContext != context)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:1986 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (change)
  {
    [(PXGStackLayout *)self invalidateAdditionalSafeAreaInsets];
    [(PXPhotosLayout *)self _invalidateHeaderOrigin];
    if ((change & 2) == 0)
    {
LABEL_8:
      if ((change & 4) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }
  }

  else if ((change & 2) == 0)
  {
    goto LABEL_8;
  }

  [(PXPhotosLayout *)self _invalidateLocalSprites];
  if ((change & 4) != 0)
  {
LABEL_61:
    [(PXPhotosLayout *)self _invalidateHeaderAnimated:0];
    [(PXPhotosLayout *)self _invalidateLocalSpritesAlpha];
  }

LABEL_62:
}

- (void)_performPreUpdateInvalidationDeferredIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = neededCopy;
  if (self->_isUpdatingSublayouts)
  {
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__PXPhotosLayout__performPreUpdateInvalidationDeferredIfNeeded___block_invoke;
    block[3] = &unk_278298DC0;
    v7 = v5;
    objc_copyWeak(&v8, &location);
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v8);

    objc_destroyWeak(&location);
  }

  else
  {
    (*(neededCopy + 2))(neededCopy, self);
  }
}

void __64__PXPhotosLayout__performPreUpdateInvalidationDeferredIfNeeded___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(v1 + 16))(v1, WeakRetained);
}

- (void)_informTopHeaderLayoutAboutDataSourceChange
{
  if (self->_headerProviderRespondsTo.topHeaderLayoutDidChangeDataSource && self->_topHeaderLayout)
  {
    sectionHeaderProvider = [(PXPhotosLayout *)self sectionHeaderProvider];
    topHeaderLayout = self->_topHeaderLayout;
    viewModel = [(PXPhotosLayout *)self viewModel];
    currentDataSource = [viewModel currentDataSource];
    [sectionHeaderProvider topHeaderLayout:topHeaderLayout didChangeDataSource:currentDataSource];
  }
}

- (void)setPlacementOverride:(id)override forItemReference:(id)reference
{
  v16 = *MEMORY[0x277D85DE8];
  overrideCopy = override;
  referenceCopy = reference;
  viewModel = [(PXPhotosLayout *)self viewModel];
  currentDataSource = [viewModel currentDataSource];
  containerCollection = [currentDataSource containerCollection];
  v11 = [referenceCopy isEqual:containerCollection];

  if (v11)
  {
    if ([overrideCopy hasGeometry])
    {
      v12 = overrideCopy;
    }

    else
    {
      v12 = 0;
    }

    [(PXPhotosLayout *)self setPlacementOverride:v12];
    [(PXPhotosLayout *)self setDetailedPlacementOverride:overrideCopy forItemReference:referenceCopy];
  }

  else
  {
    v13 = PXAssertGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = referenceCopy;
      _os_log_error_impl(&dword_21ABF3000, v13, OS_LOG_TYPE_ERROR, "unexpected itemReference %@", &v14, 0xCu);
    }
  }
}

- (id)placementInContext:(id)context forItemReference:(id)reference
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  referenceCopy = reference;
  viewModel = [(PXPhotosLayout *)self viewModel];
  currentDataSource = [viewModel currentDataSource];
  containerCollection = [currentDataSource containerCollection];
  v11 = [referenceCopy isEqual:containerCollection];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277D73CB0]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__PXPhotosLayout_placementInContext_forItemReference___block_invoke;
    v16[3] = &unk_278298D98;
    v16[4] = self;
    v13 = [v12 initWithContext:contextCopy configuration:v16];
  }

  else
  {
    v14 = PXAssertGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = referenceCopy;
      _os_log_error_impl(&dword_21ABF3000, v14, OS_LOG_TYPE_ERROR, "unexpected itemReference %@", buf, 0xCu);
    }

    v13 = 0;
  }

  return v13;
}

void __54__PXPhotosLayout_placementInContext_forItemReference___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v8 = a2;
  [v3 originalPlacementRect];
  [v8 setRect:*(a1 + 32) velocity:? inLayout:?];
  [v8 setAlpha:1.0];
  [v8 setChromeAlpha:1.0];
  LODWORD(v4) = *MEMORY[0x277D73D18];
  LODWORD(v5) = *(MEMORY[0x277D73D18] + 4);
  LODWORD(v6) = *(MEMORY[0x277D73D18] + 8);
  LODWORD(v7) = *(MEMORY[0x277D73D18] + 12);
  [v8 setCornerRadius:{v4, v5, v6, v7}];
}

- (id)itemPlacementControllerForItemReference:(id)reference
{
  referenceCopy = reference;
  viewModel = [(PXPhotosLayout *)self viewModel];
  currentDataSource = [viewModel currentDataSource];
  containerCollection = [currentDataSource containerCollection];
  v8 = [referenceCopy isEqual:containerCollection];

  if (v8)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = [objc_alloc(MEMORY[0x277D73CD0]) initWithOriginalItemPlacementController:self originalItemReference:referenceCopy];
  }

  v10 = selfCopy;

  return v10;
}

- (UIEdgeInsets)additionalSafeAreaInsetsForSublayout:(id)sublayout
{
  sublayoutCopy = sublayout;
  v5 = MEMORY[0x277D3CF90];
  headerCustomizationModel = [(PXPhotosLayout *)self headerCustomizationModel];
  [headerCustomizationModel verticalVisibilityOffset];
  v8 = v7;

  viewModel = [(PXPhotosLayout *)self viewModel];
  [viewModel floatingTitleOpacity];
  v11 = v10;

  if (v11 == 1.0)
  {
    [(PXPhotosLayout *)self titleBackgroundSpriteHeight];
    v8 = v8 + v12;
  }

  else if ([(PXPhotosLayout *)self wantsHeaderInSafeArea])
  {
    [(PXPhotosLayout *)self safeAreaInsets];
    v14 = v13;
    [(PXPhotosLayout *)self statusBarHeight];
    v8 = v8 - (v14 - v15);
  }

  v16 = v5[1];
  v17 = v5[2];
  v18 = v5[3];
  topHeaderLayout = self->_topHeaderLayout;
  if (topHeaderLayout != sublayoutCopy)
  {
    if (topHeaderLayout)
    {
      v20 = self->_globalHeaderLayout == sublayoutCopy;
    }

    else
    {
      v20 = 1;
    }

    if (!v20 && self->_topHeaderLayoutShouldFloat)
    {
      [(PXPhotosSectionedLayoutHeader *)topHeaderLayout contentSize];
      v8 = v8 + v21;
    }
  }

  v22 = v8;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  result.right = v25;
  result.bottom = v24;
  result.left = v23;
  result.top = v22;
  return result;
}

- (void)adjustCopiedSprites:(id *)sprites
{
  v21.receiver = self;
  v21.super_class = PXPhotosLayout;
  v5 = *&sprites->var2;
  v19[0] = *&sprites->var0;
  v19[1] = v5;
  var4 = sprites->var4;
  [(PXPhotosLayout *)&v21 adjustCopiedSprites:v19];
  placementOverride = [(PXPhotosLayout *)self placementOverride];
  v7 = placementOverride;
  if (placementOverride)
  {
    [placementOverride alpha];
    var0 = sprites->var0;
    if (var0)
    {
      v10 = 0;
      v11 = 40 * var0;
      v12 = sprites->var4 + 1;
      do
      {
        v13 = v12[v10];
        v14 = v13 > 0xC;
        v15 = (1 << v13) & 0x1DFB;
        if (!v14 && v15 != 0)
        {
          var3 = sprites->var3;
          v18 = v8 * *(var3 + v10);
          *(var3 + v10) = v18;
        }

        v10 += 40;
      }

      while (v11 != v10);
    }
  }
}

- (void)hideSpritesForObjectReferences:(id)references
{
  v9.receiver = self;
  v9.super_class = PXPhotosLayout;
  [(PXPhotosLayout *)&v9 hideSpritesForObjectReferences:references];
  pendingHideAnimationType = [(PXPhotosLayout *)self pendingHideAnimationType];
  [(PXPhotosLayout *)self setPendingHideAnimationType:0];
  v5 = [PXPhotosGridHideAssetAnimationHelper createDecorationAnimationsForLayout:self animationType:pendingHideAnimationType];
  if ([v5 count])
  {
    v6 = 1;
  }

  else
  {
    v6 = pendingHideAnimationType == 0;
  }

  if (!v6)
  {
    v7 = PXGridZeroGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_21ABF3000, v7, OS_LOG_TYPE_ERROR, "Failed to create animations for hiding/unhiding assets", v8, 2u);
    }
  }
}

- (id)createDefaultAnimationForCurrentContext
{
  viewModel = [(PXPhotosLayout *)self viewModel];
  if ([viewModel isAppearing])
  {
    v4 = 0;
  }

  else
  {
    if ([viewModel isEmbedded])
    {
      v12.receiver = self;
      v12.super_class = PXPhotosLayout;
      createDefaultAnimationForCurrentContext = [(PXPhotosLayout *)&v12 createDefaultAnimationForCurrentContext];
      animationProvider = +[PXPhotosGridSettings sharedInstance];
      [animationProvider defaultAnimationDuration];
      [createDefaultAnimationForCurrentContext setDuration:?];
    }

    else
    {
      animationProvider = [(PXPhotosLayout *)self animationProvider];
      presentedLayoutState = [(PXPhotosLayout *)self presentedLayoutState];
      createCurrentLayoutState = [(PXPhotosLayout *)self createCurrentLayoutState];
      createDefaultAnimationForCurrentContext = [animationProvider createAnimationForLayout:self presentedLayoutState:presentedLayoutState targetLayoutState:createCurrentLayoutState];
    }

    delegate = [(PXPhotosLayout *)self delegate];
    v10 = delegate;
    if (createDefaultAnimationForCurrentContext && delegate)
    {
      v4 = [delegate photosLayout:self animationForProposedAnimation:createDefaultAnimationForCurrentContext];
      if (createDefaultAnimationForCurrentContext != v4)
      {
        [(PXPhotosLayout *)self removeAnimation:createDefaultAnimationForCurrentContext];
        if (v4)
        {
          [(PXPhotosLayout *)self addAnimation:v4];
        }
      }
    }

    else
    {
      v4 = createDefaultAnimationForCurrentContext;
    }
  }

  return v4;
}

- (unint64_t)fullyVisibleEdgesWithDefaultTolerance
{
  [(PXPhotosLayout *)self topCollapsibleArea];
  [(PXPhotosLayout *)self bottomCollapsibleArea];
  PXEdgeInsetsMake();

  return [(PXPhotosLayout *)self fullyVisibleEdgesWithEdgeTolerances:?];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = PXPhotosLayout;
  [(PXPhotosLayout *)&v3 safeAreaInsetsDidChange];
  [(PXPhotosLayout *)self _invalidateHeaderMeasurements];
  [(PXPhotosLayout *)self _invalidateContentBelowTitle];
  [(PXPhotosLayout *)self _invalidateLocalSprites];
}

- (void)displayScaleDidChange
{
  v3.receiver = self;
  v3.super_class = PXPhotosLayout;
  [(PXGStackLayout *)&v3 displayScaleDidChange];
  [(PXPhotosLayout *)self _invalidateLocalSprites];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXPhotosLayout;
  [(PXGStackLayout *)&v3 referenceSizeDidChange];
  [(PXPhotosLayout *)self _invalidateHeaderMeasurements];
}

- (void)visibleRectDidChange
{
  v5.receiver = self;
  v5.super_class = PXPhotosLayout;
  [(PXGStackLayout *)&v5 visibleRectDidChange];
  [(PXPhotosLayout *)self _invalidateContentBelowTitle];
  [(PXPhotosLayout *)self _invalidateLocalSprites];
  [(PXPhotosLayout *)self _invalidateHeaderOrigin];
  viewModel = [(PXPhotosLayout *)self viewModel];
  wantsDynamicTitles = [viewModel wantsDynamicTitles];

  if (wantsDynamicTitles)
  {
    [(PXPhotosLayout *)self _invalidateDynamicHeaderTitle];
  }
}

- (id)hitTestResultForSpriteIndex:(unsigned int)index
{
  v26.receiver = self;
  v26.super_class = PXPhotosLayout;
  v4 = [(PXPhotosLayout *)&v26 hitTestResultForSpriteIndex:*&index];
  identifier = [v4 identifier];
  v6 = [identifier isEqualToString:*MEMORY[0x277D73D50]];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D73CA8]);
    spriteReference = [v4 spriteReference];
    layout = [v4 layout];
    userData = [v4 userData];
    v11 = [v7 initWithSpriteReference:spriteReference layout:layout identifier:@"PXPhotosLayoutHitTestIdentifierAsset" userData:userData];

    v4 = userData;
  }

  else
  {
    identifier2 = [v4 identifier];
    v13 = [identifier2 isEqualToString:*MEMORY[0x277D73D48]];

    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x277D73CA8]);
      spriteReference = [v4 spriteReference];
      layout = [v4 layout];
      v15 = @"PXPhotosLayoutHitTestIdentifierAccessoryCell";
      v16 = v14;
      v17 = spriteReference;
      v18 = layout;
      v19 = 0;
    }

    else
    {
      overlayController = [(PXPhotosLayout *)self overlayController];
      spriteReference2 = [v4 spriteReference];
      objectReference = [spriteReference2 objectReference];
      v23 = [overlayController canHandleObjectReference:objectReference];

      if (!v23)
      {
        goto LABEL_9;
      }

      v24 = objc_alloc(MEMORY[0x277D73CA8]);
      spriteReference = [v4 spriteReference];
      layout = [v4 layout];
      v15 = @"PXPhotosLayoutHitTestIdentifierOverlayItem";
      v16 = v24;
      v17 = spriteReference;
      v18 = layout;
      v19 = v4;
    }

    v11 = [v16 initWithSpriteReference:v17 layout:v18 identifier:v15 userData:v19];
  }

  v4 = v11;
LABEL_9:

  return v4;
}

- (int64_t)sublayoutIndexForObjectReference:(id)reference options:(unint64_t)options updatedObjectReference:(id *)objectReference
{
  referenceCopy = reference;
  *objectReference = referenceCopy;
  if ([(PXPhotosLayout *)self _shouldShowSectionedLayout])
  {
    if (!self->_sectionedLayout)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:1645 description:{@"missing _sectionedLayout in %@", self}];
    }

    sublayoutDataStore = [(PXPhotosLayout *)self sublayoutDataStore];
    v10 = [sublayoutDataStore indexOfSublayout:self->_sectionedLayout];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (void)_updateLocalSpritesAlpha
{
  viewModel = [(PXPhotosLayout *)self viewModel];
  specManager = [(PXPhotosLayout *)self specManager];
  spec = [specManager spec];

  v6 = +[PXPhotosGridSettings sharedInstance];
  navBarStyle = [viewModel navBarStyle];
  [spec contentBackgroundOpacity];
  v9 = v8;
  [viewModel contentBackgroundOpacity];
  if (v9 >= v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  _globalBackgroundSpriteIndex = [(PXPhotosLayout *)self _globalBackgroundSpriteIndex];
  _titleBackgroundSpriteIndex = [(PXPhotosLayout *)self _titleBackgroundSpriteIndex];
  if ((navBarStyle - 5) <= 1)
  {
    v14 = self->_topHeaderLayout == 0;
    if (([viewModel isScrolledToTop] & v14) != 0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 1.0;
    }

    _expectedLocalSpriteCount = [(PXPhotosLayout *)self _expectedLocalSpriteCount];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __42__PXPhotosLayout__updateLocalSpritesAlpha__block_invoke;
    v45[3] = &unk_278298D20;
    v17 = _expectedLocalSpriteCount << 32;
    *&v45[5] = v11;
    v46 = _globalBackgroundSpriteIndex;
    v47 = _titleBackgroundSpriteIndex;
    v48 = v15;
    v45[4] = self;
    v18 = v45;
LABEL_14:
    [(PXPhotosLayout *)self modifySpritesInRange:v17 state:v18];
    goto LABEL_31;
  }

  if (navBarStyle == 7)
  {
    if ([viewModel isScrolledToTop])
    {
      v19 = 0.0;
    }

    else
    {
      v19 = 0.65;
    }

    _expectedLocalSpriteCount2 = [(PXPhotosLayout *)self _expectedLocalSpriteCount];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __42__PXPhotosLayout__updateLocalSpritesAlpha__block_invoke_2;
    v42[3] = &__block_descriptor_40_e101_v40__0__PXGSpriteIndexRange_II_8_______ddd__16____f_________ffff__4f___ffffSCf____4___24____CCfqSC_32l;
    v17 = _expectedLocalSpriteCount2 << 32;
    v43 = _titleBackgroundSpriteIndex;
    v44 = v19;
    v18 = v42;
    goto LABEL_14;
  }

  [viewModel titleBackgroundOpacity];
  v22 = v21;
  [(PXNumberAnimator *)self->_alternateAppearanceMixAnimator presentationValue];
  v24 = v23;
  v25 = 1.0 - v23;
  if ([spec userInterfaceStyle] == 2)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = v24;
  }

  v27 = 0;
  if ([spec userInterfaceStyle] == 2)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v25;
  }

  [v6 headerGradientAlpha];
  v30 = v29;
  if (![(PXPhotosLayout *)self wantsHeaderInSafeArea])
  {
    viewModel2 = [(PXPhotosLayout *)self viewModel];
    if ([viewModel2 isInCompactMode])
    {
      [v6 behindContentBackgroundGradientAlpha];
      v27 = v32;
    }
  }

  if ([viewModel wantsFloatingTitle])
  {
    [viewModel floatingTitleOpacity];
  }

  else
  {
    [(PXNumberAnimator *)self->_headerFooterAlphaAnimator presentationValue];
  }

  v34 = v33;
  headerCustomizationModel = [(PXPhotosLayout *)self headerCustomizationModel];
  v36 = headerCustomizationModel;
  if (headerCustomizationModel)
  {
    [headerCustomizationModel alpha];
    v34 = v34 * v37;
  }

  _expectedLocalSpriteCount3 = [(PXPhotosLayout *)self _expectedLocalSpriteCount];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __42__PXPhotosLayout__updateLocalSpritesAlpha__block_invoke_3;
  v39[3] = &unk_278298D68;
  v40 = _globalBackgroundSpriteIndex;
  v41 = _titleBackgroundSpriteIndex;
  *&v39[5] = v11;
  v39[6] = v22;
  *&v39[7] = v24;
  v39[8] = v30;
  v39[4] = self;
  v39[9] = v27;
  *&v39[10] = v34;
  *&v39[11] = v26;
  *&v39[12] = v28;
  [(PXPhotosLayout *)self modifySpritesInRange:_expectedLocalSpriteCount3 << 32 state:v39];

LABEL_31:
}

uint64_t __42__PXPhotosLayout__updateLocalSpritesAlpha__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = *(result + 48);
  if (v4 != -1)
  {
    v5 = *(result + 40);
    *&a4[40 * v4] = v5;
  }

  v6 = *(result + 52);
  if (v6 != -1)
  {
    a4[40 * v6] = *(result + 56);
  }

  if (*(*(result + 32) + 1152) == 1)
  {
    a4[80] = 0;
    a4[120] = 0;
    a4[160] = 1065353216;
  }

  return result;
}

float __42__PXPhotosLayout__updateLocalSpritesAlpha__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (v4 != -1)
  {
    result = *(a1 + 36);
    *(a4 + 160 * v4) = result;
  }

  return result;
}

float __42__PXPhotosLayout__updateLocalSpritesAlpha__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, float *a4)
{
  v4 = *(a1 + 104);
  if (v4 != -1)
  {
    result = *(a1 + 40);
    a4[40 * v4] = result;
  }

  v6 = *(a1 + 108);
  if (v6 != -1)
  {
    result = *(a1 + 48) * *(a1 + 56) * *(a1 + 64);
    a4[40 * v6] = result;
  }

  if (*(*(a1 + 32) + 1152) == 1)
  {
    v7 = *(a1 + 80);
    v8 = *(a1 + 48) * *(a1 + 56) * *(a1 + 72);
    a4[80] = v8;
    v9 = *(a1 + 96);
    v10 = v7 * *(a1 + 88);
    a4[120] = v10;
    result = v7 * v9;
    a4[160] = result;
  }

  return result;
}

- (void)_invalidateLocalSpritesAlpha
{
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 0x1000000;
      return;
    }

LABEL_5:
    if ((self->_postUpdateFlags.updated & 0x1000000) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateLocalSpritesAlpha]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1570 description:{@"invalidating %lu after it already has been updated", 0x1000000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 0x1000000;
  if (!willPerformUpdate)
  {

    [(PXPhotosLayout *)self setNeedsUpdate];
  }
}

- (void)_updateLocalSprites
{
  viewModel = [(PXPhotosLayout *)self viewModel];
  specManager = [(PXPhotosLayout *)self specManager];
  spec = [specManager spec];

  headerCustomizationModel = [(PXPhotosLayout *)self headerCustomizationModel];
  [(PXPhotosLayout *)self headerTitleOrigin];
  v8 = v7;
  v10 = v9;
  [(PXPhotosLayout *)self displayScale];
  v79 = v11;
  [(PXPhotosLayout *)self referenceSize];
  v81 = v12;
  v13 = v12 + v8 * -2.0;
  [(PXPhotosLayout *)self headerTitleSize];
  v15 = v14;
  v82 = v16;
  [(PXPhotosLayout *)self visibleRect];
  v18 = v17;
  [headerCustomizationModel verticalVisibilityOffset];
  v78 = v19;
  if (v15 >= v13)
  {
    v20 = v13;
  }

  else
  {
    v20 = v15;
  }

  v80 = v20;
  wantsFloatingTitle = [viewModel wantsFloatingTitle];
  v22 = v18;
  if ((wantsFloatingTitle & 1) == 0)
  {
    [(PXPhotosLayout *)self safeAreaInsets];
    v22 = -v23;
  }

  v24 = v10 + v22;
  isTV = [spec isTV];
  v26 = 0.0;
  if ((isTV & (v24 < 0.0)) == 0)
  {
    v26 = v24;
  }

  v76 = v26;
  [headerCustomizationModel verticalFloatingOffset];
  v75 = v27;
  [(PXPhotosLayout *)self safeAreaInsets];
  v74 = v28;
  [(PXPhotosLayout *)self titleBackgroundSpriteHeight];
  v73 = v29;
  [(PXPhotosLayout *)self titleBackgroundGradientAdditionalCoverage];
  v72 = v30;
  [(PXPhotosLayout *)self visibleRect];
  v32 = v31;
  [(PXPhotosLayout *)self contentSize];
  PXRectWithOriginAndSize();
  v34 = v33;
  v36 = v35;
  v69 = v38;
  v70 = v37;
  viewModel2 = [(PXPhotosLayout *)self viewModel];
  v83 = v8;
  v77 = v32;
  if ([viewModel2 gridStyle] == 3)
  {
    sectionedLayout = self->_sectionedLayout;

    if (sectionedLayout)
    {
      v41 = [(PXPhotosLayout *)self indexOfSublayout:self->_sectionedLayout];
      v105 = 0;
      v106 = &v105;
      v107 = 0xA810000000;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v116 = 0u;
      v108 = &unk_21AC883FE;
      v117 = 0;
      sublayoutDataStore = [(PXPhotosLayout *)self sublayoutDataStore];
      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __37__PXPhotosLayout__updateLocalSprites__block_invoke;
      v104[3] = &unk_278298CA8;
      v104[4] = &v105;
      [sublayoutDataStore enumerateSublayoutGeometriesInRange:v41 options:1 usingBlock:{0, v104}];

      v43 = +[PXZoomablePhotosSettings sharedInstance];
      [v43 interitemSpacing];
      v45 = v44;

      v46 = v106[11];
      [(PXPhotosLayout *)self safeAreaInsets];
      v48 = v46 - v47 - v45;
      v118.origin.x = v34;
      v118.origin.y = v36;
      v118.size.height = v69;
      v118.size.width = v70;
      v119 = CGRectOffset(v118, 0.0, v48);
      x = v119.origin.x;
      y = v119.origin.y;
      width = v119.size.width;
      height = v119.size.height;
      _Block_object_dispose(&v105, 8);
      v71 = x;
      v53 = height;
      goto LABEL_13;
    }
  }

  else
  {
  }

  [viewModel contentBackgroundInsets];
  PXEdgeInsetsInsetRect();
  v71 = v54;
  y = v55;
  width = v56;
  v53 = v57;
LABEL_13:
  v58 = v79;
  v59 = [(PXPhotosLayout *)self _expectedLocalSpriteCount]<< 32;
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __37__PXPhotosLayout__updateLocalSprites__block_invoke_2;
  v87[3] = &unk_278298CD0;
  v60 = viewModel;
  v88 = v60;
  selfCopy = self;
  v91 = v71;
  v92 = y;
  v93 = width;
  v94 = v53;
  v95 = v77;
  v96 = v78 + v18;
  v97 = v81;
  v98 = v74 + v73 + v72;
  v61 = spec;
  v90 = v61;
  v103 = v58;
  v99 = v83;
  v100 = v75 + v76;
  v101 = v80;
  v102 = v82;
  [(PXPhotosLayout *)self modifySpritesInRange:v59 state:v87];
  [(PXPhotosLayout *)self _invalidateLocalSpritesAlpha];
  if ([v60 requiresLightTopBars])
  {
    v62 = 1.0;
  }

  else
  {
    v62 = 0.0;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__PXPhotosLayout__updateLocalSprites__block_invoke_3;
  aBlock[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
  *&aBlock[4] = v62;
  v63 = _Block_copy(aBlock);
  [(PXNumberAnimator *)self->_alternateAppearanceMixAnimator presentationValue];
  if (!self->_presentedVisibility || (v65 = v64, v62 == v64) || ([v60 isAppearing] & 1) != 0)
  {
    [(PXNumberAnimator *)self->_alternateAppearanceMixAnimator performChangesWithoutAnimation:v63];
  }

  else
  {
    [v60 topBarsAppearanceChangeAnimationDuration];
    [(PXNumberAnimator *)self->_alternateAppearanceMixAnimator performChangesWithDuration:1 curve:v63 changes:vabdd_f64(v62, v65) * v66];
  }

  localNumberOfSprites = [(PXPhotosLayout *)self localNumberOfSprites];
  [(PXPhotosLayout *)self alpha];
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __37__PXPhotosLayout__updateLocalSprites__block_invoke_4;
  v84[3] = &unk_278298CF8;
  v84[4] = self;
  v84[5] = v68;
  v85 = localNumberOfSprites;
  [(PXPhotosLayout *)self installLayoutCompletionBlock:v84];
}

__n128 __37__PXPhotosLayout__updateLocalSprites__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a3 + 64);
  v6 = *(a3 + 16);
  v5 = *(a3 + 32);
  *(v3 + 80) = *(a3 + 48);
  *(v3 + 96) = v4;
  *(v3 + 48) = v6;
  *(v3 + 64) = v5;
  v8 = *(a3 + 96);
  v7 = *(a3 + 112);
  v9 = *(a3 + 80);
  *(v3 + 160) = *(a3 + 128);
  *(v3 + 128) = v8;
  *(v3 + 144) = v7;
  *(v3 + 112) = v9;
  result = *a3;
  *(v3 + 32) = *a3;
  return result;
}

void __37__PXPhotosLayout__updateLocalSprites__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = [*(a1 + 32) navBarStyle];
  if (v9 >= 8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x10A0A0001010100uLL >> (8 * v9);
  }

  if (v9 >= 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0x101010000010000uLL >> (8 * v9);
  }

  v12 = [*(a1 + 40) _globalBackgroundSpriteIndex];
  if (v12 != -1)
  {
    v13 = v12;
    v14 = (a3 + 32 * v12);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    v17 = *(a1 + 72);
    v18 = *(a1 + 80);
    v77.origin.x = v15;
    v77.origin.y = v16;
    v77.size.width = v17;
    v77.size.height = v18;
    MidX = CGRectGetMidX(v77);
    v78.origin.x = v15;
    v78.origin.y = v16;
    v78.size.width = v17;
    v78.size.height = v18;
    MidY = CGRectGetMidY(v78);
    v79.origin.x = v15;
    v79.origin.y = v16;
    v79.size.width = v17;
    v79.size.height = v18;
    *&v21 = CGRectGetWidth(v79);
    v73 = v21;
    *&v21 = v15;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    Height = CGRectGetHeight(*&v21);
    *&v26.f64[0] = v73;
    v26.f64[1] = Height;
    *v14 = MidX;
    *&v14[1] = MidY;
    v14[2] = 0x4069000000000000;
    v14[3] = vcvt_f32_f64(v26);
    v27 = a5 + 40 * v13;
    *(v27 + 1) = 5;
    __asm { FMOV            V0.2S, #1.0 }

    *(v27 + 8) = _D0;
    *(v27 + 32) = *(*(a1 + 40) + 1140);
  }

  v33 = [*(a1 + 40) _titleBackgroundSpriteIndex];
  if (v33 != -1)
  {
    v34 = v33;
    v35 = (a3 + 32 * v33);
    v36 = *(a1 + 88);
    v37 = *(a1 + 96);
    v38 = *(a1 + 104);
    v39 = *(a1 + 112);
    v80.origin.x = v36;
    v80.origin.y = v37;
    v80.size.width = v38;
    v80.size.height = v39;
    v40 = CGRectGetMidX(v80);
    v81.origin.x = v36;
    v81.origin.y = v37;
    v81.size.width = v38;
    v81.size.height = v39;
    v41 = CGRectGetMidY(v81);
    v82.origin.x = v36;
    v82.origin.y = v37;
    v82.size.width = v38;
    v82.size.height = v39;
    Width = CGRectGetWidth(v82);
    v83.origin.x = v36;
    v83.origin.y = v37;
    v83.size.width = v38;
    v83.size.height = v39;
    v42 = CGRectGetHeight(v83);
    v43.f64[0] = Width;
    v43.f64[1] = v42;
    *v35 = v40;
    *&v35[1] = v41;
    v35[2] = 0xBFF0000000000000;
    v35[3] = vcvt_f32_f64(v43);
    v44 = a4 + 160 * v34;
    *(v44 + 68) = *(*(a1 + 40) + 1142);
    [*(a1 + 48) backgroundGradientCornerRadius];
    *&v36 = v45;
    [*(a1 + 48) backgroundGradientCornerRadius];
    *&v46 = v46;
    *(v44 + 36) = LODWORD(v36);
    *(v44 + 40) = LODWORD(v46);
    *(v44 + 44) = 0;
    *(v44 + 48) = 0;
    v47 = (a5 + 40 * v34);
    v47->i8[1] = v10;
    v47[1] = vmul_n_f32(v35[3], *(a1 + 152));
    v47->i8[0] = v11;
  }

  if (*(*(a1 + 40) + 1152) == 1)
  {
    v48 = *(a1 + 88);
    v49 = *(a1 + 96);
    v50 = *(a1 + 104);
    v51 = *(a1 + 112);
    v84.origin.x = v48;
    v84.origin.y = v49;
    v84.size.width = v50;
    v84.size.height = v51;
    v52 = CGRectGetMidX(v84);
    v85.origin.x = v48;
    v85.origin.y = v49;
    v85.size.width = v50;
    v85.size.height = v51;
    v53 = CGRectGetMidY(v85);
    v86.origin.x = v48;
    v86.origin.y = v49;
    v86.size.width = v50;
    v86.size.height = v51;
    v75 = CGRectGetWidth(v86);
    v87.origin.x = v48;
    v87.origin.y = v49;
    v87.size.width = v50;
    v87.size.height = v51;
    v54 = CGRectGetHeight(v87);
    v55.f64[0] = v75;
    v55.f64[1] = v54;
    *(a3 + 64) = v52;
    *(a3 + 72) = v53;
    *(a3 + 80) = 0x4072C00000000000;
    *(a3 + 88) = vcvt_f32_f64(v55);
    *(a4 + 388) = *(*(a1 + 40) + 1142);
    [*(a1 + 48) backgroundGradientCornerRadius];
    *&v48 = v56;
    [*(a1 + 48) backgroundGradientCornerRadius];
    *&v57 = v57;
    *(a4 + 356) = LODWORD(v48);
    *(a4 + 360) = LODWORD(v57);
    *(a4 + 364) = 0;
    *(a5 + 81) = 1;
    *(a5 + 88) = vmul_n_f32(*(a3 + 88), *(a1 + 152));
    *(a5 + 80) = 0;
    if (*(*(a1 + 40) + 1152))
    {
      v58 = *(a1 + 120);
      v59 = *(a1 + 128);
      v60 = *(a1 + 136);
      v61 = *(a1 + 144);
      v88.origin.x = v58;
      v88.origin.y = v59;
      v88.size.width = v60;
      v88.size.height = v61;
      v62 = CGRectGetMidX(v88);
      v89.origin.x = v58;
      v89.origin.y = v59;
      v89.size.width = v60;
      v89.size.height = v61;
      v63 = CGRectGetMidY(v89);
      v90.origin.x = v58;
      v90.origin.y = v59;
      v90.size.width = v60;
      v90.size.height = v61;
      v76 = CGRectGetWidth(v90);
      v91.origin.x = v58;
      v91.origin.y = v59;
      v91.size.width = v60;
      v91.size.height = v61;
      v64 = CGRectGetHeight(v91);
      v65.f64[0] = v76;
      v65.f64[1] = v64;
      *(a3 + 96) = v62;
      *(a3 + 104) = v63;
      *(a3 + 112) = 0xBFF19999A0000000;
      *(a3 + 120) = vcvt_f32_f64(v65);
      *(a4 + 550) = 10;
      *(a5 + 121) = 3;
      *(a5 + 128) = vmul_n_f32(*(a3 + 120), *(a1 + 152));
      *(a5 + 152) = *(*(a1 + 40) + 1138);
      *(a5 + 120) = v11;
      v66 = *(a3 + 112);
      *(a3 + 128) = *(a3 + 96);
      *(a3 + 144) = v66;
      v67 = *(a4 + 560);
      *(a4 + 704) = *(a4 + 544);
      *(a4 + 720) = v67;
      v68 = *(a4 + 528);
      *(a4 + 672) = *(a4 + 512);
      *(a4 + 688) = v68;
      v69 = *(a4 + 624);
      *(a4 + 768) = *(a4 + 608);
      *(a4 + 784) = v69;
      v70 = *(a4 + 592);
      *(a4 + 736) = *(a4 + 576);
      *(a4 + 752) = v70;
      v71 = *(a4 + 496);
      *(a4 + 640) = *(a4 + 480);
      *(a4 + 656) = v71;
      v72 = *(a5 + 136);
      *(a5 + 160) = *(a5 + 120);
      *(a5 + 176) = v72;
      *(a5 + 192) = *(a5 + 152);
    }
  }
}

uint64_t __37__PXPhotosLayout__updateLocalSprites__block_invoke_4(uint64_t result)
{
  v1 = *(result + 40) > 0.0 && *(result + 48) != 0;
  *(*(result + 32) + 1154) = v1;
  return result;
}

- (void)_invalidateLocalSprites
{
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 0x800000;
      return;
    }

LABEL_5:
    if ((self->_postUpdateFlags.updated & 0x800000) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateLocalSprites]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1420 description:{@"invalidating %lu after it already has been updated", 0x800000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 0x800000;
  if (!willPerformUpdate)
  {

    [(PXPhotosLayout *)self setNeedsUpdate];
  }
}

- (void)_updateContentBelowTitle
{
  viewModel = [(PXPhotosLayout *)self viewModel];
  currentLens = [viewModel currentLens];
  ignoresTopSafeAreaInset = [currentLens ignoresTopSafeAreaInset];

  [(PXPhotosLayout *)self headerTitleBaselineToBottom];
  v7 = v6;
  [(PXPhotosLayout *)self visibleRect];
  v9 = v8;
  [(PXPhotosLayout *)self safeAreaInsets];
  if (ignoresTopSafeAreaInset)
  {
    v11 = v7 + v9 + v10 * 2.0 <= 0.0;
  }

  else
  {
    v11 = v9 + v10 <= v7;
  }

  v12 = !v11;
  viewModel2 = [(PXPhotosLayout *)self viewModel];
  if (v12 != [viewModel2 isContentBelowTitle])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__PXPhotosLayout__updateContentBelowTitle__block_invoke;
    v14[3] = &__block_descriptor_33_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
    v15 = v12;
    [viewModel2 performChanges:v14];
  }
}

- (void)_invalidateContentBelowTitle
{
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 0x200000;
      return;
    }

LABEL_5:
    if ((self->_postUpdateFlags.updated & 0x200000) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateContentBelowTitle]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1395 description:{@"invalidating %lu after it already has been updated", 0x200000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 0x200000;
  if (!willPerformUpdate)
  {

    [(PXPhotosLayout *)self setNeedsUpdate];
  }
}

- (void)_updateScrollDetentAnchor
{
  viewModel = [(PXPhotosLayout *)self viewModel];
  lastPreferredScrollDetent = [viewModel lastPreferredScrollDetent];

  if (lastPreferredScrollDetent)
  {
    viewModel2 = [(PXPhotosLayout *)self viewModel];
    lastPreferredScrollDetent2 = [viewModel2 lastPreferredScrollDetent];
    [lastPreferredScrollDetent2 offset];
    PXEdgeInsetsMake();

    [(PXPhotosLayout *)self safeAreaInsets];
    PXEdgeInsetsInvert();
    PXEdgeInsetsAdd();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    rootLayout = [(PXPhotosLayout *)self rootLayout];
    v16 = [rootLayout createAnchorForScrollingToContentEdges:1 padding:{v8, v10, v12, v14}];
    autoInvalidate = [v16 autoInvalidate];

    activeAnchor = [(PXPhotosLayout *)self activeAnchor];

    if (!activeAnchor)
    {
      v18 = [(PXPhotosLayout *)self createAnchorWithAnchor:autoInvalidate];
      autoInvalidate2 = [v18 autoInvalidate];
    }
  }
}

- (void)_invalidateScrollDetentAnchor
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x800;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x800) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateScrollDetentAnchor]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1380 description:{@"invalidating %lu after it already has been updated", 2048}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2048;
  if (!willPerformUpdate)
  {

    [(PXPhotosLayout *)self setNeedsUpdate];
  }
}

- (void)_updateLocalSpritesCount
{
  localNumberOfSprites = [(PXPhotosLayout *)self localNumberOfSprites];
  if (localNumberOfSprites != [(PXPhotosLayout *)self _expectedLocalSpriteCount])
  {
    _expectedLocalSpriteCount = [(PXPhotosLayout *)self _expectedLocalSpriteCount];

    [(PXPhotosLayout *)self applySpriteChangeDetails:0 countAfterChanges:_expectedLocalSpriteCount initialState:&__block_literal_global_85 modifyState:0];
  }
}

void __42__PXPhotosLayout__updateLocalSpritesCount__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (HIDWORD(a2) + a2);
  if (v3 > a2)
  {
    v4 = v3 - a2;
    v5 = *(MEMORY[0x277D73D78] + 96);
    v6 = *(MEMORY[0x277D73D78] + 112);
    v7 = 160 * a2;
    v8 = *(MEMORY[0x277D73D78] + 128);
    v9 = *(MEMORY[0x277D73D78] + 144);
    v10 = *(MEMORY[0x277D73D78] + 32);
    v11 = *(MEMORY[0x277D73D78] + 48);
    v12 = *(MEMORY[0x277D73D78] + 64);
    v13 = *(MEMORY[0x277D73D78] + 80);
    v14 = *MEMORY[0x277D73D78];
    v15 = *(MEMORY[0x277D73D78] + 16);
    do
    {
      v16 = (*(a3 + 24) + v7);
      v16[6] = v5;
      v16[7] = v6;
      v16[8] = v8;
      v16[9] = v9;
      v16[2] = v10;
      v16[3] = v11;
      v16[4] = v12;
      v16[5] = v13;
      *v16 = v14;
      v16[1] = v15;
      v7 += 160;
      --v4;
    }

    while (v4);
  }
}

- (void)_invalidateLocalSpritesCount
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x400;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x400) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateLocalSpritesCount]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1366 description:{@"invalidating %lu after it already has been updated", 1024}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1024;
  if (!willPerformUpdate)
  {

    [(PXPhotosLayout *)self setNeedsUpdate];
  }
}

- (void)_updateSectionedLayoutPlacementOverrides
{
  if (self->_sectionedLayout)
  {
    v42 = *(MEMORY[0x277D73D60] + 16);
    v43 = *MEMORY[0x277D73D60];
    *&v48.a = *MEMORY[0x277D73D60];
    *&v48.c = v42;
    v41 = *(MEMORY[0x277D73D60] + 32);
    *&v48.tx = v41;
    v4 = *(MEMORY[0x277D73D60] + 48);
    placementOverride = [(PXPhotosLayout *)self placementOverride];
    v6 = placementOverride;
    if (placementOverride)
    {
      if (([placementOverride hasGeometry] & 1) == 0)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:1335 description:{@"Invalid parameter not satisfying: %@", @"placementOverride.hasGeometry"}];
      }

      [(PXPhotosLayout *)self originalPlacementRect];
      v39 = v8;
      v40 = v7;
      v10 = v9;
      v12 = v11;
      [v6 rectInLayout:self velocity:0];
      v14 = v13 / v10;
      PXRectGetCenter();
      v16 = v15;
      v18 = v17;
      PXSizeGetAspectRatio();
      *&v47.a = v43;
      *&v47.c = v42;
      *&v47.tx = v41;
      *&v49.a = v43;
      *&v49.c = v42;
      *&v49.tx = v41;
      v20 = v10 / v19;
      CGAffineTransformTranslate(&v47, &v49, v16, v18);
      v4 = v4 + 0.0;
      v48 = v47;
      v49 = v47;
      CGAffineTransformScale(&v47, &v49, v14, v14);
      v48 = v47;
      [(PXPhotosLayout *)self safeAreaInsets];
      v47 = v48;
      v49 = v48;
      CGAffineTransformTranslate(&v47, &v49, v10 * -0.5, v21 + v12 * -0.5);
      v48 = v47;
      [v6 cornerRadius];
      v23 = v22;
      v25 = v24;
      v27 = v39;
      v26 = v40;
      v29 = v28;
      v31 = v30;
    }

    else
    {
      v26 = *MEMORY[0x277CBF390];
      v27 = *(MEMORY[0x277CBF390] + 8);
      v10 = *(MEMORY[0x277CBF390] + 16);
      v20 = *(MEMORY[0x277CBF390] + 24);
      v23 = *MEMORY[0x277D73D18];
      v25 = *(MEMORY[0x277D73D18] + 4);
      v29 = *(MEMORY[0x277D73D18] + 8);
      v31 = *(MEMORY[0x277D73D18] + 12);
    }

    [(PXPhotosSectionedLayout *)self->_sectionedLayout setMaskRect:v26, v27, v10, v20];
    LODWORD(v32) = v23;
    LODWORD(v33) = v25;
    LODWORD(v34) = v29;
    LODWORD(v35) = v31;
    [(PXPhotosSectionedLayout *)self->_sectionedLayout setMaskCornerRadius:v32, v33, v34, v35];
    [(PXPhotosSectionedLayout *)self->_sectionedLayout setPlacementOverride:v6];
    v36 = [(PXPhotosLayout *)self indexOfSublayout:self->_sectionedLayout];
    sublayoutDataStore = [(PXPhotosLayout *)self sublayoutDataStore];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __58__PXPhotosLayout__updateSectionedLayoutPlacementOverrides__block_invoke;
    v44[3] = &__block_descriptor_88_e93_v40__0q8_____CGSize_dd_dS_CGSize_dd____ddd_____CGAffineTransform_dddddd_d_d_16_____v_v_24_B32l;
    v45 = v48;
    v46 = v4;
    [sublayoutDataStore enumerateSublayoutGeometriesInRange:v36 options:1 usingBlock:{0, v44}];
  }
}

__n128 __58__PXPhotosLayout__updateSectionedLayoutPlacementOverrides__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  *(a3 + 120) = *(a1 + 80);
  *(a3 + 104) = v5;
  *(a3 + 88) = v4;
  *(a3 + 72) = result;
  return result;
}

- (void)_invalidateSectionedLayoutPlacementOverrides
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x40;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x40) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateSectionedLayoutPlacementOverrides]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1321 description:{@"invalidating %lu after it already has been updated", 64}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 64;
  if (!willPerformUpdate)
  {

    [(PXPhotosLayout *)self setNeedsUpdate];
  }
}

- (void)_updateSectionedLayout
{
  _shouldShowSectionedLayout = [(PXPhotosLayout *)self _shouldShowSectionedLayout];
  sectionedLayout = self->_sectionedLayout;
  if (_shouldShowSectionedLayout)
  {
    if (sectionedLayout)
    {
      goto LABEL_13;
    }

    v5 = [PXPhotosSectionedLayout alloc];
    viewModel = [(PXPhotosLayout *)self viewModel];
    v7 = [(PXPhotosSectionedLayout *)v5 initWithViewModel:viewModel];
    v8 = self->_sectionedLayout;
    self->_sectionedLayout = v7;

    if (self->_globalHeaderLayout)
    {
      v9 = (self->_topHeaderLayout != 0) + 1;
    }

    else
    {
      v9 = self->_topHeaderLayout != 0;
    }

    if (self->_headerLayout)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = v9;
    }

    [(PXPhotosLayout *)self insertSublayout:self->_sectionedLayout atIndex:v10];
  }

  else
  {
    if (!sectionedLayout)
    {
      return;
    }

    [(PXPhotosSectionedLayout *)sectionedLayout removeFromSuperlayout];
    v11 = self->_sectionedLayout;
    self->_sectionedLayout = 0;
  }

  if (!self->_sectionedLayout)
  {
    return;
  }

LABEL_13:
  sectionHeaderProvider = [(PXPhotosLayout *)self sectionHeaderProvider];
  [(PXPhotosSectionedLayout *)self->_sectionedLayout setHeaderLayoutProvider:sectionHeaderProvider];

  sectionBodyProvider = [(PXPhotosLayout *)self sectionBodyProvider];
  [(PXPhotosSectionedLayout *)self->_sectionedLayout setBodyLayoutProvider:sectionBodyProvider];

  specManager = [(PXPhotosLayout *)self specManager];
  spec = [specManager spec];

  [(PXPhotosSectionedLayout *)self->_sectionedLayout setSpec:spec];
  viewModel2 = [(PXPhotosLayout *)self viewModel];
  if ([viewModel2 aspectFitContent])
  {
    [spec aspectFitContentVerticalPadding];
  }

  else
  {
    [spec squareContentVerticalPadding];
  }

  if (!self->_headerLayout)
  {
    globalHeaderProvider = [(PXPhotosLayout *)self globalHeaderProvider];
    if (globalHeaderProvider || ([(PXPhotosLayout *)self sectionHeaderProvider], (globalHeaderProvider = objc_claimAutoreleasedReturnValue()) != 0) || self->_managesHeaderSprites)
    {
    }

    else if (!self->_managesOnlyLegibilityGradientSprites)
    {
      goto LABEL_27;
    }
  }

  specManager2 = [(PXPhotosLayout *)self specManager];
  gridStyle = [specManager2 gridStyle];

  if (gridStyle >= 3)
  {
    if (gridStyle - 3 >= 2)
    {
      goto LABEL_24;
    }

LABEL_26:
    [(PXPhotosLayout *)self safeAreaInsets];
    goto LABEL_27;
  }

  viewModel3 = [(PXPhotosLayout *)self viewModel];
  currentLens = [viewModel3 currentLens];
  ignoresTopSafeAreaInset = [currentLens ignoresTopSafeAreaInset];

  if (ignoresTopSafeAreaInset)
  {
    goto LABEL_26;
  }

LABEL_24:
  [(PXPhotosLayout *)self titleBackgroundSpriteHeight];
LABEL_27:
  PXEdgeInsetsMake();
  [(PXGStackLayout *)self->_sectionedLayout setPadding:?];
  [(PXGStackLayout *)self->_sectionedLayout setInterlayoutSpacing:0.0];
}

- (void)_invalidateSectionedLayout
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 8;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 8) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateSectionedLayout]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1260 description:{@"invalidating %lu after it already has been updated", 8}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 8;
  if (!willPerformUpdate)
  {

    [(PXPhotosLayout *)self setNeedsUpdate];
  }
}

- (void)_updateFooter
{
  footerLayout = self->_footerLayout;
  footerView = [(PXPhotosLayout *)self footerView];
  if (!footerView)
  {
    goto LABEL_4;
  }

  v5 = footerView;
  viewModel = [(PXPhotosLayout *)self viewModel];
  if ([viewModel contentPrivacyState] == 1)
  {

LABEL_4:
    v7 = self->_footerLayout;
    if (v7)
    {
      [(PXGSingleViewLayout *)v7 removeFromSuperlayout];
      v8 = self->_footerLayout;
      self->_footerLayout = 0;

LABEL_10:
      v10 = self->_footerLayout != 0;
      goto LABEL_11;
    }

    v10 = 0;
    goto LABEL_11;
  }

  currentLens = [viewModel currentLens];
  [currentLens defaultSectionBodyStyle];

  if (!self->_footerLayout)
  {
    v11 = objc_alloc_init(MEMORY[0x277D73CE8]);
    v12 = self->_footerLayout;
    self->_footerLayout = v11;

    [(PXGSingleViewLayout *)self->_footerLayout setSafeAreaEdgeMask:10];
    [(PXPhotosLayout *)self safeAreaInsets];
    PXEdgeInsetsMake();
    [(PXGSingleViewLayout *)self->_footerLayout setPadding:?];
    [(PXPhotosLayout *)self insertSublayout:self->_footerLayout atIndex:[(PXPhotosLayout *)self numberOfSublayouts]];
    goto LABEL_10;
  }

  v10 = 1;
LABEL_11:
  footerView2 = [(PXPhotosLayout *)self footerView];
  [(PXGSingleViewLayout *)self->_footerLayout setContentView:footerView2];

  [(PXNumberAnimator *)self->_headerFooterAlphaAnimator presentationValue];
  [(PXGSingleViewLayout *)self->_footerLayout setAlpha:?];
  if ((((footerLayout == 0) ^ v10) & 1) == 0)
  {
    [(PXPhotosLayout *)self _invalidateSectionedLayout];
    if (v10)
    {
      if (!self->_footerHasAppearedInitially)
      {
        viewModel2 = [(PXPhotosLayout *)self viewModel];
        hasScrollableContent = [viewModel2 hasScrollableContent];

        if ((hasScrollableContent & 1) == 0)
        {
          createAnimation = [(PXGSingleViewLayout *)self->_footerLayout createAnimation];
          v17 = +[PXPhotosGridSettings sharedInstance];
          [v17 defaultAnimationDuration];
          [createAnimation setDuration:?];

          [createAnimation setScope:1];
        }
      }

      self->_footerHasAppearedInitially = 1;
    }
  }

  rootLayout = [(PXPhotosLayout *)self rootLayout];
  v18 = [rootLayout createAnchorForVisibleAreaIgnoringEdges:4];
  autoInvalidate = [v18 autoInvalidate];
}

- (void)_invalidateFooter
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x80;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x80) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateFooter]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1220 description:{@"invalidating %lu after it already has been updated", 128}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 128;
  if (!willPerformUpdate)
  {

    [(PXPhotosLayout *)self setNeedsUpdate];
  }
}

- (void)_updateHeaderFooterAlphaAnimator
{
  viewModel = [(PXPhotosLayout *)self viewModel];
  v4 = ([viewModel hideSurroundingContent] ^ 1);

  [(PXNumberAnimator *)self->_headerFooterAlphaAnimator value];
  if (v5 != v4)
  {
    headerFooterAlphaAnimator = self->_headerFooterAlphaAnimator;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__PXPhotosLayout__updateHeaderFooterAlphaAnimator__block_invoke;
    v7[3] = &__block_descriptor_40_e35_v16__0___PXMutableNumberAnimator__8l;
    *&v7[4] = v4;
    [(PXNumberAnimator *)headerFooterAlphaAnimator performChangesWithDuration:1 curve:v7 changes:0.2];
  }
}

- (void)_updateHeaderAnimated:(BOOL)animated
{
  if (animated)
  {
    createDefaultAnimationForCurrentContext = [(PXPhotosLayout *)self createDefaultAnimationForCurrentContext];
  }

  headerLayout = self->_headerLayout;
  if (headerLayout)
  {
    goto LABEL_4;
  }

  headerView = [(PXPhotosLayout *)self headerView];

  if (headerView)
  {
    v9 = objc_alloc_init(MEMORY[0x277D73CE8]);
    v10 = self->_headerLayout;
    self->_headerLayout = v9;

    [(PXPhotosLayout *)self insertSublayout:self->_headerLayout atIndex:self->_topHeaderLayout != 0];
    rootLayout = [(PXPhotosLayout *)self rootLayout];
    v11 = [rootLayout createAnchorForVisibleAreaIgnoringEdges:1];
    autoInvalidate = [v11 autoInvalidate];

LABEL_8:
    goto LABEL_9;
  }

  if (self->_headerLayout)
  {
LABEL_4:
    headerView2 = [(PXPhotosLayout *)self headerView];

    if (headerView2)
    {
      goto LABEL_9;
    }

    [(PXGSingleViewLayout *)self->_headerLayout removeFromSuperlayout];
    rootLayout = self->_headerLayout;
    self->_headerLayout = 0;
    goto LABEL_8;
  }

LABEL_9:
  headerView3 = [(PXPhotosLayout *)self headerView];
  [(PXGSingleViewLayout *)self->_headerLayout setContentView:headerView3];

  [(PXNumberAnimator *)self->_headerFooterAlphaAnimator presentationValue];
  v15 = v14;
  headerCustomizationModel = [(PXPhotosLayout *)self headerCustomizationModel];

  if (headerCustomizationModel)
  {
    headerCustomizationModel2 = [(PXPhotosLayout *)self headerCustomizationModel];
    [headerCustomizationModel2 alpha];
    v15 = v15 * v18;
  }

  [(PXGSingleViewLayout *)self->_headerLayout setAlpha:v15];
  if ((headerLayout == 0) == (self->_headerLayout != 0))
  {

    [(PXPhotosLayout *)self _invalidateSectionedLayout];
  }
}

- (void)_invalidateHeaderAnimated:(BOOL)animated
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
      v6 = 512;
      if (animated)
      {
        v6 = 256;
      }

LABEL_10:
      p_updateFlags->needsUpdate = needsUpdate | v6;
      return;
    }

LABEL_7:
    v6 = 512;
    if (animated)
    {
      v6 = 256;
    }

    if ((self->_updateFlags.updated & v6) != 0)
    {
      v9 = v6;
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateHeaderAnimated:]"];
      [currentHandler handleFailureInFunction:v11 file:@"PXPhotosLayout.m" lineNumber:1178 description:{@"invalidating %lu after it already has been updated", v9}];

      abort();
    }

    goto LABEL_10;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_7;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  v8 = 512;
  if (animated)
  {
    v8 = 256;
  }

  p_updateFlags->needsUpdate = v8;
  if (!willPerformUpdate)
  {

    [(PXPhotosLayout *)self setNeedsUpdate];
  }
}

- (void)_updateGlobalHeaderLayout
{
  viewModel = [(PXPhotosLayout *)self viewModel];
  globalHeaderProvider = [(PXPhotosLayout *)self globalHeaderProvider];
  v4 = globalHeaderProvider;
  globalHeaderLayout = self->_globalHeaderLayout;
  if (globalHeaderLayout)
  {
    v6 = 1;
  }

  else
  {
    v6 = globalHeaderProvider == 0;
  }

  if (!v6)
  {
    viewModel2 = [(PXPhotosLayout *)self viewModel];
    currentDataSource = [viewModel currentDataSource];
    specManager = [(PXPhotosLayout *)self specManager];
    spec = [specManager spec];
    v11 = [v4 createGlobalHeaderLayoutForPhotosViewModel:viewModel2 dataSource:currentDataSource spec:spec];
    v12 = self->_globalHeaderLayout;
    self->_globalHeaderLayout = v11;

    v13 = self->_globalHeaderLayout;
    if (!v13)
    {
      goto LABEL_9;
    }

    [(PXPhotosLayout *)self insertSublayout:v13 atIndex:0];
    [(PXPhotosLayout *)self _invalidateLocalSpritesAlpha];
    globalHeaderLayout = self->_globalHeaderLayout;
  }

  if (globalHeaderLayout)
  {
    currentDataSource2 = [viewModel currentDataSource];
    specManager2 = [(PXPhotosLayout *)self specManager];
    spec2 = [specManager2 spec];
    [v4 configureGlobalHeaderLayout:globalHeaderLayout dataSource:currentDataSource2 spec:spec2];
  }

LABEL_9:
}

- (void)_invalidateGlobalHeaderLayout
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x10;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x10) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateGlobalHeaderLayout]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1158 description:{@"invalidating %lu after it already has been updated", 16}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 16;
  if (!willPerformUpdate)
  {

    [(PXPhotosLayout *)self setNeedsUpdate];
  }
}

- (void)_updateTopHeaderLayout
{
  if (self->_topHeaderLayout)
  {
    goto LABEL_2;
  }

  if (self->_sectionedLayout && self->_headerProviderRespondsTo.createTopHeaderLayoutForDataSource)
  {
    v21 = 0;
    sectionHeaderProvider = [(PXPhotosLayout *)self sectionHeaderProvider];
    sectionedLayout = self->_sectionedLayout;
    viewModel = [(PXPhotosLayout *)self viewModel];
    currentDataSource = [viewModel currentDataSource];
    specManager = [(PXPhotosLayout *)self specManager];
    spec = [specManager spec];
    v19 = [sectionHeaderProvider createTopHeaderLayoutForSectionedLayout:sectionedLayout dataSource:currentDataSource spec:spec outShouldFloat:&v21];
    topHeaderLayout = self->_topHeaderLayout;
    self->_topHeaderLayout = v19;

    if (self->_topHeaderLayout)
    {
      [PXPhotosLayout insertSublayout:"insertSublayout:atIndex:" atIndex:?];
      [(PXPhotosLayout *)self _invalidateLocalSpritesAlpha];
    }

    self->_topHeaderLayoutShouldFloat = v21;
    if (self->_topHeaderLayout)
    {
LABEL_2:
      viewModel2 = [(PXPhotosLayout *)self viewModel];
      selectionSnapshot = [viewModel2 selectionSnapshot];
      [(PXPhotosSectionedLayoutHeader *)self->_topHeaderLayout setSelectionSnapshot:selectionSnapshot];

      -[PXPhotosSectionedLayoutHeader setIsInSelectMode:](self->_topHeaderLayout, "setIsInSelectMode:", [viewModel2 isInSelectMode]);
      specManager2 = [(PXPhotosLayout *)self specManager];
      spec2 = [specManager2 spec];
      [(PXPhotosSectionedLayoutHeader *)self->_topHeaderLayout setSpec:spec2];

      if (self->_headerProviderRespondsTo.configureTopHeaderLayout)
      {
        sectionHeaderProvider2 = [(PXPhotosLayout *)self sectionHeaderProvider];
        v8 = self->_topHeaderLayout;
        viewModel3 = [(PXPhotosLayout *)self viewModel];
        currentDataSource2 = [viewModel3 currentDataSource];
        specManager3 = [(PXPhotosLayout *)self specManager];
        spec3 = [specManager3 spec];
        [sectionHeaderProvider2 configureTopHeaderLayout:v8 dataSource:currentDataSource2 spec:spec3];
      }
    }
  }
}

- (void)_invalidateTopHeaderLayout
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 0x20;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 0x20) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateTopHeaderLayout]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1131 description:{@"invalidating %lu after it already has been updated", 32}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 32;
  if (!willPerformUpdate)
  {

    [(PXPhotosLayout *)self setNeedsUpdate];
  }
}

- (void)_updateHeaderMeasurements
{
  if (self->_managesHeaderSprites || self->_managesOnlyLegibilityGradientSprites)
  {
    viewModel = [(PXPhotosLayout *)self viewModel];
    if ([viewModel wantsDynamicTitles])
    {
      [(PXPhotosLayout *)self _headerTitleReferenceSize];
    }

    else
    {
      [(PXPhotosLayout *)self _headerTitleSize];
    }

    v5 = *MEMORY[0x277D73D80];
    if (v4 <= 0.0)
    {
      v6 = v4;
    }

    else
    {
      v6 = v4 + *MEMORY[0x277D73D80] + *(MEMORY[0x277D73D80] + 16);
    }

    [(PXPhotosLayout *)self setHeaderTitleSize:?];
    [(PXPhotosLayout *)self _updateHeaderOrigin];
    specManager = [(PXPhotosLayout *)self specManager];
    spec = [specManager spec];

    if (v6 <= 0.0)
    {
      v13 = 0.0;
      [(PXPhotosLayout *)self setHeaderTitleBaselineToBottom:0.0];
      v14 = 0.0;
    }

    else
    {
      headerTitleFont = [spec headerTitleFont];
      [headerTitleFont descender];
      v11 = v6 - v5 + v10;

      [spec headerTitleBottomSpacing];
      v13 = v6 + v12;
      [(PXPhotosLayout *)self setHeaderTitleBaselineToBottom:v6 + v12 - v11];
      v14 = 0.0;
      if (v13 > 0.0)
      {
        isTV = [spec isTV];
        v16 = 0.0;
        if ((isTV & 1) == 0)
        {
          [spec headerTitleTopSpacing];
        }

        v14 = v13 + v16;
      }
    }

    if ([(PXPhotosLayout *)self wantsHeaderInSafeArea])
    {
      [(PXPhotosLayout *)self headerTitleOrigin];
      v18 = v13 + v17;
      [(PXPhotosLayout *)self safeAreaInsets];
      v20 = v18 - v19;
      if (v20 >= 0.0)
      {
        v14 = v20;
      }

      else
      {
        v14 = 0.0;
      }
    }

    [(PXPhotosLayout *)self setTitleBackgroundSpriteHeight:v14];
    navBarStyle = [viewModel navBarStyle];
    v22 = 0.0;
    if (navBarStyle <= 7 && ((1 << navBarStyle) & 0x8E) != 0)
    {
      [(PXPhotosLayout *)self safeAreaInsets];
      v24 = v23;
      [(PXPhotosLayout *)self statusBarHeight];
      v26 = v24 - v25;
      v27 = +[PXPhotosGridSettings sharedInstance];
      [v27 headerGradientHeight];
      v29 = v28 - v26;

      [(PXPhotosLayout *)self titleBackgroundSpriteHeight];
      v22 = fmax(v29 - v30, 0.0);
    }

    [(PXPhotosLayout *)self setTitleBackgroundGradientAdditionalCoverage:v22];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __43__PXPhotosLayout__updateHeaderMeasurements__block_invoke;
    v31[3] = &unk_278298E60;
    v31[4] = self;
    [viewModel performChanges:v31];
  }
}

void __43__PXPhotosLayout__updateHeaderMeasurements__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v8 = a2;
  [v3 titleBackgroundSpriteHeight];
  v5 = v4;
  [*(a1 + 32) safeAreaInsets];
  v7 = v5 - v6;
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  [v8 setHeaderTitleTopInset:v7];
}

- (void)_invalidateHeaderMeasurements
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 4;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 4) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateHeaderMeasurements]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1080 description:{@"invalidating %lu after it already has been updated", 4}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 4;
  if (!willPerformUpdate)
  {

    [(PXPhotosLayout *)self setNeedsUpdate];
  }
}

- (void)_invalidateHeaderMeasurementsForTitleChange
{
  viewModel = [(PXPhotosLayout *)self viewModel];
  wantsDynamicTitles = [viewModel wantsDynamicTitles];

  if ((wantsDynamicTitles & 1) == 0)
  {

    [(PXPhotosLayout *)self _invalidateHeaderMeasurements];
  }
}

- (void)_updateHeaderOrigin
{
  specManager = [(PXPhotosLayout *)self specManager];
  spec = [specManager spec];

  [spec headerTitleLeadingSpacing];
  v5 = v4;
  if ([spec isTV])
  {
    [(PXPhotosLayout *)self visibleRect];
    v6 = 0.0;
    if (v7 >= 0.0)
    {
      [spec headerTitleTopSpacing];
      v6 = v8;
    }
  }

  else if ([(PXPhotosLayout *)self wantsHeaderInSafeArea])
  {
    headerCustomizationModel = [(PXPhotosLayout *)self headerCustomizationModel];
    [headerCustomizationModel verticalVisibilityOffset];
    v11 = v10;
    [headerCustomizationModel verticalFloatingOffset];
    v13 = v11 - v12;
    [(PXPhotosLayout *)self safeAreaInsets];
    v15 = v14 - v13;
    [(PXPhotosLayout *)self statusBarHeight];
    v17 = v16;
    [(PXPhotosLayout *)self statusBarHeight];
    v19 = v17 + (v15 - v18) * 0.5;
    [(PXPhotosLayout *)self _headerTitleLineHeight];
    v21 = v19 - v20 * 0.5;
    [(PXPhotosLayout *)self statusBarHeight];
    if (v21 >= v22)
    {
      v22 = v21;
    }

    v6 = v13 + v22;
  }

  else
  {
    viewModel = [(PXPhotosLayout *)self viewModel];
    v24 = 0.0;
    if ([viewModel navBarStyle] != 5)
    {
      viewModel2 = [(PXPhotosLayout *)self viewModel];
      if ([viewModel2 navBarStyle] != 6 && !-[PXPhotosLayout alignsHeaderTitleWithLayoutMargins](self, "alignsHeaderTitleWithLayoutMargins"))
      {
        [spec headerTitleButtonAlignmentSpacing];
        v24 = v26;
      }
    }

    v5 = v5 + v24;

    [(PXPhotosLayout *)self safeAreaInsets];
    v28 = v27;
    [spec headerTitleTopSpacing];
    v6 = v28 + v29;
  }

  [(PXPhotosLayout *)self headerTitleSize];
  if (v30 <= 0.0)
  {
    v31 = v6;
  }

  else
  {
    v31 = v6 - *MEMORY[0x277D73D80];
  }

  [(PXPhotosLayout *)self setHeaderTitleOrigin:v5, v31];
}

- (CGSize)_headerTitleSize
{
  [(PXPhotosLayout *)self _headerTitleReferenceSize];
  v4 = v3;
  v6 = v5;
  headerTitleDrawingOptions = [(PXPhotosLayout *)self headerTitleDrawingOptions];
  v8 = [(PXPhotosLayout *)self attributedStringForSpriteAtIndex:3 inLayout:self];
  v9 = v8;
  if (v8)
  {
    [v8 boundingRectWithSize:headerTitleDrawingOptions options:0 context:{v4, v6}];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    headerTitle = [(PXPhotosLayout *)self headerTitle];
    headerTitleOverContentAttributes = [(PXPhotosLayout *)self headerTitleOverContentAttributes];
    [headerTitle boundingRectWithSize:headerTitleDrawingOptions options:headerTitleOverContentAttributes attributes:0 context:{v4, v6}];
    v11 = v16;
    v13 = v17;
  }

  v18 = v11;
  v19 = v13;
  result.height = v19;
  result.width = v18;
  return result;
}

- (CGSize)_headerTitleReferenceSize
{
  specManager = [(PXPhotosLayout *)self specManager];
  spec = [specManager spec];

  [spec headerTitleLeadingSpacing];
  v6 = v5;
  [spec headerTitleButtonAlignmentSpacing];
  v8 = v6 + v7;
  [(PXPhotosLayout *)self referenceSize];
  v10 = v9 + v8 * -2.0;
  wantsHeaderInSafeArea = [(PXPhotosLayout *)self wantsHeaderInSafeArea];
  v12 = 1.0;
  if (wantsHeaderInSafeArea)
  {
    v12 = 1.5;
  }

  v13 = v10 / v12;
  [(PXPhotosLayout *)self _headerTitleLineHeight];
  v15 = v14;
  [(PXPhotosLayout *)self _headerSubtitleLineHeight];
  v17 = (v16 + v15 * 2.0) * 1.1;

  v18 = v13;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (double)_headerSubtitleLineHeight
{
  specManager = [(PXPhotosLayout *)self specManager];
  spec = [specManager spec];

  headerSubtitleFont = [spec headerSubtitleFont];
  v6 = headerSubtitleFont;
  if (headerSubtitleFont)
  {
    [headerSubtitleFont lineHeight];
    v8 = v7;
    [v6 leading];
    v10 = v8 + v9;
  }

  else
  {
    [(PXPhotosLayout *)self _headerTitleLineHeight];
    v10 = v11;
  }

  return v10;
}

- (double)_headerTitleLineHeight
{
  specManager = [(PXPhotosLayout *)self specManager];
  spec = [specManager spec];

  headerTitleFont = [spec headerTitleFont];
  [headerTitleFont lineHeight];
  v6 = v5;
  [headerTitleFont leading];
  v8 = v6 + v7;

  return v8;
}

- (void)_updateHeaderAttributes
{
  if (self->_managesHeaderSprites || self->_managesOnlyLegibilityGradientSprites)
  {
    specManager = [(PXPhotosLayout *)self specManager];
    spec = [specManager spec];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    headerTitleFont = [spec headerTitleFont];
    v6 = *MEMORY[0x277D740A8];
    [dictionary setObject:headerTitleFont forKeyedSubscript:*MEMORY[0x277D740A8]];

    headerTitleOverContentColor = [spec headerTitleOverContentColor];
    v8 = *MEMORY[0x277D740C0];
    [dictionary setObject:headerTitleOverContentColor forKeyedSubscript:*MEMORY[0x277D740C0]];

    [(PXPhotosLayout *)self setHeaderTitleOverContentAttributes:dictionary];
    headerTitleOverBackgroundColor = [spec headerTitleOverBackgroundColor];
    [dictionary setObject:headerTitleOverBackgroundColor forKeyedSubscript:v8];

    [(PXPhotosLayout *)self setHeaderTitleOverBackgroundAttributes:dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    headerSubtitleFont = [spec headerSubtitleFont];
    [dictionary2 setObject:headerSubtitleFont forKeyedSubscript:v6];

    headerTitleOverBackgroundColor2 = [spec headerTitleOverBackgroundColor];
    [dictionary2 setObject:headerTitleOverBackgroundColor2 forKeyedSubscript:v8];

    [(PXPhotosLayout *)self setHeaderSubtitleOverBackgroundAttributes:dictionary2];
    headerTitleOverContentColor2 = [spec headerTitleOverContentColor];
    [dictionary2 setObject:headerTitleOverContentColor2 forKeyedSubscript:v8];

    [(PXPhotosLayout *)self setHeaderSubtitleOverContentAttributes:dictionary2];
  }
}

- (void)_invalidateHeaderAttributes
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 2;
      return;
    }

LABEL_5:
    if ((self->_updateFlags.updated & 2) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateHeaderAttributes]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:962 description:{@"invalidating %lu after it already has been updated", 2}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 2;
  if (!willPerformUpdate)
  {

    [(PXPhotosLayout *)self setNeedsUpdate];
  }
}

- (void)didUpdate
{
  v7.receiver = self;
  v7.super_class = PXPhotosLayout;
  [(PXGStackLayout *)&v7 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout didUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXPhotosLayout.m" lineNumber:957 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }

  if (self->_postUpdateFlags.willPerformUpdate)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout didUpdate]"];
    [currentHandler2 handleFailureInFunction:v6 file:@"PXPhotosLayout.m" lineNumber:958 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.willPerformUpdate"}];
  }
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  if (!self->_updateFlags.needsUpdate)
  {
    goto LABEL_62;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [currentHandler handleFailureInFunction:v40 file:@"PXPhotosLayout.m" lineNumber:869 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }

  p_updateFlags->isPerformingUpdate = 1;
  p_updateFlags->updated = 0;
  if (!self->_presentedLayoutState)
  {
    [(PXPhotosLayout *)self _updatePresentedLayoutState];
  }

  rootLayout = [(PXPhotosLayout *)self rootLayout];
  [rootLayout visibleRect];
  [rootLayout safeAreaInsets];
  PXEdgeInsetsInsetRect();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [rootLayout contentSize];

  PXRectWithOriginAndSize();
  v81.origin.x = v7;
  v81.origin.y = v9;
  v81.size.width = v11;
  v81.size.height = v13;
  if (CGRectContainsRect(v80, v81))
  {
    createAnchorForVisibleArea = [rootLayout createAnchorForVisibleArea];
    autoInvalidate = [createAnchorForVisibleArea autoInvalidate];
  }

  if (!p_updateFlags->isPerformingUpdate)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [currentHandler2 handleFailureInFunction:v42 file:@"PXPhotosLayout.m" lineNumber:885 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  needsUpdate = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 1uLL;
  if (needsUpdate)
  {
    p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
    [(PXPhotosLayout *)self _updateHeaderTitle];
  }

  if (!p_updateFlags->isPerformingUpdate)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [currentHandler3 handleFailureInFunction:v44 file:@"PXPhotosLayout.m" lineNumber:888 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v17 = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 2uLL;
  if ((v17 & 2) != 0)
  {
    p_updateFlags->needsUpdate = v17 & 0xFFFFFFFFFFFFFFFDLL;
    [(PXPhotosLayout *)self _updateHeaderAttributes];
  }

  if (!p_updateFlags->isPerformingUpdate)
  {
    currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
    v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [currentHandler4 handleFailureInFunction:v46 file:@"PXPhotosLayout.m" lineNumber:891 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v18 = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 4uLL;
  if ((v18 & 4) != 0)
  {
    p_updateFlags->needsUpdate = v18 & 0xFFFFFFFFFFFFFFFBLL;
    [(PXPhotosLayout *)self _updateHeaderMeasurements];
  }

  if (!p_updateFlags->isPerformingUpdate)
  {
    currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
    v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [currentHandler5 handleFailureInFunction:v48 file:@"PXPhotosLayout.m" lineNumber:894 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v19 = p_updateFlags->needsUpdate;
  updated = p_updateFlags->updated | 0x100;
  p_updateFlags->updated = updated;
  v21 = v19;
  if ((v19 & 0x100) != 0)
  {
    v21 = v19 & 0xFFFFFFFFFFFFFEFFLL;
    p_updateFlags->needsUpdate = v19 & 0xFFFFFFFFFFFFFEFFLL;
  }

  if (!p_updateFlags->isPerformingUpdate)
  {
    currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
    v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [currentHandler6 handleFailureInFunction:v50 file:@"PXPhotosLayout.m" lineNumber:895 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];

    v21 = p_updateFlags->needsUpdate;
    updated = p_updateFlags->updated;
  }

  p_updateFlags->updated = updated | 0x200;
  if ((v21 & 0x200) != 0)
  {
    p_updateFlags->needsUpdate = v21 & 0xFFFFFFFFFFFFFDFFLL;
  }

  else if ((v19 & 0x100) == 0)
  {
    goto LABEL_31;
  }

  [(PXPhotosLayout *)self _updateHeaderAnimated:(v19 >> 8) & 1];
LABEL_31:
  if (!p_updateFlags->isPerformingUpdate)
  {
    currentHandler7 = [MEMORY[0x277CCA890] currentHandler];
    v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [currentHandler7 handleFailureInFunction:v52 file:@"PXPhotosLayout.m" lineNumber:899 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v22 = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 0x80uLL;
  if ((v22 & 0x80) != 0)
  {
    p_updateFlags->needsUpdate = v22 & 0xFFFFFFFFFFFFFF7FLL;
    [(PXPhotosLayout *)self _updateFooter];
  }

  if (!p_updateFlags->isPerformingUpdate)
  {
    currentHandler8 = [MEMORY[0x277CCA890] currentHandler];
    v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [currentHandler8 handleFailureInFunction:v54 file:@"PXPhotosLayout.m" lineNumber:902 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v23 = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 8uLL;
  if ((v23 & 8) != 0)
  {
    p_updateFlags->needsUpdate = v23 & 0xFFFFFFFFFFFFFFF7;
    [(PXPhotosLayout *)self _updateSectionedLayout];
  }

  if (!p_updateFlags->isPerformingUpdate)
  {
    currentHandler9 = [MEMORY[0x277CCA890] currentHandler];
    v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [currentHandler9 handleFailureInFunction:v56 file:@"PXPhotosLayout.m" lineNumber:905 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v24 = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 0x10uLL;
  if ((v24 & 0x10) != 0)
  {
    p_updateFlags->needsUpdate = v24 & 0xFFFFFFFFFFFFFFEFLL;
    [(PXPhotosLayout *)self _updateGlobalHeaderLayout];
  }

  if (!p_updateFlags->isPerformingUpdate)
  {
    currentHandler10 = [MEMORY[0x277CCA890] currentHandler];
    v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [currentHandler10 handleFailureInFunction:v58 file:@"PXPhotosLayout.m" lineNumber:908 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v25 = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 0x20uLL;
  if ((v25 & 0x20) != 0)
  {
    p_updateFlags->needsUpdate = v25 & 0xFFFFFFFFFFFFFFDFLL;
    [(PXPhotosLayout *)self _updateTopHeaderLayout];
  }

  if (!p_updateFlags->isPerformingUpdate)
  {
    currentHandler11 = [MEMORY[0x277CCA890] currentHandler];
    v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [currentHandler11 handleFailureInFunction:v60 file:@"PXPhotosLayout.m" lineNumber:911 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v26 = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 0x40uLL;
  if ((v26 & 0x40) != 0)
  {
    p_updateFlags->needsUpdate = v26 & 0xFFFFFFFFFFFFFFBFLL;
    [(PXPhotosLayout *)self _updateSectionedLayoutPlacementOverrides];
  }

  if (!p_updateFlags->isPerformingUpdate)
  {
    currentHandler12 = [MEMORY[0x277CCA890] currentHandler];
    v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [currentHandler12 handleFailureInFunction:v62 file:@"PXPhotosLayout.m" lineNumber:914 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v27 = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 0x400uLL;
  if ((v27 & 0x400) != 0)
  {
    p_updateFlags->needsUpdate = v27 & 0xFFFFFFFFFFFFFBFFLL;
    [(PXPhotosLayout *)self _updateLocalSpritesCount];
  }

  if (!p_updateFlags->isPerformingUpdate)
  {
    currentHandler13 = [MEMORY[0x277CCA890] currentHandler];
    v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [currentHandler13 handleFailureInFunction:v64 file:@"PXPhotosLayout.m" lineNumber:917 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
  }

  v28 = p_updateFlags->needsUpdate;
  p_updateFlags->updated |= 0x800uLL;
  if ((v28 & 0x800) != 0)
  {
    p_updateFlags->needsUpdate = v28 & 0xFFFFFFFFFFFFF7FFLL;
    [(PXPhotosLayout *)self _updateScrollDetentAnchor];
    v28 = p_updateFlags->needsUpdate;
  }

  p_updateFlags->isPerformingUpdate = 0;
  if (v28)
  {
    currentHandler14 = [MEMORY[0x277CCA890] currentHandler];
    v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [currentHandler14 handleFailureInFunction:v66 file:@"PXPhotosLayout.m" lineNumber:920 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
  }

LABEL_62:
  isUpdatingSublayouts = self->_isUpdatingSublayouts;
  self->_isUpdatingSublayouts = 1;
  v79.receiver = self;
  v79.super_class = PXPhotosLayout;
  [(PXGStackLayout *)&v79 update];
  self->_isUpdatingSublayouts = isUpdatingSublayouts;
  p_postUpdateFlags = &self->_postUpdateFlags;
  self->_postUpdateFlags.willPerformUpdate = 0;
  if (self->_postUpdateFlags.needsUpdate)
  {
    if (self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler15 = [MEMORY[0x277CCA890] currentHandler];
      v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
      [currentHandler15 handleFailureInFunction:v68 file:@"PXPhotosLayout.m" lineNumber:927 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];
    }

    self->_postUpdateFlags.isPerformingUpdate = 1;
    self->_postUpdateFlags.updated = 0;
    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = -1;
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler16 = [MEMORY[0x277CCA890] currentHandler];
      v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
      [currentHandler16 handleFailureInFunction:v70 file:@"PXPhotosLayout.m" lineNumber:928 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v31 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x200000uLL;
    if ((v31 & 0x200000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v31 & 0xFFFFFFFFFFDFFFFFLL;
      [(PXPhotosLayout *)self _updateContentBelowTitle];
    }

    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler17 = [MEMORY[0x277CCA890] currentHandler];
      v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
      [currentHandler17 handleFailureInFunction:v72 file:@"PXPhotosLayout.m" lineNumber:931 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v32 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x400000uLL;
    if ((v32 & 0x400000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v32 & 0xFFFFFFFFFFBFFFFFLL;
      [(PXPhotosLayout *)self _updateHeaderTitle];
    }

    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler18 = [MEMORY[0x277CCA890] currentHandler];
      v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
      [currentHandler18 handleFailureInFunction:v74 file:@"PXPhotosLayout.m" lineNumber:934 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v33 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x800000uLL;
    if ((v33 & 0x800000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v33 & 0xFFFFFFFFFF7FFFFFLL;
      [(PXPhotosLayout *)self _updateLocalSprites];
    }

    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      currentHandler19 = [MEMORY[0x277CCA890] currentHandler];
      v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
      [currentHandler19 handleFailureInFunction:v76 file:@"PXPhotosLayout.m" lineNumber:937 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
    }

    v34 = p_postUpdateFlags->needsUpdate;
    self->_postUpdateFlags.updated |= 0x1000000uLL;
    if ((v34 & 0x1000000) != 0)
    {
      p_postUpdateFlags->needsUpdate = v34 & 0xFFFFFFFFFEFFFFFFLL;
      [(PXPhotosLayout *)self _updateLocalSpritesAlpha];
      v34 = p_postUpdateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    p_updateFlags->updated = 0;
    self->_postUpdateFlags.isPerformingUpdate = 0;
    if (v34)
    {
      currentHandler20 = [MEMORY[0x277CCA890] currentHandler];
      v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
      [currentHandler20 handleFailureInFunction:v78 file:@"PXPhotosLayout.m" lineNumber:940 description:{@"still needing to update %lu after update pass", p_postUpdateFlags->needsUpdate}];
    }
  }

  if (p_updateFlags->needsUpdate)
  {
    currentHandler21 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler21 handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:941 description:@"post-update pass invalidated pre-update flags"];
  }

  pendingAnimations = [(PXPhotosLayout *)self pendingAnimations];
  v36 = [pendingAnimations count];

  if (v36)
  {
    createAnimation = [(PXPhotosLayout *)self createAnimation];
    [createAnimation setCurve:0];
    [createAnimation setDuration:0.0];
    [createAnimation setScope:2];
  }

  [(PXPhotosLayout *)self _updatePresentedLayoutState];
}

- (void)willUpdate
{
  v7.receiver = self;
  v7.super_class = PXPhotosLayout;
  [(PXGStackLayout *)&v7 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout willUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXPhotosLayout.m" lineNumber:864 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }

  self->_postUpdateFlags.willPerformUpdate = 1;
  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout willUpdate]"];
    [currentHandler2 handleFailureInFunction:v6 file:@"PXPhotosLayout.m" lineNumber:865 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];
  }
}

- (void)_updatePresentedLayoutState
{
  createCurrentLayoutState = [(PXPhotosLayout *)self createCurrentLayoutState];
  [(PXPhotosLayout *)self setPresentedLayoutState:createCurrentLayoutState];
}

- (id)createCurrentLayoutState
{
  v3 = objc_alloc_init(PXPhotosLayoutState);
  viewModel = [(PXPhotosLayout *)self viewModel];
  currentLens = [viewModel currentLens];
  [(PXPhotosLayoutState *)v3 setLens:currentLens];

  sectionBodyProvider = [(PXPhotosLayout *)self sectionBodyProvider];
  [(PXPhotosLayoutState *)v3 setBodyProvider:sectionBodyProvider];

  sectionHeaderProvider = [(PXPhotosLayout *)self sectionHeaderProvider];
  [(PXPhotosLayoutState *)v3 setHeaderProvider:sectionHeaderProvider];

  return v3;
}

- (void)setPlacementOverride:(id)override
{
  overrideCopy = override;
  if (self->_placementOverride != overrideCopy)
  {
    v6 = overrideCopy;
    objc_storeStrong(&self->_placementOverride, override);
    [(PXPhotosLayout *)self _invalidateSectionedLayoutPlacementOverrides];
    overrideCopy = v6;
  }
}

- (void)setTitleBackgroundGradientAdditionalCoverage:(double)coverage
{
  if (self->_titleBackgroundGradientAdditionalCoverage != coverage)
  {
    self->_titleBackgroundGradientAdditionalCoverage = coverage;
    [(PXPhotosLayout *)self _invalidateLocalSprites];
  }
}

- (void)setTitleBackgroundSpriteHeight:(double)height
{
  if (self->_titleBackgroundSpriteHeight != height)
  {
    self->_titleBackgroundSpriteHeight = height;
    [(PXPhotosLayout *)self _invalidateSectionedLayout];

    [(PXPhotosLayout *)self _invalidateLocalSprites];
  }
}

- (void)setHeaderTitleBaselineToBottom:(double)bottom
{
  if (self->_headerTitleBaselineToBottom != bottom)
  {
    self->_headerTitleBaselineToBottom = bottom;
    [(PXPhotosLayout *)self _invalidateContentBelowTitle];
  }
}

- (void)setHeaderTitleSize:(CGSize)size
{
  if (self->_headerTitleSize.width != size.width || self->_headerTitleSize.height != size.height)
  {
    self->_headerTitleSize = size;
    [(PXPhotosLayout *)self _invalidateLocalSprites];
  }
}

- (void)setHeaderTitleOrigin:(CGPoint)origin
{
  if (self->_headerTitleOrigin.x != origin.x || self->_headerTitleOrigin.y != origin.y)
  {
    self->_headerTitleOrigin = origin;
    [(PXPhotosLayout *)self _invalidateLocalSprites];
  }
}

- (void)setHeaderSubtitleOverContentAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (self->_headerSubtitleOverContentAttributes != attributesCopy)
  {
    v8 = attributesCopy;
    attributesCopy = [attributesCopy isEqual:?];
    v5 = v8;
    if ((attributesCopy & 1) == 0)
    {
      v6 = [v8 copy];
      headerSubtitleOverContentAttributes = self->_headerSubtitleOverContentAttributes;
      self->_headerSubtitleOverContentAttributes = v6;

      attributesCopy = [(PXPhotosLayout *)self _invalidateLocalSprites];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](attributesCopy, v5);
}

- (void)setHeaderSubtitleOverBackgroundAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (self->_headerSubtitleOverBackgroundAttributes != attributesCopy)
  {
    v8 = attributesCopy;
    attributesCopy = [attributesCopy isEqual:?];
    v5 = v8;
    if ((attributesCopy & 1) == 0)
    {
      v6 = [v8 copy];
      headerSubtitleOverBackgroundAttributes = self->_headerSubtitleOverBackgroundAttributes;
      self->_headerSubtitleOverBackgroundAttributes = v6;

      attributesCopy = [(PXPhotosLayout *)self _invalidateLocalSprites];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](attributesCopy, v5);
}

- (void)setHeaderTitleOverBackgroundAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (self->_headerTitleOverBackgroundAttributes != attributesCopy)
  {
    v8 = attributesCopy;
    attributesCopy = [attributesCopy isEqual:?];
    v5 = v8;
    if ((attributesCopy & 1) == 0)
    {
      v6 = [v8 copy];
      headerTitleOverBackgroundAttributes = self->_headerTitleOverBackgroundAttributes;
      self->_headerTitleOverBackgroundAttributes = v6;

      attributesCopy = [(PXPhotosLayout *)self _invalidateLocalSprites];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](attributesCopy, v5);
}

- (void)setHeaderTitleOverContentAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (self->_headerTitleOverContentAttributes != attributesCopy)
  {
    v8 = attributesCopy;
    attributesCopy = [attributesCopy isEqual:?];
    v5 = v8;
    if ((attributesCopy & 1) == 0)
    {
      v6 = [v8 copy];
      headerTitleOverContentAttributes = self->_headerTitleOverContentAttributes;
      self->_headerTitleOverContentAttributes = v6;

      attributesCopy = [(PXPhotosLayout *)self _invalidateLocalSprites];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](attributesCopy, v5);
}

- (void)setHeaderSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v5 = subtitleCopy;
  if (self->_headerSubtitle != subtitleCopy)
  {
    v8 = subtitleCopy;
    subtitleCopy = [subtitleCopy isEqualToString:?];
    v5 = v8;
    if ((subtitleCopy & 1) == 0)
    {
      v6 = [v8 copy];
      headerSubtitle = self->_headerSubtitle;
      self->_headerSubtitle = v6;

      ++self->_headerTitleVersion;
      [(PXPhotosLayout *)self _invalidateHeaderMeasurementsForTitleChange];
      subtitleCopy = [(PXPhotosLayout *)self _invalidateLocalSprites];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](subtitleCopy, v5);
}

- (void)setHeaderTitle:(id)title
{
  titleCopy = title;
  v5 = titleCopy;
  if (self->_headerTitle != titleCopy)
  {
    v8 = titleCopy;
    titleCopy = [titleCopy isEqualToString:?];
    v5 = v8;
    if ((titleCopy & 1) == 0)
    {
      v6 = [v8 copy];
      headerTitle = self->_headerTitle;
      self->_headerTitle = v6;

      ++self->_headerTitleVersion;
      [(PXPhotosLayout *)self _invalidateHeaderMeasurementsForTitleChange];
      titleCopy = [(PXPhotosLayout *)self _invalidateLocalSprites];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](titleCopy, v5);
}

- (void)_updateHeaderTitle
{
  viewModel = [(PXPhotosLayout *)self viewModel];
  v4 = [viewModel navBarStyle] != 3 && objc_msgSend(viewModel, "navBarStyle") != 4 && objc_msgSend(viewModel, "navBarStyle") != 6 && objc_msgSend(viewModel, "navBarStyle") != 7;
  if (([viewModel wantsDynamicTitles] & 1) == 0 && !v4)
  {
    [(PXPhotosLayout *)self setHeaderTitle:0];
    [(PXPhotosLayout *)self setHeaderSubtitle:0];
    goto LABEL_42;
  }

  title = [viewModel title];
  currentDataSource = [viewModel currentDataSource];
  v40 = currentDataSource;
  if ([viewModel wantsDynamicTitles])
  {
    identifier = [currentDataSource identifier];
    v8 = [PXPhotosGridHeaderUtilities dateTypeForViewModel:viewModel];
    [(PXPhotosLayout *)self visibleRect];
    v9 = [(PXPhotosLayout *)self dateIntervalFutureForContentInRect:v8 type:?];
    v10 = v9[2](v9, identifier);
    if (v10)
    {
      if (_DateIntervalFormatter_onceToken != -1)
      {
        dispatch_once(&_DateIntervalFormatter_onceToken, &__block_literal_global_547);
      }

      v11 = [_DateIntervalFormatter_dateIntervalFormatter stringFromDateInterval:v10];
      v12 = [PXPhotosGridHeaderUtilities browserDateIntervalStringForDateIntervalString:v11 dateType:v8];
      dynamicDateInterval = self->_dynamicDateInterval;
      self->_dynamicDateInterval = v12;
    }

    v39 = v4;
    [(PXPhotosLayout *)self visibleRect];
    v14 = [(PXPhotosLayout *)self locationNamesFutureForContentInRect:?];
    v15 = v14[2](v14, identifier);
    v16 = PXLocalizedComposedString();
    if (v16)
    {
      objc_storeStrong(&self->_dynamicLocationName, v16);
    }

    v17 = self->_dynamicDateInterval;
    v18 = v17;
    if (title)
    {
      localizedSubtitle = v17;
    }

    else
    {
      localizedSubtitle = self->_dynamicLocationName;
      title = v18;
    }

    v4 = v39;
  }

  else
  {
    localizedSubtitle = 0;
  }

  specManager = [(PXPhotosLayout *)self specManager];
  spec = [specManager spec];
  if ([spec allowsEmptyTitles])
  {
    viewModel2 = [(PXPhotosLayout *)self viewModel];
    currentDataSource2 = [viewModel2 currentDataSource];
    containsAnyItems = [currentDataSource2 containsAnyItems];

    if (title || (containsAnyItems & 1) == 0)
    {
      if (localizedSubtitle || !title)
      {
        v26 = v40;
        goto LABEL_33;
      }

      v25 = containsAnyItems ^ 1;
      v26 = v40;
      if (v25)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  else
  {

    if (title)
    {
      v26 = v40;
      if (!localizedSubtitle)
      {
        goto LABEL_32;
      }

      goto LABEL_33;
    }
  }

  v26 = v40;
  containerCollection = [v40 containerCollection];
  title = [containerCollection localizedTitle];

  if (!localizedSubtitle)
  {
LABEL_32:
    containerCollection2 = [v26 containerCollection];
    localizedSubtitle = [containerCollection2 localizedSubtitle];
  }

LABEL_33:
  viewModel3 = [(PXPhotosLayout *)self viewModel];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __36__PXPhotosLayout__updateHeaderTitle__block_invoke;
  v41[3] = &unk_278298C40;
  v42 = title;
  v43 = localizedSubtitle;
  v30 = localizedSubtitle;
  v31 = title;
  [viewModel3 performChanges:v41];

  specManager2 = [(PXPhotosLayout *)self specManager];
  spec2 = [specManager2 spec];
  allowsEmptyTitles = [spec2 allowsEmptyTitles];
  v35 = @" ";
  if ((allowsEmptyTitles & v4) == 0)
  {
    v35 = 0;
  }

  v36 = v35;

  if ([(__CFString *)v31 length]!= 0 && v4)
  {
    v37 = v31;
  }

  else
  {
    v37 = v36;
  }

  [(PXPhotosLayout *)self setHeaderTitle:v37];
  if ([(NSString *)v30 length]!= 0 && v4)
  {
    v38 = v30;
  }

  else
  {
    v38 = v36;
  }

  [(PXPhotosLayout *)self setHeaderSubtitle:v38];

LABEL_42:
}

void __36__PXPhotosLayout__updateHeaderTitle__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 32))
  {
    v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:*(a1 + 32)];
    [v6 setHeaderTitle:v4];
  }

  else
  {
    [v3 setHeaderTitle:0];
  }

  if (*(a1 + 40))
  {
    v5 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:*(a1 + 40)];
    [v6 setHeaderSubtitle:v5];
  }

  else
  {
    [v6 setHeaderSubtitle:0];
  }
}

- (void)_invalidateHeaderTitle
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_updateFlags->needsUpdate = needsUpdate | 1;
      return;
    }

LABEL_5:
    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateHeaderTitle]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:663 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_updateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_updateFlags.willPerformUpdate;
  p_updateFlags->needsUpdate = 1;
  if (!willPerformUpdate)
  {

    [(PXPhotosLayout *)self setNeedsUpdate];
  }
}

- (void)_invalidateDynamicHeaderTitle
{
  p_postUpdateFlags = &self->_postUpdateFlags;
  needsUpdate = self->_postUpdateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
LABEL_6:
      p_postUpdateFlags->needsUpdate = needsUpdate | 0x400000;
      return;
    }

LABEL_5:
    if ((self->_postUpdateFlags.updated & 0x400000) != 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateDynamicHeaderTitle]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:659 description:{@"invalidating %lu after it already has been updated", 0x400000}];

      abort();
    }

    goto LABEL_6;
  }

  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    goto LABEL_5;
  }

  willPerformUpdate = self->_postUpdateFlags.willPerformUpdate;
  p_postUpdateFlags->needsUpdate = 0x400000;
  if (!willPerformUpdate)
  {

    [(PXPhotosLayout *)self setNeedsUpdate];
  }
}

- (void)enumerateScrollablePagesWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  v9 = self->_sectionedLayout;
  [(PXPhotosLayout *)self convertPoint:v9 fromLayout:v7, v8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__PXPhotosLayout_enumerateScrollablePagesWithOptions_usingBlock___block_invoke;
  v13[3] = &unk_278298C18;
  v14 = blockCopy;
  v15 = v10;
  v16 = v11;
  v12 = blockCopy;
  [(PXPhotosSectionedLayout *)v9 enumerateSectionBoundariesWithOptions:options usingBlock:v13];
}

uint64_t __65__PXPhotosLayout_enumerateScrollablePagesWithOptions_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v11 = *(a1 + 32);
  v15 = CGRectOffset(*&a5, *(a1 + 40), *(a1 + 48));
  v12 = *(v11 + 16);

  return v12(v11, a2, a3, a4, v15.origin, *&v15.origin.y, v15.size, *&v15.size.height);
}

- (unsigned)_titleBackgroundSpriteIndex
{
  if (self->_managesHeaderSprites)
  {
    return 1;
  }

  else
  {
    return -!self->_managesOnlyLegibilityGradientSprites;
  }
}

- (unsigned)_globalBackgroundSpriteIndex
{
  if (self->_managesHeaderSprites)
  {
    return 0;
  }

  else
  {
    return -self->_managesOnlyLegibilityGradientSprites;
  }
}

- (unsigned)_expectedLocalSpriteCount
{
  if (self->_managesHeaderSprites)
  {
    return 5;
  }

  else
  {
    return 1;
  }
}

- (BOOL)_shouldShowSectionedLayout
{
  viewModel = [(PXPhotosLayout *)self viewModel];
  v3 = [viewModel contentPrivacyState] != 1;

  return v3;
}

- (CGRect)originalPlacementRect
{
  [(PXPhotosLayout *)self referenceSize];
  v4 = v3;
  v6 = v5;
  [(PXPhotosLayout *)self safeAreaInsets];
  v8 = -v7;
  v9 = 0.0;
  v10 = v4;
  v11 = v6;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v9;
  return result;
}

- (CGPoint)visibleOriginForScrollingToNeighboringSectionInDirection:(unint64_t)direction
{
  v27 = *MEMORY[0x277D85DE8];
  if (direction <= 6 && ((1 << direction) & 0x19) != 0)
  {
    v5 = PXAssertGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v26 = 134217984;
      *&v26[4] = direction;
      _os_log_error_impl(&dword_21ABF3000, v5, OS_LOG_TYPE_ERROR, "unexpected direction %ti", v26, 0xCu);
    }
  }

  v6 = objc_alloc(MEMORY[0x277D3CDB0]);
  [(PXPhotosLayout *)self visibleRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(PXPhotosLayout *)self safeAreaInsets];
  v19 = [v6 initWithSnapBehavior:2 scrollAxis:1 visibleRect:self visibilityInsets:v8 scrollablePageSource:{v10, v12, v14, v15, v16, v17, v18}];
  [v19 setMaximumDecelerationFactor:1.0];
  [v19 setMaximumAccelerationFactor:1.79769313e308];
  [(PXPhotosLayout *)self visibleRect];
  [v19 adjustedTargetVisibleOriginForProposedTargetVisibleOrigin:v26 scrollingVelocity:? decelerationRate:?];
  v21 = v20;
  v23 = v22;

  v24 = v21;
  v25 = v23;
  result.y = v25;
  result.x = v24;
  return result;
}

- (CGPoint)adjustedTargetVisibleOriginForProposedTargetVisibleOrigin:(CGPoint)origin scrollingVelocity:(CGPoint)velocity decelerationRate:(int64_t *)rate
{
  y = velocity.y;
  x = velocity.x;
  v8 = origin.y;
  v9 = origin.x;
  specManager = [(PXPhotosLayout *)self specManager];
  spec = [specManager spec];

  v13 = objc_alloc(MEMORY[0x277D3CDB0]);
  [(PXPhotosLayout *)self visibleRect];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(PXPhotosLayout *)self safeAreaInsets];
  v26 = [v13 initWithSnapBehavior:0 scrollAxis:1 visibleRect:self visibilityInsets:v15 scrollablePageSource:{v17, v19, v21, v22, v23, v24, v25}];
  [spec configureScrollSnapController:v26];
  viewModel = [(PXPhotosLayout *)self viewModel];
  currentLens = [viewModel currentLens];
  allowsScrollSnap = [currentLens allowsScrollSnap];

  if ((allowsScrollSnap & 1) == 0)
  {
    [v26 setSnapBehavior:0];
  }

  [v26 adjustedTargetVisibleOriginForProposedTargetVisibleOrigin:rate scrollingVelocity:v9 decelerationRate:{v8, x, y}];
  v31 = v30;
  v33 = v32;

  v34 = v31;
  v35 = v33;
  result.y = v35;
  result.x = v34;
  return result;
}

- (id)regionOfInterestForAssetReference:(id)reference
{
  v42 = *MEMORY[0x277D85DE8];
  referenceCopy = reference;
  rootLayout = [(PXPhotosLayout *)self rootLayout];
  coordinateSpace = [rootLayout coordinateSpace];
  v7 = [(PXPhotosLayout *)self spriteReferenceForObjectReference:referenceCopy];

  v8 = 0;
  if (coordinateSpace && v7)
  {
    v9 = [rootLayout spriteIndexForSpriteReference:v7];
    if (v9 == -1)
    {
      v8 = 0;
    }

    else
    {
      v21 = *MEMORY[0x277D73D38];
      v10 = *(MEMORY[0x277D73D58] + 16);
      v20[0] = *MEMORY[0x277D73D58];
      v20[1] = v10;
      v11 = *(MEMORY[0x277D73D78] + 112);
      v38 = *(MEMORY[0x277D73D78] + 96);
      v39 = v11;
      v12 = *(MEMORY[0x277D73D78] + 144);
      v40 = *(MEMORY[0x277D73D78] + 128);
      v41 = v12;
      v13 = *(MEMORY[0x277D73D78] + 48);
      v34 = *(MEMORY[0x277D73D78] + 32);
      v35 = v13;
      v14 = *(MEMORY[0x277D73D78] + 80);
      v36 = *(MEMORY[0x277D73D78] + 64);
      v37 = v14;
      v15 = *(MEMORY[0x277D73D78] + 16);
      v32 = *MEMORY[0x277D73D78];
      v33 = v15;
      v16 = *(MEMORY[0x277D73D70] + 16);
      v18[0] = *MEMORY[0x277D73D70];
      v18[1] = v16;
      v19 = *(MEMORY[0x277D73D70] + 32);
      [rootLayout copyLayoutForSpritesInRange:v9 | 0x100000000 entities:&v21 geometries:v20 styles:&v32 infos:v18];
      v28 = v38;
      v29 = v39;
      v30 = v40;
      v31 = v41;
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v27 = v37;
      v22 = v32;
      v23 = v33;
      v8 = PXGRegionOfInterestForSprite();
    }
  }

  return v8;
}

- (void)enumerateItemsGeometriesInRect:(CGRect)rect dataSource:(id)source usingBlock:(id)block
{
  sectionedLayout = self->_sectionedLayout;
  if (sectionedLayout)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    blockCopy = block;
    sourceCopy = source;
    [(PXPhotosLayout *)self convertRect:sectionedLayout toDescendantLayout:x, y, width, height];
    [(PXPhotosSectionedLayout *)self->_sectionedLayout enumerateItemsGeometriesInRect:sourceCopy dataSource:blockCopy usingBlock:?];
  }
}

- (id)topmostSectionHeaderSnapshotInRect:(CGRect)rect
{
  if (self->_sectionedLayout)
  {
    [(PXPhotosLayout *)self convertRect:rect.origin.x toDescendantLayout:rect.origin.y, rect.size.width, rect.size.height];
    v4 = [(PXPhotosSectionedLayout *)self->_sectionedLayout topmostHeaderSnapshotInRect:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)enumerateAssetsInRect:(CGRect)rect enumerator:(id)enumerator
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v23 = *MEMORY[0x277D85DE8];
  enumeratorCopy = enumerator;
  if (self->_sectionedLayout)
  {
    [(PXPhotosLayout *)self convertRect:x toDescendantLayout:y, width, height];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v11 = *MEMORY[0x277CBF398];
    v13 = *(MEMORY[0x277CBF398] + 8);
    v15 = *(MEMORY[0x277CBF398] + 16);
    v17 = *(MEMORY[0x277CBF398] + 24);
  }

  v24.origin.x = v11;
  v24.origin.y = v13;
  v24.size.width = v15;
  v24.size.height = v17;
  if (CGRectIsNull(v24))
  {
    v18 = PXGridZeroGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 138543618;
      v20 = objc_opt_class();
      v21 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_21ABF3000, v18, OS_LOG_TYPE_ERROR, "Failed to enumerate assets for <%{public}@:%p>", &v19, 0x16u);
    }
  }

  else
  {
    [(PXPhotosSectionedLayout *)self->_sectionedLayout enumerateAssetsInRect:enumeratorCopy enumerator:v11, v13, v15, v17];
  }
}

- (void)enumerateAssetCollectionsInRect:(CGRect)rect enumerator:(id)enumerator
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v23 = *MEMORY[0x277D85DE8];
  enumeratorCopy = enumerator;
  if (self->_sectionedLayout)
  {
    [(PXPhotosLayout *)self convertRect:x toDescendantLayout:y, width, height];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v11 = *MEMORY[0x277CBF398];
    v13 = *(MEMORY[0x277CBF398] + 8);
    v15 = *(MEMORY[0x277CBF398] + 16);
    v17 = *(MEMORY[0x277CBF398] + 24);
  }

  v24.origin.x = v11;
  v24.origin.y = v13;
  v24.size.width = v15;
  v24.size.height = v17;
  if (CGRectIsNull(v24))
  {
    v18 = PXGridZeroGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 138543618;
      v20 = objc_opt_class();
      v21 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_21ABF3000, v18, OS_LOG_TYPE_ERROR, "Failed to enumerate asset collections for <%{public}@:%p>", &v19, 0x16u);
    }
  }

  else
  {
    [(PXPhotosSectionedLayout *)self->_sectionedLayout enumerateAssetCollectionsInRect:enumeratorCopy enumerator:v11, v13, v15, v17];
  }
}

- (id)locationNamesFutureForContentInRect:(CGRect)rect
{
  if (self->_sectionedLayout)
  {
    [(PXPhotosLayout *)self convertRect:rect.origin.x toDescendantLayout:rect.origin.y, rect.size.width, rect.size.height];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x277CBF398];
    v7 = *(MEMORY[0x277CBF398] + 8);
    v9 = *(MEMORY[0x277CBF398] + 16);
    v11 = *(MEMORY[0x277CBF398] + 24);
  }

  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  if (CGRectIsNull(v16) || (PXPointIsNull() & 1) != 0 || ([(PXPhotosSectionedLayout *)self->_sectionedLayout locationNamesFutureForContentInRect:v5, v7, v9, v11], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = &__block_literal_global_22;
  }

  v13 = [v12 copy];

  return v13;
}

- (id)dateIntervalFutureForContentInRect:(CGRect)rect type:(unint64_t)type
{
  if (self->_sectionedLayout)
  {
    [(PXPhotosLayout *)self convertRect:rect.origin.x toDescendantLayout:rect.origin.y, rect.size.width, rect.size.height];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x277CBF398];
    v9 = *(MEMORY[0x277CBF398] + 8);
    v11 = *(MEMORY[0x277CBF398] + 16);
    v13 = *(MEMORY[0x277CBF398] + 24);
  }

  v18.origin.x = v7;
  v18.origin.y = v9;
  v18.size.width = v11;
  v18.size.height = v13;
  if (CGRectIsNull(v18) || (PXPointIsNull() & 1) != 0 || ([(PXPhotosSectionedLayout *)self->_sectionedLayout dateIntervalFutureForContentInRect:type type:v7, v9, v11, v13], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = &__block_literal_global_19;
  }

  v15 = [v14 copy];

  return v15;
}

- (id)createAnchorForScrollingToInitialPosition
{
  viewModel = [(PXPhotosLayout *)self viewModel];
  initialNavigationObjectReference = [viewModel initialNavigationObjectReference];

  if (initialNavigationObjectReference)
  {
    initialNavigationScrollPosition = [viewModel initialNavigationScrollPosition];
    if (initialNavigationScrollPosition > 3)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_21AC7D698[initialNavigationScrollPosition];
    }

    navBarStyle = [viewModel navBarStyle];
    if (navBarStyle > 8)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL _IsNavigationBarBackgroundVisibleForNavigationBarStyle(PXPhotosViewNavigationBarStyle)"];
      [currentHandler handleFailureInFunction:v19 file:@"PXPhotosLayout.m" lineNumber:145 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if (((1 << navBarStyle) & 0x19F) != 0)
    {
      v14 = v6 | 0x100;
    }

    else
    {
      v14 = v6;
    }

    rootLayout = [(PXPhotosLayout *)self rootLayout];
    initialNavigationObjectReference2 = [viewModel initialNavigationObjectReference];
    v15 = [rootLayout createAnchorForScrollingSpriteForObjectReference:initialNavigationObjectReference2 toScrollPosition:v14 padding:{*MEMORY[0x277D3CF90], *(MEMORY[0x277D3CF90] + 8), *(MEMORY[0x277D3CF90] + 16), *(MEMORY[0x277D3CF90] + 24)}];
  }

  else
  {
    if ([viewModel contentStartsAtEnd])
    {
      v7 = 4;
    }

    else
    {
      v7 = 1;
    }

    specManager = [(PXPhotosLayout *)self specManager];
    rootLayout = [specManager spec];

    if (![(PXPhotosLayout *)self canScrollToInitialPosition])
    {
      v15 = 0;
      goto LABEL_19;
    }

    detentForInitialScrollPosition = [(PXPhotosLayout *)self detentForInitialScrollPosition];
    initialNavigationObjectReference2 = detentForInitialScrollPosition;
    if (detentForInitialScrollPosition)
    {
      [detentForInitialScrollPosition offset];
      extendedTraitCollection = [rootLayout extendedTraitCollection];
      [extendedTraitCollection safeAreaInsets];
    }

    rootLayout2 = [(PXPhotosLayout *)self rootLayout];
    PXEdgeInsetsMake();
    v15 = [rootLayout2 createAnchorForScrollingToContentEdges:v7 padding:?];
  }

LABEL_19:

  return v15;
}

- (void)setAlignsHeaderTitleWithLayoutMargins:(BOOL)margins
{
  if (self->_alignsHeaderTitleWithLayoutMargins != margins)
  {
    self->_alignsHeaderTitleWithLayoutMargins = margins;
    [(PXPhotosLayout *)self _invalidateHeaderMeasurements];
  }
}

- (void)setWantsHeaderInSafeArea:(BOOL)area
{
  if (self->_wantsHeaderInSafeArea != area)
  {
    self->_wantsHeaderInSafeArea = area;
    [(PXPhotosLayout *)self _invalidateHeaderMeasurements];

    [(PXPhotosLayout *)self _invalidateLocalSpritesAlpha];
  }
}

- (void)setStatusBarHeight:(double)height
{
  if (self->_statusBarHeight != height)
  {
    self->_statusBarHeight = height;
    [(PXPhotosLayout *)self _invalidateHeaderMeasurements];
  }
}

- (void)setSectionBodyProvider:(id)provider
{
  providerCopy = provider;
  if (self->_sectionBodyProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_sectionBodyProvider, provider);
    [(PXPhotosLayout *)self _invalidateSectionedLayout];
    providerCopy = v6;
  }
}

- (void)setGlobalHeaderProvider:(id)provider
{
  providerCopy = provider;
  if (self->_globalHeaderProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_globalHeaderProvider, provider);
    [(PXPhotosLayout *)self _invalidateGlobalHeaderLayout];
    [(PXPhotosLayout *)self _invalidateTopHeaderLayout];
    [(PXPhotosLayout *)self _invalidateSectionedLayout];
    providerCopy = v6;
  }
}

- (void)setSectionHeaderProvider:(id)provider
{
  providerCopy = provider;
  if (self->_sectionHeaderProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_sectionHeaderProvider, provider);
    self->_headerProviderRespondsTo.createTopHeaderLayoutForDataSource = objc_opt_respondsToSelector() & 1;
    self->_headerProviderRespondsTo.topHeaderLayoutDidChangeDataSource = objc_opt_respondsToSelector() & 1;
    self->_headerProviderRespondsTo.configureTopHeaderLayout = objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      [(PXPhotosSectionHeaderLayoutProvider *)v6 setTopHeaderInvalidationDelegate:self];
    }

    [(PXPhotosLayout *)self _invalidateTopHeaderLayout];
    [(PXPhotosLayout *)self _invalidateSectionedLayout];
    providerCopy = v6;
  }
}

- (PXFloatRange)bottomCollapsibleArea
{
  if (self->_footerLayout)
  {
    v7 = 0u;
    v8 = 0u;
    v3 = [(PXPhotosLayout *)self sublayoutDataStore:0];
    v4 = v3;
    if (v3)
    {
      [v3 geometryForSublayout:self->_footerLayout];
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    v5 = *(&v8 + 1);
    v6 = *(&v7 + 1);
  }

  else
  {
    v5 = 0.0;
    v6 = 0.0;
  }

  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (PXFloatRange)topCollapsibleArea
{
  viewModel = [(PXPhotosLayout *)self viewModel];
  currentLens = [viewModel currentLens];
  ignoresTopSafeAreaInset = [currentLens ignoresTopSafeAreaInset];

  v6 = 0.0;
  v7 = 0.0;
  if ((ignoresTopSafeAreaInset & 1) == 0)
  {
    [(PXPhotosLayout *)self safeAreaInsets];
    v9 = v8;
    v6 = -v8;
    [(PXPhotosLayout *)self titleBackgroundSpriteHeight];
    v7 = v9 + v10;
  }

  v11 = v6;
  result.var1 = v7;
  result.var0 = v11;
  return result;
}

- (void)setFooterView:(id)view
{
  viewCopy = view;
  if (self->_footerView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_footerView, view);
    [(PXPhotosLayout *)self _performPreUpdateInvalidationDeferredIfNeeded:&__block_literal_global_7571];
    viewCopy = v6;
  }
}

- (void)setHeaderView:(id)view animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  if (self->_headerView != viewCopy)
  {
    v8 = viewCopy;
    objc_storeStrong(&self->_headerView, view);
    [(PXPhotosLayout *)self _invalidateHeaderAnimated:animatedCopy];
    viewCopy = v8;
  }
}

- (PXPhotosLayout)initWithViewModel:(id)model specManager:(id)manager overlayController:(id)controller
{
  modelCopy = model;
  managerCopy = manager;
  controllerCopy = controller;
  v32.receiver = self;
  v32.super_class = PXPhotosLayout;
  v12 = [(PXGStackLayout *)&v32 init];
  if (v12)
  {
    if ([modelCopy wantsSingleRowScrollingLayout])
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    [(PXGStackLayout *)v12 setAxis:v13];
    axGroup = [(PXPhotosLayout *)v12 axGroup];
    [axGroup setAxRole:3];

    axGroup2 = [(PXPhotosLayout *)v12 axGroup];
    [axGroup2 setAxIdentifier:@"photos_layout"];

    [(PXPhotosLayout *)v12 setContentSource:v12];
    [(PXGStackLayout *)v12 setSublayoutAlignmentDelegate:v12];
    objc_storeStrong(&v12->_viewModel, model);
    [(PXPhotosViewModel *)v12->_viewModel registerChangeObserver:v12 context:ViewModelObservationContext_7497];
    objc_storeStrong(&v12->_specManager, manager);
    [(PXPhotosLayoutSpecManager *)v12->_specManager registerChangeObserver:v12 context:SpecManagerObservationContext];
    LODWORD(v16) = 1.0;
    v12->_titleBackgroundGradientResizableCapInsetsIndex = [(PXPhotosLayout *)v12 addResizableCapInsets:0.0, 0.0, v16, 0.0];
    objc_storeStrong(&v12->_overlayController, controller);
    v17 = objc_alloc_init(PXPhotosLayoutDefaultAnimationProvider);
    animationProvider = v12->_animationProvider;
    v12->_animationProvider = v17;

    v19 = objc_alloc(MEMORY[0x277D3CD80]);
    requiresLightTopBars = [modelCopy requiresLightTopBars];
    spec = [(PXFeatureSpecManager *)v12->_specManager spec];
    v22 = 0.0;
    if (requiresLightTopBars)
    {
      v22 = 1.0;
    }

    v23 = [v19 initWithValue:v22];
    alternateAppearanceMixAnimator = v12->_alternateAppearanceMixAnimator;
    v12->_alternateAppearanceMixAnimator = v23;

    [(PXNumberAnimator *)v12->_alternateAppearanceMixAnimator registerChangeObserver:v12 context:AlternateAppearanceMixAnimatorObservationContext];
    [(PXNumberAnimator *)v12->_alternateAppearanceMixAnimator setLabel:@"alternateAppearanceMixAnimator"];
    navBarStyle = [modelCopy navBarStyle];
    LOBYTE(v26) = 0;
    if (navBarStyle <= 6)
    {
      if (((1 << navBarStyle) & 0x76) != 0)
      {
        LOBYTE(v26) = 1;
      }

      else if (navBarStyle == 3)
      {
        v26 = MEMORY[0x21CEE04B0]() ^ 1;
      }
    }

    v12->_managesHeaderSprites = v26;
    v12->_managesOnlyLegibilityGradientSprites = [modelCopy navBarStyle] == 7;
    v27 = [objc_alloc(MEMORY[0x277D3CD80]) initWithValue:1.0];
    headerFooterAlphaAnimator = v12->_headerFooterAlphaAnimator;
    v12->_headerFooterAlphaAnimator = v27;

    [(PXNumberAnimator *)v12->_headerFooterAlphaAnimator registerChangeObserver:v12 context:HeaderFooterAlphaAnimatorObservationContext];
    [(PXNumberAnimator *)v12->_headerFooterAlphaAnimator setLabel:@"headerFooterAlphaAnimator"];
    v12->_headerTitleDrawingOptions = 35;
    headerCustomizationModel = [managerCopy headerCustomizationModel];
    headerCustomizationModel = v12->_headerCustomizationModel;
    v12->_headerCustomizationModel = headerCustomizationModel;

    [(PXPhotosHeaderCustomizationModel *)v12->_headerCustomizationModel registerChangeObserver:v12 context:HeaderCustomizationModelObservationContext];
    [(PXPhotosLayout *)v12 _invalidateHeaderTitle];
    [(PXPhotosLayout *)v12 _invalidateHeaderAttributes];
    [(PXPhotosLayout *)v12 _invalidateHeaderMeasurements];
    [(PXPhotosLayout *)v12 _invalidateHeaderAnimated:0];
    [(PXPhotosLayout *)v12 _invalidateSectionedLayout];
    [(PXPhotosLayout *)v12 _invalidateSectionedLayoutPlacementOverrides];
    [(PXPhotosLayout *)v12 _invalidateFooter];
    [(PXPhotosLayout *)v12 _invalidateLocalSpritesCount];
    [(PXPhotosLayout *)v12 _invalidateLocalSprites];
    [(PXPhotosLayout *)v12 _invalidateLocalSpritesAlpha];
  }

  return v12;
}

@end