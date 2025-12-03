@interface ICTextBackgroundView
- (ICTextBackgroundView)initWithCoder:(id)coder;
- (ICTextBackgroundView)initWithFrame:(CGRect)frame;
- (UIView)contentView;
- (id)backgroundColor;
- (void)createLayout;
- (void)setBackgroundColor:(id)color;
@end

@implementation ICTextBackgroundView

- (ICTextBackgroundView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ICTextBackgroundView;
  v3 = [(ICTextBackgroundView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ICTextBackgroundView *)v3 createLayout];
  }

  return v4;
}

- (ICTextBackgroundView)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = ICTextBackgroundView;
  v3 = [(ICTextBackgroundView *)&v10 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(ICTextBackgroundView *)v3 createLayout];
    v9.receiver = v4;
    v9.super_class = ICTextBackgroundView;
    backgroundColor = [(ICTextBackgroundView *)&v9 backgroundColor];
    contentView = [(ICTextBackgroundView *)v4 contentView];
    [contentView setBackgroundColor:backgroundColor];

    v8.receiver = v4;
    v8.super_class = ICTextBackgroundView;
    [(ICTextBackgroundView *)&v8 setBackgroundColor:0];
  }

  return v4;
}

- (void)createLayout
{
  [(ICTextBackgroundView *)self setUserInteractionEnabled:0];
  contentView = [(ICTextBackgroundView *)self contentView];
  [(ICTextBackgroundView *)self addSubview:contentView];
}

- (id)backgroundColor
{
  contentView = [(ICTextBackgroundView *)self contentView];
  backgroundColor = [contentView backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  contentView = [(ICTextBackgroundView *)self contentView];
  [contentView setBackgroundColor:colorCopy];
}

- (UIView)contentView
{
  contentView = self->_contentView;
  if (!contentView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = self->_contentView;
    self->_contentView = v4;

    [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_contentView setUserInteractionEnabled:0];
    contentView = self->_contentView;
  }

  return contentView;
}

@end