@interface CKAppStripLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGSize)collectionViewContentSize;
- (CGSize)collectionViewContentSizeForLayoutMode:(unint64_t)a3;
- (CKAppStripLayout)init;
- (_Spec)_specForLayoutMode:(SEL)a3;
- (id)_attributesForLayoutMode:(unint64_t)a3;
- (id)_currentAttributes;
- (id)_currentSupplementryAttributes;
- (id)_generateAttributesForSpec:(_Spec *)a3;
- (id)_generateSupplementryAttributesForSpec:(_Spec *)a3 minified:(BOOL)a4;
- (id)_supplementryAttributesForLayoutMode:(unint64_t)a3;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3;
- (id)finalLayoutAttributesForDisappearingSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
- (id)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)a3 withTargetPosition:(CGPoint)a4;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4;
- (int64_t)_favoritesCount;
- (int64_t)_recentsCount;
- (void)invalidateCachedLayout;
- (void)prepareLayout;
@end

@implementation CKAppStripLayout

- (CKAppStripLayout)init
{
  v3.receiver = self;
  v3.super_class = CKAppStripLayout;
  result = [(CKAppStripLayout *)&v3 init];
  if (result)
  {
    result->_layoutMode = 0;
  }

  return result;
}

- (CGSize)collectionViewContentSizeForLayoutMode:(unint64_t)a3
{
  v5 = [(CKAppStripLayout *)self _itemCount];
  [(CKAppStripLayout *)self _specForLayoutMode:a3];
  v6 = 0.0;
  v7 = 0.0 * (v5 - 1) + 0.0 * v5;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)invalidateCachedLayout
{
  minifiedAttributes = self->_minifiedAttributes;
  self->_minifiedAttributes = 0;

  magnifiedAttributes = self->_magnifiedAttributes;
  self->_magnifiedAttributes = 0;

  supplementryMinifiedAttributes = self->_supplementryMinifiedAttributes;
  self->_supplementryMinifiedAttributes = 0;

  supplementryMagnifiedAttributes = self->_supplementryMagnifiedAttributes;
  self->_supplementryMagnifiedAttributes = 0;

  v7.receiver = self;
  v7.super_class = CKAppStripLayout;
  [(CKAppStripLayout *)&v7 invalidateLayout];
}

- (int64_t)_favoritesCount
{
  v3 = [(CKAppStripLayout *)self collectionView];
  v4 = [v3 delegate];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CKAppStripLayout *)self collectionView];
  v6 = [v5 numberOfItemsInSection:0];

  return v6;
}

- (int64_t)_recentsCount
{
  v3 = [(CKAppStripLayout *)self collectionView];
  v4 = [v3 delegate];

  if (!v4)
  {
    return 0;
  }

  v5 = [(CKAppStripLayout *)self collectionView];
  v6 = [v5 numberOfItemsInSection:1];

  return v6;
}

- (id)_currentAttributes
{
  v3 = [(CKAppStripLayout *)self layoutMode];

  return [(CKAppStripLayout *)self _attributesForLayoutMode:v3];
}

- (id)_currentSupplementryAttributes
{
  v3 = [(CKAppStripLayout *)self layoutMode];

  return [(CKAppStripLayout *)self _supplementryAttributesForLayoutMode:v3];
}

- (id)_attributesForLayoutMode:(unint64_t)a3
{
  v3 = &OBJC_IVAR___CKAppStripLayout__magnifiedAttributes;
  if (!a3)
  {
    v3 = &OBJC_IVAR___CKAppStripLayout__minifiedAttributes;
  }

  return *(&self->super.super.isa + *v3);
}

- (id)_supplementryAttributesForLayoutMode:(unint64_t)a3
{
  v3 = &OBJC_IVAR___CKAppStripLayout__supplementryMagnifiedAttributes;
  if (!a3)
  {
    v3 = &OBJC_IVAR___CKAppStripLayout__supplementryMinifiedAttributes;
  }

  return *(&self->super.super.isa + *v3);
}

- (id)_generateAttributesForSpec:(_Spec *)a3
{
  v5 = [(CKAppStripLayout *)self _favoritesCount];
  v20 = [(CKAppStripLayout *)self _recentsCount];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[CKAppStripLayout _itemCount](self, "_itemCount")}];
  v7 = 0x1E696A000uLL;
  p_vtable = CKPhotosSearchResultsModeHeaderReusableView.vtable;
  if (v5 < 1)
  {
    v10 = 0.0;
  }

  else
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v11 = [*(v7 + 3208) indexPathForItem:v9 inSection:0];
      [p_vtable + 287 layoutAttributesForCellWithIndexPath:v11];
      v12 = p_vtable;
      v14 = v13 = v7;
      [v14 setSize:{a3->var0.width, a3->var0.height}];
      [v14 setFrame:{v10, 0.0, a3->var0.width, a3->var0.height}];
      [v14 setShowsBorder:{-[CKAppStripLayout shouldShowCellBorders](self, "shouldShowCellBorders")}];
      [v14 setAppStripSize:a3->var4];
      [v6 addObject:v14];
      v10 = v10 + a3->var3 + a3->var0.width;

      v7 = v13;
      p_vtable = v12;

      ++v9;
    }

    while (v5 != v9);
  }

  if (CKIsRunningInCameraAppsClient())
  {
    v15 = v20;
  }

  else
  {
    v15 = v20;
    if (v20)
    {
      v10 = v10 + a3->var1.width + a3->var2 * 2.0;
    }
  }

  if (v15 >= 1)
  {
    for (i = 0; i != v15; ++i)
    {
      v17 = [*(v7 + 3208) indexPathForItem:i inSection:1];
      v18 = [p_vtable + 287 layoutAttributesForCellWithIndexPath:v17];
      [v18 setSize:{a3->var0.width, a3->var0.height}];
      [v18 setFrame:{v10, 0.0, a3->var0.width, a3->var0.height}];
      [v18 setShowsBorder:{-[CKAppStripLayout shouldShowCellBorders](self, "shouldShowCellBorders")}];
      [v18 setAppStripSize:a3->var4];
      [v6 addObject:v18];
      v10 = v10 + a3->var3 + a3->var0.width;
    }
  }

  return v6;
}

- (id)_generateSupplementryAttributesForSpec:(_Spec *)a3 minified:(BOOL)a4
{
  v4 = a4;
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = [(CKAppStripLayout *)self _favoritesCount];
  v8 = [(CKAppStripLayout *)self _recentsCount];
  v9 = CKIsRunningInCameraAppsClient();
  v10 = MEMORY[0x1E695E0F0];
  if (!v9 && v7 && v8)
  {
    v11 = &OBJC_IVAR___CKAppStripLayout__magnifiedAttributes;
    if (v4)
    {
      v11 = &OBJC_IVAR___CKAppStripLayout__minifiedAttributes;
    }

    v12 = *(&self->super.super.isa + *v11);
    v13 = [v12 objectAtIndex:v7 - 1];
    v14 = [v12 objectAtIndex:v7];
    v15 = MEMORY[0x1E69DC858];
    v16 = +[CKBrowserSwitcherFooterAccessoryCell supplementryViewKind];
    v17 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
    v18 = [v15 layoutAttributesForSupplementaryViewOfKind:v16 withIndexPath:v17];

    [v18 setSize:{a3->var1.width, a3->var1.height}];
    v19 = *(MEMORY[0x1E695F058] + 8);
    [v13 frame];
    MaxX = CGRectGetMaxX(v26);
    [v14 frame];
    v21 = MaxX + (CGRectGetMinX(v27) - MaxX) * 0.5 - a3->var1.width * 0.5;
    if (CKMainScreenScale_once_43 != -1)
    {
      [CKAppStripLayout _generateSupplementryAttributesForSpec:minified:];
    }

    v22 = *&CKMainScreenScale_sMainScreenScale_43;
    if (*&CKMainScreenScale_sMainScreenScale_43 == 0.0)
    {
      v22 = 1.0;
    }

    [v18 setFrame:{round(v21 * v22) / v22, v19, a3->var1.width, a3->var1.height}];
    v24[0] = v18;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  }

  return v10;
}

- (_Spec)_specForLayoutMode:(SEL)a3
{
  if (a4)
  {
    retstr->var0 = _MagnifiedSpec;
    retstr->var1 = unk_190DD0CD0;
    *&retstr->var2 = xmmword_190DD0CE0;
    retstr->var4 = 1;
  }

  else
  {
    retstr->var4 = 0;
    retstr->var0 = _MinifiedSpec;
    retstr->var1 = unk_190DD0C98;
    *&retstr->var2 = xmmword_190DD0CA8;
  }

  return self;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v5 = [(CKAppStripLayout *)self collectionView:a3.origin.x];
  [v5 bounds];
  v8 = v7 != height || v6 != width;

  return v8;
}

- (CGSize)collectionViewContentSize
{
  v3 = [(CKAppStripLayout *)self layoutMode];

  [(CKAppStripLayout *)self collectionViewContentSizeForLayoutMode:v3];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)prepareLayout
{
  [(CKAppStripLayout *)self invalidateCachedLayout];
  if (!self->_minifiedAttributes)
  {
    v14 = 0;
    v11 = _MinifiedSpec;
    v12 = unk_190DD0C98;
    v13 = xmmword_190DD0CA8;
    v3 = [(CKAppStripLayout *)self _generateAttributesForSpec:&v11];
    minifiedAttributes = self->_minifiedAttributes;
    self->_minifiedAttributes = v3;
  }

  if (!self->_magnifiedAttributes)
  {
    v11 = _MagnifiedSpec;
    v12 = unk_190DD0CD0;
    v13 = xmmword_190DD0CE0;
    v14 = 1;
    v5 = [(CKAppStripLayout *)self _generateAttributesForSpec:&v11];
    magnifiedAttributes = self->_magnifiedAttributes;
    self->_magnifiedAttributes = v5;
  }

  if (!self->_supplementryMinifiedAttributes)
  {
    v14 = 0;
    v11 = _MinifiedSpec;
    v12 = unk_190DD0C98;
    v13 = xmmword_190DD0CA8;
    v7 = [(CKAppStripLayout *)self _generateSupplementryAttributesForSpec:&v11 minified:1];
    supplementryMinifiedAttributes = self->_supplementryMinifiedAttributes;
    self->_supplementryMinifiedAttributes = v7;
  }

  if (!self->_supplementryMagnifiedAttributes)
  {
    v11 = _MagnifiedSpec;
    v12 = unk_190DD0CD0;
    v13 = xmmword_190DD0CE0;
    v14 = 1;
    v9 = [(CKAppStripLayout *)self _generateSupplementryAttributesForSpec:&v11 minified:0];
    supplementryMagnifiedAttributes = self->_supplementryMagnifiedAttributes;
    self->_supplementryMagnifiedAttributes = v9;
  }
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [v4 section];

  if (v6 == 1)
  {
    v5 += [(CKAppStripLayout *)self _favoritesCount];
  }

  if (self->_inLayoutModeTransition)
  {
    if ([(CKAppStripLayout *)self layoutMode])
    {
      v7 = self;
      v8 = 0;
    }

    else
    {
      v7 = self;
      v8 = 1;
    }

    v9 = [(CKAppStripLayout *)v7 _attributesForLayoutMode:v8];
  }

  else
  {
    v9 = [(CKAppStripLayout *)self _currentAttributes];
  }

  v10 = v9;
  v11 = [v9 objectAtIndexedSubscript:v5];

  return v11;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [v4 section];

  if (v6 == 1)
  {
    v5 += [(CKAppStripLayout *)self _favoritesCount];
  }

  v7 = [(CKAppStripLayout *)self _currentAttributes];
  v8 = [v7 count];

  if (v5 >= v8)
  {
    v10 = 0;
  }

  else
  {
    v9 = [(CKAppStripLayout *)self _currentAttributes];
    v10 = [v9 objectAtIndexedSubscript:v5];
  }

  return v10;
}

- (id)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a3;
  v7 = [a4 item];
  v8 = +[CKBrowserSwitcherFooterAccessoryCell supplementryViewKind];
  v9 = [v6 isEqualToString:v8];

  if (v9 && (-[CKAppStripLayout _currentSupplementryAttributes](self, "_currentSupplementryAttributes"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, v7 < v11))
  {
    if (self->_inLayoutModeTransition)
    {
      if ([(CKAppStripLayout *)self layoutMode])
      {
        v12 = self;
        v13 = 0;
      }

      else
      {
        v12 = self;
        v13 = 1;
      }

      v15 = [(CKAppStripLayout *)v12 _supplementryAttributesForLayoutMode:v13];
    }

    else
    {
      v15 = [(CKAppStripLayout *)self _currentSupplementryAttributes];
    }

    v16 = v15;
    v14 = [v15 objectAtIndexedSubscript:v7];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)finalLayoutAttributesForDisappearingSupplementaryElementOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CKBrowserSwitcherFooterAccessoryCell supplementryViewKind];
  v9 = [v7 isEqualToString:v8];

  if (v9 && (v10 = [v6 row], -[CKAppStripLayout _currentSupplementryAttributes](self, "_currentSupplementryAttributes"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10 < v12))
  {
    v13 = [(CKAppStripLayout *)self _currentSupplementryAttributes];
    v14 = [v13 objectAtIndex:{objc_msgSend(v6, "row")}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 item];
  v6 = [v4 section];

  if (v6 == 1)
  {
    v5 += [(CKAppStripLayout *)self _favoritesCount];
  }

  v7 = [(CKAppStripLayout *)self _currentAttributes];
  v8 = [v7 objectAtIndexedSubscript:v5];

  return v8;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)a3 atIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[CKBrowserSwitcherFooterAccessoryCell supplementryViewKind];
  v9 = [v7 isEqualToString:v8];

  if (v9 && (v10 = [v6 row], -[CKAppStripLayout _currentSupplementryAttributes](self, "_currentSupplementryAttributes"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10 < v12))
  {
    v13 = [(CKAppStripLayout *)self _currentSupplementryAttributes];
    v14 = [v13 objectAtIndex:{objc_msgSend(v6, "row")}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v40 = *MEMORY[0x1E69E9840];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[CKAppStripLayout _itemCount](self, "_itemCount")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = [(CKAppStripLayout *)self _currentAttributes];
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v35;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v35 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        [v14 frame];
        v44.origin.x = v15;
        v44.origin.y = v16;
        v44.size.width = v17;
        v44.size.height = v18;
        v42.origin.x = x;
        v42.origin.y = y;
        v42.size.width = width;
        v42.size.height = height;
        if (CGRectIntersectsRect(v42, v44))
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v11);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = [(CKAppStripLayout *)self _currentSupplementryAttributes];
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v30 + 1) + 8 * j);
        [v24 frame];
        v45.origin.x = v25;
        v45.origin.y = v26;
        v45.size.width = v27;
        v45.size.height = v28;
        v43.origin.x = x;
        v43.origin.y = y;
        v43.size.width = width;
        v43.size.height = height;
        if (CGRectIntersectsRect(v43, v45))
        {
          [v8 addObject:v24];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v21);
  }

  return v8;
}

- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)a3 withTargetPosition:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [v7 row];
  v9 = [v7 section];

  if (v9 == 1)
  {
    v8 += [(CKAppStripLayout *)self _favoritesCount];
  }

  v10 = [(CKAppStripLayout *)self _currentAttributes];
  v11 = [v10 objectAtIndexedSubscript:v8];

  v12 = [v11 copy];
  [v12 setCenter:{x, y}];

  return v12;
}

@end