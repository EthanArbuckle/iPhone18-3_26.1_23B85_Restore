@interface FUScrollWheel
- (CGRect)_frameForLabelAtIndex:(unint64_t)a3;
- (FUScrollWheel)initWithFrame:(CGRect)a3;
- (FUScrollWheelDataSource)dataSource;
- (FUScrollWheelDelegate)delegate;
- (double)_startingLocation;
- (double)_yPositionForLabelAtIndex:(unint64_t)a3;
- (id)_dequeueLabel;
- (id)_titleForItemAtIndex:(unint64_t)a3;
- (unint64_t)_numberOfRows;
- (void)_alertDidChangeToCurrentIndex:(unint64_t)a3;
- (void)_generateOpacityMask;
- (void)_layoutScrollView;
- (void)_recycleAllLabels;
- (void)_recycleLabel:(id)a3 forKey:(id)a4;
- (void)_reuseLabelsWithRange:(_NSRange)a3 contentOffset:(CGPoint)a4;
- (void)_setActiveScrollwheelIfNotActive;
- (void)_textSizeDidChange;
- (void)dealloc;
- (void)layoutSubviews;
- (void)reloadData;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)setCurrentIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)setFrame:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
- (void)setItemTitleAligmnent:(int64_t)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation FUScrollWheel

- (FUScrollWheel)initWithFrame:(CGRect)a3
{
  width = a3.size.width;
  v30.receiver = self;
  v30.super_class = FUScrollWheel;
  v4 = [(FUScrollWheel *)&v30 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
    font = v4->_font;
    v4->_font = v5;

    v7 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
    [v7 lineHeight];
    UICeilToViewScale();
    v4->_scrollWheelLabelHeight = v8;

    v4->_scrollWheelLabelPageSize = v4->_scrollWheelLabelHeight + -1.0;
    v4->_shouldRegenerateOpacityMask = 1;
    [(FUScrollWheel *)v4 setItemTitleAligmnent:1];
    v4->_loaded = 0;
    v9 = [FUScrollWheelScrollView alloc];
    [(FUScrollWheel *)v4 bounds];
    v10 = [(FUScrollWheelScrollView *)v9 initWithFrame:?];
    scrollView = v4->_scrollView;
    v4->_scrollView = v10;

    [(UIScrollView *)v4->_scrollView setScrollWheel:v4];
    [(UIScrollView *)v4->_scrollView setShowsVerticalScrollIndicator:0];
    [(UIScrollView *)v4->_scrollView setDelegate:v4];
    [(FUScrollWheel *)v4 addSubview:v4->_scrollView];
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
    reusableLabelsQueue = v4->_reusableLabelsQueue;
    v4->_reusableLabelsQueue = v12;

    v14 = [MEMORY[0x1E695DF90] dictionary];
    usedLabels = v4->_usedLabels;
    v4->_usedLabels = v14;

    v16 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, width, 0.5}];
    topDividerView = v4->_topDividerView;
    v4->_topDividerView = v16;

    v18 = v4->_topDividerView;
    v19 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v18 setBackgroundColor:v19];

    v20 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, width, 0.5}];
    bottomDividerView = v4->_bottomDividerView;
    v4->_bottomDividerView = v20;

    v22 = v4->_bottomDividerView;
    v23 = [MEMORY[0x1E69DC888] whiteColor];
    [(UIView *)v22 setBackgroundColor:v23];

    v24 = objc_alloc(MEMORY[0x1E69DCAE0]);
    [(FUScrollWheel *)v4 bounds];
    v25 = [v24 initWithFrame:?];
    maskLayer = v4->_maskLayer;
    v4->_maskLayer = v25;

    [(UIImageView *)v4->_maskLayer setUserInteractionEnabled:0];
    [(FUScrollWheel *)v4 addSubview:v4->_maskLayer];
    v4->_numberOfRows = 0;
    [(FUScrollWheel *)v4 addSubview:v4->_topDividerView];
    [(FUScrollWheel *)v4 addSubview:v4->_bottomDividerView];
    [(UIView *)v4->_topDividerView setHidden:1];
    [(UIView *)v4->_bottomDividerView setHidden:1];
    v27 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__setActiveScrollwheelIfNotActive];
    [(FUScrollWheel *)v4 addGestureRecognizer:v27];
    v28 = [MEMORY[0x1E696AD88] defaultCenter];
    [v28 addObserver:v4 selector:sel__textSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];

    [(FUScrollWheel *)v4 _setActiveScrollwheelIfNotActive];
  }

  return v4;
}

- (void)dealloc
{
  [(UIScrollView *)self->_scrollView setDelegate:0];
  v3.receiver = self;
  v3.super_class = FUScrollWheel;
  [(FUScrollWheel *)&v3 dealloc];
}

- (void)_setActiveScrollwheelIfNotActive
{
  v3 = [(FUScrollWheel *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(FUScrollWheel *)self delegate];
    v6 = [v5 scrollWheelShouldBecomeFirstResponder:self];

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  if (([(UIScrollView *)self->_scrollView isFirstResponder]& 1) == 0 && (v7 & 1) == 0)
  {
    [(FUScrollWheel *)self setIsActive:1];
    [(UIScrollView *)self->_scrollView becomeFirstResponder];
    v8 = [(FUScrollWheel *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(FUScrollWheel *)self delegate];
      [v10 tappedScrollWheel:self];
    }
  }
}

- (void)_textSizeDidChange
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__FUScrollWheel__textSizeDidChange__block_invoke;
  block[3] = &unk_1E878BFE0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)setHidden:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = FUScrollWheel;
  [(FUScrollWheel *)&v5 setHidden:?];
  if (!a3)
  {
    [(UIScrollView *)self->_scrollView becomeFirstResponder];
  }
}

- (void)setItemTitleAligmnent:(int64_t)a3
{
  self->_itemTitleAligmnent = a3;
  usedLabels = self->_usedLabels;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__FUScrollWheel_setItemTitleAligmnent___block_invoke;
  v8[3] = &__block_descriptor_40_e24_v32__0_8__UILabel_16_B24l;
  v8[4] = a3;
  [(NSMutableDictionary *)usedLabels enumerateKeysAndObjectsUsingBlock:v8];
  reusableLabelsQueue = self->_reusableLabelsQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__FUScrollWheel_setItemTitleAligmnent___block_invoke_2;
  v7[3] = &__block_descriptor_40_e24_v32__0__UILabel_8Q16_B24l;
  v7[4] = a3;
  [(NSMutableArray *)reusableLabelsQueue enumerateObjectsUsingBlock:v7];
}

- (void)layoutSubviews
{
  currentIndex = self->_currentIndex;
  numberOfRows = self->_numberOfRows;
  [(FUScrollWheel *)self _startingLocation];
  v6 = v5;
  v7 = v6 + v6 + numberOfRows * self->_scrollWheelLabelPageSize + 1.0;
  [(FUScrollWheel *)self frame];
  v9 = v8;
  scrollView = self->_scrollView;
  [(FUScrollWheel *)self bounds];
  [(UIScrollView *)scrollView setFrame:?];
  [(UIScrollView *)self->_scrollView setContentSize:v9, v7];
  topDividerView = self->_topDividerView;
  [(FUScrollWheel *)self frame];
  [(UIView *)topDividerView setFrame:0.0, v6];
  bottomDividerView = self->_bottomDividerView;
  v13 = v6 + self->_scrollWheelLabelPageSize;
  [(FUScrollWheel *)self frame];
  [(UIView *)bottomDividerView setFrame:0.0, v13];
  self->_currentIndex = currentIndex;
  v14 = self->_numberOfRows - 1;
  if (currentIndex < v14)
  {
    v14 = currentIndex;
  }

  self->_currentIndex = v14;
  [(UIScrollView *)self->_scrollView setContentOffset:0.0, self->_scrollWheelLabelPageSize * v14];
  [(FUScrollWheel *)self _recycleAllLabels];
  [(FUScrollWheel *)self _layoutScrollView];
  if (self->_shouldRegenerateOpacityMask)
  {
    self->_shouldRegenerateOpacityMask = 0;

    [(FUScrollWheel *)self _generateOpacityMask];
  }
}

- (void)willMoveToSuperview:(id)a3
{
  v4.receiver = self;
  v4.super_class = FUScrollWheel;
  [(FUScrollWheel *)&v4 willMoveToSuperview:a3];
  if (!self->_loaded)
  {
    [(FUScrollWheel *)self reloadData];
  }
}

- (void)reloadData
{
  self->_loaded = 1;
  self->_numberOfRows = [(FUScrollWheel *)self _numberOfRows];
  [(FUScrollWheel *)self _recycleAllLabels];
  [(FUScrollWheel *)self layoutSubviews];

  [(FUScrollWheel *)self _layoutScrollView];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(FUScrollWheel *)self frame];
  v14.origin.x = v8;
  v14.origin.y = v9;
  v14.size.width = v10;
  v14.size.height = v11;
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  self->_shouldRegenerateOpacityMask = !CGRectEqualToRect(v13, v14);
  v12.receiver = self;
  v12.super_class = FUScrollWheel;
  [(FUScrollWheel *)&v12 setFrame:x, y, width, height];
  [(FUScrollWheel *)self setNeedsLayout];
}

- (void)setCurrentIndex:(unint64_t)a3 animated:(BOOL)a4
{
  self->_currentIndex = a3;
  v4 = self->_numberOfRows - 1;
  if (v4 >= a3)
  {
    v4 = a3;
  }

  self->_currentIndex = v4;
  [(UIScrollView *)self->_scrollView setContentOffset:a4 animated:0.0, self->_scrollWheelLabelPageSize * v4];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    [(FUScrollWheel *)self scrollViewDidEndDecelerating:a3];
  }
}

- (void)_generateOpacityMask
{
  v28[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:1.0];
  v4 = [v3 CGColor];

  v5 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.0];
  v6 = [v5 CGColor];

  v28[0] = v4;
  v28[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  [(FUScrollWheel *)self bounds];
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  if (!CGRectIsEmpty(v30))
  {
    [(FUScrollWheel *)self bounds];
    UIRoundToViewScale();
    v12 = v11;
    v13 = [MEMORY[0x1E6979380] layer];
    [v13 setFrame:{x, y, width, v12}];
    [v13 setColors:v7];
    [v13 setLocations:&unk_1F5F9B280];
    [(FUScrollWheel *)self bounds];
    v15 = v14 - v12;
    v16 = [MEMORY[0x1E6979380] layer];
    [v16 setFrame:{x, v15, width, v12}];
    v17 = [v7 reverseObjectEnumerator];
    v18 = [v17 allObjects];
    [v16 setColors:v18];

    [v16 setLocations:&unk_1F5F9B298];
    [v13 addSublayer:v16];
    [(FUScrollWheel *)self bounds];
    v20 = v19;
    v22 = v21;
    v23 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v23 scale];
    v25 = v24;
    v29.width = v20;
    v29.height = v22;
    UIGraphicsBeginImageContextWithOptions(v29, 0, v25);

    [v13 renderInContext:UIGraphicsGetCurrentContext()];
    v26 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    maskLayer = self->_maskLayer;
    [(FUScrollWheel *)self bounds];
    [(UIImageView *)maskLayer setFrame:?];
    [(UIImageView *)self->_maskLayer setImage:v26];
  }
}

- (void)_layoutScrollView
{
  [(UIScrollView *)self->_scrollView contentOffset];
  v4 = v3;
  v6 = v5;
  [(FUScrollWheel *)self _startingLocation];
  v8 = v6 - v7;
  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  v9 = vcvtmd_u64_f64(v8 / self->_scrollWheelLabelPageSize);
  [(FUScrollWheel *)self bounds];
  v11 = (ceil(v10 / self->_scrollWheelLabelPageSize) + 1.0);
  [(FUScrollWheel *)self _reuseLabelsWithRange:v9 contentOffset:v11, v4, v6];
  self->_previousRange.location = v9;
  self->_previousRange.length = v11;
}

- (double)_startingLocation
{
  [(FUScrollWheel *)self frame];

  UIRoundToViewScale();
  return result;
}

- (void)_reuseLabelsWithRange:(_NSRange)a3 contentOffset:(CGPoint)a4
{
  y = a4.y;
  length = a3.length;
  location = a3.location;
  v53 = *MEMORY[0x1E69E9840];
  [(UIScrollView *)self->_scrollView contentOffset];
  v9 = v8;
  [(UIScrollView *)self->_scrollView frame];
  v11 = v10;
  [(UIScrollView *)self->_scrollView frame];
  v13 = v12;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v14 = [(NSMutableDictionary *)self->_usedLabels allKeys];
  v15 = [v14 countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v49;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v48 + 1) + 8 * i);
        v20 = [(NSMutableDictionary *)self->_usedLabels objectForKeyedSubscript:v19];
        [v20 frame];
        v56.origin.x = 0.0;
        v56.origin.y = v9;
        v56.size.width = v11;
        v56.size.height = v13;
        if (!CGRectIntersectsRect(v54, v56))
        {
          [(FUScrollWheel *)self _recycleLabel:v20 forKey:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v16);
  }

  if (location + length >= self->_numberOfRows)
  {
    numberOfRows = self->_numberOfRows;
  }

  else
  {
    numberOfRows = location + length;
  }

  if (location < numberOfRows)
  {
    while (1)
    {
      usedLabels = self->_usedLabels;
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location];
      v24 = [(NSMutableDictionary *)usedLabels objectForKeyedSubscript:v23];

      if (!v24)
      {
        v24 = [(FUScrollWheel *)self _dequeueLabel];
        v25 = [(FUScrollWheel *)self _textForLabelAtIndex:location];
        [v24 setText:v25];

        v26 = self->_usedLabels;
        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:location];
        [(NSMutableDictionary *)v26 setObject:v24 forKeyedSubscript:v27];
      }

      [v24 setHidden:0];
      [(FUScrollWheel *)self _frameForLabelAtIndex:location];
      [v24 setFrame:?];
      v28 = [(FUScrollWheel *)self font];
      [v24 setFont:v28];

      [(FUScrollWheel *)self bounds];
      v30 = v29 + -7.5;
      [v24 frame];
      v32 = v31;
      [v24 center];
      v34 = v33 - y - v30 * 0.5;
      if (v34 < 0.0)
      {
        v34 = -v34;
      }

      if (v34 <= self->_scrollWheelLabelPageSize * 0.5)
      {
        self->_currentIndex = location;
      }

      v35 = (v32 - y + 2.5) / v30;
      if (v35 > 0.45)
      {
        v36 = 15.0;
        if (v35 < 0.55)
        {
          goto LABEL_25;
        }
      }

      if (v35 >= 0.3 && v35 <= 0.7)
      {
        break;
      }

LABEL_26:
      [v24 frame];
      if (v35 > 0.7)
      {
        v43 = 3.0;
      }

      else
      {
        v43 = 0.0;
      }

      if (v35 <= 0.5)
      {
        v43 = -3.0;
      }

      if (v35 < 0.3 || v35 > 0.5)
      {
        v45 = v35 > 0.7 || v35 <= 0.5;
        v46 = v35 + -0.5;
        if (v45)
        {
          v46 = 0.0;
        }
      }

      else
      {
        v46 = v35 + -0.3;
      }

      v47 = v40 + v43 + v46 / 0.2 * 3.0;
      v55 = CGRectIntegral(*&v39);
      [v24 setFrame:{v55.origin.x, v55.origin.y, v55.size.width, v55.size.height}];

      if (numberOfRows == ++location)
      {
        return;
      }
    }

    v37 = fabs(v35 + -0.5);
    v36 = round(((v37 + -0.05) / -0.15 + 1.0) * 3.0 + ((v37 + -0.05) / -0.15 + 1.0) * 3.0) * 0.5 + 12.0;
LABEL_25:
    v38 = [MEMORY[0x1E69DB878] systemFontOfSize:v36];
    [v24 setFont:v38];

    goto LABEL_26;
  }
}

- (void)_recycleLabel:(id)a3 forKey:(id)a4
{
  v7 = a4;
  v6 = a3;
  [v6 setHidden:1];
  [(NSMutableArray *)self->_reusableLabelsQueue addObject:v6];

  [(NSMutableDictionary *)self->_usedLabels removeObjectForKey:v7];
}

- (void)_recycleAllLabels
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSMutableDictionary *)self->_usedLabels allKeys];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_usedLabels objectForKey:v8];
        [v9 removeFromSuperview];
        [(NSMutableDictionary *)self->_usedLabels removeObjectForKey:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (id)_dequeueLabel
{
  if (![(NSMutableArray *)self->_reusableLabelsQueue count])
  {
    v3 = objc_alloc(MEMORY[0x1E69DCC10]);
    [(FUScrollWheel *)self frame];
    v5 = [v3 initWithFrame:{2.0, 0.0, v4 + -4.0, self->_scrollWheelLabelHeight}];
    v6 = [MEMORY[0x1E69DC888] whiteColor];
    [v5 setTextColor:v6];

    [v5 setTextAlignment:{-[FUScrollWheel itemTitleAligmnent](self, "itemTitleAligmnent")}];
    [v5 setOpaque:1];
    [v5 setAdjustsFontSizeToFitWidth:1];
    [(NSMutableArray *)self->_reusableLabelsQueue addObject:v5];
    [(UIScrollView *)self->_scrollView addSubview:v5];
  }

  v7 = [(NSMutableArray *)self->_reusableLabelsQueue lastObject];
  [(NSMutableArray *)self->_reusableLabelsQueue removeLastObject];

  return v7;
}

- (CGRect)_frameForLabelAtIndex:(unint64_t)a3
{
  [(FUScrollWheel *)self _yPositionForLabelAtIndex:a3];
  v5 = v4;
  [(FUScrollWheel *)self frame];
  v7 = v6 + -4.0;
  scrollWheelLabelHeight = self->_scrollWheelLabelHeight;
  v9 = 2.0;
  v10 = v5;
  result.size.height = scrollWheelLabelHeight;
  result.size.width = v7;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (double)_yPositionForLabelAtIndex:(unint64_t)a3
{
  v3 = a3;
  scrollWheelLabelPageSize = self->_scrollWheelLabelPageSize;
  [(FUScrollWheel *)self _startingLocation];
  return v5 + v3 * scrollWheelLabelPageSize;
}

- (id)_titleForItemAtIndex:(unint64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (WeakRetained)
  {
    v6 = objc_loadWeakRetained(&self->_dataSource);
    v7 = [v6 scrollWheel:self titleForItemAtIndex:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)_numberOfRows
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  if (!WeakRetained)
  {
    return 0;
  }

  v4 = objc_loadWeakRetained(&self->_dataSource);
  v5 = [v4 numberOfRowsInScrollWheel:self];

  return v5;
}

- (void)_alertDidChangeToCurrentIndex:(unint64_t)a3
{
  v5 = [(FUScrollWheel *)self delegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(FUScrollWheel *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(FUScrollWheel *)self delegate];
      [v9 scrollWheel:self didChangeCurrentIndexTo:a3];
    }
  }
}

- (FUScrollWheelDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (FUScrollWheelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end