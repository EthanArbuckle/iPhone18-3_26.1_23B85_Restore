@interface UIColor(MailUI)
+ (id)_mui_mailUIBundleColorNamed:()MailUI;
+ (id)mailCellSelectionStateColorForInterfaceLevel:()MailUI;
+ (id)mailConversationViewCollapsedCellHighlightedBackgroundColor;
+ (id)mailConversationViewCollapsedCellLabelColor;
+ (id)mailDockViewShadowGradientColors;
+ (id)mailFocusBannerTitleColor;
+ (id)mailMailboxPickerBackgroundColorForTraitCollection:()MailUI;
+ (id)mf_colorFromColor:()MailUI toColor:progress:;
+ (id)mf_colorFromFlagColor:()MailUI;
+ (id)mf_mailThreadedConversationViewBackgroundForHorizontalSizeClass:()MailUI;
- (BOOL)mf_isTranslucent;
@end

@implementation UIColor(MailUI)

+ (id)_mui_mailUIBundleColorNamed:()MailUI
{
  v3 = MEMORY[0x277D75348];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  mui_MailUIBundle = [v4 mui_MailUIBundle];
  v7 = [v3 colorNamed:v5 inBundle:mui_MailUIBundle compatibleWithTraitCollection:0];

  return v7;
}

+ (id)mf_mailThreadedConversationViewBackgroundForHorizontalSizeClass:()MailUI
{
  if (a3 == 2)
  {
    [MEMORY[0x277D75348] _mui_mailUIBundleColorNamed:@"mailThreadedConversationViewBackgroundColor"];
  }

  else
  {
    [MEMORY[0x277D75348] mailThreadedConversationViewBackgroundColor];
  }
  v3 = ;

  return v3;
}

+ (id)mailConversationViewCollapsedCellHighlightedBackgroundColor
{
  mailConversationViewExpandedCellBackgroundColor = [MEMORY[0x277D75348] mailConversationViewExpandedCellBackgroundColor];
  v1 = [mailConversationViewExpandedCellBackgroundColor colorWithAlphaComponent:0.75];

  return v1;
}

+ (id)mailConversationViewCollapsedCellLabelColor
{
  if (mailConversationViewCollapsedCellLabelColor_onceToken != -1)
  {
    +[UIColor(MailUI) mailConversationViewCollapsedCellLabelColor];
  }

  v1 = mailConversationViewCollapsedCellLabelColor_sInstance;

  return v1;
}

+ (id)mailDockViewShadowGradientColors
{
  v5[3] = *MEMORY[0x277D85DE8];
  blackColor = [MEMORY[0x277D75348] blackColor];
  v1 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:{0.5, blackColor}];
  v5[1] = v1;
  v2 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.0];
  v5[2] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];

  return v3;
}

+ (id)mailFocusBannerTitleColor
{
  systemIndigoColor = [MEMORY[0x277D75348] systemIndigoColor];
  v1 = [systemIndigoColor colorWithAlphaComponent:0.8];

  return v1;
}

+ (id)mailCellSelectionStateColorForInterfaceLevel:()MailUI
{
  if (a3 == 1)
  {
    [MEMORY[0x277D75348] systemGray4Color];
  }

  else
  {
    [MEMORY[0x277D75348] systemGray5Color];
  }
  v3 = ;

  return v3;
}

+ (id)mailMailboxPickerBackgroundColorForTraitCollection:()MailUI
{
  if ([a3 mf_usePrimarySidebarStyling])
  {
    [MEMORY[0x277D75348] secondarySystemBackgroundColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGroupedBackgroundColor];
  }
  v3 = ;

  return v3;
}

- (BOOL)mf_isTranslucent
{
  v5 = -1;
  v3 = -1;
  v4 = -1;
  v2 = NAN;
  [self getRed:&v5 green:&v4 blue:&v3 alpha:&v2];
  return v2 != 1.0;
}

+ (id)mf_colorFromColor:()MailUI toColor:progress:
{
  v7 = a5;
  v22 = NAN;
  v20 = NAN;
  v21 = NAN;
  v18 = -1;
  v19 = NAN;
  v16 = -1;
  v17 = -1;
  v15 = NAN;
  v8 = a4;
  v9 = a4;
  if (CGColorGetNumberOfComponents([v9 CGColor]) == 2)
  {
    [v9 getWhite:&v22 alpha:&v19];

    v20 = v22;
    v21 = v22;
  }

  else
  {
    [v9 getRed:&v22 green:&v20 blue:&v21 alpha:&v19];
  }

  if (CGColorGetNumberOfComponents([v7 CGColor]) == 2)
  {
    [v7 getWhite:&v18 alpha:&v15];
    v10 = *&v18;
    v16 = v18;
    v17 = v18;
    v11 = *&v18;
    v12 = *&v18;
  }

  else
  {
    [v7 getRed:&v18 green:&v16 blue:&v17 alpha:&v15];
    v10 = *&v17;
    v12 = *&v18;
    v11 = *&v16;
  }

  v13 = [MEMORY[0x277D75348] colorWithRed:v22 + self * (v12 - v22) green:v20 + self * (v11 - v20) blue:v21 + self * (v10 - v21) alpha:{v19 + self * (v15 - v19), *&v15, v16, v17}];

  return v13;
}

+ (id)mf_colorFromFlagColor:()MailUI
{
  mailFlaggedColorOrange = 0;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        mailFlaggedColorOrange = [MEMORY[0x277D75348] mailFlaggedColorOrange];
      }

      else if (a3 == 2)
      {
        mailFlaggedColorOrange = [MEMORY[0x277D75348] mailFlaggedColorYellow];
      }
    }

    else
    {
      mailFlaggedColorOrange = [MEMORY[0x277D75348] mailFlaggedColorRed];
    }
  }

  else if (a3 > 4)
  {
    if (a3 == 5)
    {
      mailFlaggedColorOrange = [MEMORY[0x277D75348] mailFlaggedColorIndigo];
    }

    else if (a3 == 6)
    {
      mailFlaggedColorOrange = [MEMORY[0x277D75348] mailFlaggedColorGray];
    }
  }

  else
  {
    if (a3 == 3)
    {
      [MEMORY[0x277D75348] mailFlaggedColorGreen];
    }

    else
    {
      [MEMORY[0x277D75348] mailFlaggedColorTeal];
    }
    mailFlaggedColorOrange = ;
  }

  return mailFlaggedColorOrange;
}

@end