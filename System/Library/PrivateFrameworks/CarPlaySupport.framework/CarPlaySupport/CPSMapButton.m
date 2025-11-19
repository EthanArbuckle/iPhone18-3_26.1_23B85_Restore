@interface CPSMapButton
+ (id)buttonWithCPMapButton:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setButtonFocusedImage:(id)a3;
- (void)setButtonImage:(id)a3;
- (void)updateConfiguration;
@end

@implementation CPSMapButton

+ (id)buttonWithCPMapButton:(id)a3
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21.receiver = v24;
  v21.super_class = &OBJC_METACLASS___CPSMapButton;
  v22 = objc_msgSendSuper2(&v21, sel_buttonWithType_, 0);
  [v22 setMapButton:location[0]];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (v22)
  {
    v15 = v22;
    v16 = [location[0] identifier];
    [v15 setIdentifier:?];
    *&v3 = MEMORY[0x277D82BD8](v16).n128_u64[0];
    v4 = [location[0] isEnabled];
    [v22 setEnabled:v4];
    v5 = [location[0] isHidden];
    [v22 setHidden:v5];
    v18 = [v22 mapButton];
    v17 = [v18 image];
    [v22 setButtonImage:?];
    MEMORY[0x277D82BD8](v17);
    *&v6 = MEMORY[0x277D82BD8](v18).n128_u64[0];
    v20 = [v22 mapButton];
    v19 = [v20 focusedImage];
    [v22 setButtonFocusedImage:?];
    MEMORY[0x277D82BD8](v19);
    *&v7 = MEMORY[0x277D82BD8](v20).n128_u64[0];
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

- (void)setButtonImage:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  CGSizeMake_3();
  v3 = CPUIImageByScalingImageToSize();
  buttonImage = v7->_buttonImage;
  v7->_buttonImage = v3;
  *&v5 = MEMORY[0x277D82BD8](buttonImage).n128_u64[0];
  [(CPSMapButton *)v7 setNeedsUpdateConfiguration];
  objc_storeStrong(location, 0);
}

- (void)setButtonFocusedImage:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = location[0] == 0;
  if (location[0])
  {
    v3 = MEMORY[0x277D82BE0](location[0]);
  }

  else
  {
    v3 = MEMORY[0x277D82BE0](v13->_buttonImage);
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
      v9 = [MEMORY[0x277D75348] _carSystemFocusColor];
      v7 = [v10 _flatImageWithColor:?];
      v8 = v10;
      v10 = v7;
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
    }
  }

  objc_storeStrong(&v13->_buttonFocusedImage, v10);
  v13->_hasFocusedImage = !v11;
  [(CPSMapButton *)v13 setNeedsUpdateConfiguration];
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10.receiver = v13;
  v10.super_class = CPSMapButton;
  [(CPSMapButton *)&v10 didUpdateFocusInContext:location[0] withAnimationCoordinator:v11];
  v6 = [location[0] nextFocusedItem];
  v8 = 0;
  v7 = 1;
  if (v6 != v13)
  {
    v9 = [location[0] previouslyFocusedItem];
    v8 = 1;
    v7 = v9 == v13;
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
  if (v7)
  {
    [(CPSMapButton *)v13 setNeedsUpdateConfiguration];
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)updateConfiguration
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = self;
  v28 = a2;
  v10 = 1;
  if (([(CPSMapButton *)self isFocused]& 1) == 0)
  {
    v10 = 1;
    if (([(CPSMapButton *)v29 isHighlighted]& 1) == 0)
    {
      v10 = [(CPSMapButton *)v29 isSelected];
    }
  }

  v27 = v10 & 1;
  v24 = 0;
  v22 = 0;
  if ((v10 & 1) == 0 || [(CPSMapButton *)v29 hasFocusedImage])
  {
    v23 = [MEMORY[0x277D75230] _glassButtonConfiguration];
    v22 = 1;
    v2 = MEMORY[0x277D82BE0](v23);
  }

  else
  {
    v25 = [MEMORY[0x277D75230] _tintedGlassButtonConfiguration];
    v24 = 1;
    v2 = MEMORY[0x277D82BE0](v25);
  }

  v26 = v2;
  if (v22)
  {
    MEMORY[0x277D82BD8](v23);
  }

  if (v24)
  {
    MEMORY[0x277D82BD8](v25);
  }

  v20 = 0;
  v18 = 0;
  if (([(CPSMapButton *)v29 isFocused]& 1) != 0)
  {
    v21 = [(CPSMapButton *)v29 buttonFocusedImage];
    v20 = 1;
    v9 = v21;
  }

  else
  {
    v19 = [(CPSMapButton *)v29 buttonImage];
    v18 = 1;
    v9 = v19;
  }

  [v26 setImage:v9];
  if (v18)
  {
    MEMORY[0x277D82BD8](v19);
  }

  if (v20)
  {
    MEMORY[0x277D82BD8](v21);
  }

  location = CarPlaySupportGeneralLogging();
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(CPSMapButton *)v29 buttonFocusedImage];
    v7 = [(UIImage *)v8 description];
    v6 = [(CPSMapButton *)v29 buttonImage];
    v5 = [(UIImage *)v6 description];
    __os_log_helper_16_2_2_8_66_8_66(v30, v7, v5);
    _os_log_impl(&dword_242FE8000, location, v16, "CPSMapButton Focused Image: %{public}@ Unfocused Image: %{public}@", v30, 0x16u);
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(&location, 0);
  v15 = [MEMORY[0x277D751C0] clearConfiguration];
  [v15 setCornerRadius:18.0];
  v13 = 0;
  v11 = 0;
  if ((v27 & 1) == 0 || [(CPSMapButton *)v29 hasFocusedImage])
  {
    v12 = [MEMORY[0x277D75348] clearColor];
    v11 = 1;
    v4 = v12;
  }

  else
  {
    v14 = [MEMORY[0x277D75348] _carSystemFocusColor];
    v13 = 1;
    v4 = v14;
  }

  [v15 setBackgroundColor:v4];
  if (v11)
  {
    MEMORY[0x277D82BD8](v12);
  }

  if (v13)
  {
    MEMORY[0x277D82BD8](v14);
  }

  [v26 setBackground:{v15, &v15}];
  [(CPSMapButton *)v29 setConfiguration:v26];
  objc_storeStrong(v3, 0);
  objc_storeStrong(&v26, 0);
}

@end