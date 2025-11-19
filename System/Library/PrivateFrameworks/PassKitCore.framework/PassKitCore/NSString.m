@interface NSString
@end

@implementation NSString

id __59__NSString_PKEnhancedMerchantAdditions__jsonStringSetValue__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 stringValue];
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

@end