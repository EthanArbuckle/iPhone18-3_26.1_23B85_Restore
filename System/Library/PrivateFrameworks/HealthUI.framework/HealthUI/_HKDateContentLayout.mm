@interface _HKDateContentLayout
- (CGSize)intrinsicContentSize;
- (_HKDateContentLayout)init;
- (double)_maximumViewWidth;
- (double)_totalViewHeight;
- (int64_t)_viewCount;
- (void)_invalidateLayout;
- (void)layoutSubviews;
- (void)setContentView:(id)view;
- (void)setDateView:(id)view;
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

- (void)setContentView:(id)view
{
  viewCopy = view;
  if (([(UIView *)self->_contentView isEqual:?]& 1) == 0)
  {
    contentView = [(_HKDateContentLayout *)self contentView];
    [contentView removeFromSuperview];

    objc_storeStrong(&self->_contentView, view);
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:1];
    [(_HKDateContentLayout *)self addSubview:viewCopy];
    [(_HKDateContentLayout *)self _invalidateLayout];
  }
}

- (void)setDateView:(id)view
{
  viewCopy = view;
  if (([(UIView *)self->_dateView isEqual:?]& 1) == 0)
  {
    dateView = [(_HKDateContentLayout *)self dateView];
    [dateView removeFromSuperview];

    objc_storeStrong(&self->_dateView, view);
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:1];
    [(_HKDateContentLayout *)self addSubview:viewCopy];
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
  dateView = [(_HKDateContentLayout *)self dateView];
  v8 = v6;
  if (dateView)
  {
    v9 = dateView;
    dateView2 = [(_HKDateContentLayout *)self dateView];
    isHidden = [dateView2 isHidden];

    v8 = v6;
    if ((isHidden & 1) == 0)
    {
      dateView3 = [(_HKDateContentLayout *)self dateView];
      [dateView3 systemLayoutSizeFittingSize:{v4, v6}];
      v14 = v13;

      v8 = v6 - v14;
      dateView4 = [(_HKDateContentLayout *)self dateView];
      [dateView4 setFrame:{0.0, v6 - v14, v4, v14}];
    }
  }

  contentView = [(_HKDateContentLayout *)self contentView];
  if (contentView)
  {
    v17 = contentView;
    contentView2 = [(_HKDateContentLayout *)self contentView];
    isHidden2 = [contentView2 isHidden];

    if ((isHidden2 & 1) == 0)
    {
      contentView3 = [(_HKDateContentLayout *)self contentView];
      [contentView3 systemLayoutSizeFittingSize:{v4, v6}];
      v22 = v21;

      if (v8 - v22 >= 0.0)
      {
        v23 = v8 - v22;
      }

      else
      {
        v23 = 0.0;
      }

      contentView4 = [(_HKDateContentLayout *)self contentView];
      [contentView4 setFrame:{0.0, v23, v4, v8 - v23}];
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
  dateView = [(_HKDateContentLayout *)self dateView];

  if (dateView)
  {
    dateView2 = [(_HKDateContentLayout *)self dateView];
    [dateView2 systemLayoutSizeFittingSize:{1.79769313e308, v4}];
    v8 = v7;

    v9 = fmax(v8, 0.0);
  }

  else
  {
    v9 = 0.0;
  }

  contentView = [(_HKDateContentLayout *)self contentView];

  if (contentView)
  {
    contentView2 = [(_HKDateContentLayout *)self contentView];
    [contentView2 systemLayoutSizeFittingSize:{1.79769313e308, v4}];
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
  dateView = [(_HKDateContentLayout *)self dateView];
  v6 = 0.0;
  if (dateView)
  {
    v7 = dateView;
    dateView2 = [(_HKDateContentLayout *)self dateView];
    isHidden = [dateView2 isHidden];

    if ((isHidden & 1) == 0)
    {
      dateView3 = [(_HKDateContentLayout *)self dateView];
      [dateView3 systemLayoutSizeFittingSize:{v4, 1.79769313e308}];
      v12 = v11;

      v6 = v12 + 0.0;
    }
  }

  contentView = [(_HKDateContentLayout *)self contentView];
  if (contentView)
  {
    v14 = contentView;
    contentView2 = [(_HKDateContentLayout *)self contentView];
    isHidden2 = [contentView2 isHidden];

    if ((isHidden2 & 1) == 0)
    {
      contentView3 = [(_HKDateContentLayout *)self contentView];
      [contentView3 systemLayoutSizeFittingSize:{v4, 1.79769313e308}];
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
  dateView = [(_HKDateContentLayout *)self dateView];
  if (dateView)
  {
    dateView2 = [(_HKDateContentLayout *)self dateView];
    v5 = ~[dateView2 isHidden];

    dateView = v5 & 1;
  }

  contentView = [(_HKDateContentLayout *)self contentView];
  if (contentView)
  {
    v7 = contentView;
    contentView2 = [(_HKDateContentLayout *)self contentView];
    v9 = ~[contentView2 isHidden];

    dateView += v9 & 1;
  }

  return dateView;
}

@end