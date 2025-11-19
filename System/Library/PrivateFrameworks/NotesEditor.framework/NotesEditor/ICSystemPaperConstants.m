@interface ICSystemPaperConstants
+ (double)noteLeadingMargin;
@end

@implementation ICSystemPaperConstants

+ (double)noteLeadingMargin
{
  v2 = [MEMORY[0x277D75C80] currentTraitCollection];
  v3 = [v2 preferredContentSizeCategory];

  if (v3 >= *MEMORY[0x277D767F0])
  {
    v5 = 0x4048000000000000;
LABEL_10:
    v4 = *&v5;
    goto LABEL_11;
  }

  if (v3 >= *MEMORY[0x277D767F8])
  {
    v5 = 0x4044000000000000;
    goto LABEL_10;
  }

  if (v3 >= *MEMORY[0x277D76808])
  {
    v5 = 0x4040000000000000;
    goto LABEL_10;
  }

  if (v3 >= *MEMORY[0x277D76820])
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