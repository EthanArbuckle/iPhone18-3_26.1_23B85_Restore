@interface UIFont(ITKUtilities)
+ (id)itk_preferredFontWithTextStyle:()ITKUtilities weight:;
- (id)itk_fontWithWeight:()ITKUtilities;
@end

@implementation UIFont(ITKUtilities)

+ (id)itk_preferredFontWithTextStyle:()ITKUtilities weight:
{
  v3 = [a1 preferredFontForTextStyle:?];
  v4 = [v3 itk_fontWithWeight:a2];

  return v4;
}

- (id)itk_fontWithWeight:()ITKUtilities
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277D74380];
  v10 = *MEMORY[0x277D74430];
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v11 = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v13[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v5 = [a1 fontDescriptor];
  v6 = [v5 fontDescriptorByAddingAttributes:v4];

  v7 = MEMORY[0x277D74300];
  [a1 pointSize];
  v8 = [v7 fontWithDescriptor:v6 size:?];

  return v8;
}

@end