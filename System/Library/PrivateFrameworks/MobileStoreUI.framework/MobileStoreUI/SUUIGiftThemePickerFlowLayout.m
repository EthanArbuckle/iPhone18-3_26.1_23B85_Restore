@interface SUUIGiftThemePickerFlowLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3;
@end

@implementation SUUIGiftThemePickerFlowLayout

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3
{
  currentPage = self->_currentPage;
  v4 = [(SUUIGiftThemePickerFlowLayout *)self collectionView];
  [v4 frame];
  v6 = v5 * currentPage;

  v7 = 0.0;
  v8 = v6;
  result.y = v7;
  result.x = v8;
  return result;
}

@end