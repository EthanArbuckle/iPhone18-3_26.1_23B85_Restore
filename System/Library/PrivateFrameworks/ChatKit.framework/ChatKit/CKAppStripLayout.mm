@interface CKAppStripLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGSize)collectionViewContentSize;
- (CGSize)collectionViewContentSizeForLayoutMode:(unint64_t)mode;
- (CKAppStripLayout)init;
- (_Spec)_specForLayoutMode:(SEL)mode;
- (id)_attributesForLayoutMode:(unint64_t)mode;
- (id)_currentAttributes;
- (id)_currentSupplementryAttributes;
- (id)_generateAttributesForSpec:(_Spec *)spec;
- (id)_generateSupplementryAttributesForSpec:(_Spec *)spec minified:(BOOL)minified;
- (id)_supplementryAttributesForLayoutMode:(unint64_t)mode;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path;
- (id)finalLayoutAttributesForDisappearingSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path;
- (id)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)path withTargetPosition:(CGPoint)position;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
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

- (CGSize)collectionViewContentSizeForLayoutMode:(unint64_t)mode
{
  _itemCount = [(CKAppStripLayout *)self _itemCount];
  [(CKAppStripLayout *)self _specForLayoutMode:mode];
  v6 = 0.0;
  v7 = 0.0 * (_itemCount - 1) + 0.0 * _itemCount;
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
  collectionView = [(CKAppStripLayout *)self collectionView];
  delegate = [collectionView delegate];

  if (!delegate)
  {
    return 0;
  }

  collectionView2 = [(CKAppStripLayout *)self collectionView];
  v6 = [collectionView2 numberOfItemsInSection:0];

  return v6;
}

- (int64_t)_recentsCount
{
  collectionView = [(CKAppStripLayout *)self collectionView];
  delegate = [collectionView delegate];

  if (!delegate)
  {
    return 0;
  }

  collectionView2 = [(CKAppStripLayout *)self collectionView];
  v6 = [collectionView2 numberOfItemsInSection:1];

  return v6;
}

- (id)_currentAttributes
{
  layoutMode = [(CKAppStripLayout *)self layoutMode];

  return [(CKAppStripLayout *)self _attributesForLayoutMode:layoutMode];
}

- (id)_currentSupplementryAttributes
{
  layoutMode = [(CKAppStripLayout *)self layoutMode];

  return [(CKAppStripLayout *)self _supplementryAttributesForLayoutMode:layoutMode];
}

- (id)_attributesForLayoutMode:(unint64_t)mode
{
  v3 = &OBJC_IVAR___CKAppStripLayout__magnifiedAttributes;
  if (!mode)
  {
    v3 = &OBJC_IVAR___CKAppStripLayout__minifiedAttributes;
  }

  return *(&self->super.super.isa + *v3);
}

- (id)_supplementryAttributesForLayoutMode:(unint64_t)mode
{
  v3 = &OBJC_IVAR___CKAppStripLayout__supplementryMagnifiedAttributes;
  if (!mode)
  {
    v3 = &OBJC_IVAR___CKAppStripLayout__supplementryMinifiedAttributes;
  }

  return *(&self->super.super.isa + *v3);
}

- (id)_generateAttributesForSpec:(_Spec *)spec
{
  _favoritesCount = [(CKAppStripLayout *)self _favoritesCount];
  _recentsCount = [(CKAppStripLayout *)self _recentsCount];
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[CKAppStripLayout _itemCount](self, "_itemCount")}];
  v7 = 0x1E696A000uLL;
  p_vtable = CKPhotosSearchResultsModeHeaderReusableView.vtable;
  if (_favoritesCount < 1)
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
      [v14 setSize:{spec->var0.width, spec->var0.height}];
      [v14 setFrame:{v10, 0.0, spec->var0.width, spec->var0.height}];
      [v14 setShowsBorder:{-[CKAppStripLayout shouldShowCellBorders](self, "shouldShowCellBorders")}];
      [v14 setAppStripSize:spec->var4];
      [v6 addObject:v14];
      v10 = v10 + spec->var3 + spec->var0.width;

      v7 = v13;
      p_vtable = v12;

      ++v9;
    }

    while (_favoritesCount != v9);
  }

  if (CKIsRunningInCameraAppsClient())
  {
    v15 = _recentsCount;
  }

  else
  {
    v15 = _recentsCount;
    if (_recentsCount)
    {
      v10 = v10 + spec->var1.width + spec->var2 * 2.0;
    }
  }

  if (v15 >= 1)
  {
    for (i = 0; i != v15; ++i)
    {
      v17 = [*(v7 + 3208) indexPathForItem:i inSection:1];
      v18 = [p_vtable + 287 layoutAttributesForCellWithIndexPath:v17];
      [v18 setSize:{spec->var0.width, spec->var0.height}];
      [v18 setFrame:{v10, 0.0, spec->var0.width, spec->var0.height}];
      [v18 setShowsBorder:{-[CKAppStripLayout shouldShowCellBorders](self, "shouldShowCellBorders")}];
      [v18 setAppStripSize:spec->var4];
      [v6 addObject:v18];
      v10 = v10 + spec->var3 + spec->var0.width;
    }
  }

  return v6;
}

- (id)_generateSupplementryAttributesForSpec:(_Spec *)spec minified:(BOOL)minified
{
  minifiedCopy = minified;
  v24[1] = *MEMORY[0x1E69E9840];
  _favoritesCount = [(CKAppStripLayout *)self _favoritesCount];
  _recentsCount = [(CKAppStripLayout *)self _recentsCount];
  v9 = CKIsRunningInCameraAppsClient();
  v10 = MEMORY[0x1E695E0F0];
  if (!v9 && _favoritesCount && _recentsCount)
  {
    v11 = &OBJC_IVAR___CKAppStripLayout__magnifiedAttributes;
    if (minifiedCopy)
    {
      v11 = &OBJC_IVAR___CKAppStripLayout__minifiedAttributes;
    }

    v12 = *(&self->super.super.isa + *v11);
    v13 = [v12 objectAtIndex:_favoritesCount - 1];
    v14 = [v12 objectAtIndex:_favoritesCount];
    v15 = MEMORY[0x1E69DC858];
    v16 = +[CKBrowserSwitcherFooterAccessoryCell supplementryViewKind];
    v17 = [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
    v18 = [v15 layoutAttributesForSupplementaryViewOfKind:v16 withIndexPath:v17];

    [v18 setSize:{spec->var1.width, spec->var1.height}];
    v19 = *(MEMORY[0x1E695F058] + 8);
    [v13 frame];
    MaxX = CGRectGetMaxX(v26);
    [v14 frame];
    v21 = MaxX + (CGRectGetMinX(v27) - MaxX) * 0.5 - spec->var1.width * 0.5;
    if (CKMainScreenScale_once_43 != -1)
    {
      [CKAppStripLayout _generateSupplementryAttributesForSpec:minified:];
    }

    v22 = *&CKMainScreenScale_sMainScreenScale_43;
    if (*&CKMainScreenScale_sMainScreenScale_43 == 0.0)
    {
      v22 = 1.0;
    }

    [v18 setFrame:{round(v21 * v22) / v22, v19, spec->var1.width, spec->var1.height}];
    v24[0] = v18;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  }

  return v10;
}

- (_Spec)_specForLayoutMode:(SEL)mode
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

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  v5 = [(CKAppStripLayout *)self collectionView:change.origin.x];
  [v5 bounds];
  v8 = v7 != height || v6 != width;

  return v8;
}

- (CGSize)collectionViewContentSize
{
  layoutMode = [(CKAppStripLayout *)self layoutMode];

  [(CKAppStripLayout *)self collectionViewContentSizeForLayoutMode:layoutMode];
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

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  section = [pathCopy section];

  if (section == 1)
  {
    item += [(CKAppStripLayout *)self _favoritesCount];
  }

  if (self->_inLayoutModeTransition)
  {
    if ([(CKAppStripLayout *)self layoutMode])
    {
      selfCopy2 = self;
      v8 = 0;
    }

    else
    {
      selfCopy2 = self;
      v8 = 1;
    }

    _currentAttributes = [(CKAppStripLayout *)selfCopy2 _attributesForLayoutMode:v8];
  }

  else
  {
    _currentAttributes = [(CKAppStripLayout *)self _currentAttributes];
  }

  v10 = _currentAttributes;
  v11 = [_currentAttributes objectAtIndexedSubscript:item];

  return v11;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  section = [pathCopy section];

  if (section == 1)
  {
    item += [(CKAppStripLayout *)self _favoritesCount];
  }

  _currentAttributes = [(CKAppStripLayout *)self _currentAttributes];
  v8 = [_currentAttributes count];

  if (item >= v8)
  {
    v10 = 0;
  }

  else
  {
    _currentAttributes2 = [(CKAppStripLayout *)self _currentAttributes];
    v10 = [_currentAttributes2 objectAtIndexedSubscript:item];
  }

  return v10;
}

- (id)initialLayoutAttributesForAppearingSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  kindCopy = kind;
  item = [path item];
  v8 = +[CKBrowserSwitcherFooterAccessoryCell supplementryViewKind];
  v9 = [kindCopy isEqualToString:v8];

  if (v9 && (-[CKAppStripLayout _currentSupplementryAttributes](self, "_currentSupplementryAttributes"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 count], v10, item < v11))
  {
    if (self->_inLayoutModeTransition)
    {
      if ([(CKAppStripLayout *)self layoutMode])
      {
        selfCopy2 = self;
        v13 = 0;
      }

      else
      {
        selfCopy2 = self;
        v13 = 1;
      }

      _currentSupplementryAttributes = [(CKAppStripLayout *)selfCopy2 _supplementryAttributesForLayoutMode:v13];
    }

    else
    {
      _currentSupplementryAttributes = [(CKAppStripLayout *)self _currentSupplementryAttributes];
    }

    v16 = _currentSupplementryAttributes;
    v14 = [_currentSupplementryAttributes objectAtIndexedSubscript:item];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)finalLayoutAttributesForDisappearingSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  kindCopy = kind;
  v8 = +[CKBrowserSwitcherFooterAccessoryCell supplementryViewKind];
  v9 = [kindCopy isEqualToString:v8];

  if (v9 && (v10 = [pathCopy row], -[CKAppStripLayout _currentSupplementryAttributes](self, "_currentSupplementryAttributes"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10 < v12))
  {
    _currentSupplementryAttributes = [(CKAppStripLayout *)self _currentSupplementryAttributes];
    v14 = [_currentSupplementryAttributes objectAtIndex:{objc_msgSend(pathCopy, "row")}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  item = [pathCopy item];
  section = [pathCopy section];

  if (section == 1)
  {
    item += [(CKAppStripLayout *)self _favoritesCount];
  }

  _currentAttributes = [(CKAppStripLayout *)self _currentAttributes];
  v8 = [_currentAttributes objectAtIndexedSubscript:item];

  return v8;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  kindCopy = kind;
  v8 = +[CKBrowserSwitcherFooterAccessoryCell supplementryViewKind];
  v9 = [kindCopy isEqualToString:v8];

  if (v9 && (v10 = [pathCopy row], -[CKAppStripLayout _currentSupplementryAttributes](self, "_currentSupplementryAttributes"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10 < v12))
  {
    _currentSupplementryAttributes = [(CKAppStripLayout *)self _currentSupplementryAttributes];
    v14 = [_currentSupplementryAttributes objectAtIndex:{objc_msgSend(pathCopy, "row")}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v40 = *MEMORY[0x1E69E9840];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[CKAppStripLayout _itemCount](self, "_itemCount")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  _currentAttributes = [(CKAppStripLayout *)self _currentAttributes];
  v10 = [_currentAttributes countByEnumeratingWithState:&v34 objects:v39 count:16];
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
          objc_enumerationMutation(_currentAttributes);
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

      v11 = [_currentAttributes countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v11);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  _currentSupplementryAttributes = [(CKAppStripLayout *)self _currentSupplementryAttributes];
  v20 = [_currentSupplementryAttributes countByEnumeratingWithState:&v30 objects:v38 count:16];
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
          objc_enumerationMutation(_currentSupplementryAttributes);
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

      v21 = [_currentSupplementryAttributes countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v21);
  }

  return v8;
}

- (id)layoutAttributesForInteractivelyMovingItemAtIndexPath:(id)path withTargetPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  pathCopy = path;
  v8 = [pathCopy row];
  section = [pathCopy section];

  if (section == 1)
  {
    v8 += [(CKAppStripLayout *)self _favoritesCount];
  }

  _currentAttributes = [(CKAppStripLayout *)self _currentAttributes];
  v11 = [_currentAttributes objectAtIndexedSubscript:v8];

  v12 = [v11 copy];
  [v12 setCenter:{x, y}];

  return v12;
}

@end