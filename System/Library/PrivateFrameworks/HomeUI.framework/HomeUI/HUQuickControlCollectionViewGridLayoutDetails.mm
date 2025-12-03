@interface HUQuickControlCollectionViewGridLayoutDetails
- (CGRect)contentFrame;
- (id)indexPathForRow:(unint64_t)row column:(unint64_t)column;
- (id)indexPathForSectionHeader;
- (unint64_t)numberOfColumnsInRow:(unint64_t)row;
@end

@implementation HUQuickControlCollectionViewGridLayoutDetails

- (id)indexPathForSectionHeader
{
  sectionHeaderLayout = [(HUQuickControlCollectionViewGridLayoutDetails *)self sectionHeaderLayout];
  if (sectionHeaderLayout)
  {
    v4 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[HUQuickControlCollectionViewGridLayoutDetails sectionIndex](self, "sectionIndex")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)indexPathForRow:(unint64_t)row column:(unint64_t)column
{
  settings = [(HUQuickControlCollectionViewGridLayoutDetails *)self settings];
  v8 = column + [settings numberOfColumns] * row;

  v9 = MEMORY[0x277CCAA70];
  sectionIndex = [(HUQuickControlCollectionViewGridLayoutDetails *)self sectionIndex];

  return [v9 indexPathForItem:v8 inSection:sectionIndex];
}

- (unint64_t)numberOfColumnsInRow:(unint64_t)row
{
  settings = [(HUQuickControlCollectionViewGridLayoutDetails *)self settings];
  numberOfColumns = [settings numberOfColumns];

  if (numberOfColumns)
  {
    settings2 = [(HUQuickControlCollectionViewGridLayoutDetails *)self settings];
    v8 = [settings2 numberOfRows] - 1;

    if (v8 == row)
    {
      settings3 = [(HUQuickControlCollectionViewGridLayoutDetails *)self settings];
      numberOfItems = [settings3 numberOfItems];
      settings4 = [(HUQuickControlCollectionViewGridLayoutDetails *)self settings];
      v12 = numberOfItems % [settings4 numberOfColumns];

      if (v12)
      {
        return v12;
      }
    }
  }

  return numberOfColumns;
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