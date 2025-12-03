@interface UICollectionViewCompositionalLayout(DOCExtensions)
- (uint64_t)doc_resetSwipedRows;
@end

@implementation UICollectionViewCompositionalLayout(DOCExtensions)

- (uint64_t)doc_resetSwipedRows
{
  [self setEditing:1];

  return [self setEditing:0];
}

@end