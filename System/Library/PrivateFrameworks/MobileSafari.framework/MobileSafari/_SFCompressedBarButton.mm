@interface _SFCompressedBarButton
- (_SFCompressedBarButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation _SFCompressedBarButton

- (_SFCompressedBarButton)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = _SFCompressedBarButton;
  v3 = [(_SFCompressedBarButton *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    highlightView = v3->_highlightView;
    v3->_highlightView = v4;

    [(UIView *)v3->_highlightView setAlpha:0.0];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(UIView *)v3->_highlightView setBackgroundColor:blackColor];

    v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979CE8]];
    layer = [(UIView *)v3->_highlightView layer];
    [layer setCompositingFilter:v7];

    [(_SFCompressedBarButton *)v3 addSubview:v3->_highlightView];
    v9 = v3;
  }

  return v3;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v8.receiver = self;
  v8.super_class = _SFCompressedBarButton;
  [(_SFCompressedBarButton *)&v8 setHighlighted:?];
  v5 = 0.2;
  v6[1] = 3221225472;
  v6[0] = MEMORY[0x1E69E9820];
  v6[2] = __41___SFCompressedBarButton_setHighlighted___block_invoke;
  v6[3] = &unk_1E721BFA8;
  if (!highlightedCopy)
  {
    v5 = 0.5;
  }

  v6[4] = self;
  v7 = highlightedCopy;
  [MEMORY[0x1E69DD250] animateWithDuration:50659332 delay:v6 options:0 animations:v5 completion:0.0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _SFCompressedBarButton;
  [(_SFCompressedBarButton *)&v3 layoutSubviews];
  [(_SFCompressedBarButton *)self bounds];
  [(UIView *)self->_highlightView setFrame:?];
}

@end