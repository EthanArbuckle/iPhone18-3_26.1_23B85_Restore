@interface SUUICrossFadingTabBarButton
- (SUUICrossFadingTabBarButton)initWithFrame:(CGRect)a3;
- (void)_positionBadge;
- (void)_setBadgeValue:(id)a3;
- (void)layoutSubviews;
- (void)setImage:(id)a3;
- (void)setSelectedImage:(id)a3;
- (void)setSelectionProgress:(double)a3;
- (void)setTitle:(id)a3;
- (void)tintColorDidChange;
@end

@implementation SUUICrossFadingTabBarButton

- (SUUICrossFadingTabBarButton)initWithFrame:(CGRect)a3
{
  v22.receiver = self;
  v22.super_class = SUUICrossFadingTabBarButton;
  v3 = [(SUUICrossFadingTabBarButton *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    standardTitleLabel = v3->_standardTitleLabel;
    v3->_standardTitleLabel = v4;

    v6 = v3->_standardTitleLabel;
    v7 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    [(UILabel *)v6 setFont:v7];

    [(UILabel *)v3->_standardTitleLabel setOpaque:0];
    v8 = v3->_standardTitleLabel;
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.57254902 alpha:1.0];
    [(UILabel *)v8 setTextColor:v9];

    [(UILabel *)v3->_standardTitleLabel setBackgroundColor:0];
    [(SUUICrossFadingTabBarButton *)v3 addSubview:v3->_standardTitleLabel];
    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    selectedTitleLabel = v3->_selectedTitleLabel;
    v3->_selectedTitleLabel = v10;

    [(UILabel *)v3->_selectedTitleLabel setAlpha:0.0];
    v12 = v3->_selectedTitleLabel;
    v13 = [MEMORY[0x277D74300] systemFontOfSize:10.0];
    [(UILabel *)v12 setFont:v13];

    [(UILabel *)v3->_selectedTitleLabel setOpaque:0];
    v14 = v3->_selectedTitleLabel;
    v15 = [(SUUICrossFadingTabBarButton *)v3 tintColor];
    [(UILabel *)v14 setTextColor:v15];

    [(UILabel *)v3->_selectedTitleLabel setBackgroundColor:0];
    [(SUUICrossFadingTabBarButton *)v3 addSubview:v3->_selectedTitleLabel];
    [(UILabel *)v3->_standardTitleLabel setAdjustsLetterSpacingToFitWidth:1];
    [(UILabel *)v3->_selectedTitleLabel setAdjustsLetterSpacingToFitWidth:1];
    v16 = objc_alloc_init(MEMORY[0x277D755E8]);
    standardImageView = v3->_standardImageView;
    v3->_standardImageView = v16;

    [(SUUICrossFadingTabBarButton *)v3 addSubview:v3->_standardImageView];
    v18 = objc_alloc_init(MEMORY[0x277D755E8]);
    selectedImageView = v3->_selectedImageView;
    v3->_selectedImageView = v18;

    [(UIImageView *)v3->_selectedImageView setAlpha:0.0];
    [(SUUICrossFadingTabBarButton *)v3 addSubview:v3->_selectedImageView];
    [(UILabel *)v3->_standardTitleLabel _setDrawsAsBackdropOverlayWithBlendMode:1];
    [(UIImageView *)v3->_standardImageView _setDrawsAsBackdropOverlayWithBlendMode:1];
    v20 = [(SUUICrossFadingTabBarButton *)v3 layer];
    [v20 setAllowsGroupOpacity:0];
  }

  return v3;
}

- (void)layoutSubviews
{
  v41.receiver = self;
  v41.super_class = SUUICrossFadingTabBarButton;
  [(SUUICrossFadingTabBarButton *)&v41 layoutSubviews];
  [(SUUICrossFadingTabBarButton *)self bounds];
  v43 = CGRectInset(v42, 0.0, 2.0);
  x = v43.origin.x;
  rect_24 = v43.origin.y;
  width = v43.size.width;
  height = v43.size.height;
  [(UILabel *)self->_standardTitleLabel sizeThatFits:v43.size.width, v43.size.height];
  v7 = v6;
  v9 = v8;
  [(UILabel *)self->_selectedTitleLabel sizeThatFits:width, height];
  v12 = *MEMORY[0x277CBF3A0];
  v13 = *(MEMORY[0x277CBF3A0] + 8);
  if (v7 < v10)
  {
    v7 = v10;
  }

  if (v9 >= v11)
  {
    v14 = v9;
  }

  else
  {
    v14 = v11;
  }

  v36 = v14;
  rect = *MEMORY[0x277CBF3A0];
  v44.origin.x = x;
  rect_8 = width;
  rect_16 = x;
  v44.origin.y = rect_24;
  v44.size.width = width;
  v44.size.height = height;
  v15 = CGRectGetWidth(v44);
  v45.origin.x = v12;
  v45.origin.y = v13;
  v45.size.width = v7;
  v45.size.height = v36;
  v16 = (v15 - CGRectGetWidth(v45)) * 0.5;
  v46.origin.x = x;
  v46.origin.y = rect_24;
  v46.size.width = width;
  v46.size.height = height;
  CGRectGetMaxY(v46);
  v47.origin.x = v16;
  v47.origin.y = v13;
  v17 = v13;
  v47.size.width = v7;
  v47.size.height = v36;
  CGRectGetHeight(v47);
  UICeilToViewScale();
  v19 = v18;
  UICeilToViewScale();
  v21 = v20;
  UIFloorToViewScale();
  v23 = v22;
  UIFloorToViewScale();
  v25 = v24;
  [(UILabel *)self->_standardTitleLabel setFrame:v23, v24, v19, v21];
  [(UILabel *)self->_selectedTitleLabel setFrame:v23, v25, v19, v21];
  [(UIImage *)self->_image size];
  v27 = v26;
  v29 = v28;
  [(UIImage *)self->_selectedImage size];
  if (v27 < v30)
  {
    v27 = v30;
  }

  if (v29 < v31)
  {
    v29 = v31;
  }

  v48.origin.x = v23;
  v48.origin.y = v25;
  v48.size.width = v19;
  v48.size.height = v21;
  CGRectGetMidX(v48);
  v49.origin.x = rect;
  v49.origin.y = v17;
  v49.size.width = v27;
  v49.size.height = v29;
  CGRectGetWidth(v49);
  UIFloorToViewScale();
  v33 = v32;
  v50.origin.x = rect_16;
  v50.origin.y = rect_24;
  v50.size.width = rect_8;
  v50.size.height = height;
  CGRectGetHeight(v50);
  v51.origin.x = v33;
  v51.origin.y = v17;
  v51.size.width = v27;
  v51.size.height = v29;
  CGRectGetHeight(v51);
  UIFloorToViewScale();
  v35 = v34 + -4.0;
  [(UIImageView *)self->_standardImageView setFrame:v33, v34 + -4.0, v27, v29];
  [(UIImageView *)self->_selectedImageView setFrame:v33, v35, v27, v29];
}

- (void)tintColorDidChange
{
  v6.receiver = self;
  v6.super_class = SUUICrossFadingTabBarButton;
  [(SUUICrossFadingTabBarButton *)&v6 tintColorDidChange];
  v3 = [(SUUICrossFadingTabBarButton *)self tintColor];
  [(UILabel *)self->_selectedTitleLabel setTextColor:v3];
  selectedImageView = self->_selectedImageView;
  v5 = [(UIImage *)self->_selectedImage _flatImageWithColor:v3];
  [(UIImageView *)selectedImageView setImage:v5];
}

- (void)setTitle:(id)a3
{
  if (self->_title != a3)
  {
    v4 = a3;
    v5 = [v4 copy];
    title = self->_title;
    self->_title = v5;

    [(UILabel *)self->_selectedTitleLabel setText:v4];
    [(UILabel *)self->_standardTitleLabel setText:v4];

    [(SUUICrossFadingTabBarButton *)self setNeedsLayout];
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  if (self->_image != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_image, a3);
    standardImageView = self->_standardImageView;
    v7 = [(UILabel *)self->_standardTitleLabel textColor];
    v8 = [(UIImage *)v9 _flatImageWithColor:v7];
    [(UIImageView *)standardImageView setImage:v8];

    [(SUUICrossFadingTabBarButton *)self setNeedsLayout];
    v5 = v9;
  }
}

- (void)setSelectedImage:(id)a3
{
  v5 = a3;
  if (self->_selectedImage != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_selectedImage, a3);
    selectedImageView = self->_selectedImageView;
    v7 = [(SUUICrossFadingTabBarButton *)self tintColor];
    v8 = [(UIImage *)v9 _flatImageWithColor:v7];
    [(UIImageView *)selectedImageView setImage:v8];

    [(SUUICrossFadingTabBarButton *)self setNeedsLayout];
    v5 = v9;
  }
}

- (void)setSelectionProgress:(double)a3
{
  if (self->_selectionProgress != a3)
  {
    v12 = v7;
    v13 = v3;
    self->_selectionProgress = a3;
    if (a3 < 0.0)
    {
      a3 = 0.0;
    }

    v10 = fmin(a3, 1.0);
    [(UILabel *)self->_selectedTitleLabel setAlpha:v10, v8, v12, v4, v13, v5];
    [(UILabel *)self->_standardTitleLabel setAlpha:1.0 - v10];
    [(UIImageView *)self->_selectedImageView setAlpha:v10];
    standardImageView = self->_standardImageView;

    [(UIImageView *)standardImageView setAlpha:1.0 - v10];
  }
}

- (void)_setBadgeValue:(id)a3
{
  v12 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if ([0 length])
    {
      goto LABEL_10;
    }

    v4 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v4 = v12;
  if (![v4 length])
  {
    goto LABEL_9;
  }

  if (!v4)
  {
LABEL_10:
    [(_Badge *)self->_badge removeFromSuperview];
    badge = self->_badge;
    self->_badge = 0;

    v4 = 0;
    goto LABEL_11;
  }

  v5 = self->_badge;
  if (!v5)
  {
    v10 = [[_Badge alloc] initWithText:v4];
    v11 = self->_badge;
    self->_badge = v10;

    [(SUUICrossFadingTabBarButton *)self addSubview:self->_badge];
    goto LABEL_15;
  }

  [(_Badge *)v5 frame];
  v7 = v6;
  [(_Badge *)self->_badge setText:v4];
  [(_Badge *)self->_badge frame];
  if (v7 != v8)
  {
LABEL_15:
    [(SUUICrossFadingTabBarButton *)self _positionBadge];
  }

LABEL_11:
}

- (void)_positionBadge
{
  v3 = [(SUUICrossFadingTabBarButton *)self superview];
  badge = self->_badge;
  if (badge)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v19 = v3;
    [(_Badge *)badge frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [(SUUICrossFadingTabBarButton *)self superview];
    [(SUUICrossFadingTabBarButton *)self convertPoint:v12 fromView:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    v14 = v13 + 3.0;

    [(UIImageView *)self->_standardImageView frame];
    CGRectGetMaxX(v21);
    UIRoundToViewScale();
    v16 = v15 + -5.0;
    [v19 bounds];
    [(SUUICrossFadingTabBarButton *)self convertPoint:v19 fromView:CGRectGetMaxX(v22) + -0.5, 0.0];
    UIRoundToViewScale();
    v18 = v17;
    v23.origin.x = v7;
    v23.origin.y = v14;
    v23.size.width = v9;
    v23.size.height = v11;
    badge = [(_Badge *)self->_badge setFrame:fmax(fmin(v16, v18 - CGRectGetWidth(v23)), 0.0), v14, v9, v11];
    v3 = v19;
  }

  MEMORY[0x2821F96F8](badge, v3);
}

@end