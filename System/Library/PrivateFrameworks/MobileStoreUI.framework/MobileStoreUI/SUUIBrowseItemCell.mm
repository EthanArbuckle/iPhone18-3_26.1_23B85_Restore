@interface SUUIBrowseItemCell
- (SUUIBrowseItemCell)initWithFrame:(CGRect)a3;
- (void)_reloadHighlightState;
- (void)layoutSubviews;
- (void)setDecorationImage:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
- (void)setShowTopBorder:(BOOL)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation SUUIBrowseItemCell

- (SUUIBrowseItemCell)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = SUUIBrowseItemCell;
  v3 = [(SUUIBrowseItemCell *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    v6 = v3->_titleLabel;
    v7 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [(UILabel *)v6 setFont:v7];

    [(UILabel *)v3->_titleLabel setNumberOfLines:1];
    [(SUUIBrowseItemCell *)v3 addSubview:v3->_titleLabel];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v8;

    v10 = v3->_subtitleLabel;
    v11 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
    [(UILabel *)v10 setFont:v11];

    [(UILabel *)v3->_subtitleLabel setNumberOfLines:1];
    v12 = v3->_subtitleLabel;
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    [(UILabel *)v12 setTextColor:v13];

    [(SUUIBrowseItemCell *)v3 addSubview:v3->_subtitleLabel];
    v14 = objc_alloc_init(MEMORY[0x277D75D18]);
    borderView = v3->_borderView;
    v3->_borderView = v14;

    v16 = v3->_borderView;
    v17 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
    [(UIView *)v16 setBackgroundColor:v17];

    [(SUUIBrowseItemCell *)v3 addSubview:v3->_borderView];
    [(SUUIBrowseItemCell *)v3 setSemanticContentAttribute:storeSemanticContentAttribute()];
  }

  return v3;
}

- (void)setDecorationImage:(id)a3
{
  v10 = a3;
  if (v10)
  {
    objc_storeStrong(&self->_decorationImage, a3);
    decorationImageView = self->_decorationImageView;
    if (decorationImageView)
    {
      [(UIImageView *)decorationImageView setImage:self->_decorationImage];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:self->_decorationImage];
      v9 = self->_decorationImageView;
      self->_decorationImageView = v8;

      [(SUUIBrowseItemCell *)self addSubview:self->_decorationImageView];
    }
  }

  else
  {
    decorationImage = self->_decorationImage;
    self->_decorationImage = 0;

    [(UIImageView *)self->_decorationImageView removeFromSuperview];
    v7 = self->_decorationImageView;
    self->_decorationImageView = 0;
  }
}

- (void)setTitle:(id)a3
{
  v6 = a3;
  v4 = [(UILabel *)self->_titleLabel text];
  v5 = [v6 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_titleLabel setText:v6];
    [(SUUIBrowseItemCell *)self setNeedsLayout];
  }
}

- (void)setSubtitle:(id)a3
{
  v6 = a3;
  v4 = [(UILabel *)self->_subtitleLabel text];
  v5 = [v6 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_subtitleLabel setText:v6];
    [(SUUIBrowseItemCell *)self setNeedsLayout];
  }
}

- (void)setShowTopBorder:(BOOL)a3
{
  self->_showTopBorder = a3;
  topBorderView = self->_topBorderView;
  if (a3)
  {
    if (!topBorderView)
    {
      v5 = objc_alloc_init(MEMORY[0x277D75D18]);
      v6 = self->_topBorderView;
      self->_topBorderView = v5;

      v7 = self->_topBorderView;
      v8 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
      [(UIView *)v7 setBackgroundColor:v8];

      v9 = self->_topBorderView;

      [(SUUIBrowseItemCell *)self addSubview:v9];
    }
  }

  else if (topBorderView)
  {
    [(UIView *)topBorderView removeFromSuperview];
    v10 = self->_topBorderView;
    self->_topBorderView = 0;
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUIBrowseItemCell;
  [(SUUIBrowseItemCell *)&v4 setHighlighted:a3];
  [(SUUIBrowseItemCell *)self _reloadHighlightState];
}

- (void)setSelected:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUIBrowseItemCell;
  [(SUUIBrowseItemCell *)&v4 setSelected:a3];
  [(SUUIBrowseItemCell *)self _reloadHighlightState];
}

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = SUUIBrowseItemCell;
  [(SUUIBrowseItemCell *)&v32 layoutSubviews];
  [(SUUIBrowseItemCell *)self bounds];
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  v7 = CGRectGetMaxX(v33) + -15.0;
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  decorationImageView = self->_decorationImageView;
  if (decorationImageView)
  {
    [(UIImageView *)decorationImageView frame];
    v11 = v10;
    v13 = v12;
    v14 = v7 - v10;
    v15 = y + (height - v12) * 0.5;
    [(UIImageView *)self->_decorationImageView setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v14, v15, v10, v12, x, y, width, height)];
    v34.origin.x = v14;
    v34.origin.y = v15;
    v34.size.width = v11;
    v34.size.height = v13;
    v7 = CGRectGetMinX(v34) + -10.0;
  }

  if (ShouldReverseLayoutDirection)
  {
    v16 = 2;
  }

  else
  {
    v16 = 0;
  }

  [(UILabel *)self->_subtitleLabel sizeToFit];
  [(UILabel *)self->_subtitleLabel frame];
  v18 = v17;
  v20 = v19;
  v21 = v7 - v17;
  v22 = y + (height - v19) * 0.5;
  [(UILabel *)self->_subtitleLabel setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v21, v22, v17, v19, x, y, width, height)];
  [(UILabel *)self->_subtitleLabel setTextAlignment:v16];
  v35.origin.x = v21;
  v35.origin.y = v22;
  v35.size.width = v18;
  v35.size.height = v20;
  v23 = CGRectGetMinX(v35) + -10.0;
  [(UILabel *)self->_titleLabel sizeToFit];
  [(UILabel *)self->_titleLabel frame];
  [(UILabel *)self->_titleLabel setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(x + 15.0, y + (height - v24) * 0.5, v23 - x + -15.0, v24, x, y, width, height)];
  [(UILabel *)self->_titleLabel setTextAlignment:v16];
  [(UIView *)self->_borderView frame];
  v25 = [MEMORY[0x277D759A0] mainScreen];
  [v25 scale];
  v27 = 1.0 / v26;

  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  MaxY = CGRectGetMaxY(v36);
  [(UIView *)self->_borderView setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(15.0, MaxY - v27, width + -15.0, v27, x, y, width, height)];
  [(UIView *)self->_topBorderView frame];
  v29 = [MEMORY[0x277D759A0] mainScreen];
  [v29 scale];
  v31 = 1.0 / v30;

  [(UIView *)self->_topBorderView setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(15.0, 0.0, width + -15.0, v31, x, y, width, height)];
}

- (void)_reloadHighlightState
{
  hasBlueBackgroundWhenSelected = self->_hasBlueBackgroundWhenSelected;
  v4 = [(SUUIBrowseItemCell *)self isHighlighted];
  v5 = v4;
  if (hasBlueBackgroundWhenSelected)
  {
    if ((v4 & 1) != 0 || [(SUUIBrowseItemCell *)self isSelected])
    {
      titleLabel = self->_titleLabel;
      v7 = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)titleLabel setTextColor:v7];

      subtitleLabel = self->_subtitleLabel;
      v9 = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)subtitleLabel setTextColor:v9];

      v10 = [MEMORY[0x277D75348] colorWithRed:0.298039216 green:0.631372549 blue:1.0 alpha:1.0];
      goto LABEL_9;
    }

    v12 = self->_titleLabel;
    v13 = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v12 setTextColor:v13];

    v14 = self->_subtitleLabel;
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    [(UILabel *)v14 setTextColor:v15];

    v11 = MEMORY[0x277D75348];
  }

  else
  {
    v11 = MEMORY[0x277D75348];
    if (v5)
    {
      v10 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
      goto LABEL_9;
    }
  }

  v10 = [v11 whiteColor];
LABEL_9:
  v16 = v10;
  [(SUUIBrowseItemCell *)self setBackgroundColor:v10];

  borderView = self->_borderView;
  if (([(SUUIBrowseItemCell *)self isHighlighted]& 1) != 0)
  {
    v18 = 1;
  }

  else
  {
    v18 = [(SUUIBrowseItemCell *)self isSelected];
  }

  [(UIView *)borderView setHidden:v18];
  topBorderView = self->_topBorderView;
  if (([(SUUIBrowseItemCell *)self isHighlighted]& 1) != 0)
  {
    v20 = 1;
  }

  else
  {
    v20 = [(SUUIBrowseItemCell *)self isSelected];
  }

  [(UIView *)topBorderView setHidden:v20];
}

@end