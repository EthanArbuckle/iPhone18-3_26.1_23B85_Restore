@interface NSDictionary
@end

@implementation NSDictionary

BOOL __71__NSDictionary_CalClassAdditions__CalDictionaryWithEmptyObjectsRemoved__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 integerValue];
LABEL_11:
    v6 = v4 == 0;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 length];
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v6 = 0;
          goto LABEL_12;
        }
      }
    }

    v4 = [v3 count];
    goto LABEL_11;
  }

  v5 = [v3 absoluteString];
  v6 = [v5 length] == 0;

LABEL_12:
  return v6;
}

@end