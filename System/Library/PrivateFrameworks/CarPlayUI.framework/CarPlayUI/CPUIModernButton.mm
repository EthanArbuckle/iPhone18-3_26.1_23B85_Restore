@interface CPUIModernButton
- (BOOL)_supportsFocus;
- (CPUIModernButton)initWithFrame:(CGRect)frame;
- (id)description;
- (void)layoutSubviews;
- (void)pressesBegan:(id)began withEvent:(id)event;
- (void)pressesCancelled:(id)cancelled withEvent:(id)event;
- (void)pressesEnded:(id)ended withEvent:(id)event;
- (void)setSelected:(BOOL)selected;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation CPUIModernButton

- (CPUIModernButton)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = CPUIModernButton;
  v3 = [(CPUIModernButton *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    titleLabel = [(CPUIModernButton *)v3 titleLabel];
    v6 = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:*MEMORY[0x277D74418]];
    [titleLabel setFont:v6];

    [(CPUIModernButton *)v4 setShowsTouchWhenHighlighted:0];
    [(CPUIModernButton *)v4 setAdjustsImageWhenDisabled:1];
    [(CPUIModernButton *)v4 setAdjustsImageWhenHighlighted:0];
    [(CPUIModernButton *)v4 _setContinuousCornerRadius:10.0];
    v7 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    layer = [(CPUIModernButton *)v4 layer];
    [layer setCompositingFilter:v7];

    layer2 = [(CPUIModernButton *)v4 layer];
    [layer2 setAllowsGroupBlending:1];

    if (_os_feature_enabled_impl())
    {
      titleLabel2 = [(CPUIModernButton *)v4 titleLabel];
      v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
      [titleLabel2 setFont:v11];

      titleLabel3 = [(CPUIModernButton *)v4 titleLabel];
      [titleLabel3 setAdjustsFontForContentSizeCategory:1];

      titleLabel4 = [(CPUIModernButton *)v4 titleLabel];
      [titleLabel4 setMaximumContentSizeCategory:*MEMORY[0x277D76828]];
    }
  }

  return v4;
}

- (BOOL)_supportsFocus
{
  window = [(CPUIModernButton *)self window];
  windowScene = [window windowScene];
  focusSystem = [windowScene focusSystem];
  v5 = focusSystem != 0;

  return v5;
}

- (void)layoutSubviews
{
  v33.receiver = self;
  v33.super_class = CPUIModernButton;
  [(CPUIModernButton *)&v33 layoutSubviews];
  if (__PAIR64__(self->_isTouchDown, self->_shouldStaySelected) == 0x100000001 && ([(CPUIModernButton *)self isSelected]& 1) == 0)
  {
    v16 = MEMORY[0x277D75348];
    _supportsFocus = [(CPUIModernButton *)self _supportsFocus];
    v18 = 0.400000006;
    if (!_supportsFocus)
    {
      v18 = 0.150000006;
    }

    v19 = [v16 colorWithWhite:1.0 alpha:v18];
    [(CPUIModernButton *)self setBackgroundColor:v19];

    v9 = MEMORY[0x277D75348];
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    goto LABEL_8;
  }

  if (([(CPUIModernButton *)self isSelected]& 1) == 0 && ![(CPUIModernButton *)self isHighlighted])
  {
    if ([(CPUIModernButton *)self isFocused])
    {
      if ([(CPUIModernButton *)self prefersWhiteInDefaultState])
      {
        [MEMORY[0x277D75348] whiteColor];
      }

      else
      {
        [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.600000024];
      }
      whiteColor3 = ;
      showButtonBackgroundShape = [(CPUIModernButton *)self showButtonBackgroundShape];
      v24 = 0.400000006;
      if (!showButtonBackgroundShape)
      {
        v24 = 0.150000006;
      }

      v25 = MEMORY[0x277D75348];
      goto LABEL_28;
    }

    isEnabled = [(CPUIModernButton *)self isEnabled];
    prefersWhiteInDefaultState = [(CPUIModernButton *)self prefersWhiteInDefaultState];
    if (isEnabled)
    {
      if (!prefersWhiteInDefaultState)
      {
        v22 = 0.600000024;
LABEL_25:
        whiteColor2 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:v22];
        goto LABEL_26;
      }
    }

    else if (!prefersWhiteInDefaultState)
    {
      v22 = 0.3;
      goto LABEL_25;
    }

    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
LABEL_26:
    whiteColor3 = whiteColor2;
    showButtonBackgroundShape2 = [(CPUIModernButton *)self showButtonBackgroundShape];
    v25 = MEMORY[0x277D75348];
    if (!showButtonBackgroundShape2)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];
      goto LABEL_30;
    }

    v24 = 0.150000006;
LABEL_28:
    clearColor = [v25 colorWithWhite:1.0 alpha:v24];
LABEL_30:
    v29 = clearColor;
    [(CPUIModernButton *)self setBackgroundColor:clearColor];

    v30 = [MEMORY[0x277D75348] colorWithCGColor:{objc_msgSend(whiteColor3, "CGColor")}];
    imageView = [(CPUIModernButton *)self imageView];
    [imageView setTintColor:v30];

    v14 = MEMORY[0x277D75348];
    goto LABEL_31;
  }

  v3 = [(CPUIModernButton *)self titleForState:0];
  v4 = [v3 length] == 0;

  v5 = MEMORY[0x277D75348];
  isFocused = [(CPUIModernButton *)self isFocused];
  v7 = 1.0;
  if ((isFocused & v4) == 0)
  {
    v7 = 0.400000006;
  }

  v8 = [v5 colorWithWhite:1.0 alpha:v7];
  [(CPUIModernButton *)self setBackgroundColor:v8];

  v9 = MEMORY[0x277D75348];
  whiteColor = [MEMORY[0x277D75348] blackColor];
LABEL_8:
  v11 = whiteColor;
  v12 = [v9 colorWithCGColor:{objc_msgSend(whiteColor, "CGColor")}];
  imageView2 = [(CPUIModernButton *)self imageView];
  [imageView2 setTintColor:v12];

  v14 = MEMORY[0x277D75348];
  whiteColor3 = [MEMORY[0x277D75348] whiteColor];
LABEL_31:
  v32 = [v14 colorWithCGColor:{objc_msgSend(whiteColor3, "CGColor")}];
  [(CPUIModernButton *)self setTitleColor:v32 forState:0];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  if ([(CPUIModernButton *)self isSelected]!= selected)
  {
    v5.receiver = self;
    v5.super_class = CPUIModernButton;
    [(CPUIModernButton *)&v5 setSelected:selectedCopy];
    [(CPUIModernButton *)self setNeedsLayout];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = CPUIModernButton;
  beganCopy = began;
  [(CPUIModernButton *)&v9 touchesBegan:beganCopy withEvent:event];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __CPUITouchesContainsTouchType_block_invoke;
  v10[3] = &__block_descriptor_40_e21_B24__0__UITouch_8_B16l;
  v10[4] = 0;
  v7 = [beganCopy objectsPassingTest:v10];

  v8 = [v7 count];
  if (v8)
  {
    self->_isTouchDown = 1;
    [(CPUIModernButton *)self setNeedsLayout];
  }
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  endedCopy = ended;
  eventCopy = event;
  v12.receiver = self;
  v12.super_class = CPUIModernButton;
  [(CPUIModernButton *)&v12 touchesEnded:endedCopy withEvent:eventCopy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __CPUITouchesContainsTouchType_block_invoke;
  v13[3] = &__block_descriptor_40_e21_B24__0__UITouch_8_B16l;
  v13[4] = 0;
  v8 = [endedCopy objectsPassingTest:v13];
  v9 = [v8 count];

  if (v9)
  {
    self->_isTouchDown = 0;
    if (self->_shouldStaySelected && ([endedCopy anyObject], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "locationInView:", self), -[CPUIModernButton hitTest:withEvent:](self, "hitTest:withEvent:", eventCopy), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
    {
      [(CPUIModernButton *)self setSelected:[(CPUIModernButton *)self isSelected]^ 1];
    }

    else
    {
      [(CPUIModernButton *)self setNeedsLayout];
    }
  }
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = CPUIModernButton;
  cancelledCopy = cancelled;
  [(CPUIModernButton *)&v9 touchesCancelled:cancelledCopy withEvent:event];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __CPUITouchesContainsTouchType_block_invoke;
  v10[3] = &__block_descriptor_40_e21_B24__0__UITouch_8_B16l;
  v10[4] = 0;
  v7 = [cancelledCopy objectsPassingTest:v10];

  v8 = [v7 count];
  if (v8)
  {
    self->_isTouchDown = 0;
    [(CPUIModernButton *)self setNeedsLayout];
  }
}

- (void)pressesBegan:(id)began withEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  beganCopy = began;
  v13.receiver = self;
  v13.super_class = CPUIModernButton;
  [(CPUIModernButton *)&v13 pressesBegan:beganCopy withEvent:event];
  v7 = beganCopy;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v14 + 1) + 8 * v12) type] == 4)
        {

          [(CPUIModernButton *)self setHighlighted:1];
          goto LABEL_11;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (void)pressesEnded:(id)ended withEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  v13.receiver = self;
  v13.super_class = CPUIModernButton;
  [(CPUIModernButton *)&v13 pressesEnded:endedCopy withEvent:event];
  v7 = endedCopy;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v14 + 1) + 8 * v12) type] == 4)
        {

          if (self->_shouldStaySelected)
          {
            [(CPUIModernButton *)self setSelected:[(CPUIModernButton *)self isSelected]^ 1];
          }

          [(CPUIModernButton *)self setHighlighted:0];
          goto LABEL_13;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)pressesCancelled:(id)cancelled withEvent:(id)event
{
  v19 = *MEMORY[0x277D85DE8];
  cancelledCopy = cancelled;
  v13.receiver = self;
  v13.super_class = CPUIModernButton;
  [(CPUIModernButton *)&v13 pressesCancelled:cancelledCopy withEvent:event];
  v7 = cancelledCopy;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v14 + 1) + 8 * v12) type] == 4)
        {

          [(CPUIModernButton *)self setHighlighted:0];
          goto LABEL_11;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CPUIModernButton;
  v4 = [(CPUIModernButton *)&v8 description];
  identifier = [(CPUIModernButton *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ identifier: %@;", v4, identifier];;

  return v6;
}

@end