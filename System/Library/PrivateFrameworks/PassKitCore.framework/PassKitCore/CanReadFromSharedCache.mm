@interface CanReadFromSharedCache
@end

@implementation CanReadFromSharedCache

void ___CanReadFromSharedCache_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 path];
  v2 = v3;
  byte_1ED6D11DF = access([v3 UTF8String], 4) == 0;
}

@end