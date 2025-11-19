@interface MAensureExtension
@end

@implementation MAensureExtension

void ___MAensureExtension_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }
}

@end