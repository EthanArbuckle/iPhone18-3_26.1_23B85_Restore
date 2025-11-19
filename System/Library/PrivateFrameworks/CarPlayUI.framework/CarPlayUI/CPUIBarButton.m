@interface CPUIBarButton
+ (id)buttonWithTitle:(id)a3 image:(id)a4 style:(int64_t)a5 type:(unint64_t)a6;
- (BOOL)_showsRoundedBackground;
- (BOOL)showBackIndicator;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIFont)buttonFont;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_resetAlpha;
- (void)_setupBackButtonImagesIfNeccessary;
- (void)_updateBackIndicatorImageView;
- (void)_updateBackgroundColorWithIsFocused:(BOOL)a3;
- (void)_updateButtonImage:(id)a3;
- (void)didAddSubview:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)setButtonFont:(id)a3;
- (void)setFocusedBackgroundColor:(id)a3;
- (void)setFocusedColor:(id)a3;
- (void)setNormalBackgroundColor:(id)a3;
- (void)setNormalColor:(id)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CPUIBarButton

- (void)_resetAlpha
{
  v3 = [(CPUIBarButton *)self backIndicatorImageView];
  [v3 setAlpha:1.0];

  v4 = [(CPUIBarButton *)self backgroundView];
  [v4 setAlpha:1.0];
}

- (void)_setupBackButtonImagesIfNeccessary
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19 = [(CPUIBarButton *)self traitCollection];
  if ([v19 userInterfaceIdiom] == 3 && -[CPUIBarButton showBackIndicator](self, "showBackIndicator"))
  {
    v3 = [(CPUIBarButton *)self backIndicatorImageView];
    v4 = [v3 image];

    if (!v4)
    {
      v5 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D76920] variant:1024];
      v6 = [MEMORY[0x277D755D0] configurationWithFont:v5 scale:2];
      if ([(CPUIBarButton *)self type]== 2)
      {
        v7 = @"xmark.circle.fill";
      }

      else
      {
        v7 = @"chevron.backward.circle.fill";
      }

      v8 = [MEMORY[0x277D755B8] systemImageNamed:v7];
      v9 = [v8 imageWithSymbolConfiguration:v6];
      [(CPUIBarButton *)self setBackIndicatorImage:v9];

      v10 = [(CPUIBarButton *)self backIndicatorImageView];
      v11 = [(CPUIBarButton *)self backIndicatorImage];
      [v10 setImage:v11];

      v12 = [(CPUIBarButton *)self backIndicatorHeightConstraint];

      if (!v12)
      {
        v13 = [(CPUIBarButton *)self backIndicatorImageView];
        v14 = [v13 heightAnchor];
        v15 = [v14 constraintEqualToConstant:19.0];

        v16 = MEMORY[0x277CCAAD0];
        v20[0] = v15;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
        [v16 activateConstraints:v17];

        [(CPUIBarButton *)self setBackIndicatorHeightConstraint:v15];
      }

      v18 = [(CPUIBarButton *)self backIndicatorHeightConstraint];
      [v18 setConstant:19.0];

      [(CPUIBarButton *)self _updateBackIndicatorImageView];
    }
  }

  else
  {
  }
}

- (BOOL)showBackIndicator
{
  v3 = [(CPUIBarButton *)self type];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(CPUIBarButton *)self type]== 2;
  }

  return v3;
}

+ (id)buttonWithTitle:(id)a3 image:(id)a4 style:(int64_t)a5 type:(unint64_t)a6
{
  v77[5] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v74.receiver = a1;
  v74.super_class = &OBJC_METACLASS___CPUIBarButton;
  v12 = objc_msgSendSuper2(&v74, sel_buttonWithType_, 0);
  v13 = v12;
  if (v12)
  {
    [v12 setImage:v11];
    [v13 setType:a6];
    [v13 setStyle:a5];
    if (_UISolariumEnabled())
    {
      [MEMORY[0x277D75348] secondaryLabelColor];
    }

    else
    {
      [MEMORY[0x277D75348] _carSystemFocusColor];
    }
    v14 = ;
    [v13 setNormalColor:v14];

    if (_UISolariumEnabled())
    {
      [MEMORY[0x277D75348] labelColor];
    }

    else
    {
      [MEMORY[0x277D75348] _carSystemFocusLabelColor];
    }
    v15 = ;
    [v13 setFocusedColor:v15];

    if (_UISolariumEnabled())
    {
      [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [v13 focusedColor];
    }
    v16 = ;
    [v13 setNormalBackgroundColor:v16];

    if (_UISolariumEnabled())
    {
      [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [v13 normalColor];
    }
    v17 = ;
    [v13 setFocusedBackgroundColor:v17];

    if (!v11 && a6 == 3)
    {
      [v13 setImageEdgeInsets:{-3.0, 1.0, 0.0, 0.0}];
      [v13 setUsesSystemComposeGlyph:1];
      v18 = CPUILocalizedStringForKey(@"COMPOSE");
      v77[0] = v18;
      v19 = CPUILocalizedStringForKey(@"NEW_MESSAGE");
      v77[1] = v19;
      v20 = CPUILocalizedStringForKey(@"CREATE");
      v77[2] = v20;
      v21 = CPUILocalizedStringForKey(@"WRITE");
      v77[3] = v21;
      v22 = CPUILocalizedStringForKey(@"SQUARE_AND_PENCIL");
      v77[4] = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:5];
      [v13 setAccessibilityUserInputLabels:v23];

      v24 = [MEMORY[0x277D75C80] _currentTraitCollection];
      v11 = CPUIMessageComposeGlyph(v24, 17.0);
    }

    if (v10)
    {
      [v13 setTitle:v10 forState:0];
    }

    else if (v11)
    {
      [v13 _updateButtonImage:v11];
    }

    v25 = 0.0;
    v72 = v11;
    v73 = v10;
    if ([v13 showBackIndicator])
    {
      if (_UISolariumEnabled())
      {
        v25 = 0.0;
      }

      else
      {
        v25 = -6.0;
      }

      v26 = [MEMORY[0x277D75128] sharedApplication];
      v27 = [v26 userInterfaceLayoutDirection];

      v28 = _UISolariumEnabled();
      if (v10)
      {
        v29 = 10.0;
        if (v28)
        {
          v29 = 20.0;
        }

        if (v27 == 1)
        {
          v30 = v29;
        }

        else
        {
          v30 = 0.0;
        }

        if (v27 == 1)
        {
          v31 = 0.0;
        }

        else
        {
          v31 = v29;
        }

        [v13 setTitleEdgeInsets:{0.0, v31, 0.0, v30}];
      }

      else
      {
        [v13 setImageEdgeInsets:{0.0, 0.0, 0.0, 0.0}];
      }

      v32 = objc_alloc_init(MEMORY[0x277D755E8]);
      [v13 setBackIndicatorImageView:v32];

      v33 = [v13 backIndicatorImageView];
      [v33 setTranslatesAutoresizingMaskIntoConstraints:0];

      v34 = [v13 backIndicatorImageView];
      [v13 addSubview:v34];

      if (_UISolariumEnabled())
      {
        v35 = [v13 layoutMarginsGuide];
        v36 = [v35 leadingAnchor];
      }

      else
      {
        v36 = [v13 leadingAnchor];
      }

      if (_UISolariumEnabled())
      {
        v37 = [v13 layoutMarginsGuide];
        v38 = [v37 centerYAnchor];
      }

      else
      {
        v38 = [v13 centerYAnchor];
      }

      v66 = v38;
      v70 = [v13 backIndicatorImageView];
      v39 = [v70 widthAnchor];
      v40 = [v39 constraintEqualToConstant:19.5];
      v76[0] = v40;
      v41 = [v13 backIndicatorImageView];
      v42 = [v41 leadingAnchor];
      [v42 constraintEqualToAnchor:v36 constant:0.0];
      v43 = v68 = v36;
      v76[1] = v43;
      v44 = [v13 backIndicatorImageView];
      v45 = [v44 centerYAnchor];
      v46 = [v45 constraintEqualToAnchor:v38 constant:0.5];
      v76[2] = v46;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:3];
      [v13 addConstraints:v47];

      [v13 _setupBackButtonImagesIfNeccessary];
    }

    v48 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    v49 = [v13 _showsRoundedBackground];
    v50 = [v48 layer];
    v51 = _UISolariumEnabled();
    if (v49)
    {
      v52 = 17.0;
      if (v51)
      {
        v52 = 12.0;
      }

      [v50 setCornerRadius:v52];

      v50 = [MEMORY[0x277D75348] _carSystemQuaternaryColor];
      [v48 setBackgroundColor:v50];
    }

    else
    {
      v53 = 6.0;
      if (v51)
      {
        v53 = 16.0;
      }

      [v50 setCornerRadius:v53];
    }

    v54 = [v48 layer];
    [v54 setCornerCurve:*MEMORY[0x277CDA138]];

    [v13 insertSubview:v48 atIndex:0];
    [v13 setBackgroundView:v48];
    v71 = [v48 topAnchor];
    v69 = [v13 topAnchor];
    v67 = [v71 constraintEqualToAnchor:v69];
    v75[0] = v67;
    v65 = [v48 bottomAnchor];
    v64 = [v13 bottomAnchor];
    v55 = [v65 constraintEqualToAnchor:v64];
    v75[1] = v55;
    v56 = [v48 leadingAnchor];
    v57 = [v13 leadingAnchor];
    v58 = [v56 constraintEqualToAnchor:v57 constant:v25];
    v75[2] = v58;
    v59 = [v48 trailingAnchor];
    v60 = [v13 trailingAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];
    v75[3] = v61;
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:4];
    [v13 addConstraints:v62];

    [v13 sizeToFit];
    v11 = v72;
    v10 = v73;
  }

  return v13;
}

- (void)_updateButtonImage:(id)a3
{
  v4 = a3;
  v5 = [(CPUIBarButton *)self normalColor];
  v8 = [v4 _flatImageWithColor:v5];

  v6 = [(CPUIBarButton *)self focusedColor];
  v7 = [v8 _flatImageWithColor:v6];

  [(CPUIBarButton *)self setImage:v4];
  [(CPUIBarButton *)self setImage:v8 forState:0];
  [(CPUIBarButton *)self setImage:v7 forState:8];
}

- (BOOL)_showsRoundedBackground
{
  v3 = [(CPUIBarButton *)self image];
  if (v3)
  {
    v4 = [(CPUIBarButton *)self style]== 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (_UISolariumEnabled())
  {
    v4 = 24.0;
  }

  else
  {
    v4 = 34.0;
  }

  v5 = [(CPUIBarButton *)self currentImage];
  if (_UISolariumEnabled())
  {
    if (v5)
    {
      [v5 size];
      v7 = v6 + 0.0;
    }

    else
    {
      v15 = [(CPUIBarButton *)self currentTitle];

      if (v15)
      {
        v16 = [(CPUIBarButton *)self titleLabel];
        [v16 sizeToFit];

        v17 = [(CPUIBarButton *)self titleLabel];
        [v17 bounds];
        v7 = v18 + 0.0;
      }

      else
      {
        v7 = 0.0;
      }
    }

    v30 = [(CPUIBarButton *)self backIndicatorImageView];

    if (v30)
    {
      v31 = _UISolariumEnabled();
      v32 = 32.5;
      if (v31)
      {
        v32 = 29.5;
      }

      v7 = v7 + v32;
    }

    [(CPUIBarButton *)self layoutMargins];
    v29 = v33 + v34;
LABEL_41:
    v23 = v7 + v29;
    goto LABEL_42;
  }

  v8 = [(CPUIBarButton *)self backIndicatorImageView];

  v9 = 30.0;
  if (v8)
  {
    goto LABEL_8;
  }

  v9 = 0.0;
  if (!v5 || ![(CPUIBarButton *)self _showsRoundedBackground])
  {
    goto LABEL_8;
  }

  [v5 size];
  v20 = v19;
  v21 = _UISolariumEnabled();
  v22 = 34.0;
  if (v21)
  {
    v22 = 24.0;
  }

  if (v20 > v22)
  {
LABEL_8:
    v10 = [(CPUIBarButton *)self titleForState:0];
    v11 = [v10 length];

    if (v11)
    {
      v12 = _UISolariumEnabled();
      v13 = 10.0;
      if (v12)
      {
        v13 = 20.0;
      }

      v9 = v9 - v13;
    }

    if (v5)
    {
      [v5 size];
      v9 = v9 + v14;
    }

    else
    {
      v24 = [(CPUIBarButton *)self currentTitle];

      if (v24)
      {
        v25 = [(CPUIBarButton *)self titleLabel];
        [v25 sizeToFit];

        v26 = [(CPUIBarButton *)self titleLabel];
        [v26 bounds];
        v9 = v9 + v27;
      }
    }

    if (v9 <= 140.0)
    {
      v7 = v9;
    }

    else
    {
      v7 = 140.0;
    }

    v28 = _UISolariumEnabled();
    v29 = 13.0;
    if (v28)
    {
      v29 = 10.0;
    }

    goto LABEL_41;
  }

  v4 = 34.0;
  if (_UISolariumEnabled())
  {
    v23 = 24.0;
  }

  else
  {
    v23 = 34.0;
  }

  if (_UISolariumEnabled())
  {
    v4 = 24.0;
  }

LABEL_42:

  v35 = v23;
  v36 = v4;
  result.height = v36;
  result.width = v35;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(CPUIBarButton *)self sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v5 = [a3 nextFocusedItem];

  if (_UISolariumEnabled())
  {
    if (v5 == self)
    {
      v6 = [(CPUIBarButton *)self traitCollection];
      v7 = [v6 userInterfaceStyle];
      if (v7 == 1)
      {
        v8 = 2;
      }

      else
      {
        v8 = v7 == 2;
      }

      [(CPUIBarButton *)self setOverrideUserInterfaceStyle:v8];
    }

    else
    {
      [(CPUIBarButton *)self setOverrideUserInterfaceStyle:0];
    }
  }

  v9 = [(CPUIBarButton *)self backgroundView];
  [v9 frame];
  v10 = CGRectGetHeight(v13) * 0.5;

  v11 = [(CPUIBarButton *)self backgroundView];
  [v11 _setCornerRadius:v10];

  [(CPUIBarButton *)self _updateBackgroundColorWithIsFocused:v5 == self];

  [(CPUIBarButton *)self _updateBackIndicatorImageView];
}

- (void)_updateBackgroundColorWithIsFocused:(BOOL)a3
{
  v3 = a3;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    if ([(CPUIBarButton *)self _showsRoundedBackground])
    {
      if (!v3)
      {
        v8 = [(CPUIBarButton *)self normalBackgroundColor];
LABEL_10:
        v9 = v8;
        goto LABEL_12;
      }
    }

    else if (!v3)
    {
      v9 = 0;
LABEL_12:
      v10 = [(CPUIBarButton *)self backgroundView];
      [v10 setBackgroundColor:v9];

      v13 = [(CPUIBarButton *)self imageView];
      if (v3)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v8 = [(CPUIBarButton *)self focusedBackgroundColor];
    goto LABEL_10;
  }

  v5 = [(CPUIBarButton *)self backgroundView];
  v6 = v5;
  if (v3)
  {
    v7 = [MEMORY[0x277D75210] effectWithStyle:8];
    [v6 _setBackground:v7];

    v13 = [(CPUIBarButton *)self imageView];
LABEL_13:
    v11 = [(CPUIBarButton *)self focusedColor];
    goto LABEL_15;
  }

  [v5 _setBackground:0];

  v13 = [(CPUIBarButton *)self imageView];
LABEL_14:
  v11 = [(CPUIBarButton *)self normalColor];
LABEL_15:
  v12 = v11;
  [v13 setTintColor:v11];
}

- (void)didAddSubview:(id)a3
{
  v5.receiver = self;
  v5.super_class = CPUIBarButton;
  [(CPUIBarButton *)&v5 didAddSubview:a3];
  v4 = [(CPUIBarButton *)self backgroundView];
  [(CPUIBarButton *)self sendSubviewToBack:v4];
}

- (UIFont)buttonFont
{
  v2 = [(CPUIBarButton *)self titleLabel];
  v3 = [v2 font];

  return v3;
}

- (void)setButtonFont:(id)a3
{
  v4 = a3;
  v5 = [(CPUIBarButton *)self titleLabel];
  [v5 setFont:v4];

  v6 = [(CPUIBarButton *)self backIndicatorImageView];
  [v6 setImage:0];

  [(CPUIBarButton *)self _setupBackButtonImagesIfNeccessary];
}

- (void)setNormalColor:(id)a3
{
  objc_storeStrong(&self->_normalColor, a3);
  v5 = a3;
  [(CPUIBarButton *)self setTitleColor:v5 forState:0];
  v6 = [(CPUIBarButton *)self image];
  v7 = [v6 _flatImageWithColor:v5];

  [(CPUIBarButton *)self setImage:v7 forState:0];
  [(CPUIBarButton *)self _updateBackgroundColorWithIsFocused:[(CPUIBarButton *)self isFocused]];

  [(CPUIBarButton *)self _updateBackIndicatorImageView];
}

- (void)setFocusedColor:(id)a3
{
  objc_storeStrong(&self->_focusedColor, a3);
  v5 = a3;
  [(CPUIBarButton *)self setTitleColor:v5 forState:1];
  [(CPUIBarButton *)self setTitleColor:v5 forState:8];
  v6 = [v5 colorWithAlphaComponent:0.8];
  [(CPUIBarButton *)self setTitleColor:v6 forState:9];

  v7 = [(CPUIBarButton *)self image];
  v8 = [v7 _flatImageWithColor:v5];

  [(CPUIBarButton *)self setImage:v8 forState:8];
  [(CPUIBarButton *)self _updateBackgroundColorWithIsFocused:[(CPUIBarButton *)self isFocused]];

  [(CPUIBarButton *)self _updateBackIndicatorImageView];
}

- (void)setNormalBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_normalBackgroundColor, a3);
  v4 = [(CPUIBarButton *)self isFocused];

  [(CPUIBarButton *)self _updateBackgroundColorWithIsFocused:v4];
}

- (void)setFocusedBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_focusedBackgroundColor, a3);
  v4 = [(CPUIBarButton *)self isFocused];

  [(CPUIBarButton *)self _updateBackgroundColorWithIsFocused:v4];
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = CPUIBarButton;
  [(CPUIButton *)&v7 traitCollectionDidChange:a3];
  [(CPUIBarButton *)self _setupBackButtonImagesIfNeccessary];
  if ([(CPUIBarButton *)self usesSystemComposeGlyph])
  {
    v4 = [(CPUIBarButton *)self traitCollection];
    v5 = CPUIMessageComposeGlyph(v4, 17.0);
    [(CPUIBarButton *)self _updateButtonImage:v5];
  }

  else
  {
    v6 = [(CPUIBarButton *)self image];

    if (!v6)
    {
      return;
    }

    v4 = [(CPUIBarButton *)self image];
    [(CPUIBarButton *)self _updateButtonImage:v4];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = CPUIBarButton;
  v6 = a3;
  [(CPUIBarButton *)&v9 touchesBegan:v6 withEvent:a4];
  LODWORD(a4) = _touchesContainDirectTouch(v6);

  if (a4)
  {
    if (([(CPUIBarButton *)self isFocused:v9.receiver]& 1) == 0)
    {
      v7 = [(CPUIBarButton *)self backIndicatorImageView];
      [v7 setAlpha:0.2];
    }

    v8 = [(CPUIBarButton *)self backgroundView];
    [v8 setAlpha:0.2];
  }
}

- (void)_updateBackIndicatorImageView
{
  v3 = [(CPUIBarButton *)self backIndicatorImageView];
  v4 = [v3 image];

  if (v4)
  {
    v5 = [(CPUIBarButton *)self isFocused];
    v7 = [(CPUIBarButton *)self backIndicatorImageView];
    if (v5)
    {
      [(CPUIBarButton *)self focusedColor];
    }

    else
    {
      [(CPUIBarButton *)self normalColor];
    }
    v6 = ;
    [v7 setTintColor:v6];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = CPUIBarButton;
  v6 = a3;
  [(CPUIBarButton *)&v7 touchesEnded:v6 withEvent:a4];
  LODWORD(a4) = _touchesContainDirectTouch(v6);

  if (a4)
  {
    [(CPUIBarButton *)self _resetAlpha:v7.receiver];
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = CPUIBarButton;
  v6 = a3;
  [(CPUIBarButton *)&v7 touchesCancelled:v6 withEvent:a4];
  LODWORD(a4) = _touchesContainDirectTouch(v6);

  if (a4)
  {
    [(CPUIBarButton *)self _resetAlpha:v7.receiver];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  if ([(CPUIBarButton *)self pointInside:a4 withEvent:a3.x, a3.y])
  {
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end