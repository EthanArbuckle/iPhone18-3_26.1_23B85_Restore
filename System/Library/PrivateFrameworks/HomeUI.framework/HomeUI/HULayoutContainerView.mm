@interface HULayoutContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (HULayoutContainerView)initWithContentView:(id)view layoutBlock:(id)block;
- (void)layoutSubviews;
@end

@implementation HULayoutContainerView

- (HULayoutContainerView)initWithContentView:(id)view layoutBlock:(id)block
{
  viewCopy = view;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = HULayoutContainerView;
  v9 = [(HULayoutContainerView *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentView, view);
    if (viewCopy)
    {
      [(HULayoutContainerView *)v10 bounds];
      [viewCopy setFrame:?];
      [viewCopy setAutoresizingMask:18];
      [(HULayoutContainerView *)v10 addSubview:viewCopy];
    }

    v11 = _Block_copy(blockCopy);
    layoutBlock = v10->_layoutBlock;
    v10->_layoutBlock = v11;
  }

  return v10;
}

- (CGSize)intrinsicContentSize
{
  contentView = [(HULayoutContainerView *)self contentView];
  if (contentView)
  {
    contentView2 = [(HULayoutContainerView *)self contentView];
    [contentView2 intrinsicContentSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HULayoutContainerView;
    [(HULayoutContainerView *)&v13 intrinsicContentSize];
    v6 = v9;
    v8 = v10;
  }

  v11 = v6;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  contentView = [(HULayoutContainerView *)self contentView];

  if (contentView)
  {
    contentView2 = [(HULayoutContainerView *)self contentView];
    *&v14 = priority;
    *&v15 = fittingPriority;
    [contentView2 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:{v14, v15}];
    v17 = v16;
    v19 = v18;

    v20 = v17;
    v21 = v19;
  }

  else
  {
    v22.receiver = self;
    v22.super_class = HULayoutContainerView;
    *&v11 = priority;
    *&v12 = fittingPriority;
    [(HULayoutContainerView *)&v22 systemLayoutSizeFittingSize:width withHorizontalFittingPriority:height verticalFittingPriority:v11, v12];
  }

  result.height = v21;
  result.width = v20;
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = HULayoutContainerView;
  [(HULayoutContainerView *)&v5 layoutSubviews];
  layoutBlock = [(HULayoutContainerView *)self layoutBlock];
  contentView = [(HULayoutContainerView *)self contentView];
  (layoutBlock)[2](layoutBlock, contentView);
}

@end