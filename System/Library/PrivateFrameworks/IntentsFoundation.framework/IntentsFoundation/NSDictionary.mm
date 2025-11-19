@interface NSDictionary
@end

@implementation NSDictionary

BOOL __66__NSDictionary_IntentsFoundation__if_dictionaryWithNonEmptyValues__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && ![v3 length] || (objc_opt_class(), (objc_opt_isKindOfClass()) && !objc_msgSend(v3, "count"))
  {
    v4 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v3 allKeys];
      v4 = [v6 count] != 0;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

@end