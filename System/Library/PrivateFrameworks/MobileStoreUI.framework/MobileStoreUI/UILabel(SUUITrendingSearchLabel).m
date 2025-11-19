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
    v6 = [v4 style];
    v7 = SUUIViewElementFontWithStyle(v6);
    if (!v7)
    {
      v7 = [a1 SUUITrending_defaultTitleFont];
    }

    v8 = SUUIViewElementPlainColorWithStyle(v6, 0);
    if (!v8)
    {
      v8 = [a1 SUUITrending_defaultTitleColor];
    }

    v9 = [v4 text];
    v10 = [v9 attributedStringWithDefaultFont:v7 foregroundColor:v8 style:v6];

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
    v7 = [a1 SUUITrending_defaultTitleFont];
    [v6 setFont:v7];

    [v6 setText:v5];
    [v6 setTextAlignment:1];
    v8 = [a1 SUUITrending_defaultTitleColor];
    [v6 setTextColor:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end