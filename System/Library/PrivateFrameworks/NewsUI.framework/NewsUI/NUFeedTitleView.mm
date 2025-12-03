@interface NUFeedTitleView
- (BOOL)useCompactTitleViewUpdates;
- (NUFeedTitleView)initWithFrame:(CGRect)frame;
- (NUFeedTitleViewDelegate)delegate;
- (NUTitleViewStyler)styler;
- (unint64_t)titleViewAnimationForAnimation:(unint64_t)animation;
- (void)applyTitleViewUpdate:(id)update animation:(unint64_t)animation;
- (void)layoutSubviews;
- (void)setStyler:(id)styler;
- (void)titleViewDidTapOnTitleView:(id)view;
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
  titleView = [(NUFeedTitleView *)self titleView];
  [titleView setFrame:{v4, v6, v8, v10}];
}

- (NUFeedTitleView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = NUFeedTitleView;
  v3 = [(NUFeedTitleView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setStyler:(id)styler
{
  stylerCopy = styler;
  titleView = [(NUFeedTitleView *)self titleView];
  [titleView setStyler:stylerCopy];

  [(NUFeedTitleView *)self setLastQueuedTitleViewUpdate:0];
}

- (NUTitleViewStyler)styler
{
  titleView = [(NUFeedTitleView *)self titleView];
  styler = [titleView styler];

  return styler;
}

- (void)titleViewDidTapOnTitleView:(id)view
{
  delegate = [(NUFeedTitleView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(NUFeedTitleView *)self delegate];
    [delegate2 feedTitleViewDidTapOnTitleView:self];
  }
}

- (BOOL)useCompactTitleViewUpdates
{
  traitCollection = [(NUFeedTitleView *)self traitCollection];
  v3 = [traitCollection horizontalSizeClass] == 1;

  return v3;
}

- (void)applyTitleViewUpdate:(id)update animation:(unint64_t)animation
{
  updateCopy = update;
  lastQueuedTitleViewUpdate = [(NUFeedTitleView *)self lastQueuedTitleViewUpdate];
  if (!lastQueuedTitleViewUpdate || (v7 = lastQueuedTitleViewUpdate, -[NUFeedTitleView lastQueuedTitleViewUpdate](self, "lastQueuedTitleViewUpdate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isEqual:updateCopy], v8, v7, (v9 & 1) == 0))
  {
    [(NUFeedTitleView *)self setLastQueuedTitleViewUpdate:updateCopy];
    titleView = [(NUFeedTitleView *)self titleView];
    [titleView applyTitleViewUpdate:updateCopy animation:{-[NUFeedTitleView titleViewAnimationForAnimation:](self, "titleViewAnimationForAnimation:", animation)}];
  }
}

- (unint64_t)titleViewAnimationForAnimation:(unint64_t)animation
{
  if (animation - 1 > 2)
  {
    return 0;
  }

  else
  {
    return qword_25C311BA0[animation - 1];
  }
}

- (NUFeedTitleViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end