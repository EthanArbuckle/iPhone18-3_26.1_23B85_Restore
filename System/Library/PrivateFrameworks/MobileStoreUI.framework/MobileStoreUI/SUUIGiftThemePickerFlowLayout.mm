@interface SUUIGiftThemePickerFlowLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset;
@end

@implementation SUUIGiftThemePickerFlowLayout

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  currentPage = self->_currentPage;
  collectionView = [(SUUIGiftThemePickerFlowLayout *)self collectionView];
  [collectionView frame];
  v6 = v5 * currentPage;

  v7 = 0.0;
  v8 = v6;
  result.y = v7;
  result.x = v8;
  return result;
}

@end