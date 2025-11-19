@interface CKCanvasBackButtonView
- (CGSize)_titlePaddingViewSizeForTitle;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKCanvasBackButtonView)initWithFrame:(CGRect)a3 showPaddingTitleView:(BOOL)a4;
- (UIImageView)backButtonView;
- (UILabel)titleLabel;
- (UIView)titlePaddingView;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4 modifiers:(int64_t)a5;
- (void)_setVisuallyHighlighted:(BOOL)a3;
- (void)layoutSubviews;
- (void)setBackButtonTitle:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setShouldShowTitlePaddingView:(BOOL)a3;
- (void)sizeToFit;
- (void)tintColorDidChange;
@end

@implementation CKCanvasBackButtonView

- (CKCanvasBackButtonView)initWithFrame:(CGRect)a3 showPaddingTitleView:(BOOL)a4
{
  v4 = a4;
  v9.receiver = self;
  v9.super_class = CKCanvasBackButtonView;
  v5 = [(CKCanvasBackButtonView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    [(CKCanvasBackButtonView *)v5 setShouldShowTitlePaddingView:v4];
    [(CKCanvasBackButtonView *)v6 setAccessibilityIdentifier:@"backButton"];
    v7 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:v6];
    [(CKCanvasBackButtonView *)v6 addInteraction:v7];
  }

  return v6;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = CKCanvasBackButtonView;
  [(CKCanvasBackButtonView *)&v5 setHighlighted:?];
  [(CKCanvasBackButtonView *)self _setVisuallyHighlighted:v3];
}

- (void)setBackButtonTitle:(id)a3
{
  v10 = a3;
  if (v10)
  {
    v4 = [(CKCanvasBackButtonView *)self titleLabel];
    [v4 setHidden:0];

    v5 = [(CKCanvasBackButtonView *)self titlePaddingView];
    [v5 setHidden:0];

    v6 = [(CKCanvasBackButtonView *)self titleLabel];
    [v6 setText:v10];

    v7 = [(CKCanvasBackButtonView *)self titleLabel];
    [v7 sizeToFit];

    [(CKCanvasBackButtonView *)self setNeedsLayout];
  }

  else
  {
    v8 = [(CKCanvasBackButtonView *)self titlePaddingView];
    [v8 setHidden:1];

    v9 = [(CKCanvasBackButtonView *)self titleLabel];
    [v9 setHidden:1];
  }
}

- (void)setShouldShowTitlePaddingView:(BOOL)a3
{
  if (self->_shouldShowTitlePaddingView != a3)
  {
    self->_shouldShowTitlePaddingView = a3;
    if (!a3)
    {
      [(CKCanvasBackButtonView *)self setTitlePaddingView:0];
    }
  }
}

- (UIImageView)backButtonView
{
  backButtonView = self->_backButtonView;
  if (!backButtonView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v5 = self->_backButtonView;
    self->_backButtonView = v4;

    v6 = [MEMORY[0x1E69DCAB8] kitImageNamed:@"UINavigationBarBackIndicatorDefault.png"];
    v7 = [v6 imageWithRenderingMode:2];

    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection] == 1)
    {
      v8 = [v7 imageFlippedForRightToLeftLayoutDirection];

      v7 = v8;
    }

    [(UIImageView *)self->_backButtonView setImage:v7];
    [(UIImageView *)self->_backButtonView setUserInteractionEnabled:0];
    [(UIImageView *)self->_backButtonView sizeToFit];
    [(CKCanvasBackButtonView *)self addSubview:self->_backButtonView];

    backButtonView = self->_backButtonView;
  }

  return backButtonView;
}

- (UILabel)titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCC10]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_titleLabel;
    self->_titleLabel = v5;

    v7 = [MEMORY[0x1E69DB878] defaultFontForTextStyle:*MEMORY[0x1E69DDD08]];
    [(UILabel *)self->_titleLabel setFont:v7];

    [(UILabel *)self->_titleLabel setTextAlignment:1];
    [(UILabel *)self->_titleLabel setUserInteractionEnabled:0];
    v8 = [(CKCanvasBackButtonView *)self titleLabelColor];
    if (v8)
    {
      [(CKCanvasBackButtonView *)self titleLabelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v9 = ;
    [(UILabel *)self->_titleLabel setTextColor:v9];

    [(CKCanvasBackButtonView *)self addSubview:self->_titleLabel];
    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (UIView)titlePaddingView
{
  if ([(CKCanvasBackButtonView *)self shouldShowTitlePaddingView])
  {
    titlePaddingView = self->_titlePaddingView;
    if (!titlePaddingView)
    {
      v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
      v5 = self->_titlePaddingView;
      self->_titlePaddingView = v4;

      v6 = [(CKCanvasBackButtonView *)self tintColor];
      [(UIView *)self->_titlePaddingView setBackgroundColor:v6];

      [(UIView *)self->_titlePaddingView setUserInteractionEnabled:0];
      v7 = [(UIView *)self->_titlePaddingView layer];
      [v7 setMasksToBounds:0];

      v8 = [(UIView *)self->_titlePaddingView layer];
      [v8 setAllowsEdgeAntialiasing:1];

      v9 = self->_titlePaddingView;
      v10 = [(CKCanvasBackButtonView *)self titleLabel];
      [(CKCanvasBackButtonView *)self insertSubview:v9 belowSubview:v10];

      titlePaddingView = self->_titlePaddingView;
    }

    v11 = titlePaddingView;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)tintColorDidChange
{
  v11.receiver = self;
  v11.super_class = CKCanvasBackButtonView;
  [(CKCanvasBackButtonView *)&v11 tintColorDidChange];
  v3 = [(CKCanvasBackButtonView *)self tintColor];
  [(UIView *)self->_titlePaddingView setBackgroundColor:v3];

  v4 = [(CKCanvasBackButtonView *)self tintColor];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 theme];
  v7 = [v6 entryFieldDarkEffectButtonColor];
  v8 = [v4 isEqual:v7];

  if (v8)
  {
    v9 = [(CKCanvasBackButtonView *)self tintColor];
    [(UILabel *)self->_titleLabel setTextColor:v9];
  }

  else
  {
    v9 = [(CKCanvasBackButtonView *)self titleLabelColor];
    if (v9)
    {
      [(CKCanvasBackButtonView *)self titleLabelColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }
    v10 = ;
    [(UILabel *)self->_titleLabel setTextColor:v10];
  }
}

- (void)sizeToFit
{
  [(CKCanvasBackButtonView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(CKCanvasBackButtonView *)self sizeThatFits:v7, v8];
  [(CKCanvasBackButtonView *)self setBounds:v4, v6, v9, v10];

  [(CKCanvasBackButtonView *)self setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(CKCanvasBackButtonView *)self _titlePaddingViewSizeForTitle:a3.width];
  v5 = v4;
  v7 = v6;
  if ([(CKCanvasBackButtonView *)self usesModernNavigationBar])
  {
    v8 = *(MEMORY[0x1E695F060] + 8);
    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 navigationBarBackButtonMargin];
    v11 = v5 + v10;
  }

  else
  {
    v12 = [(CKCanvasBackButtonView *)self backButtonView];
    [v12 bounds];
    v14 = v13;
    v8 = v15;

    v9 = +[CKUIBehavior sharedBehaviors];
    [v9 navigationBarBackButtonMargin];
    v11 = v5 + v14 + v16 + v5 * 0.381887616;
  }

  if (v8 >= v7)
  {
    v17 = v8;
  }

  else
  {
    v17 = v7;
  }

  v18 = v11;
  result.height = v17;
  result.width = v18;
  return result;
}

- (void)layoutSubviews
{
  v64.receiver = self;
  v64.super_class = CKCanvasBackButtonView;
  [(CKCanvasBackButtonView *)&v64 layoutSubviews];
  [(CKCanvasBackButtonView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  rect = v9;
  v10 = [(CKCanvasBackButtonView *)self titleLabel];
  [v10 frame];
  v12 = v11;
  v60 = v13;
  v15 = v14;
  v17 = v16;

  [(CKCanvasBackButtonView *)self _titlePaddingViewSizeForTitle];
  v19 = v18;
  v21 = v20;
  if ([(CKCanvasBackButtonView *)self usesModernNavigationBar])
  {
    v22 = 7.0;
  }

  else
  {
    v53 = v12;
    v58 = v8;
    v59 = v6;
    v55 = v21;
    v54 = v19;
    v23 = v19 * 0.381887616;
    v24 = [(CKCanvasBackButtonView *)self backButtonView];
    [v24 frame];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v56 = v17;
    v57 = v4;
    if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection])
    {
      v52 = v23;
      v65.origin.x = v4;
      v65.size.width = v58;
      v65.origin.y = v59;
      v65.size.height = rect;
      Width = CGRectGetWidth(v65);
      v66.origin.x = v26;
      v66.origin.y = v28;
      v66.size.width = v30;
      v66.size.height = v32;
      v34 = Width - CGRectGetWidth(v66);
      v35 = +[CKUIBehavior sharedBehaviors];
      [v35 navigationBarBackButtonMargin];
      v37 = v34 - v36;
      if (CKMainScreenScale_once_104 != -1)
      {
        [CKCanvasBackButtonView layoutSubviews];
      }

      v38 = *&CKMainScreenScale_sMainScreenScale_104;
      if (*&CKMainScreenScale_sMainScreenScale_104 == 0.0)
      {
        v38 = 1.0;
      }

      v39 = round(v37 * v38) / v38;

      v67.origin.x = v39;
      v67.origin.y = v28;
      v67.size.width = v30;
      v67.size.height = v32;
      MinX = CGRectGetMinX(v67);
      v68.origin.x = v53;
      v68.origin.y = v60;
      v68.size.width = v15;
      v68.size.height = v17;
      v41 = MinX - (v23 + CGRectGetWidth(v68));
      if (CKMainScreenScale_once_104 != -1)
      {
        [CKCanvasBackButtonView layoutSubviews];
      }

      v4 = v57;
    }

    else
    {
      v42 = +[CKUIBehavior sharedBehaviors];
      [v42 navigationBarBackButtonMargin];
      v39 = v43;

      v69.origin.x = v39;
      v69.origin.y = v28;
      v69.size.width = v30;
      v69.size.height = v32;
      v41 = v23 + CGRectGetMaxX(v69);
      if (CKMainScreenScale_once_104 != -1)
      {
        [CKCanvasBackButtonView layoutSubviews];
      }
    }

    v44 = v15;
    v45 = *&CKMainScreenScale_sMainScreenScale_104;
    if (*&CKMainScreenScale_sMainScreenScale_104 == 0.0)
    {
      v45 = 1.0;
    }

    v22 = round(v41 * v45) / v45;
    v70.origin.x = v4;
    v70.size.width = v58;
    v70.origin.y = v59;
    v70.size.height = rect;
    v46 = CGRectGetHeight(v70) * 0.5;
    v71.origin.x = v39;
    v71.origin.y = v28;
    v71.size.width = v30;
    v71.size.height = v32;
    v47 = v46 - CGRectGetHeight(v71) * 0.5;
    if (CKMainScreenScale_once_104 != -1)
    {
      [CKCanvasBackButtonView layoutSubviews];
    }

    v15 = v44;
    v48 = *&CKMainScreenScale_sMainScreenScale_104;
    if (*&CKMainScreenScale_sMainScreenScale_104 == 0.0)
    {
      v48 = 1.0;
    }

    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __40__CKCanvasBackButtonView_layoutSubviews__block_invoke;
    v63[3] = &unk_1E72EC7B0;
    v63[4] = self;
    *&v63[5] = v39;
    *&v63[6] = round(v47 * v48) / v48;
    *&v63[7] = v30;
    *&v63[8] = v32;
    [MEMORY[0x1E69DD250] performWithoutAnimation:{v63, *&v52}];
    v21 = v55;
    v17 = v56;
    v19 = v54;
    v4 = v57;
    v8 = v58;
    v6 = v59;
  }

  v72.origin.x = v4;
  v72.origin.y = v6;
  v72.size.width = v8;
  v72.size.height = rect;
  Height = CGRectGetHeight(v72);
  v73.origin.x = v22;
  v73.origin.y = v60;
  v73.size.width = v15;
  v73.size.height = v17;
  v50 = CGRectGetHeight(v73);
  if (CKMainScreenScale_once_104 != -1)
  {
    [CKCanvasBackButtonView layoutSubviews];
  }

  v51 = *&CKMainScreenScale_sMainScreenScale_104;
  if (*&CKMainScreenScale_sMainScreenScale_104 == 0.0)
  {
    v51 = 1.0;
  }

  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __40__CKCanvasBackButtonView_layoutSubviews__block_invoke_2;
  v62[3] = &unk_1E72ECB00;
  v62[4] = self;
  *&v62[5] = v22;
  *&v62[6] = round((Height * 0.5 - v50 * 0.5) * v51) / v51;
  *&v62[7] = v15;
  *&v62[8] = v17;
  *&v62[9] = v19;
  v62[10] = v21;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v62];
}

void __40__CKCanvasBackButtonView_layoutSubviews__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = [*(a1 + 32) backButtonView];
  [v5 setFrame:{v1, v2, v3, v4}];
}

void __40__CKCanvasBackButtonView_layoutSubviews__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = [*(a1 + 32) titleLabel];
  [v6 setFrame:{v2, v3, v4, v5}];

  if ([*(a1 + 32) shouldShowTitlePaddingView])
  {
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(a1 + 72);
    v10 = *(a1 + 80);
    v11 = [*(a1 + 32) titlePaddingView];
    [v11 setFrame:{v7, v8, v9, v10}];

    v12 = [*(a1 + 32) titleLabel];
    [v12 center];
    v14 = v13;
    v16 = v15;
    v17 = [*(a1 + 32) titlePaddingView];
    [v17 setCenter:{v14, v16}];

    v27.origin.x = v7;
    v27.origin.y = v8;
    v27.size.width = v9;
    v27.size.height = v10;
    Width = CGRectGetWidth(v27);
    v28.origin.x = v7;
    v28.origin.y = v8;
    v28.size.width = v9;
    v28.size.height = v10;
    Height = CGRectGetHeight(v28);
    v20 = [*(a1 + 32) titlePaddingView];
    v21 = [v20 layer];
    [v21 setCornerRadius:Height * 0.5];

    v22 = MEMORY[0x1E69796E0];
    if (Width != Height)
    {
      v22 = MEMORY[0x1E69796E8];
    }

    v23 = *v22;
    v25 = [*(a1 + 32) titlePaddingView];
    v24 = [v25 layer];
    [v24 setCornerCurve:v23];
  }
}

- (void)_setVisuallyHighlighted:(BOOL)a3
{
  v3 = 1.0;
  if (a3)
  {
    v3 = 0.2;
  }

  v4 = 0.3;
  v5[1] = 3221225472;
  v5[0] = MEMORY[0x1E69E9820];
  v5[2] = __50__CKCanvasBackButtonView__setVisuallyHighlighted___block_invoke;
  v5[3] = &unk_1E72ED810;
  if (a3)
  {
    v4 = 0.17;
  }

  v5[4] = self;
  *&v5[5] = v3;
  [MEMORY[0x1E69DD250] animateWithDuration:v5 animations:v4];
}

void __50__CKCanvasBackButtonView__setVisuallyHighlighted___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) titleLabel];
  [v3 setAlpha:v2];

  if (([*(a1 + 32) usesModernNavigationBar] & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) backButtonView];
    [v5 setAlpha:v4];
  }

  if ([*(a1 + 32) shouldShowTitlePaddingView])
  {
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) titlePaddingView];
    [v7 setAlpha:v6];
  }
}

- (CGSize)_titlePaddingViewSizeForTitle
{
  v3 = [(CKCanvasBackButtonView *)self titleLabel];
  [v3 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v5 = v4;
  v7 = v6;

  if (v5 < v7)
  {
    v5 = v7;
  }

  v8 = [(CKCanvasBackButtonView *)self titleLabel];
  v9 = [v8 text];
  if ([v9 length] <= 1)
  {
    v10 = 2.0;
  }

  else
  {
    v10 = 5.0;
  }

  v11 = v5 + v10 * 2.0;
  v12 = v7 + 4.0;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4 modifiers:(int64_t)a5
{
  v6 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self];
  v7 = [MEMORY[0x1E69DCDA0] effectWithPreview:v6];
  [(CKCanvasBackButtonView *)self frame];
  [(CKCanvasBackButtonView *)self sizeThatFits:v8, v9];
  v11 = v10;
  v12 = [(CKCanvasBackButtonView *)self titleLabel];
  if ([v12 isHidden])
  {
  }

  else
  {
    v13 = [(CKCanvasBackButtonView *)self titleLabel];
    v14 = [v13 text];
    v15 = [v14 length];

    if (v15)
    {
      goto LABEL_5;
    }
  }

  v11 = v11 + -7.0;
LABEL_5:
  [(CKCanvasBackButtonView *)self frame];
  v17 = v16;
  if (CKMainScreenScale_once_104 != -1)
  {
    [CKCanvasBackButtonView pointerInteraction:styleForRegion:modifiers:];
  }

  v18 = *&CKMainScreenScale_sMainScreenScale_104;
  [(CKCanvasBackButtonView *)self frame];
  v20 = v19;
  [(CKCanvasBackButtonView *)self frame];
  v22 = v21;
  if (CKMainScreenScale_once_104 != -1)
  {
    [CKCanvasBackButtonView pointerInteraction:styleForRegion:modifiers:];
  }

  v23 = 1.0;
  if (v18 == 0.0)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = v18;
  }

  v25 = round((v11 * 0.5 + v17 - (v11 + 16.0) * 0.5) * v24) / v24;
  if (*&CKMainScreenScale_sMainScreenScale_104 != 0.0)
  {
    v23 = *&CKMainScreenScale_sMainScreenScale_104;
  }

  v26 = [MEMORY[0x1E69DCDC8] shapeWithRoundedRect:{v25, round((v20 + v22 * 0.5 + -18.5) * v23) / v23, v11 + 16.0, 37.0}];
  v27 = [MEMORY[0x1E69DCDD0] styleWithEffect:v7 shape:v26];

  return v27;
}

@end