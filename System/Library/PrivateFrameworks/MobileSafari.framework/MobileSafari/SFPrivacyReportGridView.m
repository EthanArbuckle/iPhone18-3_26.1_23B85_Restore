@interface SFPrivacyReportGridView
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (CGSize)intrinsicContentSize;
- (SFPrivacyReportGridView)init;
- (SFPrivacyReportGridView)initWithFrame:(CGRect)a3;
- (SFPrivacyReportGridViewDelegate)delegate;
- (double)interItemSpacing;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (unint64_t)_gridPositionForItemAtIndexPath:(id)a3;
- (void)_preferredContentSizeCategoryDidChange;
- (void)_rebuildRowLayoutInfoIfNeeded;
- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4;
- (void)invalidateIntrinsicContentSize;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)updateInterItemSpacing;
@end

@implementation SFPrivacyReportGridView

- (SFPrivacyReportGridView)init
{
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 bounds];
  v4 = [(SFPrivacyReportGridView *)self initWithFrame:?];

  return v4;
}

- (SFPrivacyReportGridView)initWithFrame:(CGRect)a3
{
  v19[1] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = SFPrivacyReportGridView;
  v3 = [(SFPrivacyReportGridView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    cachedRowInfo = v3->_cachedRowInfo;
    v3->_cachedRowInfo = v4;

    v6 = objc_alloc_init(MEMORY[0x1E69DC840]);
    collectionViewLayout = v3->_collectionViewLayout;
    v3->_collectionViewLayout = v6;

    v8 = objc_alloc(MEMORY[0x1E69DC7F0]);
    [(SFPrivacyReportGridView *)v3 bounds];
    v9 = [v8 initWithFrame:v3->_collectionViewLayout collectionViewLayout:?];
    collectionView = v3->_collectionView;
    v3->_collectionView = v9;

    [(UICollectionView *)v3->_collectionView setAutoresizingMask:18];
    [(UICollectionView *)v3->_collectionView setScrollEnabled:0];
    [(SFPrivacyReportGridView *)v3 updateInterItemSpacing];
    [(SFPrivacyReportGridView *)v3 addSubview:v3->_collectionView];
    v11 = [MEMORY[0x1E69DC888] clearColor];
    [(UICollectionView *)v3->_collectionView setBackgroundColor:v11];

    [(UICollectionView *)v3->_collectionView setDelegate:v3];
    [(UICollectionView *)v3->_collectionView setDataSource:v3];
    [(UICollectionView *)v3->_collectionView frame];
    v3->_previousCollectionViewWidth = CGRectGetWidth(v20);
    [(UICollectionView *)v3->_collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"reportGridItemCell"];
    v12 = [(SFPrivacyReportGridView *)v3 traitCollection];
    v13 = [v12 preferredContentSizeCategory];
    v3->_isAccessibilitySize = UIContentSizeCategoryIsAccessibilityCategory(v13);

    v19[0] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v15 = [(SFPrivacyReportGridView *)v3 registerForTraitChanges:v14 withTarget:v3 action:sel__preferredContentSizeCategoryDidChange];

    v16 = v3;
  }

  return v3;
}

- (void)invalidateIntrinsicContentSize
{
  [(NSMutableArray *)self->_cachedRowInfo removeAllObjects];
  [(UICollectionViewFlowLayout *)self->_collectionViewLayout invalidateLayout];
  [(UICollectionView *)self->_collectionView setNeedsLayout];
  v4.receiver = self;
  v4.super_class = SFPrivacyReportGridView;
  [(SFPrivacyReportGridView *)&v4 invalidateIntrinsicContentSize];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained gridViewDidUpdateContentSize:self];
  }
}

- (CGSize)intrinsicContentSize
{
  [(UICollectionView *)self->_collectionView layoutIfNeeded];
  v3 = *MEMORY[0x1E69DE788];
  [(UICollectionViewFlowLayout *)self->_collectionViewLayout collectionViewContentSize];
  v5 = v3;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)updateInterItemSpacing
{
  [(SFPrivacyReportGridView *)self interItemSpacing];
  v4 = v3;
  [(UICollectionViewFlowLayout *)self->_collectionViewLayout minimumInteritemSpacing];
  if (v4 != v5)
  {
    [(UICollectionViewFlowLayout *)self->_collectionViewLayout setMinimumInteritemSpacing:v4];
    [(UICollectionViewFlowLayout *)self->_collectionViewLayout setMinimumLineSpacing:v4];
    [(SFPrivacyReportGridView *)self invalidateIntrinsicContentSize];

    [(SFPrivacyReportGridView *)self didUpdateInterItemSpacing:v4];
  }
}

- (void)_preferredContentSizeCategoryDidChange
{
  v3 = [(SFPrivacyReportGridView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  self->_isAccessibilitySize = UIContentSizeCategoryIsAccessibilityCategory(v4);

  [(SFPrivacyReportGridView *)self updateInterItemSpacing];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = SFPrivacyReportGridView;
  [(SFPrivacyReportGridView *)&v4 layoutSubviews];
  [(UICollectionView *)self->_collectionView frame];
  Width = CGRectGetWidth(v5);
  if (Width != self->_previousCollectionViewWidth)
  {
    self->_previousCollectionViewWidth = Width;
    [(SFPrivacyReportGridView *)self invalidateIntrinsicContentSize];
  }
}

- (void)_rebuildRowLayoutInfoIfNeeded
{
  v37 = *MEMORY[0x1E69E9840];
  if (![(NSMutableArray *)self->_cachedRowInfo count])
  {
    v3 = [(SFPrivacyReportGridView *)self traitCollection];
    v4 = [v3 preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v4);

    if ([(NSArray *)self->_itemViews count]>= 1)
    {
      v5 = 0;
      v6 = 0;
      while (v5 + 1 < [(NSArray *)self->_itemViews count])
      {
        v7 = [(NSArray *)self->_itemViews objectAtIndexedSubscript:v5];
        v8 = [(SFPrivacyReportGridView *)self itemViewIsLineBreak:v7];

        if (v8)
        {
          break;
        }

        v21 = [(NSArray *)self->_itemViews objectAtIndexedSubscript:v5];
        if (![(SFPrivacyReportGridView *)self itemViewCanUseCompactWidth:v21])
        {

          v9 = 1;
          goto LABEL_7;
        }

        v22 = [(NSArray *)self->_itemViews objectAtIndexedSubscript:v5 + 1];
        v23 = [(SFPrivacyReportGridView *)self itemViewCanUseCompactWidth:v22];

        if (v23)
        {
          v10 = 250.0;
        }

        else
        {
          v10 = 375.0;
        }

        if (v23)
        {
          v11 = 150.0;
        }

        else
        {
          v11 = 250.0;
        }

        v9 = 1;
LABEL_8:
        [(UICollectionView *)self->_collectionView frame];
        Width = CGRectGetWidth(v38);
        [(UICollectionViewFlowLayout *)self->_collectionViewLayout minimumInteritemSpacing];
        v14 = v13;
        [(UICollectionViewFlowLayout *)self->_collectionViewLayout sectionInset];
        if (v9)
        {
          if (IsAccessibilityCategory)
          {
            v17 = v10;
          }

          else
          {
            v17 = v11;
          }

          if (v14 + v16 + v15 + v17 * 2.0 > Width)
          {
            v18 = 1;
          }

          else
          {
            v18 = 2;
          }
        }

        else
        {
          v18 = 1;
        }

        v19 = [[SFPrivacyReportGridRowLayoutInfo alloc] initWithRow:v6 itemRange:v5, v18];
        v20 = v18;
        do
        {
          [(NSMutableArray *)self->_cachedRowInfo addObject:v19];
          --v20;
        }

        while (v20);
        ++v6;
        v5 += v18;

        if (v5 >= [(NSArray *)self->_itemViews count])
        {
          goto LABEL_29;
        }
      }

      v9 = 0;
LABEL_7:
      v10 = 375.0;
      v11 = 250.0;
      goto LABEL_8;
    }

LABEL_29:
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v24 = [(UICollectionView *)self->_collectionView indexPathsForVisibleItems];
    v25 = [v24 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v32 + 1) + 8 * i);
          v30 = -[NSArray objectAtIndexedSubscript:](self->_itemViews, "objectAtIndexedSubscript:", [v29 item]);
          [v30 setGridPosition:{-[SFPrivacyReportGridView _gridPositionForItemAtIndexPath:](self, "_gridPositionForItemAtIndexPath:", v29)}];
        }

        v26 = [v24 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v26);
    }
  }
}

- (void)layoutMarginsDidChange
{
  v15 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = SFPrivacyReportGridView;
  [(SFPrivacyReportGridView *)&v13 layoutMarginsDidChange];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(UICollectionView *)self->_collectionView visibleCells];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        [(SFPrivacyReportGridView *)self layoutMargins];
        [v8 setLayoutMargins:?];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  [(SFPrivacyReportGridView *)self invalidateIntrinsicContentSize];
}

- (double)interItemSpacing
{
  v3 = [(SFPrivacyReportGridView *)self traitCollection];
  if ([v3 horizontalSizeClass] != 2 || (v4 = 20.0, objc_msgSend(v3, "verticalSizeClass") != 2))
  {
    if (self->_isAccessibilitySize)
    {
      v4 = 20.0;
    }

    else
    {
      v4 = 10.0;
    }
  }

  return v4;
}

- (unint64_t)_gridPositionForItemAtIndexPath:(id)a3
{
  cachedRowInfo = self->_cachedRowInfo;
  v5 = a3;
  v6 = -[NSMutableArray objectAtIndexedSubscript:](cachedRowInfo, "objectAtIndexedSubscript:", [v5 item]);
  v7 = [v6 row];
  v8 = [v6 row];
  v9 = [(NSMutableArray *)self->_cachedRowInfo lastObject];
  v10 = [v9 row];

  v11 = 2;
  if (!v7)
  {
    v11 = 3;
  }

  if (v8 == v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7 == 0;
  }

  v13 = [v5 item];
  if (v13 == [v6 itemRange])
  {
    v12 |= 4uLL;
  }

  v14 = [v5 item];

  v15 = [v6 itemRange];
  [v6 itemRange];
  if (v14 == v15 + v16 - 1)
  {
    v17 = v12 | 8;
  }

  else
  {
    v17 = v12;
  }

  return v17;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(SFPrivacyReportGridView *)self _rebuildRowLayoutInfoIfNeeded];
  v8 = [v7 dequeueReusableCellWithReuseIdentifier:@"reportGridItemCell" forIndexPath:v6];

  v9 = -[NSArray objectAtIndexedSubscript:](self->_itemViews, "objectAtIndexedSubscript:", [v6 item]);
  [v9 setDelegate:self];
  v10 = [(SFPrivacyReportGridView *)self _gridPositionForItemAtIndexPath:v6];

  [v9 setGridPosition:v10];
  [(SFPrivacyReportGridView *)self layoutMargins];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = [v8 contentView];
  [v19 setLayoutMargins:{v12, v14, v16, v18}];

  v20 = [v8 defaultBackgroundConfiguration];
  v21 = [v9 cellBackgroundColor];

  if (v21)
  {
    v22 = [v9 cellBackgroundColor];
    [v20 setBackgroundColor:v22];
  }

  [v9 cellBackgroundCornerRadius];
  if (v23 != 9.22337204e18)
  {
    [v9 cellBackgroundCornerRadius];
    [v20 setCornerRadius:?];
  }

  [v8 setBackgroundConfiguration:v20];
  [v8 setReportView:v9];

  return v8;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  if (a4)
  {
    return 0;
  }

  else
  {
    return [(NSArray *)self->_itemViews count];
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(SFPrivacyReportGridView *)self _rebuildRowLayoutInfoIfNeeded];
  v11 = -[NSMutableArray objectAtIndexedSubscript:](self->_cachedRowInfo, "objectAtIndexedSubscript:", [v10 item]);
  [(UICollectionView *)self->_collectionView frame];
  Width = CGRectGetWidth(v36);
  [(UICollectionViewFlowLayout *)self->_collectionViewLayout minimumInteritemSpacing];
  v14 = v13;
  [(UICollectionViewFlowLayout *)self->_collectionViewLayout sectionInset];
  v16 = v15;
  v18 = v17;
  [v11 itemRange];
  v20 = (Width - v16 - v18 - v14 * (v19 - 1)) / v19;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  [v11 height];
  v34 = v21;
  v22 = v32[3];
  if (v22 == 0.0)
  {
    v23 = MEMORY[0x1E696AC90];
    v24 = [v11 itemRange];
    v26 = [v23 indexSetWithIndexesInRange:{v24, v25}];
    itemViews = self->_itemViews;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __72__SFPrivacyReportGridView_collectionView_layout_sizeForItemAtIndexPath___block_invoke;
    v30[3] = &unk_1E721ED48;
    v30[4] = &v31;
    *&v30[5] = v20;
    [(NSArray *)itemViews enumerateObjectsAtIndexes:v26 options:0 usingBlock:v30];
    [v11 setHeight:v32[3]];

    v22 = v32[3];
  }

  _Block_object_dispose(&v31, 8);

  v28 = v20;
  v29 = v22;
  result.height = v29;
  result.width = v28;
  return result;
}

double __72__SFPrivacyReportGridView_collectionView_layout_sizeForItemAtIndexPath___block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v7 = *(*(*(a1 + 32) + 8) + 24);
  LODWORD(a5) = 1148846080;
  LODWORD(a6) = 1112014848;
  [a2 systemLayoutSizeFittingSize:*(a1 + 40) withHorizontalFittingPriority:1000.0 verticalFittingPriority:{a5, a6}];
  result = fmax(v7, v8);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v4 = -[NSArray objectAtIndexedSubscript:](self->_itemViews, "objectAtIndexedSubscript:", [a4 item]);
  v5 = [v4 action];
  v6 = v5 != 0;

  return v6;
}

- (void)collectionView:(id)a3 performPrimaryActionForItemAtIndexPath:(id)a4
{
  v5 = -[NSArray objectAtIndexedSubscript:](self->_itemViews, "objectAtIndexedSubscript:", [a4 item]);
  v4 = [v5 action];
  v4[2]();
}

- (SFPrivacyReportGridViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end