@interface CPUIBarButton
+ (id)buttonWithTitle:(id)title image:(id)image style:(int64_t)style type:(unint64_t)type;
- (BOOL)_showsRoundedBackground;
- (BOOL)showBackIndicator;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIFont)buttonFont;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_resetAlpha;
- (void)_setupBackButtonImagesIfNeccessary;
- (void)_updateBackIndicatorImageView;
- (void)_updateBackgroundColorWithIsFocused:(BOOL)focused;
- (void)_updateButtonImage:(id)image;
- (void)didAddSubview:(id)subview;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setButtonFont:(id)font;
- (void)setFocusedBackgroundColor:(id)color;
- (void)setFocusedColor:(id)color;
- (void)setNormalBackgroundColor:(id)color;
- (void)setNormalColor:(id)color;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPUIBarButton

- (void)_resetAlpha
{
  backIndicatorImageView = [(CPUIBarButton *)self backIndicatorImageView];
  [backIndicatorImageView setAlpha:1.0];

  backgroundView = [(CPUIBarButton *)self backgroundView];
  [backgroundView setAlpha:1.0];
}

- (void)_setupBackButtonImagesIfNeccessary
{
  v20[1] = *MEMORY[0x277D85DE8];
  traitCollection = [(CPUIBarButton *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 3 && -[CPUIBarButton showBackIndicator](self, "showBackIndicator"))
  {
    backIndicatorImageView = [(CPUIBarButton *)self backIndicatorImageView];
    image = [backIndicatorImageView image];

    if (!image)
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

      backIndicatorImageView2 = [(CPUIBarButton *)self backIndicatorImageView];
      backIndicatorImage = [(CPUIBarButton *)self backIndicatorImage];
      [backIndicatorImageView2 setImage:backIndicatorImage];

      backIndicatorHeightConstraint = [(CPUIBarButton *)self backIndicatorHeightConstraint];

      if (!backIndicatorHeightConstraint)
      {
        backIndicatorImageView3 = [(CPUIBarButton *)self backIndicatorImageView];
        heightAnchor = [backIndicatorImageView3 heightAnchor];
        v15 = [heightAnchor constraintEqualToConstant:19.0];

        v16 = MEMORY[0x277CCAAD0];
        v20[0] = v15;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
        [v16 activateConstraints:v17];

        [(CPUIBarButton *)self setBackIndicatorHeightConstraint:v15];
      }

      backIndicatorHeightConstraint2 = [(CPUIBarButton *)self backIndicatorHeightConstraint];
      [backIndicatorHeightConstraint2 setConstant:19.0];

      [(CPUIBarButton *)self _updateBackIndicatorImageView];
    }
  }

  else
  {
  }
}

- (BOOL)showBackIndicator
{
  type = [(CPUIBarButton *)self type];
  if (type != 1)
  {
    LOBYTE(type) = [(CPUIBarButton *)self type]== 2;
  }

  return type;
}

+ (id)buttonWithTitle:(id)title image:(id)image style:(int64_t)style type:(unint64_t)type
{
  v77[5] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  imageCopy = image;
  v74.receiver = self;
  v74.super_class = &OBJC_METACLASS___CPUIBarButton;
  v12 = objc_msgSendSuper2(&v74, sel_buttonWithType_, 0);
  v13 = v12;
  if (v12)
  {
    [v12 setImage:imageCopy];
    [v13 setType:type];
    [v13 setStyle:style];
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

    if (!imageCopy && type == 3)
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

      _currentTraitCollection = [MEMORY[0x277D75C80] _currentTraitCollection];
      imageCopy = CPUIMessageComposeGlyph(_currentTraitCollection, 17.0);
    }

    if (titleCopy)
    {
      [v13 setTitle:titleCopy forState:0];
    }

    else if (imageCopy)
    {
      [v13 _updateButtonImage:imageCopy];
    }

    v25 = 0.0;
    v72 = imageCopy;
    v73 = titleCopy;
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

      mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
      userInterfaceLayoutDirection = [mEMORY[0x277D75128] userInterfaceLayoutDirection];

      v28 = _UISolariumEnabled();
      if (titleCopy)
      {
        v29 = 10.0;
        if (v28)
        {
          v29 = 20.0;
        }

        if (userInterfaceLayoutDirection == 1)
        {
          v30 = v29;
        }

        else
        {
          v30 = 0.0;
        }

        if (userInterfaceLayoutDirection == 1)
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

      backIndicatorImageView = [v13 backIndicatorImageView];
      [backIndicatorImageView setTranslatesAutoresizingMaskIntoConstraints:0];

      backIndicatorImageView2 = [v13 backIndicatorImageView];
      [v13 addSubview:backIndicatorImageView2];

      if (_UISolariumEnabled())
      {
        layoutMarginsGuide = [v13 layoutMarginsGuide];
        leadingAnchor = [layoutMarginsGuide leadingAnchor];
      }

      else
      {
        leadingAnchor = [v13 leadingAnchor];
      }

      if (_UISolariumEnabled())
      {
        layoutMarginsGuide2 = [v13 layoutMarginsGuide];
        centerYAnchor = [layoutMarginsGuide2 centerYAnchor];
      }

      else
      {
        centerYAnchor = [v13 centerYAnchor];
      }

      v66 = centerYAnchor;
      backIndicatorImageView3 = [v13 backIndicatorImageView];
      widthAnchor = [backIndicatorImageView3 widthAnchor];
      v40 = [widthAnchor constraintEqualToConstant:19.5];
      v76[0] = v40;
      backIndicatorImageView4 = [v13 backIndicatorImageView];
      leadingAnchor2 = [backIndicatorImageView4 leadingAnchor];
      [leadingAnchor2 constraintEqualToAnchor:leadingAnchor constant:0.0];
      v43 = v68 = leadingAnchor;
      v76[1] = v43;
      backIndicatorImageView5 = [v13 backIndicatorImageView];
      centerYAnchor2 = [backIndicatorImageView5 centerYAnchor];
      v46 = [centerYAnchor2 constraintEqualToAnchor:centerYAnchor constant:0.5];
      v76[2] = v46;
      v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:3];
      [v13 addConstraints:v47];

      [v13 _setupBackButtonImagesIfNeccessary];
    }

    v48 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
    _showsRoundedBackground = [v13 _showsRoundedBackground];
    layer = [v48 layer];
    v51 = _UISolariumEnabled();
    if (_showsRoundedBackground)
    {
      v52 = 17.0;
      if (v51)
      {
        v52 = 12.0;
      }

      [layer setCornerRadius:v52];

      layer = [MEMORY[0x277D75348] _carSystemQuaternaryColor];
      [v48 setBackgroundColor:layer];
    }

    else
    {
      v53 = 6.0;
      if (v51)
      {
        v53 = 16.0;
      }

      [layer setCornerRadius:v53];
    }

    layer2 = [v48 layer];
    [layer2 setCornerCurve:*MEMORY[0x277CDA138]];

    [v13 insertSubview:v48 atIndex:0];
    [v13 setBackgroundView:v48];
    topAnchor = [v48 topAnchor];
    topAnchor2 = [v13 topAnchor];
    v67 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v75[0] = v67;
    bottomAnchor = [v48 bottomAnchor];
    bottomAnchor2 = [v13 bottomAnchor];
    v55 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v75[1] = v55;
    leadingAnchor3 = [v48 leadingAnchor];
    leadingAnchor4 = [v13 leadingAnchor];
    v58 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v25];
    v75[2] = v58;
    trailingAnchor = [v48 trailingAnchor];
    trailingAnchor2 = [v13 trailingAnchor];
    v61 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v75[3] = v61;
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:4];
    [v13 addConstraints:v62];

    [v13 sizeToFit];
    imageCopy = v72;
    titleCopy = v73;
  }

  return v13;
}

- (void)_updateButtonImage:(id)image
{
  imageCopy = image;
  normalColor = [(CPUIBarButton *)self normalColor];
  v8 = [imageCopy _flatImageWithColor:normalColor];

  focusedColor = [(CPUIBarButton *)self focusedColor];
  v7 = [v8 _flatImageWithColor:focusedColor];

  [(CPUIBarButton *)self setImage:imageCopy];
  [(CPUIBarButton *)self setImage:v8 forState:0];
  [(CPUIBarButton *)self setImage:v7 forState:8];
}

- (BOOL)_showsRoundedBackground
{
  image = [(CPUIBarButton *)self image];
  if (image)
  {
    v4 = [(CPUIBarButton *)self style]== 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (_UISolariumEnabled())
  {
    v4 = 24.0;
  }

  else
  {
    v4 = 34.0;
  }

  currentImage = [(CPUIBarButton *)self currentImage];
  if (_UISolariumEnabled())
  {
    if (currentImage)
    {
      [currentImage size];
      v7 = v6 + 0.0;
    }

    else
    {
      currentTitle = [(CPUIBarButton *)self currentTitle];

      if (currentTitle)
      {
        titleLabel = [(CPUIBarButton *)self titleLabel];
        [titleLabel sizeToFit];

        titleLabel2 = [(CPUIBarButton *)self titleLabel];
        [titleLabel2 bounds];
        v7 = v18 + 0.0;
      }

      else
      {
        v7 = 0.0;
      }
    }

    backIndicatorImageView = [(CPUIBarButton *)self backIndicatorImageView];

    if (backIndicatorImageView)
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

  backIndicatorImageView2 = [(CPUIBarButton *)self backIndicatorImageView];

  v9 = 30.0;
  if (backIndicatorImageView2)
  {
    goto LABEL_8;
  }

  v9 = 0.0;
  if (!currentImage || ![(CPUIBarButton *)self _showsRoundedBackground])
  {
    goto LABEL_8;
  }

  [currentImage size];
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

    if (currentImage)
    {
      [currentImage size];
      v9 = v9 + v14;
    }

    else
    {
      currentTitle2 = [(CPUIBarButton *)self currentTitle];

      if (currentTitle2)
      {
        titleLabel3 = [(CPUIBarButton *)self titleLabel];
        [titleLabel3 sizeToFit];

        titleLabel4 = [(CPUIBarButton *)self titleLabel];
        [titleLabel4 bounds];
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

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  nextFocusedItem = [context nextFocusedItem];

  if (_UISolariumEnabled())
  {
    if (nextFocusedItem == self)
    {
      traitCollection = [(CPUIBarButton *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];
      if (userInterfaceStyle == 1)
      {
        v8 = 2;
      }

      else
      {
        v8 = userInterfaceStyle == 2;
      }

      [(CPUIBarButton *)self setOverrideUserInterfaceStyle:v8];
    }

    else
    {
      [(CPUIBarButton *)self setOverrideUserInterfaceStyle:0];
    }
  }

  backgroundView = [(CPUIBarButton *)self backgroundView];
  [backgroundView frame];
  v10 = CGRectGetHeight(v13) * 0.5;

  backgroundView2 = [(CPUIBarButton *)self backgroundView];
  [backgroundView2 _setCornerRadius:v10];

  [(CPUIBarButton *)self _updateBackgroundColorWithIsFocused:nextFocusedItem == self];

  [(CPUIBarButton *)self _updateBackIndicatorImageView];
}

- (void)_updateBackgroundColorWithIsFocused:(BOOL)focused
{
  focusedCopy = focused;
  if ((_UISolariumEnabled() & 1) == 0)
  {
    if ([(CPUIBarButton *)self _showsRoundedBackground])
    {
      if (!focusedCopy)
      {
        normalBackgroundColor = [(CPUIBarButton *)self normalBackgroundColor];
LABEL_10:
        v9 = normalBackgroundColor;
        goto LABEL_12;
      }
    }

    else if (!focusedCopy)
    {
      v9 = 0;
LABEL_12:
      backgroundView = [(CPUIBarButton *)self backgroundView];
      [backgroundView setBackgroundColor:v9];

      imageView = [(CPUIBarButton *)self imageView];
      if (focusedCopy)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    normalBackgroundColor = [(CPUIBarButton *)self focusedBackgroundColor];
    goto LABEL_10;
  }

  backgroundView2 = [(CPUIBarButton *)self backgroundView];
  v6 = backgroundView2;
  if (focusedCopy)
  {
    v7 = [MEMORY[0x277D75210] effectWithStyle:8];
    [v6 _setBackground:v7];

    imageView = [(CPUIBarButton *)self imageView];
LABEL_13:
    focusedColor = [(CPUIBarButton *)self focusedColor];
    goto LABEL_15;
  }

  [backgroundView2 _setBackground:0];

  imageView = [(CPUIBarButton *)self imageView];
LABEL_14:
  focusedColor = [(CPUIBarButton *)self normalColor];
LABEL_15:
  v12 = focusedColor;
  [imageView setTintColor:focusedColor];
}

- (void)didAddSubview:(id)subview
{
  v5.receiver = self;
  v5.super_class = CPUIBarButton;
  [(CPUIBarButton *)&v5 didAddSubview:subview];
  backgroundView = [(CPUIBarButton *)self backgroundView];
  [(CPUIBarButton *)self sendSubviewToBack:backgroundView];
}

- (UIFont)buttonFont
{
  titleLabel = [(CPUIBarButton *)self titleLabel];
  font = [titleLabel font];

  return font;
}

- (void)setButtonFont:(id)font
{
  fontCopy = font;
  titleLabel = [(CPUIBarButton *)self titleLabel];
  [titleLabel setFont:fontCopy];

  backIndicatorImageView = [(CPUIBarButton *)self backIndicatorImageView];
  [backIndicatorImageView setImage:0];

  [(CPUIBarButton *)self _setupBackButtonImagesIfNeccessary];
}

- (void)setNormalColor:(id)color
{
  objc_storeStrong(&self->_normalColor, color);
  colorCopy = color;
  [(CPUIBarButton *)self setTitleColor:colorCopy forState:0];
  image = [(CPUIBarButton *)self image];
  v7 = [image _flatImageWithColor:colorCopy];

  [(CPUIBarButton *)self setImage:v7 forState:0];
  [(CPUIBarButton *)self _updateBackgroundColorWithIsFocused:[(CPUIBarButton *)self isFocused]];

  [(CPUIBarButton *)self _updateBackIndicatorImageView];
}

- (void)setFocusedColor:(id)color
{
  objc_storeStrong(&self->_focusedColor, color);
  colorCopy = color;
  [(CPUIBarButton *)self setTitleColor:colorCopy forState:1];
  [(CPUIBarButton *)self setTitleColor:colorCopy forState:8];
  v6 = [colorCopy colorWithAlphaComponent:0.8];
  [(CPUIBarButton *)self setTitleColor:v6 forState:9];

  image = [(CPUIBarButton *)self image];
  v8 = [image _flatImageWithColor:colorCopy];

  [(CPUIBarButton *)self setImage:v8 forState:8];
  [(CPUIBarButton *)self _updateBackgroundColorWithIsFocused:[(CPUIBarButton *)self isFocused]];

  [(CPUIBarButton *)self _updateBackIndicatorImageView];
}

- (void)setNormalBackgroundColor:(id)color
{
  objc_storeStrong(&self->_normalBackgroundColor, color);
  isFocused = [(CPUIBarButton *)self isFocused];

  [(CPUIBarButton *)self _updateBackgroundColorWithIsFocused:isFocused];
}

- (void)setFocusedBackgroundColor:(id)color
{
  objc_storeStrong(&self->_focusedBackgroundColor, color);
  isFocused = [(CPUIBarButton *)self isFocused];

  [(CPUIBarButton *)self _updateBackgroundColorWithIsFocused:isFocused];
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = CPUIBarButton;
  [(CPUIButton *)&v7 traitCollectionDidChange:change];
  [(CPUIBarButton *)self _setupBackButtonImagesIfNeccessary];
  if ([(CPUIBarButton *)self usesSystemComposeGlyph])
  {
    traitCollection = [(CPUIBarButton *)self traitCollection];
    v5 = CPUIMessageComposeGlyph(traitCollection, 17.0);
    [(CPUIBarButton *)self _updateButtonImage:v5];
  }

  else
  {
    image = [(CPUIBarButton *)self image];

    if (!image)
    {
      return;
    }

    traitCollection = [(CPUIBarButton *)self image];
    [(CPUIBarButton *)self _updateButtonImage:traitCollection];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = CPUIBarButton;
  beganCopy = began;
  [(CPUIBarButton *)&v9 touchesBegan:beganCopy withEvent:event];
  LODWORD(event) = _touchesContainDirectTouch(beganCopy);

  if (event)
  {
    if (([(CPUIBarButton *)self isFocused:v9.receiver]& 1) == 0)
    {
      backIndicatorImageView = [(CPUIBarButton *)self backIndicatorImageView];
      [backIndicatorImageView setAlpha:0.2];
    }

    backgroundView = [(CPUIBarButton *)self backgroundView];
    [backgroundView setAlpha:0.2];
  }
}

- (void)_updateBackIndicatorImageView
{
  backIndicatorImageView = [(CPUIBarButton *)self backIndicatorImageView];
  image = [backIndicatorImageView image];

  if (image)
  {
    isFocused = [(CPUIBarButton *)self isFocused];
    backIndicatorImageView2 = [(CPUIBarButton *)self backIndicatorImageView];
    if (isFocused)
    {
      [(CPUIBarButton *)self focusedColor];
    }

    else
    {
      [(CPUIBarButton *)self normalColor];
    }
    v6 = ;
    [backIndicatorImageView2 setTintColor:v6];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = CPUIBarButton;
  endedCopy = ended;
  [(CPUIBarButton *)&v7 touchesEnded:endedCopy withEvent:event];
  LODWORD(event) = _touchesContainDirectTouch(endedCopy);

  if (event)
  {
    [(CPUIBarButton *)self _resetAlpha:v7.receiver];
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = CPUIBarButton;
  cancelledCopy = cancelled;
  [(CPUIBarButton *)&v7 touchesCancelled:cancelledCopy withEvent:event];
  LODWORD(event) = _touchesContainDirectTouch(cancelledCopy);

  if (event)
  {
    [(CPUIBarButton *)self _resetAlpha:v7.receiver];
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  if ([(CPUIBarButton *)self pointInside:event withEvent:test.x, test.y])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end