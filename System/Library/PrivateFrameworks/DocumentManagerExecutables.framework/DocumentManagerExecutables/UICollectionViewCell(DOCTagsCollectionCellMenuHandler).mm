@interface UICollectionViewCell(DOCTagsCollectionCellMenuHandler)
- (uint64_t)doc_tagsCollectionCellMenuTarget;
@end

@implementation UICollectionViewCell(DOCTagsCollectionCellMenuHandler)

- (uint64_t)doc_tagsCollectionCellMenuTarget
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v4 handleFailureInMethod:a2 object:a1 file:@"DOCTagsCollectionCellMenuTarget.m" lineNumber:16 description:{@"The method %@ in %@ must be overridden.", v5, v7}];

  return 0;
}

@end