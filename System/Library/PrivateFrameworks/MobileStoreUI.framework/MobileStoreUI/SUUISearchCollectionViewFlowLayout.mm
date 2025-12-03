@interface SUUISearchCollectionViewFlowLayout
- (SUUISearchCollectionViewFlowLayout)init;
- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (void)prepareLayout;
@end

@implementation SUUISearchCollectionViewFlowLayout

- (SUUISearchCollectionViewFlowLayout)init
{
  v4.receiver = self;
  v4.super_class = SUUISearchCollectionViewFlowLayout;
  v2 = [(SUUIItemGridCollectionViewLayout *)&v4 init];
  if (v2)
  {
    [(SUUISearchCollectionViewFlowLayout *)v2 registerClass:objc_opt_class() forDecorationViewOfKind:@"a"];
    [(SUUISearchCollectionViewFlowLayout *)v2 registerClass:objc_opt_class() forDecorationViewOfKind:@"b"];
  }

  return v2;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v30.receiver = self;
  v30.super_class = SUUISearchCollectionViewFlowLayout;
  v8 = [(SUUIItemGridCollectionViewLayout *)&v30 layoutAttributesForElementsInRect:?];
  v9 = [v8 mutableCopy];

  [(UICollectionViewFlowLayout *)self itemSize];
  v11 = v10;
  v13 = v12;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v14 = floor((CGRectGetMinY(v32) - self->_headerSize.height) / v13);
  if (v14 < 0.0)
  {
    v14 = 0.0;
  }

  v15 = v14;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v16 = vcvtpd_s64_f64((CGRectGetMaxY(v33) - self->_headerSize.height) / v13);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v17 = CGRectGetMinX(v34) / v11;
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v18 = CGRectGetMaxX(v35) / v11;
  if (self->_backfills)
  {
    if (self->_numberOfRows <= v16)
    {
      v19 = v16 + 6;
    }

    else
    {
      v19 = v16;
    }
  }

  else
  {
    --v15;
    numberOfRows = self->_numberOfRows;
    if (numberOfRows + 1 < v16 - 1)
    {
      v19 = numberOfRows + 1;
    }

    else
    {
      v19 = v16 - 1;
    }
  }

  v21 = vcvtpd_s64_f64(v17);
  v22 = vcvtmd_s64_f64(v18);
  v23 = v19 - 1;
  if (v15 < v19 - 1)
  {
    do
    {
      v24 = [MEMORY[0x277CCAA70] indexPathWithIndex:v15];
      v25 = [(SUUISearchCollectionViewFlowLayout *)self layoutAttributesForDecorationViewOfKind:@"b" atIndexPath:v24];
      [v9 addObject:v25];

      ++v15;
    }

    while (v23 != v15);
  }

  if ((v22 - 1) > v21)
  {
    v26 = v21 + 1;
    do
    {
      v27 = [MEMORY[0x277CCAA70] indexPathWithIndex:v26];
      v28 = [(SUUISearchCollectionViewFlowLayout *)self layoutAttributesForDecorationViewOfKind:@"a" atIndexPath:v27];
      [v9 addObject:v28];

      ++v26;
    }

    while (v22 != v26);
  }

  return v9;
}

- (id)layoutAttributesForDecorationViewOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  kindCopy = kind;
  [(UICollectionViewFlowLayout *)self itemSize];
  v9 = v8;
  v11 = v10;
  v12 = [pathCopy indexAtPosition:0];
  v13 = [objc_msgSend(objc_opt_class() "layoutAttributesClass")];

  [v13 setZIndex:1];
  LODWORD(pathCopy) = [kindCopy isEqualToString:@"b"];

  if (pathCopy)
  {
    horizontalPadding = self->_horizontalPadding;
    v15 = self->_headerSize.height + (v12 + 1) * v11;
    [(UICollectionView *)self->_collectionView frame];
    v17 = v16 + self->_horizontalPadding * -2.0;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v20 = 1.0 / v19;
  }

  else
  {
    horizontalPadding = v9 * v12;
    v15 = self->_verticalPadding + self->_headerSize.height;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v17 = 1.0 / v21;
    v22 = 6;
    if (!self->_backfills)
    {
      v22 = 0;
    }

    v20 = -(self->_verticalPadding - v11 * (v22 + self->_numberOfRows));
  }

  [v13 setFrame:{horizontalPadding, v15, v17, v20}];

  return v13;
}

- (void)prepareLayout
{
  v13.receiver = self;
  v13.super_class = SUUISearchCollectionViewFlowLayout;
  [(UICollectionViewFlowLayout *)&v13 prepareLayout];
  collectionView = [(SUUISearchCollectionViewFlowLayout *)self collectionView];
  collectionView = self->_collectionView;
  self->_collectionView = collectionView;

  [(UICollectionView *)self->_collectionView frame];
  v6 = v5;
  [(UICollectionViewFlowLayout *)self itemSize];
  self->_numberOfColumns = vcvtmd_s64_f64(v6 / v7);
  if ([(UICollectionView *)self->_collectionView numberOfSections]< 1)
  {
    v10 = 0.0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v9 += [(UICollectionView *)self->_collectionView numberOfItemsInSection:v8++];
    }

    while (v8 < [(UICollectionView *)self->_collectionView numberOfSections]);
    v10 = v9;
  }

  self->_numberOfRows = vcvtps_s32_f32(v10 / self->_numberOfColumns);
  [(UICollectionViewFlowLayout *)self headerReferenceSize];
  self->_headerSize.width = v11;
  self->_headerSize.height = v12;
}

@end