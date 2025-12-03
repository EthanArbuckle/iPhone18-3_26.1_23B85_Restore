@interface SUUIStackedBarCell
- (CGSize)sizeThatFits:(CGSize)result;
- (SUUIStackedBarCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setExpanded:(BOOL)expanded;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setTitle:(id)title forState:(unint64_t)state;
@end

@implementation SUUIStackedBarCell

- (SUUIStackedBarCell)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = SUUIStackedBarCell;
  v3 = [(SUUIStackedBarCell *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    separator = v3->_separator;
    v3->_separator = v4;

    v6 = v3->_separator;
    v7 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.25];
    [(UIView *)v6 setBackgroundColor:v7];

    [(SUUIStackedBarCell *)v3 addSubview:v3->_separator];
    v8 = MEMORY[0x277D755B8];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v8 imageNamed:@"AppStoreBrowseCategoryBackChevron" inBundle:v9];

    v11 = [MEMORY[0x277D75220] buttonWithType:1];
    backButton = v3->_backButton;
    v3->_backButton = v11;

    [(UIButton *)v3->_backButton setImage:v10 forState:0];
    [(UIButton *)v3->_backButton setTag:1398030659];
    [(SUUIStackedBarCell *)v3 addSubview:v3->_backButton];
    v13 = objc_alloc_init(MEMORY[0x277D756B8]);
    expandedLabel = v3->_expandedLabel;
    v3->_expandedLabel = v13;

    v15 = v3->_expandedLabel;
    v16 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
    [(UILabel *)v15 setFont:v16];

    [(SUUIStackedBarCell *)v3 addSubview:v3->_expandedLabel];
    tintColor = [(SUUIStackedBarCell *)v3 tintColor];
    [(SUUIStackedBarCell *)v3 setTitleColor:tintColor forState:0];

    titleLabel = [(SUUIStackedBarCell *)v3 titleLabel];
    v19 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
    [titleLabel setFont:v19];

    titleLabel2 = [(SUUIStackedBarCell *)v3 titleLabel];
    [titleLabel2 setTextAlignment:1];
  }

  return v3;
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (!self->_expanded)
  {
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.8824 alpha:0.82];
    v6 = 0.25;
    if (!highlighted)
    {
      clearColor = [MEMORY[0x277D75348] clearColor];

      v6 = 0.47;
      v5 = clearColor;
    }

    v8 = MEMORY[0x277D75D18];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__SUUIStackedBarCell_setHighlighted___block_invoke;
    v10[3] = &unk_2798F5AF8;
    v10[4] = self;
    v11 = v5;
    v9 = v5;
    [v8 animateWithDuration:v10 animations:0 completion:v6];
  }
}

- (void)setExpanded:(BOOL)expanded
{
  self->_expanded = expanded;
  expandedLabel = self->_expandedLabel;
  if (expanded)
  {
    v5 = 1.0;
    CGAffineTransformMakeScale(&v8, 1.0, 1.0);
    [(UILabel *)expandedLabel setTransform:&v8];
    v6 = 0.0;
  }

  else
  {
    CGAffineTransformMakeScale(&v8, 0.705882353, 0.705882353);
    [(UILabel *)expandedLabel setTransform:&v8];
    v6 = 1.0;
    v5 = 0.0;
  }

  [(UILabel *)self->_expandedLabel setAlpha:v5];
  titleLabel = [(SUUIStackedBarCell *)self titleLabel];
  [titleLabel setAlpha:v6];

  [(UIButton *)self->_backButton setAlpha:v5];
}

- (void)setTitle:(id)title forState:(unint64_t)state
{
  v7.receiver = self;
  v7.super_class = SUUIStackedBarCell;
  titleCopy = title;
  [(SUUIStackedBarCell *)&v7 setTitle:titleCopy forState:state];
  [(UILabel *)self->_expandedLabel setText:titleCopy, v7.receiver, v7.super_class];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 44.0;
  if (!self->_expanded)
  {
    v3 = 25.0;
  }

  result.height = v3;
  return result;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = SUUIStackedBarCell;
  [(SUUIStackedBarCell *)&v20 layoutSubviews];
  [(SUUIStackedBarCell *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  [(SUUIStackedBarCell *)self bounds];
  Width = CGRectGetWidth(v21);
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v15 = 1.0 / v14;

  [(SUUIStackedBarCell *)self bounds];
  Height = CGRectGetHeight(v22);
  v23.origin.x = 0.0;
  v23.origin.y = v11;
  v23.size.width = Width;
  v23.size.height = v15;
  v17 = CGRectGetHeight(v23);
  [(UIView *)self->_separator setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(0.0, Height - v17, Width, v15, v4, v6, v8, v10)];
  [(UIButton *)self->_backButton setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(0.0, 0.0, 47.0, 42.0, v4, v6, v8, v10)];
  [(UILabel *)self->_expandedLabel sizeToFit];
  expandedLabel = self->_expandedLabel;
  titleLabel = [(SUUIStackedBarCell *)self titleLabel];
  [titleLabel center];
  [(UILabel *)expandedLabel setCenter:?];
}

@end