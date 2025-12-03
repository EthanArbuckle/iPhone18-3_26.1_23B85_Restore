@interface NSArray(DACPLogShared)
- (id)DACPLogSubarrayFromIndexToEndOfArray:()DACPLogShared;
- (uint64_t)DACPLogArrayBeginsWithArray:()DACPLogShared;
@end

@implementation NSArray(DACPLogShared)

- (id)DACPLogSubarrayFromIndexToEndOfArray:()DACPLogShared
{
  if ([self count] <= a3)
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v5 = [self subarrayWithRange:{a3, objc_msgSend(self, "count") - a3}];
  }

  return v5;
}

- (uint64_t)DACPLogArrayBeginsWithArray:()DACPLogShared
{
  v4 = a3;
  v5 = [v4 count];
  if (v5 <= [self count])
  {
    if ([v4 count])
    {
      v7 = 0;
      do
      {
        v8 = [v4 objectAtIndexedSubscript:v7];
        v9 = [self objectAtIndexedSubscript:v7];
        v6 = [v8 isEqual:v9];

        if ((v6 & 1) == 0)
        {
          break;
        }

        ++v7;
      }

      while (v7 < [v4 count]);
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end