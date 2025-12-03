@interface CKMNavbarCanvasView
- (CKMNavbarCanvasView)init;
- (CKMNavbarCanvasView)initWithFrame:(CGRect)frame;
- (void)_layoutForDisplayBelowToolbar;
- (void)_layoutForDisplayInNavbar;
- (void)clearAllItemViews;
- (void)layoutSubviews;
- (void)setComposeButtonView:(id)view;
- (void)setSearchBarView:(id)view;
@end

@implementation CKMNavbarCanvasView

- (CKMNavbarCanvasView)init
{
  v7.receiver = self;
  v7.super_class = CKMNavbarCanvasView;
  v2 = [(CKMNavbarCanvasView *)&v7 init];
  v3 = v2;
  if (v2)
  {
    searchBarView = v2->_searchBarView;
    v2->_searchBarView = 0;

    composeButtonView = v3->_composeButtonView;
    v3->_composeButtonView = 0;
  }

  return v3;
}

- (CKMNavbarCanvasView)initWithFrame:(CGRect)frame
{
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [CKUIBehavior sharedBehaviors:frame.origin.x];
  [v7 marzNavigationBarHeight];
  v9 = v8;

  v11.receiver = self;
  v11.super_class = CKMNavbarCanvasView;
  return [(CKMNavbarCanvasView *)&v11 initWithFrame:x, y, width, v9];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CKMNavbarCanvasView;
  [(CKMNavbarCanvasView *)&v5 layoutSubviews];
  v3 = +[CKUIBehavior sharedBehaviors];
  useMacToolbar = [v3 useMacToolbar];

  if (useMacToolbar)
  {
    [(CKMNavbarCanvasView *)self _layoutForDisplayBelowToolbar];
  }

  else
  {
    [(CKMNavbarCanvasView *)self _layoutForDisplayInNavbar];
  }
}

- (void)_layoutForDisplayBelowToolbar
{
  searchBarView3 = +[CKUIBehavior sharedBehaviors];
  if ([searchBarView3 useMacToolbar])
  {
    searchBarView = self->_searchBarView;

    if (!searchBarView)
    {
      return;
    }

    v4 = +[CKUIBehavior sharedBehaviors];
    [v4 searchNavbarCanvasInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [(CKMNavbarCanvasView *)self bounds];
    v14 = v13;
    v39 = v8 + v15;
    v17 = v6 + v16;
    v18 = v13 - (v8 + v12);
    v20 = v19 - (v6 + v10);
    composeButtonView = [(CKMNavbarCanvasView *)self composeButtonView];
    [composeButtonView frame];
    v23 = v22;
    v25 = v24;

    v26 = +[CKUIBehavior sharedBehaviors];
    [v26 minConversationListWidthComposeButtonSize];
    v28 = v27;
    v30 = v29;

    if ([(CKMNavbarCanvasView *)self shouldLayoutForCollapsedWidth])
    {
      v23 = v14 * 0.5 - v28 * 0.5;
    }

    searchBarView = [(CKMNavbarCanvasView *)self searchBarView];
    [searchBarView setHidden:{-[CKMNavbarCanvasView shouldLayoutForCollapsedWidth](self, "shouldLayoutForCollapsedWidth")}];

    composeButtonView2 = [(CKMNavbarCanvasView *)self composeButtonView];
    [composeButtonView2 setHidden:{-[CKMNavbarCanvasView shouldLayoutForCollapsedWidth](self, "shouldLayoutForCollapsedWidth") ^ 1}];

    composeButtonView3 = [(CKMNavbarCanvasView *)self composeButtonView];
    [composeButtonView3 setFrame:{v23, v25, v28, v30}];

    composeButtonView4 = [(CKMNavbarCanvasView *)self composeButtonView];
    composeButtonView5 = [(CKMNavbarCanvasView *)self composeButtonView];
    [composeButtonView5 center];
    v37 = v36;
    searchBarView2 = [(CKMNavbarCanvasView *)self searchBarView];
    [searchBarView2 center];
    [composeButtonView4 setCenter:v37];

    searchBarView3 = [(CKMNavbarCanvasView *)self searchBarView];
    [searchBarView3 setFrame:{v39, v17, v18, v20}];
  }
}

- (void)_layoutForDisplayInNavbar
{
  if (self->_searchBarView && self->_composeButtonView)
  {
    v3 = +[CKUIBehavior sharedBehaviors];
    [v3 searchNavbarCanvasInsets];
    v51 = v5;
    v52 = v4;
    v7 = v6;
    v50 = v8;

    [(CKMNavbarCanvasView *)self frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = +[CKUIBehavior sharedBehaviors];
    [v15 marzNavigationBarHeight];
    v17 = v16;

    [(CKMNavbarCanvasView *)self setFrame:v10, v12, v14, v17];
    [(CKMNavbarCanvasView *)self bounds];
    v19 = v18;
    v57 = v20;
    searchBarView = [(CKMNavbarCanvasView *)self searchBarView];
    [searchBarView frame];
    v23 = v22;
    v54 = v24;
    v26 = v25;
    v28 = v27;

    composeButtonView = [(CKMNavbarCanvasView *)self composeButtonView];
    [composeButtonView frame];
    v55 = v31;
    v56 = v30;
    v33 = v32;

    [(CKMNavbarCanvasView *)self bounds];
    v35 = v34;
    v36 = +[CKUIBehavior sharedBehaviors];
    [v36 minConversationListWidth];
    v38 = v37;

    if (v35 > v38)
    {
      [(UISearchBar *)self->_searchBarView sizeToFit];
      v53 = *&v57 - v7 - v52;
      v41 = +[CKUIBehavior sharedBehaviors];
      [v41 spaceBetweenSearchBarAndComposeButton];
      v43 = v42;

      v23 = v51;
      v39 = v33;
      v26 = v19 - (v33 + v50 + v43);
      v40 = v43 + v51 + v26;
    }

    else
    {
      v53 = v28;
      v39 = v33;
      v40 = v19 * 0.5 - v33 * 0.5;
    }

    searchBarView2 = [(CKMNavbarCanvasView *)self searchBarView];
    [searchBarView2 setHidden:v35 <= v38];

    if (CKMainScreenScale_once_20 != -1)
    {
      [CKMNavbarCanvasView _layoutForDisplayInNavbar];
    }

    searchBarView3 = [(CKMNavbarCanvasView *)self searchBarView];
    [searchBarView3 setFrame:{v23, v54, v26, v53}];

    searchBarView4 = [(CKMNavbarCanvasView *)self searchBarView];
    searchBarView5 = [(CKMNavbarCanvasView *)self searchBarView];
    [searchBarView5 center];
    [searchBarView4 setCenter:?];

    composeButtonView2 = [(CKMNavbarCanvasView *)self composeButtonView];
    [composeButtonView2 setFrame:{v40, v56, v39, v55}];

    composeButtonView3 = [(CKMNavbarCanvasView *)self composeButtonView];
    composeButtonView4 = [(CKMNavbarCanvasView *)self composeButtonView];
    [composeButtonView4 center];
    [composeButtonView3 setCenter:?];
  }
}

- (void)setSearchBarView:(id)view
{
  viewCopy = view;
  if (self->_searchBarView != viewCopy)
  {
    v6 = viewCopy;
    [(UISearchBar *)viewCopy setAutoresizingMask:0];
    [(UISearchBar *)self->_searchBarView removeFromSuperview];
    objc_storeStrong(&self->_searchBarView, view);
    viewCopy = v6;
    if (v6)
    {
      [(UISearchBar *)self->_searchBarView sizeToFit];
      [(CKMNavbarCanvasView *)self addSubview:self->_searchBarView];
      viewCopy = v6;
    }
  }
}

- (void)setComposeButtonView:(id)view
{
  viewCopy = view;
  if (self->_composeButtonView != viewCopy)
  {
    v6 = viewCopy;
    [(UIButton *)viewCopy setAutoresizingMask:0];
    [(UIButton *)self->_composeButtonView removeFromSuperview];
    objc_storeStrong(&self->_composeButtonView, view);
    viewCopy = v6;
    if (v6)
    {
      [(UIButton *)self->_composeButtonView sizeToFit];
      [(UIButton *)self->_composeButtonView setBounds:0.0, 0.0, 34.0, 21.0];
      [(CKMNavbarCanvasView *)self addSubview:self->_composeButtonView];
      viewCopy = v6;
    }
  }
}

- (void)clearAllItemViews
{
  searchBarView = self->_searchBarView;
  self->_searchBarView = 0;

  composeButtonView = self->_composeButtonView;
  self->_composeButtonView = 0;
}

@end