@interface SFCapsuleCollectionViewItem
- (CGSize)preferredCapsuleSizeForState:(int64_t)state;
- (SFCapsuleCollectionView)collectionView;
- (SFCapsuleCollectionViewItem)initWithCollectionView:(id)view;
- (double)capsuleHeightForWidth:(double)width defaultHeight:(double)height state:(int64_t)state index:(int64_t)index;
- (void)invalidateCapsuleHeight;
@end

@implementation SFCapsuleCollectionViewItem

- (void)invalidateCapsuleHeight
{
  [(NSMutableDictionary *)self->_cachedCapsuleHeightsByState removeAllObjects];
  cachedPreferredCapsuleSizesByState = self->_cachedPreferredCapsuleSizesByState;

  [(NSMutableDictionary *)cachedPreferredCapsuleSizesByState removeAllObjects];
}

- (SFCapsuleCollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (SFCapsuleCollectionViewItem)initWithCollectionView:(id)view
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = SFCapsuleCollectionViewItem;
  v5 = [(SFCapsuleCollectionViewItem *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_collectionView, viewCopy);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    cachedCapsuleHeightsByState = v6->_cachedCapsuleHeightsByState;
    v6->_cachedCapsuleHeightsByState = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    cachedPreferredCapsuleSizesByState = v6->_cachedPreferredCapsuleSizesByState;
    v6->_cachedPreferredCapsuleSizesByState = dictionary2;

    v11 = v6;
  }

  return v6;
}

- (double)capsuleHeightForWidth:(double)width defaultHeight:(double)height state:(int64_t)state index:(int64_t)index
{
  v11 = self->_capsuleView;
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  cachedCapsuleHeightsByState = self->_cachedCapsuleHeightsByState;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  v15 = [(NSMutableDictionary *)cachedCapsuleHeightsByState objectForKeyedSubscript:v14];

  if (v15 || ![WeakRetained _suppressingDataSourceCalls])
  {
    contentView = [(SFCapsuleView *)v11 contentView];
    [v15 CGSizeValue];
    heightCopy2 = v18;
    v22 = v20 != width || v15 == 0;
    if (contentView && v22)
    {
      delegate = [WeakRetained delegate];
      numberOfItems = [WeakRetained numberOfItems];
      heightCopy2 = height;
      if (numberOfItems != index)
      {
        v25 = numberOfItems;
        heightCopy2 = height;
        if (objc_opt_respondsToSelector())
        {
          if (v25 >= index)
          {
            [delegate capsuleCollectionView:WeakRetained heightForWidth:state state:width];
          }

          else
          {
            [(SFCapsuleView *)v11 bounds];
            Height = CGRectGetHeight(v33);
          }

          heightCopy2 = Height;
        }
      }

      *v31 = width;
      *&v31[1] = heightCopy2;
      v27 = [MEMORY[0x1E696B098] valueWithBytes:v31 objCType:"{CGSize=dd}"];
      v28 = self->_cachedCapsuleHeightsByState;
      v29 = [MEMORY[0x1E696AD98] numberWithInteger:state];
      [(NSMutableDictionary *)v28 setObject:v27 forKeyedSubscript:v29];
    }

    if (heightCopy2 > 0.0)
    {
      height = heightCopy2;
    }
  }

  else
  {
    [(SFCapsuleView *)v11 bounds];
    v16 = CGRectGetHeight(v32);
    if (v16 != 0.0)
    {
      height = v16;
    }
  }

  return height;
}

- (CGSize)preferredCapsuleSizeForState:(int64_t)state
{
  cachedPreferredCapsuleSizesByState = self->_cachedPreferredCapsuleSizesByState;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)cachedPreferredCapsuleSizesByState objectForKeyedSubscript:v6];

  if (v7)
  {
    [v7 CGSizeValue];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_collectionView);
    delegate = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate capsuleCollectionView:WeakRetained preferredSizeForState:state];
      v9 = v14;
      v11 = v15;
      *v21 = v14;
      *&v21[1] = v15;
      v16 = [MEMORY[0x1E696B098] valueWithBytes:v21 objCType:"{CGSize=dd}"];
      v17 = self->_cachedPreferredCapsuleSizesByState;
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:state];
      [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:v18];
    }

    else
    {
      v11 = *MEMORY[0x1E69DE788];
      v9 = *MEMORY[0x1E69DE788];
    }
  }

  v19 = v9;
  v20 = v11;
  result.height = v20;
  result.width = v19;
  return result;
}

@end