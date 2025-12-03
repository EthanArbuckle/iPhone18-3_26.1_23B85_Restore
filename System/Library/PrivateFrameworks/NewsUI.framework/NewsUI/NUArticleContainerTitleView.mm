@interface NUArticleContainerTitleView
- (NUArticleContainerTitleView)initWithFrame:(CGRect)frame;
- (void)applyPageStyle:(id)style;
- (void)layoutSubviews;
@end

@implementation NUArticleContainerTitleView

- (NUArticleContainerTitleView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = NUArticleContainerTitleView;
  v3 = [(NUArticleContainerTitleView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(NUTitleViewStyler);
    v5 = [[NUTitleView alloc] initWithStyler:v4];
    titleView = v3->_titleView;
    v3->_titleView = v5;

    [(NUArticleContainerTitleView *)v3 addSubview:v3->_titleView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NUArticleContainerTitleView;
  [(NUArticleContainerTitleView *)&v12 layoutSubviews];
  [(NUArticleContainerTitleView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  titleView = [(NUArticleContainerTitleView *)self titleView];
  [titleView setFrame:{v4, v6, v8, v10}];
}

- (void)applyPageStyle:(id)style
{
  styleCopy = style;
  pageStyle = [(NUArticleContainerTitleView *)self pageStyle];
  if (!pageStyle || (v5 = pageStyle, -[NUArticleContainerTitleView pageStyle](self, "pageStyle"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [styleCopy isEqual:v6], v6, v5, (v7 & 1) == 0))
  {
    [(NUArticleContainerTitleView *)self setPageStyle:styleCopy];
    pageStyle2 = [(NUArticleContainerTitleView *)self pageStyle];
    titleImage = [pageStyle2 titleImage];

    if (titleImage)
    {
      v10 = [NUTitleViewUpdate alloc];
      pageStyle3 = [(NUArticleContainerTitleView *)self pageStyle];
      titleImage2 = [pageStyle3 titleImage];
      v13 = [(NUTitleViewUpdate *)v10 initWithImage:titleImage2];
    }

    else
    {
      pageStyle4 = [(NUArticleContainerTitleView *)self pageStyle];
      title = [pageStyle4 title];

      if (!title)
      {
        v17 = objc_alloc_init(NUTitleViewUpdate);
        goto LABEL_8;
      }

      v16 = [NUTitleViewUpdate alloc];
      pageStyle3 = [(NUArticleContainerTitleView *)self pageStyle];
      titleImage2 = [pageStyle3 title];
      v13 = [(NUTitleViewUpdate *)v16 initWithText:titleImage2 styleType:0];
    }

    v17 = v13;

LABEL_8:
    [(NUTitleViewUpdate *)v17 setCancelPendingUpdates:1];
    [(NUTitleViewUpdate *)v17 setSpeakAccessibilityTitleWhenDisplayed:0];
    titleView = [(NUArticleContainerTitleView *)self titleView];
    [titleView applyTitleViewUpdate:v17 animation:0];
  }
}

@end