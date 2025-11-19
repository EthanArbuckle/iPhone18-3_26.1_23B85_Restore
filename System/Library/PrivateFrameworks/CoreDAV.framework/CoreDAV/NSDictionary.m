@interface NSDictionary
@end

@implementation NSDictionary

uint64_t __66__NSDictionary_CoreDAVExtensions__CDVObjectForKeyCaseInsensitive___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v6 caseInsensitiveCompare:*(a1 + 32)])
  {
    v7 = 1;
    *a4 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end