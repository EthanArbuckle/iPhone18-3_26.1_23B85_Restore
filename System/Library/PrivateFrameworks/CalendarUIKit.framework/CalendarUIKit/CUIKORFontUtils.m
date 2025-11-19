@interface CUIKORFontUtils
+ (UIFont)defaultOccurrenceSecondaryTextFont;
+ (double)_minimumPrimaryFontLineHeightUsingSmallText:(BOOL)a3 sizeClass:(int64_t)a4;
+ (double)attributedStringMinimumLineHeightUsingSmallText:(BOOL)a3 sizeClass:(int64_t)a4;
+ (double)minimumNaturalHeightForPrimaryTextUsingSmallText:(BOOL)a3 sizeClass:(int64_t)a4;
+ (id)_primaryTextFontCache;
+ (id)defaultOccurrencePrimaryTextFontForSizeClass:(int64_t)a3;
+ (id)defaultOccurrenceSmallPrimaryTextFontForSizeClass:(int64_t)a3;
@end

@implementation CUIKORFontUtils

+ (id)_primaryTextFontCache
{
  if (_primaryTextFontCache_onceToken != -1)
  {
    +[CUIKORFontUtils _primaryTextFontCache];
  }

  v3 = _primaryTextFontCache_cache;

  return v3;
}

uint64_t __40__CUIKORFontUtils__primaryTextFontCache__block_invoke()
{
  _primaryTextFontCache_cache = objc_alloc_init(MEMORY[0x1E695DEE0]);

  return MEMORY[0x1EEE66BB8]();
}

+ (UIFont)defaultOccurrenceSecondaryTextFont
{
  v2 = [MEMORY[0x1E69DB878] cuik_preferredTightLeadingFontForTextStyle:*MEMORY[0x1E69DDD10]];
  v3 = [v2 fontDescriptor];
  [v3 pointSize];
  v5 = v4;

  CUIKRoundToScreenScale(v5);
  v6 = [v2 fontWithSize:?];

  return v6;
}

+ (id)defaultOccurrencePrimaryTextFontForSizeClass:(int64_t)a3
{
  v4 = [a1 _primaryTextFontCache];
  v5 = [MEMORY[0x1E69DB878] cuik_preferredTightLeadingBoldFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v6 = [v5 fontDescriptor];
  [v6 pointSize];
  v8 = v7;

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zd.%f", a3, *&v8];
  v10 = [v4 objectForKey:v9];
  if (!v10)
  {
    CUIKRoundToScreenScale(v8);
    v10 = [v5 fontWithSize:?];
    [v4 setObject:v10 forKey:v9];
  }

  return v10;
}

+ (id)defaultOccurrenceSmallPrimaryTextFontForSizeClass:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = 13.0;
  }

  else
  {
    v3 = 11.0;
  }

  v4 = MEMORY[0x1E69DDD28];
  if (a3 != 2)
  {
    v4 = MEMORY[0x1E69DDD10];
  }

  v5 = *v4;
  v6 = v3 / v3;
  v7 = [MEMORY[0x1E69DB878] cuik_preferredTightLeadingBoldFontForTextStyle:v5];
  v8 = [v7 fontDescriptor];
  [v8 pointSize];
  v10 = v9;

  CUIKRoundToScreenScale(v6 * v10);
  v11 = [v7 fontWithSize:?];

  return v11;
}

+ (double)attributedStringMinimumLineHeightUsingSmallText:(BOOL)a3 sizeClass:(int64_t)a4
{
  if (a3)
  {
    v4 = 8.0;
  }

  else
  {
    v4 = 9.0;
  }

  [a1 _minimumPrimaryFontLineHeightUsingSmallText:? sizeClass:?];
  result = CUIKCeilToScreenScale(v5);
  if (v4 >= result)
  {
    return v4;
  }

  return result;
}

+ (double)minimumNaturalHeightForPrimaryTextUsingSmallText:(BOOL)a3 sizeClass:(int64_t)a4
{
  v5 = a3;
  [a1 _minimumPrimaryFontLineHeightUsingSmallText:? sizeClass:?];
  v8 = v7;
  [a1 attributedStringMinimumLineHeightUsingSmallText:v5 sizeClass:a4];
  if (v8 >= result)
  {
    return v8;
  }

  return result;
}

+ (double)_minimumPrimaryFontLineHeightUsingSmallText:(BOOL)a3 sizeClass:(int64_t)a4
{
  v9 = a3;
  CUIKMultiwindowAssert(a4 != 0, @"Unspecified size class", a3, a4, v4, v5, v6, v7, v15);
  v10 = +[CUIKSemiConstantCache sharedInstance];
  v11 = v10;
  if (v9)
  {
    if (a4 == 1)
    {
      [v10 dayOccurrenceMinimumCachedLineHeightSmallCompact];
    }

    else
    {
      [v10 dayOccurrenceMinimumCachedLineHeightSmallRegular];
    }
  }

  else if (a4 == 1)
  {
    [v10 dayOccurrenceMinimumCachedLineHeightCompact];
  }

  else
  {
    [v10 dayOccurrenceMinimumCachedLineHeightRegular];
  }

  v13 = v12;

  return v13;
}

@end