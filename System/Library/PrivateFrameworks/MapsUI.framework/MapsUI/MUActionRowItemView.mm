@interface MUActionRowItemView
+ (id)labelFont;
+ (id)monospacedLabelFont;
- (MUActionRowItemView)initWithStyle:(int64_t)a3 useVibrancy:(BOOL)a4;
- (MUActionRowItemViewDelegate)delegate;
- (void)_touchBegan;
- (void)_touchEnded;
- (void)_updateCornerRadius;
- (void)_updateMetrics;
- (void)didMoveToWindow;
- (void)handleHoverGesture:(id)a3;
- (void)handleMenuPresentation;
- (void)handlePress;
- (void)infoCardThemeChanged;
- (void)layoutSubviews;
- (void)setAccessoryView:(id)a3;
- (void)setContentBackgroundColor:(id)a3;
- (void)setCornerStyle:(int64_t)a3;
- (void)setFullWidthMode:(BOOL)a3;
- (void)setGlyphColor:(id)a3;
- (void)setGlyphName:(id)a3;
- (void)setHighlightedBackgroundColor:(id)a3;
- (void)setHovering:(BOOL)a3;
- (void)setMenu:(id)a3;
- (void)setTintColor:(id)a3;
- (void)setTitleText:(id)a3;
- (void)setTitleUsesMonospacedNumbersFont:(BOOL)a3;
- (void)setTouched:(BOOL)a3;
- (void)tintColorDidChange;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)updateColor;
- (void)updateImage;
@end

@implementation MUActionRowItemView

- (MUActionRowItemViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setMenu:(id)a3
{
  v5.receiver = self;
  v5.super_class = MUActionRowItemView;
  [(MUActionRowItemView *)&v5 setMenu:a3];
  v4 = [(MUActionRowItemView *)self menu];

  if (v4)
  {
    [(MUActionRowItemView *)self removeTarget:self action:sel_handlePress forControlEvents:0x2000];
  }

  else
  {
    [(MUActionRowItemView *)self addTarget:self action:sel_handlePress forControlEvents:0x2000];
  }

  [(MUActionRowItemView *)self setShowsMenuAsPrimaryAction:v4 != 0];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MUActionRowItemView;
  [(MUActionRowItemView *)&v5 touchesEnded:a3 withEvent:a4];
  [(MUActionRowItemView *)self _touchEnded];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = MUActionRowItemView;
  [(MUActionRowItemView *)&v5 touchesCancelled:a3 withEvent:a4];
  [(MUActionRowItemView *)self _touchCancelled];
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = MUActionRowItemView;
  v6 = a4;
  [(MUActionRowItemView *)&v10 touchesBegan:a3 withEvent:v6];
  v7 = [(MUActionRowItemView *)self window:v10.receiver];
  v8 = [v6 touchesForWindow:v7];

  v9 = [v8 anyObject];

  if ([v9 tapCount] == 1)
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

- (void)setTouched:(BOOL)a3
{
  if (self->_touched != a3)
  {
    self->_touched = a3;
    [(MUActionRowItemView *)self updateColor];
  }
}

- (void)setTitleUsesMonospacedNumbersFont:(BOOL)a3
{
  if (self->_titleUsesMonospacedNumbersFont != a3)
  {
    self->_titleUsesMonospacedNumbersFont = a3;
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

    v4 = [(MUActionRowItemView *)self mk_theme];
    v22 = [v4 tintColor];

    v5 = [(MUActionRowItemView *)self tintColor];

    if (v5)
    {
      v6 = [(MUActionRowItemView *)self tintColor];

      v22 = v6;
    }

    if ([(MUActionRowItemView *)self isEnabled]&& [(MUActionRowItemView *)self tintAdjustmentMode]!= 2)
    {
      v9 = v22;
    }

    else
    {
      v7 = [(MUActionRowItemView *)self mk_theme];
      v8 = [v7 disabledActionRowTextColor];

      v9 = v8;
    }

    v23 = v9;
    if (self->_useVibrancy)
    {
      v15 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
      [(MKVibrantView *)self->_vibrantView setBackgroundColor:v15];

      touched = self->_touched;
      v17 = [(MUActionRowItemView *)self mk_theme];
      v18 = v17;
      if (touched)
      {
        [v17 buttonHighlightedColor];
      }

      else
      {
        [v17 buttonNormalColor];
      }
      v20 = ;
      v21 = [(MKVibrantView *)self->_vibrantView contentView];
      [v21 setBackgroundColor:v20];

      goto LABEL_30;
    }

    if (self->_touched)
    {
      if (!self->_highlightedBackgroundColor)
      {
        v18 = [(MUActionRowItemView *)self mk_theme];
        v19 = [v18 buttonHighlightedColor];
LABEL_29:
        v20 = v19;
        [(UIView *)self->_backgroundView setBackgroundColor:v19];
LABEL_30:

        goto LABEL_31;
      }
    }

    else if (!self->_contentBackgroundColor)
    {
      v18 = [(MUActionRowItemView *)self mk_theme];
      v19 = [v18 buttonNormalColor];
      goto LABEL_29;
    }

    [(UIView *)self->_backgroundView setBackgroundColor:?];
LABEL_31:
    [(UIImageView *)self->_glyphImageView setTintColor:v23];
    [(UILabel *)self->_label setTextColor:v23];

    return;
  }

  v10 = [(MUActionRowItemView *)self tintColor];
  if (v10)
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
  v12 = [(MUActionRowItemView *)self isEnabled];
  v13 = 0.5;
  if (v12)
  {
    v13 = 1.0;
  }

  glyphImageView = self->_glyphImageView;

  [(UIImageView *)glyphImageView setAlpha:v13];
}

- (void)setCornerStyle:(int64_t)a3
{
  if (self->_cornerStyle != a3)
  {
    self->_cornerStyle = a3;
    [(MUActionRowItemView *)self _updateCornerRadius];
  }
}

- (void)setHighlightedBackgroundColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_highlightedBackgroundColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_highlightedBackgroundColor, a3);
    [(MUActionRowItemView *)self updateColor];
  }
}

- (void)setGlyphColor:(id)a3
{
  if (self->_style == 1)
  {
    [(MUActionRowItemView *)self setTintColor:a3];
  }
}

- (void)setContentBackgroundColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_contentBackgroundColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_contentBackgroundColor, a3);
    [(MUActionRowItemView *)self updateColor];
  }
}

- (void)setTitleText:(id)a3
{
  label = self->_label;
  v5 = a3;
  [(UILabel *)label setText:v5];
  [(MUActionRowItemView *)self setToolTip:v5];
}

- (void)setTintColor:(id)a3
{
  v4.receiver = self;
  v4.super_class = MUActionRowItemView;
  [(MUActionRowItemView *)&v4 setTintColor:a3];
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
  v3 = [(MUActionRowItemView *)self window];

  if (v3)
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
    v3 = [(UIView *)self->_backgroundView layer];
    [v3 setCornerRadius:8.0];

    v4 = *MEMORY[0x1E69796E8];
    v5 = [(UIView *)self->_backgroundView layer];
    [v5 setCornerCurve:v4];
  }

  if (self->_cornerStyle == 1)
  {
    [(MUActionRowItemView *)self _updateCornerRadius];
  }
}

- (void)_updateMetrics
{
  v3 = [(MUActionRowItemView *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v4))
  {
    v5 = UIContentSizeCategoryCompareToCategory(v4, *MEMORY[0x1E69DDC28]);
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

- (void)setFullWidthMode:(BOOL)a3
{
  if (self->_fullWidthMode != a3)
  {
    v9 = v3;
    self->_fullWidthMode = a3;
    if (a3)
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

- (void)setHovering:(BOOL)a3
{
  if (self->_hovering != a3)
  {
    self->_hovering = a3;
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

- (void)setAccessoryView:(id)a3
{
  v5 = a3;
  if (([(UIView *)self->_accessoryView isEqual:?]& 1) == 0)
  {
    [(UIView *)self->_accessoryView removeFromSuperview];
    objc_storeStrong(&self->_accessoryView, a3);
    [(MUActionRowItemView *)self updateImage];
  }
}

- (void)setGlyphName:(id)a3
{
  v5 = a3;
  if (([(NSString *)self->_glyphName isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_glyphName, a3);
    [(MUActionRowItemView *)self updateImage];
  }
}

- (void)handleHoverGesture:(id)a3
{
  v4 = ([a3 state] - 1) < 2;

  [(MUActionRowItemView *)self setHovering:v4];
}

- (void)handleMenuPresentation
{
  v3 = [(MUActionRowItemView *)self delegate];
  [v3 actionRowItemPresentedMenu:self isForActionBar:0 actionBarMoreMenu:0];
}

- (void)handlePress
{
  v3 = [(MUActionRowItemView *)self delegate];
  [v3 actionRowItemSelected:self isForActionBar:0 actionBarMoreMenu:0];
}

- (MUActionRowItemView)initWithStyle:(int64_t)a3 useVibrancy:(BOOL)a4
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

  v10->_style = a3;
  v10->_useVibrancy = a4;
  v12 = [MEMORY[0x1E69DC888] clearColor];
  [(MUActionRowItemView *)v11 setBackgroundColor:v12];

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
    v17 = [(MKVibrantView *)v11->_vibrantView contentView];
    [v17 setBackgroundColor:backgroundView];
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
  v35 = [MEMORY[0x1E696AD88] defaultCenter];
  [v35 addObserver:v11 selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

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
  v39 = [(MUActionRowItemView *)v11 traitCollection];
  v40 = [v39 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v40))
  {
    UIContentSizeCategoryCompareToCategory(v40, *MEMORY[0x1E69DDC28]);
  }

  v41 = MEMORY[0x1E696ACD8];
  v42 = [v20 copy];
  [v41 _mapsui_activateLayouts:v42];

  return v11;
}

+ (id)monospacedLabelFont
{
  v2 = [a1 labelFont];
  v3 = [v2 _mapsui_fontWithMonospacedNumbers];

  return v3;
}

+ (id)labelFont
{
  v2 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
  v3 = [v2 _mapkit_fontWithWeight:*MEMORY[0x1E69DB958]];

  return v3;
}

@end