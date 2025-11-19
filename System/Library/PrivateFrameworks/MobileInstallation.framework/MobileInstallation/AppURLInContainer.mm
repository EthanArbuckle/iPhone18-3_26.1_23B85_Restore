@interface AppURLInContainer
@end

@implementation AppURLInContainer

uint64_t ___AppURLInContainer_block_invoke(uint64_t a1, void *a2, int a3)
{
  v6 = a2;
  v7 = v6;
  if (a3 == 4 && ([v6 pathExtension], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", @"app"), v8, v9))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

@end