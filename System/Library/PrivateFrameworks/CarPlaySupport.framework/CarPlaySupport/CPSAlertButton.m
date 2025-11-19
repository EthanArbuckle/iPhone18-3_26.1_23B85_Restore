@interface CPSAlertButton
+ (id)buttonWithCPAlertAction:(id)a3;
- (id)_buttonFont;
- (id)_externalUnfocusedBorderColor;
- (id)buttonTitleColor;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CPSAlertButton

+ (id)buttonWithCPAlertAction:(id)a3
{
  v18 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = [v18 buttonWithType:0];
  if (v16)
  {
    v9 = [location[0] title];
    [v16 setTitle:? forState:?];
    *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    v10 = [location[0] identifier];
    [v16 setIdentifier:?];
    v11 = [v16 layer];
    [v11 setCornerCurve:*MEMORY[0x277CDA138]];
    v12 = [v16 layer];
    v4 = _UISolariumEnabled();
    v5 = 20.0;
    if ((v4 & 1) == 0)
    {
      v5 = 8.0;
    }

    [v12 setCornerRadius:v5];
    MEMORY[0x277D82BD8](v12);
    v13 = _CPSAlertBackgroundColorForAction(location[0]);
    [v16 setBackgroundColor:?];
    v15 = [v16 titleLabel];
    v14 = [v16 _buttonFont];
    [v15 setFont:?];
    MEMORY[0x277D82BD8](v14);
    *&v6 = MEMORY[0x277D82BD8](v15).n128_u64[0];
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
    v12 = [MEMORY[0x277D75348] labelColor];
  }

  else if (([(CPSAlertButton *)self isFocused]& 1) != 0)
  {
    v12 = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
  }

  else
  {
    v7 = [(CPSAlertButton *)self traitCollection];
    v9 = 0;
    v8 = 0;
    if ([v7 userInterfaceStyle] == 1)
    {
      v10 = [(CPSAlertButton *)self alertAction];
      v9 = 1;
      v8 = [(CPAlertAction *)v10 style]== CPAlertActionStyleCancel;
    }

    if (v9)
    {
      MEMORY[0x277D82BD8](v10);
    }

    *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    if (v8)
    {
      v12 = [MEMORY[0x277D75348] labelColor];
    }

    else
    {
      v5 = MEMORY[0x277D75348];
      v6 = [MEMORY[0x277D75348] whiteColor];
      v3 = v6;
      v12 = [v5 colorWithCGColor:{objc_msgSend(v6, "CGColor")}];
      MEMORY[0x277D82BD8](v6);
    }
  }

  return v12;
}

- (void)traitCollectionDidChange:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8.receiver = v10;
  v8.super_class = CPSAlertButton;
  [(CPUIButton *)&v8 traitCollectionDidChange:location[0]];
  v5 = [(CPSAlertButton *)v10 titleLabel];
  v4 = [(CPSAlertButton *)v10 _buttonFont];
  [v5 setFont:?];
  MEMORY[0x277D82BD8](v4);
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  v6 = v10;
  v7 = [(CPSAlertButton *)v10 buttonTitleColor];
  [CPSAlertButton setTitleColor:v6 forState:"setTitleColor:forState:"];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(location, 0);
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v4 = [location[0] nextFocusedItem];
  v9 = v4 == v21;
  *&v5 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  v10 = v21;
  v11 = [(CPSAlertButton *)v21 buttonTitleColor];
  [CPSAlertButton setTitleColor:v10 forState:"setTitleColor:forState:"];
  *&v6 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  v12 = v21;
  v17 = 0;
  v15 = 0;
  v13 = 0;
  if (v9)
  {
    v18 = [MEMORY[0x277D75348] _carSystemFocusColor];
    v17 = 1;
    v7 = v18;
  }

  else
  {
    v16 = [(CPSAlertButton *)v21 alertAction];
    v15 = 1;
    v14 = _CPSAlertBackgroundColorForAction(v16);
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
    MEMORY[0x277D82BD8](v16);
  }

  if (v17)
  {
    MEMORY[0x277D82BD8](v18);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)setHighlighted:(BOOL)a3
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14.receiver = self;
  v14.super_class = CPSAlertButton;
  [(CPSAlertButton *)&v14 setHighlighted:a3];
  v5 = v17;
  v6 = [(CPSAlertButton *)v17 buttonTitleColor];
  [CPSAlertButton setTitleColor:v5 forState:"setTitleColor:forState:"];
  *&v3 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  v7 = v17;
  v12 = 0;
  v10 = 0;
  v8 = 0;
  if (v15)
  {
    v13 = [MEMORY[0x277D75348] _carSystemFocusPrimaryColor];
    v12 = 1;
    v4 = v13;
  }

  else
  {
    v11 = [(CPSAlertButton *)v17 alertAction];
    v10 = 1;
    v9 = _CPSAlertBackgroundColorForAction(v11);
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
    MEMORY[0x277D82BD8](v11);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }
}

- (id)_buttonFont
{
  v18[1] = *MEMORY[0x277D85DE8];
  v14[2] = self;
  v14[1] = a2;
  v7 = MEMORY[0x277D74310];
  v6 = *MEMORY[0x277D76920];
  v8 = [(CPSAlertButton *)self traitCollection];
  v14[0] = [v7 preferredFontDescriptorWithTextStyle:v6 compatibleWithTraitCollection:?];
  MEMORY[0x277D82BD8](v8);
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
  v3 = [(CPSAlertButton *)self alertAction];
  v4 = _CPSAlertBackgroundColorForAction(v3);
  MEMORY[0x277D82BD8](v3);

  return v4;
}

@end