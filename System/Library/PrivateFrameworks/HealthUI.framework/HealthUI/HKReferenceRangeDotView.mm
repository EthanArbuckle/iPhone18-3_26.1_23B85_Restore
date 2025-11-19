@interface HKReferenceRangeDotView
- (CGRect)desiredDotViewFrame;
- (HKReferenceRangeDotView)initWithFrame:(CGRect)a3;
- (UIColor)dotColor;
- (_HKReferenceRangeDotViewDot)dotView;
- (void)setDotColor:(id)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation HKReferenceRangeDotView

- (HKReferenceRangeDotView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = HKReferenceRangeDotView;
  v3 = [(HKReferenceRangeDotView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] clearColor];
    [(HKReferenceRangeDotView *)v3 setBackgroundColor:v4];

    [(HKReferenceRangeDotView *)v3 setClipsToBounds:0];
    v5 = [_HKReferenceRangeDotViewDot alloc];
    [(HKReferenceRangeDotView *)v3 desiredDotViewFrame];
    v6 = [(_HKReferenceRangeDotViewDot *)v5 initWithFrame:?];
    [(HKReferenceRangeDotView *)v3 addSubview:v6];
    objc_storeWeak(&v3->_dotView, v6);
  }

  return v3;
}

- (void)setFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = HKReferenceRangeDotView;
  [(HKReferenceRangeDotView *)&v13 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [WeakRetained dotColor];

  return v3;
}

- (void)setDotColor:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dotView);
  [WeakRetained setDotColor:v4];
}

- (_HKReferenceRangeDotViewDot)dotView
{
  WeakRetained = objc_loadWeakRetained(&self->_dotView);

  return WeakRetained;
}

@end