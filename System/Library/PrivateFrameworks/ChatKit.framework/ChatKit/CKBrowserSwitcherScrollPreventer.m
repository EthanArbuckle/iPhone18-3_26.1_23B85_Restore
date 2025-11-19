@interface CKBrowserSwitcherScrollPreventer
- (CGPoint)contentOffset;
- (CGSize)contentSize;
- (CKBrowserSwitcherScrollPreventer)initWithFrame:(CGRect)a3;
- (CKBrowserSwitcherScrollPreventerDelegate)delegate;
- (void)layoutSubviews;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setContentOffset:(CGPoint)a3;
- (void)setContentSize:(CGSize)a3;
- (void)setScrollEnabled:(BOOL)a3;
- (void)setSwitching:(BOOL)a3;
@end

@implementation CKBrowserSwitcherScrollPreventer

- (CKBrowserSwitcherScrollPreventer)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v3 = [(CKBrowserSwitcherScrollPreventer *)self isEngaged];
  [(CKBrowserSwitcherScrollPreventer *)self setEngaged:0];
  [(CKBrowserSwitcherScrollPreventer *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];
  [v12 setFrame:{v5, v7, v9, v11}];

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
  v20 = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollPreventerView];
  [v20 setFrame:{x, y, width, height}];

  v27.origin.x = v5;
  v27.origin.y = v7;
  v27.size.width = v9;
  v27.size.height = v11;
  v21 = CGRectGetHeight(v27);
  v22 = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];
  [v22 setContentSize:{1.79769313e308, v21}];

  v23 = [(CKBrowserSwitcherScrollPreventer *)self delegate];
  [v23 scrollPreventerDidLayoutSubviews:self];

  [(CKBrowserSwitcherScrollPreventer *)self setEngaged:v3];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v4 = a3;
  v5 = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];

  if (v5 == v4)
  {
    v6 = [(CKBrowserSwitcherScrollPreventer *)self delegate];
    [v6 scrollPreventerWillBeginDragging:self];
  }
}

- (void)scrollViewDidScroll:(id)a3
{
  v12 = a3;
  v4 = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];

  v5 = v12;
  if (v4 == v12)
  {
    [v12 contentOffset];
    v7 = v6;
    v9 = v8;
    v10 = [(CKBrowserSwitcherScrollPreventer *)self isEngaged];
    v5 = v12;
    if (v10)
    {
      v11 = [(CKBrowserSwitcherScrollPreventer *)self delegate];
      [v11 scrollPreventer:self scrolledToOffset:{v7, v9}];

      v5 = v12;
    }
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v4 = a3;
  v7 = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];

  v5 = v7;
  if (v7 == v4)
  {
    v6 = [(CKBrowserSwitcherScrollPreventer *)self isEngaged];

    if (!v6)
    {
      return;
    }

    v8 = [(CKBrowserSwitcherScrollPreventer *)self delegate];
    [v8 scrollPreventerDidEndDecelerating:self];
    v5 = v8;
  }
}

- (CGPoint)contentOffset
{
  v2 = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];
  [v2 contentOffset];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setContentOffset:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];
  [v5 setContentOffset:{x, y}];
}

- (CGSize)contentSize
{
  v2 = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];
  [v2 contentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];
  [v5 setContentSize:{width, height}];
}

- (void)setScrollEnabled:(BOOL)a3
{
  if (self->_scrollEnabled != a3)
  {
    v4 = a3;
    self->_scrollEnabled = a3;
    v5 = [(CKBrowserSwitcherScrollPreventer *)self horizontalScrollView];
    [v5 setScrollEnabled:v4];
  }
}

- (void)setSwitching:(BOOL)a3
{
  if (self->_switching != a3)
  {
    self->_switching = a3;
  }
}

- (CKBrowserSwitcherScrollPreventerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end