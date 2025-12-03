@interface CAMReviewViewControllerContainerView
- (CAMReviewViewControllerContainerView)initWithCoder:(id)coder;
- (CAMReviewViewControllerContainerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setReviewView:(id)view;
@end

@implementation CAMReviewViewControllerContainerView

- (CAMReviewViewControllerContainerView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CAMReviewViewControllerContainerView;
  v3 = [(CAMReviewViewControllerContainerView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CAMReviewViewControllerContainerView *)v3 _commonCAMReviewViewControllerContainerViewInitialization];
    v5 = v4;
  }

  return v4;
}

- (CAMReviewViewControllerContainerView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CAMReviewViewControllerContainerView;
  v3 = [(CAMReviewViewControllerContainerView *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CAMReviewViewControllerContainerView *)v3 _commonCAMReviewViewControllerContainerViewInitialization];
    v5 = v4;
  }

  return v4;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CAMReviewViewControllerContainerView;
  [(CAMReviewViewControllerContainerView *)&v14 layoutSubviews];
  [(CAMReviewViewControllerContainerView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  reviewView = [(CAMReviewViewControllerContainerView *)self reviewView];
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  MidY = CGRectGetMidY(v16);
  [reviewView setBounds:{v4, v6, v8, v10}];
  [reviewView setCenter:{MidX, MidY}];
}

- (void)setReviewView:(id)view
{
  viewCopy = view;
  reviewView = self->_reviewView;
  if (reviewView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)reviewView removeFromSuperview];
    objc_storeStrong(&self->_reviewView, view);
    reviewView = [(CAMReviewViewControllerContainerView *)self addSubview:self->_reviewView];
    viewCopy = v7;
  }

  MEMORY[0x1EEE66BB8](reviewView, viewCopy);
}

@end