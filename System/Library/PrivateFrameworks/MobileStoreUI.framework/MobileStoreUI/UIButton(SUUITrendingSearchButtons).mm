@interface UIButton(SUUITrendingSearchButtons)
+ (id)SUUITrending_searchButtonWithElement:()SUUITrendingSearchButtons;
+ (id)SUUITrending_searchButtonWithTitle:()SUUITrendingSearchButtons;
- (void)SUUITrending_applyConfigurationFromElement:()SUUITrendingSearchButtons;
@end

@implementation UIButton(SUUITrendingSearchButtons)

+ (id)SUUITrending_searchButtonWithElement:()SUUITrendingSearchButtons
{
  v3 = MEMORY[0x277D75220];
  v4 = a3;
  v5 = [v3 buttonWithType:1];
  [v5 SUUITrending_applyConfigurationFromElement:v4];

  return v5;
}

+ (id)SUUITrending_searchButtonWithTitle:()SUUITrendingSearchButtons
{
  v4 = a3;
  v5 = [self SUUITrending_searchButtonWithElement:0];
  [v5 setTitle:v4 forState:0];

  return v5;
}

- (void)SUUITrending_applyConfigurationFromElement:()SUUITrendingSearchButtons
{
  v20 = a3;
  buttonImage = [v20 buttonImage];

  if (buttonImage)
  {
    buttonImage2 = [v20 buttonImage];
    resourceName = [buttonImage2 resourceName];
    v7 = SUUIImageWithResourceName(resourceName);

    [self setImage:v7 forState:0];
  }

  buttonText = [v20 buttonText];
  string = [buttonText string];

  [self setTitle:string forState:0];
  buttonTitleStyle = [v20 buttonTitleStyle];
  v11 = buttonTitleStyle;
  if (buttonTitleStyle)
  {
    style = buttonTitleStyle;
  }

  else
  {
    style = [v20 style];
  }

  v13 = style;

  v14 = SUUIViewElementPlainColorWithStyle(v13, 0);
  [self setTintColor:v14];

  titleLabel = [self titleLabel];
  v16 = SUUIViewElementFontWithStyle(v13);
  maxTextLines = [v13 maxTextLines];
  if (v16)
  {
    [titleLabel setFont:v16];
  }

  else
  {
    sUUITrending_defaultButtonFont = [objc_opt_class() SUUITrending_defaultButtonFont];
    [titleLabel setFont:sUUITrending_defaultButtonFont];
  }

  if (maxTextLines == -1)
  {
    v19 = 1;
  }

  else
  {
    v19 = maxTextLines;
  }

  [titleLabel setNumberOfLines:v19];
  [titleLabel setTextAlignment:1];
  [titleLabel setLineBreakMode:4];
}

@end