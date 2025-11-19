@interface NSIndexSet(IC)
- (id)ic_rangeArray;
@end

@implementation NSIndexSet(IC)

- (id)ic_rangeArray
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__NSIndexSet_IC__ic_rangeArray__block_invoke;
  v6[3] = &unk_1E8485670;
  v7 = v2;
  v3 = v2;
  [a1 enumerateRangesUsingBlock:v6];
  v4 = [v3 copy];

  return v4;
}

@end