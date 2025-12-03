@interface NSMutableArray(CDMJSONSerialization)
- (unint64_t)_cdm_safeJSONTraverse;
@end

@implementation NSMutableArray(CDMJSONSerialization)

- (unint64_t)_cdm_safeJSONTraverse
{
  result = [self count];
  if (result)
  {
    v3 = 0;
    while (1)
    {
      v4 = [self objectAtIndexedSubscript:v3];
      v5 = objc_opt_respondsToSelector();

      v6 = [self objectAtIndexedSubscript:v3];
      v7 = v6;
      if (v5)
      {
        break;
      }

      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v7 = [self objectAtIndexedSubscript:v3];
        [v7 _cdm_safeJSONTraverse];
        goto LABEL_7;
      }

LABEL_8:
      ++v3;
      result = [self count];
      if (result <= v3)
      {
        return result;
      }
    }

    _cdm_safeJSONString = [v6 _cdm_safeJSONString];
    [self setObject:_cdm_safeJSONString atIndexedSubscript:v3];

LABEL_7:
    goto LABEL_8;
  }

  return result;
}

@end