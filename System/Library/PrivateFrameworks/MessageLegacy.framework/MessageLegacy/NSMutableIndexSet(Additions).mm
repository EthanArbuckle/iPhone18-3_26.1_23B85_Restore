@interface NSMutableIndexSet(Additions)
- (uint64_t)mf_intersectIndexes:()Additions;
@end

@implementation NSMutableIndexSet(Additions)

- (uint64_t)mf_intersectIndexes:()Additions
{
  v12[64] = *MEMORY[0x277D85DE8];
  result = [a1 count];
  if (!result)
  {
LABEL_13:
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v6 = [a1 firstIndex];
  v7 = [a1 lastIndex];
  if ([a3 firstIndex] <= v7 && objc_msgSend(a3, "lastIndex") >= v6)
  {
    v11[0] = v6;
    v11[1] = v7 - v6 + 1;
    result = [a1 getIndexes:v12 maxCount:64 inIndexRange:v11];
    if (result)
    {
      v9 = result;
      while (1)
      {
        if (([a3 containsIndex:v12[--v9]] & 1) == 0)
        {
          [a1 removeIndex:v12[v9]];
        }

        if (!v9)
        {
          result = [a1 getIndexes:v12 maxCount:64 inIndexRange:v11];
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

  return [a1 removeAllIndexes];
}

@end