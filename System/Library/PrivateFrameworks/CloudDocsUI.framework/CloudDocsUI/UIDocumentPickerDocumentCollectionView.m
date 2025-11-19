@interface UIDocumentPickerDocumentCollectionView
@end

@implementation UIDocumentPickerDocumentCollectionView

id __52___UIDocumentPickerDocumentCollectionView_setFrame___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 contentSize];
  [v2 setAdjustedContentSize:? withFrameSize:?];
  v4.receiver = *(a1 + 32);
  v4.super_class = _UIDocumentPickerDocumentCollectionView;
  return objc_msgSendSuper2(&v4, sel_setFrame_, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
}

id __53___UIDocumentPickerDocumentCollectionView_setBounds___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [v2 contentSize];
  [v2 setAdjustedContentSize:? withFrameSize:?];
  v4.receiver = *(a1 + 32);
  v4.super_class = _UIDocumentPickerDocumentCollectionView;
  return objc_msgSendSuper2(&v4, sel_setBounds_, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
}

@end