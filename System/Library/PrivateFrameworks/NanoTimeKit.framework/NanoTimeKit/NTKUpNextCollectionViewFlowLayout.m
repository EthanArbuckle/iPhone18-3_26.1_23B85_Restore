@interface NTKUpNextCollectionViewFlowLayout
- (BOOL)_hasHeaderForSection:(int64_t)a3;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4;
- (NTKUpNextCollectionViewFlowLayout)init;
- (id)flowLayoutAttributesForItemAtIndexPath:(id)a3;
- (id)indexPathsToDeleteForSupplementaryViewOfKind:(id)a3;
- (id)invalidationContextForBoundsChange:(CGRect)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (void)_updateContentInsetsIfNeeded;
- (void)_updateSectionHeaderListIfNeeded;
- (void)_updateVisibilityForLayoutAttributes:(id)a3 inBounds:(CGRect)a4;
- (void)finalizeCollectionViewUpdates;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareLayout;
- (void)setHeaderAlpha:(double)a3;
- (void)setMaximumDarkeningAmount:(double)a3;
- (void)setTopItemsAlpha:(double)a3;
- (void)setTopOffsetForScrolling:(double)a3;
- (void)setTopOffsetForSnapping:(double)a3;
@end

@implementation NTKUpNextCollectionViewFlowLayout

- (NTKUpNextCollectionViewFlowLayout)init
{
  v13.receiver = self;
  v13.super_class = NTKUpNextCollectionViewFlowLayout;
  v2 = [(UICollectionViewFlowLayout *)&v13 init];
  if (v2)
  {
    v3 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
    v4 = [v3 device];
    device = v2->_device;
    v2->_device = v4;

    v6 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
    topElementIndexPath = v2->_topElementIndexPath;
    v2->_topElementIndexPath = v6;

    v2->_needsInsetsUpdate = 1;
    v8 = objc_opt_new();
    previousSectionsWithHeaders = v2->_previousSectionsWithHeaders;
    v2->_previousSectionsWithHeaders = v8;

    v10 = objc_opt_new();
    sectionsWithHeaders = v2->_sectionsWithHeaders;
    v2->_sectionsWithHeaders = v10;

    v2->_maximumDarkeningAmount = 0.5;
  }

  return v2;
}

- (void)setTopItemsAlpha:(double)a3
{
  if (vabdd_f64(self->_topItemsAlpha, a3) > 2.22044605e-16)
  {
    self->_topItemsAlpha = a3;
    v5 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
    v6 = [v5 numberOfSections];

    v15 = objc_opt_new();
    v7 = objc_opt_new();
    if (v6 >= 1)
    {
      for (i = 0; i != v6; ++i)
      {
        v9 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
        v10 = [v9 numberOfItemsInSection:i];

        if ([(NTKUpNextCollectionViewFlowLayout *)self _hasHeaderForSection:i])
        {
          v11 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:i];
          [v7 addObject:v11];
        }

        if (v10 >= 1)
        {
          for (j = 0; j != v10; ++j)
          {
            v13 = [MEMORY[0x277CCAA70] indexPathForItem:j inSection:i];
            if ([v13 compare:self->_topElementIndexPath] == -1 || objc_msgSend(v13, "compare:", self->_bottomElementIndexPath) == 1)
            {
              [v15 addObject:v13];
            }
          }
        }
      }
    }

    v14 = objc_opt_new();
    [v14 invalidateItemsAtIndexPaths:v15];
    [v14 invalidateSupplementaryElementsOfKind:*MEMORY[0x277D767D8] atIndexPaths:v7];
    [v14 setInvalidateFlowLayoutAttributes:0];
    [v14 setInvalidateFlowLayoutDelegateMetrics:0];
    [(NTKUpNextCollectionViewFlowLayout *)self invalidateLayoutWithContext:v14];
  }
}

- (void)setHeaderAlpha:(double)a3
{
  if (vabdd_f64(self->_headerAlpha, a3) > 2.22044605e-16)
  {
    self->_headerAlpha = a3;
    v5 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
    v6 = [v5 numberOfSections];

    v10 = objc_opt_new();
    if (v6 >= 1)
    {
      for (i = 0; i != v6; ++i)
      {
        if ([(NTKUpNextCollectionViewFlowLayout *)self _hasHeaderForSection:i])
        {
          v8 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:i];
          [v10 addObject:v8];
        }
      }
    }

    v9 = objc_opt_new();
    [v9 invalidateSupplementaryElementsOfKind:*MEMORY[0x277D767D8] atIndexPaths:v10];
    [v9 setInvalidateFlowLayoutAttributes:0];
    [v9 setInvalidateFlowLayoutDelegateMetrics:0];
    [(NTKUpNextCollectionViewFlowLayout *)self invalidateLayoutWithContext:v9];
  }
}

- (void)setTopOffsetForSnapping:(double)a3
{
  if (vabdd_f64(self->_topOffsetForSnapping, a3) > 2.22044605e-16)
  {
    self->_topOffsetForSnapping = a3;
    self->_needsInsetsUpdate = 1;
  }
}

- (void)setTopOffsetForScrolling:(double)a3
{
  if (vabdd_f64(self->_topOffsetForScrolling, a3) > 2.22044605e-16)
  {
    self->_topOffsetForScrolling = a3;
    v5 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
    v6 = [v5 numberOfSections];

    v14 = objc_opt_new();
    v7 = objc_opt_new();
    if (v6 >= 1)
    {
      for (i = 0; i != v6; ++i)
      {
        v9 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
        v10 = [v9 numberOfItemsInSection:i];

        if (v10 >= 1)
        {
          for (j = 0; j != v10; ++j)
          {
            v12 = [MEMORY[0x277CCAA70] indexPathForItem:j inSection:i];
            if (!j && [(NTKUpNextCollectionViewFlowLayout *)self _hasHeaderForSection:i])
            {
              [v7 addObject:v12];
            }

            [v14 addObject:v12];
          }
        }
      }
    }

    v13 = objc_opt_new();
    [v13 invalidateItemsAtIndexPaths:v14];
    [v13 invalidateSupplementaryElementsOfKind:*MEMORY[0x277D767D8] atIndexPaths:v7];
    [v13 setInvalidateFlowLayoutAttributes:0];
    [v13 setInvalidateFlowLayoutDelegateMetrics:0];
    [(NTKUpNextCollectionViewFlowLayout *)self invalidateLayoutWithContext:v13];
  }
}

- (void)setMaximumDarkeningAmount:(double)a3
{
  if (vabdd_f64(self->_maximumDarkeningAmount, a3) > 2.22044605e-16)
  {
    self->_maximumDarkeningAmount = a3;
    v5 = objc_opt_new();
    [v5 setInvalidateFlowLayoutAttributes:1];
    [v5 setInvalidateFlowLayoutDelegateMetrics:0];
    [(NTKUpNextCollectionViewFlowLayout *)self invalidateLayoutWithContext:v5];
  }
}

- (void)invalidateLayoutWithContext:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = NTKUpNextCollectionViewFlowLayout;
  [(UICollectionViewFlowLayout *)&v5 invalidateLayoutWithContext:v4];
  if (([v4 invalidateEverything] & 1) != 0 || objc_msgSend(v4, "invalidateDataSourceCounts"))
  {
    self->_needsInsetsUpdate = 1;
    self->_needsHeaderUpdate = 1;
  }
}

- (void)prepareLayout
{
  v195.receiver = self;
  v195.super_class = NTKUpNextCollectionViewFlowLayout;
  [(UICollectionViewFlowLayout *)&v195 prepareLayout];
  [(NTKUpNextCollectionViewFlowLayout *)self _updateContentInsetsIfNeeded];
  [(NTKUpNextCollectionViewFlowLayout *)self _updateSectionHeaderListIfNeeded];
  v3 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v166 = v9;
  v167 = v8;

  if (self->_indexPathToSnapTo)
  {
    v10 = [(NTKUpNextCollectionViewFlowLayout *)self flowLayoutAttributesForItemAtIndexPath:?];
    [v10 frame];
    [(NTKUpNextCollectionViewFlowLayout *)self targetContentOffsetForProposedContentOffset:?];
    v5 = v11;
    v7 = v12 + self->_snappingOffset;
  }

  v159 = objc_opt_new();
  obj = objc_opt_new();
  v174 = [MEMORY[0x277CBEB58] set];
  v13 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
  v14 = [v13 numberOfSections];

  v15 = 0.0;
  v164 = v7;
  v165 = v5;
  UIRectInset();
  rect_8 = v17;
  rect_16 = v16;
  v178 = v19;
  rect = v18;
  v156 = v14;
  if (v14 >= 1)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v24 = *MEMORY[0x277CBF3A0];
    v23 = *(MEMORY[0x277CBF3A0] + 8);
    v25 = *(MEMORY[0x277CBF3A0] + 24);
    v154 = *MEMORY[0x277D767D8];
    v176 = *MEMORY[0x277CBF348];
    x = *MEMORY[0x277CBF3A0];
    y = v23;
    width = *(MEMORY[0x277CBF3A0] + 16);
    rect1 = v25;
    v170 = v23;
    v171 = *MEMORY[0x277CBF3A0];
    v168 = v25;
    v169 = width;
    v187[0] = width;
    while (1)
    {
      v29 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
      v30 = [v29 numberOfItemsInSection:v22];

      v158.size.width = v169;
      v158.size.height = v168;
      v158.origin.x = v171;
      v158.origin.y = v170;
      if ([(NTKUpNextCollectionViewFlowLayout *)self _hasHeaderForSection:v22])
      {
        v31 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v22];
        v194.receiver = self;
        v194.super_class = NTKUpNextCollectionViewFlowLayout;
        v32 = [(UICollectionViewFlowLayout *)&v194 layoutAttributesForSupplementaryViewOfKind:v154 atIndexPath:v31];
        v33 = [v32 copy];

        [v33 frame];
        v158.origin.x = v34;
        v158.origin.y = v35;
        v158.size.width = v36;
        v158.size.height = v37;
      }

      if (v30 >= 1)
      {
        break;
      }

LABEL_44:
      if (++v22 == v156)
      {
        goto LABEL_45;
      }
    }

    v157 = v15;
    v38 = 0;
    v39 = -v20;
    while (1)
    {
      v161 = y;
      v40 = v25;
      v41 = v187[0];
      v42 = [MEMORY[0x277CCAA70] indexPathForItem:v38 inSection:v22];
      v193.receiver = self;
      v193.super_class = NTKUpNextCollectionViewFlowLayout;
      v43 = [(UICollectionViewFlowLayout *)&v193 layoutAttributesForItemAtIndexPath:v42];
      v44 = [v43 copy];

      if ([v42 compare:self->_topElementIndexPath] == -1 || (v45 = objc_msgSend(v42, "compare:", self->_bottomElementIndexPath), topItemsAlpha = 1.0, v45 == 1))
      {
        topItemsAlpha = self->_topItemsAlpha;
      }

      v160 = width;
      v162 = x;
      v177 = topItemsAlpha;
      [v44 frame];
      v48 = v47;
      rect_24 = v49;
      v187[0] = v50;
      v25 = v51;
      v196.origin.x = v24;
      v196.origin.y = v23;
      v196.size.width = v41;
      v196.size.height = v40;
      v239.origin.y = v170;
      v239.origin.x = v171;
      v239.size.height = v168;
      v239.size.width = v169;
      v52 = CGRectEqualToRect(v196, v239);
      v185 = v48;
      if (v38 || !v52)
      {
        v197.origin.x = v48;
        v53 = rect_24;
        v197.origin.y = rect_24;
        v54 = v187[0];
        v197.size.width = v187[0];
        v197.size.height = v25;
        CGRectGetMinY(v197);
        v198.origin.x = v24;
        v198.origin.y = v23;
        v198.size.width = v41;
        v198.size.height = v40;
        CGRectGetMaxY(v198);
        [(UICollectionViewFlowLayout *)self minimumLineSpacing];
      }

      else
      {
        CGRectGetHeight(v158);
        v53 = rect_24;
        v54 = v187[0];
      }

      UIRectInset();
      v56 = v55;
      v175 = v57;
      v172 = v58;
      v173 = v59;
      v199.origin.y = rect_8;
      v199.origin.x = rect_16;
      v199.size.height = v178;
      v199.size.width = rect;
      MinY = CGRectGetMinY(v199);
      v200.origin.x = v48;
      v200.origin.y = v53;
      v200.size.width = v54;
      v200.size.height = v25;
      MaxY = CGRectGetMaxY(v200);
      [(UICollectionViewFlowLayout *)self minimumLineSpacing];
      v63 = 1.0;
      if (MinY < MaxY + v62)
      {
        if (v21 > 1)
        {
          if (v21 == 2)
          {
            [v44 setLayoutMode:2];
            v64 = v187[0];
            if (self->_useFixedLowTransitionLayout)
            {
              v207.origin.y = rect_8;
              v207.origin.x = rect_16;
              v207.size.height = v178;
              v207.size.width = rect;
              v70 = CGRectGetMaxY(v207);
              v208.origin.x = v48;
              v208.origin.y = rect_24;
              v208.size.width = v187[0];
              v208.size.height = v25;
              v53 = v70 - CGRectGetHeight(v208) - self->_highTransitionBottomOffset;
            }

            else
            {
              v215.origin.x = rect_16;
              v215.origin.y = rect_8;
              v215.size.width = rect;
              v215.size.height = v178;
              CGRectGetMinY(v215);
              v216.origin.x = v56;
              v216.origin.y = v175;
              v216.size.width = v172;
              v216.size.height = v173;
              CGRectGetHeight(v216);
              v217.origin.x = rect_16;
              v217.origin.y = rect_8;
              v217.size.width = rect;
              v217.size.height = v178;
              CGRectGetMaxY(v217);
              v218.origin.x = v48;
              v218.origin.y = rect_24;
              v218.size.width = v187[0];
              v218.size.height = v25;
              CGRectGetHeight(v218);
              CLKInterpolateBetweenFloatsClipped();
              v53 = v75;
            }

            CLKInterpolateBetweenFloatsClipped();
            v63 = v76;
            CLKInterpolateBetweenFloatsClipped();
            [v44 setDarkeningAlphaUniform:?];
            v21 = 3;
          }

          else
          {
            v64 = v187[0];
            if (v21 == 3)
            {
              [v44 setLayoutMode:3];
              [v44 setDarkeningAlphaUniform:self->_maximumDarkeningAmount];
              CLKInterpolateBetweenFloatsClipped();
              v209.size.height = v178;
              v177 = v177 * v71;
              v209.origin.y = rect_8;
              v209.origin.x = rect_16;
              v209.size.width = rect;
              CGRectGetMaxY(v209);
              v210.origin.x = v48;
              v210.origin.y = rect_24;
              v210.size.width = v187[0];
              v210.size.height = v25;
              CGRectGetHeight(v210);
              CLKInterpolateBetweenFloatsClipped();
              v53 = v72;
              CLKInterpolateBetweenFloatsClipped();
              v63 = v73;
              v21 = 4;
            }

            else
            {
              [v44 setLayoutMode:4];
              v201.origin.y = rect_8;
              v201.origin.x = rect_16;
              v201.size.height = v178;
              v201.size.width = rect;
              v65 = CGRectGetMaxY(v201);
              v202.origin.x = v48;
              v202.origin.y = rect_24;
              v202.size.width = v187[0];
              v202.size.height = v25;
              v53 = v65 - CGRectGetHeight(v202) - self->_lowTransitionShift;
              v177 = 0.0;
              v63 = 0.4;
            }
          }

          goto LABEL_35;
        }

        if (v21)
        {
          goto LABEL_22;
        }

        v211.origin.x = v48;
        v53 = rect_24;
        v211.origin.y = rect_24;
        v211.size.width = v187[0];
        v211.size.height = v25;
        v74 = CGRectGetMinY(v211);
        v212.origin.y = rect_8;
        v212.origin.x = rect_16;
        v212.size.height = v178;
        v212.size.width = rect;
        if (v74 > CGRectGetMinY(v212))
        {
          v213.origin.y = v161;
          v213.origin.x = v162;
          v213.size.width = v160;
          v213.size.height = rect1;
          v240.origin.y = v170;
          v240.origin.x = v171;
          v240.size.height = v168;
          v240.size.width = v169;
          if (CGRectEqualToRect(v213, v240))
          {
            v214.origin.x = v56;
            v214.origin.y = v175;
            v214.size.width = v172;
            v214.size.height = v173;
            [(UICollectionViewFlowLayout *)self minimumLineSpacing];
          }

LABEL_22:
          [v44 setLayoutMode:1];
          v203.origin.y = rect_8;
          v203.origin.x = rect_16;
          v203.size.height = v178;
          v203.size.width = rect;
          CGRectGetMinY(v203);
          v204.origin.x = v56;
          v204.origin.y = v175;
          v204.size.width = v172;
          v204.size.height = v173;
          CGRectGetHeight(v204);
          [(UICollectionViewFlowLayout *)self minimumLineSpacing];
          v205.origin.x = v48;
          v53 = rect_24;
          v205.origin.y = rect_24;
          v64 = v187[0];
          v205.size.width = v187[0];
          v205.size.height = v25;
          CGRectGetMinY(v205);
          CLKReverseInterpolateFromFloats();
          v67 = v66;
          v206.origin.x = v56;
          v206.origin.y = v175;
          v206.size.width = v172;
          v206.size.height = v173;
          CGRectGetHeight(v206);
          if (v67 < 1.0)
          {
            CLKInterpolateBetweenFloatsClipped();
            v53 = v68;
          }

          CLKInterpolateBetweenFloatsClipped();
          [v44 setDarkeningAlphaUniform:?];
          v157 = v67;
          CLKInterpolateBetweenFloatsClipped();
          v63 = v69;
          v21 = 2;
          goto LABEL_35;
        }

        [v44 setLayoutMode:0];
        v21 = 1;
      }

      v64 = v187[0];
LABEL_35:
      if (v22 < [(NSIndexPath *)self->_topElementIndexPath section])
      {
        v53 = v53 - self->_topItemsShift;
      }

      MEMORY[0x2318D8E70](v48, v53, v64, v25);
      v77 = *(MEMORY[0x277CBF2C0] + 16);
      v190 = *MEMORY[0x277CBF2C0];
      v191 = v77;
      v192 = *(MEMORY[0x277CBF2C0] + 32);
      if (fabs(v63 + -1.0) >= 0.00000011920929)
      {
        NTKUpNextMakeScaleTransformWithBoundsAndScale(&v190, v176, v63);
        [v44 setScale:v63];
      }

      [v44 setAlpha:v177];
      [v44 setFrame:{v48, v53, v64, v25}];
      memset(&v189, 0, sizeof(v189));
      *&m.m11 = v190;
      *&m.m13 = v191;
      *&m.m21 = v192;
      CATransform3DMakeAffineTransform(&v189, &m);
      *&v187[3] = v189;
      CATransform3DTranslate(&m, &v187[3], 0.0, 0.0, v39);
      v189 = m;
      [v44 setTransform3D:&m];
      *&m.m11 = v190;
      *&m.m13 = v191;
      *&m.m21 = v192;
      CLKFrameFromCenterBoundsAndTransform();
      x = v219.origin.x;
      y = v219.origin.y;
      width = v219.size.width;
      height = v219.size.height;
      v241.origin.y = rect_8;
      v241.origin.x = rect_16;
      v241.size.height = v178;
      v241.size.width = rect;
      v220 = CGRectIntersection(v219, v241);
      CGRectGetHeight(v220);
      v221.origin.x = x;
      v221.origin.y = y;
      v221.size.width = width;
      v221.size.height = height;
      CGRectGetHeight(v221);
      CLKInterpolateBetweenFloatsClipped();
      [v44 setShadowAlpha:?];
      [v44 setComputedFrame:{x, y, width, height}];
      rect1 = height;
      [v44 setUnitFrameOnScreen:{NTKUpNextUnitRectForFrameInBounds(x, y, width, height, v165, v164, v167, v166)}];
      [(NTKUpNextCollectionViewFlowLayout *)self _updateVisibilityForLayoutAttributes:v44 inBounds:v165, v164, v167, v166];
      [v159 setObject:v44 forKeyedSubscript:v42];
      v79 = [v174 count];
      if (v79 < NTKUpNextMaximumNumberOfDwellItems && [v44 fullyVisibleToUser])
      {
        [v174 addObject:v42];
      }

      ++v38;
      --v39;
      v23 = rect_24;
      v24 = v185;
      if (v30 == v38)
      {
        v20 = -v39;
        v15 = v157;
        goto LABEL_44;
      }
    }
  }

LABEL_45:
  v80 = [v159 copy];
  layoutInfo = self->_layoutInfo;
  self->_layoutInfo = v80;

  v82 = [v174 copy];
  dwellIndexPathes = self->_dwellIndexPathes;
  self->_dwellIndexPathes = v82;

  if (v156 < 1)
  {
    v147 = obj;
    objc_storeStrong(&self->_headerLayoutInfo, obj);
  }

  else
  {
    v84 = 0;
    rect_16a = *MEMORY[0x277D767D8];
    v186 = *MEMORY[0x277CBF348];
    v85 = v165;
    do
    {
      if ([(NTKUpNextCollectionViewFlowLayout *)self _hasHeaderForSection:v84])
      {
        v86 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
        v87 = [v86 numberOfItemsInSection:v84];

        v88 = [MEMORY[0x277CCAA70] indexPathForItem:v87 - 1 inSection:v84];
        v89 = [(NTKUpNextCollectionViewFlowLayout *)self layoutAttributesForItemAtIndexPath:v88];

        v90 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:v84];
        *&v187[1] = self;
        *&v187[2] = NTKUpNextCollectionViewFlowLayout;
        v91 = [(CGFloat *)&v187[1] layoutAttributesForSupplementaryViewOfKind:rect_16a atIndexPath:v90];
        v92 = [v91 copy];

        [v92 frame];
        MinX = v93;
        v96 = v95;
        v98 = v97;
        v100 = v99;
        v222.origin.x = v85;
        v222.origin.y = v164;
        v222.size.height = v166;
        v222.size.width = v167;
        v101 = CGRectGetMinY(v222);
        v223.origin.x = MinX;
        v223.origin.y = v96;
        v223.size.width = v98;
        v223.size.height = v100;
        v102 = v101 + CGRectGetHeight(v223);
        v103 = [(NTKUpNextCollectionViewFlowLayout *)self layoutAttributesForItemAtIndexPath:v90];
        [v103 computedFrame];
        v187[0] = v104;
        v106 = v105;
        v108 = v107;
        v110 = v109;
        v111 = *(MEMORY[0x277CBF2C0] + 16);
        v190 = *MEMORY[0x277CBF2C0];
        v191 = v111;
        v192 = *(MEMORY[0x277CBF2C0] + 32);
        v112 = MinX;
        *&v111 = v96;
        v113 = v98;
        v114 = v100;
        if (CGRectGetMaxY(*(&v111 - 8)) >= v102)
        {
          [v103 scale];
          v117 = v116;
          [v103 alpha];
          [v92 setAlpha:v118 * self->_headerAlpha];
          [v92 setHidden:{objc_msgSend(v103, "isHidden")}];
          if (fabs(v117 + -1.0) >= 0.00000011920929 && [v103 layoutMode])
          {
            v226.origin.x = v187[0];
            v226.origin.y = v106;
            v226.size.width = v108;
            v226.size.height = v110;
            v119 = CGRectGetMinY(v226);
            v227.origin.x = MinX;
            v227.origin.y = v96;
            v227.size.width = v98;
            v227.size.height = v100;
            v96 = v119 - CGRectGetHeight(v227);
            NTKUpNextMakeScaleTransformWithBoundsAndScale(&v190, v186, v117);
          }
        }

        else
        {
          [v89 computedFrame];
          v115 = CGRectGetMaxY(v224);
          if (v115 < v102)
          {
            v102 = v115;
          }

          v225.origin.x = MinX;
          v225.origin.y = v96;
          v225.size.width = v98;
          v225.size.height = v100;
          v96 = v102 - CGRectGetHeight(v225);
          [v92 setAlpha:self->_headerAlpha];
        }

        v228.origin.x = MinX;
        v228.origin.y = v96;
        v228.size.width = v98;
        v228.size.height = v100;
        v120 = CGRectGetMinY(v228);
        v229.origin.y = v164;
        v229.origin.x = v165;
        v229.size.height = v166;
        v229.size.width = v167;
        v121 = v120 < CGRectGetMinY(v229) + self->_statusBarDecorationHeight;
        v122 = 11.0;
        if (!v121)
        {
          v122 = -v106;
        }

        v187[0] = v122;
        if ([(CLKDevice *)self->_device deviceCategory]!= 1)
        {
          v230.origin.x = MinX;
          v230.origin.y = v96;
          v230.size.width = v98;
          v230.size.height = v100;
          v123 = CGRectGetHeight(v230);
          v124 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
          [v124 _inscribedRectInBoundingPathByInsettingRect:2 onEdges:1 withOptions:{MinX, v96, v123, v100}];
          v126 = v125;
          v128 = v127;
          v130 = v129;
          v132 = v131;

          v231.origin.x = v126;
          v231.origin.y = v128;
          v231.size.width = v130;
          v231.size.height = v132;
          if (!CGRectIsNull(v231) || (-[NTKUpNextCollectionViewFlowLayout collectionView](self, "collectionView"), v133 = objc_claimAutoreleasedReturnValue(), [v133 bounds], v135 = v134, rect_8a = v136, v138 = v137, v140 = v139, v133, v232.origin.x = MinX, v232.origin.y = v96, v232.size.width = v98, v232.size.height = v100, v141 = CGRectGetMinY(v232), v233.origin.x = v135, v233.origin.y = rect_8a, v233.size.width = v138, v233.size.height = v140, v141 < CGRectGetMinY(v233)) && (-[NTKUpNextCollectionViewFlowLayout collectionView](self, "collectionView"), v142 = objc_claimAutoreleasedReturnValue(), v234.origin.x = v135, v234.origin.y = rect_8a, v234.size.width = v138, v234.size.height = v140, objc_msgSend(v142, "_inscribedRectInBoundingPathByInsettingRect:onEdges:withOptions:", 2, 1, 0.0, CGRectGetMinY(v234), 50.0, 50.0), v126 = v143, v128 = v144, v130 = v145, v132 = v146, v142, v235.origin.x = v126, v235.origin.y = v128, v235.size.width = v130, v235.size.height = v132, !CGRectIsNull(v235)))
          {
            v236.origin.x = v126;
            v236.origin.y = v128;
            v236.size.width = v130;
            v236.size.height = v132;
            MinX = CGRectGetMinX(v236);
          }
        }

        MEMORY[0x2318D8E70](MinX, v96, v98, v100);
        [v92 setFrame:{MinX, v96, v98, v100}];
        memset(&v189, 0, sizeof(v189));
        *&m.m11 = v190;
        *&m.m13 = v191;
        *&m.m21 = v192;
        CATransform3DMakeAffineTransform(&v189, &m);
        *&v187[3] = v189;
        CATransform3DTranslate(&m, &v187[3], 0.0, 0.0, v187[0]);
        v189 = m;
        [v92 setTransform3D:&m];
        *&m.m11 = v190;
        *&m.m13 = v191;
        *&m.m21 = v192;
        CLKFrameFromCenterBoundsAndTransform();
        [v92 setComputedFrame:?];
        [obj setObject:v92 forKeyedSubscript:v90];

        v85 = v165;
      }

      ++v84;
    }

    while (v156 != v84);
    v147 = obj;
    objc_storeStrong(&self->_headerLayoutInfo, obj);
    v148 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:0];
    v149 = [(UICollectionViewLayoutAttributes *)NTKUpNextCollectionViewFlowLayoutAttributes layoutAttributesForDecorationViewOfKind:@"NTKUpNextCollectionViewFlowLayoutStatusBarDecorationKind" withIndexPath:v148];
    decorationLayoutInfo = self->_decorationLayoutInfo;
    self->_decorationLayoutInfo = v149;

    v151 = self->_decorationLayoutInfo;
    v237.origin.x = v85;
    v237.origin.y = v164;
    v237.size.width = v167;
    v237.size.height = v166;
    v152 = CGRectGetMinY(v237);
    v238.origin.x = v85;
    v238.origin.y = v164;
    v238.size.width = v167;
    v238.size.height = v166;
    [(UICollectionViewLayoutAttributes *)v151 setFrame:0.0, v152, CGRectGetWidth(v238), self->_statusBarDecorationHeight];
    [(UICollectionViewLayoutAttributes *)self->_decorationLayoutInfo setAlpha:self->_topItemsAlpha];
    v153 = self->_decorationLayoutInfo;
    CATransform3DMakeTranslation(&v189, 0.0, 0.0, 10.0);
    [(UICollectionViewLayoutAttributes *)v153 setTransform3D:&v189];
  }
}

- (void)finalizeCollectionViewUpdates
{
  v14.receiver = self;
  v14.super_class = NTKUpNextCollectionViewFlowLayout;
  [(NTKUpNextCollectionViewFlowLayout *)&v14 finalizeCollectionViewUpdates];
  if (self->_indexPathToSnapTo)
  {
    v3 = [(NTKUpNextCollectionViewFlowLayout *)self flowLayoutAttributesForItemAtIndexPath:?];
    [v3 frame];
    [(NTKUpNextCollectionViewFlowLayout *)self targetContentOffsetForProposedContentOffset:?];
    v5 = v4;
    v7 = v6 + self->_snappingOffset;
    v8 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;

    v13 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
    [v13 setBounds:{v5, v7, v10, v12}];
  }
}

- (id)invalidationContextForBoundsChange:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = NTKUpNextCollectionViewFlowLayout;
  v3 = [(UICollectionViewFlowLayout *)&v5 invalidationContextForBoundsChange:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [v3 setInvalidateFlowLayoutAttributes:0];
  [v3 setInvalidateFlowLayoutDelegateMetrics:0];

  return v3;
}

- (id)flowLayoutAttributesForItemAtIndexPath:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKUpNextCollectionViewFlowLayout;
  v3 = [(UICollectionViewFlowLayout *)&v5 layoutAttributesForItemAtIndexPath:a3];

  return v3;
}

- (void)_updateVisibilityForLayoutAttributes:(id)a3 inBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v16 = a3;
  [v16 computedFrame];
  MaxY = CGRectGetMaxY(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v9 = CGRectGetMinY(v19) + self->_statusBarDecorationHeight;
  [(UICollectionViewFlowLayout *)self minimumLineSpacing];
  v11 = MaxY < v9 + v10 + 0.5;
  [v16 computedFrame];
  MinY = CGRectGetMinY(v20);
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  LODWORD(self) = MinY >= CGRectGetMinY(v21) + self->_statusBarDecorationHeight + -0.5;
  v14 = [v16 layoutMode];
  v15 = v14 == 4 || v11;
  if (v14 == 4)
  {
    self = 0;
  }

  else
  {
    self = self;
  }

  [v16 setNotVisibleToUser:v15];
  [v16 setFullyVisibleToUser:self];
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v42 = *MEMORY[0x277D85DE8];
  v8 = objc_opt_new();
  showingAllAttributes = self->_showingAllAttributes;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = [(NSDictionary *)self->_layoutInfo allValues];
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v37;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        if (!showingAllAttributes)
        {
          [*(*(&v36 + 1) + 8 * i) computedFrame];
          v46.origin.x = v16;
          v46.origin.y = v17;
          v46.size.width = v18;
          v46.size.height = v19;
          v44.origin.x = x;
          v44.origin.y = y;
          v44.size.width = width;
          v44.size.height = height;
          if (!CGRectIntersectsRect(v44, v46))
          {
            continue;
          }

          [v15 alpha];
          if (fabs(v20) < 0.00000011920929)
          {
            continue;
          }
        }

        [v8 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v12);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v21 = [(NSDictionary *)self->_headerLayoutInfo allValues];
  v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v33;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v32 + 1) + 8 * j);
        if (!showingAllAttributes)
        {
          [*(*(&v32 + 1) + 8 * j) computedFrame];
          v47.origin.x = v27;
          v47.origin.y = v28;
          v47.size.width = v29;
          v47.size.height = v30;
          v45.origin.x = x;
          v45.origin.y = y;
          v45.size.width = width;
          v45.size.height = height;
          if (!CGRectIntersectsRect(v45, v47))
          {
            continue;
          }
        }

        [v8 addObject:v26];
      }

      v23 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v23);
  }

  if (self->_decorationLayoutInfo)
  {
    [v8 addObject:?];
  }

  return v8;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3
{
  [(NTKUpNextCollectionViewFlowLayout *)self targetContentOffsetForProposedContentOffset:a3.x withScrollingVelocity:a3.y, *MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3 withScrollingVelocity:(CGPoint)a4
{
  y = a3.y;
  x = a3.x;
  v76 = *MEMORY[0x277D85DE8];
  if (self->_snappingEnabled)
  {
    v7 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView:a3.x];
    v8 = [v7 numberOfSections];

    if (v8 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      for (i = 0; i != v8; ++i)
      {
        v12 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
        v13 = [v12 numberOfItemsInSection:i];

        v9 = v13 - 1;
        if (v13 >= 1)
        {
          v14 = [MEMORY[0x277CCAA70] indexPathForItem:v9 inSection:i];

          v10 = v14;
        }
      }
    }

    v15 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView:v9];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;

    UIRectInsetEdges();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v73.receiver = self;
    v73.super_class = NTKUpNextCollectionViewFlowLayout;
    v30 = [(UICollectionViewFlowLayout *)&v73 layoutAttributesForElementsInRect:v17, y, v19, v21];
    v31 = objc_opt_new();
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v32 = v30;
    v33 = [v32 countByEnumeratingWithState:&v69 objects:v75 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v70;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v70 != v35)
          {
            objc_enumerationMutation(v32);
          }

          v37 = *(*(&v69 + 1) + 8 * j);
          [v37 frame];
          v81.origin.x = v23;
          v81.origin.y = v25;
          v81.size.width = v27;
          v81.size.height = v29;
          if (CGRectIntersectsRect(v78, v81) && ![v37 representedElementCategory])
          {
            [v31 addObject:v37];
          }
        }

        v34 = [v32 countByEnumeratingWithState:&v69 objects:v75 count:16];
      }

      while (v34);
    }

    v63 = y;

    v38 = *(MEMORY[0x277CBF348] + 8);
    v64 = *MEMORY[0x277CBF348];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v39 = v31;
    v40 = [v39 countByEnumeratingWithState:&v65 objects:v74 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v66;
      v43 = 0.0;
      while (2)
      {
        for (k = 0; k != v41; ++k)
        {
          if (*v66 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v45 = *(*(&v65 + 1) + 8 * k);
          [v45 frame];
          v82.origin.x = v46;
          v82.origin.y = v47;
          v82.size.width = v48;
          v82.size.height = v49;
          v79.origin.x = v23;
          v79.origin.y = v25;
          v79.size.width = v27;
          v79.size.height = v29;
          v80 = CGRectIntersection(v79, v82);
          height = v80.size.height;
          [v45 frame];
          v52 = height / v51;
          if (v52 > 0.449999988 || ([v45 indexPath], v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v53, "isEqual:", v10), v53, (v54 & 1) != 0))
          {
            [v45 frame];
            x = v57;
            y = v58 - self->_topOffsetForSnapping;

            goto LABEL_35;
          }

          if (v52 > v43)
          {
            [v45 frame];
            v64 = v55;
            v38 = v56;
            v43 = v52;
          }
        }

        v41 = [v39 countByEnumeratingWithState:&v65 objects:v74 count:16];
        if (v41)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v43 = 0.0;
    }

    v59 = fabs(v43);
    x = v62;
    y = v63;
    if (v59 >= 0.00000011920929)
    {
      y = v38 - self->_topOffsetForSnapping;
      x = v64;
    }

LABEL_35:
  }

  v60 = x;
  v61 = y;
  result.y = v61;
  result.x = v60;
  return result;
}

- (id)indexPathsToDeleteForSupplementaryViewOfKind:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:*MEMORY[0x277D767D8]])
  {
    v5 = [(NSSet *)self->_previousSectionsWithHeaders mutableCopy];
    [v5 minusSet:self->_sectionsWithHeaders];
    v20.receiver = self;
    v20.super_class = NTKUpNextCollectionViewFlowLayout;
    v6 = [(NTKUpNextCollectionViewFlowLayout *)&v20 indexPathsToDeleteForSupplementaryViewOfKind:v4];
    v7 = [v6 mutableCopy];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{objc_msgSend(*(*(&v16 + 1) + 8 * i), "integerValue")}];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = NTKUpNextCollectionViewFlowLayout;
    v7 = [(NTKUpNextCollectionViewFlowLayout *)&v15 indexPathsToDeleteForSupplementaryViewOfKind:v4];
  }

  return v7;
}

- (void)_updateSectionHeaderListIfNeeded
{
  if (self->_needsHeaderUpdate)
  {
    self->_needsHeaderUpdate = 0;
    objc_storeStrong(&self->_previousSectionsWithHeaders, self->_sectionsWithHeaders);
    v10 = objc_opt_new();
    v4 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
    v5 = [v4 numberOfSections];

    if (v5 >= 1)
    {
      for (i = 0; i != v5; ++i)
      {
        if ([(NTKUpNextCollectionViewFlowLayout *)self _hasHeaderForSection:i])
        {
          v7 = [MEMORY[0x277CCABB0] numberWithInteger:i];
          [v10 addObject:v7];
        }
      }
    }

    v8 = [v10 copy];
    sectionsWithHeaders = self->_sectionsWithHeaders;
    self->_sectionsWithHeaders = v8;
  }
}

- (void)_updateContentInsetsIfNeeded
{
  if (self->_needsInsetsUpdate)
  {
    v50 = v9;
    v51 = v8;
    v52 = v7;
    v53 = v6;
    v54 = v5;
    v55 = v4;
    v56 = v2;
    v57 = v3;
    self->_needsInsetsUpdate = 0;
    v11 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
    v12 = [v11 numberOfSections];

    v13 = [(NSIndexPath *)self->_topElementIndexPath section];
    if (v13 >= v12)
    {
      v20 = 0;
      v15 = 0;
    }

    else
    {
      v14 = v13;
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
        v18 = [v17 numberOfItemsInSection:v14];

        if (v18 < 1)
        {
          v20 = v16;
        }

        else
        {
          for (i = 0; i != v18; ++i)
          {
            v20 = v15;

            v15 = [MEMORY[0x277CCAA70] indexPathForItem:i inSection:v14];

            v16 = v20;
          }
        }

        ++v14;
        v16 = v20;
      }

      while (v14 != v12);
    }

    v21 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
    [v21 contentInset];
    v23 = v22;
    v25 = v24;
    v27 = v26;

    if (v20)
    {
      v28 = v20;
    }

    else
    {
      v28 = v15;
    }

    v29 = v28;
    if (v29)
    {
      v49.receiver = self;
      v49.super_class = NTKUpNextCollectionViewFlowLayout;
      v30 = [(UICollectionViewFlowLayout *)&v49 layoutAttributesForItemAtIndexPath:v29];
      [v30 frame];
      v31 = CGRectGetMinY(v58) - self->_topOffsetForSnapping;
      [(UICollectionViewFlowLayout *)self collectionViewContentSize];
      v33 = v32 - v31;
      v34 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
      [v34 bounds];
      v35 = CGRectGetHeight(v59) - v33;
    }

    else
    {
      v35 = 0.0;
    }

    v36 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
    [v36 contentInset];
    if (v25 == v40 && v23 == v37 && v27 == v39)
    {
      v41 = v38;

      if (v35 == v41)
      {
LABEL_25:

        return;
      }
    }

    else
    {
    }

    v42 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
    [v42 contentOffset];
    v44 = v43;
    v46 = v45;

    v47 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
    [v47 setContentInset:{v23, v25, v35, v27}];

    v48 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
    [v48 setContentOffset:0 animated:{v44, v46}];

    goto LABEL_25;
  }
}

- (BOOL)_hasHeaderForSection:(int64_t)a3
{
  v5 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
  v6 = [v5 delegate];
  v7 = [(NTKUpNextCollectionViewFlowLayout *)self collectionView];
  [v6 collectionView:v7 layout:self referenceSizeForHeaderInSection:a3];
  v9 = v8;
  v11 = v10;

  return v11 != *(MEMORY[0x277CBF3A8] + 8) || v9 != *MEMORY[0x277CBF3A8];
}

@end