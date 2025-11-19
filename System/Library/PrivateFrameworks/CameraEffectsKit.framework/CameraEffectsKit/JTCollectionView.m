@interface JTCollectionView
- (CGSize)lastCollectionViewSize;
- (id)firstVisibleIndexPath;
- (id)sortedIndexPathsForVisibleItems;
- (id)visibleSections;
- (int64_t)selectedItem;
- (void)layoutIfNeeded;
- (void)layoutSubviews;
@end

@implementation JTCollectionView

- (void)layoutSubviews
{
  [(JTCollectionView *)self setInLayout:1];
  [(JTCollectionView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(JTCollectionView *)self lastCollectionViewSize];
  if (v4 != v8 || v6 != v7)
  {
    v10 = [(JTCollectionView *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = [(JTCollectionView *)self delegate];
      [v12 collectionView:self didResize:{v4, v6}];
    }

    [(JTCollectionView *)self setLastCollectionViewSize:v4, v6];
  }

  v13.receiver = self;
  v13.super_class = JTCollectionView;
  [(JTCollectionView *)&v13 layoutSubviews];
  [(JTCollectionView *)self setInLayout:0];
}

- (int64_t)selectedItem
{
  v2 = [(JTCollectionView *)self indexPathsForSelectedItems];
  v3 = [v2 firstObject];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 item];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)sortedIndexPathsForVisibleItems
{
  v2 = [(JTCollectionView *)self indexPathsForVisibleItems];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_37];

  return v3;
}

uint64_t __51__JTCollectionView_sortedIndexPathsForVisibleItems__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 section];
  if (v6 >= [v5 section])
  {
    v8 = [v4 section];
    if (v8 > [v5 section])
    {
      v7 = 1;
      goto LABEL_9;
    }

    v9 = [v4 section];
    if (v9 != [v5 section])
    {
      v7 = 0;
      goto LABEL_9;
    }

    v10 = [v4 item];
    if (v10 >= [v5 item])
    {
      v11 = [v4 item];
      v7 = v11 > [v5 item];
      goto LABEL_9;
    }
  }

  v7 = -1;
LABEL_9:

  return v7;
}

- (id)firstVisibleIndexPath
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(JTCollectionView *)self superview];

  if (v3)
  {
    [(JTCollectionView *)self sortedIndexPathsForVisibleItems];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v4 = v28 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v26;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v25 + 1) + 8 * i);
          v10 = [(JTCollectionView *)self layoutAttributesForItemAtIndexPath:v9, v25];
          [v10 frame];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;
          v19 = [(JTCollectionView *)self superview];
          [(JTCollectionView *)self convertRect:v19 toView:v12, v14, v16, v18];
          v21 = v20;

          if (v21 >= 0.0)
          {
            v22 = v9;

            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v22 = 0;
LABEL_12:

    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)visibleSections
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [(JTCollectionView *)self indexPathsForVisibleItems];
  v3 = [MEMORY[0x277CCAB58] indexSet];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addIndex:{objc_msgSend(*(*(&v10 + 1) + 8 * i), "section", v10)}];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)layoutIfNeeded
{
  if (![(JTCollectionView *)self inLayout])
  {
    v3.receiver = self;
    v3.super_class = JTCollectionView;
    [(JTCollectionView *)&v3 layoutIfNeeded];
  }
}

- (CGSize)lastCollectionViewSize
{
  width = self->_lastCollectionViewSize.width;
  height = self->_lastCollectionViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end