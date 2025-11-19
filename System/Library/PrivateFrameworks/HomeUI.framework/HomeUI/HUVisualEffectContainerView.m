@interface HUVisualEffectContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (HUVisualEffectContainerView)initWithInnerContentView:(id)a3;
- (void)layoutSubviews;
- (void)setInnerContentView:(id)a3;
@end

@implementation HUVisualEffectContainerView

- (HUVisualEffectContainerView)initWithInnerContentView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HUVisualEffectContainerView;
  v5 = [(HUVisualEffectContainerView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HUVisualEffectContainerView *)v5 setInnerContentView:v4];
  }

  return v6;
}

- (void)setInnerContentView:(id)a3
{
  v5 = a3;
  innerContentView = self->_innerContentView;
  if (innerContentView != v5)
  {
    v8 = v5;
    [(UIView *)innerContentView removeFromSuperview];
    objc_storeStrong(&self->_innerContentView, a3);
    v7 = [(HUVisualEffectContainerView *)self contentView];
    [v7 addSubview:v8];

    [(HUVisualEffectContainerView *)self invalidateIntrinsicContentSize];
    [(HUVisualEffectContainerView *)self setNeedsLayout];
    v5 = v8;
  }
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v10 = [(HUVisualEffectContainerView *)self innerContentView];

  if (v10)
  {
    v13 = [(HUVisualEffectContainerView *)self innerContentView];
    *&v14 = a4;
    *&v15 = a5;
    [v13 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v14, v15}];
    v17 = v16;
    v19 = v18;

    v20 = v17;
    v21 = v19;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = HUVisualEffectContainerView;
    *&v11 = a4;
    *&v12 = a5;
    [(HUVisualEffectContainerView *)&v22 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v11, v12];
  }

  result.height = v21;
  result.width = v20;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(HUVisualEffectContainerView *)self innerContentView];
  [v2 intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(HUVisualEffectContainerView *)self innerContentView];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = HUVisualEffectContainerView;
  [(HUVisualEffectContainerView *)&v4 layoutSubviews];
  v3 = [(HUVisualEffectContainerView *)self innerContentView];
  [(HUVisualEffectContainerView *)self bounds];
  [v3 hu_setFramePreservingTransform:?];
}

@end