@interface NSArray(BLTSizeOf)
- (uint64_t)blt_sizeof;
@end

@implementation NSArray(BLTSizeOf)

- (uint64_t)blt_sizeof
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = malloc_size(self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __32__NSArray_BLTSizeOf__blt_sizeof__block_invoke;
  v4[3] = &unk_278D33128;
  v4[4] = &v5;
  [self enumerateObjectsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

@end