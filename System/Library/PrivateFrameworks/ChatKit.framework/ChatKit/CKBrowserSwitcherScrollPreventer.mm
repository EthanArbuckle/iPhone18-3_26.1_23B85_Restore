@interface CKBrowserSwitcherScrollPreventer
- (CGPoint)contentOffset;
- (CGSize)contentSize;
- (CKBrowserSwitcherScrollPreventer)initWithFrame:(CGRect)frame;
- (CKBrowserSwitcherScrollPreventerDelegate)delegate;
- (void)layoutSubviews;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setContentOffset:(CGPoint)offset;
- (void)setContentSize:(CGSize)size;
- (void)setScrollEnabled:(BOOL)enabled;
- (void)setSwitching:(BOOL)switching;
@end

@implementation CKBrowserSwitcherScrollPreventer

- (CKBrowserSwitcherScrollPreventer)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v20.receiver = self;
  v20.super_class = CKBrowserSwitcherScrollPreventer;
  v7 = [(CKBrowserSwitcherScrollPreventer *)&v20 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(CKBrowserSwitcherScrollPreventer *)v7 setBackgroundColor:0];
    v9 = [objc_alloc(MEMORY[0x1E69DCEF8]) initWithFrame:{x, y, width, height}];
    [v9 setDelegate:v8];
    [v9 setShowsVerticalScrollIndicator:0];
    [v9 setShowsHorizontalScrollIndicator:0];
    [v9 setBouncesVertically:0];
    [v9 setPagingEnabled:1];
    [(CKBrowserSwitcherScrollPreventer *)v8 setHorizontalScrollView:v9];
    [(CKBrowserSwitcherScrollPreventer *)v8 addSubview:v9];
    v10 = +[CKUIBehavior sharedBehaviors];
    [v10 browserSwitcherGutterWidth];
    v12 = v11;

    [v9 _setInterpageSpacing:{v12, 0.0}];
    v13 = v12 * 0.5;
    if (CKMainScreenScale_once_55 != -1)
    {
      [CKBrowserSwitcherScrollPreventer initWithFrame:];
    }

    v14 = *&CKMainScreenScale_sMainScreenScale_55;
    if (*&CKMainScreenScale_sMainScreenScale_55 == 0.0)
    {
      v14 = 1.0;
    }

    [v9 _setPagingOrigin:{round(v13 * v14) / v14, 0.0}];
    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 browserSwitcherEdgeGestureWidth];
    v17 = v16;

    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v22 = CGRectInset(v21, v17, 0.0);
    v18 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v22.origin.x, v22.origin.y, v22.size.width, v22.size.height}];
    [(CKBrowserSwitcherScrollPreventer *)v8 setHorizontalScrollPreventerView:v18];
    [(CKBrowserSwitcherScrollPreventer *)v8 addSubview:v18];
  }

  return v8;
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = CKBrowserSwitcherScrollPreventer;
  [(CKBrowserSwitcherScrollPreventer *)&v24 layoutSubviews];
  isEngaged = [(CKBrowserSwitcherScrollPreventer *)self isEngaged];
  [(CKBrowserSwitcherScrollPreventer *)self setEngaged:0];
  [(CKBrowserSwitcherScrollPreventer *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  horizontalScrollView = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];
  [horizontalScrollView setFrame:{v5, v7, v9, v11}];

  v13 = +[CKUIBehavior sharedBehaviors];
  [v13 browserSwitcherEdgeGestureWidth];
  v15 = v14;

  v25.origin.x = v5;
  v25.origin.y = v7;
  v25.size.width = v9;
  v25.size.height = v11;
  v26 = CGRectInset(v25, v15, 0.0);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  horizontalScrollPreventerView = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollPreventerView];
  [horizontalScrollPreventerView setFrame:{x, y, width, height}];

  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  v21 = CGRectGetHeight(v27);
  horizontalScrollView2 = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];
  [horizontalScrollView2 setContentSize:{1.79769313e308, v21}];

  delegate = [(CKBrowserSwitcherScrollPreventer *)self delegate];
  [delegate scrollPreventerDidLayoutSubviews:self];

  [(CKBrowserSwitcherScrollPreventer *)self setEngaged:isEngaged];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  draggingCopy = dragging;
  horizontalScrollView = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];

  if (horizontalScrollView == draggingCopy)
  {
    delegate = [(CKBrowserSwitcherScrollPreventer *)self delegate];
    [delegate scrollPreventerWillBeginDragging:self];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  horizontalScrollView = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];

  v5 = scrollCopy;
  if (horizontalScrollView == scrollCopy)
  {
    [scrollCopy contentOffset];
    v7 = v6;
    v9 = v8;
    isEngaged = [(CKBrowserSwitcherScrollPreventer *)self isEngaged];
    v5 = scrollCopy;
    if (isEngaged)
    {
      delegate = [(CKBrowserSwitcherScrollPreventer *)self delegate];
      [delegate scrollPreventer:self scrolledToOffset:{v7, v9}];

      v5 = scrollCopy;
    }
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  horizontalScrollView = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];

  v5 = horizontalScrollView;
  if (horizontalScrollView == deceleratingCopy)
  {
    isEngaged = [(CKBrowserSwitcherScrollPreventer *)self isEngaged];

    if (!isEngaged)
    {
      return;
    }

    delegate = [(CKBrowserSwitcherScrollPreventer *)self delegate];
    [delegate scrollPreventerDidEndDecelerating:self];
    v5 = delegate;
  }
}

- (CGPoint)contentOffset
{
  horizontalScrollView = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];
  [horizontalScrollView contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  horizontalScrollView = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];
  [horizontalScrollView setContentOffset:{x, y}];
}

- (CGSize)contentSize
{
  horizontalScrollView = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];
  [horizontalScrollView contentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  horizontalScrollView = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];
  [horizontalScrollView setContentSize:{width, height}];
}

- (void)setScrollEnabled:(BOOL)enabled
{
  if (self->_scrollEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_scrollEnabled = enabled;
    horizontalScrollView = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];
    [horizontalScrollView setScrollEnabled:enabledCopy];
  }
}

- (void)setSwitching:(BOOL)switching
{
  if (self->_switching != switching)
  {
    self->_switching = switching;
  }
}

- (CKBrowserSwitcherScrollPreventerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end