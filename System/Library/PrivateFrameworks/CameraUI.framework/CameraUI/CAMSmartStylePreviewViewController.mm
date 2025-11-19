@interface CAMSmartStylePreviewViewController
- (BOOL)didFinishRendering;
- (CAMSmartStylePreviewViewController)initWithDelegate:(id)a3 gridLayout:(unint64_t)a4 pageIndex:(int64_t)a5;
- (CAMSmartStylePreviewViewControllerDelegate)delegate;
- (NSString)description;
- (unint64_t)expandedItemIndex;
- (void)loadView;
- (void)setExpandedItemIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)smartStylePreviewGridView:(id)a3 didChangeAnimatingGrid:(BOOL)a4;
- (void)smartStylePreviewGridView:(id)a3 didTapItemAtIndex:(unint64_t)a4;
- (void)smartStylePreviewGridViewDidFinishRendering:(id)a3;
- (void)speedUpFadeInAnimations;
- (void)updateViewsWithLoadResults;
- (void)updateWithStyle:(id)a3;
@end

@implementation CAMSmartStylePreviewViewController

- (CAMSmartStylePreviewViewController)initWithDelegate:(id)a3 gridLayout:(unint64_t)a4 pageIndex:(int64_t)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = CAMSmartStylePreviewViewController;
  v9 = [(CAMSmartStylePreviewViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    v10->_pageIndex = a5;
    v10->_gridLayout = a4;
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
      v6 = [(CAMSmartStylePreviewViewController *)self delegate];
      v7 = [v6 previewViewController:self requestsLoadResultForGridIndex:i];

      v8 = [(CAMSmartStylePreviewViewController *)self _previewView];
      [v8 updateGridIndex:i withResourceLoadResult:v7];
    }
  }
}

- (void)speedUpFadeInAnimations
{
  v2 = [(CAMSmartStylePreviewViewController *)self _previewView];
  [v2 speedUpFadeInAnimations];
}

- (BOOL)didFinishRendering
{
  v2 = [(CAMSmartStylePreviewViewController *)self _previewView];
  v3 = [v2 didFinishRendering];

  return v3;
}

- (unint64_t)expandedItemIndex
{
  v2 = [(CAMSmartStylePreviewViewController *)self _previewView];
  v3 = [v2 expandedItemIndex];

  return v3;
}

- (void)setExpandedItemIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = [(CAMSmartStylePreviewViewController *)self _previewView];
  [v6 setExpandedItemIndex:a3 animated:v4];
}

- (void)updateWithStyle:(id)a3
{
  v4 = a3;
  v5 = [(CAMSmartStylePreviewViewController *)self _previewView];
  [v5 setStyle:v4];
}

- (void)smartStylePreviewGridView:(id)a3 didTapItemAtIndex:(unint64_t)a4
{
  v6 = a3;
  if ([v6 expandedItemIndex] == a4)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = a4;
  }

  [v6 setExpandedItemIndex:v5 animated:1];
}

- (void)smartStylePreviewGridView:(id)a3 didChangeAnimatingGrid:(BOOL)a4
{
  v4 = a4;
  v6 = [(CAMSmartStylePreviewViewController *)self delegate];
  [v6 previewViewController:self didChangeAnimatingGrid:v4];
}

- (void)smartStylePreviewGridViewDidFinishRendering:(id)a3
{
  v4 = [(CAMSmartStylePreviewViewController *)self delegate];
  [v4 previewViewControllerDidFinishRendering:self];
}

- (CAMSmartStylePreviewViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end