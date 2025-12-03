@interface SFCapsulePageAdapter
- (CGSize)preferredCapsuleSizeForState:(int64_t)state;
- (CGSize)preferredSizeForSupplementaryWithIdentifier:(id)identifier fittingSize:(CGSize)size horizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (SFCapsuleContentView)contentView;
- (SFCapsulePageAdapter)initWithItem:(id)item atIndex:(unint64_t)index selectedItemIndex:(unint64_t)itemIndex;
- (double)capsuleHeightForWidth:(double)width defaultHeight:(double)height state:(int64_t)state;
@end

@implementation SFCapsulePageAdapter

- (SFCapsulePageAdapter)initWithItem:(id)item atIndex:(unint64_t)index selectedItemIndex:(unint64_t)itemIndex
{
  itemCopy = item;
  v14.receiver = self;
  v14.super_class = SFCapsulePageAdapter;
  v10 = [(SFCapsulePageAdapter *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_item, item);
    v11->_itemIndex = index;
    v11->_selectedItemIndex = itemIndex;
    v12 = v11;
  }

  return v11;
}

- (double)capsuleHeightForWidth:(double)width defaultHeight:(double)height state:(int64_t)state
{
  if (self->_itemIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return height;
  }

  item = self->_item;
  if (!item)
  {
    return height;
  }

  [(SFCapsuleCollectionViewItem *)item capsuleHeightForWidth:state defaultHeight:width state:height index:?];
  return result;
}

- (CGSize)preferredCapsuleSizeForState:(int64_t)state
{
  collectionView = [(SFCapsuleCollectionViewItem *)self->_item collectionView];
  v6 = collectionView;
  itemIndex = self->_itemIndex;
  if (itemIndex == 0x7FFFFFFFFFFFFFFFLL || !self->_item || itemIndex >= [collectionView numberOfItems])
  {
    v9 = *MEMORY[0x1E69DE788];
    v11 = *MEMORY[0x1E69DE788];
  }

  else
  {
    [(SFCapsuleCollectionViewItem *)self->_item preferredCapsuleSizeForState:state];
    v9 = v8;
    v11 = v10;
  }

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)preferredSizeForSupplementaryWithIdentifier:(id)identifier fittingSize:(CGSize)size horizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  item = self->_item;
  identifierCopy = identifier;
  collectionView = [(SFCapsuleCollectionViewItem *)item collectionView];
  v13 = [collectionView viewForSupplementaryWithIdentifier:identifierCopy];

  *&v14 = priority;
  *&v15 = fittingPriority;
  [v13 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v14, v15}];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (SFCapsuleContentView)contentView
{
  capsuleView = [(SFCapsuleCollectionViewItem *)self->_item capsuleView];
  contentView = [capsuleView contentView];

  return contentView;
}

@end