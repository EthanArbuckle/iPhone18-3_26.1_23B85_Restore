@interface NSArray(UIReferenceLibraryViewControllerAdditions_Private)
- (id)_filteredArrayOfObjectsPassingTest:()UIReferenceLibraryViewControllerAdditions_Private;
@end

@implementation NSArray(UIReferenceLibraryViewControllerAdditions_Private)

- (id)_filteredArrayOfObjectsPassingTest:()UIReferenceLibraryViewControllerAdditions_Private
{
  v2 = [self indexesOfObjectsPassingTest:?];
  v3 = [self objectsAtIndexes:v2];

  return v3;
}

@end