@interface PXInlineHeadersSpriteLayout
- (PXInlineHeadersSpriteLayout)initWithLevel:(unint64_t)level;
- (PXZoomableInlineHeadersLayoutGeometrySource)geometrySource;
- (id)axSpriteIndexes;
- (id)itemsInRect:(CGRect)rect inLayout:(id)layout;
- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout;
- (int64_t)itemClosestToItem:(int64_t)item inDirection:(unint64_t)direction;
- (unsigned)axSpriteIndexClosestToSpriteIndex:(unsigned int)index inDirection:(unint64_t)direction;
- (void)_bumpMediaVersion;
- (void)_currentLocaleChanged:(id)changed;
- (void)_setupDateFormatters;
- (void)_updateSprites;
- (void)alphaDidChange;
- (void)displayScaleDidChange;
- (void)invalidateAnchorItemFrames;
- (void)setDataSource:(id)source;
- (void)setSpec:(id)spec;
- (void)setStyle:(unint64_t)style;
- (void)update;
- (void)visibleRectDidChange;
@end

@implementation PXInlineHeadersSpriteLayout

- (void)_setupDateFormatters
{
  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [(NSDateFormatter *)v3 setLocale:autoupdatingCurrentLocale];
  [(NSDateFormatter *)v3 setTimeStyle:0];
  [(NSDateFormatter *)v3 setLocalizedDateFormatFromTemplate:@"yyyy"];
  if (self->_level)
  {
    v4 = 5;
  }

  else
  {
    v4 = 2;
  }

  [(NSDateFormatter *)v3 setFormattingContext:v4];
  yearFormatter = self->_yearFormatter;
  self->_yearFormatter = v3;
  v6 = v3;

  v7 = objc_alloc_init(MEMORY[0x277CCA968]);
  [(NSDateFormatter *)v7 setLocale:autoupdatingCurrentLocale];
  [(NSDateFormatter *)v7 setTimeStyle:0];
  [(NSDateFormatter *)v7 setLocalizedDateFormatFromTemplate:@"MMM"];
  [(NSDateFormatter *)v7 setFormattingContext:4];
  monthFormatter = self->_monthFormatter;
  self->_monthFormatter = v7;
}

- (void)alphaDidChange
{
  v8.receiver = self;
  v8.super_class = PXInlineHeadersSpriteLayout;
  [(PXInlineHeadersSpriteLayout *)&v8 alphaDidChange];
  self->_didHideSprites = 0;
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
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXInlineHeadersSpriteLayout alphaDidChange]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXZoomableInlineHeadersLayout.m" lineNumber:181 description:{@"invalidating %lu after it already has been updated", 1}];

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
    [(PXInlineHeadersSpriteLayout *)self setNeedsUpdate];
  }
}

- (void)_bumpMediaVersion
{
  ++self->_mediaVersion;
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
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXInlineHeadersSpriteLayout _bumpMediaVersion]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXZoomableInlineHeadersLayout.m" lineNumber:242 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXInlineHeadersSpriteLayout *)self setNeedsUpdate];
  }
}

- (void)displayScaleDidChange
{
  v8.receiver = self;
  v8.super_class = PXInlineHeadersSpriteLayout;
  [(PXInlineHeadersSpriteLayout *)&v8 displayScaleDidChange];
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
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXInlineHeadersSpriteLayout displayScaleDidChange]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXZoomableInlineHeadersLayout.m" lineNumber:175 description:{@"invalidating %lu after it already has been updated", 1}];

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
    [(PXInlineHeadersSpriteLayout *)self setNeedsUpdate];
  }
}

- (void)visibleRectDidChange
{
  v8.receiver = self;
  v8.super_class = PXInlineHeadersSpriteLayout;
  [(PXInlineHeadersSpriteLayout *)&v8 visibleRectDidChange];
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
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXInlineHeadersSpriteLayout visibleRectDidChange]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXZoomableInlineHeadersLayout.m" lineNumber:170 description:{@"invalidating %lu after it already has been updated", 1}];

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
    [(PXInlineHeadersSpriteLayout *)self setNeedsUpdate];
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
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXInlineHeadersSpriteLayout update]"];
      [currentHandler handleFailureInFunction:v6 file:@"PXZoomableInlineHeadersLayout.m" lineNumber:246 description:{@"Invalid parameter not satisfying: %@", @"!_updateFlags.isPerformingUpdate"}];

      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 1;
    p_updateFlags->updated = 1;
    if (needsUpdate)
    {
      p_updateFlags->needsUpdate = needsUpdate & 0xFFFFFFFFFFFFFFFELL;
      [(PXInlineHeadersSpriteLayout *)self _updateSprites];
      needsUpdate = p_updateFlags->needsUpdate;
    }

    p_updateFlags->isPerformingUpdate = 0;
    if (needsUpdate)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXInlineHeadersSpriteLayout update]"];
      [currentHandler2 handleFailureInFunction:v8 file:@"PXZoomableInlineHeadersLayout.m" lineNumber:250 description:{@"still needing to update %lu after update pass", p_updateFlags->needsUpdate}];
    }
  }

  v9.receiver = self;
  v9.super_class = PXInlineHeadersSpriteLayout;
  [(PXGItemsLayout *)&v9 update];
}

- (void)_updateSprites
{
  numberOfItems = [(PXGItemsLayout *)self numberOfItems];
  dataSource = [(PXInlineHeadersSpriteLayout *)self dataSource];
  numberOfSections = [dataSource numberOfSections];

  if (numberOfItems != numberOfSections)
  {
    dataSource2 = [(PXInlineHeadersSpriteLayout *)self dataSource];
    -[PXGItemsLayout setNumberOfItems:](self, "setNumberOfItems:", [dataSource2 numberOfSections]);
  }

  [(PXInlineHeadersSpriteLayout *)self alpha];
  if (v7 != 0.0 || !self->_didHideSprites)
  {
    localNumberOfSprites = [(PXInlineHeadersSpriteLayout *)self localNumberOfSprites];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __45__PXInlineHeadersSpriteLayout__updateSprites__block_invoke;
    v9[3] = &unk_278297848;
    v9[4] = self;
    [(PXInlineHeadersSpriteLayout *)self modifySpritesInRange:localNumberOfSprites << 32 state:v9];
  }
}

- (id)axSpriteIndexes
{
  if (!self->_axSpriteIndexes)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, -[PXInlineHeadersSpriteLayout localNumberOfSprites](self, "localNumberOfSprites")}];
    axSpriteIndexes = self->_axSpriteIndexes;
    self->_axSpriteIndexes = v3;
  }

  if (self->_didHideSprites)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAA78]);
  }

  else
  {
    v5 = self->_axSpriteIndexes;
  }

  return v5;
}

- (PXZoomableInlineHeadersLayoutGeometrySource)geometrySource
{
  WeakRetained = objc_loadWeakRetained(&self->_geometrySource);

  return WeakRetained;
}

- (unsigned)axSpriteIndexClosestToSpriteIndex:(unsigned int)index inDirection:(unint64_t)direction
{
  v5 = -1;
  if (direction - 4 < 2)
  {
    if ([(PXInlineHeadersSpriteLayout *)self localNumberOfSprites]- 1 > index)
    {
      return index + 1;
    }

    else
    {
      return -1;
    }
  }

  else if (direction == 6 || direction == 3)
  {
    return index - 1;
  }

  return v5;
}

- (id)itemsInRect:(CGRect)rect inLayout:(id)layout
{
  v5 = [(PXInlineHeadersSpriteLayout *)self axSpriteIndexesInRect:layout, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v6 = [(PXGItemsLayout *)self itemsForSpriteIndexes:v5];

  return v6;
}

- (int64_t)itemClosestToItem:(int64_t)item inDirection:(unint64_t)direction
{
  numberOfItems = [(PXGItemsLayout *)self numberOfItems];

  return MEMORY[0x2821DBCF8](item, direction, 1, numberOfItems);
}

- (id)viewUserDataForSpriteAtIndex:(unsigned int)index inLayout:(id)layout
{
  v6 = [(PXInlineHeadersSpriteLayout *)self dataSource:*&index];
  sectionInfos = [v6 sectionInfos];
  indexCopy = index;

  level = [(PXInlineHeadersSpriteLayout *)self level];
  v10 = PXShouldAlwaysDisplayYearBeforeMonthForCurrentLocale();
  v11 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:*(sectionInfos + 32 * indexCopy + 24)];
  if (level)
  {
    v12 = [(NSDateFormatter *)self->_monthFormatter stringFromDate:v11];
    level = [(NSDateFormatter *)self->_yearFormatter stringFromDate:v11];
  }

  else
  {
    v12 = [(NSDateFormatter *)self->_yearFormatter stringFromDate:v11];
  }

  dataSource = [(PXInlineHeadersSpriteLayout *)self dataSource];
  type = [dataSource type];

  if (type == 2)
  {
    v15 = level != 0;
    if (v12 != 0 && v15)
    {
      v16 = @"PXPhotosGridAllPhotosAddedOnMonthYear";
    }

    else
    {
      v16 = @"PXPhotosGridAllPhotosAddedOnYear";
    }

    v17 = v16;
    v18 = PXGridZeroBundle();
    v19 = [v18 localizedStringForKey:v17 value:&stru_282C2F4D0 table:0];

    v20 = v10 ^ [v19 hasPrefix:@"%"];
    if ((v20 & v15) != 0)
    {
      v21 = level;
    }

    else
    {
      v21 = v12;
    }

    v22 = PXStringWithValidatedFormat();
    if ((v20 & v15) != 0)
    {
      level = v22;
    }

    else
    {
      v12 = v22;
    }
  }

  v23 = [[PXZoomableInlineHeaderViewConfiguration alloc] initWithTitle:v12 subtitle:level swapTitleAndSubtitle:v10 style:[(PXInlineHeadersSpriteLayout *)self style]];

  return v23;
}

void __45__PXInlineHeadersSpriteLayout__updateSprites__block_invoke(uint64_t a1, unint64_t a2, float32x2_t *a3, float *a4, float32x2_t *a5)
{
  v6 = a2;
  v8 = HIDWORD(a2);
  v9 = [*(a1 + 32) spec];
  v10 = [*(a1 + 32) dataSource];
  v96 = [v10 assetsDataSource];

  v11 = [*(a1 + 32) dataSource];
  v12 = [v11 sectionInfos];

  v13 = [*(a1 + 32) geometrySource];
  v14 = [*(a1 + 32) level];
  [*(a1 + 32) displayScale];
  v15 = -[PXZoomableInlineHeaderViewConfiguration initWithTitle:subtitle:swapTitleAndSubtitle:style:]([PXZoomableInlineHeaderViewConfiguration alloc], "initWithTitle:subtitle:swapTitleAndSubtitle:style:", @"AUGUST", @"2019", 0, [*(a1 + 32) style]);
  v16 = v14;
  +[PXZoomableInlineHeaderView sizeWithConfiguration:preferredContentSizeCategory:](PXZoomableInlineHeaderView, "sizeWithConfiguration:preferredContentSizeCategory:", v15, [v9 contentSizeCategory]);
  rect = v17;
  v110 = v18;
  [*(a1 + 32) alpha];
  v111 = v19;
  v20 = *(a1 + 32);
  v21 = v20[556];
  [v20 visibleRect];
  v23 = v22;
  v125 = v24;
  v26 = v25;
  v28 = v27;
  [*(a1 + 32) safeAreaInsets];
  PXEdgeInsetsInsetRect();
  v121 = v30;
  v123 = v29;
  v116 = v32;
  v118 = v31;
  [v13 floatingHeadersMarginsForLevel:v16];
  v34 = v33;
  v95 = a1;
  [*(a1 + 32) safeAreaInsets];
  [v9 headerFloatMarginsForSafeAreaInsets:?];
  PXEdgeInsetsAdd();
  v36 = v35;
  v109 = v37;
  v38 = v123;
  v39 = v125;
  if (v34 <= 0.0)
  {
    v39 = v121;
  }

  else
  {
    v38 = v23;
  }

  v41 = v116;
  v40 = v118;
  if (v34 > 0.0)
  {
    v40 = v26;
    v41 = v28;
  }

  MinY = CGRectGetMinY(*&v38);
  [v9 headerOffsetY];
  v44 = v43;
  if (v13)
  {
    [v13 spriteTransformForLevel:v16];
  }

  v112 = v13;
  [v13 boundsForLevel:v16];
  MaxY = CGRectGetMaxY(v129);
  v46 = COERCE_DOUBLE([v96 identifier]);
  if (v8)
  {
    v91 = v15;
    v92 = v9;
    v108 = v36 + MinY;
    LODWORD(v47) = -1;
    v106 = *MEMORY[0x277D73D78];
    v107 = *(MEMORY[0x277D73D78] + 16);
    v48 = -100.0;
    v104 = *(MEMORY[0x277D73D78] + 64);
    v105 = *(MEMORY[0x277D73D78] + 80);
    v102 = *(MEMORY[0x277D73D78] + 32);
    v103 = *(MEMORY[0x277D73D78] + 48);
    v100 = *(MEMORY[0x277D73D78] + 128);
    v101 = *(MEMORY[0x277D73D78] + 144);
    v98 = *(MEMORY[0x277D73D78] + 96);
    v99 = *(MEMORY[0x277D73D78] + 112);
    v49 = a4;
    v50 = a3;
    v124 = 0.0;
    v126 = 0.0;
    v51 = 0.0;
    v122 = v44;
    v52 = rect;
    v53 = v110;
    v97 = MaxY;
    do
    {
      v54 = *v12;
      v128.a = v46;
      v128.b = 0.0;
      v128.c = v54;
      v128.d = NAN;
      v55 = v46;
      [v112 frameForItemAtIndexPath:&v128 level:{v16, v91, v92}];
      y = v130.origin.y;
      x = v130.origin.x;
      height = v130.size.height;
      width = v130.size.width;
      v56 = v122 + CGRectGetMinY(v130);
      v131.origin.x = v109;
      v131.origin.y = v56;
      v131.size.width = v52;
      v131.size.height = v53;
      v57 = CGRectGetMinY(v131);
      v132.origin.x = v51;
      v132.origin.y = v48;
      v59 = v124;
      v58 = v126;
      v132.size.width = v124;
      v132.size.height = v126;
      v113 = v57 - CGRectGetMaxY(v132);
      v133.origin.x = v109;
      v133.origin.y = v56;
      v133.size.width = rect;
      v133.size.height = v53;
      v60 = v97 - CGRectGetMaxY(v133);
      memset(&v128, 0, sizeof(v128));
      v134.origin.y = y;
      v134.origin.x = x;
      v134.size.height = height;
      v134.size.width = width;
      v135 = CGRectApplyAffineTransform(v134, &v128);
      v61 = v122 + CGRectGetMinY(v135);
      if (v61 <= v108)
      {
        v62 = v6;
      }

      else
      {
        v62 = v47;
      }

      v63 = 0.0;
      if (v61 > v108)
      {
        v63 = v111;
      }

      v64 = v63;
      v65 = v113 < 50.0 || v60 < 50.0;
      v53 = v110;
      if (v65)
      {
        v47 = v47;
      }

      else
      {
        v47 = v62;
      }

      if (!v65)
      {
        v51 = v109;
        v48 = v56;
        v59 = rect;
        v58 = v110;
      }

      v124 = v59;
      v126 = v58;
      if (v65)
      {
        v66 = 0.0;
      }

      else
      {
        v66 = v64;
      }

      v136.origin.x = v109;
      v136.origin.y = v61;
      v136.size.width = rect;
      v136.size.height = v110;
      MidX = CGRectGetMidX(v136);
      v137.origin.x = v109;
      v137.origin.y = v61;
      v137.size.width = rect;
      v137.size.height = v110;
      MidY = CGRectGetMidY(v137);
      v138.origin.x = v109;
      v138.origin.y = v61;
      v138.size.width = rect;
      v138.size.height = v110;
      v120 = CGRectGetWidth(v138);
      v139.origin.x = v109;
      v139.origin.y = v61;
      v52 = rect;
      v139.size.width = rect;
      v139.size.height = v110;
      v69 = CGRectGetHeight(v139);
      v70.f64[0] = v120;
      v70.f64[1] = v69;
      *v50 = MidX;
      *&v50[1] = MidY;
      v50[3] = vcvt_f32_f64(v70);
      v50[2] = 0xBFF0000000000000;
      a5->i16[0] = 2561;
      PXSizeScale();
      v46 = v55;
      v72.f64[1] = v71;
      a5[1] = vcvt_f32_f64(v72);
      a5[4].i16[0] = v21;
      *v49 = v106;
      *(v49 + 1) = v107;
      *(v49 + 4) = v104;
      *(v49 + 5) = v105;
      *(v49 + 2) = v102;
      *(v49 + 3) = v103;
      *(v49 + 8) = v100;
      *(v49 + 9) = v101;
      ++v6;
      v50 += 4;
      *(v49 + 6) = v98;
      *(v49 + 7) = v99;
      *v49 = v66;
      v49 += 40;
      a5 += 5;
      v12 += 4;
      LODWORD(v8) = v8 - 1;
    }

    while (v8);
    *(*(v95 + 32) + 1114) = v111 == 0.0;
    v15 = v91;
    v9 = v92;
    if (v47 != -1)
    {
      v73 = &a3[4 * v47];
      v74 = &a4[40 * v47];
      *&v73[1] = v108 + v73[3].f32[1] * 0.5;
      v75 = v111;
      *v74 = v75;
      v76 = v74 + 40;
      v77 = [*(v95 + 32) localNumberOfSprites];
      while (++v47 < v77)
      {
        v78 = *v76;
        v76 += 40;
        if (v78 != 0.0)
        {
          v79 = v73[3];
          v80 = vmul_f32(v79, 0x3F0000003F000000);
          v81 = *v73 - v80.f32[0];
          v82 = *&v73[1] - v80.f32[1];
          v83 = v79.f32[0];
          v84 = v79.f32[1];
          v85 = &a3[4 * v47];
          v86 = v85[3];
          v87 = vmul_f32(v86, 0x3F0000003F000000);
          v140.origin.x = *v85 - v87.f32[0];
          v140.origin.y = *&v85[1] - v87.f32[1];
          v140.size.width = v86.f32[0];
          v140.size.height = v86.f32[1];
          v88 = CGRectGetMinY(v140);
          v141.origin.x = v81;
          v141.origin.y = v82;
          v141.size.width = v83;
          v141.size.height = v84;
          if (v88 - CGRectGetMaxY(v141) < 10.0)
          {
            PXClamp();
            if (v111 < v89)
            {
              v89 = v111;
            }

            v90 = v89;
            *v74 = v90;
          }

          break;
        }
      }
    }
  }

  else
  {
    *(*(a1 + 32) + 1114) = v111 == 0.0;
  }
}

- (void)invalidateAnchorItemFrames
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
      v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXInlineHeadersSpriteLayout invalidateAnchorItemFrames]"];
      [currentHandler handleFailureInFunction:v7 file:@"PXZoomableInlineHeadersLayout.m" lineNumber:237 description:{@"invalidating %lu after it already has been updated", 1}];

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

    [(PXInlineHeadersSpriteLayout *)self setNeedsUpdate];
  }
}

- (void)_currentLocaleChanged:(id)changed
{
  [(PXInlineHeadersSpriteLayout *)self _setupDateFormatters];

  [(PXInlineHeadersSpriteLayout *)self _bumpMediaVersion];
}

- (void)setSpec:(id)spec
{
  specCopy = spec;
  spec = self->_spec;
  if (spec != specCopy)
  {
    v12 = specCopy;
    [(PXInlineHeadersSpriteLayout *)self safeAreaInsets];
    [(PXZoomableInlineHeadersLayoutSpec *)spec headerFloatMarginsForSafeAreaInsets:?];
    [(PXInlineHeadersSpriteLayout *)self safeAreaInsets];
    [(PXZoomableInlineHeadersLayoutSpec *)v12 headerFloatMarginsForSafeAreaInsets:?];
    if (PXEdgeInsetsEqualToEdgeInsets())
    {
LABEL_9:
      objc_storeStrong(&self->_spec, spec);
      specCopy = v12;
      goto LABEL_10;
    }

    p_updateFlags = &self->_updateFlags;
    needsUpdate = self->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!self->_updateFlags.isPerformingUpdate)
      {
LABEL_8:
        p_updateFlags->needsUpdate = needsUpdate | 1;
        goto LABEL_9;
      }
    }

    else if (!self->_updateFlags.isPerformingUpdate)
    {
      willPerformUpdate = self->_updateFlags.willPerformUpdate;
      p_updateFlags->needsUpdate = 1;
      if (!willPerformUpdate)
      {
        [(PXInlineHeadersSpriteLayout *)self setNeedsUpdate];
      }

      goto LABEL_9;
    }

    if (self->_updateFlags.updated)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXInlineHeadersSpriteLayout setSpec:]"];
      [currentHandler handleFailureInFunction:v11 file:@"PXZoomableInlineHeadersLayout.m" lineNumber:209 description:{@"invalidating %lu after it already has been updated", 1}];

      abort();
    }

    goto LABEL_8;
  }

LABEL_10:
}

- (void)setStyle:(unint64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(PXInlineHeadersSpriteLayout *)self _bumpMediaVersion];
  }
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  if (self->_dataSource != sourceCopy)
  {
    v7 = sourceCopy;
    objc_storeStrong(&self->_dataSource, source);
    axSpriteIndexes = self->_axSpriteIndexes;
    self->_axSpriteIndexes = 0;

    [(PXInlineHeadersSpriteLayout *)self _bumpMediaVersion];
    sourceCopy = v7;
  }
}

- (PXInlineHeadersSpriteLayout)initWithLevel:(unint64_t)level
{
  v15.receiver = self;
  v15.super_class = PXInlineHeadersSpriteLayout;
  v4 = [(PXGItemsLayout *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->_level = level;
    [(PXInlineHeadersSpriteLayout *)v4 setContentSource:v4];
    autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    calendar = v5->_calendar;
    v5->_calendar = autoupdatingCurrentCalendar;

    [(PXInlineHeadersSpriteLayout *)v5 _setupDateFormatters];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__currentLocaleChanged_ name:*MEMORY[0x277CBE620] object:0];

    p_updateFlags = &v5->_updateFlags;
    needsUpdate = v5->_updateFlags.needsUpdate;
    if (needsUpdate)
    {
      if (!v5->_updateFlags.isPerformingUpdate)
      {
LABEL_7:
        *p_updateFlags = needsUpdate | 1;
        return v5;
      }

LABEL_6:
      if (v5->_updateFlags.updated)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PXInlineHeadersSpriteLayout initWithLevel:]"];
        [currentHandler handleFailureInFunction:v14 file:@"PXZoomableInlineHeadersLayout.m" lineNumber:163 description:{@"invalidating %lu after it already has been updated", 1}];

        abort();
      }

      goto LABEL_7;
    }

    if (v5->_updateFlags.isPerformingUpdate)
    {
      goto LABEL_6;
    }

    willPerformUpdate = v5->_updateFlags.willPerformUpdate;
    *p_updateFlags = 1;
    if (!willPerformUpdate)
    {
      [(PXInlineHeadersSpriteLayout *)v5 setNeedsUpdate];
    }
  }

  return v5;
}

@end