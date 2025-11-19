@interface ICScrollViewDelegateViewController
- (NotesBackgroundView)backgroundView;
- (UIScrollView)keyboardResizerScrollView;
- (UIScrollView)scrollView;
- (double)consumedBottomAreaForResizer:(id)a3;
- (double)topInsetForResizer:(id)a3;
- (void)setupScrollViewKeyboardResizer;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ICScrollViewDelegateViewController

- (void)setupScrollViewKeyboardResizer
{
  v3 = [(ICScrollViewDelegateViewController *)self scrollViewResizer];

  if (!v3)
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
  v3 = [(ICScrollViewDelegateViewController *)self scrollView];
  if (v3)
  {
    v4 = [(ICScrollViewDelegateViewController *)self scrollViewResizer];
    if (v4)
    {
      v5 = v4;
      v6 = [(ICScrollViewDelegateViewController *)self scrollViewResizer];
      if ([v6 isAutoResizing])
      {

LABEL_9:
        goto LABEL_10;
      }

      if ([(ICScrollViewDelegateViewController *)self _appearState]== 2)
      {

LABEL_8:
        v5 = [(ICScrollViewDelegateViewController *)self scrollViewResizer];
        [v5 startAutoResizing];
        goto LABEL_9;
      }

      v7 = [(ICScrollViewDelegateViewController *)self _appearState];

      if (v7 == 1)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_10:
  if ([v3 contentInsetAdjustmentBehavior] == 2)
  {
    v8 = [(ICScrollViewDelegateViewController *)self scrollViewResizer];
    [(ICScrollViewDelegateViewController *)self topInsetForResizer:v8];
    v10 = v9;

    [v3 contentInset];
    if (vabdd_f64(v10, v11) >= 0.00999999978)
    {
      [v3 contentInset];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      [v3 verticalScrollIndicatorInsets];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      [v3 setContentInset:{v10, v13, v15, v17}];
      [v3 setVerticalScrollIndicatorInsets:{v10, v19, v21, v23}];
    }
  }
}

- (UIScrollView)keyboardResizerScrollView
{
  objc_opt_class();
  v3 = [(ICScrollViewDelegateViewController *)self scrollView];
  v4 = ICCheckedDynamicCast();

  return v4;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(ICScrollViewDelegateViewController *)self scrollViewResizer];
  [v5 stopAutoResizing];

  v6.receiver = self;
  v6.super_class = ICScrollViewDelegateViewController;
  [(ICScrollViewDelegateViewController *)&v6 viewWillDisappear:v3];
}

- (NotesBackgroundView)backgroundView
{
  objc_opt_class();
  v3 = [(ICScrollViewDelegateViewController *)self view];
  v4 = ICCheckedDynamicCast();

  return v4;
}

- (UIScrollView)scrollView
{
  IsTextKit2Enabled = ICInternalSettingsIsTextKit2Enabled();
  objc_opt_class();
  v4 = [(ICScrollViewDelegateViewController *)self backgroundView];
  v5 = [v4 contentView];
  v6 = v5;
  if (IsTextKit2Enabled)
  {
    v7 = [v5 subviews];
    v8 = [v7 firstObject];
    v9 = ICDynamicCast();
  }

  else
  {
    v9 = ICDynamicCast();
  }

  return v9;
}

- (double)consumedBottomAreaForResizer:(id)a3
{
  v4 = [(ICScrollViewDelegateViewController *)self scrollView];
  v5 = 0.0;
  if ([v4 contentInsetAdjustmentBehavior] == 2)
  {
    [(ICScrollViewDelegateViewController *)self ic_safeAreaDistanceFromBottom];
    v5 = v6;
  }

  return v5;
}

- (double)topInsetForResizer:(id)a3
{
  v4 = [(ICScrollViewDelegateViewController *)self scrollView];
  v5 = 0.0;
  if ([v4 contentInsetAdjustmentBehavior] == 2)
  {
    [(ICScrollViewDelegateViewController *)self ic_safeAreaDistanceFromTop];
    v5 = v6;
  }

  return v5;
}

@end