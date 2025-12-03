@interface CPSMapButton
+ (id)buttonWithCPMapButton:(id)button;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setButtonFocusedImage:(id)image;
- (void)setButtonImage:(id)image;
- (void)updateConfiguration;
@end

@implementation CPSMapButton

+ (id)buttonWithCPMapButton:(id)button
{
  v25[2] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v21.receiver = selfCopy;
  v21.super_class = &OBJC_METACLASS___CPSMapButton;
  v22 = objc_msgSendSuper2(&v21, sel_buttonWithType_, 0);
  [v22 setMapButton:location[0]];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (v22)
  {
    v15 = v22;
    identifier = [location[0] identifier];
    [v15 setIdentifier:?];
    *&v3 = MEMORY[0x277D82BD8](identifier).n128_u64[0];
    isEnabled = [location[0] isEnabled];
    [v22 setEnabled:isEnabled];
    isHidden = [location[0] isHidden];
    [v22 setHidden:isHidden];
    mapButton = [v22 mapButton];
    image = [mapButton image];
    [v22 setButtonImage:?];
    MEMORY[0x277D82BD8](image);
    *&v6 = MEMORY[0x277D82BD8](mapButton).n128_u64[0];
    mapButton2 = [v22 mapButton];
    focusedImage = [mapButton2 focusedImage];
    [v22 setButtonFocusedImage:?];
    MEMORY[0x277D82BD8](focusedImage);
    *&v7 = MEMORY[0x277D82BD8](mapButton2).n128_u64[0];
    [v22 updateConfiguration];
  }

  v10 = v22;
  v13 = objc_opt_self();
  v25[0] = v13;
  v12 = objc_opt_self();
  v25[1] = v12;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v8 = [v10 registerForTraitChanges:? withAction:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v14 = MEMORY[0x277D82BE0](v22);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);

  return v14;
}

- (void)setButtonImage:(id)image
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  CGSizeMake_3();
  v3 = CPUIImageByScalingImageToSize();
  buttonImage = selfCopy->_buttonImage;
  selfCopy->_buttonImage = v3;
  *&v5 = MEMORY[0x277D82BD8](buttonImage).n128_u64[0];
  [(CPSMapButton *)selfCopy setNeedsUpdateConfiguration];
  objc_storeStrong(location, 0);
}

- (void)setButtonFocusedImage:(id)image
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, image);
  v11 = location[0] == 0;
  if (location[0])
  {
    v3 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v3 = MEMORY[0x277D82BE0](selfCopy->_buttonImage);
  }

  v10 = v3;
  if (v3)
  {
    CGSizeMake_3();
    v4 = CPUIImageByScalingImageToSize();
    v5 = v10;
    v10 = v4;
    *&v6 = MEMORY[0x277D82BD8](v5).n128_u64[0];
    if (v11)
    {
      _carSystemFocusColor = [MEMORY[0x277D75348] _carSystemFocusColor];
      v7 = [v10 _flatImageWithColor:?];
      v8 = v10;
      v10 = v7;
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](_carSystemFocusColor);
    }
  }

  objc_storeStrong(&selfCopy->_buttonFocusedImage, v10);
  selfCopy->_hasFocusedImage = !v11;
  [(CPSMapButton *)selfCopy setNeedsUpdateConfiguration];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
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
  v10.super_class = CPSMapButton;
  [(CPSMapButton *)&v10 didUpdateFocusInContext:location[0] withAnimationCoordinator:v11];
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
    [(CPSMapButton *)selfCopy setNeedsUpdateConfiguration];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)updateConfiguration
{
  v31 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v28 = a2;
  isSelected = 1;
  if (([(CPSMapButton *)self isFocused]& 1) == 0)
  {
    isSelected = 1;
    if (([(CPSMapButton *)selfCopy isHighlighted]& 1) == 0)
    {
      isSelected = [(CPSMapButton *)selfCopy isSelected];
    }
  }

  v27 = isSelected & 1;
  v24 = 0;
  v22 = 0;
  if ((isSelected & 1) == 0 || [(CPSMapButton *)selfCopy hasFocusedImage])
  {
    _glassButtonConfiguration = [MEMORY[0x277D75230] _glassButtonConfiguration];
    v22 = 1;
    v2 = MEMORY[0x277D82BE0](_glassButtonConfiguration);
  }

  else
  {
    _tintedGlassButtonConfiguration = [MEMORY[0x277D75230] _tintedGlassButtonConfiguration];
    v24 = 1;
    v2 = MEMORY[0x277D82BE0](_tintedGlassButtonConfiguration);
  }

  v26 = v2;
  if (v22)
  {
    MEMORY[0x277D82BD8](_glassButtonConfiguration);
  }

  if (v24)
  {
    MEMORY[0x277D82BD8](_tintedGlassButtonConfiguration);
  }

  v20 = 0;
  v18 = 0;
  if (([(CPSMapButton *)selfCopy isFocused]& 1) != 0)
  {
    buttonFocusedImage = [(CPSMapButton *)selfCopy buttonFocusedImage];
    v20 = 1;
    v9 = buttonFocusedImage;
  }

  else
  {
    buttonImage = [(CPSMapButton *)selfCopy buttonImage];
    v18 = 1;
    v9 = buttonImage;
  }

  [v26 setImage:v9];
  if (v18)
  {
    MEMORY[0x277D82BD8](buttonImage);
  }

  if (v20)
  {
    MEMORY[0x277D82BD8](buttonFocusedImage);
  }

  location = CarPlaySupportGeneralLogging();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    buttonFocusedImage2 = [(CPSMapButton *)selfCopy buttonFocusedImage];
    v7 = [(UIImage *)buttonFocusedImage2 description];
    buttonImage2 = [(CPSMapButton *)selfCopy buttonImage];
    v5 = [(UIImage *)buttonImage2 description];
    __os_log_helper_16_2_2_8_66_8_66(v30, v7, v5);
    _os_log_impl(&dword_242FE8000, location, v16, "CPSMapButton Focused Image: %{public}@ Unfocused Image: %{public}@", v30, 0x16u);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](buttonImage2);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](buttonFocusedImage2);
  }

  objc_storeStrong(&location, 0);
  clearConfiguration = [MEMORY[0x277D751C0] clearConfiguration];
  [clearConfiguration setCornerRadius:18.0];
  v13 = 0;
  v11 = 0;
  if ((v27 & 1) == 0 || [(CPSMapButton *)selfCopy hasFocusedImage])
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    v11 = 1;
    v4 = clearColor;
  }

  else
  {
    _carSystemFocusColor = [MEMORY[0x277D75348] _carSystemFocusColor];
    v13 = 1;
    v4 = _carSystemFocusColor;
  }

  [clearConfiguration setBackgroundColor:v4];
  if (v11)
  {
    MEMORY[0x277D82BD8](clearColor);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](_carSystemFocusColor);
  }

  [v26 setBackground:{clearConfiguration, &clearConfiguration}];
  [(CPSMapButton *)selfCopy setConfiguration:v26];
  objc_storeStrong(v3, 0);
  objc_storeStrong(&v26, 0);
}

@end