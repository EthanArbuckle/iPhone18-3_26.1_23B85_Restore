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
  text = [self text];
  [text setMaxLines:a3];
}

- (uint64_t)maxLines
{
  text = [self text];
  maxLines = [text maxLines];

  return maxLines;
}

@end