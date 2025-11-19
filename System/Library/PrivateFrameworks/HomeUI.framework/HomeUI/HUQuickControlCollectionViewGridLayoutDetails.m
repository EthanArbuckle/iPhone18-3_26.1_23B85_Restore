@interface HUQuickControlCollectionViewGridLayoutDetails
- (CGRect)contentFrame;
- (id)indexPathForRow:(unint64_t)a3 column:(unint64_t)a4;
- (id)indexPathForSectionHeader;
- (unint64_t)numberOfColumnsInRow:(unint64_t)a3;
@end

@implementation HUQuickControlCollectionViewGridLayoutDetails

- (id)indexPathForSectionHeader
{
  v3 = [(HUQuickControlCollectionViewGridLayoutDetails *)self sectionHeaderLayout];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[HUQuickControlCollectionViewGridLayoutDetails sectionIndex](self, "sectionIndex")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)indexPathForRow:(unint64_t)a3 column:(unint64_t)a4
{
  v7 = [(HUQuickControlCollectionViewGridLayoutDetails *)self settings];
  v8 = a4 + [v7 numberOfColumns] * a3;

  v9 = MEMORY[0x277CCAA70];
  v10 = [(HUQuickControlCollectionViewGridLayoutDetails *)self sectionIndex];

  return [v9 indexPathForItem:v8 inSection:v10];
}

- (unint64_t)numberOfColumnsInRow:(unint64_t)a3
{
  v5 = [(HUQuickControlCollectionViewGridLayoutDetails *)self settings];
  v6 = [v5 numberOfColumns];

  if (v6)
  {
    v7 = [(HUQuickControlCollectionViewGridLayoutDetails *)self settings];
    v8 = [v7 numberOfRows] - 1;

    if (v8 == a3)
    {
      v9 = [(HUQuickControlCollectionViewGridLayoutDetails *)self settings];
      v10 = [v9 numberOfItems];
      v11 = [(HUQuickControlCollectionViewGridLayoutDetails *)self settings];
      v12 = v10 % [v11 numberOfColumns];

      if (v12)
      {
        return v12;
      }
    }
  }

  return v6;
}

- (CGRect)contentFrame
{
  x = self->_contentFrame.origin.x;
  y = self->_contentFrame.origin.y;
  width = self->_contentFrame.size.width;
  height = self->_contentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end