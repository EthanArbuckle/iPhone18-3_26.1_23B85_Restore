@interface SUUIReviewsHistogramViewController
- (UIControl)appSupportButton;
- (UIControl)segmentedControl;
- (UIControl)starRatingControl;
- (UIControl)writeAReviewButton;
- (id)_histogramView;
- (int64_t)selectedSegmentIndex;
- (void)_reloadHistogram;
- (void)loadView;
- (void)setPersonalStarRating:(int64_t)rating;
- (void)setReviewList:(id)list;
- (void)setSegmentedControlTitles:(id)titles;
- (void)setSelectedSegmentIndex:(int64_t)index;
- (void)setVersionString:(id)string;
@end

@implementation SUUIReviewsHistogramViewController

- (UIControl)appSupportButton
{
  _histogramView = [(SUUIReviewsHistogramViewController *)self _histogramView];
  appSupportButton = [_histogramView appSupportButton];

  return appSupportButton;
}

- (UIControl)segmentedControl
{
  _histogramView = [(SUUIReviewsHistogramViewController *)self _histogramView];
  segmentedControl = [_histogramView segmentedControl];

  return segmentedControl;
}

- (int64_t)selectedSegmentIndex
{
  histogramView = self->_histogramView;
  if (histogramView)
  {
    return [(SUUIReviewsHistogramView *)histogramView selectedSegmentIndex];
  }

  else
  {
    return -1;
  }
}

- (void)setPersonalStarRating:(int64_t)rating
{
  _histogramView = [(SUUIReviewsHistogramViewController *)self _histogramView];
  [_histogramView setPersonalStarRating:rating];
}

- (void)setReviewList:(id)list
{
  listCopy = list;
  if (self->_reviewList != listCopy)
  {
    v6 = listCopy;
    objc_storeStrong(&self->_reviewList, list);
    [(SUUIReviewsHistogramViewController *)self _reloadHistogram];
    listCopy = v6;
  }
}

- (void)setSegmentedControlTitles:(id)titles
{
  titlesCopy = titles;
  _histogramView = [(SUUIReviewsHistogramViewController *)self _histogramView];
  [_histogramView setSegmentedControlTitles:titlesCopy];
}

- (void)setSelectedSegmentIndex:(int64_t)index
{
  _histogramView = [(SUUIReviewsHistogramViewController *)self _histogramView];
  [_histogramView setSelectedSegmentIndex:index];
}

- (void)setVersionString:(id)string
{
  stringCopy = string;
  _histogramView = [(SUUIReviewsHistogramViewController *)self _histogramView];
  [_histogramView setVersionString:stringCopy];
}

- (UIControl)starRatingControl
{
  _histogramView = [(SUUIReviewsHistogramViewController *)self _histogramView];
  starRatingControl = [_histogramView starRatingControl];

  return starRatingControl;
}

- (UIControl)writeAReviewButton
{
  _histogramView = [(SUUIReviewsHistogramViewController *)self _histogramView];
  writeAReviewButton = [_histogramView writeAReviewButton];

  return writeAReviewButton;
}

- (void)loadView
{
  _histogramView = [(SUUIReviewsHistogramViewController *)self _histogramView];
  [(SUUIReviewsHistogramViewController *)self setView:_histogramView];
}

- (id)_histogramView
{
  histogramView = self->_histogramView;
  if (!histogramView)
  {
    v4 = [[SUUIReviewsHistogramView alloc] initWithClientContext:self->_clientContext];
    v5 = self->_histogramView;
    self->_histogramView = v4;

    v6 = self->_histogramView;
    clientContext = self->_clientContext;
    if (SUUIUserInterfaceIdiom(clientContext) == 1)
    {
      v8 = @"REVIEWS_HISTOGRAM_TITLE_IPAD";
    }

    else
    {
      v8 = @"REVIEWS_HISTOGRAM_TITLE_IPHONE";
    }

    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:v8 inTable:@"ProductPage"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:v8 inBundles:0 inTable:@"ProductPage"];
    }
    v9 = ;
    [(SUUIReviewsHistogramView *)v6 setTitle:v9];

    [(SUUIReviewsHistogramViewController *)self _reloadHistogram];
    histogramView = self->_histogramView;
  }

  return histogramView;
}

- (void)_reloadHistogram
{
  v29 = *MEMORY[0x277D85DE8];
  ratingCount = [(SUUIReviewList *)self->_reviewList ratingCount];
  v8 = ratingCount;
  [(SUUIReviewsHistogramView *)self->_histogramView setNumberOfUserRatings:ratingCount];
  histogramView = self->_histogramView;
  if (ratingCount)
  {
    v9 = MEMORY[0x277CCABB0];
    *&v10 = [(SUUIReviewList *)self->_reviewList oneStarRatingCount]/ v8;
    v2 = [v9 numberWithFloat:v10];
    v24 = v2;
    v11 = MEMORY[0x277CCABB0];
    *&v12 = [(SUUIReviewList *)self->_reviewList twoStarRatingCount]/ v8;
    v3 = [v11 numberWithFloat:v12];
    v25 = v3;
    v13 = MEMORY[0x277CCABB0];
    *&v14 = [(SUUIReviewList *)self->_reviewList threeStarRatingCount]/ v8;
    v4 = [v13 numberWithFloat:v14];
    v26 = v4;
    v15 = MEMORY[0x277CCABB0];
    *&v16 = [(SUUIReviewList *)self->_reviewList fourStarRatingCount]/ v8;
    v5 = [v15 numberWithFloat:v16];
    v27 = v5;
    v17 = MEMORY[0x277CCABB0];
    *&v18 = [(SUUIReviewList *)self->_reviewList fiveStarRatingCount]/ v8;
    v19 = [v17 numberWithFloat:v18];
  }

  else
  {
    v19 = &unk_286BBE2E0;
    v24 = &unk_286BBE2E0;
    v25 = &unk_286BBE2E0;
    v26 = &unk_286BBE2E0;
    v27 = &unk_286BBE2E0;
  }

  v28 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:5];
  [(SUUIReviewsHistogramView *)histogramView setHistogramValues:v20];

  if (ratingCount)
  {
  }

  v21 = self->_histogramView;
  [(SUUIReviewList *)self->_reviewList userRating];
  [(SUUIReviewsHistogramView *)v21 setUserRating:(v22 / 5.0)];
}

@end