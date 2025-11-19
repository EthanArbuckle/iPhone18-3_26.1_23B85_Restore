@interface PXPhotosLayout
- (BOOL)_shouldShowSectionedLayout;
- (BOOL)canScrollToInitialPosition;
- (BOOL)stackLayout:(id)a3 shouldAlignSublayoutToVisibleTopEdge:(id)a4;
- (CGPoint)adjustedTargetVisibleOriginForProposedTargetVisibleOrigin:(CGPoint)a3 scrollingVelocity:(CGPoint)a4 decelerationRate:(int64_t *)a5;
- (CGPoint)headerTitleOrigin;
- (CGPoint)visibleOriginForScrollingToNeighboringSectionInDirection:(unint64_t)a3;
- (CGRect)originalPlacementRect;
- (CGSize)_headerTitleReferenceSize;
- (CGSize)_headerTitleSize;
- (CGSize)contentSizeForProposedContentSize:(CGSize)a3;
- (CGSize)headerTitleSize;
- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (PXFloatRange)bottomCollapsibleArea;
- (PXFloatRange)topCollapsibleArea;
- (PXPhotosLayout)initWithViewModel:(id)a3 specManager:(id)a4 overlayController:(id)a5;
- (PXPhotosLayoutDelegate)delegate;
- (PXScrollDetent)detentForInitialScrollPosition;
- (UIEdgeInsets)additionalSafeAreaInsetsForSublayout:(id)a3;
- (UIEdgeInsets)paddingForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (double)_headerSubtitleLineHeight;
- (double)_headerTitleLineHeight;
- (id)attributedStringForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)axSpriteIndexes;
- (id)colorAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)createAnchorForScrollingToInitialPosition;
- (id)createCurrentLayoutState;
- (id)createDefaultAnimationForCurrentContext;
- (id)dateIntervalFutureForContentInRect:(CGRect)a3 type:(unint64_t)a4;
- (id)hitTestResultForSpriteIndex:(unsigned int)a3;
- (id)imageConfigurationAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)itemPlacementControllerForItemReference:(id)a3;
- (id)locationNamesFutureForContentInRect:(CGRect)a3;
- (id)placementInContext:(id)a3 forItemReference:(id)a4;
- (id)regionOfInterestForAssetReference:(id)a3;
- (id)stringAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)stringAttributesAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (id)topmostSectionHeaderSnapshotInRect:(CGRect)a3;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4;
- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5;
- (unint64_t)fullyVisibleEdgesWithDefaultTolerance;
- (unsigned)_expectedLocalSpriteCount;
- (unsigned)_globalBackgroundSpriteIndex;
- (unsigned)_titleBackgroundSpriteIndex;
- (void)_informTopHeaderLayoutAboutDataSourceChange;
- (void)_invalidateContentBelowTitle;
- (void)_invalidateDynamicHeaderTitle;
- (void)_invalidateFooter;
- (void)_invalidateGlobalHeaderLayout;
- (void)_invalidateHeaderAnimated:(BOOL)a3;
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
- (void)_performPreUpdateInvalidationDeferredIfNeeded:(id)a3;
- (void)_updateContentBelowTitle;
- (void)_updateFooter;
- (void)_updateGlobalHeaderLayout;
- (void)_updateHeaderAnimated:(BOOL)a3;
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
- (void)adjustCopiedSprites:(id *)a3;
- (void)didUpdate;
- (void)displayScaleDidChange;
- (void)enumerateAssetCollectionsInRect:(CGRect)a3 enumerator:(id)a4;
- (void)enumerateAssetsInRect:(CGRect)a3 enumerator:(id)a4;
- (void)enumerateItemsGeometriesInRect:(CGRect)a3 dataSource:(id)a4 usingBlock:(id)a5;
- (void)enumerateScrollablePagesWithOptions:(unint64_t)a3 usingBlock:(id)a4;
- (void)hideSpritesForObjectReferences:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)referenceSizeDidChange;
- (void)safeAreaInsetsDidChange;
- (void)setAlignsHeaderTitleWithLayoutMargins:(BOOL)a3;
- (void)setFooterView:(id)a3;
- (void)setGlobalHeaderProvider:(id)a3;
- (void)setHeaderSubtitle:(id)a3;
- (void)setHeaderSubtitleOverBackgroundAttributes:(id)a3;
- (void)setHeaderSubtitleOverContentAttributes:(id)a3;
- (void)setHeaderTitle:(id)a3;
- (void)setHeaderTitleBaselineToBottom:(double)a3;
- (void)setHeaderTitleOrigin:(CGPoint)a3;
- (void)setHeaderTitleOverBackgroundAttributes:(id)a3;
- (void)setHeaderTitleOverContentAttributes:(id)a3;
- (void)setHeaderTitleSize:(CGSize)a3;
- (void)setHeaderView:(id)a3 animated:(BOOL)a4;
- (void)setPlacementOverride:(id)a3;
- (void)setPlacementOverride:(id)a3 forItemReference:(id)a4;
- (void)setSectionBodyProvider:(id)a3;
- (void)setSectionHeaderProvider:(id)a3;
- (void)setStatusBarHeight:(double)a3;
- (void)setTitleBackgroundGradientAdditionalCoverage:(double)a3;
- (void)setTitleBackgroundSpriteHeight:(double)a3;
- (void)setWantsHeaderInSafeArea:(BOOL)a3;
- (void)update;
- (void)visibleRectDidChange;
- (void)willUpdate;
@end

@implementation PXPhotosLayout

- (PXScrollDetent)detentForInitialScrollPosition
{
  v2 = self;
  v3 = sub_21AC112B0();

  return v3;
}

- (BOOL)canScrollToInitialPosition
{
  v2 = self;
  v3 = sub_21AC1139C();

  return v3 & 1;
}

- (CGSize)contentSizeForProposedContentSize:(CGSize)a3
{
  width = a3.width;
  v4 = self;
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

- (BOOL)stackLayout:(id)a3 shouldAlignSublayoutToVisibleTopEdge:(id)a4
{
  topHeaderLayout = self->_topHeaderLayout;
  if (topHeaderLayout)
  {
    v5 = topHeaderLayout == a4;
  }

  else
  {
    v5 = 0;
  }

  return v5 && self->_topHeaderLayoutShouldFloat;
}

- (id)colorAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  v8 = [(PXPhotosLayout *)self _globalBackgroundSpriteIndex];
  if (v8 == -1 || v8 != a3)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:2143 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v9 = [(PXPhotosLayout *)self specManager];
  v10 = [v9 spec];
  v11 = [v10 contentBackgroundColor];

  return v11;
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  v8 = [(PXPhotosLayout *)self _titleBackgroundSpriteIndex];
  if (v8 == -1 || v8 != a3)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    v18 = v17;
    v19 = a2;
    v20 = self;
    v21 = 2132;
    goto LABEL_15;
  }

  v9 = [(PXPhotosLayout *)self viewModel];
  v10 = [v9 navBarStyle];

  if (v10 <= 8)
  {
    if (((1 << v10) & 0x60) != 0)
    {
      v13 = [(PXPhotosLayout *)self specManager];
      v15 = [v13 spec];
      v14 = [v15 visualEffectViewGroupName];

      goto LABEL_8;
    }

    if (((1 << v10) & 0x84) != 0)
    {
      v11 = [(PXPhotosLayout *)self specManager];
      v12 = [v11 spec];
      v13 = [v12 backgroundGradientImageConfiguration];

      v14 = [[PXTitleLegibilityDimmingViewConfiguration alloc] initWithGradientImageConfiguration:v13];
LABEL_8:

      goto LABEL_9;
    }

    v17 = [MEMORY[0x277CCA890] currentHandler];
    v18 = v17;
    v19 = a2;
    v20 = self;
    v21 = 2115;
LABEL_15:
    [v17 handleFailureInMethod:v19 object:v20 file:@"PXPhotosLayout.m" lineNumber:v21 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (Class)viewClassForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  v8 = [(PXPhotosLayout *)self _titleBackgroundSpriteIndex];
  if (v8 == -1 || v8 != a3)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = v12;
    v14 = a2;
    v15 = self;
    v16 = 2101;
    goto LABEL_13;
  }

  v9 = [(PXPhotosLayout *)self viewModel];
  v10 = [v9 navBarStyle];

  if (v10 <= 8)
  {
    if (((1 << v10) & 0x60) != 0 || ((1 << v10) & 0x84) != 0)
    {
      self = objc_opt_class();
      goto LABEL_7;
    }

    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = v12;
    v14 = a2;
    v15 = self;
    v16 = 2084;
LABEL_13:
    [v12 handleFailureInMethod:v14 object:v15 file:@"PXPhotosLayout.m" lineNumber:v16 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_7:

  return self;
}

- (id)axSpriteIndexes
{
  if (self->_managesHeaderSprites && [(PXPhotosLayout *)self localNumberOfSprites])
  {
    v2 = [MEMORY[0x277CCAA78] indexSetWithIndex:3];
  }

  else
  {
    v2 = [MEMORY[0x277CCAA78] indexSet];
  }

  return v2;
}

- (id)imageConfigurationAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  v8 = [(PXPhotosLayout *)self _titleBackgroundSpriteIndex];
  if (v8 == -1 || v8 != a3)
  {
    if (a3 != 2)
    {
      v14 = [MEMORY[0x277CCA890] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:2057 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v9 = [(PXPhotosLayout *)self specManager];
    v10 = [v9 spec];
    v11 = [v10 behindContentBackgroundGradientImageConfiguration];
  }

  else
  {
    v9 = [(PXPhotosLayout *)self specManager];
    v10 = [v9 spec];
    v11 = [v10 backgroundGradientImageConfiguration];
  }

  v12 = v11;

  return v12;
}

- (id)attributedStringForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  v8 = [(PXPhotosLayout *)self headerTitle];
  v9 = [(PXPhotosLayout *)self headerSubtitle];
  v10 = v9;
  v11 = 0;
  if (v8 && v9)
  {
    if (a3 == 3)
    {
      v12 = [(PXPhotosLayout *)self headerTitleOverContentAttributes];
      v13 = [(PXPhotosLayout *)self headerSubtitleOverContentAttributes];
    }

    else
    {
      if (a3 != 4)
      {
        v20 = [MEMORY[0x277CCA890] currentHandler];
        [v20 handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:2038 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      v12 = [(PXPhotosLayout *)self headerTitleOverBackgroundAttributes];
      v13 = [(PXPhotosLayout *)self headerSubtitleOverBackgroundAttributes];
    }

    v14 = v13;
    v11 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v8 attributes:v12];
    v15 = objc_alloc(MEMORY[0x277CCA898]);
    v16 = [(PXPhotosLayout *)self headerSubtitle];
    v17 = [@"\n" stringByAppendingString:v16];
    v18 = [v15 initWithString:v17 attributes:v14];

    [v11 appendAttributedString:v18];
  }

  return v11;
}

- (UIEdgeInsets)paddingForSpriteAtIndex:(unsigned int)a3 inLayout:(id)a4
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

- (id)stringAttributesAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (a3 == 4)
  {
    v8 = [(PXPhotosLayout *)self headerTitleOverBackgroundAttributes];
  }

  else
  {
    if (a3 != 3)
    {
      v11 = [MEMORY[0x277CCA890] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:2006 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v8 = [(PXPhotosLayout *)self headerTitleOverContentAttributes];
  }

  v9 = v8;

  return v9;
}

- (id)stringAtIndex:(unsigned int)a3 inLayout:(id)a4
{
  v7 = a4;
  if (a3 - 3 > 1)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:1996 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v8 = v7;
  v9 = [(PXPhotosLayout *)self headerTitle];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_282C2F4D0;
  }

  v12 = v11;

  return v11;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v9 = a3;
  v10 = v9;
  if (ViewModelObservationContext_7497 == a5)
  {
    if (a4)
    {
      v11 = [(PXPhotosLayout *)self viewModel];
      v12 = [v11 wantsDynamicTitles];

      if (v12)
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
      if ((a4 & 0x4000) == 0)
      {
LABEL_12:
        if ((a4 & 4) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_48;
      }
    }

    else if ((a4 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    [(PXPhotosLayout *)self _invalidateSectionedLayout];
    if ((a4 & 4) == 0)
    {
LABEL_13:
      if ((a4 & 0x100000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_49;
    }

LABEL_48:
    [(PXPhotosLayout *)self _invalidateTopHeaderLayout];
    if ((a4 & 0x100000000) == 0)
    {
LABEL_14:
      if ((a4 & 0x800000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_50;
    }

LABEL_49:
    [(PXGStackLayout *)self invalidateAdditionalSafeAreaInsets];
    [(PXPhotosLayout *)self _invalidateLocalSprites];
    [(PXPhotosLayout *)self _invalidateLocalSpritesAlpha];
    if ((a4 & 0x800000000) == 0)
    {
LABEL_15:
      if ((a4 & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_51;
    }

LABEL_50:
    [(PXPhotosLayout *)self _invalidateLocalSpritesAlpha];
    if ((a4 & 0x40) == 0)
    {
LABEL_16:
      if ((a4 & 0x20000000) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_51:
    [(PXPhotosLayout *)self clearLastVisibleAreaAnchoringInformation];
    if ((a4 & 0x20000000) == 0)
    {
LABEL_18:
      if ((a4 & 0x80002000) != 0)
      {
        [(PXPhotosLayout *)self _invalidateLocalSpritesAlpha];
      }

      if ((a4 & 0x1001000) != 0)
      {
        [(PXPhotosLayout *)self _invalidateLocalSprites];
      }

      if ((a4 & 0x400000000) != 0)
      {
        v13 = [(PXPhotosLayout *)self createFenceWithType:3];
        [v13 setTimeout:0.5];

        [(PXPhotosLayout *)self _invalidateFooter];
        [(PXPhotosLayout *)self _invalidateSectionedLayout];
        if ((a4 & 0x100000000000) == 0)
        {
LABEL_24:
          if ((a4 & 0x20000000000000) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_34;
        }
      }

      else if ((a4 & 0x100000000000) == 0)
      {
        goto LABEL_24;
      }

      [(PXPhotosLayout *)self _invalidateFooter];
      [(PXPhotosLayout *)self _invalidateSectionedLayout];
      [(PXPhotosLayout *)self _invalidateScrollDetentAnchor];
      [(PXPhotosLayout *)self _invalidateContentBelowTitle];
      if ((a4 & 0x20000000000000) == 0)
      {
LABEL_25:
        if ((a4 & 0x40000000000000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_35;
      }

LABEL_34:
      [(PXPhotosLayout *)self _invalidateLocalSpritesAlpha];
      if ((a4 & 0x40000000000000) == 0)
      {
LABEL_26:
        if ((a4 & 0x400000000000) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_36;
      }

LABEL_35:
      [(PXPhotosLayout *)self _invalidateLocalSprites];
      if ((a4 & 0x400000000000) == 0)
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

  if (SpecManagerObservationContext == a5)
  {
    if (a4)
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

  if (AlternateAppearanceMixAnimatorObservationContext == a5)
  {
    if ((a4 & 2) == 0)
    {
      goto LABEL_62;
    }

    v14 = v9;
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_40;
      }

      v15 = [MEMORY[0x277CCA890] currentHandler];
      v18 = objc_opt_class();
      v17 = NSStringFromClass(v18);
      v19 = [v14 px_descriptionForAssertionMessage];
      [v15 handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:1959 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v17, v19}];
    }

    else
    {
      v15 = [MEMORY[0x277CCA890] currentHandler];
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      [v15 handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:1959 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v17}];
    }

LABEL_40:
    if (([v14 isBeingMutated] & 1) == 0)
    {
      [(PXPhotosLayout *)self _invalidateLocalSpritesAlpha];
    }

    goto LABEL_58;
  }

  if (HeaderFooterAlphaAnimatorObservationContext == a5)
  {
    if ((a4 & 2) == 0)
    {
      goto LABEL_62;
    }

    v14 = v9;
    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_56;
      }

      v20 = [MEMORY[0x277CCA890] currentHandler];
      v23 = objc_opt_class();
      v22 = NSStringFromClass(v23);
      v24 = [v14 px_descriptionForAssertionMessage];
      [v20 handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:1966 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"observable", v22, v24}];
    }

    else
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      [v20 handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:1966 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"observable", v22}];
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

  if (HeaderCustomizationModelObservationContext != a5)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:1986 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (a4)
  {
    [(PXGStackLayout *)self invalidateAdditionalSafeAreaInsets];
    [(PXPhotosLayout *)self _invalidateHeaderOrigin];
    if ((a4 & 2) == 0)
    {
LABEL_8:
      if ((a4 & 4) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }
  }

  else if ((a4 & 2) == 0)
  {
    goto LABEL_8;
  }

  [(PXPhotosLayout *)self _invalidateLocalSprites];
  if ((a4 & 4) != 0)
  {
LABEL_61:
    [(PXPhotosLayout *)self _invalidateHeaderAnimated:0];
    [(PXPhotosLayout *)self _invalidateLocalSpritesAlpha];
  }

LABEL_62:
}

- (void)_performPreUpdateInvalidationDeferredIfNeeded:(id)a3
{
  v4 = a3;
  v5 = v4;
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
    (*(v4 + 2))(v4, self);
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
    v6 = [(PXPhotosLayout *)self sectionHeaderProvider];
    topHeaderLayout = self->_topHeaderLayout;
    v4 = [(PXPhotosLayout *)self viewModel];
    v5 = [v4 currentDataSource];
    [v6 topHeaderLayout:topHeaderLayout didChangeDataSource:v5];
  }
}

- (void)setPlacementOverride:(id)a3 forItemReference:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PXPhotosLayout *)self viewModel];
  v9 = [v8 currentDataSource];
  v10 = [v9 containerCollection];
  v11 = [v7 isEqual:v10];

  if (v11)
  {
    if ([v6 hasGeometry])
    {
      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    [(PXPhotosLayout *)self setPlacementOverride:v12];
    [(PXPhotosLayout *)self setDetailedPlacementOverride:v6 forItemReference:v7];
  }

  else
  {
    v13 = PXAssertGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_error_impl(&dword_21ABF3000, v13, OS_LOG_TYPE_ERROR, "unexpected itemReference %@", &v14, 0xCu);
    }
  }
}

- (id)placementInContext:(id)a3 forItemReference:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PXPhotosLayout *)self viewModel];
  v9 = [v8 currentDataSource];
  v10 = [v9 containerCollection];
  v11 = [v7 isEqual:v10];

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277D73CB0]);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__PXPhotosLayout_placementInContext_forItemReference___block_invoke;
    v16[3] = &unk_278298D98;
    v16[4] = self;
    v13 = [v12 initWithContext:v6 configuration:v16];
  }

  else
  {
    v14 = PXAssertGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v7;
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

- (id)itemPlacementControllerForItemReference:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotosLayout *)self viewModel];
  v6 = [v5 currentDataSource];
  v7 = [v6 containerCollection];
  v8 = [v4 isEqual:v7];

  if (v8)
  {
    v9 = self;
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277D73CD0]) initWithOriginalItemPlacementController:self originalItemReference:v4];
  }

  v10 = v9;

  return v10;
}

- (UIEdgeInsets)additionalSafeAreaInsetsForSublayout:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D3CF90];
  v6 = [(PXPhotosLayout *)self headerCustomizationModel];
  [v6 verticalVisibilityOffset];
  v8 = v7;

  v9 = [(PXPhotosLayout *)self viewModel];
  [v9 floatingTitleOpacity];
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
  if (topHeaderLayout != v4)
  {
    if (topHeaderLayout)
    {
      v20 = self->_globalHeaderLayout == v4;
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

- (void)adjustCopiedSprites:(id *)a3
{
  v21.receiver = self;
  v21.super_class = PXPhotosLayout;
  v5 = *&a3->var2;
  v19[0] = *&a3->var0;
  v19[1] = v5;
  var4 = a3->var4;
  [(PXPhotosLayout *)&v21 adjustCopiedSprites:v19];
  v6 = [(PXPhotosLayout *)self placementOverride];
  v7 = v6;
  if (v6)
  {
    [v6 alpha];
    var0 = a3->var0;
    if (var0)
    {
      v10 = 0;
      v11 = 40 * var0;
      v12 = a3->var4 + 1;
      do
      {
        v13 = v12[v10];
        v14 = v13 > 0xC;
        v15 = (1 << v13) & 0x1DFB;
        if (!v14 && v15 != 0)
        {
          var3 = a3->var3;
          v18 = v8 * *(var3 + v10);
          *(var3 + v10) = v18;
        }

        v10 += 40;
      }

      while (v11 != v10);
    }
  }
}

- (void)hideSpritesForObjectReferences:(id)a3
{
  v9.receiver = self;
  v9.super_class = PXPhotosLayout;
  [(PXPhotosLayout *)&v9 hideSpritesForObjectReferences:a3];
  v4 = [(PXPhotosLayout *)self pendingHideAnimationType];
  [(PXPhotosLayout *)self setPendingHideAnimationType:0];
  v5 = [PXPhotosGridHideAssetAnimationHelper createDecorationAnimationsForLayout:self animationType:v4];
  if ([v5 count])
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
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
  v3 = [(PXPhotosLayout *)self viewModel];
  if ([v3 isAppearing])
  {
    v4 = 0;
  }

  else
  {
    if ([v3 isEmbedded])
    {
      v12.receiver = self;
      v12.super_class = PXPhotosLayout;
      v5 = [(PXPhotosLayout *)&v12 createDefaultAnimationForCurrentContext];
      v6 = +[PXPhotosGridSettings sharedInstance];
      [v6 defaultAnimationDuration];
      [v5 setDuration:?];
    }

    else
    {
      v6 = [(PXPhotosLayout *)self animationProvider];
      v7 = [(PXPhotosLayout *)self presentedLayoutState];
      v8 = [(PXPhotosLayout *)self createCurrentLayoutState];
      v5 = [v6 createAnimationForLayout:self presentedLayoutState:v7 targetLayoutState:v8];
    }

    v9 = [(PXPhotosLayout *)self delegate];
    v10 = v9;
    if (v5 && v9)
    {
      v4 = [v9 photosLayout:self animationForProposedAnimation:v5];
      if (v5 != v4)
      {
        [(PXPhotosLayout *)self removeAnimation:v5];
        if (v4)
        {
          [(PXPhotosLayout *)self addAnimation:v4];
        }
      }
    }

    else
    {
      v4 = v5;
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
  v3 = [(PXPhotosLayout *)self viewModel];
  v4 = [v3 wantsDynamicTitles];

  if (v4)
  {
    [(PXPhotosLayout *)self _invalidateDynamicHeaderTitle];
  }
}

- (id)hitTestResultForSpriteIndex:(unsigned int)a3
{
  v26.receiver = self;
  v26.super_class = PXPhotosLayout;
  v4 = [(PXPhotosLayout *)&v26 hitTestResultForSpriteIndex:*&a3];
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:*MEMORY[0x277D73D50]];

  if (v6)
  {
    v7 = objc_alloc(MEMORY[0x277D73CA8]);
    v8 = [v4 spriteReference];
    v9 = [v4 layout];
    v10 = [v4 userData];
    v11 = [v7 initWithSpriteReference:v8 layout:v9 identifier:@"PXPhotosLayoutHitTestIdentifierAsset" userData:v10];

    v4 = v10;
  }

  else
  {
    v12 = [v4 identifier];
    v13 = [v12 isEqualToString:*MEMORY[0x277D73D48]];

    if (v13)
    {
      v14 = objc_alloc(MEMORY[0x277D73CA8]);
      v8 = [v4 spriteReference];
      v9 = [v4 layout];
      v15 = @"PXPhotosLayoutHitTestIdentifierAccessoryCell";
      v16 = v14;
      v17 = v8;
      v18 = v9;
      v19 = 0;
    }

    else
    {
      v20 = [(PXPhotosLayout *)self overlayController];
      v21 = [v4 spriteReference];
      v22 = [v21 objectReference];
      v23 = [v20 canHandleObjectReference:v22];

      if (!v23)
      {
        goto LABEL_9;
      }

      v24 = objc_alloc(MEMORY[0x277D73CA8]);
      v8 = [v4 spriteReference];
      v9 = [v4 layout];
      v15 = @"PXPhotosLayoutHitTestIdentifierOverlayItem";
      v16 = v24;
      v17 = v8;
      v18 = v9;
      v19 = v4;
    }

    v11 = [v16 initWithSpriteReference:v17 layout:v18 identifier:v15 userData:v19];
  }

  v4 = v11;
LABEL_9:

  return v4;
}

- (int64_t)sublayoutIndexForObjectReference:(id)a3 options:(unint64_t)a4 updatedObjectReference:(id *)a5
{
  v8 = a3;
  *a5 = v8;
  if ([(PXPhotosLayout *)self _shouldShowSectionedLayout])
  {
    if (!self->_sectionedLayout)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:1645 description:{@"missing _sectionedLayout in %@", self}];
    }

    v9 = [(PXPhotosLayout *)self sublayoutDataStore];
    v10 = [v9 indexOfSublayout:self->_sectionedLayout];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (void)_updateLocalSpritesAlpha
{
  v3 = [(PXPhotosLayout *)self viewModel];
  v4 = [(PXPhotosLayout *)self specManager];
  v5 = [v4 spec];

  v6 = +[PXPhotosGridSettings sharedInstance];
  v7 = [v3 navBarStyle];
  [v5 contentBackgroundOpacity];
  v9 = v8;
  [v3 contentBackgroundOpacity];
  if (v9 >= v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = [(PXPhotosLayout *)self _globalBackgroundSpriteIndex];
  v13 = [(PXPhotosLayout *)self _titleBackgroundSpriteIndex];
  if ((v7 - 5) <= 1)
  {
    v14 = self->_topHeaderLayout == 0;
    if (([v3 isScrolledToTop] & v14) != 0)
    {
      v15 = 0.0;
    }

    else
    {
      v15 = 1.0;
    }

    v16 = [(PXPhotosLayout *)self _expectedLocalSpriteCount];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __42__PXPhotosLayout__updateLocalSpritesAlpha__block_invoke;
    v45[3] = &unk_278298D20;
    v17 = v16 << 32;
    *&v45[5] = v11;
    v46 = v12;
    v47 = v13;
    v48 = v15;
    v45[4] = self;
    v18 = v45;
LABEL_14:
    [(PXPhotosLayout *)self modifySpritesInRange:v17 state:v18];
    goto LABEL_31;
  }

  if (v7 == 7)
  {
    if ([v3 isScrolledToTop])
    {
      v19 = 0.0;
    }

    else
    {
      v19 = 0.65;
    }

    v20 = [(PXPhotosLayout *)self _expectedLocalSpriteCount];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __42__PXPhotosLayout__updateLocalSpritesAlpha__block_invoke_2;
    v42[3] = &__block_descriptor_40_e101_v40__0__PXGSpriteIndexRange_II_8_______ddd__16____f_________ffff__4f___ffffSCf____4___24____CCfqSC_32l;
    v17 = v20 << 32;
    v43 = v13;
    v44 = v19;
    v18 = v42;
    goto LABEL_14;
  }

  [v3 titleBackgroundOpacity];
  v22 = v21;
  [(PXNumberAnimator *)self->_alternateAppearanceMixAnimator presentationValue];
  v24 = v23;
  v25 = 1.0 - v23;
  if ([v5 userInterfaceStyle] == 2)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = v24;
  }

  v27 = 0;
  if ([v5 userInterfaceStyle] == 2)
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
    v31 = [(PXPhotosLayout *)self viewModel];
    if ([v31 isInCompactMode])
    {
      [v6 behindContentBackgroundGradientAlpha];
      v27 = v32;
    }
  }

  if ([v3 wantsFloatingTitle])
  {
    [v3 floatingTitleOpacity];
  }

  else
  {
    [(PXNumberAnimator *)self->_headerFooterAlphaAnimator presentationValue];
  }

  v34 = v33;
  v35 = [(PXPhotosLayout *)self headerCustomizationModel];
  v36 = v35;
  if (v35)
  {
    [v35 alpha];
    v34 = v34 * v37;
  }

  v38 = [(PXPhotosLayout *)self _expectedLocalSpriteCount];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __42__PXPhotosLayout__updateLocalSpritesAlpha__block_invoke_3;
  v39[3] = &unk_278298D68;
  v40 = v12;
  v41 = v13;
  *&v39[5] = v11;
  v39[6] = v22;
  *&v39[7] = v24;
  v39[8] = v30;
  v39[4] = self;
  v39[9] = v27;
  *&v39[10] = v34;
  *&v39[11] = v26;
  *&v39[12] = v28;
  [(PXPhotosLayout *)self modifySpritesInRange:v38 << 32 state:v39];

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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateLocalSpritesAlpha]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1570 description:{@"invalidating %lu after it already has been updated", 0x1000000}];

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
  v3 = [(PXPhotosLayout *)self viewModel];
  v4 = [(PXPhotosLayout *)self specManager];
  v5 = [v4 spec];

  v6 = [(PXPhotosLayout *)self headerCustomizationModel];
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
  [v6 verticalVisibilityOffset];
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
  v21 = [v3 wantsFloatingTitle];
  v22 = v18;
  if ((v21 & 1) == 0)
  {
    [(PXPhotosLayout *)self safeAreaInsets];
    v22 = -v23;
  }

  v24 = v10 + v22;
  v25 = [v5 isTV];
  v26 = 0.0;
  if ((v25 & (v24 < 0.0)) == 0)
  {
    v26 = v24;
  }

  v76 = v26;
  [v6 verticalFloatingOffset];
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
  v39 = [(PXPhotosLayout *)self viewModel];
  v83 = v8;
  v77 = v32;
  if ([v39 gridStyle] == 3)
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
      v42 = [(PXPhotosLayout *)self sublayoutDataStore];
      v104[0] = MEMORY[0x277D85DD0];
      v104[1] = 3221225472;
      v104[2] = __37__PXPhotosLayout__updateLocalSprites__block_invoke;
      v104[3] = &unk_278298CA8;
      v104[4] = &v105;
      [v42 enumerateSublayoutGeometriesInRange:v41 options:1 usingBlock:{0, v104}];

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

  [v3 contentBackgroundInsets];
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
  v60 = v3;
  v88 = v60;
  v89 = self;
  v91 = v71;
  v92 = y;
  v93 = width;
  v94 = v53;
  v95 = v77;
  v96 = v78 + v18;
  v97 = v81;
  v98 = v74 + v73 + v72;
  v61 = v5;
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

  v67 = [(PXPhotosLayout *)self localNumberOfSprites];
  [(PXPhotosLayout *)self alpha];
  v84[0] = MEMORY[0x277D85DD0];
  v84[1] = 3221225472;
  v84[2] = __37__PXPhotosLayout__updateLocalSprites__block_invoke_4;
  v84[3] = &unk_278298CF8;
  v84[4] = self;
  v84[5] = v68;
  v85 = v67;
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateLocalSprites]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1420 description:{@"invalidating %lu after it already has been updated", 0x800000}];

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
  v3 = [(PXPhotosLayout *)self viewModel];
  v4 = [v3 currentLens];
  v5 = [v4 ignoresTopSafeAreaInset];

  [(PXPhotosLayout *)self headerTitleBaselineToBottom];
  v7 = v6;
  [(PXPhotosLayout *)self visibleRect];
  v9 = v8;
  [(PXPhotosLayout *)self safeAreaInsets];
  if (v5)
  {
    v11 = v7 + v9 + v10 * 2.0 <= 0.0;
  }

  else
  {
    v11 = v9 + v10 <= v7;
  }

  v12 = !v11;
  v13 = [(PXPhotosLayout *)self viewModel];
  if (v12 != [v13 isContentBelowTitle])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__PXPhotosLayout__updateContentBelowTitle__block_invoke;
    v14[3] = &__block_descriptor_33_e53_v16__0__PXPhotosViewModel_PXMutablePhotosViewModel__8l;
    v15 = v12;
    [v13 performChanges:v14];
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateContentBelowTitle]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1395 description:{@"invalidating %lu after it already has been updated", 0x200000}];

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
  v3 = [(PXPhotosLayout *)self viewModel];
  v4 = [v3 lastPreferredScrollDetent];

  if (v4)
  {
    v5 = [(PXPhotosLayout *)self viewModel];
    v6 = [v5 lastPreferredScrollDetent];
    [v6 offset];
    PXEdgeInsetsMake();

    [(PXPhotosLayout *)self safeAreaInsets];
    PXEdgeInsetsInvert();
    PXEdgeInsetsAdd();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(PXPhotosLayout *)self rootLayout];
    v16 = [v15 createAnchorForScrollingToContentEdges:1 padding:{v8, v10, v12, v14}];
    v20 = [v16 autoInvalidate];

    v17 = [(PXPhotosLayout *)self activeAnchor];

    if (!v17)
    {
      v18 = [(PXPhotosLayout *)self createAnchorWithAnchor:v20];
      v19 = [v18 autoInvalidate];
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateScrollDetentAnchor]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1380 description:{@"invalidating %lu after it already has been updated", 2048}];

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
  v3 = [(PXPhotosLayout *)self localNumberOfSprites];
  if (v3 != [(PXPhotosLayout *)self _expectedLocalSpriteCount])
  {
    v4 = [(PXPhotosLayout *)self _expectedLocalSpriteCount];

    [(PXPhotosLayout *)self applySpriteChangeDetails:0 countAfterChanges:v4 initialState:&__block_literal_global_85 modifyState:0];
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateLocalSpritesCount]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1366 description:{@"invalidating %lu after it already has been updated", 1024}];

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
    v5 = [(PXPhotosLayout *)self placementOverride];
    v6 = v5;
    if (v5)
    {
      if (([v5 hasGeometry] & 1) == 0)
      {
        v38 = [MEMORY[0x277CCA890] currentHandler];
        [v38 handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:1335 description:{@"Invalid parameter not satisfying: %@", @"placementOverride.hasGeometry"}];
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
    v37 = [(PXPhotosLayout *)self sublayoutDataStore];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __58__PXPhotosLayout__updateSectionedLayoutPlacementOverrides__block_invoke;
    v44[3] = &__block_descriptor_88_e93_v40__0q8_____CGSize_dd_dS_CGSize_dd____ddd_____CGAffineTransform_dddddd_d_d_16_____v_v_24_B32l;
    v45 = v48;
    v46 = v4;
    [v37 enumerateSublayoutGeometriesInRange:v36 options:1 usingBlock:{0, v44}];
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateSectionedLayoutPlacementOverrides]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1321 description:{@"invalidating %lu after it already has been updated", 64}];

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
  v3 = [(PXPhotosLayout *)self _shouldShowSectionedLayout];
  sectionedLayout = self->_sectionedLayout;
  if (v3)
  {
    if (sectionedLayout)
    {
      goto LABEL_13;
    }

    v5 = [PXPhotosSectionedLayout alloc];
    v6 = [(PXPhotosLayout *)self viewModel];
    v7 = [(PXPhotosSectionedLayout *)v5 initWithViewModel:v6];
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
  v12 = [(PXPhotosLayout *)self sectionHeaderProvider];
  [(PXPhotosSectionedLayout *)self->_sectionedLayout setHeaderLayoutProvider:v12];

  v13 = [(PXPhotosLayout *)self sectionBodyProvider];
  [(PXPhotosSectionedLayout *)self->_sectionedLayout setBodyLayoutProvider:v13];

  v14 = [(PXPhotosLayout *)self specManager];
  v22 = [v14 spec];

  [(PXPhotosSectionedLayout *)self->_sectionedLayout setSpec:v22];
  v15 = [(PXPhotosLayout *)self viewModel];
  if ([v15 aspectFitContent])
  {
    [v22 aspectFitContentVerticalPadding];
  }

  else
  {
    [v22 squareContentVerticalPadding];
  }

  if (!self->_headerLayout)
  {
    v16 = [(PXPhotosLayout *)self globalHeaderProvider];
    if (v16 || ([(PXPhotosLayout *)self sectionHeaderProvider], (v16 = objc_claimAutoreleasedReturnValue()) != 0) || self->_managesHeaderSprites)
    {
    }

    else if (!self->_managesOnlyLegibilityGradientSprites)
    {
      goto LABEL_27;
    }
  }

  v17 = [(PXPhotosLayout *)self specManager];
  v18 = [v17 gridStyle];

  if (v18 >= 3)
  {
    if (v18 - 3 >= 2)
    {
      goto LABEL_24;
    }

LABEL_26:
    [(PXPhotosLayout *)self safeAreaInsets];
    goto LABEL_27;
  }

  v19 = [(PXPhotosLayout *)self viewModel];
  v20 = [v19 currentLens];
  v21 = [v20 ignoresTopSafeAreaInset];

  if (v21)
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateSectionedLayout]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1260 description:{@"invalidating %lu after it already has been updated", 8}];

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
  v4 = [(PXPhotosLayout *)self footerView];
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  v6 = [(PXPhotosLayout *)self viewModel];
  if ([v6 contentPrivacyState] == 1)
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

  v9 = [v6 currentLens];
  [v9 defaultSectionBodyStyle];

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
  v13 = [(PXPhotosLayout *)self footerView];
  [(PXGSingleViewLayout *)self->_footerLayout setContentView:v13];

  [(PXNumberAnimator *)self->_headerFooterAlphaAnimator presentationValue];
  [(PXGSingleViewLayout *)self->_footerLayout setAlpha:?];
  if ((((footerLayout == 0) ^ v10) & 1) == 0)
  {
    [(PXPhotosLayout *)self _invalidateSectionedLayout];
    if (v10)
    {
      if (!self->_footerHasAppearedInitially)
      {
        v14 = [(PXPhotosLayout *)self viewModel];
        v15 = [v14 hasScrollableContent];

        if ((v15 & 1) == 0)
        {
          v16 = [(PXGSingleViewLayout *)self->_footerLayout createAnimation];
          v17 = +[PXPhotosGridSettings sharedInstance];
          [v17 defaultAnimationDuration];
          [v16 setDuration:?];

          [v16 setScope:1];
        }
      }

      self->_footerHasAppearedInitially = 1;
    }
  }

  v20 = [(PXPhotosLayout *)self rootLayout];
  v18 = [v20 createAnchorForVisibleAreaIgnoringEdges:4];
  v19 = [v18 autoInvalidate];
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateFooter]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1220 description:{@"invalidating %lu after it already has been updated", 128}];

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
  v3 = [(PXPhotosLayout *)self viewModel];
  v4 = ([v3 hideSurroundingContent] ^ 1);

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

- (void)_updateHeaderAnimated:(BOOL)a3
{
  if (a3)
  {
    v4 = [(PXPhotosLayout *)self createDefaultAnimationForCurrentContext];
  }

  headerLayout = self->_headerLayout;
  if (headerLayout)
  {
    goto LABEL_4;
  }

  v8 = [(PXPhotosLayout *)self headerView];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277D73CE8]);
    v10 = self->_headerLayout;
    self->_headerLayout = v9;

    [(PXPhotosLayout *)self insertSublayout:self->_headerLayout atIndex:self->_topHeaderLayout != 0];
    v7 = [(PXPhotosLayout *)self rootLayout];
    v11 = [v7 createAnchorForVisibleAreaIgnoringEdges:1];
    v12 = [v11 autoInvalidate];

LABEL_8:
    goto LABEL_9;
  }

  if (self->_headerLayout)
  {
LABEL_4:
    v6 = [(PXPhotosLayout *)self headerView];

    if (v6)
    {
      goto LABEL_9;
    }

    [(PXGSingleViewLayout *)self->_headerLayout removeFromSuperlayout];
    v7 = self->_headerLayout;
    self->_headerLayout = 0;
    goto LABEL_8;
  }

LABEL_9:
  v13 = [(PXPhotosLayout *)self headerView];
  [(PXGSingleViewLayout *)self->_headerLayout setContentView:v13];

  [(PXNumberAnimator *)self->_headerFooterAlphaAnimator presentationValue];
  v15 = v14;
  v16 = [(PXPhotosLayout *)self headerCustomizationModel];

  if (v16)
  {
    v17 = [(PXPhotosLayout *)self headerCustomizationModel];
    [v17 alpha];
    v15 = v15 * v18;
  }

  [(PXGSingleViewLayout *)self->_headerLayout setAlpha:v15];
  if ((headerLayout == 0) == (self->_headerLayout != 0))
  {

    [(PXPhotosLayout *)self _invalidateSectionedLayout];
  }
}

- (void)_invalidateHeaderAnimated:(BOOL)a3
{
  p_updateFlags = &self->_updateFlags;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (!self->_updateFlags.isPerformingUpdate)
    {
      v6 = 512;
      if (a3)
      {
        v6 = 256;
      }

LABEL_10:
      p_updateFlags->needsUpdate = needsUpdate | v6;
      return;
    }

LABEL_7:
    v6 = 512;
    if (a3)
    {
      v6 = 256;
    }

    if ((self->_updateFlags.updated & v6) != 0)
    {
      v9 = v6;
      v10 = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateHeaderAnimated:]"];
      [v10 handleFailureInFunction:v11 file:@"PXPhotosLayout.m" lineNumber:1178 description:{@"invalidating %lu after it already has been updated", v9}];

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
  if (a3)
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
  v17 = [(PXPhotosLayout *)self viewModel];
  v3 = [(PXPhotosLayout *)self globalHeaderProvider];
  v4 = v3;
  globalHeaderLayout = self->_globalHeaderLayout;
  if (globalHeaderLayout)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v7 = [(PXPhotosLayout *)self viewModel];
    v8 = [v17 currentDataSource];
    v9 = [(PXPhotosLayout *)self specManager];
    v10 = [v9 spec];
    v11 = [v4 createGlobalHeaderLayoutForPhotosViewModel:v7 dataSource:v8 spec:v10];
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
    v14 = [v17 currentDataSource];
    v15 = [(PXPhotosLayout *)self specManager];
    v16 = [v15 spec];
    [v4 configureGlobalHeaderLayout:globalHeaderLayout dataSource:v14 spec:v16];
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateGlobalHeaderLayout]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1158 description:{@"invalidating %lu after it already has been updated", 16}];

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
    v13 = [(PXPhotosLayout *)self sectionHeaderProvider];
    sectionedLayout = self->_sectionedLayout;
    v15 = [(PXPhotosLayout *)self viewModel];
    v16 = [v15 currentDataSource];
    v17 = [(PXPhotosLayout *)self specManager];
    v18 = [v17 spec];
    v19 = [v13 createTopHeaderLayoutForSectionedLayout:sectionedLayout dataSource:v16 spec:v18 outShouldFloat:&v21];
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
      v3 = [(PXPhotosLayout *)self viewModel];
      v4 = [v3 selectionSnapshot];
      [(PXPhotosSectionedLayoutHeader *)self->_topHeaderLayout setSelectionSnapshot:v4];

      -[PXPhotosSectionedLayoutHeader setIsInSelectMode:](self->_topHeaderLayout, "setIsInSelectMode:", [v3 isInSelectMode]);
      v5 = [(PXPhotosLayout *)self specManager];
      v6 = [v5 spec];
      [(PXPhotosSectionedLayoutHeader *)self->_topHeaderLayout setSpec:v6];

      if (self->_headerProviderRespondsTo.configureTopHeaderLayout)
      {
        v7 = [(PXPhotosLayout *)self sectionHeaderProvider];
        v8 = self->_topHeaderLayout;
        v9 = [(PXPhotosLayout *)self viewModel];
        v10 = [v9 currentDataSource];
        v11 = [(PXPhotosLayout *)self specManager];
        v12 = [v11 spec];
        [v7 configureTopHeaderLayout:v8 dataSource:v10 spec:v12];
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateTopHeaderLayout]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1131 description:{@"invalidating %lu after it already has been updated", 32}];

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
    v3 = [(PXPhotosLayout *)self viewModel];
    if ([v3 wantsDynamicTitles])
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
    v7 = [(PXPhotosLayout *)self specManager];
    v8 = [v7 spec];

    if (v6 <= 0.0)
    {
      v13 = 0.0;
      [(PXPhotosLayout *)self setHeaderTitleBaselineToBottom:0.0];
      v14 = 0.0;
    }

    else
    {
      v9 = [v8 headerTitleFont];
      [v9 descender];
      v11 = v6 - v5 + v10;

      [v8 headerTitleBottomSpacing];
      v13 = v6 + v12;
      [(PXPhotosLayout *)self setHeaderTitleBaselineToBottom:v6 + v12 - v11];
      v14 = 0.0;
      if (v13 > 0.0)
      {
        v15 = [v8 isTV];
        v16 = 0.0;
        if ((v15 & 1) == 0)
        {
          [v8 headerTitleTopSpacing];
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
    v21 = [v3 navBarStyle];
    v22 = 0.0;
    if (v21 <= 7 && ((1 << v21) & 0x8E) != 0)
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
    [v3 performChanges:v31];
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateHeaderMeasurements]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:1080 description:{@"invalidating %lu after it already has been updated", 4}];

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
  v3 = [(PXPhotosLayout *)self viewModel];
  v4 = [v3 wantsDynamicTitles];

  if ((v4 & 1) == 0)
  {

    [(PXPhotosLayout *)self _invalidateHeaderMeasurements];
  }
}

- (void)_updateHeaderOrigin
{
  v3 = [(PXPhotosLayout *)self specManager];
  v32 = [v3 spec];

  [v32 headerTitleLeadingSpacing];
  v5 = v4;
  if ([v32 isTV])
  {
    [(PXPhotosLayout *)self visibleRect];
    v6 = 0.0;
    if (v7 >= 0.0)
    {
      [v32 headerTitleTopSpacing];
      v6 = v8;
    }
  }

  else if ([(PXPhotosLayout *)self wantsHeaderInSafeArea])
  {
    v9 = [(PXPhotosLayout *)self headerCustomizationModel];
    [v9 verticalVisibilityOffset];
    v11 = v10;
    [v9 verticalFloatingOffset];
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
    v23 = [(PXPhotosLayout *)self viewModel];
    v24 = 0.0;
    if ([v23 navBarStyle] != 5)
    {
      v25 = [(PXPhotosLayout *)self viewModel];
      if ([v25 navBarStyle] != 6 && !-[PXPhotosLayout alignsHeaderTitleWithLayoutMargins](self, "alignsHeaderTitleWithLayoutMargins"))
      {
        [v32 headerTitleButtonAlignmentSpacing];
        v24 = v26;
      }
    }

    v5 = v5 + v24;

    [(PXPhotosLayout *)self safeAreaInsets];
    v28 = v27;
    [v32 headerTitleTopSpacing];
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
  v7 = [(PXPhotosLayout *)self headerTitleDrawingOptions];
  v8 = [(PXPhotosLayout *)self attributedStringForSpriteAtIndex:3 inLayout:self];
  v9 = v8;
  if (v8)
  {
    [v8 boundingRectWithSize:v7 options:0 context:{v4, v6}];
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v14 = [(PXPhotosLayout *)self headerTitle];
    v15 = [(PXPhotosLayout *)self headerTitleOverContentAttributes];
    [v14 boundingRectWithSize:v7 options:v15 attributes:0 context:{v4, v6}];
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
  v3 = [(PXPhotosLayout *)self specManager];
  v4 = [v3 spec];

  [v4 headerTitleLeadingSpacing];
  v6 = v5;
  [v4 headerTitleButtonAlignmentSpacing];
  v8 = v6 + v7;
  [(PXPhotosLayout *)self referenceSize];
  v10 = v9 + v8 * -2.0;
  v11 = [(PXPhotosLayout *)self wantsHeaderInSafeArea];
  v12 = 1.0;
  if (v11)
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
  v3 = [(PXPhotosLayout *)self specManager];
  v4 = [v3 spec];

  v5 = [v4 headerSubtitleFont];
  v6 = v5;
  if (v5)
  {
    [v5 lineHeight];
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
  v2 = [(PXPhotosLayout *)self specManager];
  v3 = [v2 spec];

  v4 = [v3 headerTitleFont];
  [v4 lineHeight];
  v6 = v5;
  [v4 leading];
  v8 = v6 + v7;

  return v8;
}

- (void)_updateHeaderAttributes
{
  if (self->_managesHeaderSprites || self->_managesOnlyLegibilityGradientSprites)
  {
    v3 = [(PXPhotosLayout *)self specManager];
    v14 = [v3 spec];

    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = [v14 headerTitleFont];
    v6 = *MEMORY[0x277D740A8];
    [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D740A8]];

    v7 = [v14 headerTitleOverContentColor];
    v8 = *MEMORY[0x277D740C0];
    [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x277D740C0]];

    [(PXPhotosLayout *)self setHeaderTitleOverContentAttributes:v4];
    v9 = [v14 headerTitleOverBackgroundColor];
    [v4 setObject:v9 forKeyedSubscript:v8];

    [(PXPhotosLayout *)self setHeaderTitleOverBackgroundAttributes:v4];
    v10 = [MEMORY[0x277CBEB38] dictionary];
    v11 = [v14 headerSubtitleFont];
    [v10 setObject:v11 forKeyedSubscript:v6];

    v12 = [v14 headerTitleOverBackgroundColor];
    [v10 setObject:v12 forKeyedSubscript:v8];

    [(PXPhotosLayout *)self setHeaderSubtitleOverBackgroundAttributes:v10];
    v13 = [v14 headerTitleOverContentColor];
    [v10 setObject:v13 forKeyedSubscript:v8];

    [(PXPhotosLayout *)self setHeaderSubtitleOverContentAttributes:v10];
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateHeaderAttributes]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:962 description:{@"invalidating %lu after it already has been updated", 2}];

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
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout didUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXPhotosLayout.m" lineNumber:957 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }

  if (self->_postUpdateFlags.willPerformUpdate)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout didUpdate]"];
    [v5 handleFailureInFunction:v6 file:@"PXPhotosLayout.m" lineNumber:958 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.willPerformUpdate"}];
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
    v39 = [MEMORY[0x277CCA890] currentHandler];
    v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [v39 handleFailureInFunction:v40 file:@"PXPhotosLayout.m" lineNumber:869 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }

  p_updateFlags->isPerformingUpdate = 1;
  p_updateFlags->updated = 0;
  if (!self->_presentedLayoutState)
  {
    [(PXPhotosLayout *)self _updatePresentedLayoutState];
  }

  v5 = [(PXPhotosLayout *)self rootLayout];
  [v5 visibleRect];
  [v5 safeAreaInsets];
  PXEdgeInsetsInsetRect();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v5 contentSize];

  PXRectWithOriginAndSize();
  v81.origin.x = v7;
  v81.origin.y = v9;
  v81.size.width = v11;
  v81.size.height = v13;
  if (CGRectContainsRect(v80, v81))
  {
    v14 = [v5 createAnchorForVisibleArea];
    v15 = [v14 autoInvalidate];
  }

  if (!p_updateFlags->isPerformingUpdate)
  {
    v41 = [MEMORY[0x277CCA890] currentHandler];
    v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [v41 handleFailureInFunction:v42 file:@"PXPhotosLayout.m" lineNumber:885 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    v43 = [MEMORY[0x277CCA890] currentHandler];
    v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [v43 handleFailureInFunction:v44 file:@"PXPhotosLayout.m" lineNumber:888 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    v45 = [MEMORY[0x277CCA890] currentHandler];
    v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [v45 handleFailureInFunction:v46 file:@"PXPhotosLayout.m" lineNumber:891 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    v47 = [MEMORY[0x277CCA890] currentHandler];
    v48 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [v47 handleFailureInFunction:v48 file:@"PXPhotosLayout.m" lineNumber:894 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    v49 = [MEMORY[0x277CCA890] currentHandler];
    v50 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [v49 handleFailureInFunction:v50 file:@"PXPhotosLayout.m" lineNumber:895 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];

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
    v51 = [MEMORY[0x277CCA890] currentHandler];
    v52 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [v51 handleFailureInFunction:v52 file:@"PXPhotosLayout.m" lineNumber:899 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    v53 = [MEMORY[0x277CCA890] currentHandler];
    v54 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [v53 handleFailureInFunction:v54 file:@"PXPhotosLayout.m" lineNumber:902 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    v55 = [MEMORY[0x277CCA890] currentHandler];
    v56 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [v55 handleFailureInFunction:v56 file:@"PXPhotosLayout.m" lineNumber:905 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    v57 = [MEMORY[0x277CCA890] currentHandler];
    v58 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [v57 handleFailureInFunction:v58 file:@"PXPhotosLayout.m" lineNumber:908 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    v59 = [MEMORY[0x277CCA890] currentHandler];
    v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [v59 handleFailureInFunction:v60 file:@"PXPhotosLayout.m" lineNumber:911 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    v61 = [MEMORY[0x277CCA890] currentHandler];
    v62 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [v61 handleFailureInFunction:v62 file:@"PXPhotosLayout.m" lineNumber:914 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    v63 = [MEMORY[0x277CCA890] currentHandler];
    v64 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [v63 handleFailureInFunction:v64 file:@"PXPhotosLayout.m" lineNumber:917 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
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
    v65 = [MEMORY[0x277CCA890] currentHandler];
    v66 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
    [v65 handleFailureInFunction:v66 file:@"PXPhotosLayout.m" lineNumber:920 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
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
      v67 = [MEMORY[0x277CCA890] currentHandler];
      v68 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
      [v67 handleFailureInFunction:v68 file:@"PXPhotosLayout.m" lineNumber:927 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];
    }

    self->_postUpdateFlags.isPerformingUpdate = 1;
    self->_postUpdateFlags.updated = 0;
    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = -1;
    if (!self->_postUpdateFlags.isPerformingUpdate)
    {
      v69 = [MEMORY[0x277CCA890] currentHandler];
      v70 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
      [v69 handleFailureInFunction:v70 file:@"PXPhotosLayout.m" lineNumber:928 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
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
      v71 = [MEMORY[0x277CCA890] currentHandler];
      v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
      [v71 handleFailureInFunction:v72 file:@"PXPhotosLayout.m" lineNumber:931 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
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
      v73 = [MEMORY[0x277CCA890] currentHandler];
      v74 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
      [v73 handleFailureInFunction:v74 file:@"PXPhotosLayout.m" lineNumber:934 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
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
      v75 = [MEMORY[0x277CCA890] currentHandler];
      v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
      [v75 handleFailureInFunction:v76 file:@"PXPhotosLayout.m" lineNumber:937 description:{@"Invalid parameter not satisfying: %@", @"_postUpdateFlags.isPerformingUpdate"}];
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
      v77 = [MEMORY[0x277CCA890] currentHandler];
      v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout update]"];
      [v77 handleFailureInFunction:v78 file:@"PXPhotosLayout.m" lineNumber:940 description:{@"still needing to update %lu after update pass", p_postUpdateFlags->needsUpdate}];
    }
  }

  if (p_updateFlags->needsUpdate)
  {
    v38 = [MEMORY[0x277CCA890] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"PXPhotosLayout.m" lineNumber:941 description:@"post-update pass invalidated pre-update flags"];
  }

  v35 = [(PXPhotosLayout *)self pendingAnimations];
  v36 = [v35 count];

  if (v36)
  {
    v37 = [(PXPhotosLayout *)self createAnimation];
    [v37 setCurve:0];
    [v37 setDuration:0.0];
    [v37 setScope:2];
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
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout willUpdate]"];
    [v3 handleFailureInFunction:v4 file:@"PXPhotosLayout.m" lineNumber:864 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }

  self->_postUpdateFlags.willPerformUpdate = 1;
  if (self->_postUpdateFlags.isPerformingUpdate)
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout willUpdate]"];
    [v5 handleFailureInFunction:v6 file:@"PXPhotosLayout.m" lineNumber:865 description:{@"Invalid parameter not satisfying: %@", @"!_postUpdateFlags.isPerformingUpdate"}];
  }
}

- (void)_updatePresentedLayoutState
{
  v3 = [(PXPhotosLayout *)self createCurrentLayoutState];
  [(PXPhotosLayout *)self setPresentedLayoutState:v3];
}

- (id)createCurrentLayoutState
{
  v3 = objc_alloc_init(PXPhotosLayoutState);
  v4 = [(PXPhotosLayout *)self viewModel];
  v5 = [v4 currentLens];
  [(PXPhotosLayoutState *)v3 setLens:v5];

  v6 = [(PXPhotosLayout *)self sectionBodyProvider];
  [(PXPhotosLayoutState *)v3 setBodyProvider:v6];

  v7 = [(PXPhotosLayout *)self sectionHeaderProvider];
  [(PXPhotosLayoutState *)v3 setHeaderProvider:v7];

  return v3;
}

- (void)setPlacementOverride:(id)a3
{
  v5 = a3;
  if (self->_placementOverride != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_placementOverride, a3);
    [(PXPhotosLayout *)self _invalidateSectionedLayoutPlacementOverrides];
    v5 = v6;
  }
}

- (void)setTitleBackgroundGradientAdditionalCoverage:(double)a3
{
  if (self->_titleBackgroundGradientAdditionalCoverage != a3)
  {
    self->_titleBackgroundGradientAdditionalCoverage = a3;
    [(PXPhotosLayout *)self _invalidateLocalSprites];
  }
}

- (void)setTitleBackgroundSpriteHeight:(double)a3
{
  if (self->_titleBackgroundSpriteHeight != a3)
  {
    self->_titleBackgroundSpriteHeight = a3;
    [(PXPhotosLayout *)self _invalidateSectionedLayout];

    [(PXPhotosLayout *)self _invalidateLocalSprites];
  }
}

- (void)setHeaderTitleBaselineToBottom:(double)a3
{
  if (self->_headerTitleBaselineToBottom != a3)
  {
    self->_headerTitleBaselineToBottom = a3;
    [(PXPhotosLayout *)self _invalidateContentBelowTitle];
  }
}

- (void)setHeaderTitleSize:(CGSize)a3
{
  if (self->_headerTitleSize.width != a3.width || self->_headerTitleSize.height != a3.height)
  {
    self->_headerTitleSize = a3;
    [(PXPhotosLayout *)self _invalidateLocalSprites];
  }
}

- (void)setHeaderTitleOrigin:(CGPoint)a3
{
  if (self->_headerTitleOrigin.x != a3.x || self->_headerTitleOrigin.y != a3.y)
  {
    self->_headerTitleOrigin = a3;
    [(PXPhotosLayout *)self _invalidateLocalSprites];
  }
}

- (void)setHeaderSubtitleOverContentAttributes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_headerSubtitleOverContentAttributes != v4)
  {
    v8 = v4;
    v4 = [v4 isEqual:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      headerSubtitleOverContentAttributes = self->_headerSubtitleOverContentAttributes;
      self->_headerSubtitleOverContentAttributes = v6;

      v4 = [(PXPhotosLayout *)self _invalidateLocalSprites];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)setHeaderSubtitleOverBackgroundAttributes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_headerSubtitleOverBackgroundAttributes != v4)
  {
    v8 = v4;
    v4 = [v4 isEqual:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      headerSubtitleOverBackgroundAttributes = self->_headerSubtitleOverBackgroundAttributes;
      self->_headerSubtitleOverBackgroundAttributes = v6;

      v4 = [(PXPhotosLayout *)self _invalidateLocalSprites];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)setHeaderTitleOverBackgroundAttributes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_headerTitleOverBackgroundAttributes != v4)
  {
    v8 = v4;
    v4 = [v4 isEqual:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      headerTitleOverBackgroundAttributes = self->_headerTitleOverBackgroundAttributes;
      self->_headerTitleOverBackgroundAttributes = v6;

      v4 = [(PXPhotosLayout *)self _invalidateLocalSprites];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)setHeaderTitleOverContentAttributes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_headerTitleOverContentAttributes != v4)
  {
    v8 = v4;
    v4 = [v4 isEqual:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      headerTitleOverContentAttributes = self->_headerTitleOverContentAttributes;
      self->_headerTitleOverContentAttributes = v6;

      v4 = [(PXPhotosLayout *)self _invalidateLocalSprites];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)setHeaderSubtitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_headerSubtitle != v4)
  {
    v8 = v4;
    v4 = [v4 isEqualToString:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      headerSubtitle = self->_headerSubtitle;
      self->_headerSubtitle = v6;

      ++self->_headerTitleVersion;
      [(PXPhotosLayout *)self _invalidateHeaderMeasurementsForTitleChange];
      v4 = [(PXPhotosLayout *)self _invalidateLocalSprites];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)setHeaderTitle:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_headerTitle != v4)
  {
    v8 = v4;
    v4 = [v4 isEqualToString:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      headerTitle = self->_headerTitle;
      self->_headerTitle = v6;

      ++self->_headerTitleVersion;
      [(PXPhotosLayout *)self _invalidateHeaderMeasurementsForTitleChange];
      v4 = [(PXPhotosLayout *)self _invalidateLocalSprites];
      v5 = v8;
    }
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_updateHeaderTitle
{
  v3 = [(PXPhotosLayout *)self viewModel];
  v4 = [v3 navBarStyle] != 3 && objc_msgSend(v3, "navBarStyle") != 4 && objc_msgSend(v3, "navBarStyle") != 6 && objc_msgSend(v3, "navBarStyle") != 7;
  if (([v3 wantsDynamicTitles] & 1) == 0 && !v4)
  {
    [(PXPhotosLayout *)self setHeaderTitle:0];
    [(PXPhotosLayout *)self setHeaderSubtitle:0];
    goto LABEL_42;
  }

  v5 = [v3 title];
  v6 = [v3 currentDataSource];
  v40 = v6;
  if ([v3 wantsDynamicTitles])
  {
    v7 = [v6 identifier];
    v8 = [PXPhotosGridHeaderUtilities dateTypeForViewModel:v3];
    [(PXPhotosLayout *)self visibleRect];
    v9 = [(PXPhotosLayout *)self dateIntervalFutureForContentInRect:v8 type:?];
    v10 = v9[2](v9, v7);
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
    v15 = v14[2](v14, v7);
    v16 = PXLocalizedComposedString();
    if (v16)
    {
      objc_storeStrong(&self->_dynamicLocationName, v16);
    }

    v17 = self->_dynamicDateInterval;
    v18 = v17;
    if (v5)
    {
      v19 = v17;
    }

    else
    {
      v19 = self->_dynamicLocationName;
      v5 = v18;
    }

    v4 = v39;
  }

  else
  {
    v19 = 0;
  }

  v20 = [(PXPhotosLayout *)self specManager];
  v21 = [v20 spec];
  if ([v21 allowsEmptyTitles])
  {
    v22 = [(PXPhotosLayout *)self viewModel];
    v23 = [v22 currentDataSource];
    v24 = [v23 containsAnyItems];

    if (v5 || (v24 & 1) == 0)
    {
      if (v19 || !v5)
      {
        v26 = v40;
        goto LABEL_33;
      }

      v25 = v24 ^ 1;
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

    if (v5)
    {
      v26 = v40;
      if (!v19)
      {
        goto LABEL_32;
      }

      goto LABEL_33;
    }
  }

  v26 = v40;
  v27 = [v40 containerCollection];
  v5 = [v27 localizedTitle];

  if (!v19)
  {
LABEL_32:
    v28 = [v26 containerCollection];
    v19 = [v28 localizedSubtitle];
  }

LABEL_33:
  v29 = [(PXPhotosLayout *)self viewModel];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __36__PXPhotosLayout__updateHeaderTitle__block_invoke;
  v41[3] = &unk_278298C40;
  v42 = v5;
  v43 = v19;
  v30 = v19;
  v31 = v5;
  [v29 performChanges:v41];

  v32 = [(PXPhotosLayout *)self specManager];
  v33 = [v32 spec];
  v34 = [v33 allowsEmptyTitles];
  v35 = @" ";
  if ((v34 & v4) == 0)
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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateHeaderTitle]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:663 description:{@"invalidating %lu after it already has been updated", 1}];

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
      v6 = [MEMORY[0x277CCA890] currentHandler];
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosLayout _invalidateDynamicHeaderTitle]"];
      [v6 handleFailureInFunction:v7 file:@"PXPhotosLayout.m" lineNumber:659 description:{@"invalidating %lu after it already has been updated", 0x400000}];

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

- (void)enumerateScrollablePagesWithOptions:(unint64_t)a3 usingBlock:(id)a4
{
  v6 = a4;
  v7 = *MEMORY[0x277CBF348];
  v8 = *(MEMORY[0x277CBF348] + 8);
  v9 = self->_sectionedLayout;
  [(PXPhotosLayout *)self convertPoint:v9 fromLayout:v7, v8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__PXPhotosLayout_enumerateScrollablePagesWithOptions_usingBlock___block_invoke;
  v13[3] = &unk_278298C18;
  v14 = v6;
  v15 = v10;
  v16 = v11;
  v12 = v6;
  [(PXPhotosSectionedLayout *)v9 enumerateSectionBoundariesWithOptions:a3 usingBlock:v13];
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
  v2 = [(PXPhotosLayout *)self viewModel];
  v3 = [v2 contentPrivacyState] != 1;

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

- (CGPoint)visibleOriginForScrollingToNeighboringSectionInDirection:(unint64_t)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if (a3 <= 6 && ((1 << a3) & 0x19) != 0)
  {
    v5 = PXAssertGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v26 = 134217984;
      *&v26[4] = a3;
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

- (CGPoint)adjustedTargetVisibleOriginForProposedTargetVisibleOrigin:(CGPoint)a3 scrollingVelocity:(CGPoint)a4 decelerationRate:(int64_t *)a5
{
  y = a4.y;
  x = a4.x;
  v8 = a3.y;
  v9 = a3.x;
  v11 = [(PXPhotosLayout *)self specManager];
  v12 = [v11 spec];

  v13 = objc_alloc(MEMORY[0x277D3CDB0]);
  [(PXPhotosLayout *)self visibleRect];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(PXPhotosLayout *)self safeAreaInsets];
  v26 = [v13 initWithSnapBehavior:0 scrollAxis:1 visibleRect:self visibilityInsets:v15 scrollablePageSource:{v17, v19, v21, v22, v23, v24, v25}];
  [v12 configureScrollSnapController:v26];
  v27 = [(PXPhotosLayout *)self viewModel];
  v28 = [v27 currentLens];
  v29 = [v28 allowsScrollSnap];

  if ((v29 & 1) == 0)
  {
    [v26 setSnapBehavior:0];
  }

  [v26 adjustedTargetVisibleOriginForProposedTargetVisibleOrigin:a5 scrollingVelocity:v9 decelerationRate:{v8, x, y}];
  v31 = v30;
  v33 = v32;

  v34 = v31;
  v35 = v33;
  result.y = v35;
  result.x = v34;
  return result;
}

- (id)regionOfInterestForAssetReference:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PXPhotosLayout *)self rootLayout];
  v6 = [v5 coordinateSpace];
  v7 = [(PXPhotosLayout *)self spriteReferenceForObjectReference:v4];

  v8 = 0;
  if (v6 && v7)
  {
    v9 = [v5 spriteIndexForSpriteReference:v7];
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
      [v5 copyLayoutForSpritesInRange:v9 | 0x100000000 entities:&v21 geometries:v20 styles:&v32 infos:v18];
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

- (void)enumerateItemsGeometriesInRect:(CGRect)a3 dataSource:(id)a4 usingBlock:(id)a5
{
  sectionedLayout = self->_sectionedLayout;
  if (sectionedLayout)
  {
    height = a3.size.height;
    width = a3.size.width;
    y = a3.origin.y;
    x = a3.origin.x;
    v12 = a5;
    v13 = a4;
    [(PXPhotosLayout *)self convertRect:sectionedLayout toDescendantLayout:x, y, width, height];
    [(PXPhotosSectionedLayout *)self->_sectionedLayout enumerateItemsGeometriesInRect:v13 dataSource:v12 usingBlock:?];
  }
}

- (id)topmostSectionHeaderSnapshotInRect:(CGRect)a3
{
  if (self->_sectionedLayout)
  {
    [(PXPhotosLayout *)self convertRect:a3.origin.x toDescendantLayout:a3.origin.y, a3.size.width, a3.size.height];
    v4 = [(PXPhotosSectionedLayout *)self->_sectionedLayout topmostHeaderSnapshotInRect:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)enumerateAssetsInRect:(CGRect)a3 enumerator:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v23 = *MEMORY[0x277D85DE8];
  v9 = a4;
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
      v22 = self;
      _os_log_impl(&dword_21ABF3000, v18, OS_LOG_TYPE_ERROR, "Failed to enumerate assets for <%{public}@:%p>", &v19, 0x16u);
    }
  }

  else
  {
    [(PXPhotosSectionedLayout *)self->_sectionedLayout enumerateAssetsInRect:v9 enumerator:v11, v13, v15, v17];
  }
}

- (void)enumerateAssetCollectionsInRect:(CGRect)a3 enumerator:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v23 = *MEMORY[0x277D85DE8];
  v9 = a4;
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
      v22 = self;
      _os_log_impl(&dword_21ABF3000, v18, OS_LOG_TYPE_ERROR, "Failed to enumerate asset collections for <%{public}@:%p>", &v19, 0x16u);
    }
  }

  else
  {
    [(PXPhotosSectionedLayout *)self->_sectionedLayout enumerateAssetCollectionsInRect:v9 enumerator:v11, v13, v15, v17];
  }
}

- (id)locationNamesFutureForContentInRect:(CGRect)a3
{
  if (self->_sectionedLayout)
  {
    [(PXPhotosLayout *)self convertRect:a3.origin.x toDescendantLayout:a3.origin.y, a3.size.width, a3.size.height];
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

- (id)dateIntervalFutureForContentInRect:(CGRect)a3 type:(unint64_t)a4
{
  if (self->_sectionedLayout)
  {
    [(PXPhotosLayout *)self convertRect:a3.origin.x toDescendantLayout:a3.origin.y, a3.size.width, a3.size.height];
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
  if (CGRectIsNull(v18) || (PXPointIsNull() & 1) != 0 || ([(PXPhotosSectionedLayout *)self->_sectionedLayout dateIntervalFutureForContentInRect:a4 type:v7, v9, v11, v13], (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = &__block_literal_global_19;
  }

  v15 = [v14 copy];

  return v15;
}

- (id)createAnchorForScrollingToInitialPosition
{
  v3 = [(PXPhotosLayout *)self viewModel];
  v4 = [v3 initialNavigationObjectReference];

  if (v4)
  {
    v5 = [v3 initialNavigationScrollPosition];
    if (v5 > 3)
    {
      v6 = 0;
    }

    else
    {
      v6 = qword_21AC7D698[v5];
    }

    v13 = [v3 navBarStyle];
    if (v13 > 8)
    {
      v18 = [MEMORY[0x277CCA890] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL _IsNavigationBarBackgroundVisibleForNavigationBarStyle(PXPhotosViewNavigationBarStyle)"];
      [v18 handleFailureInFunction:v19 file:@"PXPhotosLayout.m" lineNumber:145 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if (((1 << v13) & 0x19F) != 0)
    {
      v14 = v6 | 0x100;
    }

    else
    {
      v14 = v6;
    }

    v9 = [(PXPhotosLayout *)self rootLayout];
    v11 = [v3 initialNavigationObjectReference];
    v15 = [v9 createAnchorForScrollingSpriteForObjectReference:v11 toScrollPosition:v14 padding:{*MEMORY[0x277D3CF90], *(MEMORY[0x277D3CF90] + 8), *(MEMORY[0x277D3CF90] + 16), *(MEMORY[0x277D3CF90] + 24)}];
  }

  else
  {
    if ([v3 contentStartsAtEnd])
    {
      v7 = 4;
    }

    else
    {
      v7 = 1;
    }

    v8 = [(PXPhotosLayout *)self specManager];
    v9 = [v8 spec];

    if (![(PXPhotosLayout *)self canScrollToInitialPosition])
    {
      v15 = 0;
      goto LABEL_19;
    }

    v10 = [(PXPhotosLayout *)self detentForInitialScrollPosition];
    v11 = v10;
    if (v10)
    {
      [v10 offset];
      v12 = [v9 extendedTraitCollection];
      [v12 safeAreaInsets];
    }

    v16 = [(PXPhotosLayout *)self rootLayout];
    PXEdgeInsetsMake();
    v15 = [v16 createAnchorForScrollingToContentEdges:v7 padding:?];
  }

LABEL_19:

  return v15;
}

- (void)setAlignsHeaderTitleWithLayoutMargins:(BOOL)a3
{
  if (self->_alignsHeaderTitleWithLayoutMargins != a3)
  {
    self->_alignsHeaderTitleWithLayoutMargins = a3;
    [(PXPhotosLayout *)self _invalidateHeaderMeasurements];
  }
}

- (void)setWantsHeaderInSafeArea:(BOOL)a3
{
  if (self->_wantsHeaderInSafeArea != a3)
  {
    self->_wantsHeaderInSafeArea = a3;
    [(PXPhotosLayout *)self _invalidateHeaderMeasurements];

    [(PXPhotosLayout *)self _invalidateLocalSpritesAlpha];
  }
}

- (void)setStatusBarHeight:(double)a3
{
  if (self->_statusBarHeight != a3)
  {
    self->_statusBarHeight = a3;
    [(PXPhotosLayout *)self _invalidateHeaderMeasurements];
  }
}

- (void)setSectionBodyProvider:(id)a3
{
  v5 = a3;
  if (self->_sectionBodyProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_sectionBodyProvider, a3);
    [(PXPhotosLayout *)self _invalidateSectionedLayout];
    v5 = v6;
  }
}

- (void)setGlobalHeaderProvider:(id)a3
{
  v5 = a3;
  if (self->_globalHeaderProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_globalHeaderProvider, a3);
    [(PXPhotosLayout *)self _invalidateGlobalHeaderLayout];
    [(PXPhotosLayout *)self _invalidateTopHeaderLayout];
    [(PXPhotosLayout *)self _invalidateSectionedLayout];
    v5 = v6;
  }
}

- (void)setSectionHeaderProvider:(id)a3
{
  v5 = a3;
  if (self->_sectionHeaderProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_sectionHeaderProvider, a3);
    self->_headerProviderRespondsTo.createTopHeaderLayoutForDataSource = objc_opt_respondsToSelector() & 1;
    self->_headerProviderRespondsTo.topHeaderLayoutDidChangeDataSource = objc_opt_respondsToSelector() & 1;
    self->_headerProviderRespondsTo.configureTopHeaderLayout = objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      [(PXPhotosSectionHeaderLayoutProvider *)v6 setTopHeaderInvalidationDelegate:self];
    }

    [(PXPhotosLayout *)self _invalidateTopHeaderLayout];
    [(PXPhotosLayout *)self _invalidateSectionedLayout];
    v5 = v6;
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
  v3 = [(PXPhotosLayout *)self viewModel];
  v4 = [v3 currentLens];
  v5 = [v4 ignoresTopSafeAreaInset];

  v6 = 0.0;
  v7 = 0.0;
  if ((v5 & 1) == 0)
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

- (void)setFooterView:(id)a3
{
  v5 = a3;
  if (self->_footerView != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_footerView, a3);
    [(PXPhotosLayout *)self _performPreUpdateInvalidationDeferredIfNeeded:&__block_literal_global_7571];
    v5 = v6;
  }
}

- (void)setHeaderView:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (self->_headerView != v7)
  {
    v8 = v7;
    objc_storeStrong(&self->_headerView, a3);
    [(PXPhotosLayout *)self _invalidateHeaderAnimated:v4];
    v7 = v8;
  }
}

- (PXPhotosLayout)initWithViewModel:(id)a3 specManager:(id)a4 overlayController:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v32.receiver = self;
  v32.super_class = PXPhotosLayout;
  v12 = [(PXGStackLayout *)&v32 init];
  if (v12)
  {
    if ([v9 wantsSingleRowScrollingLayout])
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    [(PXGStackLayout *)v12 setAxis:v13];
    v14 = [(PXPhotosLayout *)v12 axGroup];
    [v14 setAxRole:3];

    v15 = [(PXPhotosLayout *)v12 axGroup];
    [v15 setAxIdentifier:@"photos_layout"];

    [(PXPhotosLayout *)v12 setContentSource:v12];
    [(PXGStackLayout *)v12 setSublayoutAlignmentDelegate:v12];
    objc_storeStrong(&v12->_viewModel, a3);
    [(PXPhotosViewModel *)v12->_viewModel registerChangeObserver:v12 context:ViewModelObservationContext_7497];
    objc_storeStrong(&v12->_specManager, a4);
    [(PXPhotosLayoutSpecManager *)v12->_specManager registerChangeObserver:v12 context:SpecManagerObservationContext];
    LODWORD(v16) = 1.0;
    v12->_titleBackgroundGradientResizableCapInsetsIndex = [(PXPhotosLayout *)v12 addResizableCapInsets:0.0, 0.0, v16, 0.0];
    objc_storeStrong(&v12->_overlayController, a5);
    v17 = objc_alloc_init(PXPhotosLayoutDefaultAnimationProvider);
    animationProvider = v12->_animationProvider;
    v12->_animationProvider = v17;

    v19 = objc_alloc(MEMORY[0x277D3CD80]);
    v20 = [v9 requiresLightTopBars];
    v21 = [(PXFeatureSpecManager *)v12->_specManager spec];
    v22 = 0.0;
    if (v20)
    {
      v22 = 1.0;
    }

    v23 = [v19 initWithValue:v22];
    alternateAppearanceMixAnimator = v12->_alternateAppearanceMixAnimator;
    v12->_alternateAppearanceMixAnimator = v23;

    [(PXNumberAnimator *)v12->_alternateAppearanceMixAnimator registerChangeObserver:v12 context:AlternateAppearanceMixAnimatorObservationContext];
    [(PXNumberAnimator *)v12->_alternateAppearanceMixAnimator setLabel:@"alternateAppearanceMixAnimator"];
    v25 = [v9 navBarStyle];
    LOBYTE(v26) = 0;
    if (v25 <= 6)
    {
      if (((1 << v25) & 0x76) != 0)
      {
        LOBYTE(v26) = 1;
      }

      else if (v25 == 3)
      {
        v26 = MEMORY[0x21CEE04B0]() ^ 1;
      }
    }

    v12->_managesHeaderSprites = v26;
    v12->_managesOnlyLegibilityGradientSprites = [v9 navBarStyle] == 7;
    v27 = [objc_alloc(MEMORY[0x277D3CD80]) initWithValue:1.0];
    headerFooterAlphaAnimator = v12->_headerFooterAlphaAnimator;
    v12->_headerFooterAlphaAnimator = v27;

    [(PXNumberAnimator *)v12->_headerFooterAlphaAnimator registerChangeObserver:v12 context:HeaderFooterAlphaAnimatorObservationContext];
    [(PXNumberAnimator *)v12->_headerFooterAlphaAnimator setLabel:@"headerFooterAlphaAnimator"];
    v12->_headerTitleDrawingOptions = 35;
    v29 = [v10 headerCustomizationModel];
    headerCustomizationModel = v12->_headerCustomizationModel;
    v12->_headerCustomizationModel = v29;

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