@interface NSArray(SFExtras)
- (id)sf_asCardSections:()SFExtras;
@end

@implementation NSArray(SFExtras)

- (id)sf_asCardSections:()SFExtras
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__NSArray_SFExtras__sf_asCardSections___block_invoke;
  v8[3] = &unk_1E7AC5F00;
  v9 = v4;
  v5 = v4;
  v6 = [a1 parsec_mapAndFilterObjectsUsingBlock:v8];

  return v6;
}

@end