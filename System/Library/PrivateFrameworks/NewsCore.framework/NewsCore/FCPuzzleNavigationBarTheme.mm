@interface FCPuzzleNavigationBarTheme
- (FCPuzzleNavigationBarTheme)initWithNavigationBarBackgroundColor:(id)color navigationBarBackgroundDarkModeColor:(id)modeColor rankForegroundColor:(id)foregroundColor rankForegroundDarkModeColor:(id)darkModeColor barButtonItemTintColor:(id)tintColor barButtonItemTintDarkModeColor:(id)tintDarkModeColor barButtonItemBackgroundColor:(id)backgroundColor barButtonItemBackgroundDarkModeColor:(id)self0 shareTextForegroundColor:(id)self1 shareText2ForegroundColor:(id)self2 shareText2BackgroundColor:(id)self3 shareText2UseLargeFontNoCapsule:(BOOL)self4 shareText3ForegroundColor:(id)self5 shareText3BackgroundColor:(id)self6;
@end

@implementation FCPuzzleNavigationBarTheme

- (FCPuzzleNavigationBarTheme)initWithNavigationBarBackgroundColor:(id)color navigationBarBackgroundDarkModeColor:(id)modeColor rankForegroundColor:(id)foregroundColor rankForegroundDarkModeColor:(id)darkModeColor barButtonItemTintColor:(id)tintColor barButtonItemTintDarkModeColor:(id)tintDarkModeColor barButtonItemBackgroundColor:(id)backgroundColor barButtonItemBackgroundDarkModeColor:(id)self0 shareTextForegroundColor:(id)self1 shareText2ForegroundColor:(id)self2 shareText2BackgroundColor:(id)self3 shareText2UseLargeFontNoCapsule:(BOOL)self4 shareText3ForegroundColor:(id)self5 shareText3BackgroundColor:(id)self6
{
  colorCopy = color;
  modeColorCopy = modeColor;
  foregroundColorCopy = foregroundColor;
  foregroundColorCopy2 = foregroundColor;
  darkModeColorCopy = darkModeColor;
  tintColorCopy = tintColor;
  tintColorCopy2 = tintColor;
  tintDarkModeColorCopy = tintDarkModeColor;
  backgroundColorCopy = backgroundColor;
  v24 = modeColorCopy;
  backgroundDarkModeColorCopy = backgroundDarkModeColor;
  textForegroundColorCopy = textForegroundColor;
  text2ForegroundColorCopy = text2ForegroundColor;
  text2BackgroundColorCopy = text2BackgroundColor;
  text3ForegroundColorCopy = text3ForegroundColor;
  v29 = darkModeColorCopy;
  text3BackgroundColorCopy = text3BackgroundColor;
  v47.receiver = self;
  v47.super_class = FCPuzzleNavigationBarTheme;
  v31 = [(FCPuzzleNavigationBarTheme *)&v47 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_navigationBarBackgroundColor, color);
    if (v24)
    {
      v33 = v24;
    }

    else
    {
      v33 = colorCopy;
    }

    objc_storeStrong(&v32->_navigationBarBackgroundDarkModeColor, v33);
    objc_storeStrong(&v32->_rankForegroundColor, foregroundColorCopy);
    if (v29)
    {
      v34 = v29;
    }

    else
    {
      v34 = foregroundColorCopy2;
    }

    objc_storeStrong(&v32->_rankForegroundDarkModeColor, v34);
    objc_storeStrong(&v32->_barButtonItemTintColor, tintColorCopy);
    if (tintDarkModeColorCopy)
    {
      v35 = tintDarkModeColorCopy;
    }

    else
    {
      v35 = tintColorCopy2;
    }

    objc_storeStrong(&v32->_barButtonItemTintDarkModeColor, v35);
    objc_storeStrong(&v32->_barButtonItemBackgroundColor, backgroundColor);
    if (backgroundDarkModeColorCopy)
    {
      v36 = backgroundDarkModeColorCopy;
    }

    else
    {
      v36 = backgroundColorCopy;
    }

    objc_storeStrong(&v32->_barButtonItemBackgroundDarkModeColor, v36);
    objc_storeStrong(&v32->_shareTextForegroundColor, textForegroundColor);
    objc_storeStrong(&v32->_shareText2ForegroundColor, text2ForegroundColor);
    objc_storeStrong(&v32->_shareText2BackgroundColor, text2BackgroundColor);
    v32->_shareText2UseLargeFontNoCapsule = capsule;
    objc_storeStrong(&v32->_shareText3ForegroundColor, text3ForegroundColor);
    objc_storeStrong(&v32->_shareText3BackgroundColor, text3BackgroundColor);
  }

  return v32;
}

@end