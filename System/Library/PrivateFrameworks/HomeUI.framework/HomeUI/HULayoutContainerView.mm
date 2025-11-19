@interface HULayoutContainerView
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (HULayoutContainerView)initWithContentView:(id)a3 layoutBlock:(id)a4;
- (void)layoutSubviews;
@end

@implementation HULayoutContainerView

- (HULayoutContainerView)initWithContentView:(id)a3 layoutBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HULayoutContainerView;
  v9 = [(HULayoutContainerView *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contentView, a3);
    if (v7)
    {
      [(HULayoutContainerView *)v10 bounds];
      [v7 setFrame:?];
      [v7 setAutoresizingMask:18];
      [(HULayoutContainerView *)v10 addSubview:v7];
    }

    v11 = _Block_copy(v8);
    layoutBlock = v10->_layoutBlock;
    v10->_layoutBlock = v11;
  }

  return v10;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(HULayoutContainerView *)self contentView];
  if (v3)
  {
    v4 = [(HULayoutContainerView *)self contentView];
    [v4 intrinsicContentSize];
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v10 = [(HULayoutContainerView *)self contentView];

  if (v10)
  {
    v13 = [(HULayoutContainerView *)self contentView];
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
    v22.super_class = HULayoutContainerView;
    *&v11 = a4;
    *&v12 = a5;
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
  v3 = [(HULayoutContainerView *)self layoutBlock];
  v4 = [(HULayoutContainerView *)self contentView];
  (v3)[2](v3, v4);
}

@end