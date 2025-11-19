@interface NSMutableArray(CDMJSONSerialization)
- (unint64_t)_cdm_safeJSONTraverse;
@end

@implementation NSMutableArray(CDMJSONSerialization)

- (unint64_t)_cdm_safeJSONTraverse
{
  result = [a1 count];
  if (result)
  {
    v3 = 0;
    while (1)
    {
      v4 = [a1 objectAtIndexedSubscript:v3];
      v5 = objc_opt_respondsToSelector();

      v6 = [a1 objectAtIndexedSubscript:v3];
      v7 = v6;
      if (v5)
      {
        break;
      }

      v9 = objc_opt_respondsToSelector();

      if (v9)
      {
        v7 = [a1 objectAtIndexedSubscript:v3];
        [v7 _cdm_safeJSONTraverse];
        goto LABEL_7;
      }

LABEL_8:
      ++v3;
      result = [a1 count];
      if (result <= v3)
      {
        return result;
      }
    }

    v8 = [v6 _cdm_safeJSONString];
    [a1 setObject:v8 atIndexedSubscript:v3];

LABEL_7:
    goto LABEL_8;
  }

  return result;
}

@end