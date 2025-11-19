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
    [a1 setFont:v7];
  }

  v8 = *MEMORY[0x277D740C0];
  v9 = [v14 objectForKey:*MEMORY[0x277D740C0]];

  if (v9)
  {
    v10 = [v14 objectForKey:v8];
    [a1 setTextColor:v10];
  }

  v11 = *MEMORY[0x277D74068];
  v12 = [v14 objectForKey:*MEMORY[0x277D74068]];

  if (v12)
  {
    v13 = [v14 objectForKey:v11];
    [a1 setBackgroundColor:v13];
  }
}

- (BOOL)MPU_automaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts
{
  v1 = [a1 MPU_contentSizeUpdater];
  v2 = v1 != 0;

  return v2;
}

- (void)MPU_setAutomaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts:()MPUAdditions
{
  if ([a1 MPU_automaticallyUpdatesTextStyleFontsToPreferredTextStyleFonts] != a3)
  {
    if (a3)
    {
      value = objc_alloc_init(MPUTextContainerContentSizeUpdater);
      [(MPUTextContainerContentSizeUpdater *)value setTextContainer:a1];
    }

    else
    {
      value = 0;
    }

    objc_setAssociatedObject(a1, &_MPULabelContentSizeUpdaterKey, value, 1);
  }
}

@end