@interface CAMSmartStylePreviewViewController
- (BOOL)didFinishRendering;
- (CAMSmartStylePreviewViewController)initWithDelegate:(id)delegate gridLayout:(unint64_t)layout pageIndex:(int64_t)index;
- (CAMSmartStylePreviewViewControllerDelegate)delegate;
- (NSString)description;
- (unint64_t)expandedItemIndex;
- (void)loadView;
- (void)setExpandedItemIndex:(unint64_t)index animated:(BOOL)animated;
- (void)smartStylePreviewGridView:(id)view didChangeAnimatingGrid:(BOOL)grid;
- (void)smartStylePreviewGridView:(id)view didTapItemAtIndex:(unint64_t)index;
- (void)smartStylePreviewGridViewDidFinishRendering:(id)rendering;
- (void)speedUpFadeInAnimations;
- (void)updateViewsWithLoadResults;
- (void)updateWithStyle:(id)style;
@end

@implementation CAMSmartStylePreviewViewController

- (CAMSmartStylePreviewViewController)initWithDelegate:(id)delegate gridLayout:(unint64_t)layout pageIndex:(int64_t)index
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = CAMSmartStylePreviewViewController;
  v9 = [(CAMSmartStylePreviewViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10->_pageIndex = index;
    v10->_gridLayout = layout;
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = CAMSmartStylePreviewViewController;
  v4 = [(CAMSmartStylePreviewViewController *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: %ld", v4, -[CAMSmartStylePreviewViewController pageIndex](self, "pageIndex")];

  return v5;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = CAMSmartStylePreviewViewController;
  [(CAMSmartStylePreviewViewController *)&v5 loadView];
  v3 = [[CAMSmartStylePreviewGridView alloc] initWithLayout:[(CAMSmartStylePreviewViewController *)self gridLayout]];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"page=%lu", -[CAMSmartStylePreviewViewController pageIndex](self, "pageIndex")];
  [(CAMSmartStylePreviewGridView *)v3 setLogIdentifier:v4];

  [(CAMSmartStylePreviewGridView *)v3 setDelegate:self];
  [(CAMSmartStylePreviewViewController *)self setView:v3];
  [(CAMSmartStylePreviewViewController *)self updateViewsWithLoadResults];
}

- (void)updateViewsWithLoadResults
{
  v3 = [CAMSmartStylePreviewGridView gridItemCountForLayout:[(CAMSmartStylePreviewViewController *)self gridLayout]];
  if (v3)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      delegate = [(CAMSmartStylePreviewViewController *)self delegate];
      v7 = [delegate previewViewController:self requestsLoadResultForGridIndex:i];

      _previewView = [(CAMSmartStylePreviewViewController *)self _previewView];
      [_previewView updateGridIndex:i withResourceLoadResult:v7];
    }
  }
}

- (void)speedUpFadeInAnimations
{
  _previewView = [(CAMSmartStylePreviewViewController *)self _previewView];
  [_previewView speedUpFadeInAnimations];
}

- (BOOL)didFinishRendering
{
  _previewView = [(CAMSmartStylePreviewViewController *)self _previewView];
  didFinishRendering = [_previewView didFinishRendering];

  return didFinishRendering;
}

- (unint64_t)expandedItemIndex
{
  _previewView = [(CAMSmartStylePreviewViewController *)self _previewView];
  expandedItemIndex = [_previewView expandedItemIndex];

  return expandedItemIndex;
}

- (void)setExpandedItemIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  _previewView = [(CAMSmartStylePreviewViewController *)self _previewView];
  [_previewView setExpandedItemIndex:index animated:animatedCopy];
}

- (void)updateWithStyle:(id)style
{
  styleCopy = style;
  _previewView = [(CAMSmartStylePreviewViewController *)self _previewView];
  [_previewView setStyle:styleCopy];
}

- (void)smartStylePreviewGridView:(id)view didTapItemAtIndex:(unint64_t)index
{
  viewCopy = view;
  if ([viewCopy expandedItemIndex] == index)
  {
    indexCopy = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    indexCopy = index;
  }

  [viewCopy setExpandedItemIndex:indexCopy animated:1];
}

- (void)smartStylePreviewGridView:(id)view didChangeAnimatingGrid:(BOOL)grid
{
  gridCopy = grid;
  delegate = [(CAMSmartStylePreviewViewController *)self delegate];
  [delegate previewViewController:self didChangeAnimatingGrid:gridCopy];
}

- (void)smartStylePreviewGridViewDidFinishRendering:(id)rendering
{
  delegate = [(CAMSmartStylePreviewViewController *)self delegate];
  [delegate previewViewControllerDidFinishRendering:self];
}

- (CAMSmartStylePreviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end