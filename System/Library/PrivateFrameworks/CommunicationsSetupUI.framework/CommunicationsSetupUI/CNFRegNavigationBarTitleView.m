@interface CNFRegNavigationBarTitleView
- (BOOL)_useSilverLookForBarStyle:(int64_t)a3;
- (CGSize)_currentTextShadowOffsetForBarStyle:(int64_t)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CNFRegNavigationBarTitleView)initWithFrame:(CGRect)a3;
- (CNFRegNavigationBarTitleView)initWithNavigationItem:(id)a3;
- (id)_currentTextColorForBarStyle:(int64_t)a3;
- (id)_currentTextShadowColorForBarStyle:(int64_t)a3;
- (id)_defaultFont;
- (id)_titleTextColorForBarStyle:(int64_t)a3;
- (void)_updateTitleLabel;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
@end

@implementation CNFRegNavigationBarTitleView

- (CNFRegNavigationBarTitleView)initWithNavigationItem:(id)a3
{
  v4 = a3;
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [(CNFRegNavigationBarTitleView *)self initWithFrame:*MEMORY[0x277CBF3A0], v6, v7, v8];
  v10 = v9;
  if (v9)
  {
    [(CNFRegNavigationBarTitleView *)v9 setItem:v4];
    v11 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    titleLabel = v10->_titleLabel;
    v10->_titleLabel = v11;

    v13 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v10->_titleLabel setBackgroundColor:v13];

    [(UILabel *)v10->_titleLabel setOpaque:0];
    [(CNFRegNavigationBarTitleView *)v10 _updateTitleLabel];
    [(CNFRegNavigationBarTitleView *)v10 addSubview:v10->_titleLabel];
  }

  return v10;
}

- (CNFRegNavigationBarTitleView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = CNFRegNavigationBarTitleView;
  v3 = [(CNFRegNavigationBarTitleView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CNFRegNavigationBarTitleView *)v3 setOpaque:0];
    [(CNFRegNavigationBarTitleView *)v4 setUserInteractionEnabled:0];
    v5 = +[CNFRegAppearanceController globalAppearanceController];
    v6 = [v5 navigationBarActivityIndicatorStyle];
    v7 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:v6];
    activityIndicator = v4->_activityIndicator;
    v4->_activityIndicator = v7;

    [(UIActivityIndicatorView *)v4->_activityIndicator startAnimating];
    [(CNFRegNavigationBarTitleView *)v4 addSubview:v4->_activityIndicator];
  }

  return v4;
}

- (void)dealloc
{
  [(UIActivityIndicatorView *)self->_activityIndicator removeFromSuperview];
  v3.receiver = self;
  v3.super_class = CNFRegNavigationBarTitleView;
  [(CNFRegNavigationBarTitleView *)&v3 dealloc];
}

- (id)_titleTextColorForBarStyle:(int64_t)a3
{
  if ((a3 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    [MEMORY[0x277D75348] whiteColor];
  }

  else
  {
    [MEMORY[0x277D75348] blackColor];
  }
  v3 = ;

  return v3;
}

- (id)_defaultFont
{
  v2 = [(CNFRegNavigationBarTitleView *)self item];
  v3 = [v2 navigationBar];
  v4 = [v3 _defaultTitleFont];

  return v4;
}

- (BOOL)_useSilverLookForBarStyle:(int64_t)a3
{
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  v7 = [(CNFRegNavigationBarTitleView *)self item];
  v8 = [v7 navigationBar];
  v9 = [v8 barTintColor];

  return v6 == 1 && v9 == 0 && a3 == 0;
}

- (id)_currentTextColorForBarStyle:(int64_t)a3
{
  v5 = [(CNFRegNavigationBarTitleView *)self _useSilverLookForBarStyle:?];
  if (v5 && !_currentTextColorForBarStyle____silverLookTextColor)
  {
    v6 = [objc_alloc(MEMORY[0x277D75348]) initWithRed:0.443137258 green:0.470588237 blue:0.501960814 alpha:1.0];
    v7 = _currentTextColorForBarStyle____silverLookTextColor;
    _currentTextColorForBarStyle____silverLookTextColor = v6;
  }

  if (v5)
  {
    v8 = _currentTextColorForBarStyle____silverLookTextColor;
  }

  else
  {
    v8 = [(CNFRegNavigationBarTitleView *)self _titleTextColorForBarStyle:a3];
  }

  return v8;
}

- (id)_currentTextShadowColorForBarStyle:(int64_t)a3
{
  v4 = [(CNFRegNavigationBarTitleView *)self _useSilverLookForBarStyle:a3];
  if (v4 && !_currentTextShadowColorForBarStyle____silverLookShadowColor)
  {
    v5 = [objc_alloc(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.5];
    v6 = _currentTextShadowColorForBarStyle____silverLookShadowColor;
    _currentTextShadowColorForBarStyle____silverLookShadowColor = v5;
  }

  if (v4)
  {
    v7 = _currentTextShadowColorForBarStyle____silverLookShadowColor;
  }

  else
  {
    v8 = [(UINavigationItem *)self->_item navigationBar];
    v7 = [v8 buttonItemShadowColor];
  }

  return v7;
}

- (CGSize)_currentTextShadowOffsetForBarStyle:(int64_t)a3
{
  v3 = [(CNFRegNavigationBarTitleView *)self _useSilverLookForBarStyle:a3];
  v4 = 1.0;
  if (!v3)
  {
    v4 = -1.0;
  }

  v5 = 0.0;
  result.height = v4;
  result.width = v5;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CNFRegNavigationBarTitleView *)self frame];
  if (v9 != width || v8 != height)
  {
    [(CNFRegNavigationBarTitleView *)self setNeedsLayout];
  }

  v11.receiver = self;
  v11.super_class = CNFRegNavigationBarTitleView;
  [(CNFRegNavigationBarTitleView *)&v11 setFrame:x, y, width, height];
}

- (void)_updateTitleLabel
{
  v3 = [(CNFRegNavigationBarTitleView *)self item];
  v4 = [v3 navigationBar];
  v5 = [v4 barStyle];

  v12 = [(CNFRegNavigationBarTitleView *)self _defaultFont];
  [(UILabel *)self->_titleLabel setBaselineAdjustment:1];
  v6 = [(CNFRegNavigationBarTitleView *)self item];
  v7 = [v6 title];
  [(UILabel *)self->_titleLabel setText:v7];

  [(UILabel *)self->_titleLabel setFont:v12];
  v8 = [(CNFRegNavigationBarTitleView *)self _currentTextColorForBarStyle:v5];
  [(UILabel *)self->_titleLabel setTextColor:v8];

  [(CNFRegNavigationBarTitleView *)self _currentTextShadowOffsetForBarStyle:v5];
  [(UILabel *)self->_titleLabel setShadowOffset:?];
  v9 = [(CNFRegNavigationBarTitleView *)self _currentTextShadowColorForBarStyle:v5];
  [(UILabel *)self->_titleLabel setShadowColor:v9];

  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  [v12 pointSize];
  if (v10 != 0.0)
  {
    [v12 pointSize];
    [(UILabel *)self->_titleLabel setMinimumScaleFactor:12.0 / v11];
  }
}

- (void)layoutSubviews
{
  [(CNFRegNavigationBarTitleView *)self _updateTitleLabel];
  [(CNFRegNavigationBarTitleView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIActivityIndicatorView *)self->_activityIndicator bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  MidY = CGRectGetMidY(v21);
  v22.origin.x = 0.0;
  v22.origin.y = v12;
  v22.size.width = v14;
  v22.size.height = v16;
  v18 = floor(MidY + CGRectGetHeight(v22) * -0.5);
  [(UIActivityIndicatorView *)self->_activityIndicator setFrame:0.0, v18, v14, v16];
  v23.origin.x = 0.0;
  v23.origin.y = v18;
  v23.size.width = v14;
  v23.size.height = v16;
  CGRectGetMaxX(v23);
  titleLabel = self->_titleLabel;

  [(UILabel *)titleLabel setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  [(CNFRegNavigationBarTitleView *)self _updateTitleLabel:a3.width];
  v4 = [(UILabel *)self->_titleLabel text];
  v5 = [(UILabel *)self->_titleLabel font];
  v6 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v7 = [v6 mutableCopy];

  [v7 setLineBreakMode:4];
  v8 = *MEMORY[0x277D74118];
  v26[0] = *MEMORY[0x277D740A8];
  v26[1] = v8;
  v27[0] = v5;
  v27[1] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v10 = objc_alloc_init(MEMORY[0x277D74260]);
  [(UILabel *)self->_titleLabel minimumScaleFactor];
  [v10 setMinimumScaleFactor:?];
  if ([v4 length])
  {
    v11 = [(CNFRegNavigationBarTitleView *)self item];
    v12 = [v11 navigationBar];
    [v12 bounds];
    [v4 boundingRectWithSize:0 options:v9 attributes:v10 context:{v13, v14}];
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v16 = *MEMORY[0x277CBF3A8];
    v18 = *(MEMORY[0x277CBF3A8] + 8);
  }

  [(UIActivityIndicatorView *)self->_activityIndicator bounds];
  v20 = v19;
  [(UIActivityIndicatorView *)self->_activityIndicator bounds];
  v22 = v21;

  v23 = *MEMORY[0x277D85DE8];
  v24 = v16 + 7.0 + v20;
  v25 = fmax(v18 + 1.0 + 2.0, v22);
  result.height = v25;
  result.width = v24;
  return result;
}

@end