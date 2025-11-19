@interface UIFont(UIFont_JFXAdditions)
+ (id)jfx_fontWithName:()UIFont_JFXAdditions;
@end

@implementation UIFont(UIFont_JFXAdditions)

+ (id)jfx_fontWithName:()UIFont_JFXAdditions
{
  v3 = MEMORY[0x277D74300];
  v4 = a3;
  [v3 systemFontSize];
  v6 = v5;
  if ([v4 hasPrefix:@"."])
  {
    [MEMORY[0x277D74300] pv_fontWithName:v4 size:0 transform:v6];
  }

  else
  {
    [MEMORY[0x277D74300] fontWithName:v4 size:v6];
  }
  v7 = ;

  return v7;
}

@end