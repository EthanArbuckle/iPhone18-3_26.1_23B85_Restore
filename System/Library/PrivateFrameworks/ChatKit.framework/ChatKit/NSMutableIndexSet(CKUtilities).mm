@interface NSMutableIndexSet(CKUtilities)
- (void)__ck_intersectIndexes:()CKUtilities;
@end

@implementation NSMutableIndexSet(CKUtilities)

- (void)__ck_intersectIndexes:()CKUtilities
{
  v4 = a3;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __56__NSMutableIndexSet_CKUtilities____ck_intersectIndexes___block_invoke;
  v11 = &unk_1E72EF010;
  v12 = v4;
  v13 = indexSet;
  v6 = indexSet;
  v7 = v4;
  [self enumerateIndexesUsingBlock:&v8];
  [self removeIndexes:{v6, v8, v9, v10, v11}];
}

@end