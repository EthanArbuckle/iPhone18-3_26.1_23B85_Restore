@interface FeedNavImageStyler
- (UIFont)tagTitleFont;
- (double)cornerRadius;
- (id)tagColorFor:(id)for;
@end

@implementation FeedNavImageStyler

- (UIFont)tagTitleFont
{
  v2 = [objc_opt_self() systemFontOfSize:14.0 weight:*MEMORY[0x277D74420]];

  return v2;
}

- (id)tagColorFor:(id)for
{
  v3 = [objc_opt_self() nu:for safeColorForIdentifier:?];

  return v3;
}

- (double)cornerRadius
{
  v2 = sub_219BED0C4();
  result = 3.0;
  if (v2)
  {
    return 7.0;
  }

  return result;
}

@end