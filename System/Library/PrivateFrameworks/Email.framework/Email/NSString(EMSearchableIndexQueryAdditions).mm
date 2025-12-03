@interface NSString(EMSearchableIndexQueryAdditions)
- (id)em_stringForQuotingWithCharacter:()EMSearchableIndexQueryAdditions;
@end

@implementation NSString(EMSearchableIndexQueryAdditions)

- (id)em_stringForQuotingWithCharacter:()EMSearchableIndexQueryAdditions
{
  v4 = [self mutableCopy];
  [v4 replaceOccurrencesOfString:@"\ withString:@"\\\ options:0 range:{0, objc_msgSend(v4, "length")}];
  [v4 replaceOccurrencesOfString:@"*" withString:@"\\*" options:0 range:{0, objc_msgSend(v4, "length")}];
  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    v8 = &em_stringForQuotingWithCharacter__map + 24 * v5;
    if (*v8 == a3)
    {
      break;
    }

    v6 = 0;
    v5 = 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  [v4 replaceOccurrencesOfString:*(v8 + 1) withString:*(v8 + 2) options:0 range:{0, objc_msgSend(v4, "length")}];
LABEL_6:

  return v4;
}

@end