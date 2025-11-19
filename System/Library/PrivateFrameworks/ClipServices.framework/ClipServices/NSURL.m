@interface NSURL
@end

@implementation NSURL

uint64_t __76__NSURL_ClipServicesExtras__cps_resolvedURLWithStoreIconURLString_iconSize___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(*(*(a1 + 32) + 8) + 40) stringByReplacingOccurrencesOfString:a2 withString:a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

void __45__NSURL_ClipServicesExtras__cps_sanitizedURL__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 lowercaseString];
  v8 = [v7 isEqualToString:@"demo"];

  if (v8)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

void __47__NSURL_ClipServicesExtras__cps_embeddedItemID__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 lowercaseString];
  v8 = [v7 isEqualToString:@"demo"];

  if (v8)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }
}

@end