@interface NSNumber(LNAdditions)
- (uint64_t)ln_numberType;
@end

@implementation NSNumber(LNAdditions)

- (uint64_t)ln_numberType
{
  v1 = [a1 objCType];
  result = 0;
  v3 = *v1;
  if (v3 > 0x65)
  {
    if (*v1 > 0x70u)
    {
      if (v3 != 113 && v3 != 115)
      {
        return result;
      }
    }

    else
    {
      if (v3 == 102)
      {
        if (v1[1])
        {
          return 0;
        }

        else
        {
          return 3;
        }
      }

      if (v3 != 105)
      {
        return result;
      }
    }

    return !v1[1];
  }

  if (*v1 <= 0x52u)
  {
    if (v3 != 73 && v3 != 81)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (v3 == 83)
  {
LABEL_13:
    if (!v1[1])
    {
      return 2;
    }

    return 0;
  }

  if (v3 == 100)
  {
    return 4 * (v1[1] == 0);
  }

  return result;
}

@end