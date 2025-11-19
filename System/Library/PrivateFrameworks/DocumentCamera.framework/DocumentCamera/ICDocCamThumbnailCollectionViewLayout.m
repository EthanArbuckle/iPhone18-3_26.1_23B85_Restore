@interface ICDocCamThumbnailCollectionViewLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGRect)compactFrameForThumbnailAtIndexPath:(id)a3 withSize:(CGSize)a4;
- (CGRect)frameForThumbnailAtIndexPath:(id)a3;
- (CGSize)collectionViewContentSize;
- (CGSize)frameSizeForImageSize:(CGSize)a3;
- (CGSize)itemSize;
- (ICDocCamThumbnailCollectionViewLayout)init;
- (ICDocCamThumbnailCollectionViewLayout)initWithCoder:(id)a3;
- (ICDocCamThumbnailViewLayoutDelegate)delegate;
- (id)finalLayoutAttributesForDisappearingDecorationElementOfKind:(id)a3 atIndexPath:(id)a4;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3;
- (id)initialLayoutAttributesForAppearingDecorationElementOfKind:(id)a3 atIndexPath:(id)a4;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)finalizeCollectionViewUpdates;
- (void)prepareForCollectionViewUpdates:(id)a3;
- (void)prepareLayout;
- (void)prepareLayout:(BOOL)a3;
- (void)setup;
@end

@implementation ICDocCamThumbnailCollectionViewLayout

- (ICDocCamThumbnailCollectionViewLayout)init
{
  v5.receiver = self;
  v5.super_class = ICDocCamThumbnailCollectionViewLayout;
  v2 = [(ICDocCamThumbnailCollectionViewLayout *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ICDocCamThumbnailCollectionViewLayout *)v2 setup];
  }

  return v3;
}

- (ICDocCamThumbnailCollectionViewLayout)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = ICDocCamThumbnailCollectionViewLayout;
  v3 = [(ICDocCamThumbnailCollectionViewLayout *)&v6 init];
  v4 = v3;
  if (v3)
  {
    [(ICDocCamThumbnailCollectionViewLayout *)v3 setup];
  }

  return v4;
}

- (void)setup
{
  +[_TtC14DocumentCamera22DCLiquidGlassConstants thumbnailHeight];
  v6.size.height = v3;
  v6.size.width = 46.3636364;
  v6.origin.x = 0.0;
  v6.origin.y = 0.0;
  v7 = CGRectIntegral(v6);
  [(ICDocCamThumbnailCollectionViewLayout *)self setItemSize:v7.size.width, v7.size.height];
  [(ICDocCamThumbnailCollectionViewLayout *)self registerClass:objc_opt_class() forDecorationViewOfKind:@"Decoration.Shadow"];
  v4 = objc_opt_class();

  [(ICDocCamThumbnailCollectionViewLayout *)self registerClass:v4 forDecorationViewOfKind:@"Decoration.Badge"];
}

- (void)prepareLayout
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom] == 0;

  [(ICDocCamThumbnailCollectionViewLayout *)self setCompactLayout:v4];
  v5 = [(ICDocCamThumbnailCollectionViewLayout *)self compactLayout];

  [(ICDocCamThumbnailCollectionViewLayout *)self prepareLayout:v5];
}

- (void)prepareLayout:(BOOL)a3
{
  v55 = a3;
  v51 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
  v6 = [v5 numberOfSections];

  v52 = v6;
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 0x277CCA000uLL;
    v53 = v4;
    do
    {
      v9 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
      v10 = [v9 numberOfItemsInSection:v7];

      v54 = v10 - 1;
      if (v10 >= 1)
      {
        v11 = 0;
        do
        {
          v12 = [*(v8 + 2672) indexPathForItem:v11 inSection:v7];
          v13 = [(UICollectionViewLayoutAttributes *)ICDocCamThumbnailViewLayoutAttributes layoutAttributesForCellWithIndexPath:v12];
          objc_opt_class();
          objc_opt_isKindOfClass();
          if (v55)
          {
            v14 = [*(v8 + 2672) indexPathForItem:v54 inSection:v7];
            v15 = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
            v16 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
            [v15 collectionView:v16 imageSizeAtIndex:{objc_msgSend(v14, "item")}];
            v18 = v17;
            v20 = v19;

            v4 = v53;
            [(ICDocCamThumbnailCollectionViewLayout *)self frameSizeForImageSize:v18, v20];
            v22 = v21;
            v24 = v23;
            [(ICDocCamThumbnailCollectionViewLayout *)self compactFrameForThumbnailAtIndexPath:v12 withSize:?];
            [v13 setFrame:?];
            [v13 setImageWidth:v22];
            [v13 setImageHeight:v24];
            v25 = v10 != 2 && v10 != 1;
            [v13 setRenderShadow:v10 == 1];
            [v13 setHidden:v25];
          }

          else
          {
            v26 = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
            v27 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
            [v26 collectionView:v27 imageSizeAtIndex:{objc_msgSend(v12, "item")}];
            v29 = v28;
            v31 = v30;

            [(ICDocCamThumbnailCollectionViewLayout *)self frameSizeForImageSize:v29, v31];
            v33 = v32;
            v35 = v34;
            [(ICDocCamThumbnailCollectionViewLayout *)self frameForThumbnailAtIndexPath:v12];
            [v13 setFrame:?];
            [v13 setImageWidth:v33];
            [v13 setImageHeight:v35];
            [v13 setRenderShadow:1];
            [v13 setHidden:0];
          }

          [v13 setZIndex:{objc_msgSend(v12, "item")}];
          [v4 setObject:v13 forKeyedSubscript:v12];

          ++v11;
          --v10;
          v8 = 0x277CCA000;
        }

        while (v10);
      }

      ++v7;
    }

    while (v7 != v52);
    if (!v55)
    {
      v36 = 0;
      while (2)
      {
        v37 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
        v38 = [v37 numberOfItemsInSection:v36];

        v39 = v38 - 2;
        if (v38 >= 2)
        {
          v40 = 0;
          do
          {
            v41 = [MEMORY[0x277CCAA70] indexPathForItem:v40 inSection:v36];
            v42 = [MEMORY[0x277CCAA70] indexPathForItem:++v40 inSection:v36];
            v43 = [v4 objectForKeyedSubscript:v41];
            v44 = v4;
            v45 = v43;
            v46 = [v44 objectForKeyedSubscript:v42];
            [v45 frame];
            v48 = v47;
            [v46 frame];
            v50 = v48 - v49;
            if (v50 < 0.0)
            {
              v50 = -v50;
            }

            if (v50 < 8.0)
            {
              [(ICDocCamThumbnailCollectionViewLayout *)self setCompactLayout:1];
              [(ICDocCamThumbnailCollectionViewLayout *)self prepareLayout:1];

              v4 = v53;
              goto LABEL_25;
            }

            v4 = v53;
          }

          while (v40 - 1 != v39);
          if (++v36 != v52)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  [v51 setObject:v4 forKeyedSubscript:@"ICDocCamThumbnailCellKind"];
  [(ICDocCamThumbnailCollectionViewLayout *)self setLayoutInfo:v51];
LABEL_25:
}

- (CGSize)frameSizeForImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(ICDocCamThumbnailCollectionViewLayout *)self itemSize];
  v8 = v7;
  if (width > height)
  {
    [(ICDocCamThumbnailCollectionViewLayout *)self itemSize];
    v10 = v9;
    v6 = v8;
    v8 = v10;
  }

  v11 = v8;
  result.height = v11;
  result.width = v6;
  return result;
}

- (CGRect)compactFrameForThumbnailAtIndexPath:(id)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = 0.0;
  if ([MEMORY[0x277D74248] dc_isRTL])
  {
    v8 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
    [v8 frame];
    v10 = v9;

    v7 = v10 - width;
  }

  [(ICDocCamThumbnailCollectionViewLayout *)self itemSize];
  v12 = v11 - height + 0.0;
  v13 = v7;
  v14 = width;
  v15 = height;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v13;
  return result;
}

- (CGRect)frameForThumbnailAtIndexPath:(id)a3
{
  v164 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
  v6 = [v5 numberOfItemsInSection:0];

  if (v6)
  {
    v7 = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
    v8 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
    [v7 collectionView:v8 imageSizeAtIndex:{objc_msgSend(v4, "item")}];
    v10 = v9;
    v12 = v11;

    [(ICDocCamThumbnailCollectionViewLayout *)self frameSizeForImageSize:v10, v12];
    v14 = v13;
    v16 = v15;
    v17 = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
    v18 = [v17 rootView];

    [v18 frame];
    v20 = v19 * 0.5;
    v22 = v21 * 0.5;
    v23 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
    [v18 convertPoint:v23 toView:{v20, v22}];
    v25 = v24;

    if ([MEMORY[0x277D74248] dc_isRTL])
    {
      v26 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
      [v26 frame];
      v28 = v27;

      if ((DCDebugInterfaceEnabled() & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "userInterfaceIdiom"), v29, v30 == 1))
      {
        MEMORY[0x28223BE20]();
        v31 = (&v161 - 2 * v6);
        v32 = v6 - 1;
        if (v6 < 1)
        {
          v44 = 0.0;
        }

        else
        {
          v162 = v18;
          v163 = &v161;
          v33 = 0;
          v34 = 0;
          v35 = v31 + 1;
          do
          {
            v36 = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
            v37 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
            [v36 collectionView:v37 imageSizeAtIndex:v34];
            v39 = v38;
            v41 = v40;

            [(ICDocCamThumbnailCollectionViewLayout *)self frameSizeForImageSize:v39, v41];
            *(v35 - 1) = v42;
            *v35 = v43;
            v33 = (v42 + v33);
            ++v34;
            v35 += 2;
          }

          while (v6 != v34);
          v44 = v33;
          v18 = v162;
        }

        v63 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
        [v63 frame];
        v65 = v64;

        v66 = fmin((v65 - v44) / v32, 10.0);
        v46 = v25 + ((v44 + v66 * v32) / 2) - *v31;
        v67 = [v4 item];
        if (v67 >= v32)
        {
          v68 = v32;
        }

        else
        {
          v68 = v67;
        }

        if (v68 >= 1)
        {
          v69 = 0;
          v70 = v31 + 2;
          do
          {
            v71 = *v70;
            v70 += 2;
            v46 = v46 - (v66 + v71);
            v72 = [v4 item];
            if (v72 >= v32)
            {
              v73 = v32;
            }

            else
            {
              v73 = v72;
            }

            ++v69;
          }

          while (v69 < v73);
        }
      }

      else
      {
        v163 = &v161;
        MEMORY[0x28223BE20]();
        v89 = (&v161 - 2 * v6);
        v90 = v6 - 1;
        if (v6 < 1)
        {
          v102 = 0.0;
        }

        else
        {
          v162 = v18;
          v91 = 0;
          v92 = 0;
          v93 = v89 + 1;
          do
          {
            v94 = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
            v95 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
            [v94 collectionView:v95 imageSizeAtIndex:v92];
            v97 = v96;
            v99 = v98;

            [(ICDocCamThumbnailCollectionViewLayout *)self frameSizeForImageSize:v97, v99];
            *(v93 - 1) = v100;
            *v93 = v101;
            v91 = (v100 + v91);
            ++v92;
            v93 += 2;
          }

          while (v6 != v92);
          v102 = v91;
          v18 = v162;
        }

        v117 = (v102 + v90 * 10.0);
        v118 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
        [v118 frame];
        v120 = v119;

        v121 = (v117 / 2);
        v122 = v25 + v121;
        if (v25 >= v121 && v122 <= v120)
        {
          v46 = v122 - *v89;
          v133 = [v4 item];
          if (v133 >= v90)
          {
            v134 = v90;
          }

          else
          {
            v134 = v133;
          }

          if (v134 >= 1)
          {
            v135 = 0;
            v136 = v89 + 2;
            do
            {
              v137 = *v136;
              v136 += 2;
              v46 = v46 - (v137 + 10.0);
              v138 = [v4 item];
              if (v138 >= v90)
              {
                v139 = v90;
              }

              else
              {
                v139 = v138;
              }

              ++v135;
            }

            while (v135 < v139);
          }
        }

        else
        {
          v46 = v28 - *v89;
          v124 = [v4 item];
          if (v124 >= v90)
          {
            v125 = v90;
          }

          else
          {
            v125 = v124;
          }

          if (v125 >= 1)
          {
            v126 = 0;
            v127 = fmin((v120 - (v117 - v90 * 10.0)) / v90, 10.0);
            v128 = v89 + 2;
            do
            {
              v129 = *v128;
              v128 += 2;
              v130 = v46 - (v127 + v129);
              if (v130 <= v46)
              {
                v46 = v130;
              }

              else
              {
                v46 = v46;
              }

              v131 = [v4 item];
              if (v131 >= v90)
              {
                v132 = v90;
              }

              else
              {
                v132 = v131;
              }

              ++v126;
            }

            while (v126 < v132);
          }
        }
      }
    }

    else if ((DCDebugInterfaceEnabled() & 1) != 0 || ([MEMORY[0x277D75418] currentDevice], v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v47, "userInterfaceIdiom"), v47, v48 == 1))
    {
      MEMORY[0x28223BE20]();
      v49 = (&v161 - 2 * v6);
      v50 = v6 - 1;
      if (v6 < 1)
      {
        v62 = 0.0;
      }

      else
      {
        v162 = v18;
        v163 = &v161;
        v51 = 0;
        v52 = 0;
        v53 = v49 + 1;
        do
        {
          v54 = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
          v55 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
          [v54 collectionView:v55 imageSizeAtIndex:v52];
          v57 = v56;
          v59 = v58;

          [(ICDocCamThumbnailCollectionViewLayout *)self frameSizeForImageSize:v57, v59];
          *(v53 - 1) = v60;
          *v53 = v61;
          v51 = (v60 + v51);
          ++v52;
          v53 += 2;
        }

        while (v6 != v52);
        v62 = v51;
        v18 = v162;
      }

      v74 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
      [v74 frame];
      v76 = v75;

      v77 = fmin((v76 - v62) / v50, 10.0);
      v46 = v25 - ((v62 + v77 * v50) / 2);
      v78 = [v4 item];
      if (v78 >= v6)
      {
        v79 = v6;
      }

      else
      {
        v79 = v78;
      }

      if (v79 >= 1)
      {
        for (i = 0; i < v83; ++i)
        {
          v81 = *v49;
          v49 += 2;
          v46 = v46 + v77 + v81;
          v82 = [v4 item];
          if (v82 >= v6)
          {
            v83 = v6;
          }

          else
          {
            v83 = v82;
          }
        }
      }
    }

    else
    {
      MEMORY[0x28223BE20]();
      v103 = (&v161 - 2 * v6);
      v104 = v6 - 1;
      if (v6 < 1)
      {
        v116 = 0.0;
      }

      else
      {
        v162 = v18;
        v163 = &v161;
        v105 = 0;
        v106 = 0;
        v107 = v103 + 1;
        do
        {
          v108 = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
          v109 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
          [v108 collectionView:v109 imageSizeAtIndex:v105];
          v111 = v110;
          v113 = v112;

          [(ICDocCamThumbnailCollectionViewLayout *)self frameSizeForImageSize:v111, v113];
          *(v107 - 1) = v114;
          *v107 = v115;
          v106 = (v114 + v106);
          ++v105;
          v107 += 2;
        }

        while (v6 != v105);
        v116 = v106;
        v18 = v162;
      }

      v140 = (v116 + v104 * 10.0);
      v141 = (v140 / 2);
      v46 = v25 - v141;
      v142 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
      [v142 frame];
      v144 = v143;

      v145 = v25 + v141;
      if (v25 - v141 >= 0.0 && v145 <= v144)
      {
        v155 = [v4 item];
        if (v155 >= v6)
        {
          v156 = v6;
        }

        else
        {
          v156 = v155;
        }

        if (v156 >= 1)
        {
          for (j = 0; j < v160; ++j)
          {
            v158 = *v103;
            v103 += 2;
            v46 = v46 + v158 + 10.0;
            v159 = [v4 item];
            if (v159 >= v6)
            {
              v160 = v6;
            }

            else
            {
              v160 = v159;
            }
          }
        }
      }

      else
      {
        v147 = [v4 item];
        if (v147 >= v6)
        {
          v148 = v6;
        }

        else
        {
          v148 = v147;
        }

        if (v148 < 1)
        {
          v46 = 0.0;
        }

        else
        {
          v149 = 0;
          v150 = fmin((v144 - (v140 - v104 * 10.0)) / v104, 10.0);
          v46 = 0.0;
          do
          {
            v151 = *v103;
            v103 += 2;
            v152 = v46 + v150 + v151;
            if (v152 >= v46)
            {
              v46 = v152;
            }

            else
            {
              v46 = v46;
            }

            v153 = [v4 item];
            if (v153 >= v6)
            {
              v154 = v6;
            }

            else
            {
              v154 = v153;
            }

            ++v149;
          }

          while (v149 < v154);
        }
      }
    }

    [(ICDocCamThumbnailCollectionViewLayout *)self itemSize];
    v45 = v84 - v16 + 0.0;
  }

  else
  {
    v46 = *MEMORY[0x277CBF3A0];
    v45 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v85 = v46;
  v86 = v45;
  v87 = v14;
  v88 = v16;
  result.size.height = v88;
  result.size.width = v87;
  result.origin.y = v86;
  result.origin.x = v85;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__6;
  v25 = __Block_byref_object_dispose__6;
  v8 = MEMORY[0x277CBEB18];
  v9 = [(ICDocCamThumbnailCollectionViewLayout *)self layoutInfo];
  v26 = [v8 arrayWithCapacity:{objc_msgSend(v9, "count")}];

  v10 = [(ICDocCamThumbnailCollectionViewLayout *)self layoutInfo];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __75__ICDocCamThumbnailCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke;
  v20[3] = &unk_278F94128;
  *&v20[5] = x;
  *&v20[6] = y;
  *&v20[7] = width;
  *&v20[8] = height;
  v20[4] = &v21;
  [v10 enumerateKeysAndObjectsUsingBlock:v20];

  v11 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
  v12 = [v11 numberOfItemsInSection:0];

  v13 = [(ICDocCamThumbnailCollectionViewLayout *)self compactLayout];
  if (v12 > 1 && v13)
  {
    v15 = [MEMORY[0x277CCAA70] indexPathForItem:v12 - 1 inSection:0];
    v16 = [(ICDocCamThumbnailCollectionViewLayout *)self layoutAttributesForDecorationViewOfKind:@"Decoration.Shadow" atIndexPath:v15];
    [v22[5] dc_addNonNilObject:v16];
    v17 = [(ICDocCamThumbnailCollectionViewLayout *)self layoutAttributesForDecorationViewOfKind:@"Decoration.Badge" atIndexPath:v15];
    [v22[5] dc_addNonNilObject:v17];
  }

  v18 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v18;
}

uint64_t __75__ICDocCamThumbnailCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __75__ICDocCamThumbnailCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke_2;
  v5[3] = &unk_278F94100;
  v3 = *(a1 + 56);
  v6 = *(a1 + 40);
  v7 = v3;
  v5[4] = *(a1 + 32);
  return [a3 enumerateKeysAndObjectsUsingBlock:v5];
}

void __75__ICDocCamThumbnailCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  [v8 frame];
  v10.origin.x = v4;
  v10.origin.y = v5;
  v10.size.width = v6;
  v10.size.height = v7;
  if (CGRectIntersectsRect(*(a1 + 40), v10))
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v8];
  }
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(ICDocCamThumbnailCollectionViewLayout *)self layoutInfo];
  v6 = [v5 objectForKeyedSubscript:@"ICDocCamThumbnailCellKind"];
  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
  v9 = [v8 numberOfItemsInSection:0];

  v10 = 0;
  if ([(ICDocCamThumbnailCollectionViewLayout *)self compactLayout]&& v9 >= 2)
  {
    v10 = [MEMORY[0x277D75308] layoutAttributesForDecorationViewOfKind:v6 withIndexPath:v7];
    v11 = [(ICDocCamThumbnailCollectionViewLayout *)self layoutInfo];
    v12 = [v11 objectForKeyedSubscript:@"ICDocCamThumbnailCellKind"];
    v13 = [v12 objectForKeyedSubscript:v7];

    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [MEMORY[0x277D74248] dc_isRTL];
    if ([v6 isEqualToString:@"Decoration.Shadow"])
    {
      v23 = -2.0;
      if (v22)
      {
        v23 = 2.0;
      }

      [v10 setFrame:{v15 + v23, v17 + 2.0, v19, v21}];
      v24 = -1;
    }

    else
    {
      if (!+[DCSettings _isSolariumEnabled](DCSettings, "_isSolariumEnabled") || ![v6 isEqualToString:@"Decoration.Badge"])
      {
        goto LABEL_12;
      }

      v25 = v15;
      v26 = v17;
      v27 = v19;
      v28 = v21;
      if (v22)
      {
        MinX = CGRectGetMinX(*&v25);
      }

      else
      {
        MinX = CGRectGetMaxX(*&v25);
      }

      v31 = MinX;
      [v13 frame];
      [v10 setCenter:{v31, CGRectGetMinY(v33)}];
      +[ICDocCamThumbnailBadgeDecorationView sizeThatFitsCount:](ICDocCamThumbnailBadgeDecorationView, "sizeThatFitsCount:", [v7 item] + 1);
      [v10 setSize:?];
      v24 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [v10 setZIndex:v24];
LABEL_12:
  }

  return v10;
}

- (CGSize)collectionViewContentSize
{
  v3 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
  [v3 bounds];
  v5 = v4;
  v6 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
  [v6 bounds];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (![(ICDocCamThumbnailCollectionViewLayout *)self transitioning])
  {
    return 1;
  }

  v8 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v17 = CGRectGetWidth(v19);
  v20.origin.x = v10;
  v20.origin.y = v12;
  v20.size.width = v14;
  v20.size.height = v16;
  return v17 != CGRectGetWidth(v20);
}

- (void)prepareForCollectionViewUpdates:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = ICDocCamThumbnailCollectionViewLayout;
  [(ICDocCamThumbnailCollectionViewLayout *)&v20 prepareForCollectionViewUpdates:v4];
  v5 = [MEMORY[0x277CBEB18] array];
  [(ICDocCamThumbnailCollectionViewLayout *)self setDeleteIndexPaths:v5];

  v6 = [MEMORY[0x277CBEB18] array];
  [(ICDocCamThumbnailCollectionViewLayout *)self setInsertIndexPaths:v6];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 updateAction] == 1)
        {
          v13 = [(ICDocCamThumbnailCollectionViewLayout *)self deleteIndexPaths];
          v14 = [v12 indexPathBeforeUpdate];
        }

        else
        {
          if ([v12 updateAction])
          {
            continue;
          }

          v13 = [(ICDocCamThumbnailCollectionViewLayout *)self insertIndexPaths];
          v14 = [v12 indexPathAfterUpdate];
        }

        v15 = v14;
        [v13 addObject:v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v9);
  }
}

- (void)finalizeCollectionViewUpdates
{
  v3.receiver = self;
  v3.super_class = ICDocCamThumbnailCollectionViewLayout;
  [(ICDocCamThumbnailCollectionViewLayout *)&v3 finalizeCollectionViewUpdates];
  [(ICDocCamThumbnailCollectionViewLayout *)self setDeleteIndexPaths:0];
  [(ICDocCamThumbnailCollectionViewLayout *)self setInsertIndexPaths:0];
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = ICDocCamThumbnailCollectionViewLayout;
  v5 = [(ICDocCamThumbnailCollectionViewLayout *)&v36 initialLayoutAttributesForAppearingItemAtIndexPath:v4];
  v6 = [(ICDocCamThumbnailCollectionViewLayout *)self insertIndexPaths];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    if (!v5)
    {
      v5 = [(ICDocCamThumbnailCollectionViewLayout *)self layoutAttributesForItemAtIndexPath:v4];
    }

    [v5 setAlpha:1.0];
    v8 = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
    v9 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
    [v8 collectionView:v9 imageSizeAtIndex:{objc_msgSend(v4, "item")}];
    v11 = v10;
    v13 = v12;

    v14 = [(ICDocCamThumbnailCollectionViewLayout *)self delegate];
    [v14 targetViewRect];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    [MEMORY[0x277D755B8] dc_aspectFitImageFrameForViewWithFrame:v16 imageSize:{v18, v20, v22, v11, v13}];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
    v32 = [v31 superview];
    v33 = [v32 superview];

    v34 = [(ICDocCamThumbnailCollectionViewLayout *)self collectionView];
    [v33 convertRect:v34 toView:{v24, v26, v28, v30}];
    [v5 setFrame:?];
  }

  return v5;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICDocCamThumbnailCollectionViewLayout;
  v5 = [(ICDocCamThumbnailCollectionViewLayout *)&v11 finalLayoutAttributesForDisappearingItemAtIndexPath:v4];
  v6 = [(ICDocCamThumbnailCollectionViewLayout *)self deleteIndexPaths];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    if (!v5)
    {
      v5 = [(ICDocCamThumbnailCollectionViewLayout *)self layoutAttributesForItemAtIndexPath:v4];
    }

    [v5 setAlpha:0.0];
    [v5 setCenter:{0.0, 0.0}];
    CATransform3DMakeScale(&v10, 0.1, 0.1, 1.0);
    v9 = v10;
    [v5 setTransform3D:&v9];
  }

  return 0;
}

- (id)initialLayoutAttributesForAppearingDecorationElementOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = ICDocCamThumbnailCollectionViewLayout;
  v8 = [(ICDocCamThumbnailCollectionViewLayout *)&v17 initialLayoutAttributesForAppearingDecorationElementOfKind:v6 atIndexPath:v7];
  if ([v6 isEqualToString:@"Decoration.Shadow"])
  {
    if (!v8)
    {
      v8 = [(ICDocCamThumbnailCollectionViewLayout *)self layoutAttributesForDecorationViewOfKind:v6 atIndexPath:v7];
    }

    [v8 setAlpha:1.0];
    v9 = *(MEMORY[0x277CD9DE8] + 80);
    v16[4] = *(MEMORY[0x277CD9DE8] + 64);
    v16[5] = v9;
    v10 = *(MEMORY[0x277CD9DE8] + 112);
    v16[6] = *(MEMORY[0x277CD9DE8] + 96);
    v16[7] = v10;
    v11 = *(MEMORY[0x277CD9DE8] + 16);
    v16[0] = *MEMORY[0x277CD9DE8];
    v16[1] = v11;
    v12 = *(MEMORY[0x277CD9DE8] + 48);
    v16[2] = *(MEMORY[0x277CD9DE8] + 32);
    v16[3] = v12;
    [v8 setTransform3D:v16];
    [v8 frame];
    v14 = v13;
    [v8 frame];
    [v8 setFrame:v14];
  }

  return 0;
}

- (id)finalLayoutAttributesForDisappearingDecorationElementOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = ICDocCamThumbnailCollectionViewLayout;
  v8 = [(ICDocCamThumbnailCollectionViewLayout *)&v19 finalLayoutAttributesForDisappearingDecorationElementOfKind:v6 atIndexPath:v7];
  v9 = [(ICDocCamThumbnailCollectionViewLayout *)self deleteIndexPaths];
  v10 = [v9 containsObject:v7];

  if (v10 && [v6 isEqualToString:@"Decoration.Shadow"])
  {
    if (!v8)
    {
      v8 = [(ICDocCamThumbnailCollectionViewLayout *)self layoutAttributesForDecorationViewOfKind:v6 atIndexPath:v7];
    }

    [v8 setAlpha:0.0];
    v11 = *(MEMORY[0x277CD9DE8] + 80);
    v18[4] = *(MEMORY[0x277CD9DE8] + 64);
    v18[5] = v11;
    v12 = *(MEMORY[0x277CD9DE8] + 112);
    v18[6] = *(MEMORY[0x277CD9DE8] + 96);
    v18[7] = v12;
    v13 = *(MEMORY[0x277CD9DE8] + 16);
    v18[0] = *MEMORY[0x277CD9DE8];
    v18[1] = v13;
    v14 = *(MEMORY[0x277CD9DE8] + 48);
    v18[2] = *(MEMORY[0x277CD9DE8] + 32);
    v18[3] = v14;
    [v8 setTransform3D:v18];
    [v8 frame];
    v16 = v15;
    [v8 frame];
    [v8 setFrame:v16];
  }

  return v8;
}

- (CGSize)itemSize
{
  width = self->_itemSize.width;
  height = self->_itemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (ICDocCamThumbnailViewLayoutDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end