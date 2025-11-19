@interface NSString(NavigationDebug)
+ (__CFString)_navigation_pointerDescription:()NavigationDebug;
+ (__CFString)_navigation_stringWithAltitude:()NavigationDebug accuracy:;
+ (__CFString)_navigation_stringWithDirection:()NavigationDebug abbreviated:;
+ (__CFString)_navigation_stringWithSpeed:()NavigationDebug;
@end

@implementation NSString(NavigationDebug)

+ (__CFString)_navigation_pointerDescription:()NavigationDebug
{
  if (a3)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = a3;
    v5 = [v3 stringWithFormat:@"<%@ %p>", objc_opt_class(), v4];
  }

  else
  {
    v5 = @"nil";
  }

  return v5;
}

+ (__CFString)_navigation_stringWithAltitude:()NavigationDebug accuracy:
{
  if (a2 == 0.0)
  {
    [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%ld", llround(a1 * 3.2808399), v4];
    v2 = LABEL_5:;
    goto LABEL_6;
  }

  if (a2 > 0.0)
  {
    [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%ld ±%ld", llround(a1 * 3.2808399), llround(a2 * 3.2808399)];
    goto LABEL_5;
  }

  v2 = @"?";
LABEL_6:

  return v2;
}

+ (__CFString)_navigation_stringWithDirection:()NavigationDebug abbreviated:
{
  v47 = *MEMORY[0x1E69E9840];
  if (!_navigation_stringWithDirection_abbreviated__headings)
  {
    v40 = a4;
    v5 = objc_alloc(MEMORY[0x1E695DEC8]);
    v6 = _MNLocalizedStringFromThisBundle(@"North");
    v7 = _MNLocalizedStringFromThisBundle(@"North East");
    v8 = _MNLocalizedStringFromThisBundle(@"East");
    v9 = _MNLocalizedStringFromThisBundle(@"South East");
    v10 = _MNLocalizedStringFromThisBundle(@"South");
    v11 = _MNLocalizedStringFromThisBundle(@"South West");
    v12 = _MNLocalizedStringFromThisBundle(@"West");
    v13 = _MNLocalizedStringFromThisBundle(@"North West");
    v14 = [v5 initWithObjects:{v6, v7, v8, v9, v10, v11, v12, v13, 0}];
    v15 = _navigation_stringWithDirection_abbreviated__headings;
    _navigation_stringWithDirection_abbreviated__headings = v14;

    v16 = objc_alloc(MEMORY[0x1E695DEC8]);
    v17 = _MNLocalizedStringFromThisBundle(@"N");
    v18 = _MNLocalizedStringFromThisBundle(@"NE");
    v19 = _MNLocalizedStringFromThisBundle(@"E");
    v20 = _MNLocalizedStringFromThisBundle(@"SE");
    v21 = _MNLocalizedStringFromThisBundle(@"S");
    v22 = _MNLocalizedStringFromThisBundle(@"SW");
    v23 = _MNLocalizedStringFromThisBundle(@"W");
    v24 = _MNLocalizedStringFromThisBundle(@"NW");
    v25 = [v16 initWithObjects:{v17, v18, v19, v20, v21, v22, v23, v24, 0}];
    v26 = _navigation_stringWithDirection_abbreviated__abbreviatedHeadings;
    _navigation_stringWithDirection_abbreviated__abbreviatedHeadings = v25;

    a4 = v40;
  }

  v27 = a1 + 360.0;
  if (a1 >= 0.0)
  {
    v27 = a1;
  }

  if (v27 >= 0.0)
  {
    v30 = &_navigation_stringWithDirection_abbreviated__abbreviatedHeadings;
    if (!a4)
    {
      v30 = &_navigation_stringWithDirection_abbreviated__headings;
    }

    v31 = *v30;
    v32 = llround(floor(v27 * 0.0222222222 + 0.5));
    v33 = v32 & 7;
    v35 = -v32;
    v34 = v35 < 0;
    v36 = v35 & 7;
    if (v34)
    {
      v37 = v33;
    }

    else
    {
      v37 = -v36;
    }

    v29 = [v31 objectAtIndex:v37];
  }

  else
  {
    v28 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v42 = "+[NSString(NavigationDebug) _navigation_stringWithDirection:abbreviated:]";
      v43 = 2080;
      v44 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Extras/NSString+MNExtras.m";
      v45 = 1024;
      v46 = 2289;
      _os_log_impl(&dword_1D311E000, v28, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", buf, 0x1Cu);
    }

    v29 = @"?";
  }

  v38 = *MEMORY[0x1E69E9840];

  return v29;
}

+ (__CFString)_navigation_stringWithSpeed:()NavigationDebug
{
  if (a1 >= 0.0)
  {
    v2 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%ld", llround(a1 * 2.23693629)];
  }

  else
  {
    v2 = @"?";
  }

  return v2;
}

@end