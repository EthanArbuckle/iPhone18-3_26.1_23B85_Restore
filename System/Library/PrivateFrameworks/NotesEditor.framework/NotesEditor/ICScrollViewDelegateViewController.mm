@interface ICScrollViewDelegateViewController
- (NotesBackgroundView)backgroundView;
- (UIScrollView)keyboardResizerScrollView;
- (UIScrollView)scrollView;
- (double)consumedBottomAreaForResizer:(id)resizer;
- (double)topInsetForResizer:(id)resizer;
- (void)setupScrollViewKeyboardResizer;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ICScrollViewDelegateViewController

- (void)setupScrollViewKeyboardResizer
{
  scrollViewResizer = [(ICScrollViewDelegateViewController *)self scrollViewResizer];

  if (!scrollViewResizer)
  {
    v4 = [objc_alloc(MEMORY[0x277D368C0]) initWithDelegate:self];
    [(ICScrollViewDelegateViewController *)self setScrollViewResizer:v4];
  }
}

- (void)viewDidLayoutSubviews
{
  v24.receiver = self;
  v24.super_class = ICScrollViewDelegateViewController;
  [(ICScrollViewDelegateViewController *)&v24 viewDidLayoutSubviews];
  scrollView = [(ICScrollViewDelegateViewController *)self scrollView];
  if (scrollView)
  {
    scrollViewResizer = [(ICScrollViewDelegateViewController *)self scrollViewResizer];
    if (scrollViewResizer)
    {
      scrollViewResizer3 = scrollViewResizer;
      scrollViewResizer2 = [(ICScrollViewDelegateViewController *)self scrollViewResizer];
      if ([scrollViewResizer2 isAutoResizing])
      {

LABEL_9:
        goto LABEL_10;
      }

      if ([(ICScrollViewDelegateViewController *)self _appearState]== 2)
      {

LABEL_8:
        scrollViewResizer3 = [(ICScrollViewDelegateViewController *)self scrollViewResizer];
        [scrollViewResizer3 startAutoResizing];
        goto LABEL_9;
      }

      _appearState = [(ICScrollViewDelegateViewController *)self _appearState];

      if (_appearState == 1)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_10:
  if ([scrollView contentInsetAdjustmentBehavior] == 2)
  {
    scrollViewResizer4 = [(ICScrollViewDelegateViewController *)self scrollViewResizer];
    [(ICScrollViewDelegateViewController *)self topInsetForResizer:scrollViewResizer4];
    v10 = v9;

    [scrollView contentInset];
    if (vabdd_f64(v10, v11) >= 0.00999999978)
    {
      [scrollView contentInset];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      [scrollView verticalScrollIndicatorInsets];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      [scrollView setContentInset:{v10, v13, v15, v17}];
      [scrollView setVerticalScrollIndicatorInsets:{v10, v19, v21, v23}];
    }
  }
}

- (UIScrollView)keyboardResizerScrollView
{
  objc_opt_class();
  scrollView = [(ICScrollViewDelegateViewController *)self scrollView];
  v4 = ICCheckedDynamicCast();

  return v4;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  scrollViewResizer = [(ICScrollViewDelegateViewController *)self scrollViewResizer];
  [scrollViewResizer stopAutoResizing];

  v6.receiver = self;
  v6.super_class = ICScrollViewDelegateViewController;
  [(ICScrollViewDelegateViewController *)&v6 viewWillDisappear:disappearCopy];
}

- (NotesBackgroundView)backgroundView
{
  objc_opt_class();
  view = [(ICScrollViewDelegateViewController *)self view];
  v4 = ICCheckedDynamicCast();

  return v4;
}

- (UIScrollView)scrollView
{
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  objc_opt_class();
  backgroundView = [(ICScrollViewDelegateViewController *)self backgroundView];
  contentView = [backgroundView contentView];
  v6 = contentView;
  if (IsTextKit2Enabled)
  {
    subviews = [contentView subviews];
    firstObject = [subviews firstObject];
    v9 = ICDynamicCast();
  }

  else
  {
    v9 = ICDynamicCast();
  }

  return v9;
}

- (double)consumedBottomAreaForResizer:(id)resizer
{
  scrollView = [(ICScrollViewDelegateViewController *)self scrollView];
  v5 = 0.0;
  if ([scrollView contentInsetAdjustmentBehavior] == 2)
  {
    [(ICScrollViewDelegateViewController *)self ic_safeAreaDistanceFromBottom];
    v5 = v6;
  }

  return v5;
}

- (double)topInsetForResizer:(id)resizer
{
  scrollView = [(ICScrollViewDelegateViewController *)self scrollView];
  v5 = 0.0;
  if ([scrollView contentInsetAdjustmentBehavior] == 2)
  {
    [(ICScrollViewDelegateViewController *)self ic_safeAreaDistanceFromTop];
    v5 = v6;
  }

  return v5;
}

@end