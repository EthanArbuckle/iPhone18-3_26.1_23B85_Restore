@interface _HKBodyMarginsLayout
- (CGSize)intrinsicContentSize;
- (_HKBodyMarginsLayout)init;
- (double)_maximumViewHeight;
- (double)_totalViewWidth;
- (void)_invalidateLayout;
- (void)layoutSubviews;
- (void)setBodyView:(id)a3;
- (void)setLeftMarginView:(id)a3;
- (void)setRightMarginView:(id)a3;
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

- (void)setLeftMarginView:(id)a3
{
  v6 = a3;
  if (([(UIView *)self->_leftMarginView isEqual:?]& 1) == 0)
  {
    v5 = [(_HKBodyMarginsLayout *)self leftMarginView];
    [v5 removeFromSuperview];

    objc_storeStrong(&self->_leftMarginView, a3);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:1];
    [(_HKBodyMarginsLayout *)self addSubview:v6];
    [(_HKBodyMarginsLayout *)self _invalidateLayout];
  }
}

- (void)setBodyView:(id)a3
{
  v6 = a3;
  if (([(UIView *)self->_bodyView isEqual:?]& 1) == 0)
  {
    v5 = [(_HKBodyMarginsLayout *)self bodyView];
    [v5 removeFromSuperview];

    objc_storeStrong(&self->_bodyView, a3);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:1];
    [(_HKBodyMarginsLayout *)self addSubview:v6];
    [(_HKBodyMarginsLayout *)self _invalidateLayout];
  }
}

- (void)setRightMarginView:(id)a3
{
  v6 = a3;
  if (([(UIView *)self->_rightMarginView isEqual:?]& 1) == 0)
  {
    v5 = [(_HKBodyMarginsLayout *)self rightMarginView];
    [v5 removeFromSuperview];

    objc_storeStrong(&self->_rightMarginView, a3);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:1];
    [(_HKBodyMarginsLayout *)self addSubview:v6];
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
  v7 = [(_HKBodyMarginsLayout *)self leftMarginView];
  v8 = 0.0;
  if (v7)
  {
    v9 = v7;
    v10 = [(_HKBodyMarginsLayout *)self leftMarginView];
    v11 = [v10 isHidden];

    if ((v11 & 1) == 0)
    {
      v12 = [(_HKBodyMarginsLayout *)self leftMarginView];
      [v12 systemLayoutSizeFittingSize:{v4, v6}];
      v8 = v13;

      v14 = [(_HKBodyMarginsLayout *)self leftMarginView];
      [v14 setFrame:{0.0, 0.0, v8, v6}];
    }
  }

  v15 = [(_HKBodyMarginsLayout *)self rightMarginView];
  if (v15 && (v16 = v15, -[_HKBodyMarginsLayout rightMarginView](self, "rightMarginView"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 isHidden], v17, v16, (v18 & 1) == 0))
  {
    v20 = [(_HKBodyMarginsLayout *)self rightMarginView];
    [v20 systemLayoutSizeFittingSize:{v4, v6}];
    v22 = v21;

    v19 = v4 - v22;
    v23 = [(_HKBodyMarginsLayout *)self rightMarginView];
    [v23 setFrame:{v4 - v22, 0.0, v22, v6}];
  }

  else
  {
    v19 = v4;
  }

  v24 = [(_HKBodyMarginsLayout *)self bodyView];
  if (v24)
  {
    v25 = v24;
    v26 = [(_HKBodyMarginsLayout *)self bodyView];
    v27 = [v26 isHidden];

    if ((v27 & 1) == 0)
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
      v30 = [(_HKBodyMarginsLayout *)self bodyView];
      [v30 setFrame:{v8, 0.0, v29, v6}];
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
  v5 = [(_HKBodyMarginsLayout *)self leftMarginView];
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    v8 = [(_HKBodyMarginsLayout *)self leftMarginView];
    v9 = [v8 isHidden];

    if ((v9 & 1) == 0)
    {
      v10 = [(_HKBodyMarginsLayout *)self leftMarginView];
      [v10 systemLayoutSizeFittingSize:{1.79769313e308, v4}];
      v12 = v11;

      v6 = fmax(v12, 0.0);
    }
  }

  v13 = [(_HKBodyMarginsLayout *)self rightMarginView];
  if (v13)
  {
    v14 = v13;
    v15 = [(_HKBodyMarginsLayout *)self rightMarginView];
    v16 = [v15 isHidden];

    if ((v16 & 1) == 0)
    {
      v17 = [(_HKBodyMarginsLayout *)self rightMarginView];
      [v17 systemLayoutSizeFittingSize:{1.79769313e308, v4}];
      v19 = v18;

      if (v6 < v19)
      {
        v6 = v19;
      }
    }
  }

  v20 = [(_HKBodyMarginsLayout *)self bodyView];
  if (v20)
  {
    v21 = v20;
    v22 = [(_HKBodyMarginsLayout *)self bodyView];
    v23 = [v22 isHidden];

    if ((v23 & 1) == 0)
    {
      v24 = [(_HKBodyMarginsLayout *)self bodyView];
      [v24 systemLayoutSizeFittingSize:{1.79769313e308, v4}];
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
  v5 = [(_HKBodyMarginsLayout *)self leftMarginView];
  v6 = 0.0;
  if (v5 && (v7 = v5, -[_HKBodyMarginsLayout leftMarginView](self, "leftMarginView"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isHidden], v8, v7, (v9 & 1) == 0))
  {
    v11 = [(_HKBodyMarginsLayout *)self leftMarginView];
    [v11 systemLayoutSizeFittingSize:{1.79769313e308, v4}];
    v13 = v12;

    v6 = v13 + 0.0;
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  v14 = [(_HKBodyMarginsLayout *)self rightMarginView];
  if (v14)
  {
    v15 = v14;
    v16 = [(_HKBodyMarginsLayout *)self rightMarginView];
    v17 = [v16 isHidden];

    if ((v17 & 1) == 0)
    {
      v18 = [(_HKBodyMarginsLayout *)self rightMarginView];
      [v18 systemLayoutSizeFittingSize:{1.79769313e308, v4}];
      v20 = v19;

      v6 = v6 + v20;
      ++v10;
    }
  }

  v21 = [(_HKBodyMarginsLayout *)self bodyView];
  if (v21)
  {
    v22 = v21;
    v23 = [(_HKBodyMarginsLayout *)self bodyView];
    v24 = [v23 isHidden];

    if ((v24 & 1) == 0)
    {
      v25 = [(_HKBodyMarginsLayout *)self bodyView];
      [v25 systemLayoutSizeFittingSize:{1.79769313e308, v4}];
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