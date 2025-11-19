@interface DBHomeButton
- (DBHomeButton)initWithFrame:(CGRect)a3;
- (UIColor)buttonColor;
- (UIColor)focusedButtonColor;
- (double)_opacityForCurrentState;
- (void)_setupImagesIfNecessary;
- (void)_traitEnvironmentDidChange:(id)a3 previousTraitCollection:(id)a4;
- (void)_updateCompositingFilter;
- (void)_updateDisplayStateAnimated:(BOOL)a3;
- (void)_updateViewOpacity;
- (void)_updateViewVisibilities;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setDisplayState:(unint64_t)a3;
- (void)setPressed:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation DBHomeButton

- (void)_updateCompositingFilter
{
  v3 = [(DBHomeButton *)self focusedImageView];
  v2 = [v3 layer];
  [v2 setCompositingFilter:0];
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
  v3 = [(DBHomeButton *)self traitCollection];
  v4 = [v3 wallpaperAppearanceType];

  if (v4 == 2)
  {
    v5 = [MEMORY[0x277D75348] _carSystemFocusColor];
  }

  else
  {
    v6 = [(DBHomeButton *)self traitCollection];
    v7 = [v6 userInterfaceStyle];

    if (v7 == 1)
    {
      [MEMORY[0x277D75348] systemBlackColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemWhiteColor];
    }
    v5 = ;
  }

  return v5;
}

- (double)_opacityForCurrentState
{
  v3 = 1.0;
  if ([(DBHomeButton *)self displayState]!= 2)
  {
    v4 = [(DBHomeButton *)self traitCollection];
    v5 = [v4 wallpaperAppearanceType];

    v6 = [(DBHomeButton *)self traitCollection];
    v7 = [v6 userInterfaceStyle];

    LODWORD(v6) = [(DBHomeButton *)self isFocused];
    v8 = [(DBHomeButton *)self isPressed];
    if (v6)
    {
      if (!v8)
      {
        v9 = 0.7;
        if (v7 == 1)
        {
          v9 = 0.5;
        }

        v10 = v5 == 2;
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

    else if (!v8)
    {
      return v3;
    }

    v9 = 0.2;
    if (v7 != 1)
    {
      v9 = 0.25;
    }

    v10 = v5 == 2;
    v11 = 0.3;
    goto LABEL_11;
  }

  return v3;
}

- (DBHomeButton)initWithFrame:(CGRect)a3
{
  v70[14] = *MEMORY[0x277D85DE8];
  v68.receiver = self;
  v68.super_class = DBHomeButton;
  v3 = [(DBHomeButton *)&v68 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(DBHomeButton *)v3 setAccessibilityIdentifier:@"CARStatusBarHomeButton"];
    v5 = [(DBHomeButton *)v4 layer];
    [v5 setAllowsGroupBlending:0];

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
    v16 = [(DBHomeButton *)v4 elevatedClosePunchthroughView];
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

    v17 = [(DBHomeButton *)v4 elevatedClosePunchthroughView];
    [v17 setHidden:1];

    v18 = [(DBHomeButton *)v4 elevatedClosePunchthroughView];
    [(DBHomeButton *)v4 addSubview:v18];

    v48 = MEMORY[0x277CCAAD0];
    v67 = [(DBHomeButton *)v4 widthAnchor];
    v65 = [v67 constraintEqualToConstant:45.0];
    v70[0] = v65;
    v64 = [(DBHomeButton *)v4 heightAnchor];
    v63 = [v64 constraintEqualToConstant:45.0];
    v70[1] = v63;
    v62 = [v11 widthAnchor];
    v61 = [(DBHomeButton *)v4 widthAnchor];
    v60 = [v62 constraintEqualToAnchor:v61];
    v70[2] = v60;
    v59 = [v11 heightAnchor];
    v57 = [(DBHomeButton *)v4 heightAnchor];
    v56 = [v59 constraintEqualToAnchor:v57];
    v70[3] = v56;
    v66 = v11;
    v55 = [v11 centerXAnchor];
    v54 = [(DBHomeButton *)v4 centerXAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v70[4] = v53;
    v52 = [v11 centerYAnchor];
    v51 = [(DBHomeButton *)v4 centerYAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v70[5] = v50;
    v49 = [v13 widthAnchor];
    v47 = [(DBHomeButton *)v4 widthAnchor];
    v46 = [v49 constraintEqualToAnchor:v47];
    v70[6] = v46;
    v45 = [v13 heightAnchor];
    v44 = [(DBHomeButton *)v4 heightAnchor];
    v43 = [v45 constraintEqualToAnchor:v44];
    v70[7] = v43;
    v58 = v13;
    v42 = [v13 centerXAnchor];
    v41 = [(DBHomeButton *)v4 centerXAnchor];
    v40 = [v42 constraintEqualToAnchor:v41];
    v70[8] = v40;
    v39 = [v13 centerYAnchor];
    v38 = [(DBHomeButton *)v4 centerYAnchor];
    v37 = [v39 constraintEqualToAnchor:v38];
    v70[9] = v37;
    v36 = [(DBHomeButton *)v4 elevatedClosePunchthroughView];
    v35 = [v36 widthAnchor];
    v34 = [v35 constraintEqualToConstant:22.0];
    v70[10] = v34;
    v33 = [(DBHomeButton *)v4 elevatedClosePunchthroughView];
    v32 = [v33 heightAnchor];
    v31 = [v32 constraintEqualToConstant:22.0];
    v70[11] = v31;
    v19 = [(DBHomeButton *)v4 elevatedClosePunchthroughView];
    v20 = [v19 centerXAnchor];
    v21 = [(DBHomeButton *)v4 centerXAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v70[12] = v22;
    v23 = [(DBHomeButton *)v4 elevatedClosePunchthroughView];
    v24 = [v23 centerYAnchor];
    v25 = [(DBHomeButton *)v4 centerYAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
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

- (void)_traitEnvironmentDidChange:(id)a3 previousTraitCollection:(id)a4
{
  v15 = a4;
  v5 = [(DBHomeButton *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];
  if (v6 != [v15 userInterfaceIdiom])
  {

    goto LABEL_5;
  }

  v7 = [(DBHomeButton *)self traitCollection];
  [v7 displayScale];
  v9 = v8;
  [v15 displayScale];
  v11 = v10;

  if (v9 != v11)
  {
LABEL_5:
    [(DBHomeButton *)self setNeedsImageUpdates:1];
  }

  [(DBHomeButton *)self _setupImagesIfNecessary];
  [(DBHomeButton *)self _updateDisplayStateAnimated:0];
  v12 = [(DBHomeButton *)self traitCollection];
  v13 = [v12 wallpaperAppearanceType];
  v14 = [v15 wallpaperAppearanceType];

  if (v13 != v14)
  {
    [(DBHomeButton *)self _updateViewVisibilities];
    [(DBHomeButton *)self _updateViewOpacity];
  }
}

- (void)_setupImagesIfNecessary
{
  v22 = [(DBHomeButton *)self traitCollection];
  if ([v22 userInterfaceIdiom] == 3)
  {
    v3 = [(DBHomeButton *)self iconsImage];
    if (v3)
    {
      v4 = v3;
      v5 = [(DBHomeButton *)self needsImageUpdates];

      if (!v5)
      {
        return;
      }
    }

    else
    {
    }

    v6 = MEMORY[0x277D755B8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v8 = [(DBHomeButton *)self traitCollection];
    v9 = [v6 imageNamed:@"CarStatusBarIconsHomeButton" inBundle:v7 compatibleWithTraitCollection:v8];
    [(DBHomeButton *)self setIconsImage:v9];

    v10 = MEMORY[0x277D755B8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v12 = [(DBHomeButton *)self traitCollection];
    v13 = [v10 imageNamed:@"CarStatusBarDashboardHomeButton" inBundle:v11 compatibleWithTraitCollection:v12];
    [(DBHomeButton *)self setDashboardImage:v13];

    v14 = MEMORY[0x277D755B8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v16 = [(DBHomeButton *)self traitCollection];
    v17 = [v14 imageNamed:@"CarStatusBarIconsHomeButtonFocused" inBundle:v15 compatibleWithTraitCollection:v16];
    [(DBHomeButton *)self setIconsFocusedImage:v17];

    v18 = MEMORY[0x277D755B8];
    v19 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v20 = [(DBHomeButton *)self traitCollection];
    v21 = [v18 imageNamed:@"CarStatusBarDashboardHomeButtonFocused" inBundle:v19 compatibleWithTraitCollection:v20];
    [(DBHomeButton *)self setDashboardFocusedImage:v21];

    [(DBHomeButton *)self _updateDisplayStateAnimated:0];
  }

  else
  {
  }
}

- (void)_updateDisplayStateAnimated:(BOOL)a3
{
  v3 = a3;
  v38[1] = *MEMORY[0x277D85DE8];
  v5 = [(DBHomeButton *)self iconsImage];
  v6 = [(DBHomeButton *)self iconsFocusedImage];
  if ([(DBHomeButton *)self displayState]== 1)
  {
    v7 = [(DBHomeButton *)self dashboardImage];

    v8 = [(DBHomeButton *)self dashboardFocusedImage];

    [(DBHomeButton *)self setAccessibilityLabel:@"CarStatusBarDashboardHomeButton"];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Dashboard_4.isa)];
    v10 = [v9 localizedStringForKey:@"DASHBOARD" value:&stru_285A57218 table:@"CarPlayApp"];
    v38[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    [(DBHomeButton *)self setAccessibilityUserInputLabels:v11];

    v5 = v7;
    v6 = v8;
  }

  else if ([(DBHomeButton *)self displayState])
  {
    if ([(DBHomeButton *)self displayState]== 2)
    {

      v12 = [(DBHomeButton *)self elevatedClosePunchthroughView];
      [v12 setAlpha:0.0];

      v13 = [(DBHomeButton *)self elevatedClosePunchthroughView];
      [v13 setHidden:0];

      v5 = 0;
      v6 = 0;
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

  v17 = [(DBHomeButton *)self buttonColor];
  v18 = [v5 imageWithTintColor:v17];

  v19 = [(DBHomeButton *)self focusedButtonColor];
  v20 = [v6 imageWithTintColor:v19];

  if (v3)
  {
    v21 = MEMORY[0x277D75D18];
    v22 = [(DBHomeButton *)self imageView];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __44__DBHomeButton__updateDisplayStateAnimated___block_invoke;
    v35[3] = &unk_278F014B8;
    v35[4] = self;
    v36 = v18;
    [v21 transitionWithView:v22 duration:5242880 options:v35 animations:0 completion:0.4];

    v23 = MEMORY[0x277D75D18];
    v24 = [(DBHomeButton *)self focusedImageView];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __44__DBHomeButton__updateDisplayStateAnimated___block_invoke_2;
    v33[3] = &unk_278F014B8;
    v33[4] = self;
    v34 = v20;
    [v23 transitionWithView:v24 duration:5242880 options:v33 animations:0 completion:0.4];

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
    v25 = [(DBHomeButton *)self imageView];
    [v25 setImage:v18];

    v26 = [(DBHomeButton *)self focusedImageView];
    [v26 setImage:v20];

    v27 = [(DBHomeButton *)self elevatedClosePunchthroughView];
    v28 = [(DBHomeButton *)self displayState];
    v29 = 0.0;
    if (v28 == 2)
    {
      v29 = 1.0;
    }

    [v27 setAlpha:v29];

    v30 = [(DBHomeButton *)self elevatedClosePunchthroughView];
    [v30 setHidden:{-[DBHomeButton displayState](self, "displayState") != 2}];

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
  v3 = [(DBHomeButton *)self isFocused];
  v4 = [(DBHomeButton *)self imageView];
  [v4 setHidden:v3];

  LODWORD(v3) = [(DBHomeButton *)self isFocused];
  v5 = [(DBHomeButton *)self focusedImageView];
  [v5 setHidden:v3 ^ 1];
}

- (void)setDisplayState:(unint64_t)a3
{
  if (self->_displayState != a3)
  {
    self->_displayState = a3;
    v5 = !UIAccessibilityIsReduceMotionEnabled();

    [(DBHomeButton *)self _updateDisplayStateAnimated:v5];
  }
}

- (void)setPressed:(BOOL)a3
{
  if (self->_pressed != a3)
  {
    self->_pressed = a3;
    [(DBHomeButton *)self _updateViewOpacity];
    pressed = self->_pressed;
    v5 = [(DBHomeButton *)self elevatedClosePunchthroughView];
    [v5 setIsPressed:pressed];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v7.receiver = self;
  v7.super_class = DBHomeButton;
  [(DBHomeButton *)&v7 didUpdateFocusInContext:a3 withAnimationCoordinator:a4];
  [(DBHomeButton *)self _updateDisplayStateAnimated:0];
  [(DBHomeButton *)self _updateViewVisibilities];
  v5 = [(DBHomeButton *)self isFocused];
  v6 = [(DBHomeButton *)self elevatedClosePunchthroughView];
  [v6 setShowFocusedState:v5];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = DBHomeButton;
  v6 = a3;
  [(DBHomeButton *)&v9 touchesBegan:v6 withEvent:a4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___DBTouchesContainsTouchType_block_invoke;
  v10[3] = &__block_descriptor_40_e21_B24__0__UITouch_8_B16l;
  v10[4] = 0;
  v7 = [v6 objectsPassingTest:v10];

  v8 = [v7 count];
  if (v8)
  {
    [(DBHomeButton *)self setPressed:1];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = DBHomeButton;
  [(DBHomeButton *)&v5 touchesEnded:a3 withEvent:a4];
  [(DBHomeButton *)self setPressed:0];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = DBHomeButton;
  [(DBHomeButton *)&v5 touchesCancelled:a3 withEvent:a4];
  [(DBHomeButton *)self setPressed:0];
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = DBHomeButton;
  v6 = a3;
  [(DBHomeButton *)&v9 pressesBegan:v6 withEvent:a4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___DBPressesContainsPressType_block_invoke_0;
  v10[3] = &__block_descriptor_40_e21_B24__0__UIPress_8_B16l;
  v10[4] = 4;
  v7 = [v6 objectsPassingTest:v10];

  v8 = [v7 count];
  if (v8)
  {
    [(DBHomeButton *)self sendActionsForControlEvents:0x1000000];
    [(DBHomeButton *)self setPressed:1];
  }
}

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = DBHomeButton;
  v6 = a3;
  [(DBHomeButton *)&v9 pressesEnded:v6 withEvent:a4];
  [(DBHomeButton *)self setPressed:0];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___DBPressesContainsPressType_block_invoke_0;
  v10[3] = &__block_descriptor_40_e21_B24__0__UIPress_8_B16l;
  v10[4] = 4;
  v7 = [v6 objectsPassingTest:v10];

  v8 = [v7 count];
  if (v8)
  {
    [(DBHomeButton *)self sendActionsForControlEvents:0x2000000];
  }
}

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = DBHomeButton;
  [(DBHomeButton *)&v5 pressesCancelled:a3 withEvent:a4];
  [(DBHomeButton *)self setPressed:0];
}

@end