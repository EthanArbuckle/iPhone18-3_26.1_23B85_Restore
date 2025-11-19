@interface NUFeedTitleView
- (BOOL)useCompactTitleViewUpdates;
- (NUFeedTitleView)initWithFrame:(CGRect)a3;
- (NUFeedTitleViewDelegate)delegate;
- (NUTitleViewStyler)styler;
- (unint64_t)titleViewAnimationForAnimation:(unint64_t)a3;
- (void)applyTitleViewUpdate:(id)a3 animation:(unint64_t)a4;
- (void)layoutSubviews;
- (void)setStyler:(id)a3;
- (void)titleViewDidTapOnTitleView:(id)a3;
@end

@implementation NUFeedTitleView

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = NUFeedTitleView;
  [(NUFeedTitleView *)&v12 layoutSubviews];
  [(NUFeedTitleView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(NUFeedTitleView *)self titleView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (NUFeedTitleView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = NUFeedTitleView;
  v3 = [(NUFeedTitleView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(NUTitleViewStyler);
    v5 = [[NUTitleView alloc] initWithStyler:v4];
    titleView = v3->_titleView;
    v3->_titleView = v5;

    [(NUTitleView *)v3->_titleView setDelegate:v3];
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    titleViewUpdateStack = v3->_titleViewUpdateStack;
    v3->_titleViewUpdateStack = v7;

    [(NUFeedTitleView *)v3 addSubview:v3->_titleView];
  }

  return v3;
}

- (void)setStyler:(id)a3
{
  v4 = a3;
  v5 = [(NUFeedTitleView *)self titleView];
  [v5 setStyler:v4];

  [(NUFeedTitleView *)self setLastQueuedTitleViewUpdate:0];
}

- (NUTitleViewStyler)styler
{
  v2 = [(NUFeedTitleView *)self titleView];
  v3 = [v2 styler];

  return v3;
}

- (void)titleViewDidTapOnTitleView:(id)a3
{
  v4 = [(NUFeedTitleView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(NUFeedTitleView *)self delegate];
    [v6 feedTitleViewDidTapOnTitleView:self];
  }
}

- (BOOL)useCompactTitleViewUpdates
{
  v2 = [(NUFeedTitleView *)self traitCollection];
  v3 = [v2 horizontalSizeClass] == 1;

  return v3;
}

- (void)applyTitleViewUpdate:(id)a3 animation:(unint64_t)a4
{
  v11 = a3;
  v6 = [(NUFeedTitleView *)self lastQueuedTitleViewUpdate];
  if (!v6 || (v7 = v6, -[NUFeedTitleView lastQueuedTitleViewUpdate](self, "lastQueuedTitleViewUpdate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isEqual:v11], v8, v7, (v9 & 1) == 0))
  {
    [(NUFeedTitleView *)self setLastQueuedTitleViewUpdate:v11];
    v10 = [(NUFeedTitleView *)self titleView];
    [v10 applyTitleViewUpdate:v11 animation:{-[NUFeedTitleView titleViewAnimationForAnimation:](self, "titleViewAnimationForAnimation:", a4)}];
  }
}

- (unint64_t)titleViewAnimationForAnimation:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_25C311BA0[a3 - 1];
  }
}

- (NUFeedTitleViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end