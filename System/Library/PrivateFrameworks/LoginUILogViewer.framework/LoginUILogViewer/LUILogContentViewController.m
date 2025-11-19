@interface LUILogContentViewController
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (LUILogContentViewControllerDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (UILabel)scrollIndicatorView;
- (_NSRange)_visibleRangeOfTextView:(id)a3;
- (id)_createLogLocatorView;
- (id)_createLogOptionsView;
- (id)_createLogTextView;
- (id)_dateWithPercentage:(double)a3;
- (id)_generateScreenshotItem;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_applyScreenShotAnimation;
- (void)_setupButtonActions;
- (void)_setupTextViewGesture;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)dealloc;
- (void)downArrowButtonTapped:(id)a3;
- (void)enableTimeConsumingOptions:(BOOL)a3;
- (void)handlePan:(id)a3;
- (void)loadView;
- (void)logOptionButtonTapped:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)screenshotButtonTapped:(id)a3;
- (void)showLogOptionsView;
- (void)showLogTextView;
- (void)showSpinner:(BOOL)a3;
- (void)upArrowButtonTapped:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation LUILogContentViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = LUILogContentViewController;
  [(LUILogContentViewController *)&v5 viewDidLoad];
  [(LUILogContentViewController *)self _setupButtonActions];
  [(LUILogContentViewController *)self showLogOptionsView];
  [(LUILogContentViewController *)self enableTimeConsumingOptions:0];
  v3 = objc_opt_new();
  [(LUILogContentViewController *)self setScreenshotItems:v3];

  [(LUILogContentViewController *)self screenshotItems];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "self.screenshotItems"];
  [(LUILogContentViewController *)self addObserver:self forKeyPath:v4 options:1 context:0];

  [(LUILogContentViewController *)self _setupTextViewGesture];
}

- (void)dealloc
{
  [(LUILogContentViewController *)self screenshotItems];

  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "self.screenshotItems"];
  [(LUILogContentViewController *)self removeObserver:self forKeyPath:v3];

  v4.receiver = self;
  v4.super_class = LUILogContentViewController;
  [(LUILogContentViewController *)&v4 dealloc];
}

- (void)loadView
{
  v18.receiver = self;
  v18.super_class = LUILogContentViewController;
  [(LUILogContentViewController *)&v18 loadView];
  v3 = [(LUILogContentViewController *)self _createLogTextView];
  textView = self->_textView;
  self->_textView = v3;

  v5 = objc_opt_new();
  textViewHolderView = self->_textViewHolderView;
  self->_textViewHolderView = v5;

  [(UIView *)self->_textViewHolderView frame];
  [(UITextView *)self->_textView setFrame:?];
  [(UITextView *)self->_textView setAutoresizingMask:18];
  [(UIView *)self->_textViewHolderView addSubview:self->_textView];
  v7 = [(LUILogContentViewController *)self _createLogOptionsView];
  logOptionsView = self->_logOptionsView;
  self->_logOptionsView = v7;

  v9 = [(LUILogContentViewController *)self _createLogLocatorView];
  logLocatorView = self->_logLocatorView;
  self->_logLocatorView = v9;

  v11 = [(LUILogContentViewController *)self view];
  [v11 frame];
  [(LUILogOptionsView *)self->_logOptionsView setFrame:?];

  [(LUILogOptionsView *)self->_logOptionsView setAutoresizingMask:18];
  v12 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  spinner = self->_spinner;
  self->_spinner = v12;

  v14 = [(LUILogContentViewController *)self view];
  [v14 addSubview:self->_spinner];

  v15 = [(LUILogContentViewController *)self view];
  [v15 addSubview:self->_textViewHolderView];

  v16 = [(LUILogContentViewController *)self view];
  [v16 addSubview:self->_logOptionsView];

  v17 = [(LUILogContentViewController *)self view];
  [v17 addSubview:self->_logLocatorView];
}

- (void)viewWillLayoutSubviews
{
  v37.receiver = self;
  v37.super_class = LUILogContentViewController;
  [(LUILogContentViewController *)&v37 viewWillLayoutSubviews];
  v3 = [MEMORY[0x277D75128] sharedApplication];
  v4 = [v3 delegate];
  v5 = [v4 window];
  v6 = [v5 windowScene];
  v7 = [v6 interfaceOrientation];

  v8 = [(LUILogContentViewController *)self view];
  [v8 frame];
  Width = CGRectGetWidth(v38);
  v10 = [(LUILogContentViewController *)self view];
  [v10 frame];
  if ((v7 - 1) > 1)
  {
    Height = CGRectGetHeight(*&v11);
    v28 = [(LUILogContentViewController *)self textViewHolderView];
    [v28 setFrame:{0.0, 0.0, Width + -150.0 + -10.0, Height}];

    v17 = [(LUILogContentViewController *)self textViewHolderView];
    [v17 frame];
    v29 = CGRectGetMaxX(v41) + 10.0;
    v19 = [(LUILogContentViewController *)self view];
    [v19 frame];
    v30 = CGRectGetHeight(v42);
    v21 = [(LUILogContentViewController *)self logLocatorView];
    v22 = v21;
    v26 = 150.0;
    v25 = 0.0;
    v24 = v29;
    v23 = v30;
  }

  else
  {
    v15 = CGRectGetHeight(*&v11) + -150.0 + -10.0;
    v16 = [(LUILogContentViewController *)self textViewHolderView];
    [v16 setFrame:{0.0, 0.0, Width, v15}];

    v17 = [(LUILogContentViewController *)self textViewHolderView];
    [v17 frame];
    v18 = CGRectGetMaxY(v39) + 10.0;
    v19 = [(LUILogContentViewController *)self view];
    [v19 frame];
    v20 = CGRectGetWidth(v40);
    v21 = [(LUILogContentViewController *)self logLocatorView];
    v22 = v21;
    v23 = 150.0;
    v24 = 0.0;
    v25 = v18;
    v26 = v20;
  }

  [v21 setFrame:{v24, v25, v26, v23}];

  v31 = [(LUILogContentViewController *)self textViewHolderView];
  [v31 center];
  v33 = v32;
  v35 = v34;
  v36 = [(LUILogContentViewController *)self spinner];
  [v36 setCenter:{v33, v35}];
}

- (void)_setupButtonActions
{
  v3 = [(LUILogContentViewController *)self logOptionsView];
  v4 = [v3 tenMinutesLogButton];
  [v4 addTarget:self action:sel_logOptionButtonTapped_ forControlEvents:64];

  v5 = [(LUILogContentViewController *)self logOptionsView];
  v6 = [v5 halfHourButton];
  [v6 addTarget:self action:sel_logOptionButtonTapped_ forControlEvents:64];

  v7 = [(LUILogContentViewController *)self logOptionsView];
  v8 = [v7 hourButton];
  [v8 addTarget:self action:sel_logOptionButtonTapped_ forControlEvents:64];

  v9 = [(LUILogContentViewController *)self logOptionsView];
  v10 = [v9 lastDayButton];
  [v10 addTarget:self action:sel_logOptionButtonTapped_ forControlEvents:64];

  v11 = [(LUILogContentViewController *)self logOptionsView];
  v12 = [v11 streamButton];
  [v12 addTarget:self action:sel_logOptionButtonTapped_ forControlEvents:64];

  v13 = [(LUILogContentViewController *)self logLocatorView];
  v14 = [v13 screenshotButton];
  [v14 addTarget:self action:sel_screenshotButtonTapped_ forControlEvents:64];

  v15 = [(LUILogContentViewController *)self logLocatorView];
  v16 = [v15 upArrowButton];
  [v16 addTarget:self action:sel_upArrowButtonTapped_ forControlEvents:64];

  v18 = [(LUILogContentViewController *)self logLocatorView];
  v17 = [v18 downArrowButton];
  [v17 addTarget:self action:sel_downArrowButtonTapped_ forControlEvents:64];
}

- (void)_setupTextViewGesture
{
  v3 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_handlePan_];
  [(LUILogContentViewController *)self setPanGesture:v3];

  v4 = [(LUILogContentViewController *)self textView];
  v5 = [(LUILogContentViewController *)self panGesture];
  [v4 addGestureRecognizer:v5];

  v6 = [(LUILogContentViewController *)self panGesture];
  [v6 setDelegate:self];
}

- (void)showLogOptionsView
{
  v3 = [(LUILogContentViewController *)self logOptionsView];
  [v3 setAlpha:1.0];

  v4 = [(LUILogContentViewController *)self textViewHolderView];
  [v4 setAlpha:0.0];

  v5 = [(LUILogContentViewController *)self logLocatorView];
  [v5 setAlpha:0.0];
}

- (void)showLogTextView
{
  v3 = [(LUILogContentViewController *)self logOptionsView];
  [v3 setAlpha:0.0];

  v4 = [(LUILogContentViewController *)self textViewHolderView];
  [v4 setAlpha:1.0];

  v5 = [(LUILogContentViewController *)self logLocatorView];
  [v5 setAlpha:1.0];
}

- (void)enableTimeConsumingOptions:(BOOL)a3
{
  v3 = a3;
  v5 = [(LUILogContentViewController *)self logOptionsView];
  v6 = [v5 hourButton];
  [v6 setEnabled:v3];

  v8 = [(LUILogContentViewController *)self logOptionsView];
  v7 = [v8 lastDayButton];
  [v7 setEnabled:v3];
}

- (void)showSpinner:(BOOL)a3
{
  v3 = a3;
  v4 = [(LUILogContentViewController *)self spinner];
  v5 = v4;
  if (v3)
  {
    [v4 startAnimating];
  }

  else
  {
    [v4 stopAnimating];
  }
}

- (id)_createLogOptionsView
{
  v2 = objc_opt_new();

  return v2;
}

- (id)_createLogTextView
{
  v2 = objc_opt_new();
  [v2 setEditable:0];
  v3 = [MEMORY[0x277D75348] whiteColor];
  [v2 setTextColor:v3];

  [v2 setIndicatorStyle:2];
  v4 = [MEMORY[0x277D75348] clearColor];
  [v2 setBackgroundColor:v4];

  v5 = [v2 layoutManager];
  [v5 setAllowsNonContiguousLayout:1];

  return v2;
}

- (id)_createLogLocatorView
{
  v3 = objc_opt_new();
  v4 = [v3 screenshotCollectionView];
  [v4 setDelegate:self];

  v5 = [v3 screenshotCollectionView];
  [v5 setDataSource:self];

  return v3;
}

- (id)_dateWithPercentage:(double)a3
{
  v5 = [(LUILogContentViewController *)self delegate];
  v6 = [v5 logContentViewControllerLogStartDate:self];

  v7 = [(LUILogContentViewController *)self delegate];
  v8 = [v7 logContentViewControllerLogEndDate:self];

  [v8 timeIntervalSinceDate:v6];
  *&v9 = v9 * a3;
  v10 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v6 sinceDate:roundf(*&v9)];

  return v10;
}

- (UILabel)scrollIndicatorView
{
  scrollIndicatorView = self->_scrollIndicatorView;
  if (!scrollIndicatorView)
  {
    v4 = objc_opt_new();
    [(UILabel *)v4 setClipsToBounds:1];
    v5 = [(UILabel *)v4 layer];
    [v5 setCornerRadius:5.0];

    v6 = [MEMORY[0x277D75348] whiteColor];
    v7 = [v6 colorWithAlphaComponent:0.699999988];
    [(UILabel *)v4 setBackgroundColor:v7];

    v8 = [MEMORY[0x277D75348] darkGrayColor];
    [(UILabel *)v4 setTextColor:v8];

    v9 = self->_scrollIndicatorView;
    self->_scrollIndicatorView = v4;

    scrollIndicatorView = self->_scrollIndicatorView;
  }

  return scrollIndicatorView;
}

- (id)_generateScreenshotItem
{
  v3 = objc_opt_new();
  v4 = [(LUILogContentViewController *)self textViewHolderView];
  [v4 bounds];
  v15.width = v5;
  v15.height = v6;
  UIGraphicsBeginImageContextWithOptions(v15, 1, 0.0);
  v7 = [v4 layer];
  [v7 renderInContext:UIGraphicsGetCurrentContext()];

  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [v3 setScreenshotImage:v8];
  v9 = [(LUILogContentViewController *)self textView];
  v10 = [(LUILogContentViewController *)self _visibleRangeOfTextView:v9];
  [v3 setVisibleRange:{v10, v11}];

  v12 = objc_opt_new();
  [v3 setScreenshotDate:v12];

  return v3;
}

- (_NSRange)_visibleRangeOfTextView:(id)a3
{
  v3 = a3;
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [v3 characterRangeAtPoint:?];
  v13 = [v12 start];

  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  MaxX = CGRectGetMaxX(v23);
  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  v15 = [v3 characterRangeAtPoint:{MaxX, CGRectGetMaxY(v24) + -10.0}];
  v16 = [v15 end];

  v17 = [v3 beginningOfDocument];
  v18 = [v3 offsetFromPosition:v17 toPosition:v13];
  v19 = [v3 offsetFromPosition:v13 toPosition:v16];

  v20 = v18;
  v21 = v19;
  result.length = v21;
  result.location = v20;
  return result;
}

- (void)_applyScreenShotAnimation
{
  v2 = [(LUILogContentViewController *)self textViewHolderView];
  CGAffineTransformMakeScale(&v8, 1.2, 1.2);
  v7 = v8;
  [v2 setTransform:&v7];
  v3 = MEMORY[0x277D75D18];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__LUILogContentViewController__applyScreenShotAnimation__block_invoke;
  v5[3] = &unk_2798284C0;
  v6 = v2;
  v4 = v2;
  [v3 animateWithDuration:0 delay:v5 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:0.8 completion:1.0];
}

uint64_t __56__LUILogContentViewController__applyScreenShotAnimation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v4[0] = *MEMORY[0x277CBF2C0];
  v4[1] = v2;
  v4[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [v1 setTransform:v4];
}

- (void)logOptionButtonTapped:(id)a3
{
  v15 = a3;
  v4 = [(LUILogContentViewController *)self logOptionsView];
  v5 = [v4 tenMinutesLogButton];

  if (v5 == v15)
  {
    v13 = 600.0;
  }

  else
  {
    v6 = [(LUILogContentViewController *)self logOptionsView];
    v7 = [v6 halfHourButton];

    if (v7 == v15)
    {
      v13 = 1800.0;
    }

    else
    {
      v8 = [(LUILogContentViewController *)self logOptionsView];
      v9 = [v8 hourButton];

      if (v9 == v15)
      {
        v13 = 3600.0;
      }

      else
      {
        v10 = [(LUILogContentViewController *)self logOptionsView];
        v11 = [v10 lastDayButton];

        if (v11 == v15)
        {
          v13 = 86400.0;
        }

        else
        {
          v12 = [(LUILogContentViewController *)self logOptionsView];
          [v12 streamButton];

          v13 = 0.0;
        }
      }
    }
  }

  v14 = [(LUILogContentViewController *)self delegate];
  [v14 logContentViewController:self didSelectLogOptionWithTimeInterval:v13];
}

- (void)screenshotButtonTapped:(id)a3
{
  v6 = [(LUILogContentViewController *)self _generateScreenshotItem];
  v4 = [(LUILogContentViewController *)self screenshotItems];
  v5 = [v4 arrayByAddingObject:v6];
  [(LUILogContentViewController *)self setScreenshotItems:v5];

  [(LUILogContentViewController *)self _applyScreenShotAnimation];
}

- (void)upArrowButtonTapped:(id)a3
{
  v3 = [(LUILogContentViewController *)self textView];
  [v3 scrollRangeToVisible:{0, 0}];
}

- (void)downArrowButtonTapped:(id)a3
{
  v6 = [(LUILogContentViewController *)self textView];
  v4 = [(LUILogContentViewController *)self textView];
  v5 = [v4 text];
  [v6 scrollRangeToVisible:{objc_msgSend(v5, "lengthOfBytesUsingEncoding:", 4) - 1, 0}];
}

- (void)handlePan:(id)a3
{
  v4 = a3;
  v5 = [(LUILogContentViewController *)self textViewHolderView];
  [v4 locationInView:v5];
  v7 = v6;
  v9 = v8;

  v10 = [(LUILogContentViewController *)self textViewHolderView];
  [v10 frame];
  v11 = CGRectGetWidth(v38) + -50.0;
  v12 = [(LUILogContentViewController *)self textViewHolderView];
  [v12 frame];
  Height = CGRectGetHeight(v39);

  v14 = [(LUILogContentViewController *)self textViewHolderView];
  [v14 frame];
  v15 = (v9 + -12.0) / (CGRectGetHeight(v40) + -24.0);

  v16 = 0.0;
  if (v15 >= 0.0)
  {
    v16 = v15;
  }

  v17 = fmin(v16, 1.0);
  v18 = [v4 state];

  if ((v18 - 3) >= 3)
  {
    if (v18 != 2)
    {
      if (v18 != 1)
      {
        return;
      }

      v21 = [(LUILogContentViewController *)self textViewHolderView];
      v22 = [(LUILogContentViewController *)self scrollIndicatorView];
      [v21 addSubview:v22];

      v23 = [(LUILogContentViewController *)self textViewHolderView];
      v24 = [(LUILogContentViewController *)self scrollIndicatorView];
      [v23 bringSubviewToFront:v24];
    }

    v42.size.width = 50.0;
    v42.origin.y = 0.0;
    v42.origin.x = v11;
    v42.size.height = Height;
    v37.x = v7;
    v37.y = v9;
    v25 = CGRectContainsPoint(v42, v37);
    v26 = [(LUILogContentViewController *)self scrollIndicatorView];
    v34 = v26;
    if (!v25)
    {
      [v26 setAlpha:0.0];
      goto LABEL_14;
    }

    [v26 setAlpha:1.0];

    v34 = [(LUILogContentViewController *)self _dateWithPercentage:v17];
    v20 = secondStringWithDate(v34);
    v27 = [(LUILogContentViewController *)self scrollIndicatorView];
    [v27 setText:v20];

    v28 = [(LUILogContentViewController *)self scrollIndicatorView];
    [v28 sizeToFit];

    v29 = [(LUILogContentViewController *)self textViewHolderView];
    [v29 frame];
    v30 = CGRectGetWidth(v43) + -50.0;
    v31 = [(LUILogContentViewController *)self scrollIndicatorView];
    [v31 frame];
    v32 = v30 + CGRectGetWidth(v44) * -0.5;
    v33 = [(LUILogContentViewController *)self scrollIndicatorView];
    [v33 setCenter:{v32, v9}];
  }

  else
  {
    v19 = [(LUILogContentViewController *)self scrollIndicatorView];
    [v19 removeFromSuperview];

    v41.size.width = 50.0;
    v41.origin.y = 0.0;
    v41.origin.x = v11;
    v41.size.height = Height;
    v36.x = v7;
    v36.y = v9;
    if (!CGRectContainsPoint(v41, v36))
    {
      return;
    }

    v34 = [(LUILogContentViewController *)self delegate];
    v20 = [(LUILogContentViewController *)self _dateWithPercentage:v17];
    [v34 logContentViewController:self didSelectDateForLog:v20];
  }

LABEL_14:
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(LUILogContentViewController *)self textViewHolderView];
  [v4 locationInView:v5];
  v7 = v6;

  v8 = [(LUILogContentViewController *)self textViewHolderView];
  [v8 frame];
  v9 = CGRectGetWidth(v19) - v7;

  v10 = [(LUILogContentViewController *)self textViewHolderView];
  [v4 velocityInView:v10];
  v12 = v11;
  v14 = v13;

  if (v9 >= 50.0 || fabs(v14) <= fabs(v12))
  {
    return 0;
  }

  v15 = [(LUILogContentViewController *)self textView];
  v16 = [v15 text];
  v17 = v16 != 0;

  return v17;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v7 = a3;
  [(LUILogContentViewController *)self screenshotItems];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "self.screenshotItems"];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    v11 = [(LUILogContentViewController *)self logLocatorView];
    v10 = [v11 screenshotCollectionView];
    [v10 reloadData];
  }
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v4 = [(LUILogContentViewController *)self screenshotItems:a3];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 dequeueReusableCellWithReuseIdentifier:@"screenshotCell" forIndexPath:v7];
  if (collectionView_cellForItemAtIndexPath__onceToken != -1)
  {
    [LUILogContentViewController collectionView:cellForItemAtIndexPath:];
  }

  v9 = [(LUILogContentViewController *)self screenshotItems];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v7, "row")}];

  v11 = collectionView_cellForItemAtIndexPath__formatter;
  v12 = [v10 screenshotDate];
  v13 = [v11 stringFromDate:v12];

  v14 = [v10 screenshotImage];
  v15 = [v8 screenshotImageView];
  [v15 setImage:v14];

  v16 = [v8 screenshotDateLabel];
  [v16 setText:v13];

  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __69__LUILogContentViewController_collectionView_cellForItemAtIndexPath___block_invoke_2;
  v19[3] = &unk_279828758;
  objc_copyWeak(&v21, &location);
  v17 = v10;
  v20 = v17;
  [v8 setClearButtonAction:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v8;
}

uint64_t __69__LUILogContentViewController_collectionView_cellForItemAtIndexPath___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = collectionView_cellForItemAtIndexPath__formatter;
  collectionView_cellForItemAtIndexPath__formatter = v0;

  v2 = collectionView_cellForItemAtIndexPath__formatter;

  return [v2 setDateFormat:@"HH:mm:ss.SSS"];
}

void __69__LUILogContentViewController_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained screenshotItems];
  v3 = [v2 mutableCopy];

  [v3 removeObject:*(a1 + 32)];
  v4 = [v3 copy];
  [WeakRetained setScreenshotItems:v4];
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(LUILogContentViewController *)self screenshotItems];
  v12 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "row")}];

  v9 = [(LUILogContentViewController *)self textView];
  v10 = [v12 visibleRange];
  [v9 scrollRangeToVisible:{v10, v11}];

  [v7 deselectItemAtIndexPath:v6 animated:0];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v5 = 130.0;
  v6 = 130.0;
  result.height = v6;
  result.width = v5;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v5 = 0.0;
  v6 = 10.0;
  v7 = 0.0;
  v8 = 10.0;
  result.right = v8;
  result.bottom = v7;
  result.left = v6;
  result.top = v5;
  return result;
}

- (LUILogContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end