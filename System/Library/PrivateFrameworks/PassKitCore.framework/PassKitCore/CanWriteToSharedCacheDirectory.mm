@interface CanWriteToSharedCacheDirectory
@end

@implementation CanWriteToSharedCacheDirectory

void ___CanWriteToSharedCacheDirectory_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = [a4 path];
  v4 = v5;
  byte_1ED6D11E0 = access([v5 UTF8String], 2) == 0;
}

@end