@interface NSData(OneHotValidation)
- (uint64_t)isValidOneHotVectorReturningIndex:()OneHotValidation error:;
@end

@implementation NSData(OneHotValidation)

- (uint64_t)isValidOneHotVectorReturningIndex:()OneHotValidation error:
{
  bytes = [self bytes];
  v8 = [self length];
  v9 = 0;
  if (v8)
  {
    v10 = 0;
    v11 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v12 = *(bytes + v10);
      if (*(bytes + v10))
      {
        if (v12 != 1)
        {
          if (!a4)
          {
            goto LABEL_13;
          }

          [MEMORY[0x277CCACA8] stringWithFormat:@"Vector is invalid: byte[%lu] = %u (must be 0 or 1)", v10, v12];
          goto LABEL_12;
        }

        ++v9;
        v11 = v10;
        if (v9 > 1)
        {
          goto LABEL_10;
        }
      }

      ++v10;
    }

    while (v8 != v10);
    if (v9 != 1)
    {
      goto LABEL_10;
    }

    result = 1;
    if (a3)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_10:
    if (a4)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Vector is not one-hot contains %lu 1 bits", v9, v15];
      v14 = LABEL_12:;
      *a4 = _DPVDAFError(3, v14);
    }

LABEL_13:
    result = 0;
    if (a3)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_15:
      *a3 = v11;
    }
  }

  return result;
}

@end