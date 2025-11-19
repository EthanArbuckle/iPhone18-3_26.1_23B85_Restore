@interface NUAbstractStorage
@end

@implementation NUAbstractStorage

void __45___NUAbstractStorage_fillBufferWithPattern8___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableBytes];
  v4 = *(a1 + 40);

  memset_pattern8(v3, (a1 + 32), v4);
}

void __45___NUAbstractStorage_fillBufferWithPattern4___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableBytes];
  v4 = *(a1 + 32);

  memset_pattern4(v3, (a1 + 40), v4);
}

@end