@interface _HKDateContentLayout
- (CGSize)intrinsicContentSize;
- (_HKDateContentLayout)init;
- (double)_maximumViewWidth;
- (double)_totalViewHeight;
- (int64_t)_viewCount;
- (void)_invalidateLayout;
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
- (void)setDateView:(id)a3;
@end

@implementation _HKDateContentLayout

- (_HKDateContentLayout)init
{
  v7.receiver = self;
  v7.super_class = _HKDateContentLayout;
  v2 = [(_HKDateContentLayout *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v3 = v2;
  if (v2)
  {
    contentView = v2->_contentView;
    v2->_contentView = 0;

    dateView = v3->_dateView;
    v3->_dateView = 0;
  }

  return v3;
}

- (void)setContentView:(id)a3
{
  v6 = a3;
  if (([(UIView *)self->_contentView isEqual:?]& 1) == 0)
  {
    v5 = [(_HKDateContentLayout *)self contentView];
    [v5 removeFromSuperview];

    objc_storeStrong(&self->_contentView, a3);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:1];
    [(_HKDateContentLayout *)self addSubview:v6];
    [(_HKDateContentLayout *)self _invalidateLayout];
  }
}

- (void)setDateView:(id)a3
{
  v6 = a3;
  if (([(UIView *)self->_dateView isEqual:?]& 1) == 0)
  {
    v5 = [(_HKDateContentLayout *)self dateView];
    [v5 removeFromSuperview];

    objc_storeStrong(&self->_dateView, a3);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:1];
    [(_HKDateContentLayout *)self addSubview:v6];
    [(_HKDateContentLayout *)self _invalidateLayout];
  }
}

- (CGSize)intrinsicContentSize
{
  [(_HKDateContentLayout *)self _maximumViewWidth];
  v4 = v3;
  [(_HKDateContentLayout *)self _totalViewHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = _HKDateContentLayout;
  [(_HKDateContentLayout *)&v25 layoutSubviews];
  [(_HKDateContentLayout *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(_HKDateContentLayout *)self dateView];
  v8 = v6;
  if (v7)
  {
    v9 = v7;
    v10 = [(_HKDateContentLayout *)self dateView];
    v11 = [v10 isHidden];

    v8 = v6;
    if ((v11 & 1) == 0)
    {
      v12 = [(_HKDateContentLayout *)self dateView];
      [v12 systemLayoutSizeFittingSize:{v4, v6}];
      v14 = v13;

      v8 = v6 - v14;
      v15 = [(_HKDateContentLayout *)self dateView];
      [v15 setFrame:{0.0, v6 - v14, v4, v14}];
    }
  }

  v16 = [(_HKDateContentLayout *)self contentView];
  if (v16)
  {
    v17 = v16;
    v18 = [(_HKDateContentLayout *)self contentView];
    v19 = [v18 isHidden];

    if ((v19 & 1) == 0)
    {
      v20 = [(_HKDateContentLayout *)self contentView];
      [v20 systemLayoutSizeFittingSize:{v4, v6}];
      v22 = v21;

      if (v8 - v22 >= 0.0)
      {
        v23 = v8 - v22;
      }

      else
      {
        v23 = 0.0;
      }

      v24 = [(_HKDateContentLayout *)self contentView];
      [v24 setFrame:{0.0, v23, v4, v8 - v23}];
    }
  }
}

- (void)_invalidateLayout
{
  [(_HKDateContentLayout *)self invalidateIntrinsicContentSize];

  [(_HKDateContentLayout *)self setNeedsLayout];
}

- (double)_maximumViewWidth
{
  [(_HKDateContentLayout *)self bounds];
  v4 = v3;
  v5 = [(_HKDateContentLayout *)self dateView];

  if (v5)
  {
    v6 = [(_HKDateContentLayout *)self dateView];
    [v6 systemLayoutSizeFittingSize:{1.79769313e308, v4}];
    v8 = v7;

    v9 = fmax(v8, 0.0);
  }

  else
  {
    v9 = 0.0;
  }

  v10 = [(_HKDateContentLayout *)self contentView];

  if (v10)
  {
    v11 = [(_HKDateContentLayout *)self contentView];
    [v11 systemLayoutSizeFittingSize:{1.79769313e308, v4}];
    v13 = v12;

    if (v9 < v13)
    {
      v9 = v13;
    }
  }

  result = 1.0;
  if (v9 >= 1.0)
  {
    return v9;
  }

  return result;
}

- (double)_totalViewHeight
{
  [(_HKDateContentLayout *)self bounds];
  v4 = v3;
  v5 = [(_HKDateContentLayout *)self dateView];
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    v8 = [(_HKDateContentLayout *)self dateView];
    v9 = [v8 isHidden];

    if ((v9 & 1) == 0)
    {
      v10 = [(_HKDateContentLayout *)self dateView];
      [v10 systemLayoutSizeFittingSize:{v4, 1.79769313e308}];
      v12 = v11;

      v6 = v12 + 0.0;
    }
  }

  v13 = [(_HKDateContentLayout *)self contentView];
  if (v13)
  {
    v14 = v13;
    v15 = [(_HKDateContentLayout *)self contentView];
    v16 = [v15 isHidden];

    if ((v16 & 1) == 0)
    {
      v17 = [(_HKDateContentLayout *)self contentView];
      [v17 systemLayoutSizeFittingSize:{v4, 1.79769313e308}];
      v19 = v18;

      v6 = v6 + v19;
    }
  }

  result = 1.0;
  if (v6 >= 1.0)
  {
    return v6;
  }

  return result;
}

- (int64_t)_viewCount
{
  v3 = [(_HKDateContentLayout *)self dateView];
  if (v3)
  {
    v4 = [(_HKDateContentLayout *)self dateView];
    v5 = ~[v4 isHidden];

    v3 = v5 & 1;
  }

  v6 = [(_HKDateContentLayout *)self contentView];
  if (v6)
  {
    v7 = v6;
    v8 = [(_HKDateContentLayout *)self contentView];
    v9 = ~[v8 isHidden];

    v3 += v9 & 1;
  }

  return v3;
}

@end