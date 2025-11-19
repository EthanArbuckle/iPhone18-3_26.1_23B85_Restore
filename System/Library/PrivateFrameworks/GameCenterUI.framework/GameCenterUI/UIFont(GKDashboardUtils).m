@interface UIFont(GKDashboardUtils)
+ (id)_gkPreferredFontForTextStyle:()GKDashboardUtils design:;
+ (id)_gkPreferredFontForTextStyle:()GKDashboardUtils symbolicTraits:;
@end

@implementation UIFont(GKDashboardUtils)

+ (id)_gkPreferredFontForTextStyle:()GKDashboardUtils symbolicTraits:
{
  v5 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:?];
  v6 = [v5 fontDescriptorWithSymbolicTraits:a4];

  v7 = [MEMORY[0x277D74300] fontWithDescriptor:v6 size:0.0];

  return v7;
}

+ (id)_gkPreferredFontForTextStyle:()GKDashboardUtils design:
{
  v5 = MEMORY[0x277D74310];
  v6 = a4;
  v7 = [v5 preferredFontDescriptorWithTextStyle:a3];
  v8 = [v7 fontDescriptorWithDesign:v6];

  v9 = [MEMORY[0x277D74300] fontWithDescriptor:v8 size:0.0];

  return v9;
}

@end