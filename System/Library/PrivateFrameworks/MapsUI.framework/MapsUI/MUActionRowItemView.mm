@interface MUActionRowItemView
+ (id)labelFont;
+ (id)monospacedLabelFont;
- (MUActionRowItemView)initWithStyle:(int64_t)style useVibrancy:(BOOL)vibrancy;
- (MUActionRowItemViewDelegate)delegate;
- (void)_touchBegan;
- (void)_touchEnded;
- (void)_updateCornerRadius;
- (void)_updateMetrics;
- (void)didMoveToWindow;
- (void)handleHoverGesture:(id)gesture;
- (void)handleMenuPresentation;
- (void)handlePress;
- (void)infoCardThemeChanged;
- (void)layoutSubviews;
- (void)setAccessoryView:(id)view;
- (void)setContentBackgroundColor:(id)color;
- (void)setCornerStyle:(int64_t)style;
- (void)setFullWidthMode:(BOOL)mode;
- (void)setGlyphColor:(id)color;
- (void)setGlyphName:(id)name;
- (void)setHighlightedBackgroundColor:(id)color;
- (void)setHovering:(BOOL)hovering;
- (void)setMenu:(id)menu;
- (void)setTintColor:(id)color;
- (void)setTitleText:(id)text;
- (void)setTitleUsesMonospacedNumbersFont:(BOOL)font;
- (void)setTouched:(BOOL)touched;
- (void)tintColorDidChange;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)updateColor;
- (void)updateImage;
@end

@implementation MUActionRowItemView

- (MUActionRowItemViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setMenu:(id)menu
{
  v5.receiver = self;
  v5.super_class = MUActionRowItemView;
  [(MUActionRowItemView *)&v5 setMenu:menu];
  menu = [(MUActionRowItemView *)self menu];

  if (menu)
  {
    [(MUActionRowItemView *)self removeTarget:self action:sel_handlePress forControlEvents:0x2000];
  }

  else
  {
    [(MUActionRowItemView *)self addTarget:self action:sel_handlePress forControlEvents:0x2000];
  }

  [(MUActionRowItemView *)self setShowsMenuAsPrimaryAction:menu != 0];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MUActionRowItemView;
  [(MUActionRowItemView *)&v5 touchesEnded:ended withEvent:event];
  [(MUActionRowItemView *)self _touchEnded];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = MUActionRowItemView;
  [(MUActionRowItemView *)&v5 touchesCancelled:cancelled withEvent:event];
  [(MUActionRowItemView *)self _touchCancelled];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = MUActionRowItemView;
  eventCopy = event;
  [(MUActionRowItemView *)&v10 touchesBegan:began withEvent:eventCopy];
  v7 = [(MUActionRowItemView *)self window:v10.receiver];
  v8 = [eventCopy touchesForWindow:v7];

  anyObject = [v8 anyObject];

  if ([anyObject tapCount] == 1)
  {
    [(MUActionRowItemView *)self _touchBegan];
  }
}

- (void)_touchEnded
{
  if ([(MUActionRowItemView *)self touched])
  {

    [(MUActionRowItemView *)self setTouched:0];
  }
}

- (void)_touchBegan
{
  if ([(MUActionRowItemView *)self isEnabled])
  {

    [(MUActionRowItemView *)self setTouched:1];
  }
}

- (void)setTouched:(BOOL)touched
{
  if (self->_touched != touched)
  {
    self->_touched = touched;
    [(MUActionRowItemView *)self updateColor];
  }
}

- (void)setTitleUsesMonospacedNumbersFont:(BOOL)font
{
  if (self->_titleUsesMonospacedNumbersFont != font)
  {
    self->_titleUsesMonospacedNumbersFont = font;
    [(MUActionRowItemView *)self _updateMetrics];
  }
}

- (void)updateColor
{
  style = self->_style;
  if (style != 1)
  {
    if (style)
    {
      return;
    }

    mk_theme = [(MUActionRowItemView *)self mk_theme];
    tintColor = [mk_theme tintColor];

    tintColor2 = [(MUActionRowItemView *)self tintColor];

    if (tintColor2)
    {
      tintColor3 = [(MUActionRowItemView *)self tintColor];

      tintColor = tintColor3;
    }

    if ([(MUActionRowItemView *)self isEnabled]&& [(MUActionRowItemView *)self tintAdjustmentMode]!= 2)
    {
      v9 = tintColor;
    }

    else
    {
      mk_theme2 = [(MUActionRowItemView *)self mk_theme];
      disabledActionRowTextColor = [mk_theme2 disabledActionRowTextColor];

      v9 = disabledActionRowTextColor;
    }

    v23 = v9;
    if (self->_useVibrancy)
    {
      tertiarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
      [(MKVibrantView *)self->_vibrantView setBackgroundColor:tertiarySystemFillColor];

      touched = self->_touched;
      mk_theme3 = [(MUActionRowItemView *)self mk_theme];
      mk_theme4 = mk_theme3;
      if (touched)
      {
        [mk_theme3 buttonHighlightedColor];
      }

      else
      {
        [mk_theme3 buttonNormalColor];
      }
      v20 = ;
      contentView = [(MKVibrantView *)self->_vibrantView contentView];
      [contentView setBackgroundColor:v20];

      goto LABEL_30;
    }

    if (self->_touched)
    {
      if (!self->_highlightedBackgroundColor)
      {
        mk_theme4 = [(MUActionRowItemView *)self mk_theme];
        buttonHighlightedColor = [mk_theme4 buttonHighlightedColor];
LABEL_29:
        v20 = buttonHighlightedColor;
        [(UIView *)self->_backgroundView setBackgroundColor:buttonHighlightedColor];
LABEL_30:

        goto LABEL_31;
      }
    }

    else if (!self->_contentBackgroundColor)
    {
      mk_theme4 = [(MUActionRowItemView *)self mk_theme];
      buttonHighlightedColor = [mk_theme4 buttonNormalColor];
      goto LABEL_29;
    }

    [(UIView *)self->_backgroundView setBackgroundColor:?];
LABEL_31:
    [(UIImageView *)self->_glyphImageView setTintColor:v23];
    [(UILabel *)self->_label setTextColor:v23];

    return;
  }

  tintColor4 = [(MUActionRowItemView *)self tintColor];
  if (tintColor4)
  {
    [(MUActionRowItemView *)self tintColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v11 = ;
  [(UIImageView *)self->_glyphImageView setTintColor:v11];

  [(UIView *)self->_backgroundView setBackgroundColor:self->_contentBackgroundColor];
  isEnabled = [(MUActionRowItemView *)self isEnabled];
  v13 = 0.5;
  if (isEnabled)
  {
    v13 = 1.0;
  }

  glyphImageView = self->_glyphImageView;

  [(UIImageView *)glyphImageView setAlpha:v13];
}

- (void)setCornerStyle:(int64_t)style
{
  if (self->_cornerStyle != style)
  {
    self->_cornerStyle = style;
    [(MUActionRowItemView *)self _updateCornerRadius];
  }
}

- (void)setHighlightedBackgroundColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_highlightedBackgroundColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_highlightedBackgroundColor, color);
    [(MUActionRowItemView *)self updateColor];
  }
}

- (void)setGlyphColor:(id)color
{
  if (self->_style == 1)
  {
    [(MUActionRowItemView *)self setTintColor:color];
  }
}

- (void)setContentBackgroundColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_contentBackgroundColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_contentBackgroundColor, color);
    [(MUActionRowItemView *)self updateColor];
  }
}

- (void)setTitleText:(id)text
{
  label = self->_label;
  textCopy = text;
  [(UILabel *)label setText:textCopy];
  [(MUActionRowItemView *)self setToolTip:textCopy];
}

- (void)setTintColor:(id)color
{
  v4.receiver = self;
  v4.super_class = MUActionRowItemView;
  [(MUActionRowItemView *)&v4 setTintColor:color];
  [(MUActionRowItemView *)self updateColor];
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = MUActionRowItemView;
  [(MUActionRowItemView *)&v3 tintColorDidChange];
  [(MUActionRowItemView *)self updateColor];
}

- (void)updateImage
{
  v19[1] = *MEMORY[0x1E69E9840];
  accessoryView = self->_accessoryView;
  if (accessoryView)
  {
    v4 = accessoryView;
  }

  else
  {
    v4 = self->_glyphImageView;
    v5 = [MEMORY[0x1E69DCAB8] _mapsui_systemImageNamed:self->_glyphName];
    [(UIImageView *)self->_glyphImageView setImage:v5];
  }

  v6 = self->_accessoryView;
  if (v4 != v6 || ([(UIView *)v6 superview], v7 = objc_claimAutoreleasedReturnValue(), v8 = self->_accessoryContainerView, v7, v7 != v8))
  {
    glyphImageView = self->_glyphImageView;
    if (v4 != glyphImageView || ([(UIImageView *)glyphImageView superview], v10 = objc_claimAutoreleasedReturnValue(), accessoryContainerView = self->_accessoryContainerView, v10, v10 != accessoryContainerView))
    {
      [(UIView *)self->_accessoryView removeFromSuperview];
      [(UIImageView *)self->_glyphImageView removeFromSuperview];
      [(UIView *)self->_accessoryContainerView addSubview:v4];
      v12 = [[MUBoxLayout alloc] initWithContainer:self->_accessoryContainerView];
      v19[0] = v4;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
      [(MUBoxLayout *)v12 setArrangedLayoutItems:v13];

      [(MUBoxLayout *)v12 setHorizontalAlignment:2];
      [(MUBoxLayout *)v12 setVerticalAlignment:0];
      LODWORD(v14) = 1144750080;
      [(MUBoxLayout *)v12 setHorizontalAlignmentFittingSizePriority:v14];
      v15 = MEMORY[0x1E696ACD8];
      v18 = v12;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
      [v15 _mapsui_activateLayouts:v16];
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)infoCardThemeChanged
{
  v3.receiver = self;
  v3.super_class = MUActionRowItemView;
  [(MUActionRowItemView *)&v3 infoCardThemeChanged];
  [(MUActionRowItemView *)self updateColor];
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MUActionRowItemView;
  [(MUActionRowItemView *)&v4 didMoveToWindow];
  window = [(MUActionRowItemView *)self window];

  if (window)
  {
    [(MUActionRowItemView *)self infoCardThemeChanged];
  }
}

- (void)_updateCornerRadius
{
  cornerStyle = self->_cornerStyle;
  if (cornerStyle == 1)
  {
    [(MUActionRowItemView *)self bounds];
    v4 = CGRectGetHeight(v8) * 0.5;
  }

  else if (cornerStyle)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 16.0;
  }

  [(MUActionRowItemView *)self _setContinuousCornerRadius:v4];
  if (self->_useVibrancy)
  {
    vibrantView = self->_vibrantView;

    [(MKVibrantView *)vibrantView setContinuousCornerRadius:v4];
  }

  else
  {
    backgroundView = self->_backgroundView;

    [(UIView *)backgroundView _setContinuousCornerRadius:v4];
  }
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = MUActionRowItemView;
  [(MUActionRowItemView *)&v6 layoutSubviews];
  if (self->_style == 1)
  {
    layer = [(UIView *)self->_backgroundView layer];
    [layer setCornerRadius:8.0];

    v4 = *MEMORY[0x1E69796E8];
    layer2 = [(UIView *)self->_backgroundView layer];
    [layer2 setCornerCurve:v4];
  }

  if (self->_cornerStyle == 1)
  {
    [(MUActionRowItemView *)self _updateCornerRadius];
  }
}

- (void)_updateMetrics
{
  traitCollection = [(MUActionRowItemView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    v5 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC28]);
    v6 = 18;
    v7 = 12;
    if (v5 == NSOrderedAscending)
    {
      v6 = 12;
      v7 = 8;
    }

    v8 = v6;
    v9 = v7;
    v10 = 10.0;
  }

  else
  {
    v9 = 5.0;
    v10 = 6.0;
    v8 = 8.0;
  }

  [(MUStackLayout *)self->_iconLabelStackLayout setInsets:v10, v8, v10, v8];
  [(MUStackLayout *)self->_iconLabelStackLayout setSpacing:v9];
  [(MUStackLayout *)self->_iconLabelStackLayout setAxis:!self->_fullWidthMode];
  titleUsesMonospacedNumbersFont = self->_titleUsesMonospacedNumbersFont;
  v12 = objc_opt_class();
  if (titleUsesMonospacedNumbersFont)
  {
    [v12 monospacedLabelFont];
  }

  else
  {
    [v12 labelFont];
  }
  v13 = ;
  [(UILabel *)self->_label setFont:v13];
}

- (void)setFullWidthMode:(BOOL)mode
{
  if (self->_fullWidthMode != mode)
  {
    v9 = v3;
    self->_fullWidthMode = mode;
    if (mode)
    {
      v8 = 4;
    }

    else
    {
      v8 = 1;
    }

    [(UILabel *)self->_label setTextAlignment:v8, v4, v9, v5];

    [(MUActionRowItemView *)self _updateMetrics];
  }
}

- (void)setHovering:(BOOL)hovering
{
  if (self->_hovering != hovering)
  {
    self->_hovering = hovering;
    v4 = 1.0;
    if (!UIAccessibilityDarkerSystemColorsEnabled())
    {
      if (self->_hovering)
      {
        v4 = 1.0;
      }

      else
      {
        v4 = 0.0;
      }
    }

    backgroundView = self->_backgroundView;

    [(UIView *)backgroundView setAlpha:v4];
  }
}

- (void)setAccessoryView:(id)view
{
  viewCopy = view;
  if (([(UIView *)self->_accessoryView isEqual:?]& 1) == 0)
  {
    [(UIView *)self->_accessoryView removeFromSuperview];
    objc_storeStrong(&self->_accessoryView, view);
    [(MUActionRowItemView *)self updateImage];
  }
}

- (void)setGlyphName:(id)name
{
  nameCopy = name;
  if (([(NSString *)self->_glyphName isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_glyphName, name);
    [(MUActionRowItemView *)self updateImage];
  }
}

- (void)handleHoverGesture:(id)gesture
{
  v4 = ([gesture state] - 1) < 2;

  [(MUActionRowItemView *)self setHovering:v4];
}

- (void)handleMenuPresentation
{
  delegate = [(MUActionRowItemView *)self delegate];
  [delegate actionRowItemPresentedMenu:self isForActionBar:0 actionBarMoreMenu:0];
}

- (void)handlePress
{
  delegate = [(MUActionRowItemView *)self delegate];
  [delegate actionRowItemSelected:self isForActionBar:0 actionBarMoreMenu:0];
}

- (MUActionRowItemView)initWithStyle:(int64_t)style useVibrancy:(BOOL)vibrancy
{
  v44.receiver = self;
  v44.super_class = MUActionRowItemView;
  v7 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 8);
  v9 = *(MEMORY[0x1E695F058] + 16);
  v8 = *(MEMORY[0x1E695F058] + 24);
  v10 = [(MUActionRowItemView *)&v44 initWithFrame:*MEMORY[0x1E695F058], v6, v9, v8];
  v11 = v10;
  if (!v10)
  {
    return v11;
  }

  v10->_style = style;
  v10->_useVibrancy = vibrancy;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(MUActionRowItemView *)v11 setBackgroundColor:clearColor];

  [(MUActionRowItemView *)v11 setEnabled:1];
  [(MUActionRowItemView *)v11 setPreferredMenuElementOrder:2];
  [(MUActionRowItemView *)v11 _updateCornerRadius];
  if (v11->_useVibrancy)
  {
    v13 = [objc_alloc(MEMORY[0x1E696F430]) initWithFrame:{v7, v6, v9, v8}];
    p_vibrantView = &v11->_vibrantView;
    vibrantView = v11->_vibrantView;
    v11->_vibrantView = v13;

    backgroundView = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.200000003];
    contentView = [(MKVibrantView *)v11->_vibrantView contentView];
    [contentView setBackgroundColor:backgroundView];
  }

  else
  {
    v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v7, v6, v9, v8}];
    p_vibrantView = &v11->_backgroundView;
    backgroundView = v11->_backgroundView;
    v11->_backgroundView = v18;
  }

  [*p_vibrantView setUserInteractionEnabled:0];
  [(MUActionRowItemView *)v11 addSubview:*p_vibrantView];
  v19 = *p_vibrantView;
  v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = [[MUEdgeLayout alloc] initWithItem:v19 container:v11];
  [v20 addObject:v21];
  if (MapKitIdiomIsMacCatalyst())
  {
    if (v11->_style != 1)
    {
LABEL_9:
      v23 = objc_alloc(MEMORY[0x1E69DCC10]);
      [(MUActionRowItemView *)v11 bounds];
      v24 = [v23 initWithFrame:?];
      label = v11->_label;
      v11->_label = v24;

      [(UILabel *)v11->_label setNumberOfLines:1];
      [(UILabel *)v11->_label setTextAlignment:1];
      [(UILabel *)v11->_label setUserInteractionEnabled:0];
      [(UILabel *)v11->_label setAccessibilityIdentifier:@"ActionRowItemLabel"];
      [(MUActionRowItemView *)v11 addSubview:v11->_label];
      goto LABEL_10;
    }

    [(UIView *)v11->_backgroundView setAlpha:0.0];
    v22 = [objc_alloc(MEMORY[0x1E69DCAA0]) initWithTarget:v11 action:sel_handleHoverGesture_];
    [(MUActionRowItemView *)v11 addGestureRecognizer:v22];
  }

  if (v11->_style != 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  v26 = objc_alloc(MEMORY[0x1E69DCAE0]);
  [(MUActionRowItemView *)v11 bounds];
  v27 = [v26 initWithFrame:?];
  glyphImageView = v11->_glyphImageView;
  v11->_glyphImageView = v27;

  [(UIImageView *)v11->_glyphImageView setContentMode:1];
  [(UIImageView *)v11->_glyphImageView setUserInteractionEnabled:0];
  LODWORD(v29) = 1144750080;
  [(UIImageView *)v11->_glyphImageView setContentHuggingPriority:0 forAxis:v29];
  if (v11->_style == 1)
  {
    [MEMORY[0x1E69DCAD8] configurationWithPointSize:5 weight:13.0];
  }

  else
  {
    [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8]];
  }
  v30 = ;
  [(UIImageView *)v11->_glyphImageView setPreferredSymbolConfiguration:v30];

  v31 = objc_alloc(MEMORY[0x1E69DD250]);
  [(MUActionRowItemView *)v11 bounds];
  v32 = [v31 initWithFrame:?];
  accessoryContainerView = v11->_accessoryContainerView;
  v11->_accessoryContainerView = v32;

  [(UIView *)v11->_accessoryContainerView setUserInteractionEnabled:0];
  LODWORD(v34) = 1144750080;
  [(UIView *)v11->_accessoryContainerView setContentHuggingPriority:0 forAxis:v34];
  [(MUActionRowItemView *)v11 addSubview:v11->_accessoryContainerView];
  if (v11->_style)
  {
    [(MUActionRowItemView *)v11 setClipsToBounds:0];
  }

  else
  {
    [(MUActionRowItemView *)v11 _updateCornerRadius];
  }

  [(MUActionRowItemView *)v11 updateColor];
  [(MUActionRowItemView *)v11 updateImage];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v11 selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

  [(MUActionRowItemView *)v11 addTarget:v11 action:sel_handlePress forControlEvents:0x2000];
  [(MUActionRowItemView *)v11 addTarget:v11 action:sel_handleMenuPresentation forControlEvents:0x4000];
  v36 = [[MUStackLayout alloc] initWithContainer:v11 axis:1];
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v37 _mapsui_addObjectIfNotNil:v11->_accessoryContainerView];
  [v37 _mapsui_addObjectIfNotNil:v11->_label];
  v38 = [v37 copy];
  [(MUStackLayout *)v36 setArrangedLayoutItems:v38];

  objc_storeStrong(&v11->_iconLabelStackLayout, v36);
  [(MUActionRowItemView *)v11 _updateMetrics];
  [v20 addObject:v36];
  traitCollection = [(MUActionRowItemView *)v11 traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory))
  {
    UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC28]);
  }

  v41 = MEMORY[0x1E696ACD8];
  v42 = [v20 copy];
  [v41 _mapsui_activateLayouts:v42];

  return v11;
}

+ (id)monospacedLabelFont
{
  labelFont = [self labelFont];
  _mapsui_fontWithMonospacedNumbers = [labelFont _mapsui_fontWithMonospacedNumbers];

  return _mapsui_fontWithMonospacedNumbers;
}

+ (id)labelFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB958]];

  return v3;
}

@end