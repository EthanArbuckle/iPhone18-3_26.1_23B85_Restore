@interface CSArrayEnumerateAllValues
@end

@implementation CSArrayEnumerateAllValues

void ___CSArrayEnumerateAllValues_block_invoke(uint64_t a1, uint64_t a2, unsigned int *a3, _BYTE *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = *a3;
  (*(*(a1 + 32) + 16))();
  *a4 = 0;
  objc_autoreleasePoolPop(v7);
}

@end