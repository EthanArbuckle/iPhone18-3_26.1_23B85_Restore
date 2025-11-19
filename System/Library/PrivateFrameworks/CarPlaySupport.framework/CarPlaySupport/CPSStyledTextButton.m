@interface CPSStyledTextButton
+ (id)buttonWithTextButton:(id)a3;
- (id)_buttonFont;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setWantsGlass:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConfiguration;
@end

@implementation CPSStyledTextButton

+ (id)buttonWithTextButton:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [objc_opt_class() buttonWithType:0];
  if (v6)
  {
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setTextButton:location[0]];
    [v6 setEnabled:{objc_msgSend(location[0], "isEnabled")}];
    v5 = [location[0] identifier];
    [v6 setIdentifier:?];
    [v6 updateConfiguration];
  }

  v4 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);

  return v4;
}

- (id)_buttonFont
{
  v4 = [(CPSStyledTextButton *)self fontOverride];
  *&v2 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  if (v4)
  {
    v6 = [(CPSStyledTextButton *)self fontOverride];
  }

  else
  {
    v6 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] weight:*MEMORY[0x277D743F8]];
  }

  return v6;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v6 = [location[0] nextFocusedItem];
  v8 = 0;
  v7 = 1;
  if (v6 != v12)
  {
    v9 = [location[0] previouslyFocusedItem];
    v8 = 1;
    v7 = v9 == v12;
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7)
  {
    [(CPSStyledTextButton *)v12 setNeedsUpdateConfiguration];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = CPSStyledTextButton;
  [(CPUIButton *)&v3 traitCollectionDidChange:location[0]];
  [(CPSStyledTextButton *)v5 setNeedsUpdateConfiguration];
  objc_storeStrong(location, 0);
}

- (void)setSelected:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = CPSStyledTextButton;
  [(CPSStyledTextButton *)&v3 setSelected:a3];
  [(CPSStyledTextButton *)v6 setNeedsUpdateConfiguration];
}

- (void)setHighlighted:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = CPSStyledTextButton;
  [(CPSStyledTextButton *)&v3 setHighlighted:a3];
  [(CPSStyledTextButton *)v6 setNeedsUpdateConfiguration];
}

- (void)setWantsGlass:(BOOL)a3
{
  if (self->_wantsGlass != a3)
  {
    self->_wantsGlass = a3;
    [(CPSStyledTextButton *)self setNeedsUpdateConfiguration];
  }
}

- (void)updateConfiguration
{
  v23 = self;
  v22[1] = a2;
  v22[0] = 0;
  v12 = 1;
  if (([(CPSStyledTextButton *)self isFocused]& 1) == 0)
  {
    v12 = 1;
    if (([(CPSStyledTextButton *)v23 isHighlighted]& 1) == 0)
    {
      v12 = [(CPSStyledTextButton *)v23 isSelected];
    }
  }

  v21 = v12 & 1;
  if ((_UISolariumEnabled() & 1) != 0 && [(CPSStyledTextButton *)v23 wantsGlass])
  {
    if (v21)
    {
      v2 = [MEMORY[0x277D75230] _tintedGlassButtonConfiguration];
    }

    else
    {
      v2 = [MEMORY[0x277D75230] _glassButtonConfiguration];
    }

    v3 = v22[0];
    v22[0] = v2;
    v4 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  }

  else
  {
    v5 = [MEMORY[0x277D75230] tintedButtonConfiguration];
    v6 = v22[0];
    v22[0] = v5;
    v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  v11 = [(CPSStyledTextButton *)v23 textButton];
  v10 = [(CPTextButton *)v11 title];
  [v22[0] setTitle:?];
  MEMORY[0x277D82BD8](v10);
  *&v7 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  [v22[0] setTitleLineBreakMode:{4, v7}];
  v14 = MEMORY[0x277D85DD0];
  v15 = -1073741824;
  v16 = 0;
  v17 = __42__CPSStyledTextButton_updateConfiguration__block_invoke;
  v18 = &unk_278D929E0;
  v19 = MEMORY[0x277D82BE0](v23);
  v20 = v21 & 1;
  [v22[0] setTitleTextAttributesTransformer:&v14];
  v13 = [MEMORY[0x277D751C0] clearConfiguration];
  v8 = _UISolariumEnabled();
  v9 = 18.0;
  if ((v8 & 1) == 0)
  {
    v9 = 6.0;
  }

  [v13 setCornerRadius:v9];
  [v13 setBackgroundColorTransformer:?];
  [v22[0] setBackground:v13];
  [(CPSStyledTextButton *)v23 setConfiguration:v22[0]];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(v22, 0);
}

id __42__CPSStyledTextButton_updateConfiguration__block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14[1] = a1;
  v14[0] = [location[0] mutableCopy];
  v12 = [*(a1 + 32) _buttonFont];
  [v14[0] setObject:? forKeyedSubscript:?];
  *&v2 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  if (*(a1 + 40))
  {
    v11 = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
    [v14[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v11);
  }

  else
  {
    v9 = [*(a1 + 32) textButton];
    v10 = [v9 textStyle];
    *&v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    if (v10)
    {
      if (v10 == 1)
      {
        v7 = [MEMORY[0x277D75348] systemRedColor];
        [v14[0] setObject:? forKeyedSubscript:?];
        MEMORY[0x277D82BD8](v7);
      }

      else if (v10 == 2)
      {
        v6 = [MEMORY[0x277D75348] systemGreenColor];
        [v14[0] setObject:? forKeyedSubscript:?];
        MEMORY[0x277D82BD8](v6);
      }
    }

    else
    {
      v8 = [MEMORY[0x277D75348] labelColor];
      [v14[0] setObject:? forKeyedSubscript:?];
      MEMORY[0x277D82BD8](v8);
    }
  }

  v5 = MEMORY[0x277D82BE0](v14[0]);
  objc_storeStrong(v14, 0);
  objc_storeStrong(location, 0);

  return v5;
}

id __42__CPSStyledTextButton_updateConfiguration__block_invoke_2(_BYTE *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (a1[32])
  {
    v6 = [MEMORY[0x277D75348] _carSystemFocusColor];
  }

  else
  {
    v6 = [MEMORY[0x277D75348] _carSystemTertiaryColor];
  }

  objc_storeStrong(location, 0);
  v2 = v6;

  return v2;
}

@end