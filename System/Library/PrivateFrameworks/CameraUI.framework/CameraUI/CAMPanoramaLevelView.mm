@interface CAMPanoramaLevelView
- (CAMPanoramaLevelView)initWithFrame:(CGRect)frame;
- (CGSize)intrinsicContentSize;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation CAMPanoramaLevelView

- (CAMPanoramaLevelView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = CAMPanoramaLevelView;
  v3 = [(CAMPanoramaLevelView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(CAMPanoramaLevelView *)v3 setBackgroundColor:clearColor];

    v5 = objc_alloc(MEMORY[0x1E69DD250]);
    v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    lineView = v3->_lineView;
    v3->_lineView = v6;

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v9 = [whiteColor colorWithAlphaComponent:0.5];

    [(UIView *)v3->_lineView setBackgroundColor:v9];
    [(CAMPanoramaLevelView *)v3 addSubview:v3->_lineView];
    v10 = v3;
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x1E69DE788];
  v3 = 3.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = CAMPanoramaLevelView;
  [(CAMPanoramaLevelView *)&v10 layoutSubviews];
  [(CAMPanoramaLevelView *)self bounds];
  Width = CGRectGetWidth(v11);
  UIRectCenteredIntegralRectScale();
  UIRectGetCenter();
  v5 = v4;
  v7 = v6;
  lineView = [(CAMPanoramaLevelView *)self lineView];
  [lineView setBounds:{0.0, 0.0, Width, 3.0}];
  [lineView setCenter:{v5, v7}];
  layer = [lineView layer];
  [layer setCornerRadius:1.5];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = CAMPanoramaLevelView;
  v5 = [(CAMPanoramaLevelView *)&v7 hitTest:event withEvent:test.x, test.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

@end