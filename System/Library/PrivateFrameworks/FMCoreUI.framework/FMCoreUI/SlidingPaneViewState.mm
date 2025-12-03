@interface SlidingPaneViewState
- (SlidingPaneViewState)initWithViewController:(id)controller edge:(unint64_t)edge;
- (void)dealloc;
@end

@implementation SlidingPaneViewState

- (SlidingPaneViewState)initWithViewController:(id)controller edge:(unint64_t)edge
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = SlidingPaneViewState;
  v7 = [(SlidingPaneViewState *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SlidingPaneViewState *)v7 setPaneViewController:controllerCopy];
    [(SlidingPaneViewState *)v8 setEdge:edge];
  }

  return v8;
}

- (void)dealloc
{
  paneView = [(SlidingPaneViewState *)self paneView];
  [paneView removeFromSuperview];

  v4.receiver = self;
  v4.super_class = SlidingPaneViewState;
  [(SlidingPaneViewState *)&v4 dealloc];
}

@end