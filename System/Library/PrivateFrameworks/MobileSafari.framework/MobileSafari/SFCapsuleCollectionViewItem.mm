@interface SFCapsuleCollectionViewItem
- (CGSize)preferredCapsuleSizeForState:(int64_t)a3;
- (SFCapsuleCollectionView)collectionView;
- (SFCapsuleCollectionViewItem)initWithCollectionView:(id)a3;
- (double)capsuleHeightForWidth:(double)a3 defaultHeight:(double)a4 state:(int64_t)a5 index:(int64_t)a6;
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

- (SFCapsuleCollectionViewItem)initWithCollectionView:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SFCapsuleCollectionViewItem;
  v5 = [(SFCapsuleCollectionViewItem *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_collectionView, v4);
    v7 = [MEMORY[0x1E695DF90] dictionary];
    cachedCapsuleHeightsByState = v6->_cachedCapsuleHeightsByState;
    v6->_cachedCapsuleHeightsByState = v7;

    v9 = [MEMORY[0x1E695DF90] dictionary];
    cachedPreferredCapsuleSizesByState = v6->_cachedPreferredCapsuleSizesByState;
    v6->_cachedPreferredCapsuleSizesByState = v9;

    v11 = v6;
  }

  return v6;
}

- (double)capsuleHeightForWidth:(double)a3 defaultHeight:(double)a4 state:(int64_t)a5 index:(int64_t)a6
{
  v11 = self->_capsuleView;
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);
  cachedCapsuleHeightsByState = self->_cachedCapsuleHeightsByState;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  v15 = [(NSMutableDictionary *)cachedCapsuleHeightsByState objectForKeyedSubscript:v14];

  if (v15 || ![WeakRetained _suppressingDataSourceCalls])
  {
    v17 = [(SFCapsuleView *)v11 contentView];
    [v15 CGSizeValue];
    v19 = v18;
    v22 = v20 != a3 || v15 == 0;
    if (v17 && v22)
    {
      v23 = [WeakRetained delegate];
      v24 = [WeakRetained numberOfItems];
      v19 = a4;
      if (v24 != a6)
      {
        v25 = v24;
        v19 = a4;
        if (objc_opt_respondsToSelector())
        {
          if (v25 >= a6)
          {
            [v23 capsuleCollectionView:WeakRetained heightForWidth:a5 state:a3];
          }

          else
          {
            [(SFCapsuleView *)v11 bounds];
            Height = CGRectGetHeight(v33);
          }

          v19 = Height;
        }
      }

      *v31 = a3;
      *&v31[1] = v19;
      v27 = [MEMORY[0x1E696B098] valueWithBytes:v31 objCType:"{CGSize=dd}"];
      v28 = self->_cachedCapsuleHeightsByState;
      v29 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
      [(NSMutableDictionary *)v28 setObject:v27 forKeyedSubscript:v29];
    }

    if (v19 > 0.0)
    {
      a4 = v19;
    }
  }

  else
  {
    [(SFCapsuleView *)v11 bounds];
    v16 = CGRectGetHeight(v32);
    if (v16 != 0.0)
    {
      a4 = v16;
    }
  }

  return a4;
}

- (CGSize)preferredCapsuleSizeForState:(int64_t)a3
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
    v13 = [WeakRetained delegate];
    if (objc_opt_respondsToSelector())
    {
      [v13 capsuleCollectionView:WeakRetained preferredSizeForState:a3];
      v9 = v14;
      v11 = v15;
      *v21 = v14;
      *&v21[1] = v15;
      v16 = [MEMORY[0x1E696B098] valueWithBytes:v21 objCType:"{CGSize=dd}"];
      v17 = self->_cachedPreferredCapsuleSizesByState;
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
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