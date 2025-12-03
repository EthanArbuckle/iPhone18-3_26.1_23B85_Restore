@interface UICollectionViewCell(DOCTagsCollectionCellMenuHandler)
- (uint64_t)doc_tagsCollectionCellMenuTarget;
@end

@implementation UICollectionViewCell(DOCTagsCollectionCellMenuHandler)

- (uint64_t)doc_tagsCollectionCellMenuTarget
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"DOCTagsCollectionCellMenuTarget.m" lineNumber:16 description:{@"The method %@ in %@ must be overridden.", v5, v7}];

  return 0;
}

@end