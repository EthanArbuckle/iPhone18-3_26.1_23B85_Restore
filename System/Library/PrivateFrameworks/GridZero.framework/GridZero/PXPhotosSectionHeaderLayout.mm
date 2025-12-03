@interface PXPhotosSectionHeaderLayout
- (BOOL)allowsInteraction;
- (BOOL)wantsButton;
- (BOOL)wantsChevron;
- (CGRect)axSpriteFrame;
- (CGSize)badgeSize;
- (CGSize)buttonTitleSize;
- (CGSize)finalTitleSize;
- (CGSize)subtitleSize;
- (NSString)axSpriteText;
- (PXPhotosLayoutSpec)spec;
- (PXPhotosSectionHeaderLayout)init;
- (PXPhotosSectionHeaderLayout)initWithSpec:(id)spec;
- (id)axContentInfoAtSpriteIndex:(unsigned int)index;
- (id)axSpriteIndexes;
- (id)axSpriteIndexesInRect:(CGRect)rect;
- (id)axVisibleSpriteIndexes;
- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)hitTestResultForSpriteIndex:(unsigned int)index;
- (id)imageConfigurationAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)stringAtIndex:(unsigned int)index inLayout:(id)layout;
- (id)stringAttributesAtIndex:(unsigned int)index inLayout:(id)layout;
- (void)_invalidateAttributes;
- (void)_invalidateBadgeMediaVersion;
- (void)_invalidateButtonTitleMediaVersion;
- (void)_invalidateContent;
- (void)_invalidateFinalTitle;
- (void)_invalidateFinalTitleMediaVersion;
- (void)_invalidateRelativeOffsetAlpha;
- (void)_invalidateSpritesAlpha;
- (void)_invalidateSubtitleMediaVersion;
- (void)_updateAttributes;
- (void)_updateContent;
- (void)_updateFinalTitle;
- (void)_updateRelativeOffsetAlpha;
- (void)_updateSpritesAlpha;
- (void)contentSizeDidChange;
- (void)didUpdate;
- (void)displayScaleDidChange;
- (void)floatingOffsetDidChange;
- (void)referenceSizeDidChange;
- (void)safeAreaInsetsDidChange;
- (void)setAssetCollectionReference:(id)reference;
- (void)setBadgeAttributes:(id)attributes;
- (void)setBadgeTitle:(id)title;
- (void)setButtonTitle:(id)title;
- (void)setButtonTitleAttributes:(id)attributes;
- (void)setDividerColor:(id)color;
- (void)setFinalTitle:(id)title;
- (void)setFinalTitleAttributes:(id)attributes;
- (void)setFinalTitleLightGradientAttributess:(id)attributess;
- (void)setIsBadgeVisible:(BOOL)visible;
- (void)setRelativeOffsetAlpha:(double)alpha;
- (void)setShowLegibilityGradient:(BOOL)gradient;
- (void)setSpec:(id)spec;
- (void)setSubtitle:(id)subtitle;
- (void)setSubtitleAttributes:(id)attributes;
- (void)setTitle:(id)title;
- (void)update;
- (void)viewEnvironmentDidChange;
- (void)visibleRectDidChange;
- (void)willUpdate;
@end

@implementation PXPhotosSectionHeaderLayout

- (NSString)axSpriteText
{
  axSpriteText = self->_axSpriteText;
  if (!axSpriteText)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    title = [(PXPhotosSectionHeaderLayout *)self title];

    if (title)
    {
      title2 = [(PXPhotosSectionHeaderLayout *)self title];
      [v4 addObject:title2];
    }

    subtitle = [(PXPhotosSectionHeaderLayout *)self subtitle];

    if (subtitle)
    {
      subtitle2 = [(PXPhotosSectionHeaderLayout *)self subtitle];
      [v4 addObject:subtitle2];
    }

    v9 = [v4 componentsJoinedByString:@" "];
    v10 = self->_axSpriteText;
    self->_axSpriteText = v9;

    axSpriteText = self->_axSpriteText;
  }

  return axSpriteText;
}

- (CGRect)axSpriteFrame
{
  [(PXPhotosSectionHeaderLayout *)self geometryForSpriteAtIndex:2];
  PXRectWithCenterAndSize();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PXPhotosSectionHeaderLayout *)self geometryForSpriteAtIndex:6];
  PXRectWithCenterAndSize();
  v24 = v12;
  v25 = v11;
  v14 = v13;
  v16 = v15;
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  MinX = CGRectGetMinX(v26);
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  MinY = CGRectGetMinY(v27);
  v28.origin.y = v24;
  v28.origin.x = v25;
  v28.size.width = v14;
  v28.size.height = v16;
  v19 = CGRectGetMaxX(v28) - MinX;
  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v8;
  v29.size.height = v10;
  Height = CGRectGetHeight(v29);
  v21 = MinX;
  v22 = MinY;
  v23 = v19;
  result.size.height = Height;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)axSpriteIndexesInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(PXPhotosSectionHeaderLayout *)self axSpriteFrame];
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  if (CGRectIntersectsRect(v11, v12))
  {
    v8 = self->_axSpriteIndexes;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x277CCAA78]);
  }

  return v8;
}

- (id)axContentInfoAtSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  if (index != 9)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSectionHeaderLayout.m" lineNumber:732 description:@"Unexpected sprite index found"];
  }

  [(PXPhotosSectionHeaderLayout *)self axSpriteFrame];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  MidX = CGRectGetMidX(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  MidY = CGRectGetMidY(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v21 = CGRectGetWidth(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v11 = CGRectGetHeight(v27);
  v12.f64[0] = v21;
  v12.f64[1] = v11;
  v13 = vcvt_f32_f64(v12);
  axSpriteText = [(PXPhotosSectionHeaderLayout *)self axSpriteText];
  mEMORY[0x277D73CD8] = [MEMORY[0x277D73CD8] sharedPool];
  v16 = [mEMORY[0x277D73CD8] checkOutReusableObjectWithReuseIdentifier:*MEMORY[0x277D73D08]];

  [v16 setSpriteIndex:v3];
  *v22 = MidX;
  *&v22[1] = MidY;
  v22[2] = 0;
  v22[3] = v13;
  [v16 setSpriteGeometry:v22];
  axGroup = [(PXPhotosSectionHeaderLayout *)self axGroup];
  [v16 setAxContainingGroup:axGroup];

  [v16 setContent:axSpriteText ofContentKind:3];

  return v16;
}

- (id)axVisibleSpriteIndexes
{
  [(PXPhotosSectionHeaderLayout *)self visibleRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PXPhotosSectionHeaderLayout *)self axSpriteFrame];
  v19.origin.x = v11;
  v19.origin.y = v12;
  v19.size.width = v13;
  v19.size.height = v14;
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  if (CGRectIntersectsRect(v18, v19))
  {
    v15 = [(NSIndexSet *)self->_axSpriteIndexes copy];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x277CCAA78]);
  }

  return v15;
}

- (id)axSpriteIndexes
{
  v2 = [(NSIndexSet *)self->_axSpriteIndexes copy];

  return v2;
}

- (id)imageConfigurationAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (index == 8)
  {
    spec = [(PXPhotosSectionHeaderLayout *)self spec];
    sectionHeaderSpec = [spec sectionHeaderSpec];
    legibilityGradientImageConfiguration = [sectionHeaderSpec legibilityGradientImageConfiguration];
  }

  else
  {
    if (index != 6)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSectionHeaderLayout.m" lineNumber:716 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    spec = [(PXPhotosSectionHeaderLayout *)self spec];
    sectionHeaderSpec = [spec sectionHeaderSpec];
    legibilityGradientImageConfiguration = [sectionHeaderSpec chevronImageConfiguration];
  }

  v11 = legibilityGradientImageConfiguration;

  return v11;
}

- (id)colorAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (index == 1)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    if (index)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSectionHeaderLayout.m" lineNumber:704 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    clearColor = [(PXPhotosSectionHeaderLayout *)self dividerColor];
  }

  v9 = clearColor;

  return v9;
}

- (id)stringAttributesAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if (index <= 3)
  {
    if (index == 2)
    {
      finalTitleAttributes = [(PXPhotosSectionHeaderLayout *)self finalTitleAttributes];
    }

    else
    {
      if (index != 3)
      {
        goto LABEL_15;
      }

      finalTitleAttributes = [(PXPhotosSectionHeaderLayout *)self finalTitleLightGradientAttributes];
    }
  }

  else
  {
    switch(index)
    {
      case 4u:
        finalTitleAttributes = [(PXPhotosSectionHeaderLayout *)self subtitleAttributes];
        break;
      case 5u:
        finalTitleAttributes = [(PXPhotosSectionHeaderLayout *)self badgeAttributes];
        break;
      case 7u:
        finalTitleAttributes = [(PXPhotosSectionHeaderLayout *)self buttonTitleAttributes];
        break;
      default:
LABEL_15:
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSectionHeaderLayout.m" lineNumber:684 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

  v9 = finalTitleAttributes;

  return v9;
}

- (id)stringAtIndex:(unsigned int)index inLayout:(id)layout
{
  layoutCopy = layout;
  if ((index & 0xFFFFFFFE) == 2)
  {
    finalTitle = [(PXPhotosSectionHeaderLayout *)self finalTitle];
  }

  else
  {
    switch(index)
    {
      case 7u:
        finalTitle = [(PXPhotosSectionHeaderLayout *)self buttonTitle];
        break;
      case 5u:
        finalTitle = [(PXPhotosSectionHeaderLayout *)self badgeTitle];
        break;
      case 4u:
        finalTitle = [(PXPhotosSectionHeaderLayout *)self subtitle];
        break;
      default:
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSectionHeaderLayout.m" lineNumber:668 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

  v9 = finalTitle;
  if (finalTitle)
  {
    v10 = finalTitle;
  }

  else
  {
    v10 = &stru_282C2F4D0;
  }

  v11 = v10;

  return v10;
}

- (void)viewEnvironmentDidChange
{
  v3.receiver = self;
  v3.super_class = PXPhotosSectionHeaderLayout;
  [(PXPhotosSectionHeaderLayout *)&v3 viewEnvironmentDidChange];
  [(PXPhotosSectionHeaderLayout *)self _invalidateSpritesAlpha];
}

- (void)displayScaleDidChange
{
  v3.receiver = self;
  v3.super_class = PXPhotosSectionHeaderLayout;
  [(PXPhotosSectionHeaderLayout *)&v3 displayScaleDidChange];
  [(PXPhotosSectionHeaderLayout *)self _invalidateContent];
}

- (void)referenceSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXPhotosSectionHeaderLayout;
  [(PXPhotosSectionHeaderLayout *)&v3 referenceSizeDidChange];
  [(PXPhotosSectionHeaderLayout *)self _invalidateFinalTitleMediaVersion];
  [(PXPhotosSectionHeaderLayout *)self _invalidateSubtitleMediaVersion];
  [(PXPhotosSectionHeaderLayout *)self _invalidateContent];
}

- (void)_invalidateButtonTitleMediaVersion
{
  self->_buttonTitleSize = *MEMORY[0x277D3CFE0];
  ++self->_buttonVersion;
  [(PXPhotosSectionHeaderLayout *)self _invalidateContent];
}

- (void)_invalidateBadgeMediaVersion
{
  self->_badgeSize = *MEMORY[0x277D3CFE0];
  ++self->_badgeVersion;
  [(PXPhotosSectionHeaderLayout *)self _invalidateContent];
}

- (void)_invalidateSubtitleMediaVersion
{
  self->_subtitleSize = *MEMORY[0x277D3CFE0];
  ++self->_subtitleVersion;
  [(PXPhotosSectionHeaderLayout *)self _invalidateContent];
}

- (void)_invalidateFinalTitleMediaVersion
{
  self->_finalTitleSize = *MEMORY[0x277D3CFE0];
  ++self->_finalTitleVersion;
  [(PXPhotosSectionHeaderLayout *)self _invalidateContent];
}

- (void)_updateSpritesAlpha
{
  spec = [(PXPhotosSectionHeaderLayout *)self spec];
  sectionHeaderSpec = [spec sectionHeaderSpec];

  [(PXPhotosSectionHeaderLayout *)self relativeOffsetAlpha];
  v6 = v5;
  v7 = 0;
  if ([(PXPhotosSectionHeaderLayout *)self wantsChevron])
  {
    [sectionHeaderSpec chevronAlpha];
    v7 = v8;
  }

  isBadgeVisible = [(PXPhotosSectionHeaderLayout *)self isBadgeVisible];
  if ([(PXPhotosSectionHeaderLayout *)self wantsButton])
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  if ([(PXPhotosSectionHeaderLayout *)self showLegibilityGradient])
  {
    v11 = 0.4;
  }

  else
  {
    v11 = 0.0;
  }

  [(PXPhotosSectionHeaderLayout *)self floatingOffset];
  [(PXPhotosSectionHeaderLayout *)self contentSize];
  PXClamp();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__PXPhotosSectionHeaderLayout__updateSpritesAlpha__block_invoke;
  v13[3] = &unk_278297898;
  v13[4] = self;
  v13[5] = v6;
  v13[6] = v12;
  *&v13[7] = isBadgeVisible;
  v13[8] = v7;
  *&v13[9] = v10;
  *&v13[10] = v11;
  [(PXPhotosSectionHeaderLayout *)self modifySpritesInRange:0x900000000 state:v13];
}

float __50__PXPhotosSectionHeaderLayout__updateSpritesAlpha__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, float *a4)
{
  v6 = *(a1 + 40);
  *a4 = v6;
  if ([*(a1 + 32) showLegibilityGradient] && (objc_msgSend(*(a1 + 32), "viewEnvironment"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "userInterfaceStyle"), v7, v8 == 1))
  {
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = 1.0 - v9;
    a4[80] = v11;
    v12 = v9;
    a4[120] = v12;
    v13 = v10;
  }

  else
  {
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v13 = v10;
    a4[80] = v13;
    a4[120] = 0.0;
  }

  a4[160] = v13;
  v14 = *(a1 + 64);
  v15 = v10 * *(a1 + 56);
  a4[200] = v15;
  v16 = v10 * v14;
  a4[240] = v16;
  v17 = *(a1 + 80);
  v18 = v10 * *(a1 + 72);
  a4[280] = v18;
  result = v17 * v9;
  a4[320] = result;
  return result;
}

- (void)_invalidateSpritesAlpha
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
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionHeaderLayout _invalidateSpritesAlpha]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosSectionHeaderLayout.m" lineNumber:568 description:{@"invalidating %lu after it already has been updated", 16}];

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

    [(PXPhotosSectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)_updateRelativeOffsetAlpha
{
  spec = [(PXPhotosSectionHeaderLayout *)self spec];
  sectionHeaderSpec = [spec sectionHeaderSpec];
  titleShouldFadeOnScroll = [sectionHeaderSpec titleShouldFadeOnScroll];

  if (titleShouldFadeOnScroll)
  {
    [(PXPhotosSectionHeaderLayout *)self safeAreaInsets];
    v7 = v6;
    [(PXPhotosSectionHeaderLayout *)self visibleRect];
    v9 = v8;
    isFirstSectionHeader = [(PXPhotosSectionHeaderLayout *)self isFirstSectionHeader];
    v11 = 0.0;
    if (!isFirstSectionHeader)
    {
      [(PXPhotosSectionHeaderLayout *)self contentSize];
      v11 = 0.0;
      if (v12 > 0.0)
      {
        [(PXPhotosSectionHeaderLayout *)self contentSize];
        v11 = (-v7 - v9) / (v13 * 1.5);
      }
    }

    v14 = fmin(v11, 1.0);
    if (v14 < 0.0)
    {
      v14 = 0.0;
    }

    [(PXPhotosSectionHeaderLayout *)self setRelativeOffsetAlpha:v14];
  }
}

- (void)_invalidateRelativeOffsetAlpha
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
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionHeaderLayout _invalidateRelativeOffsetAlpha]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosSectionHeaderLayout.m" lineNumber:556 description:{@"invalidating %lu after it already has been updated", 8}];

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

    [(PXPhotosSectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)_updateContent
{
  if ([(PXPhotosSectionHeaderLayout *)self localNumberOfSprites]!= 9)
  {
    [(PXPhotosSectionHeaderLayout *)self applySpriteChangeDetails:0 countAfterChanges:9 initialState:0 modifyState:0];
  }

  wantsButton = [(PXPhotosSectionHeaderLayout *)self wantsButton];
  [(PXPhotosSectionHeaderLayout *)self safeAreaInsets];
  v5 = v4;
  spec = [(PXPhotosSectionHeaderLayout *)self spec];
  sectionHeaderSpec = [spec sectionHeaderSpec];

  [sectionHeaderSpec minimumHeaderContentHeight];
  v9 = v8;
  [sectionHeaderSpec titleHorizontalInset];
  v11 = v10;
  subtitle = [(PXPhotosSectionHeaderLayout *)self subtitle];
  v13 = [subtitle length];
  v14 = 0.0;
  v122 = 0.0;
  if (v13)
  {
    [sectionHeaderSpec titleSubtitleHorizontalSpacing];
  }

  v114 = v14;

  [sectionHeaderSpec dividerBaselineToTextBaselineSpacing];
  v16 = v15;
  if ([(PXPhotosSectionHeaderLayout *)self wantsChevron])
  {
    [sectionHeaderSpec chevronSpacing];
    v122 = v17;
  }

  wantsChevron = [(PXPhotosSectionHeaderLayout *)self wantsChevron];
  v19 = MEMORY[0x277CBF3A8];
  if (wantsChevron)
  {
    [sectionHeaderSpec chevronSize];
    v127 = v20;
    v125 = v21;
  }

  else
  {
    v127 = *MEMORY[0x277CBF3A8];
    v125 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v109 = v9;
  v117 = v16;
  if (wantsButton)
  {
    [sectionHeaderSpec buttonSpacing];
    v126 = v22;
    [(PXPhotosSectionHeaderLayout *)self buttonTitleSize];
    v24 = v23;
    v108 = v25;
  }

  else
  {
    v24 = *v19;
    v108 = v19[1];
    v126 = 0.0;
  }

  [sectionHeaderSpec padding];
  [(PXPhotosSectionHeaderLayout *)self safeAreaInsets];
  PXEdgeInsetsAdd();
  v27 = v26;
  v29 = v28;
  v106 = v30;
  v32 = v31;
  titleFont = [sectionHeaderSpec titleFont];
  subtitleFont = [sectionHeaderSpec subtitleFont];
  badgeFont = [sectionHeaderSpec badgeFont];
  buttonFont = [sectionHeaderSpec buttonFont];
  [(PXPhotosSectionHeaderLayout *)self displayScale];
  v38 = v37;
  isBadgeVisible = [(PXPhotosSectionHeaderLayout *)self isBadgeVisible];
  v40 = v5 + v11;
  [(PXPhotosSectionHeaderLayout *)self referenceSize];
  v107 = v41 - v29 - v32;
  v42 = v107 + v11 * -2.0;
  v105 = v38;
  v96 = v38;
  PXFloatRoundToPixel();
  v44 = v43;
  v124 = v24;
  v121 = v42;
  if (isBadgeVisible)
  {
    [(PXPhotosSectionHeaderLayout *)self badgeSize];
    v47 = v46;
    if (v45 >= v42 - v127 - v122 - v44 - v114 - v126 - v24)
    {
      v48 = v42 - v127 - v122 - v44 - v114 - v126 - v24;
    }

    else
    {
      v48 = v45;
    }

    v164.size.height = 1.0;
    v164.origin.x = v5 + v11;
    v49 = v27;
    v164.origin.y = v27;
    v164.size.width = v107 + v11 * -2.0;
    v50 = v117;
    v51 = v117 + CGRectGetMaxY(v164);
    [badgeFont ascender];
    v165.origin.y = v51 - v52;
    v165.origin.x = v40;
    y = v165.origin.y;
    v104 = v47;
    v120 = v48;
    v165.size.width = v48;
    v165.size.height = v47;
    MaxX = CGRectGetMaxX(v165);
    v102 = v40;
  }

  else
  {
    v49 = v27;
    v102 = *MEMORY[0x277CBF3A0];
    y = *(MEMORY[0x277CBF3A0] + 8);
    v120 = *(MEMORY[0x277CBF3A0] + 16);
    v104 = *(MEMORY[0x277CBF3A0] + 24);
    MaxX = v40;
    v50 = v117;
  }

  v53 = v40;
  [(PXPhotosSectionHeaderLayout *)self finalTitleSize];
  v55 = v54;
  v57 = v56;
  v118 = v53;
  v119 = v49;
  v110 = v56;
  if ([sectionHeaderSpec minimizeTitleBottomPadding])
  {
    v58 = v109 - v57 + -7.0;
    rect = 1.0;
    v59 = v121;
  }

  else
  {
    rect = 1.0;
    v166.size.height = 1.0;
    v166.origin.x = v53;
    v166.origin.y = v49;
    v59 = v121;
    v166.size.width = v121;
    v60 = v50 + CGRectGetMaxY(v166);
    [titleFont ascender];
    v58 = v60 - v61;
  }

  v62 = v120;
  if (v120 < v44)
  {
    v62 = v44;
  }

  v63 = v59 - v127 - v122 - v62 - v114 - v126 - v124;
  if (v55 >= v63)
  {
    v64 = v63;
  }

  else
  {
    v64 = v55;
  }

  [(PXPhotosSectionHeaderLayout *)self subtitleSize];
  v167.origin.x = MaxX;
  v167.origin.y = v58;
  v167.size.width = v64;
  v167.size.height = v110;
  CGRectGetMaxX(v167);
  v168.origin.x = v118;
  v168.origin.y = v119;
  v168.size.width = v59;
  v168.size.height = rect;
  CGRectGetMaxY(v168);
  [subtitleFont ascender];
  PXPointCeilingToPixel();
  v115 = v65;
  v67 = v66;
  PXSizeCeilingToPixel();
  v111 = v69;
  v113 = v68;
  PXPointCeilingToPixel();
  v71 = v70;
  v100 = v72;
  v101 = v70;
  v73 = v72;
  PXSizeCeilingToPixel();
  v75 = v74;
  v98 = v76;
  v99 = v74;
  v77 = v76;
  v78 = v67;
  if (v67 <= v58)
  {
    v79 = 0.0;
  }

  else
  {
    v79 = 1.0 / v96;
  }

  v80 = v71;
  v81 = v73;
  v123 = v122 + CGRectGetMaxX(*(&v75 - 2));
  v169.origin.x = v118;
  v169.origin.y = v119;
  v169.size.width = v121;
  v169.size.height = rect;
  MaxY = CGRectGetMaxY(v169);
  v170.size.height = v125;
  v170.origin.y = v79 + v117 + MaxY - v125;
  v97 = v170.origin.y;
  v170.origin.x = v123;
  v170.size.width = v127;
  v83 = v126 + CGRectGetMaxX(v170);
  v171.origin.x = v118;
  v171.origin.y = v119;
  v171.size.width = v121;
  v171.size.height = rect;
  v84 = v117 + CGRectGetMaxY(v171);
  [buttonFont ascender];
  v86 = v84 - v85;
  v172.origin.x = v115;
  v95 = v78;
  v172.origin.y = v78;
  v172.size.width = v113;
  v172.size.height = v111;
  CGRectGetMinX(v172);
  v173.origin.x = v115;
  v173.origin.y = v78;
  v173.size.width = v113;
  v173.size.height = v111;
  CGRectGetMinY(v173);
  v174.origin.x = v83;
  v174.origin.y = v86;
  v174.size.width = v124;
  v174.size.height = v108;
  CGRectGetMaxX(v174);
  v175.origin.x = v83;
  v175.origin.y = v86;
  v175.size.width = v124;
  v175.size.height = v108;
  CGRectGetMaxY(v175);
  PXRectWithEdges();
  x = v176.origin.x;
  v88 = v176.origin.y;
  width = v176.size.width;
  height = v176.size.height;
  v91 = CGRectGetMaxY(v176);
  v128[1] = 3221225472;
  v128[0] = MEMORY[0x277D85DD0];
  v128[2] = __45__PXPhotosSectionHeaderLayout__updateContent__block_invoke;
  v128[3] = &unk_278297870;
  if (v91 < v109)
  {
    v91 = v109;
  }

  v92 = v106 + v91;
  v131 = v118;
  v132 = v119;
  v133 = v121;
  v134 = 0x3FF0000000000000;
  v161 = v105;
  v129 = sectionHeaderSpec;
  selfCopy = self;
  v135 = x;
  v136 = v88;
  v137 = width;
  v138 = height;
  v139 = v115;
  v140 = v95;
  v141 = v113;
  v142 = v111;
  v143 = v101;
  v144 = v100;
  v145 = v99;
  v146 = v98;
  v147 = v102;
  v148 = y;
  v149 = v120;
  v150 = v104;
  v162 = isBadgeVisible;
  v151 = v123;
  v152 = v97;
  v153 = v127;
  v154 = v125;
  v155 = v83;
  v156 = v86;
  v157 = v124;
  v158 = v108;
  v163 = wantsButton;
  v159 = v107;
  v160 = v106 + v91;
  v93 = sectionHeaderSpec;
  [(PXPhotosSectionHeaderLayout *)self modifySpritesInRange:0x900000000 state:v128];
  if ([(PXPhotosSectionHeaderLayout *)self isFirstSectionHeader])
  {
    v94 = 3.0;
  }

  else
  {
    v94 = v92;
  }

  [(PXPhotosSectionHeaderLayout *)self setContentSize:v107, v94];
}

float32x2_t __45__PXPhotosSectionHeaderLayout__updateContent__block_invoke(uint64_t a1, uint64_t a2, float32x2_t *a3, uint64_t a4, float32x2_t *a5)
{
  v9 = [*(a1 + 32) dividerLineVisible];
  v10 = MEMORY[0x277D73D78];
  if (v9)
  {
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    v124.origin.x = v11;
    v124.origin.y = v12;
    v124.size.width = v13;
    v124.size.height = v14;
    MidX = CGRectGetMidX(v124);
    v125.origin.x = v11;
    v125.origin.y = v12;
    v125.size.width = v13;
    v125.size.height = v14;
    MidY = CGRectGetMidY(v125);
    v126.origin.x = v11;
    v126.origin.y = v12;
    v126.size.width = v13;
    v126.size.height = v14;
    Width = CGRectGetWidth(v126);
    v127.origin.x = v11;
    v127.origin.y = v12;
    v127.size.width = v13;
    v127.size.height = v14;
    Height = CGRectGetHeight(v127);
    v18.f64[0] = Width;
    v18.f64[1] = Height;
    *a3 = MidX;
    *&a3[1] = MidY;
    a3[2] = 0xBFF0000000000000;
    a3[3] = vcvt_f32_f64(v18);
    v19 = v10[1];
    *a4 = *v10;
    *(a4 + 16) = v19;
    v20 = v10[5];
    *(a4 + 64) = v10[4];
    *(a4 + 80) = v20;
    v21 = v10[3];
    *(a4 + 32) = v10[2];
    *(a4 + 48) = v21;
    v22 = v10[9];
    *(a4 + 128) = v10[8];
    *(a4 + 144) = v22;
    v23 = v10[7];
    *(a4 + 96) = v10[6];
    *(a4 + 112) = v23;
    a5->i8[1] = 5;
    a5[1] = vmul_n_f32(a3[3], *(a1 + 288));
    a5[4].i16[0] = *(*(a1 + 40) + 872);
  }

  v24 = *(a1 + 80);
  v25 = *(a1 + 88);
  v26 = *(a1 + 96);
  v27 = *(a1 + 104);
  v128.origin.x = v24;
  v128.origin.y = v25;
  v128.size.width = v26;
  v128.size.height = v27;
  v28 = CGRectGetMidX(v128);
  v129.origin.x = v24;
  v129.origin.y = v25;
  v129.size.width = v26;
  v129.size.height = v27;
  v29 = CGRectGetMidY(v129);
  v130.origin.x = v24;
  v130.origin.y = v25;
  v130.size.width = v26;
  v130.size.height = v27;
  v122 = CGRectGetWidth(v130);
  v131.origin.x = v24;
  v131.origin.y = v25;
  v131.size.width = v26;
  v131.size.height = v27;
  v30 = CGRectGetHeight(v131);
  v31.f64[0] = v122;
  v31.f64[1] = v30;
  *&a3[4] = v28;
  *&a3[5] = v29;
  a3[6] = 0;
  a3[7] = vcvt_f32_f64(v31);
  v120 = *v10;
  v123 = v10[1];
  *(a4 + 160) = *v10;
  *(a4 + 176) = v123;
  v118 = v10[4];
  v119 = v10[5];
  *(a4 + 224) = v118;
  *(a4 + 240) = v119;
  v116 = v10[2];
  v117 = v10[3];
  *(a4 + 192) = v116;
  *(a4 + 208) = v117;
  v114 = v10[8];
  v115 = v10[9];
  *(a4 + 288) = v114;
  *(a4 + 304) = v115;
  v112 = v10[6];
  v113 = v10[7];
  *(a4 + 256) = v112;
  *(a4 + 272) = v113;
  a5[5].i8[1] = 5;
  a5[6] = vmul_n_f32(a3[7], *(a1 + 288));
  v32 = *(a1 + 112);
  v33 = *(a1 + 120);
  v34 = *(a1 + 128);
  v35 = *(a1 + 136);
  v36 = v32;
  v31.f64[0] = v33;
  v37 = v34;
  v38 = v35;
  v39 = CGRectGetMidX(*(&v31 - 8));
  v132.origin.x = v32;
  v132.origin.y = v33;
  v132.size.width = v34;
  v132.size.height = v35;
  v40 = CGRectGetMidY(v132);
  v133.origin.x = v32;
  v133.origin.y = v33;
  v133.size.width = v34;
  v133.size.height = v35;
  v105 = CGRectGetWidth(v133);
  v134.origin.x = v32;
  v134.origin.y = v33;
  v134.size.width = v34;
  v134.size.height = v35;
  v41 = CGRectGetHeight(v134);
  v42.f64[0] = v105;
  v42.f64[1] = v41;
  *&a3[8] = v39;
  *&a3[9] = v40;
  a3[10] = 0xBFF0000000000000;
  a3[11] = vcvt_f32_f64(v42);
  *(a4 + 320) = v120;
  *(a4 + 336) = v123;
  *(a4 + 384) = v118;
  *(a4 + 400) = v119;
  *(a4 + 352) = v116;
  *(a4 + 368) = v117;
  *(a4 + 448) = v114;
  *(a4 + 464) = v115;
  *(a4 + 416) = v112;
  *(a4 + 432) = v113;
  a5[10].i8[1] = 3;
  a5[11] = vmul_n_f32(a3[11], *(a1 + 288));
  a5[14].i16[0] = *(*(a1 + 40) + 874);
  v43 = *(a1 + 112);
  v44 = *(a1 + 120);
  v45 = *(a1 + 128);
  v46 = *(a1 + 136);
  v47 = v43;
  v42.f64[0] = v44;
  v48 = v45;
  v49 = v46;
  v50 = CGRectGetMidX(*(&v42 - 8));
  v135.origin.x = v43;
  v135.origin.y = v44;
  v135.size.width = v45;
  v135.size.height = v46;
  v51 = CGRectGetMidY(v135);
  v136.origin.x = v43;
  v136.origin.y = v44;
  v136.size.width = v45;
  v136.size.height = v46;
  v106 = CGRectGetWidth(v136);
  v137.origin.x = v43;
  v137.origin.y = v44;
  v137.size.width = v45;
  v137.size.height = v46;
  v52 = CGRectGetHeight(v137);
  v53.f64[0] = v106;
  v53.f64[1] = v52;
  *&a3[12] = v50;
  *&a3[13] = v51;
  a3[14] = 0xBFF0000000000000;
  a3[15] = vcvt_f32_f64(v53);
  *(a4 + 480) = v120;
  *(a4 + 496) = v123;
  *(a4 + 544) = v118;
  *(a4 + 560) = v119;
  *(a4 + 512) = v116;
  *(a4 + 528) = v117;
  *(a4 + 608) = v114;
  *(a4 + 624) = v115;
  *(a4 + 576) = v112;
  *(a4 + 592) = v113;
  *(a4 + 480) = 0;
  a5[15].i8[1] = 3;
  a5[16] = vmul_n_f32(a3[11], *(a1 + 288));
  a5[19].i16[0] = *(*(a1 + 40) + 874);
  v54 = *(a1 + 144);
  v55 = *(a1 + 152);
  v56 = *(a1 + 160);
  v57 = *(a1 + 168);
  v58 = v54;
  v53.f64[0] = v55;
  v59 = v56;
  v60 = v57;
  v61 = CGRectGetMidX(*(&v53 - 8));
  v138.origin.x = v54;
  v138.origin.y = v55;
  v138.size.width = v56;
  v138.size.height = v57;
  v62 = CGRectGetMidY(v138);
  v139.origin.x = v54;
  v139.origin.y = v55;
  v139.size.width = v56;
  v139.size.height = v57;
  v107 = CGRectGetWidth(v139);
  v140.origin.x = v54;
  v140.origin.y = v55;
  v140.size.width = v56;
  v140.size.height = v57;
  v63 = CGRectGetHeight(v140);
  v64.f64[0] = v107;
  v64.f64[1] = v63;
  *&a3[16] = v61;
  *&a3[17] = v62;
  a3[18] = 0xBFF0000000000000;
  a3[19] = vcvt_f32_f64(v64);
  *(a4 + 640) = v120;
  *(a4 + 656) = v123;
  *(a4 + 704) = v118;
  *(a4 + 720) = v119;
  *(a4 + 672) = v116;
  *(a4 + 688) = v117;
  *(a4 + 768) = v114;
  *(a4 + 784) = v115;
  *(a4 + 736) = v112;
  *(a4 + 752) = v113;
  a5[20].i8[1] = 3;
  a5[21] = vmul_n_f32(a3[19], *(a1 + 288));
  a5[24].i16[0] = *(*(a1 + 40) + 876);
  v65 = *(a1 + 176);
  v66 = *(a1 + 184);
  v67 = *(a1 + 192);
  v68 = *(a1 + 200);
  v69 = v65;
  v64.f64[0] = v66;
  v70 = v67;
  v71 = v68;
  v72 = CGRectGetMidX(*(&v64 - 8));
  v141.origin.x = v65;
  v141.origin.y = v66;
  v141.size.width = v67;
  v141.size.height = v68;
  v73 = CGRectGetMidY(v141);
  v142.origin.x = v65;
  v142.origin.y = v66;
  v142.size.width = v67;
  v142.size.height = v68;
  v108 = CGRectGetWidth(v142);
  v143.origin.x = v65;
  v143.origin.y = v66;
  v143.size.width = v67;
  v143.size.height = v68;
  v74 = CGRectGetHeight(v143);
  v75.f64[0] = v108;
  v75.f64[1] = v74;
  *&a3[20] = v72;
  *&a3[21] = v73;
  a3[22] = 0xBFF0000000000000;
  a3[23] = vcvt_f32_f64(v75);
  *(a4 + 800) = v120;
  *(a4 + 816) = v123;
  *(a4 + 864) = v118;
  *(a4 + 880) = v119;
  *(a4 + 832) = v116;
  *(a4 + 848) = v117;
  *(a4 + 928) = v114;
  *(a4 + 944) = v115;
  *(a4 + 896) = v112;
  *(a4 + 912) = v113;
  if (*(a1 + 292))
  {
    v76 = 3;
  }

  else
  {
    v76 = 0;
  }

  a5[25].i8[1] = v76;
  a5[26] = vmul_n_f32(a3[23], *(a1 + 288));
  a5[29].i16[0] = *(*(a1 + 40) + 878);
  v77 = *(a1 + 208);
  v78 = *(a1 + 216);
  v79 = *(a1 + 224);
  v80 = *(a1 + 232);
  v144.origin.x = v77;
  v144.origin.y = v78;
  v144.size.width = v79;
  v144.size.height = v80;
  v81 = CGRectGetMidX(v144);
  v145.origin.x = v77;
  v145.origin.y = v78;
  v145.size.width = v79;
  v145.size.height = v80;
  v82 = CGRectGetMidY(v145);
  v146.origin.x = v77;
  v146.origin.y = v78;
  v146.size.width = v79;
  v146.size.height = v80;
  v109 = CGRectGetWidth(v146);
  v147.origin.x = v77;
  v147.origin.y = v78;
  v147.size.width = v79;
  v147.size.height = v80;
  v83 = CGRectGetHeight(v147);
  v84.f64[0] = v109;
  v84.f64[1] = v83;
  *&a3[24] = v81;
  *&a3[25] = v82;
  a3[26] = 0xBFF0000000000000;
  a3[27] = vcvt_f32_f64(v84);
  *(a4 + 960) = v120;
  *(a4 + 976) = v123;
  *(a4 + 1040) = v119;
  *(a4 + 1008) = v117;
  *(a4 + 1024) = v118;
  *(a4 + 992) = v116;
  *(a4 + 1104) = v115;
  *(a4 + 1088) = v114;
  *(a4 + 1072) = v113;
  *(a4 + 1056) = v112;
  a5[30].i8[1] = 1;
  v85 = [*(a1 + 40) spec];
  v86 = [v85 sectionHeaderSpec];
  v87 = [v86 chevronImageConfiguration];
  v88 = [v87 imageName];
  a5[34].i16[0] = [v88 hash];

  v89 = *(a1 + 240);
  v90 = *(a1 + 248);
  v91 = *(a1 + 256);
  v92 = *(a1 + 264);
  v148.origin.x = v89;
  v148.origin.y = v90;
  v148.size.width = v91;
  v148.size.height = v92;
  v93 = CGRectGetMidX(v148);
  v149.origin.x = v89;
  v149.origin.y = v90;
  v149.size.width = v91;
  v149.size.height = v92;
  v94 = CGRectGetMidY(v149);
  v150.origin.x = v89;
  v150.origin.y = v90;
  v150.size.width = v91;
  v150.size.height = v92;
  v110 = CGRectGetWidth(v150);
  v151.origin.x = v89;
  v151.origin.y = v90;
  v151.size.width = v91;
  v151.size.height = v92;
  v95 = CGRectGetHeight(v151);
  v96.f64[0] = v110;
  v96.f64[1] = v95;
  *&a3[28] = v93;
  *&a3[29] = v94;
  a3[30] = 0xBFF0000000000000;
  a3[31] = vcvt_f32_f64(v96);
  *(a4 + 1120) = v120;
  *(a4 + 1136) = v123;
  *(a4 + 1200) = v119;
  *(a4 + 1184) = v118;
  *(a4 + 1168) = v117;
  *(a4 + 1152) = v116;
  *(a4 + 1264) = v115;
  *(a4 + 1248) = v114;
  *(a4 + 1232) = v113;
  *(a4 + 1216) = v112;
  if (*(a1 + 293))
  {
    v97 = 3;
  }

  else
  {
    v97 = 0;
  }

  a5[35].i8[1] = v97;
  a5[36] = vmul_n_f32(a3[31], *(a1 + 288));
  a5[39].i16[0] = *(*(a1 + 40) + 880);
  v98 = *(a1 + 272);
  v99 = *(a1 + 280);
  v152.origin.x = 0.0;
  v152.origin.y = 0.0;
  v152.size.width = v98;
  v152.size.height = v99;
  v100 = CGRectGetMidX(v152);
  v153.origin.x = 0.0;
  v153.origin.y = 0.0;
  v153.size.width = v98;
  v153.size.height = v99;
  v101 = CGRectGetMidY(v153);
  v154.origin.x = 0.0;
  v154.origin.y = 0.0;
  v154.size.width = v98;
  v154.size.height = v99;
  v111 = CGRectGetWidth(v154);
  v155.origin.x = 0.0;
  v155.origin.y = 0.0;
  v155.size.width = v98;
  v155.size.height = v99;
  v102 = CGRectGetHeight(v155);
  v103.f64[0] = v111;
  v103.f64[1] = v102;
  *&a3[32] = v100;
  *&a3[33] = v101;
  a3[34] = 0;
  a3[35] = vcvt_f32_f64(v103);
  *(a4 + 1280) = v120;
  *(a4 + 1296) = v123;
  *(a4 + 1360) = v119;
  *(a4 + 1344) = v118;
  *(a4 + 1328) = v117;
  *(a4 + 1312) = v116;
  *(a4 + 1424) = v115;
  *(a4 + 1408) = v114;
  *(a4 + 1392) = v113;
  *(a4 + 1376) = v112;
  *(a4 + 1348) = *(*(a1 + 40) + 882);
  *(a4 + 1280) = 0;
  a5[40].i16[0] = 256;
  result = vmul_n_f32(a3[35], *(a1 + 288));
  a5[41] = result;
  return result;
}

- (void)_invalidateContent
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
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionHeaderLayout _invalidateContent]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosSectionHeaderLayout.m" lineNumber:412 description:{@"invalidating %lu after it already has been updated", 4}];

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

    [(PXPhotosSectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)_updateAttributes
{
  v38[3] = *MEMORY[0x277D85DE8];
  spec = [(PXPhotosSectionHeaderLayout *)self spec];
  sectionHeaderSpec = [spec sectionHeaderSpec];

  dividerColor = [sectionHeaderSpec dividerColor];
  [(PXPhotosSectionHeaderLayout *)self setDividerColor:dividerColor];

  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v7 = [defaultParagraphStyle mutableCopy];

  [v7 setLineBreakMode:4];
  v35 = *MEMORY[0x277D740A8];
  v8 = v35;
  titleFont = [sectionHeaderSpec titleFont];
  v38[0] = titleFont;
  v36 = *MEMORY[0x277D740C0];
  v10 = v36;
  titleColor = [sectionHeaderSpec titleColor];
  v12 = *MEMORY[0x277D74118];
  v37 = *MEMORY[0x277D74118];
  v38[1] = titleColor;
  v38[2] = v7;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v35 count:3];
  [(PXPhotosSectionHeaderLayout *)self setFinalTitleAttributes:v13];

  v33[0] = v8;
  titleFont2 = [sectionHeaderSpec titleFont];
  v34[0] = titleFont2;
  v33[1] = v10;
  gradientTitleColor = [sectionHeaderSpec gradientTitleColor];
  titleColor2 = gradientTitleColor;
  if (!gradientTitleColor)
  {
    titleColor2 = [sectionHeaderSpec titleColor];
  }

  v33[2] = v12;
  v34[1] = titleColor2;
  v34[2] = v7;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
  [(PXPhotosSectionHeaderLayout *)self setFinalTitleLightGradientAttributes:v17];

  if (!gradientTitleColor)
  {
  }

  v31[0] = v8;
  subtitleFont = [sectionHeaderSpec subtitleFont];
  v32[0] = subtitleFont;
  v31[1] = v10;
  subtitleColor = [sectionHeaderSpec subtitleColor];
  v31[2] = v12;
  v32[1] = subtitleColor;
  v32[2] = v7;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
  [(PXPhotosSectionHeaderLayout *)self setSubtitleAttributes:v20];

  v29[0] = v8;
  badgeFont = [sectionHeaderSpec badgeFont];
  v30[0] = badgeFont;
  v29[1] = v10;
  badgeColor = [sectionHeaderSpec badgeColor];
  v29[2] = v12;
  v30[1] = badgeColor;
  v30[2] = v7;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  [(PXPhotosSectionHeaderLayout *)self setBadgeAttributes:v23];

  buttonFont = [sectionHeaderSpec buttonFont];
  v28[0] = buttonFont;
  v27[1] = v10;
  buttonColor = [sectionHeaderSpec buttonColor];
  v27[2] = v12;
  v28[1] = buttonColor;
  v28[2] = v7;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
  [(PXPhotosSectionHeaderLayout *)self setButtonTitleAttributes:v26];
}

- (void)_invalidateAttributes
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
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionHeaderLayout _invalidateAttributes]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosSectionHeaderLayout.m" lineNumber:385 description:{@"invalidating %lu after it already has been updated", 2}];

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

    [(PXPhotosSectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)_updateFinalTitle
{
  title = [(PXPhotosSectionHeaderLayout *)self title];
  if (-[PXPhotosSectionHeaderLayout isBadgeVisible](self, "isBadgeVisible") && [title length])
  {
    v3 = PXGridZeroBundle();
    v4 = [v3 localizedStringForKey:@"PXPhotosGridsSectionHeaderBadgeSeparator" value:&stru_282C2F4D0 table:0];
    v6 = title;
    v5 = PXStringWithValidatedFormat();
  }

  else
  {
    v5 = title;
  }

  [(PXPhotosSectionHeaderLayout *)self setFinalTitle:v5, v6];
}

- (void)_invalidateFinalTitle
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
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionHeaderLayout _invalidateFinalTitle]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXPhotosSectionHeaderLayout.m" lineNumber:370 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXPhotosSectionHeaderLayout *)self setNeedsUpdate];
  }
}

- (void)didUpdate
{
  v5.receiver = self;
  v5.super_class = PXPhotosSectionHeaderLayout;
  [(PXPhotosSectionHeaderLayout *)&v5 didUpdate];
  if (self->_updateFlags.willPerformUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionHeaderLayout didUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXPhotosSectionHeaderLayout.m" lineNumber:366 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.willPerformUpdate"}];
  }
}

- (void)update
{
  p_updateFlags = &self->_updateFlags;
  self->_updateFlags.willPerformUpdate = 0;
  needsUpdate = self->_updateFlags.needsUpdate;
  if (needsUpdate)
  {
    if (self->_updateFlags.isPerformingUpdate)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionHeaderLayout update]"];
      [currentHandler handleFailureInFunction:v10 file:@"PXPhotosSectionHeaderLayout.m" lineNumber:344 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXPhotosSectionHeaderLayout *)self _updateFinalTitle];
      if (!p_updateFlags->isPerformingUpdate)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionHeaderLayout update]"];
        [currentHandler2 handleFailureInFunction:v12 file:@"PXPhotosSectionHeaderLayout.m" lineNumber:348 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
      }
    }

    v5 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 2uLL;
    if ((v5 & 2) != 0)
    {
      p_updateFlags->needsUpdate = v5 & 0xFFFFFFFFFFFFFFFDLL;
      [(PXPhotosSectionHeaderLayout *)self _updateAttributes];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionHeaderLayout update]"];
      [currentHandler3 handleFailureInFunction:v14 file:@"PXPhotosSectionHeaderLayout.m" lineNumber:351 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v6 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 4uLL;
    if ((v6 & 4) != 0)
    {
      p_updateFlags->needsUpdate = v6 & 0xFFFFFFFFFFFFFFFBLL;
      [(PXPhotosSectionHeaderLayout *)self _updateContent];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionHeaderLayout update]"];
      [currentHandler4 handleFailureInFunction:v16 file:@"PXPhotosSectionHeaderLayout.m" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v7 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 8uLL;
    if ((v7 & 8) != 0)
    {
      p_updateFlags->needsUpdate = v7 & 0xFFFFFFFFFFFFFFF7;
      [(PXPhotosSectionHeaderLayout *)self _updateRelativeOffsetAlpha];
    }

    if (!p_updateFlags->isPerformingUpdate)
    {
      currentHandler5 = [MEMORY[0x277CCA890] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionHeaderLayout update]"];
      [currentHandler5 handleFailureInFunction:v18 file:@"PXPhotosSectionHeaderLayout.m" lineNumber:357 description:{@"Invalid parameter not satisfying: %@", @"_updateFlags.isPerformingUpdate"}];
    }

    v8 = p_updateFlags->needsUpdate;
    p_updateFlags->updated |= 0x10uLL;
    if ((v8 & 0x10) != 0)
    {
      p_updateFlags->needsUpdate = v8 & 0xFFFFFFFFFFFFFFEFLL;
      [(PXPhotosSectionHeaderLayout *)self _updateSpritesAlpha];
      v8 = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (v8)
    {
      currentHandler6 = [MEMORY[0x277CCA890] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionHeaderLayout update]"];
      [currentHandler6 handleFailureInFunction:v20 file:@"PXPhotosSectionHeaderLayout.m" lineNumber:360 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v21.receiver = self;
  v21.super_class = PXPhotosSectionHeaderLayout;
  [(PXPhotosSectionHeaderLayout *)&v21 update];
}

- (void)willUpdate
{
  v5.receiver = self;
  v5.super_class = PXPhotosSectionHeaderLayout;
  [(PXPhotosSectionHeaderLayout *)&v5 willUpdate];
  self->_updateFlags.willPerformUpdate = 1;
  if (self->_updateFlags.isPerformingUpdate)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXPhotosSectionHeaderLayout willUpdate]"];
    [currentHandler handleFailureInFunction:v4 file:@"PXPhotosSectionHeaderLayout.m" lineNumber:340 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];
  }
}

- (void)floatingOffsetDidChange
{
  v4.receiver = self;
  v4.super_class = PXPhotosSectionHeaderLayout;
  [(PXPhotosSectionHeaderLayout *)&v4 floatingOffsetDidChange];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__PXPhotosSectionHeaderLayout_floatingOffsetDidChange__block_invoke;
  v3[3] = &unk_278299118;
  v3[4] = self;
  [(PXPhotosSectionHeaderLayout *)self performChangesWithLocalUpdate:v3];
}

- (void)safeAreaInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = PXPhotosSectionHeaderLayout;
  [(PXPhotosSectionHeaderLayout *)&v3 safeAreaInsetsDidChange];
  [(PXPhotosSectionHeaderLayout *)self _invalidateRelativeOffsetAlpha];
}

- (void)contentSizeDidChange
{
  v3.receiver = self;
  v3.super_class = PXPhotosSectionHeaderLayout;
  [(PXPhotosSectionHeaderLayout *)&v3 contentSizeDidChange];
  [(PXPhotosSectionHeaderLayout *)self _invalidateRelativeOffsetAlpha];
}

- (void)visibleRectDidChange
{
  v3.receiver = self;
  v3.super_class = PXPhotosSectionHeaderLayout;
  [(PXPhotosSectionHeaderLayout *)&v3 visibleRectDidChange];
  [(PXPhotosSectionHeaderLayout *)self _invalidateRelativeOffsetAlpha];
}

- (void)setRelativeOffsetAlpha:(double)alpha
{
  if (self->_relativeOffsetAlpha != alpha)
  {
    self->_relativeOffsetAlpha = alpha;
    [(PXPhotosSectionHeaderLayout *)self _invalidateSpritesAlpha];
  }
}

- (id)hitTestResultForSpriteIndex:(unsigned int)index
{
  v3 = *&index;
  if ([(PXPhotosSectionHeaderLayout *)self allowsInteraction]&& v3 && (v3 == 7 || [(PXPhotosSectionHeaderLayout *)self wantsChevron]))
  {
    v5 = @"PXPhotosLayoutHitTestIdentifierSectionHeader";
    if (v3 == 7)
    {
      v5 = @"PXPhotosLayoutHitTestIdentifierSectionHeaderButton";
    }

    v6 = v5;
    v7 = [(PXPhotosSectionHeaderLayout *)self spriteReferenceForSpriteIndex:v3];
    assetCollectionReference = [(PXPhotosSectionHeaderLayout *)self assetCollectionReference];
    assetCollection = [assetCollectionReference assetCollection];

    v10 = [objc_alloc(MEMORY[0x277D73CA8]) initWithSpriteReference:v7 layout:self identifier:v6 userData:assetCollection];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGSize)buttonTitleSize
{
  p_buttonTitleSize = &self->_buttonTitleSize;
  if (PXSizeIsNull())
  {
    buttonTitle = [(PXPhotosSectionHeaderLayout *)self buttonTitle];
    [(PXPhotosSectionHeaderLayout *)self referenceSize];
    v6 = v5;
    v8 = v7;
    buttonTitleAttributes = [(PXPhotosSectionHeaderLayout *)self buttonTitleAttributes];
    [buttonTitle boundingRectWithSize:0 options:buttonTitleAttributes attributes:0 context:{v6, v8}];
    p_buttonTitleSize->width = v10;
    p_buttonTitleSize->height = v11;
  }

  width = p_buttonTitleSize->width;
  height = p_buttonTitleSize->height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)badgeSize
{
  p_badgeSize = &self->_badgeSize;
  if (PXSizeIsNull())
  {
    badgeTitle = [(PXPhotosSectionHeaderLayout *)self badgeTitle];
    [(PXPhotosSectionHeaderLayout *)self referenceSize];
    v6 = v5;
    v8 = v7;
    badgeAttributes = [(PXPhotosSectionHeaderLayout *)self badgeAttributes];
    [badgeTitle boundingRectWithSize:0 options:badgeAttributes attributes:0 context:{v6, v8}];
    p_badgeSize->width = v10;
    p_badgeSize->height = v11;
  }

  width = p_badgeSize->width;
  height = p_badgeSize->height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)subtitleSize
{
  p_subtitleSize = &self->_subtitleSize;
  if (PXSizeIsNull())
  {
    subtitle = [(PXPhotosSectionHeaderLayout *)self subtitle];
    [(PXPhotosSectionHeaderLayout *)self referenceSize];
    v6 = v5;
    v8 = v7;
    subtitleAttributes = [(PXPhotosSectionHeaderLayout *)self subtitleAttributes];
    [subtitle boundingRectWithSize:0 options:subtitleAttributes attributes:0 context:{v6, v8}];
    p_subtitleSize->width = v10;
    p_subtitleSize->height = v11;
  }

  width = p_subtitleSize->width;
  height = p_subtitleSize->height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)finalTitleSize
{
  p_finalTitleSize = &self->_finalTitleSize;
  if (PXSizeIsNull())
  {
    finalTitle = [(PXPhotosSectionHeaderLayout *)self finalTitle];
    [(PXPhotosSectionHeaderLayout *)self referenceSize];
    v6 = v5;
    v8 = v7;
    finalTitleAttributes = [(PXPhotosSectionHeaderLayout *)self finalTitleAttributes];
    [finalTitle boundingRectWithSize:0 options:finalTitleAttributes attributes:0 context:{v6, v8}];
    p_finalTitleSize->width = v10;
    p_finalTitleSize->height = v11;
  }

  width = p_finalTitleSize->width;
  height = p_finalTitleSize->height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setShowLegibilityGradient:(BOOL)gradient
{
  if (self->_showLegibilityGradient != gradient)
  {
    self->_showLegibilityGradient = gradient;
    [(PXPhotosSectionHeaderLayout *)self _invalidateSpritesAlpha];
  }
}

- (void)setButtonTitleAttributes:(id)attributes
{
  attributesCopy = attributes;
  buttonTitleAttributes = self->_buttonTitleAttributes;
  if (buttonTitleAttributes != attributesCopy)
  {
    v8 = attributesCopy;
    if (([(NSDictionary *)buttonTitleAttributes isEqual:attributesCopy]& 1) == 0)
    {
      v6 = [(NSDictionary *)v8 copy];
      v7 = self->_buttonTitleAttributes;
      self->_buttonTitleAttributes = v6;

      [(PXPhotosSectionHeaderLayout *)self _invalidateButtonTitleMediaVersion];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setBadgeAttributes:(id)attributes
{
  attributesCopy = attributes;
  badgeAttributes = self->_badgeAttributes;
  if (badgeAttributes != attributesCopy)
  {
    v8 = attributesCopy;
    if (([(NSDictionary *)badgeAttributes isEqual:attributesCopy]& 1) == 0)
    {
      v6 = [(NSDictionary *)v8 copy];
      v7 = self->_badgeAttributes;
      self->_badgeAttributes = v6;

      [(PXPhotosSectionHeaderLayout *)self _invalidateBadgeMediaVersion];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setButtonTitle:(id)title
{
  titleCopy = title;
  buttonTitle = self->_buttonTitle;
  if (buttonTitle != titleCopy)
  {
    v8 = titleCopy;
    if (![(NSString *)buttonTitle isEqualToString:titleCopy])
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->_buttonTitle;
      self->_buttonTitle = v6;

      [(PXPhotosSectionHeaderLayout *)self _invalidateButtonTitleMediaVersion];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setBadgeTitle:(id)title
{
  titleCopy = title;
  badgeTitle = self->_badgeTitle;
  if (badgeTitle != titleCopy)
  {
    v8 = titleCopy;
    if (([(NSString *)badgeTitle isEqual:titleCopy]& 1) == 0)
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->_badgeTitle;
      self->_badgeTitle = v6;

      [(PXPhotosSectionHeaderLayout *)self _invalidateFinalTitle];
      [(PXPhotosSectionHeaderLayout *)self _invalidateBadgeMediaVersion];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setIsBadgeVisible:(BOOL)visible
{
  if (self->_isBadgeVisible != visible)
  {
    self->_isBadgeVisible = visible;
    [(PXPhotosSectionHeaderLayout *)self _invalidateFinalTitle];
    [(PXPhotosSectionHeaderLayout *)self _invalidateContent];

    [(PXPhotosSectionHeaderLayout *)self _invalidateSpritesAlpha];
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (self->_subtitle != subtitleCopy)
  {
    v7 = subtitleCopy;
    if (![(NSString *)subtitleCopy isEqualToString:?])
    {
      v5 = [(NSString *)v7 copy];
      subtitle = self->_subtitle;
      self->_subtitle = v5;

      [(PXPhotosSectionHeaderLayout *)self _invalidateSubtitleMediaVersion];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setSubtitleAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (self->_subtitleAttributes != attributesCopy)
  {
    v7 = attributesCopy;
    if (([(NSDictionary *)attributesCopy isEqual:?]& 1) == 0)
    {
      v5 = [(NSDictionary *)v7 copy];
      subtitleAttributes = self->_subtitleAttributes;
      self->_subtitleAttributes = v5;

      [(PXPhotosSectionHeaderLayout *)self _invalidateSubtitleMediaVersion];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setFinalTitle:(id)title
{
  titleCopy = title;
  if (self->_finalTitle != titleCopy && ![(NSString *)titleCopy isEqualToString:?])
  {
    objc_storeStrong(&self->_finalTitle, title);
    [(PXPhotosSectionHeaderLayout *)self _invalidateFinalTitleMediaVersion];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (self->_title != titleCopy)
  {
    v7 = titleCopy;
    if (![(NSString *)titleCopy isEqualToString:?])
    {
      v5 = [(NSString *)v7 copy];
      title = self->_title;
      self->_title = v5;

      [(PXPhotosSectionHeaderLayout *)self _invalidateFinalTitle];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setFinalTitleLightGradientAttributess:(id)attributess
{
  attributessCopy = attributess;
  if (self->_finalTitleLightGradientAttributes != attributessCopy)
  {
    v7 = attributessCopy;
    if (([(NSDictionary *)attributessCopy isEqual:?]& 1) == 0)
    {
      v5 = [(NSDictionary *)v7 copy];
      finalTitleLightGradientAttributes = self->_finalTitleLightGradientAttributes;
      self->_finalTitleLightGradientAttributes = v5;

      [(PXPhotosSectionHeaderLayout *)self _invalidateFinalTitleMediaVersion];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setFinalTitleAttributes:(id)attributes
{
  attributesCopy = attributes;
  if (self->_finalTitleAttributes != attributesCopy)
  {
    v7 = attributesCopy;
    if (([(NSDictionary *)attributesCopy isEqual:?]& 1) == 0)
    {
      v5 = [(NSDictionary *)v7 copy];
      finalTitleAttributes = self->_finalTitleAttributes;
      self->_finalTitleAttributes = v5;

      [(PXPhotosSectionHeaderLayout *)self _invalidateFinalTitleMediaVersion];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setDividerColor:(id)color
{
  colorCopy = color;
  if (self->_dividerColor != colorCopy && ([(UIColor *)colorCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_dividerColor, color);
    [(PXPhotosSectionHeaderLayout *)self _invalidateDividerMediaVersion];
  }

  MEMORY[0x2821F96F8]();
}

- (PXPhotosLayoutSpec)spec
{
  spec = self->_spec;
  if (!spec)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSectionHeaderLayout.m" lineNumber:139 description:@"Must be non-null"];

    spec = self->_spec;
  }

  return spec;
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  if (self->_spec != specCopy && ([(PXPhotosLayoutSpec *)specCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_spec, spec);
    [(PXPhotosSectionHeaderLayout *)self _invalidateAttributes];
    [(PXPhotosSectionHeaderLayout *)self _invalidateContent];
    [(PXPhotosSectionHeaderLayout *)self _invalidateSpritesAlpha];
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)wantsButton
{
  buttonTitle = [(PXPhotosSectionHeaderLayout *)self buttonTitle];
  v3 = [buttonTitle length] != 0;

  return v3;
}

- (BOOL)wantsChevron
{
  assetCollectionReference = [(PXPhotosSectionHeaderLayout *)self assetCollectionReference];
  if (assetCollectionReference)
  {
    v4 = ![(PXPhotosSectionHeaderLayout *)self wantsButton];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)allowsInteraction
{
  if ([(PXPhotosSectionHeaderLayout *)self wantsChevron])
  {
    return 1;
  }

  return [(PXPhotosSectionHeaderLayout *)self wantsButton];
}

- (void)setAssetCollectionReference:(id)reference
{
  referenceCopy = reference;
  if (self->_assetCollectionReference != referenceCopy && ([(PXAssetCollectionReference *)referenceCopy isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_assetCollectionReference, reference);
    [(PXPhotosSectionHeaderLayout *)self _invalidateContent];
    [(PXPhotosSectionHeaderLayout *)self _invalidateSpritesAlpha];
  }

  MEMORY[0x2821F96F8]();
}

- (PXPhotosSectionHeaderLayout)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosSectionHeaderLayout.m" lineNumber:100 description:{@"%s is not available as initializer", "-[PXPhotosSectionHeaderLayout init]"}];

  abort();
}

- (PXPhotosSectionHeaderLayout)initWithSpec:(id)spec
{
  specCopy = spec;
  v13.receiver = self;
  v13.super_class = PXPhotosSectionHeaderLayout;
  v6 = [(PXPhotosSectionHeaderLayout *)&v13 init];
  v7 = v6;
  if (v6)
  {
    [(PXPhotosSectionHeaderLayout *)v6 setContentSource:v6];
    objc_storeStrong(&v7->_spec, spec);
    LODWORD(v8) = 1.0;
    v7->_gradientResizableCapInsetsIndex = [(PXPhotosSectionHeaderLayout *)v7 addResizableCapInsets:0.0, 0.0, v8, 0.0];
    v9 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndex:9];
    axSpriteIndexes = v7->_axSpriteIndexes;
    v7->_axSpriteIndexes = v9;

    v11 = *MEMORY[0x277D3CFE0];
    v7->_finalTitleSize = *MEMORY[0x277D3CFE0];
    v7->_subtitleSize = v11;
    v7->_badgeSize = v11;
    v7->_buttonTitleSize = v11;
    [(PXPhotosSectionHeaderLayout *)v7 _invalidateAttributes];
    [(PXPhotosSectionHeaderLayout *)v7 _invalidateContent];
    v7->_relativeOffsetAlpha = 1.0;
    [(PXPhotosSectionHeaderLayout *)v7 _invalidateSpritesAlpha];
  }

  return v7;
}

@end