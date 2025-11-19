@interface CPUIGridTemplateCollectionViewFlowLayout
- (CGRect)frame;
- (CGRect)preferredFrame;
- (CPUIGridTemplateCollectionViewFlowLayout)initWithButtons:(id)a3 fittingRect:(CGRect)a4;
- (double)_bestHeight;
- (double)preferredItemWidth;
- (id)gridItemLayoutInRect:(CGRect)a3 numberOfItems:(unint64_t)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutRects;
@end

@implementation CPUIGridTemplateCollectionViewFlowLayout

- (CPUIGridTemplateCollectionViewFlowLayout)initWithButtons:(id)a3 fittingRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v20.receiver = self;
  v20.super_class = CPUIGridTemplateCollectionViewFlowLayout;
  v11 = [(UICollectionViewFlowLayout *)&v20 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_gridButtons, a3);
    v12->_frame.origin.x = x;
    v12->_frame.origin.y = y;
    v12->_frame.size.width = width;
    v12->_frame.size.height = height;
    objc_opt_class();
    v13 = [(CPUIGridTemplateCollectionViewFlowLayout *)v12 gridButtons];
    v14 = [v13 firstObject];
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [v15 layout];
    buttonLayout = v12->_buttonLayout;
    v12->_buttonLayout = v16;

    if (v15)
    {
      [v15 preferredSize];
      [(UICollectionViewFlowLayout *)v12 setItemSize:?];
      v18 = [v15 layout];
      [v18 itemSpacing];
      [(UICollectionViewFlowLayout *)v12 setMinimumInteritemSpacing:?];
    }

    else
    {
      [(UICollectionViewFlowLayout *)v12 setItemSize:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
      [(UICollectionViewFlowLayout *)v12 setMinimumInteritemSpacing:4.0];
    }

    [(UICollectionViewFlowLayout *)v12 setSectionInset:4.0, 4.0, 4.0, 4.0];
  }

  return v12;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  v4 = [(CPUIGridTemplateCollectionViewFlowLayout *)self collectionView:a3.origin.x];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v21.receiver = self;
  v21.super_class = CPUIGridTemplateCollectionViewFlowLayout;
  v13 = [(UICollectionViewFlowLayout *)&v21 layoutAttributesForElementsInRect:v6, v8, v10, v12];
  if ([v13 count])
  {
    v14 = [(CPUIGridTemplateCollectionViewFlowLayout *)self layoutRects];
    v15 = [v14 count];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __78__CPUIGridTemplateCollectionViewFlowLayout_layoutAttributesForElementsInRect___block_invoke;
    v18[3] = &unk_278D9C3E8;
    v19 = v14;
    v20 = v15;
    v16 = v14;
    [v13 enumerateObjectsUsingBlock:v18];
  }

  return v13;
}

void __78__CPUIGridTemplateCollectionViewFlowLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  if (*(a1 + 40) > a3)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    v7 = [v5 objectAtIndex:a3];
    [v7 CGRectValue];
    [v6 setFrame:?];
  }
}

- (id)gridItemLayoutInRect:(CGRect)a3 numberOfItems:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = objc_opt_new();
  v71.origin.x = x;
  v71.origin.y = y;
  v71.size.width = width;
  v71.size.height = height;
  v11 = CGRectGetWidth(v71);
  [(UICollectionViewFlowLayout *)self sectionInset];
  v13 = v11 - v12;
  [(UICollectionViewFlowLayout *)self sectionInset];
  v15 = v13 - v14;
  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = height;
  v16 = CGRectGetHeight(v72);
  [(UICollectionViewFlowLayout *)self sectionInset];
  v18 = v16 - v17;
  [(UICollectionViewFlowLayout *)self sectionInset];
  v20 = v18 - v19;
  [(UICollectionViewFlowLayout *)self sectionInset];
  v22 = v21;
  [(UICollectionViewFlowLayout *)self sectionInset];
  v24 = v23;
  [(CPUIGridTemplateCollectionViewFlowLayout *)self preferredItemWidth];
  v26 = v25;
  [(UICollectionViewFlowLayout *)self itemSize];
  v28 = v27;
  v73.origin.x = v22;
  v73.origin.y = v24;
  v73.size.width = v15;
  v73.size.height = v20;
  v29 = CGRectGetWidth(v73);
  [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
  *&v30 = v29 / (v26 + v30);
  v31 = vcvtms_s32_f32(*&v30);
  if (v31 < 1)
  {
    goto LABEL_36;
  }

  v32 = a4 - v31;
  if (a4 < v31)
  {
    v32 = 0;
  }

  v33 = ((__PAIR128__(v32, v31) - a4) >> 64) / v31;
  if (v31 >= a4)
  {
    v34 = v33;
  }

  else
  {
    v34 = v33 + 1;
  }

  v35 = [(CPUIGridTemplateCollectionViewFlowLayout *)self buttonLayout];
  v36 = [v35 maxRowCount];

  if (v34 + 1 < v36)
  {
    v37 = v34 + 1;
  }

  else
  {
    v37 = v36;
  }

  v38 = v37;
  if ([(CPUIGridTemplateCollectionViewFlowLayout *)self fillsHeight])
  {
    v39 = v20;
  }

  else
  {
    v39 = v28 * v37;
  }

  if (v37 < 2)
  {
    if (v37 == 1)
    {
      [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
      v42 = (v15 - (a4 - 1) * v41) / a4;
      [(CPUIGridTemplateCollectionViewFlowLayout *)self preferredItemWidth];
      v44 = v43 + v43;
      if (v42 >= v44)
      {
        v42 = v44;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v40 = a4 / v38;
    v31 = vcvtps_s32_f32(v40);
  }

  [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
  v42 = (v15 - (v31 - 1) * v45) / v31;
LABEL_20:
  if (v31 >= a4)
  {
    v50 = [(CPUIGridTemplateCollectionViewFlowLayout *)self fillsHeight];
    v74.origin.x = v22;
    v74.origin.y = v24;
    v74.size.width = v15;
    v74.size.height = v20;
    CGRectGetMidX(v74);
    v75.origin.x = v22;
    v75.origin.y = v24;
    v75.size.width = v15;
    v75.size.height = v20;
    MidY = CGRectGetMidY(v75);
    if (v50)
    {
      v52 = MidY + v28 * -0.5;
    }

    else
    {
      v52 = MidY;
    }

    [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
    v54 = v53;
    [(UICollectionViewFlowLayout *)self sectionInset];
    if (a4)
    {
      v56 = v55 + (v15 - (a4 - 1) * v54 - a4 * v42) * 0.5;
      do
      {
        [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
        v58 = v56 + v42 + v57;
        v59 = [MEMORY[0x277CCAE60] valueWithCGRect:{v56, v52, v42, v28}];
        [v10 addObject:v59];

        v56 = v58;
        --a4;
      }

      while (a4);
    }
  }

  else
  {
    [(UICollectionViewFlowLayout *)self sectionInset];
    v47 = v46;
    v48 = v39 / v38 + 1.0;
    if ([(CPUIGridTemplateCollectionViewFlowLayout *)self fillsHeight])
    {
      v49 = v48 * 0.5 - v28 * 0.5;
    }

    else
    {
      v60 = [(CPUIGridTemplateCollectionViewFlowLayout *)self buttonLayout];
      [v60 insets];
      v49 = v61;
    }

    v62 = v48 + 8.0;
    v63 = 1;
    v64 = v47;
    do
    {
      if (v63 % v31)
      {
        [(UICollectionViewFlowLayout *)self minimumInteritemSpacing];
        v66 = v64 + v42 + v65;
        v67 = v49;
      }

      else
      {
        v67 = v62 + v49;
        v66 = v47;
      }

      v68 = [MEMORY[0x277CCAE60] valueWithCGRect:{v64, v49, v42, v28}];
      [v10 addObject:v68];

      ++v63;
      v49 = v67;
      v64 = v66;
      --a4;
    }

    while (a4);
  }

LABEL_36:

  return v10;
}

- (id)layoutRects
{
  if ([(CPUIGridTemplateCollectionViewFlowLayout *)self fillsHeight])
  {
    v3 = [(CPUIGridTemplateCollectionViewFlowLayout *)self collectionView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = [(CPUIGridTemplateCollectionViewFlowLayout *)self gridButtons];
    v13 = [v12 count];
    v14 = self;
    v15 = v5;
    v16 = v7;
    v17 = v9;
    v18 = v11;
  }

  else
  {
    [(CPUIGridTemplateCollectionViewFlowLayout *)self frame];
    v20 = v19;
    v12 = [(CPUIGridTemplateCollectionViewFlowLayout *)self gridButtons];
    v13 = [v12 count];
    v15 = 0.0;
    v16 = 0.0;
    v18 = 0.0;
    v14 = self;
    v17 = v20;
  }

  v21 = [(CPUIGridTemplateCollectionViewFlowLayout *)v14 gridItemLayoutInRect:v13 numberOfItems:v15, v16, v17, v18];

  return v21;
}

- (double)_bestHeight
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(CPUIGridTemplateCollectionViewFlowLayout *)self layoutRects];
  if ([v3 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v22;
      v8 = 0.0;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v21 + 1) + 8 * i) CGRectValue];
          x = v27.origin.x;
          y = v27.origin.y;
          width = v27.size.width;
          height = v27.size.height;
          MinY = CGRectGetMinY(v27);
          v28.origin.x = x;
          v28.origin.y = y;
          v28.size.width = width;
          v28.size.height = height;
          MaxY = CGRectGetMaxY(v28);
          if (MinY < v9)
          {
            v9 = MinY;
          }

          if (MaxY > v8)
          {
            v8 = MaxY;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
      v9 = 0.0;
    }

    v18 = [(CPUIGridTemplateCollectionViewFlowLayout *)self buttonLayout];
    [v18 insets];
    v17 = v8 - v9 + v19;
  }

  else
  {
    v17 = 0.0;
  }

  return v17;
}

- (CGRect)preferredFrame
{
  [(CPUIGridTemplateCollectionViewFlowLayout *)self frame];
  v4 = v3;
  [(CPUIGridTemplateCollectionViewFlowLayout *)self frame];
  v6 = v5;
  [(CPUIGridTemplateCollectionViewFlowLayout *)self frame];
  v8 = v7;
  [(CPUIGridTemplateCollectionViewFlowLayout *)self _bestHeight];
  v10 = v9;
  v11 = v4;
  v12 = v6;
  v13 = v8;
  result.size.height = v10;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (double)preferredItemWidth
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [(CPUIGridTemplateCollectionViewFlowLayout *)self gridButtons];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        [v8 preferredLabelWidth];
        v10 = v9 + 4.0;
        v11 = [v8 layout];
        [v11 imageSize];
        v13 = v12;

        if (v10 >= v13)
        {
          v13 = v10;
        }

        [v8 preferredSize];
        if (v13 < v14)
        {
          v13 = v14;
        }

        if (v13 > v6)
        {
          [v8 maxWidth];
          if (v13 >= v15)
          {
            v6 = v15;
          }

          else
          {
            v6 = v13;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end