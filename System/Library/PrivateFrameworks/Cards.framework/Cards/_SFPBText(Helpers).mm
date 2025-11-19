@interface _SFPBText(Helpers)
+ (id)textWithString:()Helpers;
@end

@implementation _SFPBText(Helpers)

+ (id)textWithString:()Helpers
{
  v3 = MEMORY[0x277D4C7D8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setText:v4];

  return v5;
}

@end