@interface LSApplicationRecord
@end

@implementation LSApplicationRecord

uint64_t __62__LSApplicationRecord_IntentsFoundation__if_userActivityTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

@end