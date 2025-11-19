@interface HUQuickControlCollectionViewLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGSize)collectionViewContentSize;
- (HUQuickControlCollectionViewLayout)init;
- (UIEdgeInsets)contentInset;
- (id)_computeRowLayoutOriginsFromLayoutDetails:(id)a3 forSectionSettings:(id)a4;
- (id)_computeRowLayoutsForGridLayout:(id)a3 gridLayoutSettings:(id)a4;
- (id)_computeSizingLayoutInfo;
- (id)_intrinsicSizeDescriptorForItemAtIndexPath:(id)a3 itemSize:(unint64_t)a4;
- (id)delegate;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (void)_computeGridLayoutAttributesForLayoutInfo:(id)a3;
- (void)_computeLayoutInfo;
- (void)invalidateLayoutWithContext:(id)a3;
- (void)prepareLayout;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setLayoutOptions:(id)a3;
@end

@implementation HUQuickControlCollectionViewLayout

- (HUQuickControlCollectionViewLayout)init
{
  v8.receiver = self;
  v8.super_class = HUQuickControlCollectionViewLayout;
  v2 = [(HUQuickControlCollectionViewLayout *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cachedLayoutAttributesByIndexPath = v2->_cachedLayoutAttributesByIndexPath;
    v2->_cachedLayoutAttributesByIndexPath = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    cachedSectionHeaderLayoutAttributes = v2->_cachedSectionHeaderLayoutAttributes;
    v2->_cachedSectionHeaderLayoutAttributes = v5;
  }

  return v2;
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(HUQuickControlCollectionViewLayout *)self invalidateLayout];
  }
}

- (CGSize)collectionViewContentSize
{
  v2 = [(HUQuickControlCollectionViewLayout *)self layoutInfo];
  [v2 collectionViewContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)invalidateLayoutWithContext:(id)a3
{
  v8.receiver = self;
  v8.super_class = HUQuickControlCollectionViewLayout;
  v4 = a3;
  [(HUQuickControlCollectionViewLayout *)&v8 invalidateLayoutWithContext:v4];
  v5 = [(HUQuickControlCollectionViewLayout *)self cachedLayoutAttributesByIndexPath:v8.receiver];
  [v5 removeAllObjects];

  v6 = [(HUQuickControlCollectionViewLayout *)self cachedSectionHeaderLayoutAttributes];
  [v6 removeAllObjects];

  LODWORD(v6) = [v4 invalidateEverything];
  if (v6)
  {
    v7 = [(HUQuickControlCollectionViewLayout *)self layoutManager];
    [v7 generateSectionSettings];
  }
}

- (void)prepareLayout
{
  v11.receiver = self;
  v11.super_class = HUQuickControlCollectionViewLayout;
  [(HUQuickControlCollectionViewLayout *)&v11 prepareLayout];
  v3 = [(HUQuickControlCollectionViewLayout *)self collectionView];
  v4 = [v3 numberOfSections];

  if (v4)
  {
    [(HUQuickControlCollectionViewLayout *)self _computeLayoutInfo];
    v5 = [(HUQuickControlCollectionViewLayout *)self layoutInfo];
    v6 = [v5 layoutDetailsArray];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__HUQuickControlCollectionViewLayout_prepareLayout__block_invoke;
    v10[3] = &unk_277DC4FB8;
    v10[4] = self;
    [v6 na_each:v10];

    [(HUQuickControlCollectionViewLayout *)self collectionViewContentSize];
    v8 = v7;
    v9 = [(HUQuickControlCollectionViewLayout *)self heightConstraint];
    [v9 setConstant:v8];
  }
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(HUQuickControlCollectionViewLayout *)self cachedLayoutAttributesByIndexPath];
  v9 = [v8 allValues];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__HUQuickControlCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke;
  v17[3] = &__block_descriptor_64_e76___UICollectionViewLayoutAttributes_16__0__UICollectionViewLayoutAttributes_8l;
  *&v17[4] = x;
  *&v17[5] = y;
  *&v17[6] = width;
  *&v17[7] = height;
  v10 = [v9 na_map:v17];
  v11 = [v10 mutableCopy];

  v12 = [(HUQuickControlCollectionViewLayout *)self cachedSectionHeaderLayoutAttributes];
  v13 = [v12 allValues];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __72__HUQuickControlCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke_2;
  v16[3] = &__block_descriptor_64_e54_B16__0__HUQuickControlCollectionViewLayoutAttributes_8l;
  *&v16[4] = x;
  *&v16[5] = y;
  *&v16[6] = width;
  *&v16[7] = height;
  v14 = [v13 na_filter:v16];

  [v11 addObjectsFromArray:v14];

  return v11;
}

void *__72__HUQuickControlCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke(CGRect *a1, void *a2)
{
  v3 = a2;
  [v3 frame];
  if (CGRectIntersectsRect(v7, a1[1]))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

BOOL __72__HUQuickControlCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke_2(void *a1, void *a2)
{
  [a2 frame];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];

  return CGRectIntersectsRect(*&v3, *&v7);
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(HUQuickControlCollectionViewLayout *)self cachedLayoutAttributesByIndexPath];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    [(HUQuickControlCollectionViewLayout *)self prepareLayout];
    v7 = [(HUQuickControlCollectionViewLayout *)self cachedLayoutAttributesByIndexPath];
    v6 = [v7 objectForKeyedSubscript:v4];

    if (!v6)
    {
      NSLog(&cfstr_DidNotCreateAt.isa, v4);
    }
  }

  return v6;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  if (*MEMORY[0x277D767D0] == a3)
  {
    NSLog(&cfstr_CollectionView.isa);
    v9 = 0;
  }

  else
  {
    v7 = [(HUQuickControlCollectionViewLayout *)self cachedSectionHeaderLayoutAttributes];
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v6, "section")}];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (!v9)
    {
      NSLog(&cfstr_DidNotCreateAt.isa, v6);
    }
  }

  return v9;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v5 = [(HUQuickControlCollectionViewLayout *)self collectionView:a3.origin.x];
  [v5 bounds];
  v8 = v7 != height || v6 != width;

  return v8;
}

- (void)setLayoutOptions:(id)a3
{
  v5 = a3;
  if (self->_layoutOptions != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_layoutOptions, a3);
    v6 = [(HUQuickControlCollectionViewLayout *)self layoutManager];
    [v6 setLayoutOptions:v7];

    v5 = v7;
  }
}

- (id)delegate
{
  v2 = [(HUQuickControlCollectionViewLayout *)self collectionView];
  v3 = [v2 delegate];
  if ([v3 conformsToProtocol:&unk_28251F418])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)_intrinsicSizeDescriptorForItemAtIndexPath:(id)a3 itemSize:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HUQuickControlCollectionViewLayout *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) == 0 || (-[HUQuickControlCollectionViewLayout delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), [v9 intrinsicSizeDescriptorForItemAtIndexPath:v6 itemSize:a4], v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v11 = [v6 section];
    v12 = [(HUQuickControlCollectionViewLayout *)self layoutManager];
    v13 = [v12 itemManager];
    v14 = [v13 numberOfSections];

    if (v11 >= v14)
    {
      NSLog(&cfstr_UnexpectedInde.isa, v6);
    }

    else
    {
      v15 = HFLogForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v6;
        _os_log_error_impl(&dword_20CEB6000, v15, OS_LOG_TYPE_ERROR, "indexPath %@ is valid but we don't have an intrinsic size descriptor", buf, 0xCu);
      }
    }

    v10 = +[HUIntrinsicSizeDescriptor noIntrinsicSizeDescriptor];
  }

  return v10;
}

- (id)_computeSizingLayoutInfo
{
  v54 = *MEMORY[0x277D85DE8];
  v41 = objc_alloc_init(HUQuickControlCollectionViewLayoutInfo);
  v2 = [(HUQuickControlCollectionViewLayout *)self collectionView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [(HUQuickControlCollectionViewLayout *)self contentInset];
  [(HUQuickControlCollectionViewLayoutInfo *)v41 setAvailableContentFrame:v4 + v14, v6 + v11, v8 - (v14 + v12), v10 - (v11 + v13)];
  v15 = [(HUQuickControlCollectionViewLayout *)self layoutManager];
  v16 = [v15 collectionSectionSettings];

  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v16, "count")}];
  [(HUQuickControlCollectionViewLayoutInfo *)v41 setLayoutDetailsArray:v17];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v16;
  v18 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v18)
  {
    v19 = *v49;
    v20 = *MEMORY[0x277CBF348];
    v21 = *(MEMORY[0x277CBF348] + 8);
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v49 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v48 + 1) + 8 * i);
        v24 = objc_alloc_init(HUQuickControlCollectionViewGridLayoutDetails);
        [(HUQuickControlCollectionViewGridLayoutDetails *)v24 setSettings:v23];
        -[HUQuickControlCollectionViewGridLayoutDetails setSectionIndex:](v24, "setSectionIndex:", [v23 sectionNumber]);
        v25 = [v23 sectionHeader];
        if (v25)
        {
        }

        else
        {
          v26 = [v23 sectionAttributedHeader];
          v27 = v26 == 0;

          if (v27)
          {
            goto LABEL_10;
          }
        }

        v28 = objc_alloc_init(HUQuickControlCollectionViewGridLayoutRowInfo);
        [(HUQuickControlCollectionViewGridLayoutRowInfo *)v28 setNumberOfItems:1];
        [(HUQuickControlCollectionViewGridLayoutRowInfo *)v28 setRowOrigin:v20, v21];
        v29 = objc_alloc_init(HUQuickControlCollectionViewGridLayoutItemInfo);
        [(HUQuickControlCollectionViewGridLayoutItemInfo *)v29 setPreferredSize:v8, 50.0];
        v52 = v29;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
        [(HUQuickControlCollectionViewGridLayoutRowInfo *)v28 setItemLayouts:v30];

        [(HUQuickControlCollectionViewGridLayoutRowInfo *)v28 setContentSize:v8, 50.0];
        [(HUQuickControlCollectionViewGridLayoutDetails *)v24 setSectionHeaderLayout:v28];

LABEL_10:
        v31 = [(HUQuickControlCollectionViewLayout *)self _computeRowLayoutsForGridLayout:v24 gridLayoutSettings:v23];
        v43 = 0;
        v44 = &v43;
        v45 = 0x3010000000;
        v46 = &unk_20D68B106;
        v47 = *MEMORY[0x277CBF3A8];
        v32 = [(HUQuickControlCollectionViewGridLayoutDetails *)v24 sectionHeaderLayout];

        if (v32)
        {
          v33 = [(HUQuickControlCollectionViewGridLayoutDetails *)v24 sectionHeaderLayout];
          [v33 contentSize];
          v44[5] = v34 + v44[5];
        }

        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __62__HUQuickControlCollectionViewLayout__computeSizingLayoutInfo__block_invoke;
        v42[3] = &unk_277DC5020;
        v42[4] = v23;
        v42[5] = &v43;
        [v31 enumerateObjectsUsingBlock:v42];
        [(HUQuickControlCollectionViewGridLayoutDetails *)v24 setRowLayouts:v31];
        v35 = HUSizeRoundedToScreenScale();
        [(HUQuickControlCollectionViewGridLayoutDetails *)v24 setContentFrame:v20, v21, v35, v36];
        v37 = [(HUQuickControlCollectionViewLayoutInfo *)v41 layoutDetailsArray];
        [v37 addObject:v24];

        _Block_object_dispose(&v43, 8);
      }

      v18 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v18);
  }

  return v41;
}

void __62__HUQuickControlCollectionViewLayout__computeSizingLayoutInfo__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(*(*(a1 + 40) + 8) + 32);
  v6 = a2;
  [v6 contentSize];
  if (v5 >= v7)
  {
    v7 = v5;
  }

  *(*(*(a1 + 40) + 8) + 32) = v7;
  v8 = *(*(*(a1 + 40) + 8) + 40);
  [v6 contentSize];
  v10 = v9;

  *(*(*(a1 + 40) + 8) + 40) = v8 + v10;
  if (a3)
  {
    v11 = *(*(*(a1 + 40) + 8) + 40);
    [*(a1 + 32) rowSpacing];
    *(*(*(a1 + 40) + 8) + 40) = v11 + v12;
  }
}

- (id)_computeRowLayoutsForGridLayout:(id)a3 gridLayoutSettings:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v33 = [v6 numberOfRows];
  v34 = objc_opt_new();
  if (v33)
  {
    v8 = 0;
    v9 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
    v11 = *MEMORY[0x277D77260];
    *&v7 = 138412546;
    v32 = v7;
    do
    {
      v12 = objc_alloc_init(HUQuickControlCollectionViewGridLayoutRowInfo);
      -[HUQuickControlCollectionViewGridLayoutRowInfo setNumberOfItems:](v12, "setNumberOfItems:", [v5 numberOfColumnsInRow:v8]);
      [v34 addObject:v12];
      v13 = objc_opt_new();
      if ([(HUQuickControlCollectionViewGridLayoutRowInfo *)v12 numberOfItems])
      {
        v14 = 0;
        v15 = v9;
        v16 = v10;
        do
        {
          v17 = [v5 indexPathForRow:v8 column:{v14, v32}];
          v18 = objc_alloc_init(HUQuickControlCollectionViewGridLayoutItemInfo);
          -[HUQuickControlCollectionViewGridLayoutItemInfo setTitlePosition:](v18, "setTitlePosition:", [v6 titlePosition]);
          v19 = -[HUQuickControlCollectionViewLayout _intrinsicSizeDescriptorForItemAtIndexPath:itemSize:](self, "_intrinsicSizeDescriptorForItemAtIndexPath:itemSize:", v17, [v6 itemSize]);
          [v19 intrinsicSize];
          [(HUQuickControlCollectionViewGridLayoutItemInfo *)v18 setPreferredSize:?];
          [(HUQuickControlCollectionViewGridLayoutItemInfo *)v18 preferredSize];
          v22 = v21;
          v23 = v20;
          if (v20 == v11 || v20 < 57.0)
          {
            v24 = HFLogForCategory();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = v32;
              v37 = v17;
              v38 = 2048;
              v39 = v23;
              _os_log_error_impl(&dword_20CEB6000, v24, OS_LOG_TYPE_ERROR, "item at indexPath %@ has height %f that is very small.", buf, 0x16u);
            }

            v25 = [v19 aspectRatio];

            v23 = 57.0;
            if (v25)
            {
              v26 = [v19 aspectRatio];
              [v26 doubleValue];
              v22 = v27 * 57.0;

              v23 = 57.0;
            }
          }

          [(HUQuickControlCollectionViewGridLayoutItemInfo *)v18 setSize:v22, v23];
          [(HUQuickControlCollectionViewGridLayoutItemInfo *)v18 size];
          v15 = v15 + v28;
          if (v14)
          {
            [v6 interitemSpacing];
            v15 = v15 + v29;
          }

          [(HUQuickControlCollectionViewGridLayoutItemInfo *)v18 size];
          if (v16 < v30)
          {
            v16 = v30;
          }

          [v13 addObject:v18];

          ++v14;
        }

        while (v14 < [(HUQuickControlCollectionViewGridLayoutRowInfo *)v12 numberOfItems]);
      }

      [(HUQuickControlCollectionViewGridLayoutRowInfo *)v12 setItemLayouts:v13, v32];
      [(HUQuickControlCollectionViewGridLayoutRowInfo *)v12 setContentSize:HUSizeRoundedToScreenScale()];

      ++v8;
    }

    while (v8 != v33);
  }

  return v34;
}

- (void)_computeLayoutInfo
{
  v3 = [(HUQuickControlCollectionViewLayout *)self _computeSizingLayoutInfo];
  v4 = [v3 layoutDetailsArray];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __56__HUQuickControlCollectionViewLayout__computeLayoutInfo__block_invoke;
  v29[3] = &unk_277DC5070;
  v29[4] = self;
  v5 = v3;
  v30 = v5;
  [v4 enumerateObjectsUsingBlock:v29];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __56__HUQuickControlCollectionViewLayout__computeLayoutInfo__block_invoke_3;
  v26[3] = &unk_277DC5098;
  v6 = v5;
  v27 = v6;
  v28 = self;
  [v6 setCollectionViewContentSize:__56__HUQuickControlCollectionViewLayout__computeLayoutInfo__block_invoke_3(v26)];
  [v6 collectionViewContentSize];
  v8 = v7;
  [v6 availableContentFrame];
  v10 = v9;
  v11 = [v6 layoutDetailsArray];
  v12 = [v11 firstObject];
  [v12 contentFrame];
  v14 = v13;

  [v6 availableContentFrame];
  v16 = HURoundToScreenScale(v15 + fmax((v10 - (v8 - v14)) * 0.5, 0.0));
  if (v16 > v14)
  {
    v17 = v16 - v14;
    v18 = [v6 layoutDetailsArray];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __56__HUQuickControlCollectionViewLayout__computeLayoutInfo__block_invoke_4;
    v23 = &unk_277DC50C0;
    v25 = v17;
    v19 = v6;
    v24 = v19;
    [v18 enumerateObjectsUsingBlock:&v20];

    [v19 collectionViewContentSize];
    [v19 setCollectionViewContentSize:?];
  }

  [(HUQuickControlCollectionViewLayout *)self setLayoutInfo:v6];
}

void __56__HUQuickControlCollectionViewLayout__computeLayoutInfo__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v5 settings];
  v8 = [v6 _computeRowLayoutOriginsFromLayoutDetails:v5 forSectionSettings:v7];
  [v5 setRowLayouts:v8];

  v9 = [v5 settings];
  [v9 sectionTopPadding];
  v11 = v10;

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __56__HUQuickControlCollectionViewLayout__computeLayoutInfo__block_invoke_2;
  v18 = &unk_277DC5048;
  v19 = *(a1 + 40);
  v20 = v5;
  v21 = a3;
  v22 = v11;
  v12 = v5;
  v13 = __56__HUQuickControlCollectionViewLayout__computeLayoutInfo__block_invoke_2(&v15);
  [v12 setContentFrame:{v13, v15, v16, v17, v18}];
  v14 = [*(a1 + 40) layoutDetailsArray];
  [v14 setObject:v12 atIndexedSubscript:a3];
}

double __56__HUQuickControlCollectionViewLayout__computeLayoutInfo__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) availableContentFrame];
  v3 = v2;
  [*(a1 + 40) contentFrame];
  v5 = (v3 - v4) * 0.5;
  [*(a1 + 40) contentFrame];
  [*(a1 + 32) availableContentFrame];
  v7 = v6;
  v8 = fmax(v5, 0.0);
  if (*(a1 + 48))
  {
    v9 = [*(a1 + 32) layoutDetailsArray];
    v10 = [v9 objectAtIndex:*(a1 + 48) - 1];
    [v10 contentFrame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v25.origin.x = v12;
    v25.origin.y = v14;
    v25.size.width = v16;
    v25.size.height = v18;
    CGRectGetMaxY(v25);
  }

  v19 = v7 + v8;
  if (v5 < 0.0)
  {
    [*(a1 + 40) contentFrame];
    v21 = v19 + v20;
    [*(a1 + 32) availableContentFrame];
    if (v21 > v22)
    {
      [*(a1 + 32) availableContentFrame];
      return v5 + v23;
    }
  }

  return v19;
}

double __56__HUQuickControlCollectionViewLayout__computeLayoutInfo__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) layoutDetailsArray];
  v3 = [v2 count];

  if (!v3)
  {
    return *MEMORY[0x277CBF3A8];
  }

  v4 = [*(a1 + 32) layoutDetailsArray];
  v5 = [v4 objectAtIndexedSubscript:0];
  [v5 contentFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v27.origin.x = v7;
  v27.origin.y = v9;
  v27.size.width = v11;
  v27.size.height = v13;
  MaxX = CGRectGetMaxX(v27);
  [*(a1 + 40) contentInset];
  v16 = MaxX + v15;
  v28.origin.x = v7;
  v28.origin.y = v9;
  v28.size.width = v11;
  v28.size.height = v13;
  CGRectGetMaxY(v28);
  [*(a1 + 40) contentInset];
  v17 = [*(a1 + 32) layoutDetailsArray];
  v18 = [v17 count];

  if (v18 >= 2)
  {
    v19 = [*(a1 + 32) layoutDetailsArray];
    v20 = [v19 lastObject];

    [v20 contentFrame];
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    v25 = CGRectGetMaxX(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    CGRectGetMaxY(v30);
    [*(a1 + 40) contentInset];
    if (v16 < v25)
    {
      v16 = v25;
    }
  }

  return v16;
}

void __56__HUQuickControlCollectionViewLayout__computeLayoutInfo__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 contentFrame];
  [v5 setContentFrame:?];
  v6 = [*(a1 + 32) layoutDetailsArray];
  [v6 setObject:v5 atIndexedSubscript:a3];
}

- (id)_computeRowLayoutOriginsFromLayoutDetails:(id)a3 forSectionSettings:(id)a4
{
  v5 = a3;
  v6 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v7 = [v5 sectionHeaderLayout];

  if (v7)
  {
    v8 = [v5 sectionHeaderLayout];
    [v8 contentSize];
    v19[3] = (v9 + v19[3]);
  }

  v10 = [v5 rowLayouts];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __99__HUQuickControlCollectionViewLayout__computeRowLayoutOriginsFromLayoutDetails_forSectionSettings___block_invoke;
  v14[3] = &unk_277DC5138;
  v17 = &v18;
  v11 = v6;
  v15 = v11;
  v12 = v5;
  v16 = v12;
  [v10 enumerateObjectsUsingBlock:v14];

  _Block_object_dispose(&v18, 8);

  return v10;
}

void __99__HUQuickControlCollectionViewLayout__computeRowLayoutOriginsFromLayoutDetails_forSectionSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__HUQuickControlCollectionViewLayout__computeRowLayoutOriginsFromLayoutDetails_forSectionSettings___block_invoke_2;
  aBlock[3] = &unk_277DC50E8;
  v19 = *(a1 + 48);
  v4 = v3;
  v17 = v4;
  v18 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  [v4 contentSize];
  v7 = v6;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __99__HUQuickControlCollectionViewLayout__computeRowLayoutOriginsFromLayoutDetails_forSectionSettings___block_invoke_3;
  v12 = &unk_277DC5110;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = v7;
  v8 = __99__HUQuickControlCollectionViewLayout__computeRowLayoutOriginsFromLayoutDetails_forSectionSettings___block_invoke_3(&v9);
  [v4 setRowOrigin:{v8, *(*(*(a1 + 48) + 8) + 24), v9, v10, v11, v12}];

  if (v5)
  {
    v5[2](v5);
  }
}

double __99__HUQuickControlCollectionViewLayout__computeRowLayoutOriginsFromLayoutDetails_forSectionSettings___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) contentSize];
  v3 = v2;
  [*(a1 + 40) rowSpacing];
  v5 = *(*(a1 + 48) + 8);
  result = v3 + v4 + *(v5 + 24);
  *(v5 + 24) = result;
  return result;
}

double __99__HUQuickControlCollectionViewLayout__computeRowLayoutOriginsFromLayoutDetails_forSectionSettings___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) horizontalAlignment];
  v3 = 0.0;
  if (v2 != 1)
  {
    if (v2 == 3)
    {
      [*(a1 + 40) contentFrame];
      if ((v4 - *(a1 + 48)) * 0.5 >= 0.0)
      {
        return (v4 - *(a1 + 48)) * 0.5;
      }

      else
      {
        return 0.0;
      }
    }

    else
    {
      NSLog(&cfstr_UnsupportedAli_0.isa);
    }
  }

  return v3;
}

- (void)_computeGridLayoutAttributesForLayoutInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 sectionHeaderLayout];

  if (v5)
  {
    v6 = [v4 indexPathForSectionHeader];
    v7 = [(HUQuickControlCollectionViewLayout *)self cachedSectionHeaderLayoutAttributes];
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "sectionIndex")}];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (!v9)
    {
      v9 = [(UICollectionViewLayoutAttributes *)HUQuickControlCollectionViewLayoutAttributes layoutAttributesForSupplementaryViewOfKind:*MEMORY[0x277D767D8] withIndexPath:v6];
      v10 = [v4 sectionHeaderLayout];
      [v10 contentSize];

      [v4 contentFrame];
      [v9 setFrame:0.0];
      v11 = [(HUQuickControlCollectionViewLayout *)self cachedSectionHeaderLayoutAttributes];
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "sectionIndex")}];
      [v11 setObject:v9 forKeyedSubscript:v12];
    }
  }

  v13 = [v4 rowLayouts];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__HUQuickControlCollectionViewLayout__computeGridLayoutAttributesForLayoutInfo___block_invoke;
  v15[3] = &unk_277DC5160;
  v16 = v4;
  v17 = self;
  v14 = v4;
  [v13 enumerateObjectsUsingBlock:v15];
}

void __80__HUQuickControlCollectionViewLayout__computeGridLayoutAttributesForLayoutInfo___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = a2;
  [*(a1 + 32) contentFrame];
  v6 = v5;
  [v25 rowOrigin];
  v8 = v7;
  if ([v25 numberOfItems])
  {
    v9 = 0;
    v10 = v6 + v8;
    do
    {
      v11 = [*(a1 + 32) indexPathForRow:a3 column:v9];
      v12 = [*(a1 + 40) cachedLayoutAttributesByIndexPath];
      v13 = [v12 objectForKeyedSubscript:v11];

      if (!v13)
      {
        v14 = [v25 itemLayouts];
        v15 = [v14 objectAtIndexedSubscript:v9];

        [v15 size];
        [v25 contentSize];
        [v15 size];
        v17 = v16;
        v18 = [*(a1 + 32) settings];
        v19 = [v18 itemSize];

        v13 = [(UICollectionViewLayoutAttributes *)HUQuickControlCollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:v11];
        [v13 setTitlePosition:{objc_msgSend(v15, "titlePosition")}];
        [v13 setItemSize:v19];
        v20 = [*(a1 + 40) collectionView];
        v21 = [v20 traitCollection];
        [v21 displayScale];
        UIRectIntegralWithScale();
        [v13 setFrame:?];

        v22 = [*(a1 + 40) cachedLayoutAttributesByIndexPath];
        [v22 setObject:v13 forKeyedSubscript:v11];

        v23 = [*(a1 + 32) settings];
        [v23 interitemSpacing];
        v10 = v10 + v17 + v24;
      }

      ++v9;
    }

    while (v9 < [v25 numberOfItems]);
  }
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end