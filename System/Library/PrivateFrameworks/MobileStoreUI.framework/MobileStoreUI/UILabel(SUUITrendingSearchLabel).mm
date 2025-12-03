@interface UILabel(SUUITrendingSearchLabel)
+ (id)SUUITrending_defaultLabelWithText:()SUUITrendingSearchLabel;
+ (id)SUUITrending_titleLabelWithElement:()SUUITrendingSearchLabel;
@end

@implementation UILabel(SUUITrendingSearchLabel)

+ (id)SUUITrending_titleLabelWithElement:()SUUITrendingSearchLabel
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v5 setNumberOfLines:{objc_msgSend(v4, "numberOfLines")}];
    [v5 setTextAlignment:1];
    style = [v4 style];
    sUUITrending_defaultTitleFont = SUUIViewElementFontWithStyle(style);
    if (!sUUITrending_defaultTitleFont)
    {
      sUUITrending_defaultTitleFont = [self SUUITrending_defaultTitleFont];
    }

    sUUITrending_defaultTitleColor = SUUIViewElementPlainColorWithStyle(style, 0);
    if (!sUUITrending_defaultTitleColor)
    {
      sUUITrending_defaultTitleColor = [self SUUITrending_defaultTitleColor];
    }

    text = [v4 text];
    v10 = [text attributedStringWithDefaultFont:sUUITrending_defaultTitleFont foregroundColor:sUUITrending_defaultTitleColor style:style];

    [v5 setAttributedText:v10];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)SUUITrending_defaultLabelWithText:()SUUITrendingSearchLabel
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    sUUITrending_defaultTitleFont = [self SUUITrending_defaultTitleFont];
    [v6 setFont:sUUITrending_defaultTitleFont];

    [v6 setText:v5];
    [v6 setTextAlignment:1];
    sUUITrending_defaultTitleColor = [self SUUITrending_defaultTitleColor];
    [v6 setTextColor:sUUITrending_defaultTitleColor];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end