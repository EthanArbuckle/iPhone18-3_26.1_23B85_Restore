@interface ISPaneFrameView
- (FMSlidingPaneViewController)owningViewController;
- (void)layoutSubviews;
@end

@implementation ISPaneFrameView

- (void)layoutSubviews
{
  v3 = [(ISPaneFrameView *)self owningViewController];
  v4.receiver = self;
  v4.super_class = ISPaneFrameView;
  [(ISPaneFrameView *)&v4 layoutSubviews];
  [(ISPaneFrameView *)self frame];
  [v3 _paneFrameChanged:?];
}

- (FMSlidingPaneViewController)owningViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_owningViewController);

  return WeakRetained;
}

@end