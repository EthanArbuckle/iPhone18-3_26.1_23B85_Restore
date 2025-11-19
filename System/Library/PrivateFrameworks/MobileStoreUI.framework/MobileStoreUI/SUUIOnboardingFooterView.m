@interface SUUIOnboardingFooterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIButton)leftButton;
- (UIButton)rightButton;
- (id)_newButton;
- (void)_hideButton:(id)a3 withAnimation:(int64_t)a4;
- (void)_showButton:(id)a3 withTitle:(id)a4 animation:(int64_t)a5;
- (void)layoutSubviews;
- (void)setProgressView:(id)a3;
- (void)showLeftButtonWithTitle:(id)a3 animation:(int64_t)a4;
- (void)showRightButtonWithTitle:(id)a3 animation:(int64_t)a4;
@end

@implementation SUUIOnboardingFooterView

- (UIButton)leftButton
{
  leftButton = self->_leftButton;
  if (!leftButton)
  {
    v4 = [(SUUIOnboardingFooterView *)self _newButton];
    v5 = self->_leftButton;
    self->_leftButton = v4;

    [(SUUIOnboardingFooterView *)self addSubview:self->_leftButton];
    leftButton = self->_leftButton;
  }

  return leftButton;
}

- (UIButton)rightButton
{
  rightButton = self->_rightButton;
  if (!rightButton)
  {
    v4 = [(SUUIOnboardingFooterView *)self _newButton];
    v5 = self->_rightButton;
    self->_rightButton = v4;

    [(SUUIOnboardingFooterView *)self addSubview:self->_rightButton];
    rightButton = self->_rightButton;
  }

  return rightButton;
}

- (void)setProgressView:(id)a3
{
  v5 = a3;
  progressView = self->_progressView;
  if (progressView != v5)
  {
    v7 = v5;
    [(SUUIOnboardingProgressView *)progressView removeFromSuperview];
    objc_storeStrong(&self->_progressView, a3);
    if (self->_progressView)
    {
      [(SUUIOnboardingFooterView *)self addSubview:?];
    }

    progressView = [(SUUIOnboardingFooterView *)self setNeedsLayout];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](progressView, v5);
}

- (void)showLeftButtonWithTitle:(id)a3 animation:(int64_t)a4
{
  v6 = a3;
  v7 = [(SUUIOnboardingFooterView *)self leftButton];
  [(SUUIOnboardingFooterView *)self _showButton:v7 withTitle:v6 animation:a4];
}

- (void)showRightButtonWithTitle:(id)a3 animation:(int64_t)a4
{
  v6 = a3;
  v7 = [(SUUIOnboardingFooterView *)self rightButton];
  [(SUUIOnboardingFooterView *)self _showButton:v7 withTitle:v6 animation:a4];
}

- (void)layoutSubviews
{
  [(SUUIOnboardingFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  progressView = self->_progressView;
  if (progressView)
  {
    [(SUUIOnboardingProgressView *)progressView frame];
    [(SUUIOnboardingProgressView *)self->_progressView sizeThatFits:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
    v9 = v8;
    v11 = v10;
    *&v8 = (v4 - v8) * 0.5;
    v12 = floorf(*&v8);
    *&v8 = (v6 - v10) * 0.5;
    v13 = floorf(*&v8);
    [(SUUIOnboardingProgressView *)self->_progressView setFrame:v12, v13, v9, v10];
    v30.origin.x = v12;
    v30.origin.y = v13;
    v30.size.width = v9;
    v30.size.height = v11;
    MaxX = CGRectGetMaxX(v30);
    v15 = v4 - MaxX;
  }

  else
  {
    v12 = v3 * 0.5;
    MaxX = v3 * 0.5;
    v15 = v3 * 0.5;
  }

  leftButton = self->_leftButton;
  if (leftButton && ([(UIButton *)leftButton isHidden]& 1) == 0)
  {
    [(UIButton *)self->_leftButton frame];
    v18 = (v12 - v17) * 0.5;
    v20 = (v6 - v19) * 0.5;
    [(UIButton *)self->_leftButton setFrame:floorf(v18), floorf(v20)];
  }

  rightButton = self->_rightButton;
  if (rightButton && ([(UIButton *)rightButton isHidden]& 1) == 0)
  {
    [(UIButton *)self->_rightButton frame];
    v23 = MaxX + (v15 - v22) * 0.5;
    v24 = floorf(v23);
    v26 = (v6 - v25) * 0.5;
    v27 = self->_rightButton;
    v28 = floorf(v26);

    [(UIButton *)v27 setFrame:v24, v28];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  v15 = self->_leftButton;
  v16 = self->_rightButton;
  v6 = self->_progressView;
  v7 = 0;
  v17 = v6;
  v8 = *(MEMORY[0x277CBF390] + 16);
  v9 = *(MEMORY[0x277CBF390] + 24);
  do
  {
    [(UIButton *)*(&v15 + v7) sizeThatFits:v8, v9, v15, v16, v17, v18];
    if (v5 < v11)
    {
      v5 = v11;
    }

    v4 = v4 + v10;
    v7 += 8;
  }

  while (v7 != 24);
  for (i = 16; i != -8; i -= 8)
  {
  }

  v13 = v4;
  v14 = v5;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)_hideButton:(id)a3 withAnimation:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 isHidden] & 1) == 0)
  {
    v8 = MEMORY[0x277D75D18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __54__SUUIOnboardingFooterView__hideButton_withAnimation___block_invoke;
    v17[3] = &unk_2798F5BE8;
    v9 = v7;
    v18 = v9;
    [v8 _performWithoutAnimation:v17];
    if (a4 != 2)
    {
      if (a4 == 1)
      {
        [v9 setHidden:1];
      }

      else if (!a4)
      {
        v10 = MEMORY[0x277D75D18];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __54__SUUIOnboardingFooterView__hideButton_withAnimation___block_invoke_2;
        v15[3] = &unk_2798F5BE8;
        v16 = v9;
        [v10 animateWithDuration:v15 animations:0.25];
        v11 = v16;
LABEL_9:
      }

      goto LABEL_11;
    }

    v12 = MEMORY[0x277D75D18];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__SUUIOnboardingFooterView__hideButton_withAnimation___block_invoke_3;
    v13[3] = &unk_2798F5AF8;
    v13[4] = self;
    v14 = v9;
    [v12 animateWithDuration:v13 animations:0.5];
    v11 = v14;
    goto LABEL_9;
  }

LABEL_11:
}

uint64_t __54__SUUIOnboardingFooterView__hideButton_withAnimation___block_invoke(uint64_t a1)
{
  [*(a1 + 32) alpha];
  v3 = v2;
  [*(a1 + 32) setHighlighted:0];
  v4 = *(a1 + 32);

  return [v4 setAlpha:v3];
}

uint64_t __54__SUUIOnboardingFooterView__hideButton_withAnimation___block_invoke_3(uint64_t a1)
{
  if (*(*(a1 + 32) + 416))
  {
    [*(a1 + 40) frame];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    [*(*(a1 + 32) + 416) frame];
    v12 = *(a1 + 40);
    if (v12 == *(*(a1 + 32) + 408))
    {
      v8 = CGRectGetMaxX(*&v8) - v5;
      v12 = *(a1 + 40);
    }

    [v12 setFrame:{v8, v3, v5, v7}];
  }

  v13 = *(a1 + 40);

  return [v13 setAlpha:0.0];
}

- (id)_newButton
{
  v2 = [MEMORY[0x277D75220] buttonWithType:1];
  [v2 setHidden:1];
  return v2;
}

- (void)_showButton:(id)a3 withTitle:(id)a4 animation:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  [(UIButton *)v8 setEnabled:1];
  [(UIButton *)v8 setTitle:v9 forState:0];

  [(UIButton *)v8 sizeToFit];
  if (([(UIButton *)v8 isHidden]& 1) == 0)
  {
    [(UIButton *)v8 alpha];
    if (v10 > 0.00000011920929)
    {
      goto LABEL_13;
    }
  }

  [(UIButton *)v8 setHidden:0];
  switch(a5)
  {
    case 0:
      goto LABEL_10;
    case 1:
      [(UIButton *)v8 setAlpha:1.0];
LABEL_13:
      [(SUUIOnboardingFooterView *)self setNeedsLayout];
      break;
    case 2:
      if (self->_progressView)
      {
        [(SUUIOnboardingFooterView *)self bounds];
        v12 = v11;
        [(UIButton *)v8 frame];
        v14 = v13;
        v16 = v15;
        [(SUUIOnboardingProgressView *)self->_progressView frame];
        v21 = v17;
        if (self->_leftButton == v8)
        {
          v21 = CGRectGetMaxX(*&v17) - v14;
        }

        v22 = (v12 - v16) * 0.5;
        v23 = floorf(v22);
        [(UIButton *)v8 setAlpha:0.0];
        [(UIButton *)v8 setFrame:v21, v23, v14, v16];
        [(SUUIOnboardingFooterView *)self sendSubviewToBack:v8];
        v24 = MEMORY[0x277D75D18];
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __60__SUUIOnboardingFooterView__showButton_withTitle_animation___block_invoke_2;
        v27[3] = &unk_2798F5AF8;
        v28 = v8;
        v29 = self;
        [v24 animateWithDuration:v27 animations:0.5];
        v25 = v28;
        goto LABEL_11;
      }

LABEL_10:
      [(UIButton *)v8 setAlpha:0.0];
      [(SUUIOnboardingFooterView *)self layoutSubviews];
      v26 = MEMORY[0x277D75D18];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __60__SUUIOnboardingFooterView__showButton_withTitle_animation___block_invoke;
      v30[3] = &unk_2798F5BE8;
      v31 = v8;
      [v26 animateWithDuration:v30 animations:0.25];
      v25 = v31;
LABEL_11:

      break;
  }
}

uint64_t __60__SUUIOnboardingFooterView__showButton_withTitle_animation___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:1.0];
  v2 = *(a1 + 40);

  return [v2 layoutSubviews];
}

@end