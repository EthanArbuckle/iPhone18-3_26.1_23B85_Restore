@interface HUVisualEffectContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (HUVisualEffectContainerView)initWithInnerContentView:(id)view;
- (void)layoutSubviews;
- (void)setInnerContentView:(id)view;
@end

@implementation HUVisualEffectContainerView

- (HUVisualEffectContainerView)initWithInnerContentView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = HUVisualEffectContainerView;
  v5 = [(HUVisualEffectContainerView *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(HUVisualEffectContainerView *)v5 setInnerContentView:viewCopy];
  }

  return v6;
}

- (void)setInnerContentView:(id)view
{
  viewCopy = view;
  innerContentView = self->_innerContentView;
  if (innerContentView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)innerContentView removeFromSuperview];
    objc_storeStrong(&self->_innerContentView, view);
    contentView = [(HUVisualEffectContainerView *)self contentView];
    [contentView addSubview:v8];

    [(HUVisualEffectContainerView *)self invalidateIntrinsicContentSize];
    [(HUVisualEffectContainerView *)self setNeedsLayout];
    viewCopy = v8;
  }
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  innerContentView = [(HUVisualEffectContainerView *)self innerContentView];

  if (innerContentView)
  {
    innerContentView2 = [(HUVisualEffectContainerView *)self innerContentView];
    *&v14 = priority;
    *&v15 = fittingPriority;
    [innerContentView2 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v14, v15}];
    v17 = v16;
    v19 = v18;

    v20 = v17;
    v21 = v19;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = HUVisualEffectContainerView;
    *&v11 = priority;
    *&v12 = fittingPriority;
    [(HUVisualEffectContainerView *)&v22 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v11, v12];
  }

  result.height = v21;
  result.width = v20;
  return result;
}

- (CGSize)intrinsicContentSize
{
  innerContentView = [(HUVisualEffectContainerView *)self innerContentView];
  [innerContentView intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  innerContentView = [(HUVisualEffectContainerView *)self innerContentView];
  [innerContentView sizeThatFits:{width, height}];
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
  innerContentView = [(HUVisualEffectContainerView *)self innerContentView];
  [(HUVisualEffectContainerView *)self bounds];
  [innerContentView hu_setFramePreservingTransform:?];
}

@end