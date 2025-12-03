@interface CUIKORFontUtils
+ (UIFont)defaultOccurrenceSecondaryTextFont;
+ (double)_minimumPrimaryFontLineHeightUsingSmallText:(BOOL)text sizeClass:(int64_t)class;
+ (double)attributedStringMinimumLineHeightUsingSmallText:(BOOL)text sizeClass:(int64_t)class;
+ (double)minimumNaturalHeightForPrimaryTextUsingSmallText:(BOOL)text sizeClass:(int64_t)class;
+ (id)_primaryTextFontCache;
+ (id)defaultOccurrencePrimaryTextFontForSizeClass:(int64_t)class;
+ (id)defaultOccurrenceSmallPrimaryTextFontForSizeClass:(int64_t)class;
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
  fontDescriptor = [v2 fontDescriptor];
  [fontDescriptor pointSize];
  v5 = v4;

  CUIKRoundToScreenScale(v5);
  v6 = [v2 fontWithSize:?];

  return v6;
}

+ (id)defaultOccurrencePrimaryTextFontForSizeClass:(int64_t)class
{
  _primaryTextFontCache = [self _primaryTextFontCache];
  v5 = [MEMORY[0x1E69DB878] cuik_preferredTightLeadingBoldFontForTextStyle:*MEMORY[0x1E69DDD28]];
  fontDescriptor = [v5 fontDescriptor];
  [fontDescriptor pointSize];
  v8 = v7;

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%zd.%f", class, *&v8];
  v10 = [_primaryTextFontCache objectForKey:v9];
  if (!v10)
  {
    CUIKRoundToScreenScale(v8);
    v10 = [v5 fontWithSize:?];
    [_primaryTextFontCache setObject:v10 forKey:v9];
  }

  return v10;
}

+ (id)defaultOccurrenceSmallPrimaryTextFontForSizeClass:(int64_t)class
{
  if (class == 2)
  {
    v3 = 13.0;
  }

  else
  {
    v3 = 11.0;
  }

  v4 = MEMORY[0x1E69DDD28];
  if (class != 2)
  {
    v4 = MEMORY[0x1E69DDD10];
  }

  v5 = *v4;
  v6 = v3 / v3;
  v7 = [MEMORY[0x1E69DB878] cuik_preferredTightLeadingBoldFontForTextStyle:v5];
  fontDescriptor = [v7 fontDescriptor];
  [fontDescriptor pointSize];
  v10 = v9;

  CUIKRoundToScreenScale(v6 * v10);
  v11 = [v7 fontWithSize:?];

  return v11;
}

+ (double)attributedStringMinimumLineHeightUsingSmallText:(BOOL)text sizeClass:(int64_t)class
{
  if (text)
  {
    v4 = 8.0;
  }

  else
  {
    v4 = 9.0;
  }

  [self _minimumPrimaryFontLineHeightUsingSmallText:? sizeClass:?];
  result = CUIKCeilToScreenScale(v5);
  if (v4 >= result)
  {
    return v4;
  }

  return result;
}

+ (double)minimumNaturalHeightForPrimaryTextUsingSmallText:(BOOL)text sizeClass:(int64_t)class
{
  textCopy = text;
  [self _minimumPrimaryFontLineHeightUsingSmallText:? sizeClass:?];
  v8 = v7;
  [self attributedStringMinimumLineHeightUsingSmallText:textCopy sizeClass:class];
  if (v8 >= result)
  {
    return v8;
  }

  return result;
}

+ (double)_minimumPrimaryFontLineHeightUsingSmallText:(BOOL)text sizeClass:(int64_t)class
{
  textCopy = text;
  CUIKMultiwindowAssert(class != 0, @"Unspecified size class", text, class, v4, v5, v6, v7, v15);
  v10 = +[CUIKSemiConstantCache sharedInstance];
  v11 = v10;
  if (textCopy)
  {
    if (class == 1)
    {
      [v10 dayOccurrenceMinimumCachedLineHeightSmallCompact];
    }

    else
    {
      [v10 dayOccurrenceMinimumCachedLineHeightSmallRegular];
    }
  }

  else if (class == 1)
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