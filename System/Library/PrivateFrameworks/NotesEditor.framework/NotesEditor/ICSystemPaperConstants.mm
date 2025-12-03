@interface ICSystemPaperConstants
+ (double)noteLeadingMargin;
@end

@implementation ICSystemPaperConstants

+ (double)noteLeadingMargin
{
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  preferredContentSizeCategory = [currentTraitCollection preferredContentSizeCategory];

  if (preferredContentSizeCategory >= *MEMORY[0x277D767F0])
  {
    v5 = 0x4048000000000000;
LABEL_10:
    v4 = *&v5;
    goto LABEL_11;
  }

  if (preferredContentSizeCategory >= *MEMORY[0x277D767F8])
  {
    v5 = 0x4044000000000000;
    goto LABEL_10;
  }

  if (preferredContentSizeCategory >= *MEMORY[0x277D76808])
  {
    v5 = 0x4040000000000000;
    goto LABEL_10;
  }

  if (preferredContentSizeCategory >= *MEMORY[0x277D76820])
  {
    v4 = 24.0;
  }

  else
  {
    v4 = 16.0;
  }

LABEL_11:

  return v4;
}

@end