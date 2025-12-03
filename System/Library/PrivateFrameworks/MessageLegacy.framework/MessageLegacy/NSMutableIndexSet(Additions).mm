@interface NSMutableIndexSet(Additions)
- (uint64_t)mf_intersectIndexes:()Additions;
@end

@implementation NSMutableIndexSet(Additions)

- (uint64_t)mf_intersectIndexes:()Additions
{
  v12[64] = *MEMORY[0x277D85DE8];
  result = [self count];
  if (!result)
  {
LABEL_13:
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  firstIndex = [self firstIndex];
  lastIndex = [self lastIndex];
  if ([a3 firstIndex] <= lastIndex && objc_msgSend(a3, "lastIndex") >= firstIndex)
  {
    v11[0] = firstIndex;
    v11[1] = lastIndex - firstIndex + 1;
    result = [self getIndexes:v12 maxCount:64 inIndexRange:v11];
    if (result)
    {
      v9 = result;
      while (1)
      {
        if (([a3 containsIndex:v12[--v9]] & 1) == 0)
        {
          [self removeIndex:v12[v9]];
        }

        if (!v9)
        {
          result = [self getIndexes:v12 maxCount:64 inIndexRange:v11];
          v9 = result;
          if (!result)
          {
            break;
          }
        }
      }
    }

    goto LABEL_13;
  }

  v8 = *MEMORY[0x277D85DE8];

  return [self removeAllIndexes];
}

@end