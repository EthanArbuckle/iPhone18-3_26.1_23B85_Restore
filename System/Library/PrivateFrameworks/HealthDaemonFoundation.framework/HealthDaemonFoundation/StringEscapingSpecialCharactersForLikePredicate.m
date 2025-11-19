@interface StringEscapingSpecialCharactersForLikePredicate
@end

@implementation StringEscapingSpecialCharactersForLikePredicate

void ___StringEscapingSpecialCharactersForLikePredicate_block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([(__CFString *)v5 isEqualToString:@"~"])
  {
    [*(a1 + 32) appendString:@"~"];
    v3 = *(a1 + 32);
    v4 = @"~";
  }

  else
  {
    if (([(__CFString *)v5 isEqualToString:@"%"]& 1) != 0 || [(__CFString *)v5 isEqualToString:@"_"])
    {
      [*(a1 + 32) appendString:@"~"];
    }

    v3 = *(a1 + 32);
    v4 = v5;
  }

  [v3 appendString:v4];
}

@end