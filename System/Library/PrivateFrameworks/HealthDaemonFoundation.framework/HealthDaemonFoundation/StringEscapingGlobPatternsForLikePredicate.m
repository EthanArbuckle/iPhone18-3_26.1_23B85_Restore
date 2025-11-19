@interface StringEscapingGlobPatternsForLikePredicate
@end

@implementation StringEscapingGlobPatternsForLikePredicate

void ___StringEscapingGlobPatternsForLikePredicate_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (*(*(*(a1 + 40) + 8) + 24) != 1)
  {
    if ([(__CFString *)v3 isEqualToString:@"\\""])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_15:
      v4 = v8;
      goto LABEL_16;
    }

    if ([(__CFString *)v8 isEqualToString:@"*"])
    {
      goto LABEL_9;
    }

    if (![(__CFString *)v8 isEqualToString:@"?"])
    {
      if ([(__CFString *)v8 isEqualToString:@"~"])
      {
        [*(a1 + 32) appendString:@"~"];
        v5 = *(a1 + 32);
        v6 = @"~";
        goto LABEL_14;
      }

      if ([(__CFString *)v8 isEqualToString:@"%"])
      {
        [*(a1 + 32) appendString:@"~"];
LABEL_9:
        v5 = *(a1 + 32);
        v6 = @"%";
LABEL_14:
        [v5 appendString:v6];
        goto LABEL_15;
      }

      v7 = [(__CFString *)v8 isEqualToString:@"_"];
      v5 = *(a1 + 32);
      if (!v7)
      {
        v6 = v8;
        goto LABEL_14;
      }

      [v5 appendString:@"~"];
    }

    v5 = *(a1 + 32);
    v6 = @"_";
    goto LABEL_14;
  }

  if (([(__CFString *)v3 isEqualToString:@"%"]& 1) != 0 || [(__CFString *)v8 isEqualToString:@"_"])
  {
    [*(a1 + 32) appendString:@"~"];
  }

  [*(a1 + 32) appendString:v8];
  v4 = v8;
  *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_16:
}

@end