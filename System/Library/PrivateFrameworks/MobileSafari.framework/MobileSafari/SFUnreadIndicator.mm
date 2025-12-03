@interface SFUnreadIndicator
- (CGSize)intrinsicContentSize;
- (SFUnreadIndicator)initWithFrame:(CGRect)frame;
- (void)tintColorDidChange;
@end

@implementation SFUnreadIndicator

- (SFUnreadIndicator)initWithFrame:(CGRect)frame
{
  v22[4] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = SFUnreadIndicator;
  v3 = [(SFUnreadIndicator *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SFUnreadIndicator *)v3 setUserInteractionEnabled:0];
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    indicator = v4->_indicator;
    v4->_indicator = v5;

    [(UIView *)v4->_indicator _setCornerRadius:5.0];
    [(UIView *)v4->_indicator setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFUnreadIndicator *)v4 addSubview:v4->_indicator];
    v18 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(UIView *)v4->_indicator centerXAnchor];
    centerXAnchor2 = [(SFUnreadIndicator *)v4 centerXAnchor];
    v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v22[0] = v7;
    centerYAnchor = [(UIView *)v4->_indicator centerYAnchor];
    centerYAnchor2 = [(SFUnreadIndicator *)v4 centerYAnchor];
    v10 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v22[1] = v10;
    widthAnchor = [(UIView *)v4->_indicator widthAnchor];
    v12 = [widthAnchor constraintEqualToConstant:10.0];
    v22[2] = v12;
    heightAnchor = [(UIView *)v4->_indicator heightAnchor];
    v14 = [heightAnchor constraintEqualToConstant:10.0];
    v22[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:4];
    [v18 activateConstraints:v15];

    v16 = v4;
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v2 = 10.0;
  v3 = 10.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = SFUnreadIndicator;
  [(SFUnreadIndicator *)&v4 tintColorDidChange];
  tintColor = [(SFUnreadIndicator *)self tintColor];
  [(UIView *)self->_indicator setBackgroundColor:tintColor];
}

@end