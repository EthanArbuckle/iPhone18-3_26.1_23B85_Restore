@interface SFNestedCollectionViewCell
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
- (void)_setUpCollectionViewIfNeeded;
@end

@implementation SFNestedCollectionViewCell

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  v17.receiver = self;
  v17.super_class = SFNestedCollectionViewCell;
  v4 = [(SFNestedCollectionViewCell *)&v17 preferredLayoutAttributesFittingAttributes:attributes];
  collectionView = self->_collectionView;
  if (collectionView)
  {
    superview = [(UICollectionView *)collectionView superview];
    if (!superview || ([(SFNestedCollectionViewCell *)self contentView], v7 = objc_claimAutoreleasedReturnValue(), v7, superview == v7))
    {
      [(SFNestedCollectionViewCell *)self _setUpCollectionViewIfNeeded];
      [v4 size];
      v9 = v8;
      v11 = v10;
      v12 = 11;
      do
      {
        v13 = v11;
        contentView = [(SFNestedCollectionViewCell *)self contentView];
        [contentView bounds];
        [(UICollectionView *)self->_collectionView setFrame:0.0, 0.0, CGRectGetWidth(v19), v11];

        [(UICollectionView *)self->_collectionView layoutIfNeeded];
        [(UICollectionView *)self->_collectionView contentSize];
        v11 = fmax(v15, 60.0);
        if (_SFEqualWithEpsilon(v11, v13, 0.01))
        {
          break;
        }

        v13 = v11;
        --v12;
      }

      while (v12);
      [v4 setSize:{v9, v13}];
    }
  }

  return v4;
}

- (void)_setUpCollectionViewIfNeeded
{
  contentView = [(SFNestedCollectionViewCell *)self contentView];
  collectionView = self->_collectionView;
  if (collectionView)
  {
    v9 = contentView;
    superview = [(UICollectionView *)collectionView superview];

    contentView = v9;
    if (superview != v9)
    {
      superview2 = [(UICollectionView *)self->_collectionView superview];

      if (superview2)
      {
        [(UICollectionView *)self->_collectionView removeFromSuperview];
      }

      [(UICollectionView *)self->_collectionView setAutoresizingMask:0];
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      [(UICollectionView *)self->_collectionView setBackgroundColor:clearColor];

      [v9 bounds];
      [(UICollectionView *)self->_collectionView setFrame:?];
      [(UICollectionView *)self->_collectionView setScrollEnabled:0];
      [(UICollectionView *)self->_collectionView setScrollsToTop:0];
      [v9 addSubview:self->_collectionView];
      _listInsetGroupedCellConfiguration = [MEMORY[0x1E69DC6E8] _listInsetGroupedCellConfiguration];
      [(SFNestedCollectionViewCell *)self setBackgroundConfiguration:_listInsetGroupedCellConfiguration];

      contentView = v9;
    }
  }
}

@end