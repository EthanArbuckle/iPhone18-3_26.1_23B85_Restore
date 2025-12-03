@interface _SFPBPunchout(Helpers)
+ (id)punchoutWithURL:()Helpers;
@end

@implementation _SFPBPunchout(Helpers)

+ (id)punchoutWithURL:()Helpers
{
  v3 = MEMORY[0x277D4C790];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = objc_alloc_init(MEMORY[0x277D4C7E8]);
  absoluteString = [v4 absoluteString];

  [v6 setAddress:absoluteString];
  [v5 addUrls:v6];

  return v5;
}

@end