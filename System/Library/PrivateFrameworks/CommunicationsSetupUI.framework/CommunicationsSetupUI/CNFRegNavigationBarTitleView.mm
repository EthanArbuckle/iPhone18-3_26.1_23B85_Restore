@interface CNFRegNavigationBarTitleView
- (BOOL)_useSilverLookForBarStyle:(int64_t)style;
- (CGSize)_currentTextShadowOffsetForBarStyle:(int64_t)style;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CNFRegNavigationBarTitleView)initWithFrame:(CGRect)frame;
- (CNFRegNavigationBarTitleView)initWithNavigationItem:(id)item;
- (id)_currentTextColorForBarStyle:(int64_t)style;
- (id)_currentTextShadowColorForBarStyle:(int64_t)style;
- (id)_defaultFont;
- (id)_titleTextColorForBarStyle:(int64_t)style;
- (void)_updateTitleLabel;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
@end

@implementation CNFRegNavigationBarTitleView

- (CNFRegNavigationBarTitleView)initWithNavigationItem:(id)item
{
  itemCopy = item;
  v5 = *MEMORY[0x277CBF3A0];
  v6 = *(MEMORY[0x277CBF3A0] + 8);
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v8 = *(MEMORY[0x277CBF3A0] + 24);
  v9 = [(CNFRegNavigationBarTitleView *)self initWithFrame:*MEMORY[0x277CBF3A0], v6, v7, v8];
  v10 = v9;
  if (v9)
  {
    [(CNFRegNavigationBarTitleView *)v9 setItem:itemCopy];
    v11 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v5, v6, v7, v8}];
    titleLabel = v10->_titleLabel;
    v10->_titleLabel = v11;

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v10->_titleLabel setBackgroundColor:clearColor];

    [(UILabel *)v10->_titleLabel setOpaque:0];
    [(CNFRegNavigationBarTitleView *)v10 _updateTitleLabel];
    [(CNFRegNavigationBarTitleView *)v10 addSubview:v10->_titleLabel];
  }

  return v10;
}

- (CNFRegNavigationBarTitleView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = CNFRegNavigationBarTitleView;
  v3 = [(CNFRegNavigationBarTitleView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CNFRegNavigationBarTitleView *)v3 setOpaque:0];
    [(CNFRegNavigationBarTitleView *)v4 setUserInteractionEnabled:0];
    v5 = +[CNFRegAppearanceController globalAppearanceController];
    navigationBarActivityIndicatorStyle = [v5 navigationBarActivityIndicatorStyle];
    v7 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:navigationBarActivityIndicatorStyle];
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

- (id)_titleTextColorForBarStyle:(int64_t)style
{
  if ((style - 3) > 0xFFFFFFFFFFFFFFFDLL)
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
  item = [(CNFRegNavigationBarTitleView *)self item];
  navigationBar = [item navigationBar];
  _defaultTitleFont = [navigationBar _defaultTitleFont];

  return _defaultTitleFont;
}

- (BOOL)_useSilverLookForBarStyle:(int64_t)style
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  item = [(CNFRegNavigationBarTitleView *)self item];
  navigationBar = [item navigationBar];
  barTintColor = [navigationBar barTintColor];

  return userInterfaceIdiom == 1 && barTintColor == 0 && style == 0;
}

- (id)_currentTextColorForBarStyle:(int64_t)style
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
    v8 = [(CNFRegNavigationBarTitleView *)self _titleTextColorForBarStyle:style];
  }

  return v8;
}

- (id)_currentTextShadowColorForBarStyle:(int64_t)style
{
  v4 = [(CNFRegNavigationBarTitleView *)self _useSilverLookForBarStyle:style];
  if (v4 && !_currentTextShadowColorForBarStyle____silverLookShadowColor)
  {
    v5 = [objc_alloc(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.5];
    v6 = _currentTextShadowColorForBarStyle____silverLookShadowColor;
    _currentTextShadowColorForBarStyle____silverLookShadowColor = v5;
  }

  if (v4)
  {
    buttonItemShadowColor = _currentTextShadowColorForBarStyle____silverLookShadowColor;
  }

  else
  {
    navigationBar = [(UINavigationItem *)self->_item navigationBar];
    buttonItemShadowColor = [navigationBar buttonItemShadowColor];
  }

  return buttonItemShadowColor;
}

- (CGSize)_currentTextShadowOffsetForBarStyle:(int64_t)style
{
  v3 = [(CNFRegNavigationBarTitleView *)self _useSilverLookForBarStyle:style];
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

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  item = [(CNFRegNavigationBarTitleView *)self item];
  navigationBar = [item navigationBar];
  barStyle = [navigationBar barStyle];

  _defaultFont = [(CNFRegNavigationBarTitleView *)self _defaultFont];
  [(UILabel *)self->_titleLabel setBaselineAdjustment:1];
  item2 = [(CNFRegNavigationBarTitleView *)self item];
  title = [item2 title];
  [(UILabel *)self->_titleLabel setText:title];

  [(UILabel *)self->_titleLabel setFont:_defaultFont];
  v8 = [(CNFRegNavigationBarTitleView *)self _currentTextColorForBarStyle:barStyle];
  [(UILabel *)self->_titleLabel setTextColor:v8];

  [(CNFRegNavigationBarTitleView *)self _currentTextShadowOffsetForBarStyle:barStyle];
  [(UILabel *)self->_titleLabel setShadowOffset:?];
  v9 = [(CNFRegNavigationBarTitleView *)self _currentTextShadowColorForBarStyle:barStyle];
  [(UILabel *)self->_titleLabel setShadowColor:v9];

  [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  [_defaultFont pointSize];
  if (v10 != 0.0)
  {
    [_defaultFont pointSize];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  v27[2] = *MEMORY[0x277D85DE8];
  [(CNFRegNavigationBarTitleView *)self _updateTitleLabel:fits.width];
  text = [(UILabel *)self->_titleLabel text];
  font = [(UILabel *)self->_titleLabel font];
  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v7 = [defaultParagraphStyle mutableCopy];

  [v7 setLineBreakMode:4];
  v8 = *MEMORY[0x277D74118];
  v26[0] = *MEMORY[0x277D740A8];
  v26[1] = v8;
  v27[0] = font;
  v27[1] = v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  v10 = objc_alloc_init(MEMORY[0x277D74260]);
  [(UILabel *)self->_titleLabel minimumScaleFactor];
  [v10 setMinimumScaleFactor:?];
  if ([text length])
  {
    item = [(CNFRegNavigationBarTitleView *)self item];
    navigationBar = [item navigationBar];
    [navigationBar bounds];
    [text boundingRectWithSize:0 options:v9 attributes:v10 context:{v13, v14}];
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