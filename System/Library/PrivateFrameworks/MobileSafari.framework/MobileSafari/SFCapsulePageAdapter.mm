@interface SFCapsulePageAdapter
- (CGSize)preferredCapsuleSizeForState:(int64_t)a3;
- (CGSize)preferredSizeForSupplementaryWithIdentifier:(id)a3 fittingSize:(CGSize)a4 horizontalFittingPriority:(float)a5 verticalFittingPriority:(float)a6;
- (SFCapsuleContentView)contentView;
- (SFCapsulePageAdapter)initWithItem:(id)a3 atIndex:(unint64_t)a4 selectedItemIndex:(unint64_t)a5;
- (double)capsuleHeightForWidth:(double)a3 defaultHeight:(double)a4 state:(int64_t)a5;
@end

@implementation SFCapsulePageAdapter

- (SFCapsulePageAdapter)initWithItem:(id)a3 atIndex:(unint64_t)a4 selectedItemIndex:(unint64_t)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = SFCapsulePageAdapter;
  v10 = [(SFCapsulePageAdapter *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_item, a3);
    v11->_itemIndex = a4;
    v11->_selectedItemIndex = a5;
    v12 = v11;
  }

  return v11;
}

- (double)capsuleHeightForWidth:(double)a3 defaultHeight:(double)a4 state:(int64_t)a5
{
  if (self->_itemIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    return a4;
  }

  item = self->_item;
  if (!item)
  {
    return a4;
  }

  [(SFCapsuleCollectionViewItem *)item capsuleHeightForWidth:a5 defaultHeight:a3 state:a4 index:?];
  return result;
}

- (CGSize)preferredCapsuleSizeForState:(int64_t)a3
{
  v5 = [(SFCapsuleCollectionViewItem *)self->_item collectionView];
  v6 = v5;
  itemIndex = self->_itemIndex;
  if (itemIndex == 0x7FFFFFFFFFFFFFFFLL || !self->_item || itemIndex >= [v5 numberOfItems])
  {
    v9 = *MEMORY[0x1E69DE788];
    v11 = *MEMORY[0x1E69DE788];
  }

  else
  {
    [(SFCapsuleCollectionViewItem *)self->_item preferredCapsuleSizeForState:a3];
    v9 = v8;
    v11 = v10;
  }

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (CGSize)preferredSizeForSupplementaryWithIdentifier:(id)a3 fittingSize:(CGSize)a4 horizontalFittingPriority:(float)a5 verticalFittingPriority:(float)a6
{
  height = a4.height;
  width = a4.width;
  item = self->_item;
  v11 = a3;
  v12 = [(SFCapsuleCollectionViewItem *)item collectionView];
  v13 = [v12 viewForSupplementaryWithIdentifier:v11];

  *&v14 = a5;
  *&v15 = a6;
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
  v2 = [(SFCapsuleCollectionViewItem *)self->_item capsuleView];
  v3 = [v2 contentView];

  return v3;
}

@end