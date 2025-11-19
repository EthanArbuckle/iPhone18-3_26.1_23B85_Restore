@interface MSVMethodComponents
@end

@implementation MSVMethodComponents

void ___MSVMethodComponents_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v4 = [*(a1 + 32) lastObject];
    v5 = [v4 stringByAppendingString:*(a1 + 40)];

    [*(a1 + 32) removeLastObject];
    [*(a1 + 32) addObject:v5];

    v3 = v7;
  }

  if ([v3 length])
  {
    [*(a1 + 32) addObject:v7];
    v6 = 1;
LABEL_5:
    *(*(*(a1 + 48) + 8) + 24) = v6;
    goto LABEL_7;
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
    v6 = 0;
    goto LABEL_5;
  }

LABEL_7:
}

@end