@interface UILabel(HUAdditions)
+ (id)labelWithText:()HUAdditions font:;
@end

@implementation UILabel(HUAdditions)

+ (id)labelWithText:()HUAdditions font:
{
  v5 = MEMORY[0x277D756B8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = [v8 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setFont:v6];

  [v9 setText:v7];
  traitCollection = [v9 traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v12 = 0;
  }

  else
  {
    v12 = 2;
  }

  [v9 setNumberOfLines:v12];

  return v9;
}

@end