@interface UIFont(MCUI)
+ (id)MCUIBoldTitleFontWithSize:()MCUI;
@end

@implementation UIFont(MCUI)

+ (id)MCUIBoldTitleFontWithSize:()MCUI
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A00]];
  v3 = MEMORY[0x277D74300];
  v4 = [v2 fontDescriptorWithSymbolicTraits:2];
  v5 = [v3 fontWithDescriptor:v4 size:self];

  return v5;
}

@end