@interface PHUIConfiguration(DialerView)
+ (double)dialerLCDFontSize;
+ (double)dialerLCDLabelFontSize;
+ (double)dialerLCDSourceLabelFontSize;
+ (double)yOffsetForSmartDialerLCDView;
+ (double)yOffsetForSmartDialerLCDViewForOrientation:()DialerView;
@end

@implementation PHUIConfiguration(DialerView)

+ (double)dialerLCDFontSize
{
  if (dialerLCDFontSize_onceToken != -1)
  {
    +[PHUIConfiguration(DialerView) dialerLCDFontSize];
  }

  return *&dialerLCDFontSize_fontSize;
}

+ (double)dialerLCDLabelFontSize
{
  if (dialerLCDLabelFontSize_onceToken != -1)
  {
    +[PHUIConfiguration(DialerView) dialerLCDLabelFontSize];
  }

  return *&dialerLCDLabelFontSize_fontSize;
}

+ (double)dialerLCDSourceLabelFontSize
{
  if (dialerLCDSourceLabelFontSize_onceToken[0] != -1)
  {
    +[PHUIConfiguration(DialerView) dialerLCDSourceLabelFontSize];
  }

  return *&dialerLCDSourceLabelFontSize_fontSize;
}

+ (double)yOffsetForSmartDialerLCDView
{
  v0 = [MEMORY[0x277D3A7E0] screenSize];
  if (v0 > 8)
  {
    if (v0 != 13)
    {
      if (v0 != 9)
      {
        return 43.0;
      }

      return 55.0;
    }

    return -25.0;
  }

  else
  {
    if (v0)
    {
      if (v0 != 1)
      {
        return 43.0;
      }

      return 55.0;
    }

    return 5.0;
  }
}

+ (double)yOffsetForSmartDialerLCDViewForOrientation:()DialerView
{
  v0 = objc_opt_new();
  v1 = [MEMORY[0x277D3A7E0] screenSize];
  if (v1 > 0xD)
  {
    goto LABEL_9;
  }

  v2 = -25.0;
  if (((1 << v1) & 0x2202) == 0)
  {
    if (((1 << v1) & 0x104) != 0)
    {
      if ([v0 phoneLargeFormatUIEnabled])
      {
        v3 = [MEMORY[0x277D75418] currentDevice];
        v4 = [v3 userInterfaceIdiom];

        if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
        {
          v2 = -120.0;
          goto LABEL_10;
        }
      }
    }

    else if (!v1)
    {
      v2 = 5.0;
      goto LABEL_10;
    }

LABEL_9:
    v2 = 43.0;
  }

LABEL_10:

  return v2;
}

@end