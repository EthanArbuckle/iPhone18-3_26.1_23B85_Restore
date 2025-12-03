@interface SUUITrendingSearchView
- (SUUITrendingSearchView)initWithCoder:(id)coder;
- (SUUITrendingSearchView)initWithFrame:(CGRect)frame;
- (UIStackView)titleStackView;
- (UIStackView)trendingSearchesStackView;
- (void)commonInitWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setTrendingSearchViews:(id)views;
- (void)setTrendingTitleView:(id)view;
- (void)updateConstraints;
@end

@implementation SUUITrendingSearchView

- (SUUITrendingSearchView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = SUUITrendingSearchView;
  v7 = [(SUUITrendingSearchView *)&v10 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(SUUITrendingSearchView *)v7 commonInitWithFrame:x, y, width, height];
  }

  return v8;
}

- (SUUITrendingSearchView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = SUUITrendingSearchView;
  v3 = [(SUUITrendingSearchView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(SUUITrendingSearchView *)v3 frame];
    [(SUUITrendingSearchView *)v4 commonInitWithFrame:?];
  }

  return v4;
}

- (void)commonInitWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v29[1] = *MEMORY[0x277D85DE8];
  [(SUUITrendingSearchView *)self setPreservesSuperviewLayoutMargins:1];
  v8 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{x, y, width, height}];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setAxis:1];
  [v8 setAlignment:3];
  [v8 setDistribution:3];
  [v8 setSpacing:18.0];
  objc_storeWeak(&self->_titleStackView, v8);
  [(SUUITrendingSearchView *)self addSubview:v8];
  v9 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{x, y, width, height}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setAxis:1];
  [v9 setAlignment:3];
  [v9 setDistribution:3];
  [v9 setSpacing:2.0];
  [v8 addArrangedSubview:v9];
  objc_storeWeak(&self->_trendingSearchesStackView, v9);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_4;
  }

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    v13 = MEMORY[0x277CCAAD0];
    titleStackView = [(SUUITrendingSearchView *)self titleStackView];
    currentDevice = [v13 constraintWithItem:titleStackView attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];

    LODWORD(v15) = 1144733696;
    [currentDevice setPriority:v15];
    v29[0] = currentDevice;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
    [(SUUITrendingSearchView *)self addConstraints:v16];

LABEL_4:
  }

  v17 = _NSDictionaryOfVariableBindings(&cfstr_Titlestackview.isa, v8, 0);
  v18 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-(>=TITLE_MINIMUM_ORIGIN_Y)-[titleStackView]" options:0 metrics:&unk_286BBE5A8 views:v17];
  verticalMarginRelatedConstraints = self->_verticalMarginRelatedConstraints;
  self->_verticalMarginRelatedConstraints = v18;

  [(SUUITrendingSearchView *)self addConstraints:self->_verticalMarginRelatedConstraints];
  leadingAnchor = [v8 leadingAnchor];
  leadingAnchor2 = [(SUUITrendingSearchView *)self leadingAnchor];
  v22 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v22 setActive:1];

  trailingAnchor = [v8 trailingAnchor];
  trailingAnchor2 = [(SUUITrendingSearchView *)self trailingAnchor];
  v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v25 setActive:1];

  widthAnchor = [v8 widthAnchor];
  widthAnchor2 = [(SUUITrendingSearchView *)self widthAnchor];
  v28 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v28 setActive:1];
}

- (void)setTrendingTitleView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_trendingTitleView removeFromSuperview];
  trendingTitleView = self->_trendingTitleView;
  self->_trendingTitleView = viewCopy;
  v6 = viewCopy;

  [(UIView *)self->_trendingTitleView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1148846080;
  [(UIView *)self->_trendingTitleView setContentCompressionResistancePriority:1 forAxis:v7];
  titleStackView = [(SUUITrendingSearchView *)self titleStackView];
  [titleStackView insertArrangedSubview:v6 atIndex:0];
}

- (void)setTrendingSearchViews:(id)views
{
  v29 = *MEMORY[0x277D85DE8];
  viewsCopy = views;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_trendingSearchViews;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      v9 = 0;
      do
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v23 + 1) + 8 * v9++) removeFromSuperview];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v10 = [viewsCopy copy];
  trendingSearchViews = self->_trendingSearchViews;
  self->_trendingSearchViews = v10;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_trendingSearchViews;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        trendingSearchesStackView = [(SUUITrendingSearchView *)self trendingSearchesStackView];
        [trendingSearchesStackView addArrangedSubview:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  [(SUUITrendingSearchView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SUUITrendingSearchView;
  [(SUUITrendingSearchView *)&v11 layoutSubviews];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_5;
  }

  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

  if (userInterfaceIdiom != 1)
  {
LABEL_5:
    [(SUUITrendingSearchView *)self bounds];
    v7 = v6;
    titleStackView = [(SUUITrendingSearchView *)self titleStackView];
    [titleStackView bounds];
    MaxY = CGRectGetMaxY(v12);
    [(SUUITrendingSearchView *)self safeAreaInsets];
    [(SUUITrendingSearchView *)self setContentSize:v7, MaxY + v10];
  }
}

- (void)updateConstraints
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  verticalMarginRelatedConstraints = [(SUUITrendingSearchView *)self verticalMarginRelatedConstraints];
  v4 = [verticalMarginRelatedConstraints countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(verticalMarginRelatedConstraints);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        [(SUUITrendingSearchView *)self safeAreaInsets];
        [v8 setConstant:?];
        ++v7;
      }

      while (v5 != v7);
      v5 = [verticalMarginRelatedConstraints countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = SUUITrendingSearchView;
  [(SUUITrendingSearchView *)&v9 updateConstraints];
}

- (UIStackView)trendingSearchesStackView
{
  WeakRetained = objc_loadWeakRetained(&self->_trendingSearchesStackView);

  return WeakRetained;
}

- (UIStackView)titleStackView
{
  WeakRetained = objc_loadWeakRetained(&self->_titleStackView);

  return WeakRetained;
}

@end