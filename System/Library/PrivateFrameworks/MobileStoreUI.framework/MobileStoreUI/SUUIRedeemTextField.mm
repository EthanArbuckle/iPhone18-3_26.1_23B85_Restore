@interface SUUIRedeemTextField
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)placeholderRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (SUUIRedeemTextField)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setBackdropBackground:(BOOL)background;
- (void)setSuppressBorder:(BOOL)border;
@end

@implementation SUUIRedeemTextField

- (SUUIRedeemTextField)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = SUUIRedeemTextField;
  v3 = [(SUUIRedeemTextField *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D75DE8]) initWithPrivateStyle:10060];
    backdropView = v3->_backdropView;
    v3->_backdropView = v4;

    [(UIView *)v3->_backdropView setHidden:1];
    [(SUUIRedeemTextField *)v3 insertSubview:v3->_backdropView atIndex:0];
    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    bottomBorderView = v3->_bottomBorderView;
    v3->_bottomBorderView = v6;

    v8 = v3->_bottomBorderView;
    v9 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v8 setBackgroundColor:v9];

    [(SUUIRedeemTextField *)v3 addSubview:v3->_bottomBorderView];
    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    topBorderView = v3->_topBorderView;
    v3->_topBorderView = v10;

    v12 = v3->_topBorderView;
    v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    [(UIView *)v12 setBackgroundColor:v13];

    [(SUUIRedeemTextField *)v3 addSubview:v3->_topBorderView];
    v3->_backdropBackground = 0;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(SUUIRedeemTextField *)v3 setBackgroundColor:whiteColor];

    [(SUUIRedeemTextField *)v3 setOpaque:1];
  }

  return v3;
}

- (void)setBackdropBackground:(BOOL)background
{
  if (self->_backdropBackground != background)
  {
    v13 = v5;
    v14 = v4;
    v15 = v3;
    backgroundCopy = background;
    self->_backdropBackground = background;
    backdropView = self->_backdropView;
    if (background)
    {
      [(UIView *)backdropView setHidden:0];
      [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [(UIView *)backdropView setHidden:1];
      [MEMORY[0x277D75348] whiteColor];
    }
    v12 = ;
    [(SUUIRedeemTextField *)self setBackgroundColor:v12, v6, v13, v14, v15, v7];

    [(SUUIRedeemTextField *)self setOpaque:!backgroundCopy];
  }
}

- (void)setSuppressBorder:(BOOL)border
{
  borderCopy = border;
  self->_suppressBorder = border;
  [(UIView *)self->_bottomBorderView setHidden:?];
  topBorderView = self->_topBorderView;

  [(UIView *)topBorderView setHidden:borderCopy];
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  width = bounds.size.width;
  v8.receiver = self;
  v8.super_class = SUUIRedeemTextField;
  [(SUUIRedeemTextField *)&v8 editingRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v6 = width + -30.0;
  v7 = 15.0;
  result.size.height = v5;
  result.size.width = v6;
  result.origin.y = v4;
  result.origin.x = v7;
  return result;
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
  width = bounds.size.width;
  v8.receiver = self;
  v8.super_class = SUUIRedeemTextField;
  [(SUUIRedeemTextField *)&v8 placeholderRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v6 = width + -30.0;
  v7 = 15.0;
  result.size.height = v5;
  result.size.width = v6;
  result.origin.y = v4;
  result.origin.x = v7;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  width = bounds.size.width;
  v8.receiver = self;
  v8.super_class = SUUIRedeemTextField;
  [(SUUIRedeemTextField *)&v8 textRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  v6 = width + -30.0;
  v7 = 15.0;
  result.size.height = v5;
  result.size.width = v6;
  result.origin.y = v4;
  result.origin.x = v7;
  return result;
}

- (void)layoutSubviews
{
  [(SUUIRedeemTextField *)self bounds];
  v4 = v3;
  v6 = v5;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v9 = 1.0 / v8;

  [(UIView *)self->_bottomBorderView setFrame:0.0, v6 - v9, v4, v9];
  [(UIView *)self->_topBorderView setFrame:0.0, 0.0, v4, v9];
  v10.receiver = self;
  v10.super_class = SUUIRedeemTextField;
  [(SUUIRedeemTextField *)&v10 layoutSubviews];
}

@end