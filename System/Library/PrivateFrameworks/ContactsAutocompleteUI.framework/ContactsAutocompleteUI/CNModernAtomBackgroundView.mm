@interface CNModernAtomBackgroundView
- (BOOL)appearsSelected;
- (CNAtomView)hostAtomView;
- (CNModernAtomBackgroundView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)_backgroundBleedArea;
- (double)separatorWidth;
- (id)_chevronImage;
- (id)wrappedTintColor;
- (void)_setSelectionStyle:(unint64_t)a3;
- (void)_setupBackgroundView;
- (void)displaySelectionChangeWithAnimation:(BOOL)a3;
- (void)invalidateIntrinsicContentSize;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4 style:(unint64_t)a5 updateVisualSelection:(BOOL)a6;
- (void)setSeparatorStyle:(int)a3;
- (void)tintColorDidChange;
@end

@implementation CNModernAtomBackgroundView

- (void)_setupBackgroundView
{
  self->_scalingFactor = 1.0;
  [(CNModernAtomBackgroundView *)self setAutoresizesSubviews:1];
  [(UIView *)self->_selectedView removeFromSuperview];
  v3 = objc_alloc(MEMORY[0x1E69DD250]);
  [(CNModernAtomBackgroundView *)self bounds];
  v4 = [v3 initWithFrame:?];
  selectedView = self->_selectedView;
  self->_selectedView = v4;

  v6 = [(CNModernAtomBackgroundView *)self wrappedTintColor];
  [(UIView *)self->_selectedView setBackgroundColor:v6];

  [(UIView *)self->_selectedView setAlpha:0.0];
  [(UIView *)self->_selectedView setAutoresizingMask:2];
  v7 = [(UIView *)self->_selectedView layer];
  [v7 setShouldRasterize:1];

  v8 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v8 scale];
  v10 = v9;
  v11 = [(UIView *)self->_selectedView layer];
  [v11 setRasterizationScale:v10];

  [(UIView *)self->_selectedView _setContinuousCornerRadius:4.5];
  [(CNModernAtomBackgroundView *)self addSubview:self->_selectedView];
  self->_selectionStyle = 0;
}

- (CNModernAtomBackgroundView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = CNModernAtomBackgroundView;
  v3 = [(CNModernAtomBackgroundView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CNModernAtomBackgroundView *)v3 _setupBackgroundView];
  }

  return v4;
}

- (id)wrappedTintColor
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__CNModernAtomBackgroundView_wrappedTintColor__block_invoke;
  v4[3] = &unk_1E7CD27A0;
  v4[4] = self;
  v2 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:v4];

  return v2;
}

- (void)tintColorDidChange
{
  v3 = [(CNModernAtomBackgroundView *)self wrappedTintColor];
  [(UIView *)self->_selectedView setBackgroundColor:v3];
}

- (double)separatorWidth
{
  v3 = [(CNModernAtomBackgroundView *)self hostAtomView];
  v4 = [v3 isWrappingEnabled];

  result = 0.0;
  if ((v4 & 1) == 0)
  {
    separatorStyle = self->_separatorStyle;
    [(UIView *)self->_separatorView bounds];
    if (separatorStyle)
    {
      v8 = 3.0;
    }

    else
    {
      v8 = -7.0;
    }

    return v7 + v8;
  }

  return result;
}

- (UIEdgeInsets)_backgroundBleedArea
{
  [(CNModernAtomBackgroundView *)self separatorWidth];
  v3 = v2;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.right = v3;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (void)layoutSubviews
{
  [(CNModernAtomBackgroundView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v36 = [(CNModernAtomBackgroundView *)self hostAtomView];
  v11 = [v36 separatorIsLeftAligned];
  v12 = v11;
  if (self->_separatorStyle)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11 == 0;
  }

  v14 = v4;
  if (!v13)
  {
    [(CNModernAtomBackgroundView *)self separatorWidth];
    v14 = v4 + v15;
  }

  [(UIView *)self->_selectedView setFrame:v14, v6, v8, v10];
  [(CNModernAtomBackgroundView *)self _setSelectionStyle:self->_selectionStyle];
  if (([v36 isWrappingEnabled] & 1) == 0)
  {
    [(UIView *)self->_separatorView sizeToFit];
    [(UIView *)self->_separatorView frame];
    v17 = v16;
    v19 = v18;
    UIRoundToViewScale();
    v21 = v20 + 1.0;
    v22 = floor(v4 + v8 - v17) + -3.0;
    if (v12)
    {
      v23 = 3.0;
    }

    else
    {
      v23 = v22;
    }

    if (self->_separatorStyle)
    {
      goto LABEL_24;
    }

    v24 = [v36 accessoryIconView];
    v25 = [v36 presentationOptions];
    v26 = [v24 iconImages];
    v27 = [v26 count];

    if (v12)
    {
      if (v27)
      {
        [v24 frame];
        MinX = CGRectGetMinX(v38);
        [v24 iconPadding];
        v30 = MinX + v29 + -3.0;
      }

      else
      {
        v33 = [v36 titleLabel];
        [v33 frame];
        v30 = CGRectGetMinX(v40);
      }

      v23 = v30 - v17;
      if ((v25 & 4) == 0)
      {
        goto LABEL_23;
      }

      v34 = [v36 activityIndicator];
      [v34 frame];
      v23 = v23 - (CGRectGetWidth(v41) + 3.0);
    }

    else
    {
      if (v27)
      {
        [v24 frame];
        MaxX = CGRectGetMaxX(v39);
        [v24 iconPadding];
        v23 = MaxX - v32 + 3.0;
        if ((v25 & 4) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v35 = [v36 titleLabel];
        [v35 frame];
        v23 = CGRectGetMaxX(v42);

        if ((v25 & 4) == 0)
        {
LABEL_23:

LABEL_24:
          [(UIView *)self->_separatorView setFrame:v23, v21, v17, v19];
          goto LABEL_25;
        }
      }

      v34 = [v36 activityIndicator];
      [v34 frame];
      v23 = v23 + CGRectGetWidth(v43) + 3.0;
    }

    goto LABEL_23;
  }

LABEL_25:
}

- (void)_setSelectionStyle:(unint64_t)a3
{
  self->_selectionStyle = a3;
  v3 = 5;
  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    v3 = 0;
  }

  if (a3 - 1 >= 2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v3 | 0xA;
  }

  v5 = [(UIView *)self->_selectedView layer];
  [v5 setMaskedCorners:v4];
}

- (BOOL)appearsSelected
{
  if (![(CNModernAtomBackgroundView *)self isSelected])
  {
    return 0;
  }

  v3 = [(CNModernAtomBackgroundView *)self hostAtomView];
  v4 = [v3 traitCollection];
  v5 = [v4 activeAppearance] == 1;

  return v5;
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4 style:(unint64_t)a5 updateVisualSelection:(BOOL)a6
{
  v6 = a6;
  v7 = a4;
  if (self->_selected != a3 || self->_selectionStyle != a5)
  {
    self->_selected = a3;
    [(CNModernAtomBackgroundView *)self _setSelectionStyle:a5];
    if (v6)
    {

      [(CNModernAtomBackgroundView *)self displaySelectionChangeWithAnimation:v7];
    }
  }
}

- (void)displaySelectionChangeWithAnimation:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNModernAtomBackgroundView *)self appearsSelected];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__CNModernAtomBackgroundView_displaySelectionChangeWithAnimation___block_invoke;
  v8[3] = &unk_1E7CD2750;
  v8[4] = self;
  v9 = v5;
  v6 = MEMORY[0x1B8CB9350](v8);
  v7 = v6;
  if (v3)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:v6 animations:0.15];
  }

  else
  {
    (*(v6 + 16))(v6);
  }

  [(CNModernAtomBackgroundView *)self setNeedsDisplay];
  [(CNModernAtomBackgroundView *)self layoutSubviews];
}

void __66__CNModernAtomBackgroundView_displaySelectionChangeWithAnimation___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) separatorStyle])
  {
    v2 = [*(a1 + 32) separatorView];
    v3 = v2;
    v4 = 1.0;
    if (*(a1 + 40))
    {
      v4 = 0.0;
    }

    [v2 setAlpha:v4];
  }

  v5 = [*(a1 + 32) selectedView];
  v7 = v5;
  v6 = 0.0;
  if (*(a1 + 40))
  {
    v6 = 1.0;
  }

  [v5 setAlpha:v6];
}

- (id)_chevronImage
{
  v2 = [(CNModernAtomBackgroundView *)self hostAtomView];
  v3 = MEMORY[0x1E69DCAD8];
  v4 = [v2 titleFont];
  [v4 pointSize];
  v5 = [v3 configurationWithPointSize:6 weight:1 scale:?];

  v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward" withConfiguration:v5];
  v7 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  v8 = [v6 imageWithTintColor:v7 renderingMode:1];

  return v8;
}

- (void)setSeparatorStyle:(int)a3
{
  self->_separatorStyle = a3;
  v17 = [(CNModernAtomBackgroundView *)self hostAtomView];
  v5 = [v17 isWrappingEnabled];
  separatorView = self->_separatorView;
  if (a3 == 2 || v5)
  {
    [(UIView *)separatorView removeFromSuperview];
    v9 = self->_separatorView;
    self->_separatorView = 0;
LABEL_13:

    goto LABEL_14;
  }

  if (!separatorView || self->_separatorStyle != a3)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        [CNModernAtomBackgroundView setSeparatorStyle:];
      }

      v7 = [(CNModernAtomBackgroundView *)self _chevronImage];
      v8 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v7];
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x1E69DCC10]);
      v8 = [v10 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
      v11 = CNAUILocalizedAddressSeparator();
      [(UIView *)v8 setText:v11];

      v12 = +[CNAtomView defaultFont];
      [(UIView *)v8 setFont:v12];

      v13 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:1.0];
      [(UIView *)v8 setTextColor:v13];

      v14 = [MEMORY[0x1E69DC888] clearColor];
      [(UIView *)v8 setBackgroundColor:v14];

      [(UIView *)v8 setAutoresizingMask:0];
      [(UIView *)v8 sizeToFit];
      [(UIView *)v8 setHidden:[(CNModernAtomBackgroundView *)self isSelected]];
    }

    v15 = self->_separatorView;
    if (v15)
    {
      [(UIView *)v15 removeFromSuperview];
    }

    v16 = self->_separatorView;
    self->_separatorView = v8;
    v9 = v8;

    [(CNModernAtomBackgroundView *)self addSubview:self->_separatorView];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)invalidateIntrinsicContentSize
{
  v7.receiver = self;
  v7.super_class = CNModernAtomBackgroundView;
  [(CNModernAtomBackgroundView *)&v7 invalidateIntrinsicContentSize];
  v3 = [(CNModernAtomBackgroundView *)self hostAtomView];
  v4 = [v3 isWrappingEnabled];

  if ((v4 & 1) == 0)
  {
    if ([(CNModernAtomBackgroundView *)self separatorStyle]== 1)
    {
      v5 = [(CNModernAtomBackgroundView *)self _chevronImage];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(UIView *)self->_separatorView setImage:v5];
      }

      goto LABEL_8;
    }

    if (![(CNModernAtomBackgroundView *)self separatorStyle])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(UIView *)self->_separatorView setHidden:[(CNModernAtomBackgroundView *)self isSelected]];
        v6 = self->_separatorView;
        v5 = +[CNAtomView defaultFont];
        [(UIView *)v6 setFont:v5];

LABEL_8:
      }
    }
  }
}

- (CNAtomView)hostAtomView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostAtomView);

  return WeakRetained;
}

@end