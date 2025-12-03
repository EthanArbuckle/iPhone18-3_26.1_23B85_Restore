@interface _HKBodyMarginsLayout
- (CGSize)intrinsicContentSize;
- (_HKBodyMarginsLayout)init;
- (double)_maximumViewHeight;
- (double)_totalViewWidth;
- (void)_invalidateLayout;
- (void)layoutSubviews;
- (void)setBodyView:(id)view;
- (void)setLeftMarginView:(id)view;
- (void)setRightMarginView:(id)view;
@end

@implementation _HKBodyMarginsLayout

- (_HKBodyMarginsLayout)init
{
  v8.receiver = self;
  v8.super_class = _HKBodyMarginsLayout;
  v2 = [(_HKBodyMarginsLayout *)&v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    leftMarginView = v2->_leftMarginView;
    v2->_leftMarginView = 0;

    bodyView = v3->_bodyView;
    v3->_bodyView = 0;

    rightMarginView = v3->_rightMarginView;
    v3->_rightMarginView = 0;
  }

  return v3;
}

- (void)setLeftMarginView:(id)view
{
  viewCopy = view;
  if (([(UIView *)self->_leftMarginView isEqual:?]& 1) == 0)
  {
    leftMarginView = [(_HKBodyMarginsLayout *)self leftMarginView];
    [leftMarginView removeFromSuperview];

    objc_storeStrong(&self->_leftMarginView, view);
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:1];
    [(_HKBodyMarginsLayout *)self addSubview:viewCopy];
    [(_HKBodyMarginsLayout *)self _invalidateLayout];
  }
}

- (void)setBodyView:(id)view
{
  viewCopy = view;
  if (([(UIView *)self->_bodyView isEqual:?]& 1) == 0)
  {
    bodyView = [(_HKBodyMarginsLayout *)self bodyView];
    [bodyView removeFromSuperview];

    objc_storeStrong(&self->_bodyView, view);
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:1];
    [(_HKBodyMarginsLayout *)self addSubview:viewCopy];
    [(_HKBodyMarginsLayout *)self _invalidateLayout];
  }
}

- (void)setRightMarginView:(id)view
{
  viewCopy = view;
  if (([(UIView *)self->_rightMarginView isEqual:?]& 1) == 0)
  {
    rightMarginView = [(_HKBodyMarginsLayout *)self rightMarginView];
    [rightMarginView removeFromSuperview];

    objc_storeStrong(&self->_rightMarginView, view);
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:1];
    [(_HKBodyMarginsLayout *)self addSubview:viewCopy];
    [(_HKBodyMarginsLayout *)self _invalidateLayout];
  }
}

- (CGSize)intrinsicContentSize
{
  [(_HKBodyMarginsLayout *)self _totalViewWidth];
  v4 = v3;
  [(_HKBodyMarginsLayout *)self _maximumViewHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = _HKBodyMarginsLayout;
  [(_HKBodyMarginsLayout *)&v31 layoutSubviews];
  [(_HKBodyMarginsLayout *)self bounds];
  v4 = v3;
  v6 = v5;
  leftMarginView = [(_HKBodyMarginsLayout *)self leftMarginView];
  v8 = 0.0;
  if (leftMarginView)
  {
    v9 = leftMarginView;
    leftMarginView2 = [(_HKBodyMarginsLayout *)self leftMarginView];
    isHidden = [leftMarginView2 isHidden];

    if ((isHidden & 1) == 0)
    {
      leftMarginView3 = [(_HKBodyMarginsLayout *)self leftMarginView];
      [leftMarginView3 systemLayoutSizeFittingSize:{v4, v6}];
      v8 = v13;

      leftMarginView4 = [(_HKBodyMarginsLayout *)self leftMarginView];
      [leftMarginView4 setFrame:{0.0, 0.0, v8, v6}];
    }
  }

  rightMarginView = [(_HKBodyMarginsLayout *)self rightMarginView];
  if (rightMarginView && (v16 = rightMarginView, -[_HKBodyMarginsLayout rightMarginView](self, "rightMarginView"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isHidden], v17, v16, (v18 & 1) == 0))
  {
    rightMarginView2 = [(_HKBodyMarginsLayout *)self rightMarginView];
    [rightMarginView2 systemLayoutSizeFittingSize:{v4, v6}];
    v22 = v21;

    v19 = v4 - v22;
    rightMarginView3 = [(_HKBodyMarginsLayout *)self rightMarginView];
    [rightMarginView3 setFrame:{v4 - v22, 0.0, v22, v6}];
  }

  else
  {
    v19 = v4;
  }

  bodyView = [(_HKBodyMarginsLayout *)self bodyView];
  if (bodyView)
  {
    v25 = bodyView;
    bodyView2 = [(_HKBodyMarginsLayout *)self bodyView];
    isHidden2 = [bodyView2 isHidden];

    if ((isHidden2 & 1) == 0)
    {
      if (v8 > 0.0)
      {
        v8 = v8 + 16.0;
      }

      v28 = v19 + -16.0;
      if (v19 >= v4)
      {
        v28 = v19;
      }

      v29 = v28 - v8;
      bodyView3 = [(_HKBodyMarginsLayout *)self bodyView];
      [bodyView3 setFrame:{v8, 0.0, v29, v6}];
    }
  }
}

- (void)_invalidateLayout
{
  [(_HKBodyMarginsLayout *)self invalidateIntrinsicContentSize];

  [(_HKBodyMarginsLayout *)self setNeedsLayout];
}

- (double)_maximumViewHeight
{
  [(_HKBodyMarginsLayout *)self bounds];
  v4 = v3;
  leftMarginView = [(_HKBodyMarginsLayout *)self leftMarginView];
  v6 = 0.0;
  if (leftMarginView)
  {
    v7 = leftMarginView;
    leftMarginView2 = [(_HKBodyMarginsLayout *)self leftMarginView];
    isHidden = [leftMarginView2 isHidden];

    if ((isHidden & 1) == 0)
    {
      leftMarginView3 = [(_HKBodyMarginsLayout *)self leftMarginView];
      [leftMarginView3 systemLayoutSizeFittingSize:{1.79769313e308, v4}];
      v12 = v11;

      v6 = fmax(v12, 0.0);
    }
  }

  rightMarginView = [(_HKBodyMarginsLayout *)self rightMarginView];
  if (rightMarginView)
  {
    v14 = rightMarginView;
    rightMarginView2 = [(_HKBodyMarginsLayout *)self rightMarginView];
    isHidden2 = [rightMarginView2 isHidden];

    if ((isHidden2 & 1) == 0)
    {
      rightMarginView3 = [(_HKBodyMarginsLayout *)self rightMarginView];
      [rightMarginView3 systemLayoutSizeFittingSize:{1.79769313e308, v4}];
      v19 = v18;

      if (v6 < v19)
      {
        v6 = v19;
      }
    }
  }

  bodyView = [(_HKBodyMarginsLayout *)self bodyView];
  if (bodyView)
  {
    v21 = bodyView;
    bodyView2 = [(_HKBodyMarginsLayout *)self bodyView];
    isHidden3 = [bodyView2 isHidden];

    if ((isHidden3 & 1) == 0)
    {
      bodyView3 = [(_HKBodyMarginsLayout *)self bodyView];
      [bodyView3 systemLayoutSizeFittingSize:{1.79769313e308, v4}];
      v26 = v25;

      if (v6 < v26)
      {
        v6 = v26;
      }
    }
  }

  result = 1.0;
  if (v6 >= 1.0)
  {
    return v6;
  }

  return result;
}

- (double)_totalViewWidth
{
  [(_HKBodyMarginsLayout *)self bounds];
  v4 = v3;
  leftMarginView = [(_HKBodyMarginsLayout *)self leftMarginView];
  v6 = 0.0;
  if (leftMarginView && (v7 = leftMarginView, -[_HKBodyMarginsLayout leftMarginView](self, "leftMarginView"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isHidden], v8, v7, (v9 & 1) == 0))
  {
    leftMarginView2 = [(_HKBodyMarginsLayout *)self leftMarginView];
    [leftMarginView2 systemLayoutSizeFittingSize:{1.79769313e308, v4}];
    v13 = v12;

    v6 = v13 + 0.0;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  rightMarginView = [(_HKBodyMarginsLayout *)self rightMarginView];
  if (rightMarginView)
  {
    v15 = rightMarginView;
    rightMarginView2 = [(_HKBodyMarginsLayout *)self rightMarginView];
    isHidden = [rightMarginView2 isHidden];

    if ((isHidden & 1) == 0)
    {
      rightMarginView3 = [(_HKBodyMarginsLayout *)self rightMarginView];
      [rightMarginView3 systemLayoutSizeFittingSize:{1.79769313e308, v4}];
      v20 = v19;

      v6 = v6 + v20;
      ++v10;
    }
  }

  bodyView = [(_HKBodyMarginsLayout *)self bodyView];
  if (bodyView)
  {
    v22 = bodyView;
    bodyView2 = [(_HKBodyMarginsLayout *)self bodyView];
    isHidden2 = [bodyView2 isHidden];

    if ((isHidden2 & 1) == 0)
    {
      bodyView3 = [(_HKBodyMarginsLayout *)self bodyView];
      [bodyView3 systemLayoutSizeFittingSize:{1.79769313e308, v4}];
      v27 = v26;

      v6 = v6 + v27;
      ++v10;
    }
  }

  result = v6 + (v10 - 1) * 16.0;
  if (result < 1.0)
  {
    return 1.0;
  }

  return result;
}

@end