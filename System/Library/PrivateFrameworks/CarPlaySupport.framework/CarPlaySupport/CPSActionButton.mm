@interface CPSActionButton
- (CGSize)intrinsicContentSize;
- (CPSActionButton)initWithFrame:(CGRect)frame;
- (CPSActionButtonLayoutDelegate)layoutDelegate;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setButtonImage:(id)image;
- (void)setButtonText:(id)text;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setLayoutDelegate:(id)delegate;
- (void)setSelected:(BOOL)selected;
- (void)updateConfiguration;
@end

@implementation CPSActionButton

- (CPSActionButton)initWithFrame:(CGRect)frame
{
  v15[2] = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  v12 = a2;
  v13 = 0;
  v11.receiver = self;
  v11.super_class = CPSActionButton;
  v13 = [(CPUITemplateButton *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v7 = v13;
    v10 = objc_opt_self();
    v15[0] = v10;
    v9 = objc_opt_self();
    v15[1] = v9;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v3 = [CPSActionButton registerForTraitChanges:v7 withAction:"registerForTraitChanges:withAction:"];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    *&v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    [(CPSActionButton *)v13 updateConfiguration];
  }

  v6 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  return v6;
}

- (void)setButtonImage:(id)image
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  if (([(UIImage *)selfCopy->_buttonImage isEqual:location[0]]& 1) == 0)
  {
    objc_storeStrong(&selfCopy->_buttonImage, location[0]);
    [(CPSActionButton *)selfCopy setNeedsUpdateConfiguration];
  }

  objc_storeStrong(location, 0);
}

- (void)setButtonText:(id)text
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, text);
  if (![(NSString *)selfCopy->_buttonText isEqualToString:location[0]])
  {
    objc_storeStrong(&selfCopy->_buttonText, location[0]);
    [(CPSActionButton *)selfCopy setNeedsUpdateConfiguration];
  }

  objc_storeStrong(location, 0);
}

- (void)setLayoutDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_layoutDelegate);
  v3 = location[0];
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained != v3)
  {
    objc_storeWeak(&selfCopy->_layoutDelegate, location[0]);
    [(CPSActionButton *)selfCopy setNeedsUpdateConfiguration];
  }

  objc_storeStrong(location, 0);
}

- (CGSize)intrinsicContentSize
{
  layoutDelegate = [(CPSActionButton *)self layoutDelegate];
  v11 = objc_opt_respondsToSelector();
  *&v2 = MEMORY[0x277D82BD8](layoutDelegate).n128_u64[0];
  if (v11)
  {
    layoutDelegate2 = [(CPSActionButton *)self layoutDelegate];
    [(CPSActionButtonLayoutDelegate *)layoutDelegate2 buttonSize];
    v13 = v3;
    v14 = v4;
    MEMORY[0x277D82BD8](layoutDelegate2);
  }

  else
  {
    CGSizeMake_7();
    v13 = v5;
    v14 = v6;
  }

  v7 = v13;
  v8 = v14;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setEnabled:(BOOL)enabled
{
  selfCopy = self;
  v5 = a2;
  enabledCopy = enabled;
  v3.receiver = self;
  v3.super_class = CPSActionButton;
  [(CPUIButton *)&v3 setEnabled:enabled];
  [(CPSActionButton *)selfCopy setNeedsUpdateConfiguration];
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  v5 = a2;
  selectedCopy = selected;
  v3.receiver = self;
  v3.super_class = CPSActionButton;
  [(CPSActionButton *)&v3 setSelected:selected];
  [(CPSActionButton *)selfCopy setNeedsUpdateConfiguration];
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  v5 = a2;
  highlightedCopy = highlighted;
  v3.receiver = self;
  v3.super_class = CPSActionButton;
  [(CPSActionButton *)&v3 setHighlighted:highlighted];
  [(CPSActionButton *)selfCopy setNeedsUpdateConfiguration];
}

- (void)updateConfiguration
{
  selfCopy = self;
  v45 = a2;
  isSelected = 1;
  if (([(CPSActionButton *)self isFocused]& 1) == 0)
  {
    isSelected = 1;
    if (([(CPSActionButton *)selfCopy isHighlighted]& 1) == 0)
    {
      isSelected = [(CPSActionButton *)selfCopy isSelected];
    }
  }

  v44 = isSelected & 1;
  location = 0;
  v42 = 0;
  layoutDelegate = [(CPSActionButton *)selfCopy layoutDelegate];
  v40 = 0;
  wantsPlainButtonAppearance = 0;
  if (objc_opt_respondsToSelector())
  {
    layoutDelegate2 = [(CPSActionButton *)selfCopy layoutDelegate];
    v40 = 1;
    wantsPlainButtonAppearance = [(CPSActionButtonLayoutDelegate *)layoutDelegate2 wantsPlainButtonAppearance];
  }

  if (v40)
  {
    MEMORY[0x277D82BD8](layoutDelegate2);
  }

  *&v2 = MEMORY[0x277D82BD8](layoutDelegate).n128_u64[0];
  if (wantsPlainButtonAppearance)
  {
    tintedButtonConfiguration = [MEMORY[0x277D75230] tintedButtonConfiguration];
    v4 = location;
    location = tintedButtonConfiguration;
    v5 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    v42 = 1;
  }

  else
  {
    v38 = 0;
    v36 = 0;
    if (v44)
    {
      _tintedGlassButtonConfiguration = [MEMORY[0x277D75230] _tintedGlassButtonConfiguration];
      v38 = 1;
      objc_storeStrong(&location, _tintedGlassButtonConfiguration);
    }

    else
    {
      _glassButtonConfiguration = [MEMORY[0x277D75230] _glassButtonConfiguration];
      v36 = 1;
      objc_storeStrong(&location, _glassButtonConfiguration);
    }

    if (v36)
    {
      v5 = MEMORY[0x277D82BD8](_glassButtonConfiguration).n128_u64[0];
    }

    if (v38)
    {
      v5 = MEMORY[0x277D82BD8](_tintedGlassButtonConfiguration).n128_u64[0];
    }
  }

  buttonImage = [(CPSActionButton *)selfCopy buttonImage];
  [location setImage:?];
  MEMORY[0x277D82BD8](buttonImage);
  v29 = MEMORY[0x277D85DD0];
  v30 = -1073741824;
  v31 = 0;
  v32 = __38__CPSActionButton_updateConfiguration__block_invoke;
  v33 = &unk_278D92E00;
  v34 = MEMORY[0x277D82BE0](selfCopy);
  v35 = v44 & 1;
  [location setImageColorTransformer:&v29];
  buttonText = [(CPSActionButton *)selfCopy buttonText];
  [location setTitle:?];
  *&v6 = MEMORY[0x277D82BD8](buttonText).n128_u64[0];
  v27 = 0;
  v25 = 0;
  if (v44)
  {
    _carSystemFocusLabelColor = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
    v27 = 1;
    v17 = _carSystemFocusLabelColor;
  }

  else
  {
    labelColor = [MEMORY[0x277D75348] labelColor];
    v25 = 1;
    v17 = labelColor;
  }

  [location setBaseBackgroundColor:v17];
  if (v25)
  {
    MEMORY[0x277D82BD8](labelColor);
  }

  if (v27)
  {
    MEMORY[0x277D82BD8](_carSystemFocusLabelColor);
  }

  clearConfiguration = [MEMORY[0x277D751C0] clearConfiguration];
  [(CPSActionButton *)selfCopy intrinsicContentSize];
  v23 = v7 / 2.0;
  layoutDelegate3 = [(CPSActionButton *)selfCopy layoutDelegate];
  v16 = objc_opt_respondsToSelector();
  *&v8 = MEMORY[0x277D82BD8](layoutDelegate3).n128_u64[0];
  if (v16)
  {
    layoutDelegate4 = [(CPSActionButton *)selfCopy layoutDelegate];
    [(CPSActionButtonLayoutDelegate *)layoutDelegate4 buttonRadius];
    v23 = v9;
    MEMORY[0x277D82BD8](layoutDelegate4);
  }

  [clearConfiguration setCornerRadius:v23];
  if (v44)
  {
    _carSystemFocusColor = [MEMORY[0x277D75348] _carSystemFocusColor];
    [clearConfiguration setBackgroundColor:?];
    v10 = MEMORY[0x277D82BD8](_carSystemFocusColor).n128_u64[0];
  }

  else if (v42)
  {
    secondarySystemFillColor = [MEMORY[0x277D75348] secondarySystemFillColor];
    [clearConfiguration setBackgroundColor:?];
    v10 = MEMORY[0x277D82BD8](secondarySystemFillColor).n128_u64[0];
  }

  else
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [clearConfiguration setBackgroundColor:?];
    v10 = MEMORY[0x277D82BD8](clearColor).n128_u64[0];
  }

  [location setBackground:{clearConfiguration, *&v10}];
  [(CPSActionButton *)selfCopy setConfiguration:location];
  objc_storeStrong(&clearConfiguration, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&location, 0);
}

id __38__CPSActionButton_updateConfiguration__block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if ([*(a1 + 32) isEnabled])
  {
    v8 = 0;
    v6 = 0;
    if (*(a1 + 40))
    {
      v9 = [MEMORY[0x277D75348] _carSystemFocusLabelColor];
      v8 = 1;
      v2 = MEMORY[0x277D82BE0](v9);
    }

    else
    {
      v7 = [MEMORY[0x277D75348] labelColor];
      v6 = 1;
      v2 = MEMORY[0x277D82BE0](v7);
    }

    v11 = v2;
    if (v6)
    {
      MEMORY[0x277D82BD8](v7);
    }

    if (v8)
    {
      MEMORY[0x277D82BD8](v9);
    }
  }

  else
  {
    v11 = [MEMORY[0x277D75348] _carSystemTertiaryColor];
  }

  objc_storeStrong(location, 0);
  v3 = v11;

  return v3;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v11 = 0;
  objc_storeStrong(&v11, coordinator);
  v10.receiver = selfCopy;
  v10.super_class = CPSActionButton;
  [(CPSActionButton *)&v10 didUpdateFocusInContext:location[0] withAnimationCoordinator:v11];
  previouslyFocusedItem = [location[0] previouslyFocusedItem];
  v8 = 0;
  v7 = 1;
  if (previouslyFocusedItem != selfCopy)
  {
    nextFocusedItem = [location[0] nextFocusedItem];
    v8 = 1;
    v7 = nextFocusedItem == selfCopy;
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](nextFocusedItem);
  }

  *&v4 = MEMORY[0x277D82BD8](previouslyFocusedItem).n128_u64[0];
  if (v7)
  {
    [(CPSActionButton *)selfCopy setNeedsUpdateConfiguration];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (CPSActionButtonLayoutDelegate)layoutDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_layoutDelegate);

  return WeakRetained;
}

@end