@interface SlidingPaneViewState
- (SlidingPaneViewState)initWithViewController:(id)a3 edge:(unint64_t)a4;
- (void)dealloc;
@end

@implementation SlidingPaneViewState

- (SlidingPaneViewState)initWithViewController:(id)a3 edge:(unint64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = SlidingPaneViewState;
  v7 = [(SlidingPaneViewState *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(SlidingPaneViewState *)v7 setPaneViewController:v6];
    [(SlidingPaneViewState *)v8 setEdge:a4];
  }

  return v8;
}

- (void)dealloc
{
  v3 = [(SlidingPaneViewState *)self paneView];
  [v3 removeFromSuperview];

  v4.receiver = self;
  v4.super_class = SlidingPaneViewState;
  [(SlidingPaneViewState *)&v4 dealloc];
}

@end