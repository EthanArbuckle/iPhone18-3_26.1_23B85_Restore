@interface CPUIModernButton
- (BOOL)_supportsFocus;
- (CPUIModernButton)initWithFrame:(CGRect)a3;
- (id)description;
- (void)layoutSubviews;
- (void)pressesBegan:(id)a3 withEvent:(id)a4;
- (void)pressesCancelled:(id)a3 withEvent:(id)a4;
- (void)pressesEnded:(id)a3 withEvent:(id)a4;
- (void)setSelected:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation CPUIModernButton

- (CPUIModernButton)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = CPUIModernButton;
  v3 = [(CPUIModernButton *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(CPUIModernButton *)v3 titleLabel];
    v6 = [MEMORY[0x277D74300] systemFontOfSize:16.0 weight:*MEMORY[0x277D74418]];
    [v5 setFont:v6];

    [(CPUIModernButton *)v4 setShowsTouchWhenHighlighted:0];
    [(CPUIModernButton *)v4 setAdjustsImageWhenDisabled:1];
    [(CPUIModernButton *)v4 setAdjustsImageWhenHighlighted:0];
    [(CPUIModernButton *)v4 _setContinuousCornerRadius:10.0];
    v7 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA5E8]];
    v8 = [(CPUIModernButton *)v4 layer];
    [v8 setCompositingFilter:v7];

    v9 = [(CPUIModernButton *)v4 layer];
    [v9 setAllowsGroupBlending:1];

    if (_os_feature_enabled_impl())
    {
      v10 = [(CPUIModernButton *)v4 titleLabel];
      v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
      [v10 setFont:v11];

      v12 = [(CPUIModernButton *)v4 titleLabel];
      [v12 setAdjustsFontForContentSizeCategory:1];

      v13 = [(CPUIModernButton *)v4 titleLabel];
      [v13 setMaximumContentSizeCategory:*MEMORY[0x277D76828]];
    }
  }

  return v4;
}

- (BOOL)_supportsFocus
{
  v2 = [(CPUIModernButton *)self window];
  v3 = [v2 windowScene];
  v4 = [v3 focusSystem];
  v5 = v4 != 0;

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
    v17 = [(CPUIModernButton *)self _supportsFocus];
    v18 = 0.400000006;
    if (!v17)
    {
      v18 = 0.150000006;
    }

    v19 = [v16 colorWithWhite:1.0 alpha:v18];
    [(CPUIModernButton *)self setBackgroundColor:v19];

    v9 = MEMORY[0x277D75348];
    v10 = [MEMORY[0x277D75348] whiteColor];
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
      v15 = ;
      v23 = [(CPUIModernButton *)self showButtonBackgroundShape];
      v24 = 0.400000006;
      if (!v23)
      {
        v24 = 0.150000006;
      }

      v25 = MEMORY[0x277D75348];
      goto LABEL_28;
    }

    v20 = [(CPUIModernButton *)self isEnabled];
    v21 = [(CPUIModernButton *)self prefersWhiteInDefaultState];
    if (v20)
    {
      if (!v21)
      {
        v22 = 0.600000024;
LABEL_25:
        v26 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:v22];
        goto LABEL_26;
      }
    }

    else if (!v21)
    {
      v22 = 0.3;
      goto LABEL_25;
    }

    v26 = [MEMORY[0x277D75348] whiteColor];
LABEL_26:
    v15 = v26;
    v27 = [(CPUIModernButton *)self showButtonBackgroundShape];
    v25 = MEMORY[0x277D75348];
    if (!v27)
    {
      v28 = [MEMORY[0x277D75348] clearColor];
      goto LABEL_30;
    }

    v24 = 0.150000006;
LABEL_28:
    v28 = [v25 colorWithWhite:1.0 alpha:v24];
LABEL_30:
    v29 = v28;
    [(CPUIModernButton *)self setBackgroundColor:v28];

    v30 = [MEMORY[0x277D75348] colorWithCGColor:{objc_msgSend(v15, "CGColor")}];
    v31 = [(CPUIModernButton *)self imageView];
    [v31 setTintColor:v30];

    v14 = MEMORY[0x277D75348];
    goto LABEL_31;
  }

  v3 = [(CPUIModernButton *)self titleForState:0];
  v4 = [v3 length] == 0;

  v5 = MEMORY[0x277D75348];
  v6 = [(CPUIModernButton *)self isFocused];
  v7 = 1.0;
  if ((v6 & v4) == 0)
  {
    v7 = 0.400000006;
  }

  v8 = [v5 colorWithWhite:1.0 alpha:v7];
  [(CPUIModernButton *)self setBackgroundColor:v8];

  v9 = MEMORY[0x277D75348];
  v10 = [MEMORY[0x277D75348] blackColor];
LABEL_8:
  v11 = v10;
  v12 = [v9 colorWithCGColor:{objc_msgSend(v10, "CGColor")}];
  v13 = [(CPUIModernButton *)self imageView];
  [v13 setTintColor:v12];

  v14 = MEMORY[0x277D75348];
  v15 = [MEMORY[0x277D75348] whiteColor];
LABEL_31:
  v32 = [v14 colorWithCGColor:{objc_msgSend(v15, "CGColor")}];
  [(CPUIModernButton *)self setTitleColor:v32 forState:0];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  if ([(CPUIModernButton *)self isSelected]!= a3)
  {
    v5.receiver = self;
    v5.super_class = CPUIModernButton;
    [(CPUIModernButton *)&v5 setSelected:v3];
    [(CPUIModernButton *)self setNeedsLayout];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = CPUIModernButton;
  v6 = a3;
  [(CPUIModernButton *)&v9 touchesBegan:v6 withEvent:a4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __CPUITouchesContainsTouchType_block_invoke;
  v10[3] = &__block_descriptor_40_e21_B24__0__UITouch_8_B16l;
  v10[4] = 0;
  v7 = [v6 objectsPassingTest:v10];

  v8 = [v7 count];
  if (v8)
  {
    self->_isTouchDown = 1;
    [(CPUIModernButton *)self setNeedsLayout];
  }
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CPUIModernButton;
  [(CPUIModernButton *)&v12 touchesEnded:v6 withEvent:v7];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __CPUITouchesContainsTouchType_block_invoke;
  v13[3] = &__block_descriptor_40_e21_B24__0__UITouch_8_B16l;
  v13[4] = 0;
  v8 = [v6 objectsPassingTest:v13];
  v9 = [v8 count];

  if (v9)
  {
    self->_isTouchDown = 0;
    if (self->_shouldStaySelected && ([v6 anyObject], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "locationInView:", self), -[CPUIModernButton hitTest:withEvent:](self, "hitTest:withEvent:", v7), v11 = objc_claimAutoreleasedReturnValue(), v11, v10, v11))
    {
      [(CPUIModernButton *)self setSelected:[(CPUIModernButton *)self isSelected]^ 1];
    }

    else
    {
      [(CPUIModernButton *)self setNeedsLayout];
    }
  }
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = CPUIModernButton;
  v6 = a3;
  [(CPUIModernButton *)&v9 touchesCancelled:v6 withEvent:a4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __CPUITouchesContainsTouchType_block_invoke;
  v10[3] = &__block_descriptor_40_e21_B24__0__UITouch_8_B16l;
  v10[4] = 0;
  v7 = [v6 objectsPassingTest:v10];

  v8 = [v7 count];
  if (v8)
  {
    self->_isTouchDown = 0;
    [(CPUIModernButton *)self setNeedsLayout];
  }
}

- (void)pressesBegan:(id)a3 withEvent:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CPUIModernButton;
  [(CPUIModernButton *)&v13 pressesBegan:v6 withEvent:a4];
  v7 = v6;
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

- (void)pressesEnded:(id)a3 withEvent:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CPUIModernButton;
  [(CPUIModernButton *)&v13 pressesEnded:v6 withEvent:a4];
  v7 = v6;
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

- (void)pressesCancelled:(id)a3 withEvent:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CPUIModernButton;
  [(CPUIModernButton *)&v13 pressesCancelled:v6 withEvent:a4];
  v7 = v6;
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
  v5 = [(CPUIModernButton *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ identifier: %@;", v4, v5];;

  return v6;
}

@end