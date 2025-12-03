@interface DBHomeButton
- (DBHomeButton)initWithFrame:(CGRect)frame;
- (UIColor)buttonColor;
- (UIColor)focusedButtonColor;
- (double)_opacityForCurrentState;
- (void)_setupImagesIfNecessary;
- (void)_traitEnvironmentDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_updateCompositingFilter;
- (void)_updateDisplayStateAnimated:(BOOL)animated;
- (void)_updateViewOpacity;
- (void)_updateViewVisibilities;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setDisplayState:(unint64_t)state;
- (void)setPressed:(BOOL)pressed;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation DBHomeButton

- (void)_updateCompositingFilter
{
  focusedImageView = [(DBHomeButton *)self focusedImageView];
  layer = [focusedImageView layer];
  [layer setCompositingFilter:0];
}

- (void)_updateViewOpacity
{
  [(DBHomeButton *)self _opacityForCurrentState];

  [(DBHomeButton *)self setAlpha:?];
}

- (UIColor)buttonColor
{
  if ([(DBHomeButton *)self isPressed])
  {
    [MEMORY[0x277D75348] tertiaryLabelColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v2 = ;

  return v2;
}

- (UIColor)focusedButtonColor
{
  traitCollection = [(DBHomeButton *)self traitCollection];
  wallpaperAppearanceType = [traitCollection wallpaperAppearanceType];

  if (wallpaperAppearanceType == 2)
  {
    _carSystemFocusColor = [MEMORY[0x277D75348] _carSystemFocusColor];
  }

  else
  {
    traitCollection2 = [(DBHomeButton *)self traitCollection];
    userInterfaceStyle = [traitCollection2 userInterfaceStyle];

    if (userInterfaceStyle == 1)
    {
      [MEMORY[0x277D75348] systemBlackColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemWhiteColor];
    }
    _carSystemFocusColor = ;
  }

  return _carSystemFocusColor;
}

- (double)_opacityForCurrentState
{
  v3 = 1.0;
  if ([(DBHomeButton *)self displayState]!= 2)
  {
    traitCollection = [(DBHomeButton *)self traitCollection];
    wallpaperAppearanceType = [traitCollection wallpaperAppearanceType];

    traitCollection2 = [(DBHomeButton *)self traitCollection];
    userInterfaceStyle = [traitCollection2 userInterfaceStyle];

    LODWORD(traitCollection2) = [(DBHomeButton *)self isFocused];
    isPressed = [(DBHomeButton *)self isPressed];
    if (traitCollection2)
    {
      if (!isPressed)
      {
        v9 = 0.7;
        if (userInterfaceStyle == 1)
        {
          v9 = 0.5;
        }

        v10 = wallpaperAppearanceType == 2;
        v11 = 1.0;
LABEL_11:
        if (v10)
        {
          return v11;
        }

        else
        {
          return v9;
        }
      }
    }

    else if (!isPressed)
    {
      return v3;
    }

    v9 = 0.2;
    if (userInterfaceStyle != 1)
    {
      v9 = 0.25;
    }

    v10 = wallpaperAppearanceType == 2;
    v11 = 0.3;
    goto LABEL_11;
  }

  return v3;
}

- (DBHomeButton)initWithFrame:(CGRect)frame
{
  v70[14] = *MEMORY[0x277D85DE8];
  v68.receiver = self;
  v68.super_class = DBHomeButton;
  v3 = [(DBHomeButton *)&v68 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(DBHomeButton *)v3 setAccessibilityIdentifier:@"CARStatusBarHomeButton"];
    layer = [(DBHomeButton *)v4 layer];
    [layer setAllowsGroupBlending:0];

    v6 = objc_alloc(MEMORY[0x277D755E8]);
    v7 = *MEMORY[0x277CBF3A0];
    v8 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v10 = *(MEMORY[0x277CBF3A0] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], v8, v9, v10}];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 setContentMode:4];
    [(DBHomeButton *)v4 addSubview:v11];
    objc_storeStrong(&v4->_imageView, v11);
    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v7, v8, v9, v10}];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v12 setContentMode:4];
    [v12 setHidden:1];
    [(DBHomeButton *)v4 addSubview:v12];
    v13 = v12;
    objc_storeStrong(&v4->_focusedImageView, v12);
    v14 = objc_alloc_init(_TtC9DashBoard28DBElevatedStatusBarCloseView);
    elevatedClosePunchthroughView = v4->_elevatedClosePunchthroughView;
    v4->_elevatedClosePunchthroughView = v14;

    [(DBElevatedStatusBarCloseView *)v4->_elevatedClosePunchthroughView setUserInteractionEnabled:0];
    elevatedClosePunchthroughView = [(DBHomeButton *)v4 elevatedClosePunchthroughView];
    [elevatedClosePunchthroughView setTranslatesAutoresizingMaskIntoConstraints:0];

    elevatedClosePunchthroughView2 = [(DBHomeButton *)v4 elevatedClosePunchthroughView];
    [elevatedClosePunchthroughView2 setHidden:1];

    elevatedClosePunchthroughView3 = [(DBHomeButton *)v4 elevatedClosePunchthroughView];
    [(DBHomeButton *)v4 addSubview:elevatedClosePunchthroughView3];

    v48 = MEMORY[0x277CCAAD0];
    widthAnchor = [(DBHomeButton *)v4 widthAnchor];
    v65 = [widthAnchor constraintEqualToConstant:45.0];
    v70[0] = v65;
    heightAnchor = [(DBHomeButton *)v4 heightAnchor];
    v63 = [heightAnchor constraintEqualToConstant:45.0];
    v70[1] = v63;
    widthAnchor2 = [v11 widthAnchor];
    widthAnchor3 = [(DBHomeButton *)v4 widthAnchor];
    v60 = [widthAnchor2 constraintEqualToAnchor:widthAnchor3];
    v70[2] = v60;
    heightAnchor2 = [v11 heightAnchor];
    heightAnchor3 = [(DBHomeButton *)v4 heightAnchor];
    v56 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    v70[3] = v56;
    v66 = v11;
    centerXAnchor = [v11 centerXAnchor];
    centerXAnchor2 = [(DBHomeButton *)v4 centerXAnchor];
    v53 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v70[4] = v53;
    centerYAnchor = [v11 centerYAnchor];
    centerYAnchor2 = [(DBHomeButton *)v4 centerYAnchor];
    v50 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v70[5] = v50;
    widthAnchor4 = [v13 widthAnchor];
    widthAnchor5 = [(DBHomeButton *)v4 widthAnchor];
    v46 = [widthAnchor4 constraintEqualToAnchor:widthAnchor5];
    v70[6] = v46;
    heightAnchor4 = [v13 heightAnchor];
    heightAnchor5 = [(DBHomeButton *)v4 heightAnchor];
    v43 = [heightAnchor4 constraintEqualToAnchor:heightAnchor5];
    v70[7] = v43;
    v58 = v13;
    centerXAnchor3 = [v13 centerXAnchor];
    centerXAnchor4 = [(DBHomeButton *)v4 centerXAnchor];
    v40 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
    v70[8] = v40;
    centerYAnchor3 = [v13 centerYAnchor];
    centerYAnchor4 = [(DBHomeButton *)v4 centerYAnchor];
    v37 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v70[9] = v37;
    elevatedClosePunchthroughView4 = [(DBHomeButton *)v4 elevatedClosePunchthroughView];
    widthAnchor6 = [elevatedClosePunchthroughView4 widthAnchor];
    v34 = [widthAnchor6 constraintEqualToConstant:22.0];
    v70[10] = v34;
    elevatedClosePunchthroughView5 = [(DBHomeButton *)v4 elevatedClosePunchthroughView];
    heightAnchor6 = [elevatedClosePunchthroughView5 heightAnchor];
    v31 = [heightAnchor6 constraintEqualToConstant:22.0];
    v70[11] = v31;
    elevatedClosePunchthroughView6 = [(DBHomeButton *)v4 elevatedClosePunchthroughView];
    centerXAnchor5 = [elevatedClosePunchthroughView6 centerXAnchor];
    centerXAnchor6 = [(DBHomeButton *)v4 centerXAnchor];
    v22 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
    v70[12] = v22;
    elevatedClosePunchthroughView7 = [(DBHomeButton *)v4 elevatedClosePunchthroughView];
    centerYAnchor5 = [elevatedClosePunchthroughView7 centerYAnchor];
    centerYAnchor6 = [(DBHomeButton *)v4 centerYAnchor];
    v26 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v70[13] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:14];
    [v48 activateConstraints:v27];

    [(DBHomeButton *)v4 _setupImagesIfNecessary];
    v69[0] = objc_opt_class();
    v69[1] = objc_opt_class();
    v69[2] = objc_opt_class();
    v69[3] = objc_opt_class();
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:4];
    v29 = [(DBHomeButton *)v4 registerForTraitChanges:v28 withTarget:v4 action:sel__traitEnvironmentDidChange_previousTraitCollection_];
  }

  return v4;
}

- (void)_traitEnvironmentDidChange:(id)change previousTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(DBHomeButton *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  if (userInterfaceIdiom != [collectionCopy userInterfaceIdiom])
  {

    goto LABEL_5;
  }

  traitCollection2 = [(DBHomeButton *)self traitCollection];
  [traitCollection2 displayScale];
  v9 = v8;
  [collectionCopy displayScale];
  v11 = v10;

  if (v9 != v11)
  {
LABEL_5:
    [(DBHomeButton *)self setNeedsImageUpdates:1];
  }

  [(DBHomeButton *)self _setupImagesIfNecessary];
  [(DBHomeButton *)self _updateDisplayStateAnimated:0];
  traitCollection3 = [(DBHomeButton *)self traitCollection];
  wallpaperAppearanceType = [traitCollection3 wallpaperAppearanceType];
  wallpaperAppearanceType2 = [collectionCopy wallpaperAppearanceType];

  if (wallpaperAppearanceType != wallpaperAppearanceType2)
  {
    [(DBHomeButton *)self _updateViewVisibilities];
    [(DBHomeButton *)self _updateViewOpacity];
  }
}

- (void)_setupImagesIfNecessary
{
  traitCollection = [(DBHomeButton *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 3)
  {
    iconsImage = [(DBHomeButton *)self iconsImage];
    if (iconsImage)
    {
      v4 = iconsImage;
      needsImageUpdates = [(DBHomeButton *)self needsImageUpdates];

      if (!needsImageUpdates)
      {
        return;
      }
    }

    else
    {
    }

    v6 = MEMORY[0x277D755B8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    traitCollection2 = [(DBHomeButton *)self traitCollection];
    v9 = [v6 imageNamed:@"CarStatusBarIconsHomeButton" inBundle:v7 compatibleWithTraitCollection:traitCollection2];
    [(DBHomeButton *)self setIconsImage:v9];

    v10 = MEMORY[0x277D755B8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    traitCollection3 = [(DBHomeButton *)self traitCollection];
    v13 = [v10 imageNamed:@"CarStatusBarDashboardHomeButton" inBundle:v11 compatibleWithTraitCollection:traitCollection3];
    [(DBHomeButton *)self setDashboardImage:v13];

    v14 = MEMORY[0x277D755B8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    traitCollection4 = [(DBHomeButton *)self traitCollection];
    v17 = [v14 imageNamed:@"CarStatusBarIconsHomeButtonFocused" inBundle:v15 compatibleWithTraitCollection:traitCollection4];
    [(DBHomeButton *)self setIconsFocusedImage:v17];

    v18 = MEMORY[0x277D755B8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    traitCollection5 = [(DBHomeButton *)self traitCollection];
    v21 = [v18 imageNamed:@"CarStatusBarDashboardHomeButtonFocused" inBundle:v19 compatibleWithTraitCollection:traitCollection5];
    [(DBHomeButton *)self setDashboardFocusedImage:v21];

    [(DBHomeButton *)self _updateDisplayStateAnimated:0];
  }

  else
  {
  }
}

- (void)_updateDisplayStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v38[1] = *MEMORY[0x277D85DE8];
  iconsImage = [(DBHomeButton *)self iconsImage];
  iconsFocusedImage = [(DBHomeButton *)self iconsFocusedImage];
  if ([(DBHomeButton *)self displayState]== 1)
  {
    dashboardImage = [(DBHomeButton *)self dashboardImage];

    dashboardFocusedImage = [(DBHomeButton *)self dashboardFocusedImage];

    [(DBHomeButton *)self setAccessibilityLabel:@"CarStatusBarDashboardHomeButton"];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v10 = [v9 localizedStringForKey:@"DASHBOARD" value:&stru_285A57218 table:@"CarPlayApp"];
    v38[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    [(DBHomeButton *)self setAccessibilityUserInputLabels:v11];

    iconsImage = dashboardImage;
    iconsFocusedImage = dashboardFocusedImage;
  }

  else if ([(DBHomeButton *)self displayState])
  {
    if ([(DBHomeButton *)self displayState]== 2)
    {

      elevatedClosePunchthroughView = [(DBHomeButton *)self elevatedClosePunchthroughView];
      [elevatedClosePunchthroughView setAlpha:0.0];

      elevatedClosePunchthroughView2 = [(DBHomeButton *)self elevatedClosePunchthroughView];
      [elevatedClosePunchthroughView2 setHidden:0];

      iconsImage = 0;
      iconsFocusedImage = 0;
    }
  }

  else
  {
    [(DBHomeButton *)self setAccessibilityLabel:@"CarStatusBarIconsHomeButton"];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v15 = [v14 localizedStringForKey:@"APPS" value:&stru_285A57218 table:@"CarPlayApp"];
    v37 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
    [(DBHomeButton *)self setAccessibilityUserInputLabels:v16];
  }

  buttonColor = [(DBHomeButton *)self buttonColor];
  v18 = [iconsImage imageWithTintColor:buttonColor];

  focusedButtonColor = [(DBHomeButton *)self focusedButtonColor];
  v20 = [iconsFocusedImage imageWithTintColor:focusedButtonColor];

  if (animatedCopy)
  {
    v21 = MEMORY[0x277D75D18];
    imageView = [(DBHomeButton *)self imageView];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __44__DBHomeButton__updateDisplayStateAnimated___block_invoke;
    v35[3] = &unk_278F014B8;
    v35[4] = self;
    v36 = v18;
    [v21 transitionWithView:imageView duration:5242880 options:v35 animations:0 completion:0.4];

    v23 = MEMORY[0x277D75D18];
    focusedImageView = [(DBHomeButton *)self focusedImageView];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __44__DBHomeButton__updateDisplayStateAnimated___block_invoke_2;
    v33[3] = &unk_278F014B8;
    v33[4] = self;
    v34 = v20;
    [v23 transitionWithView:focusedImageView duration:5242880 options:v33 animations:0 completion:0.4];

    v31[4] = self;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __44__DBHomeButton__updateDisplayStateAnimated___block_invoke_3;
    v32[3] = &unk_278F01580;
    v32[4] = self;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __44__DBHomeButton__updateDisplayStateAnimated___block_invoke_4;
    v31[3] = &unk_278F01690;
    [MEMORY[0x277D75D18] animateWithDuration:v32 animations:v31 completion:0.4];
  }

  else
  {
    imageView2 = [(DBHomeButton *)self imageView];
    [imageView2 setImage:v18];

    focusedImageView2 = [(DBHomeButton *)self focusedImageView];
    [focusedImageView2 setImage:v20];

    elevatedClosePunchthroughView3 = [(DBHomeButton *)self elevatedClosePunchthroughView];
    displayState = [(DBHomeButton *)self displayState];
    v29 = 0.0;
    if (displayState == 2)
    {
      v29 = 1.0;
    }

    [elevatedClosePunchthroughView3 setAlpha:v29];

    elevatedClosePunchthroughView4 = [(DBHomeButton *)self elevatedClosePunchthroughView];
    [elevatedClosePunchthroughView4 setHidden:{-[DBHomeButton displayState](self, "displayState") != 2}];

    [(DBHomeButton *)self _updateCompositingFilter];
    [(DBHomeButton *)self _updateViewOpacity];
  }
}

void __44__DBHomeButton__updateDisplayStateAnimated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) imageView];
  [v2 setImage:*(a1 + 40)];
}

uint64_t __44__DBHomeButton__updateDisplayStateAnimated___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) focusedImageView];
  [v2 setImage:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _updateCompositingFilter];
}

uint64_t __44__DBHomeButton__updateDisplayStateAnimated___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) elevatedClosePunchthroughView];
  v3 = [*(a1 + 32) displayState];
  v4 = 0.0;
  if (v3 == 2)
  {
    v4 = 1.0;
  }

  [v2 setAlpha:v4];

  v5 = *(a1 + 32);

  return [v5 _updateViewOpacity];
}

void __44__DBHomeButton__updateDisplayStateAnimated___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) elevatedClosePunchthroughView];
  [v2 setHidden:{objc_msgSend(*(a1 + 32), "displayState") != 2}];
}

- (void)_updateViewVisibilities
{
  isFocused = [(DBHomeButton *)self isFocused];
  imageView = [(DBHomeButton *)self imageView];
  [imageView setHidden:isFocused];

  LODWORD(isFocused) = [(DBHomeButton *)self isFocused];
  focusedImageView = [(DBHomeButton *)self focusedImageView];
  [focusedImageView setHidden:isFocused ^ 1];
}

- (void)setDisplayState:(unint64_t)state
{
  if (self->_displayState != state)
  {
    self->_displayState = state;
    v5 = !UIAccessibilityIsReduceMotionEnabled();

    [(DBHomeButton *)self _updateDisplayStateAnimated:v5];
  }
}

- (void)setPressed:(BOOL)pressed
{
  if (self->_pressed != pressed)
  {
    self->_pressed = pressed;
    [(DBHomeButton *)self _updateViewOpacity];
    pressed = self->_pressed;
    elevatedClosePunchthroughView = [(DBHomeButton *)self elevatedClosePunchthroughView];
    [elevatedClosePunchthroughView setIsPressed:pressed];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v7.receiver = self;
  v7.super_class = DBHomeButton;
  [(DBHomeButton *)&v7 didUpdateFocusInContext:context withAnimationCoordinator:coordinator];
  [(DBHomeButton *)self _updateDisplayStateAnimated:0];
  [(DBHomeButton *)self _updateViewVisibilities];
  isFocused = [(DBHomeButton *)self isFocused];
  elevatedClosePunchthroughView = [(DBHomeButton *)self elevatedClosePunchthroughView];
  [elevatedClosePunchthroughView setShowFocusedState:isFocused];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = DBHomeButton;
  beganCopy = began;
  [(DBHomeButton *)&v9 touchesBegan:beganCopy withEvent:event];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___DBTouchesContainsTouchType_block_invoke;
  v10[3] = &__block_descriptor_40_e21_B24__0__UITouch_8_B16l;
  v10[4] = 0;
  v7 = [beganCopy objectsPassingTest:v10];

  v8 = [v7 count];
  if (v8)
  {
    [(DBHomeButton *)self setPressed:1];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = DBHomeButton;
  [(DBHomeButton *)&v5 touchesEnded:ended withEvent:event];
  [(DBHomeButton *)self setPressed:0];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = DBHomeButton;
  [(DBHomeButton *)&v5 touchesCancelled:cancelled withEvent:event];
  [(DBHomeButton *)self setPressed:0];
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = DBHomeButton;
  beganCopy = began;
  [(DBHomeButton *)&v9 pressesBegan:beganCopy withEvent:event];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___DBPressesContainsPressType_block_invoke_0;
  v10[3] = &__block_descriptor_40_e21_B24__0__UIPress_8_B16l;
  v10[4] = 4;
  v7 = [beganCopy objectsPassingTest:v10];

  v8 = [v7 count];
  if (v8)
  {
    [(DBHomeButton *)self sendActionsForControlEvents:0x1000000];
    [(DBHomeButton *)self setPressed:1];
  }
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = DBHomeButton;
  endedCopy = ended;
  [(DBHomeButton *)&v9 pressesEnded:endedCopy withEvent:event];
  [(DBHomeButton *)self setPressed:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___DBPressesContainsPressType_block_invoke_0;
  v10[3] = &__block_descriptor_40_e21_B24__0__UIPress_8_B16l;
  v10[4] = 4;
  v7 = [endedCopy objectsPassingTest:v10];

  v8 = [v7 count];
  if (v8)
  {
    [(DBHomeButton *)self sendActionsForControlEvents:0x2000000];
  }
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = DBHomeButton;
  [(DBHomeButton *)&v5 pressesCancelled:cancelled withEvent:event];
  [(DBHomeButton *)self setPressed:0];
}

@end