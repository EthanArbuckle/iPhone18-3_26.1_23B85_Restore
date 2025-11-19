@interface GEOLPRLPRConvertRule
@end

@implementation GEOLPRLPRConvertRule

void __64__GEOLPRLPRConvertRule_MNExtras__rules_forPlateTypes_atIndexes___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([v10 plateTypeIndexesCount])
  {
    v3 = [v10 plateTypeIndexesCount];
    v4 = [v10 plateTypeIndexes];
    if (!v3)
    {
      goto LABEL_9;
    }

    v5 = v4;
    while (1)
    {
      v7 = *v5++;
      v6 = v7;
      if ([*(a1 + 40) containsIndex:v7])
      {
        if ([*(a1 + 48) count] > v6)
        {
          break;
        }
      }

      if (!--v3)
      {
        goto LABEL_9;
      }
    }
  }

  v8 = *(a1 + 32);
  v9 = [v10 copy];
  [v8 addObject:v9];

LABEL_9:
}

@end