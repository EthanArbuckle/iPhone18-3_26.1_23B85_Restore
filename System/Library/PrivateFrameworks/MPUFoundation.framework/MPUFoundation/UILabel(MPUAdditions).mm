@interface UILabel(MPUAdditions)
- (BOOL)MPU_automaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts;
- (void)MPU_configureWithTextAttributes:()MPUAdditions;
- (void)MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:()MPUAdditions;
@end

@implementation UILabel(MPUAdditions)

- (void)MPU_configureWithTextAttributes:()MPUAdditions
{
  v4 = a3;
  v5 = *MEMORY[0x277D740A8];
  v14 = v4;
  v6 = [v4 objectForKey:*MEMORY[0x277D740A8]];

  if (v6)
  {
    v7 = [v14 objectForKey:v5];
    [self setFont:v7];
  }

  v8 = *MEMORY[0x277D740C0];
  v9 = [v14 objectForKey:*MEMORY[0x277D740C0]];

  if (v9)
  {
    v10 = [v14 objectForKey:v8];
    [self setTextColor:v10];
  }

  v11 = *MEMORY[0x277D74068];
  v12 = [v14 objectForKey:*MEMORY[0x277D74068]];

  if (v12)
  {
    v13 = [v14 objectForKey:v11];
    [self setBackgroundColor:v13];
  }
}

- (BOOL)MPU_automaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts
{
  mPU_contentSizeUpdater = [self MPU_contentSizeUpdater];
  v2 = mPU_contentSizeUpdater != 0;

  return v2;
}

- (void)MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:()MPUAdditions
{
  if ([self MPU_automaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts] != a3)
  {
    if (a3)
    {
      value = objc_alloc_init(MPUTextContainerContentSizeUpdater);
      [(MPUTextContainerContentSizeUpdater *)value setTextContainer:self];
    }

    else
    {
      value = 0;
    }

    objc_setAssociatedObject(self, &_MPULabelContentSizeUpdaterKey, value, 1);
  }
}

@end