@interface NSMutableAttributedString(SetAsLinkSupport)
- (BOOL)setAsLink:()SetAsLinkSupport linkURL:;
@end

@implementation NSMutableAttributedString(SetAsLinkSupport)

- (BOOL)setAsLink:()SetAsLinkSupport linkURL:
{
  v6 = a4;
  v7 = a3;
  mutableString = [self mutableString];
  v9 = [mutableString rangeOfString:v7];
  v11 = v10;

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [self addAttribute:*MEMORY[0x277D740E8] value:v6 range:{v9, v11}];
  }

  return v9 != 0x7FFFFFFFFFFFFFFFLL;
}

@end