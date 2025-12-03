@interface CPSAlertButton
+ (id)buttonWithCPAlertAction:(id)action;
- (id)_buttonFont;
- (id)_externalUnfocusedBorderColor;
- (id)buttonTitleColor;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setHighlighted:(BOOL)highlighted;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPSAlertButton

+ (id)buttonWithCPAlertAction:(id)action
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, action);
  v16 = [selfCopy buttonWithType:0];
  if (v16)
  {
    title = [location[0] title];
    [v16 setTitle:? forState:?];
    *&v3 = MEMORY[0x277D82BD8](title).n128_u64[0];
    identifier = [location[0] identifier];
    [v16 setIdentifier:?];
    layer = [v16 layer];
    [layer setCornerCurve:*MEMORY[0x277CDA138]];
    layer2 = [v16 layer];
    v4 = _UISolariumEnabled();
    v5 = 20.0;
    if ((v4 & 1) == 0)
    {
      v5 = 8.0;
    }

    [layer2 setCornerRadius:v5];
    MEMORY[0x277D82BD8](layer2);
    v13 = _CPSAlertBackgroundColorForAction(location[0]);
    [v16 setBackgroundColor:?];
    titleLabel = [v16 titleLabel];
    _buttonFont = [v16 _buttonFont];
    [titleLabel setFont:?];
    MEMORY[0x277D82BD8](_buttonFont);
    *&v6 = MEMORY[0x277D82BD8](titleLabel).n128_u64[0];
    [v16 setAlertAction:{location[0], v6}];
  }

  v8 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)buttonTitleColor
{
  if (([(CPSAlertButton *)self isHighlighted]& 1) != 0)
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
  }

  else if (([(CPSAlertButton *)self isFocused]& 1) != 0)
  {
    labelColor = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  }

  else
  {
    traitCollection = [(CPSAlertButton *)self traitCollection];
    v9 = 0;
    v8 = 0;
    if ([traitCollection userInterfaceStyle] == 1)
    {
      alertAction = [(CPSAlertButton *)self alertAction];
      v9 = 1;
      v8 = [(CPAlertAction *)alertAction style]== CPAlertActionStyleCancel;
    }

    if (v9)
    {
      MEMORY[0x277D82BD8](alertAction);
    }

    *&v2 = MEMORY[0x277D82BD8](traitCollection).n128_u64[0];
    if (v8)
    {
      labelColor = [MEMORY[0x277D75348] labelColor];
    }

    else
    {
      v5 = MEMORY[0x277D75348];
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      v3 = whiteColor;
      labelColor = [v5 colorWithCGColor:{objc_msgSend(whiteColor, "CGColor")}];
      MEMORY[0x277D82BD8](whiteColor);
    }
  }

  return labelColor;
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v8.receiver = selfCopy;
  v8.super_class = CPSAlertButton;
  [(CPUIButton *)&v8 traitCollectionDidChange:location[0]];
  titleLabel = [(CPSAlertButton *)selfCopy titleLabel];
  _buttonFont = [(CPSAlertButton *)selfCopy _buttonFont];
  [titleLabel setFont:?];
  MEMORY[0x277D82BD8](_buttonFont);
  *&v3 = MEMORY[0x277D82BD8](titleLabel).n128_u64[0];
  v6 = selfCopy;
  buttonTitleColor = [(CPSAlertButton *)selfCopy buttonTitleColor];
  [CPSAlertButton setTitleColor:v6 forState:"setTitleColor:forState:"];
  MEMORY[0x277D82BD8](buttonTitleColor);
  objc_storeStrong(location, 0);
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v19 = 0;
  objc_storeStrong(&v19, coordinator);
  nextFocusedItem = [location[0] nextFocusedItem];
  v9 = nextFocusedItem == selfCopy;
  *&v5 = MEMORY[0x277D82BD8](nextFocusedItem).n128_u64[0];
  v10 = selfCopy;
  buttonTitleColor = [(CPSAlertButton *)selfCopy buttonTitleColor];
  [CPSAlertButton setTitleColor:v10 forState:"setTitleColor:forState:"];
  *&v6 = MEMORY[0x277D82BD8](buttonTitleColor).n128_u64[0];
  v12 = selfCopy;
  v17 = 0;
  v15 = 0;
  v13 = 0;
  if (v9)
  {
    _carSystemFocusColor = [MEMORY[0x277D75348] _carSystemFocusColor];
    v17 = 1;
    v7 = _carSystemFocusColor;
  }

  else
  {
    alertAction = [(CPSAlertButton *)selfCopy alertAction];
    v15 = 1;
    v14 = _CPSAlertBackgroundColorForAction(alertAction);
    v13 = 1;
    v7 = v14;
  }

  [(CPSAlertButton *)v12 setBackgroundColor:v7];
  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  if (v15)
  {
    MEMORY[0x277D82BD8](alertAction);
  }

  if (v17)
  {
    MEMORY[0x277D82BD8](_carSystemFocusColor);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  v16 = a2;
  highlightedCopy = highlighted;
  v14.receiver = self;
  v14.super_class = CPSAlertButton;
  [(CPSAlertButton *)&v14 setHighlighted:highlighted];
  v5 = selfCopy;
  buttonTitleColor = [(CPSAlertButton *)selfCopy buttonTitleColor];
  [CPSAlertButton setTitleColor:v5 forState:"setTitleColor:forState:"];
  *&v3 = MEMORY[0x277D82BD8](buttonTitleColor).n128_u64[0];
  v7 = selfCopy;
  v12 = 0;
  v10 = 0;
  v8 = 0;
  if (highlightedCopy)
  {
    _carSystemFocusPrimaryColor = [MEMORY[0x277D75348] _carSystemFocusPrimaryColor];
    v12 = 1;
    v4 = _carSystemFocusPrimaryColor;
  }

  else
  {
    alertAction = [(CPSAlertButton *)selfCopy alertAction];
    v10 = 1;
    v9 = _CPSAlertBackgroundColorForAction(alertAction);
    v8 = 1;
    v4 = v9;
  }

  [(CPSAlertButton *)v7 setBackgroundColor:v4];
  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](alertAction);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](_carSystemFocusPrimaryColor);
  }
}

- (id)_buttonFont
{
  v18[1] = *MEMORY[0x277D85DE8];
  v14[2] = self;
  v14[1] = a2;
  v7 = MEMORY[0x277D74310];
  v6 = *MEMORY[0x277D76920];
  traitCollection = [(CPSAlertButton *)self traitCollection];
  v14[0] = [v7 preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:?];
  MEMORY[0x277D82BD8](traitCollection);
  v17 = *MEMORY[0x277D74430];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D743F8]];
  v18[0] = v9;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:?];
  *&v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v10 = v14[0];
  v15 = *MEMORY[0x277D74380];
  v16 = v13;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:{1, v2}];
  v3 = [v10 fontDescriptorByAddingAttributes:?];
  v4 = v14[0];
  v14[0] = v3;
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v11);
  v12 = [MEMORY[0x277D74300] fontWithDescriptor:v14[0] size:0.0];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);

  return v12;
}

- (id)_externalUnfocusedBorderColor
{
  alertAction = [(CPSAlertButton *)self alertAction];
  v4 = _CPSAlertBackgroundColorForAction(alertAction);
  MEMORY[0x277D82BD8](alertAction);

  return v4;
}

@end