@interface NSIndexPath(CKUtilities)
- (id)__ck_indexPathShiftedForInsertedIndexes:()CKUtilities deletedIndexes:;
@end

@implementation NSIndexPath(CKUtilities)

- (id)__ck_indexPathShiftedForInsertedIndexes:()CKUtilities deletedIndexes:
{
  v16 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&selfCopy count:1];
  v10 = [v9 __ck_indexSetForIndexPathItemsInSection:{objc_msgSend(self, "section", selfCopy, v16)}];

  v11 = [v10 __ck_indexSetShiftedForInsertedIndexes:v8 removedIndexes:v7];

  v12 = [v11 __ck_indexPathItemsInSection:0];
  lastObject = [v12 lastObject];

  return lastObject;
}

@end