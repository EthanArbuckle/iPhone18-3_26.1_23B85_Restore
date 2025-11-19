@interface NSMutableIndexSet(CKUtilities)
- (void)__ck_intersectIndexes:()CKUtilities;
@end

@implementation NSMutableIndexSet(CKUtilities)

- (void)__ck_intersectIndexes:()CKUtilities
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD50] indexSet];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __56__NSMutableIndexSet_CKUtilities____ck_intersectIndexes___block_invoke;
  v11 = &unk_1E72EF010;
  v12 = v4;
  v13 = v5;
  v6 = v5;
  v7 = v4;
  [a1 enumerateIndexesUsingBlock:&v8];
  [a1 removeIndexes:{v6, v8, v9, v10, v11}];
}

@end