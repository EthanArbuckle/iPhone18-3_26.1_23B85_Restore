@interface CPSStyledTextButton
+ (id)buttonWithTextButton:(id)button;
- (id)_buttonFont;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setWantsGlass:(BOOL)glass;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConfiguration;
@end

@implementation CPSStyledTextButton

+ (id)buttonWithTextButton:(id)button
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v6 = [objc_opt_class() buttonWithType:0];
  if (v6)
  {
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setTextButton:location[0]];
    [v6 setEnabled:{objc_msgSend(location[0], "isEnabled")}];
    identifier = [location[0] identifier];
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
  fontOverride = [(CPSStyledTextButton *)self fontOverride];
  *&v2 = MEMORY[0x277D82BD8](fontOverride).n128_u64[0];
  if (fontOverride)
  {
    fontOverride2 = [(CPSStyledTextButton *)self fontOverride];
  }

  else
  {
    fontOverride2 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] weight:*MEMORY[0x277D743F8]];
  }

  return fontOverride2;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v10 = 0;
  objc_storeStrong(&v10, coordinator);
  nextFocusedItem = [location[0] nextFocusedItem];
  v8 = 0;
  v7 = 1;
  if (nextFocusedItem != selfCopy)
  {
    previouslyFocusedItem = [location[0] previouslyFocusedItem];
    v8 = 1;
    v7 = previouslyFocusedItem == selfCopy;
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](previouslyFocusedItem);
  }

  *&v4 = MEMORY[0x277D82BD8](nextFocusedItem).n128_u64[0];
  if (v7)
  {
    [(CPSStyledTextButton *)selfCopy setNeedsUpdateConfiguration];
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
  v3.receiver = selfCopy;
  v3.super_class = CPSStyledTextButton;
  [(CPUIButton *)&v3 traitCollectionDidChange:location[0]];
  [(CPSStyledTextButton *)selfCopy setNeedsUpdateConfiguration];
  objc_storeStrong(location, 0);
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  v5 = a2;
  selectedCopy = selected;
  v3.receiver = self;
  v3.super_class = CPSStyledTextButton;
  [(CPSStyledTextButton *)&v3 setSelected:selected];
  [(CPSStyledTextButton *)selfCopy setNeedsUpdateConfiguration];
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  v5 = a2;
  highlightedCopy = highlighted;
  v3.receiver = self;
  v3.super_class = CPSStyledTextButton;
  [(CPSStyledTextButton *)&v3 setHighlighted:highlighted];
  [(CPSStyledTextButton *)selfCopy setNeedsUpdateConfiguration];
}

- (void)setWantsGlass:(BOOL)glass
{
  if (self->_wantsGlass != glass)
  {
    self->_wantsGlass = glass;
    [(CPSStyledTextButton *)self setNeedsUpdateConfiguration];
  }
}

- (void)updateConfiguration
{
  selfCopy = self;
  v22[1] = a2;
  v22[0] = 0;
  isSelected = 1;
  if (([(CPSStyledTextButton *)self isFocused]& 1) == 0)
  {
    isSelected = 1;
    if (([(CPSStyledTextButton *)selfCopy isHighlighted]& 1) == 0)
    {
      isSelected = [(CPSStyledTextButton *)selfCopy isSelected];
    }
  }

  v21 = isSelected & 1;
  if ((_UISolariumEnabled() & 1) != 0 && [(CPSStyledTextButton *)selfCopy wantsGlass])
  {
    if (v21)
    {
      _tintedGlassButtonConfiguration = [MEMORY[0x277D75230] _tintedGlassButtonConfiguration];
    }

    else
    {
      _tintedGlassButtonConfiguration = [MEMORY[0x277D75230] _glassButtonConfiguration];
    }

    v3 = v22[0];
    v22[0] = _tintedGlassButtonConfiguration;
    v4 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  }

  else
  {
    tintedButtonConfiguration = [MEMORY[0x277D75230] tintedButtonConfiguration];
    v6 = v22[0];
    v22[0] = tintedButtonConfiguration;
    v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  }

  textButton = [(CPSStyledTextButton *)selfCopy textButton];
  title = [(CPTextButton *)textButton title];
  [v22[0] setTitle:?];
  MEMORY[0x277D82BD8](title);
  *&v7 = MEMORY[0x277D82BD8](textButton).n128_u64[0];
  [v22[0] setTitleLineBreakMode:{4, v7}];
  v14 = MEMORY[0x277D85DD0];
  v15 = -1073741824;
  v16 = 0;
  v17 = __42__CPSStyledTextButton_updateConfiguration__block_invoke;
  v18 = &unk_278D929E0;
  v19 = MEMORY[0x277D82BE0](selfCopy);
  v20 = v21 & 1;
  [v22[0] setTitleTextAttributesTransformer:&v14];
  clearConfiguration = [MEMORY[0x277D751C0] clearConfiguration];
  v8 = _UISolariumEnabled();
  v9 = 18.0;
  if ((v8 & 1) == 0)
  {
    v9 = 6.0;
  }

  [clearConfiguration setCornerRadius:v9];
  [clearConfiguration setBackgroundColorTransformer:?];
  [v22[0] setBackground:clearConfiguration];
  [(CPSStyledTextButton *)selfCopy setConfiguration:v22[0]];
  objc_storeStrong(&clearConfiguration, 0);
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