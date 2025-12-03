@interface SUUIGiftAmountButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIGiftAmountButton)initWithFrame:(CGRect)frame;
- (void)_reloadBorderView;
- (void)drawRect:(CGRect)rect;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
@end

@implementation SUUIGiftAmountButton

- (SUUIGiftAmountButton)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = SUUIGiftAmountButton;
  v3 = [(SUUIGiftAmountButton *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    borderView = v3->_borderView;
    v3->_borderView = v4;

    [(UIView *)v3->_borderView setAutoresizingMask:18];
    v6 = v3->_borderView;
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIView *)v6 setBackgroundColor:systemBackgroundColor];

    v8 = v3->_borderView;
    [(SUUIGiftAmountButton *)v3 bounds];
    [(UIView *)v8 setFrame:?];
    [(UIView *)v3->_borderView setUserInteractionEnabled:0];
    [(SUUIGiftAmountButton *)v3 addSubview:v3->_borderView];
    layer = [(UIView *)v3->_borderView layer];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [layer setBorderColor:{objc_msgSend(labelColor, "CGColor")}];

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    [layer setBorderWidth:1.0 / v12];

    [layer setCornerRadius:7.0];
    labelColor2 = [MEMORY[0x277D75348] labelColor];
    [(SUUIGiftAmountButton *)v3 setTitleColor:labelColor2 forState:0];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(SUUIGiftAmountButton *)v3 setTitleColor:secondaryLabelColor forState:1];

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(SUUIGiftAmountButton *)v3 setTitleColor:systemWhiteColor forState:4];

    titleLabel = [(SUUIGiftAmountButton *)v3 titleLabel];
    v17 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [titleLabel setFont:v17];

    titleLabel2 = [(SUUIGiftAmountButton *)v3 titleLabel];
    [titleLabel2 setMinimumScaleFactor:0.5];

    titleLabel3 = [(SUUIGiftAmountButton *)v3 titleLabel];
    [titleLabel3 setAdjustsFontSizeToFitWidth:1];

    titleLabel4 = [(SUUIGiftAmountButton *)v3 titleLabel];
    [titleLabel4 setNumberOfLines:1];

    titleLabel5 = [(SUUIGiftAmountButton *)v3 titleLabel];
    [titleLabel5 setLineBreakMode:2];

    [(SUUIGiftAmountButton *)v3 setTitleEdgeInsets:0.0, 5.0, 0.0, 5.0];
  }

  return v3;
}

- (void)drawRect:(CGRect)rect
{
  v4.receiver = self;
  v4.super_class = SUUIGiftAmountButton;
  [(SUUIGiftAmountButton *)&v4 drawRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [(SUUIGiftAmountButton *)self _reloadBorderView];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = SUUIGiftAmountButton;
  [(SUUIGiftAmountButton *)&v4 setHighlighted:highlighted];
  [(SUUIGiftAmountButton *)self _reloadBorderView];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = SUUIGiftAmountButton;
  [(SUUIGiftAmountButton *)&v4 setSelected:selected];
  [(SUUIGiftAmountButton *)self _reloadBorderView];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v5.receiver = self;
  v5.super_class = SUUIGiftAmountButton;
  [(SUUIGiftAmountButton *)&v5 sizeThatFits:fits.width, fits.height];
  v4 = 44.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_reloadBorderView
{
  if (([(SUUIGiftAmountButton *)self isHighlighted]& 1) != 0 || [(SUUIGiftAmountButton *)self isSelected])
  {
    tintColor = [(SUUIGiftAmountButton *)self tintColor];
    [(UIView *)self->_borderView setBackgroundColor:tintColor];
    layer = [(UIView *)self->_borderView layer];
    layer2 = layer;
    v8 = tintColor;
  }

  else
  {
    borderView = self->_borderView;
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIView *)borderView setBackgroundColor:systemBackgroundColor];

    layer2 = [(UIView *)self->_borderView layer];
    layer = [MEMORY[0x277D75348] labelColor];
    tintColor = layer;
    v8 = layer2;
  }

  [layer2 setBorderColor:{objc_msgSend(tintColor, "CGColor")}];
}

@end