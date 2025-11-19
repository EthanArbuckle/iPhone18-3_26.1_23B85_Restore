@interface _SFPBRichText(Helpers)
+ (id)textWithString:()Helpers;
- (uint64_t)maxLines;
- (void)setMaxLines:()Helpers;
@end

@implementation _SFPBRichText(Helpers)

+ (id)textWithString:()Helpers
{
  v3 = MEMORY[0x277D4C7A0];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [MEMORY[0x277D4C7D8] textWithString:v4];

  [v5 setText:v6];

  return v5;
}

- (void)setMaxLines:()Helpers
{
  v4 = [a1 text];
  [v4 setMaxLines:a3];
}

- (uint64_t)maxLines
{
  v1 = [a1 text];
  v2 = [v1 maxLines];

  return v2;
}

@end