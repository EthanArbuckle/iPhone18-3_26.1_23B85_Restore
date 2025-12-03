@interface HKReferenceRangeDotView
- (CGRect)desiredDotViewFrame;
- (HKReferenceRangeDotView)initWithFrame:(CGRect)frame;
- (UIColor)dotColor;
- (_HKReferenceRangeDotViewDot)dotView;
- (void)setDotColor:(id)color;
- (void)setFrame:(CGRect)frame;
@end

@implementation HKReferenceRangeDotView

- (HKReferenceRangeDotView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = HKReferenceRangeDotView;
  v3 = [(HKReferenceRangeDotView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(HKReferenceRangeDotView *)v3 setBackgroundColor:clearColor];

    [(HKReferenceRangeDotView *)v3 setClipsToBounds:0];
    v5 = [_HKReferenceRangeDotViewDot alloc];
    [(HKReferenceRangeDotView *)v3 desiredDotViewFrame];
    v6 = [(_HKReferenceRangeDotViewDot *)v5 initWithFrame:?];
    [(HKReferenceRangeDotView *)v3 addSubview:v6];
    objc_storeWeak(&v3->_dotView, v6);
  }

  return v3;
}

- (void)setFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = HKReferenceRangeDotView;
  [(HKReferenceRangeDotView *)&v13 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(HKReferenceRangeDotView *)self desiredDotViewFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  WeakRetained = objc_loadWeakRetained(&self->_dotView);
  [WeakRetained setFrame:{v5, v7, v9, v11}];
}

- (CGRect)desiredDotViewFrame
{
  [(HKReferenceRangeDotView *)self bounds];

  return CGRectInset(*&v2, -1.0, -1.0);
}

- (UIColor)dotColor
{
  WeakRetained = objc_loadWeakRetained(&self->_dotView);
  dotColor = [WeakRetained dotColor];

  return dotColor;
}

- (void)setDotColor:(id)color
{
  colorCopy = color;
  WeakRetained = objc_loadWeakRetained(&self->_dotView);
  [WeakRetained setDotColor:colorCopy];
}

- (_HKReferenceRangeDotViewDot)dotView
{
  WeakRetained = objc_loadWeakRetained(&self->_dotView);

  return WeakRetained;
}

@end