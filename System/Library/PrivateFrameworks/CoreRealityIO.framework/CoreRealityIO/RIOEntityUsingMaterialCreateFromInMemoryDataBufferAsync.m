@interface RIOEntityUsingMaterialCreateFromInMemoryDataBufferAsync
@end

@implementation RIOEntityUsingMaterialCreateFromInMemoryDataBufferAsync

const void **__RIOEntityUsingMaterialCreateFromInMemoryDataBufferAsync_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 40) + 32);
  v4 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  (*(v1 + 16))(v1, 0, v2);
  return realityio::WrappedCFRef<__CFError *>::~WrappedCFRef(&v4);
}

@end