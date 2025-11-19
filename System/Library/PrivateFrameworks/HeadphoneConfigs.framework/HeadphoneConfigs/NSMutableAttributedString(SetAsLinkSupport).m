@interface NSMutableAttributedString(SetAsLinkSupport)
- (BOOL)setAsLink:()SetAsLinkSupport linkURL:;
@end

@implementation NSMutableAttributedString(SetAsLinkSupport)

- (BOOL)setAsLink:()SetAsLinkSupport linkURL:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 mutableString];
  v9 = [v8 rangeOfString:v7];
  v11 = v10;

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [a1 addAttribute:*MEMORY[0x277D740E8] value:v6 range:{v9, v11}];
  }

  return v9 != 0x7FFFFFFFFFFFFFFFLL;
}

@end