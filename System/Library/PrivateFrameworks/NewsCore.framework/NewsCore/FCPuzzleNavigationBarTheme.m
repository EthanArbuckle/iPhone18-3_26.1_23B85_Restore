@interface FCPuzzleNavigationBarTheme
- (FCPuzzleNavigationBarTheme)initWithNavigationBarBackgroundColor:(id)a3 navigationBarBackgroundDarkModeColor:(id)a4 rankForegroundColor:(id)a5 rankForegroundDarkModeColor:(id)a6 barButtonItemTintColor:(id)a7 barButtonItemTintDarkModeColor:(id)a8 barButtonItemBackgroundColor:(id)a9 barButtonItemBackgroundDarkModeColor:(id)a10 shareTextForegroundColor:(id)a11 shareText2ForegroundColor:(id)a12 shareText2BackgroundColor:(id)a13 shareText2UseLargeFontNoCapsule:(BOOL)a14 shareText3ForegroundColor:(id)a15 shareText3BackgroundColor:(id)a16;
@end

@implementation FCPuzzleNavigationBarTheme

- (FCPuzzleNavigationBarTheme)initWithNavigationBarBackgroundColor:(id)a3 navigationBarBackgroundDarkModeColor:(id)a4 rankForegroundColor:(id)a5 rankForegroundDarkModeColor:(id)a6 barButtonItemTintColor:(id)a7 barButtonItemTintDarkModeColor:(id)a8 barButtonItemBackgroundColor:(id)a9 barButtonItemBackgroundDarkModeColor:(id)a10 shareTextForegroundColor:(id)a11 shareText2ForegroundColor:(id)a12 shareText2BackgroundColor:(id)a13 shareText2UseLargeFontNoCapsule:(BOOL)a14 shareText3ForegroundColor:(id)a15 shareText3BackgroundColor:(id)a16
{
  v44 = a3;
  v20 = a4;
  v39 = a5;
  v46 = a5;
  v21 = a6;
  v40 = a7;
  v45 = a7;
  v22 = a8;
  v23 = a9;
  v24 = v20;
  v25 = a10;
  v26 = a11;
  v43 = a12;
  v27 = a13;
  v28 = a15;
  v29 = v21;
  v30 = a16;
  v47.receiver = self;
  v47.super_class = FCPuzzleNavigationBarTheme;
  v31 = [(FCPuzzleNavigationBarTheme *)&v47 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_navigationBarBackgroundColor, a3);
    if (v24)
    {
      v33 = v24;
    }

    else
    {
      v33 = v44;
    }

    objc_storeStrong(&v32->_navigationBarBackgroundDarkModeColor, v33);
    objc_storeStrong(&v32->_rankForegroundColor, v39);
    if (v29)
    {
      v34 = v29;
    }

    else
    {
      v34 = v46;
    }

    objc_storeStrong(&v32->_rankForegroundDarkModeColor, v34);
    objc_storeStrong(&v32->_barButtonItemTintColor, v40);
    if (v22)
    {
      v35 = v22;
    }

    else
    {
      v35 = v45;
    }

    objc_storeStrong(&v32->_barButtonItemTintDarkModeColor, v35);
    objc_storeStrong(&v32->_barButtonItemBackgroundColor, a9);
    if (v25)
    {
      v36 = v25;
    }

    else
    {
      v36 = v23;
    }

    objc_storeStrong(&v32->_barButtonItemBackgroundDarkModeColor, v36);
    objc_storeStrong(&v32->_shareTextForegroundColor, a11);
    objc_storeStrong(&v32->_shareText2ForegroundColor, a12);
    objc_storeStrong(&v32->_shareText2BackgroundColor, a13);
    v32->_shareText2UseLargeFontNoCapsule = a14;
    objc_storeStrong(&v32->_shareText3ForegroundColor, a15);
    objc_storeStrong(&v32->_shareText3BackgroundColor, a16);
  }

  return v32;
}

@end