@interface NUStyleEngineMemoryResource
@end

@implementation NUStyleEngineMemoryResource

BOOL __90___NUStyleEngineMemoryResource_usingSharedMemoryResourceForDevice_withDescriptor_perform___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 device];
  if (v4 == *(a1 + 32))
  {
    v6 = [v3 descriptor];
    v7 = [v6 memSize];
    v5 = v7 >= [*(a1 + 40) memSize];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end