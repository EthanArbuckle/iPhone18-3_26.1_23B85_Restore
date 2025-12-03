@interface FIUIAnimatingTwoLabelView
- (CGRect)_frameAboveBounds;
- (CGRect)_frameBelowBounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (FIUIAnimatingTwoLabelView)initWithFrame:(CGRect)frame;
- (FIUIAnimatingTwoLabelView)initWithFrame:(CGRect)frame mainLabel:(id)label secondaryLabel:(id)secondaryLabel;
- (void)_updateHidden;
- (void)applyFont:(id)font;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
- (void)showMainLabelAnimated:(BOOL)animated;
- (void)showSecondaryLabelAnimated:(BOOL)animated;
@end

@implementation FIUIAnimatingTwoLabelView

- (FIUIAnimatingTwoLabelView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = objc_alloc(MEMORY[0x1E69DCC10]);
  v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  height = [(FIUIAnimatingTwoLabelView *)self initWithFrame:v9 mainLabel:0 secondaryLabel:x, y, width, height];

  return height;
}

- (FIUIAnimatingTwoLabelView)initWithFrame:(CGRect)frame mainLabel:(id)label secondaryLabel:(id)secondaryLabel
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  labelCopy = label;
  secondaryLabelCopy = secondaryLabel;
  v19.receiver = self;
  v19.super_class = FIUIAnimatingTwoLabelView;
  height = [(FIUIAnimatingTwoLabelView *)&v19 initWithFrame:x, y, width, height];
  v14 = height;
  if (height)
  {
    [(FIUIAnimatingTwoLabelView *)height setClipsToBounds:1];
    [(FIUIAnimatingTwoLabelView *)v14 setMainLabel:labelCopy];
    [(FIUIAnimatingTwoLabelView *)v14 setSecondaryLabel:secondaryLabelCopy];
    v15 = [MEMORY[0x1E69DB878] fu_mediumFontOfSize:17.0];
    [(FIUIAnimatingTwoLabelView *)v14 applyFont:v15];

    mainLabel = [(FIUIAnimatingTwoLabelView *)v14 mainLabel];
    [(FIUIAnimatingTwoLabelView *)v14 addSubview:mainLabel];

    secondaryLabel = [(FIUIAnimatingTwoLabelView *)v14 secondaryLabel];
    [(FIUIAnimatingTwoLabelView *)v14 addSubview:secondaryLabel];

    [(FIUIAnimatingTwoLabelView *)v14 showMainLabelAnimated:0];
  }

  return v14;
}

- (void)setFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = FIUIAnimatingTwoLabelView;
  [(FIUIAnimatingTwoLabelView *)&v4 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(FIUIAnimatingTwoLabelView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = FIUIAnimatingTwoLabelView;
  [(FIUIAnimatingTwoLabelView *)&v5 layoutSubviews];
  secondaryLabel = self->_secondaryLabel;
  if (self->_visibleLabel == secondaryLabel)
  {
    secondaryLabel = self->_mainLabel;
  }

  v4 = secondaryLabel;
  [(FIUIAnimatingTwoLabelView *)self _frameAboveBounds];
  [(UILabel *)v4 setFrame:?];
  [(FIUIAnimatingTwoLabelView *)self bounds];
  [(UILabel *)self->_visibleLabel setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v30[1] = *MEMORY[0x1E69E9840];
  v4 = [(FIUIAnimatingTwoLabelView *)self mainLabel:fits.width];
  v5 = MEMORY[0x1E69DB648];
  if (v4)
  {
    mainLabel = [(FIUIAnimatingTwoLabelView *)self mainLabel];
    text = [mainLabel text];
    v29 = *v5;
    mainLabel2 = [(FIUIAnimatingTwoLabelView *)self mainLabel];
    font = [mainLabel2 font];
    v30[0] = font;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    [text sizeWithAttributes:v10];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
  }

  secondaryLabel = [(FIUIAnimatingTwoLabelView *)self secondaryLabel];
  if (secondaryLabel)
  {
    secondaryLabel2 = [(FIUIAnimatingTwoLabelView *)self secondaryLabel];
    text2 = [secondaryLabel2 text];
    v27 = *v5;
    secondaryLabel3 = [(FIUIAnimatingTwoLabelView *)self secondaryLabel];
    font2 = [secondaryLabel3 font];
    v28 = font2;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    [text2 sizeWithAttributes:v20];
    v22 = v21;
    v24 = v23;
  }

  else
  {
    v22 = *MEMORY[0x1E695F060];
    v24 = *(MEMORY[0x1E695F060] + 8);
  }

  if (v12 >= v22)
  {
    v25 = v12;
  }

  else
  {
    v25 = v22;
  }

  if (v14 >= v24)
  {
    v26 = v14;
  }

  else
  {
    v26 = v24;
  }

  result.height = v26;
  result.width = v25;
  return result;
}

- (CGRect)_frameAboveBounds
{
  [(FIUIAnimatingTwoLabelView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(FIUIAnimatingTwoLabelView *)self bounds];
  v11 = -CGRectGetHeight(v17);
  v12 = v4;
  v13 = v6;
  v14 = v8;
  v15 = v10;

  return CGRectOffset(*&v12, 0.0, v11);
}

- (CGRect)_frameBelowBounds
{
  [(FIUIAnimatingTwoLabelView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(FIUIAnimatingTwoLabelView *)self bounds];
  Height = CGRectGetHeight(v17);
  v12 = v4;
  v13 = v6;
  v14 = v8;
  v15 = v10;

  return CGRectOffset(*&v12, 0.0, Height);
}

- (void)showMainLabelAnimated:(BOOL)animated
{
  mainLabel = self->_mainLabel;
  if (self->_visibleLabel != mainLabel)
  {
    animatedCopy = animated;
    objc_storeStrong(&self->_visibleLabel, mainLabel);
    v6 = self->_mainLabel;
    [(FIUIAnimatingTwoLabelView *)self _frameBelowBounds];
    [(UILabel *)v6 setFrame:?];
    [(UILabel *)self->_mainLabel setHidden:0];
    v7 = MEMORY[0x1E69DD250];
    v8 = 0.0;
    if (animatedCopy)
    {
      UIAnimationDragCoefficient();
      v8 = (v9 * 0.5);
    }

    v10[4] = self;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__FIUIAnimatingTwoLabelView_showMainLabelAnimated___block_invoke;
    v11[3] = &unk_1E878BFE0;
    v11[4] = self;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__FIUIAnimatingTwoLabelView_showMainLabelAnimated___block_invoke_2;
    v10[3] = &unk_1E878BFE0;
    [v7 fiui_animateIfNeededWithDuration:0x20000 delay:v11 options:v10 animations:v8 completion:0.0];
  }
}

uint64_t __51__FIUIAnimatingTwoLabelView_showMainLabelAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[52];
  [v2 bounds];
  [v3 setFrame:?];
  [*(*(a1 + 32) + 416) setAlpha:1.0];
  v4 = *(a1 + 32);
  v5 = v4[53];
  [v4 _frameAboveBounds];
  [v5 setFrame:?];
  v6 = *(*(a1 + 32) + 424);

  return [v6 setAlpha:0.2];
}

- (void)showSecondaryLabelAnimated:(BOOL)animated
{
  secondaryLabel = self->_secondaryLabel;
  if (self->_visibleLabel != secondaryLabel)
  {
    animatedCopy = animated;
    objc_storeStrong(&self->_visibleLabel, secondaryLabel);
    v6 = self->_secondaryLabel;
    [(FIUIAnimatingTwoLabelView *)self _frameAboveBounds];
    [(UILabel *)v6 setFrame:?];
    [(UILabel *)self->_secondaryLabel setHidden:0];
    v7 = MEMORY[0x1E69DD250];
    v8 = 0.0;
    if (animatedCopy)
    {
      UIAnimationDragCoefficient();
      v8 = (v9 * 0.5);
    }

    v10[4] = self;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__FIUIAnimatingTwoLabelView_showSecondaryLabelAnimated___block_invoke;
    v11[3] = &unk_1E878BFE0;
    v11[4] = self;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__FIUIAnimatingTwoLabelView_showSecondaryLabelAnimated___block_invoke_2;
    v10[3] = &unk_1E878BFE0;
    [v7 fiui_animateIfNeededWithDuration:0x20000 delay:v11 options:v10 animations:v8 completion:0.0];
  }
}

uint64_t __56__FIUIAnimatingTwoLabelView_showSecondaryLabelAnimated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[53];
  [v2 bounds];
  [v3 setFrame:?];
  [*(*(a1 + 32) + 424) setAlpha:1.0];
  v4 = *(a1 + 32);
  v5 = v4[52];
  [v4 _frameBelowBounds];
  [v5 setFrame:?];
  v6 = *(*(a1 + 32) + 416);

  return [v6 setAlpha:0.2];
}

- (void)_updateHidden
{
  secondaryLabel = self->_secondaryLabel;
  if (self->_visibleLabel == secondaryLabel)
  {
    secondaryLabel = self->_mainLabel;
  }

  v4 = secondaryLabel;
  [(UILabel *)v4 setHidden:1];
  [(UILabel *)self->_visibleLabel setHidden:0];
}

- (void)applyFont:(id)font
{
  fontCopy = font;
  mainLabel = [(FIUIAnimatingTwoLabelView *)self mainLabel];
  [mainLabel setFont:fontCopy];

  secondaryLabel = [(FIUIAnimatingTwoLabelView *)self secondaryLabel];
  [secondaryLabel setFont:fontCopy];
}

@end