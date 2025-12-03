@interface LUILogContentViewController
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (LUILogContentViewControllerDelegate)delegate;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (UILabel)scrollIndicatorView;
- (_NSRange)_visibleRangeOfTextView:(id)view;
- (id)_createLogLocatorView;
- (id)_createLogOptionsView;
- (id)_createLogTextView;
- (id)_dateWithPercentage:(double)percentage;
- (id)_generateScreenshotItem;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_applyScreenShotAnimation;
- (void)_setupButtonActions;
- (void)_setupTextViewGesture;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)downArrowButtonTapped:(id)tapped;
- (void)enableTimeConsumingOptions:(BOOL)options;
- (void)handlePan:(id)pan;
- (void)loadView;
- (void)logOptionButtonTapped:(id)tapped;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)screenshotButtonTapped:(id)tapped;
- (void)showLogOptionsView;
- (void)showLogTextView;
- (void)showSpinner:(BOOL)spinner;
- (void)upArrowButtonTapped:(id)tapped;
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
  _createLogTextView = [(LUILogContentViewController *)self _createLogTextView];
  textView = self->_textView;
  self->_textView = _createLogTextView;

  v5 = objc_opt_new();
  textViewHolderView = self->_textViewHolderView;
  self->_textViewHolderView = v5;

  [(UIView *)self->_textViewHolderView frame];
  [(UITextView *)self->_textView setFrame:?];
  [(UITextView *)self->_textView setAutoresizingMask:18];
  [(UIView *)self->_textViewHolderView addSubview:self->_textView];
  _createLogOptionsView = [(LUILogContentViewController *)self _createLogOptionsView];
  logOptionsView = self->_logOptionsView;
  self->_logOptionsView = _createLogOptionsView;

  _createLogLocatorView = [(LUILogContentViewController *)self _createLogLocatorView];
  logLocatorView = self->_logLocatorView;
  self->_logLocatorView = _createLogLocatorView;

  view = [(LUILogContentViewController *)self view];
  [view frame];
  [(LUILogOptionsView *)self->_logOptionsView setFrame:?];

  [(LUILogOptionsView *)self->_logOptionsView setAutoresizingMask:18];
  v12 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
  spinner = self->_spinner;
  self->_spinner = v12;

  view2 = [(LUILogContentViewController *)self view];
  [view2 addSubview:self->_spinner];

  view3 = [(LUILogContentViewController *)self view];
  [view3 addSubview:self->_textViewHolderView];

  view4 = [(LUILogContentViewController *)self view];
  [view4 addSubview:self->_logOptionsView];

  view5 = [(LUILogContentViewController *)self view];
  [view5 addSubview:self->_logLocatorView];
}

- (void)viewWillLayoutSubviews
{
  v37.receiver = self;
  v37.super_class = LUILogContentViewController;
  [(LUILogContentViewController *)&v37 viewWillLayoutSubviews];
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  delegate = [mEMORY[0x277D75128] delegate];
  window = [delegate window];
  windowScene = [window windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  view = [(LUILogContentViewController *)self view];
  [view frame];
  Width = CGRectGetWidth(v38);
  view2 = [(LUILogContentViewController *)self view];
  [view2 frame];
  if ((interfaceOrientation - 1) > 1)
  {
    Height = CGRectGetHeight(*&v11);
    textViewHolderView = [(LUILogContentViewController *)self textViewHolderView];
    [textViewHolderView setFrame:{0.0, 0.0, Width + -150.0 + -10.0, Height}];

    textViewHolderView2 = [(LUILogContentViewController *)self textViewHolderView];
    [textViewHolderView2 frame];
    v29 = CGRectGetMaxX(v41) + 10.0;
    view3 = [(LUILogContentViewController *)self view];
    [view3 frame];
    v30 = CGRectGetHeight(v42);
    logLocatorView = [(LUILogContentViewController *)self logLocatorView];
    v22 = logLocatorView;
    v26 = 150.0;
    v25 = 0.0;
    v24 = v29;
    v23 = v30;
  }

  else
  {
    v15 = CGRectGetHeight(*&v11) + -150.0 + -10.0;
    textViewHolderView3 = [(LUILogContentViewController *)self textViewHolderView];
    [textViewHolderView3 setFrame:{0.0, 0.0, Width, v15}];

    textViewHolderView2 = [(LUILogContentViewController *)self textViewHolderView];
    [textViewHolderView2 frame];
    v18 = CGRectGetMaxY(v39) + 10.0;
    view3 = [(LUILogContentViewController *)self view];
    [view3 frame];
    v20 = CGRectGetWidth(v40);
    logLocatorView = [(LUILogContentViewController *)self logLocatorView];
    v22 = logLocatorView;
    v23 = 150.0;
    v24 = 0.0;
    v25 = v18;
    v26 = v20;
  }

  [logLocatorView setFrame:{v24, v25, v26, v23}];

  textViewHolderView4 = [(LUILogContentViewController *)self textViewHolderView];
  [textViewHolderView4 center];
  v33 = v32;
  v35 = v34;
  spinner = [(LUILogContentViewController *)self spinner];
  [spinner setCenter:{v33, v35}];
}

- (void)_setupButtonActions
{
  logOptionsView = [(LUILogContentViewController *)self logOptionsView];
  tenMinutesLogButton = [logOptionsView tenMinutesLogButton];
  [tenMinutesLogButton addTarget:self action:sel_logOptionButtonTapped_ forControlEvents:64];

  logOptionsView2 = [(LUILogContentViewController *)self logOptionsView];
  halfHourButton = [logOptionsView2 halfHourButton];
  [halfHourButton addTarget:self action:sel_logOptionButtonTapped_ forControlEvents:64];

  logOptionsView3 = [(LUILogContentViewController *)self logOptionsView];
  hourButton = [logOptionsView3 hourButton];
  [hourButton addTarget:self action:sel_logOptionButtonTapped_ forControlEvents:64];

  logOptionsView4 = [(LUILogContentViewController *)self logOptionsView];
  lastDayButton = [logOptionsView4 lastDayButton];
  [lastDayButton addTarget:self action:sel_logOptionButtonTapped_ forControlEvents:64];

  logOptionsView5 = [(LUILogContentViewController *)self logOptionsView];
  streamButton = [logOptionsView5 streamButton];
  [streamButton addTarget:self action:sel_logOptionButtonTapped_ forControlEvents:64];

  logLocatorView = [(LUILogContentViewController *)self logLocatorView];
  screenshotButton = [logLocatorView screenshotButton];
  [screenshotButton addTarget:self action:sel_screenshotButtonTapped_ forControlEvents:64];

  logLocatorView2 = [(LUILogContentViewController *)self logLocatorView];
  upArrowButton = [logLocatorView2 upArrowButton];
  [upArrowButton addTarget:self action:sel_upArrowButtonTapped_ forControlEvents:64];

  logLocatorView3 = [(LUILogContentViewController *)self logLocatorView];
  downArrowButton = [logLocatorView3 downArrowButton];
  [downArrowButton addTarget:self action:sel_downArrowButtonTapped_ forControlEvents:64];
}

- (void)_setupTextViewGesture
{
  v3 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel_handlePan_];
  [(LUILogContentViewController *)self setPanGesture:v3];

  textView = [(LUILogContentViewController *)self textView];
  panGesture = [(LUILogContentViewController *)self panGesture];
  [textView addGestureRecognizer:panGesture];

  panGesture2 = [(LUILogContentViewController *)self panGesture];
  [panGesture2 setDelegate:self];
}

- (void)showLogOptionsView
{
  logOptionsView = [(LUILogContentViewController *)self logOptionsView];
  [logOptionsView setAlpha:1.0];

  textViewHolderView = [(LUILogContentViewController *)self textViewHolderView];
  [textViewHolderView setAlpha:0.0];

  logLocatorView = [(LUILogContentViewController *)self logLocatorView];
  [logLocatorView setAlpha:0.0];
}

- (void)showLogTextView
{
  logOptionsView = [(LUILogContentViewController *)self logOptionsView];
  [logOptionsView setAlpha:0.0];

  textViewHolderView = [(LUILogContentViewController *)self textViewHolderView];
  [textViewHolderView setAlpha:1.0];

  logLocatorView = [(LUILogContentViewController *)self logLocatorView];
  [logLocatorView setAlpha:1.0];
}

- (void)enableTimeConsumingOptions:(BOOL)options
{
  optionsCopy = options;
  logOptionsView = [(LUILogContentViewController *)self logOptionsView];
  hourButton = [logOptionsView hourButton];
  [hourButton setEnabled:optionsCopy];

  logOptionsView2 = [(LUILogContentViewController *)self logOptionsView];
  lastDayButton = [logOptionsView2 lastDayButton];
  [lastDayButton setEnabled:optionsCopy];
}

- (void)showSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  spinner = [(LUILogContentViewController *)self spinner];
  v5 = spinner;
  if (spinnerCopy)
  {
    [spinner startAnimating];
  }

  else
  {
    [spinner stopAnimating];
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
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v2 setTextColor:whiteColor];

  [v2 setIndicatorStyle:2];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v2 setBackgroundColor:clearColor];

  layoutManager = [v2 layoutManager];
  [layoutManager setAllowsNonContiguousLayout:1];

  return v2;
}

- (id)_createLogLocatorView
{
  v3 = objc_opt_new();
  screenshotCollectionView = [v3 screenshotCollectionView];
  [screenshotCollectionView setDelegate:self];

  screenshotCollectionView2 = [v3 screenshotCollectionView];
  [screenshotCollectionView2 setDataSource:self];

  return v3;
}

- (id)_dateWithPercentage:(double)percentage
{
  delegate = [(LUILogContentViewController *)self delegate];
  v6 = [delegate logContentViewControllerLogStartDate:self];

  delegate2 = [(LUILogContentViewController *)self delegate];
  v8 = [delegate2 logContentViewControllerLogEndDate:self];

  [v8 timeIntervalSinceDate:v6];
  *&v9 = v9 * percentage;
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
    layer = [(UILabel *)v4 layer];
    [layer setCornerRadius:5.0];

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    v7 = [whiteColor colorWithAlphaComponent:0.699999988];
    [(UILabel *)v4 setBackgroundColor:v7];

    darkGrayColor = [MEMORY[0x277D75348] darkGrayColor];
    [(UILabel *)v4 setTextColor:darkGrayColor];

    v9 = self->_scrollIndicatorView;
    self->_scrollIndicatorView = v4;

    scrollIndicatorView = self->_scrollIndicatorView;
  }

  return scrollIndicatorView;
}

- (id)_generateScreenshotItem
{
  v3 = objc_opt_new();
  textViewHolderView = [(LUILogContentViewController *)self textViewHolderView];
  [textViewHolderView bounds];
  v15.width = v5;
  v15.height = v6;
  UIGraphicsBeginImageContextWithOptions(v15, 1, 0.0);
  layer = [textViewHolderView layer];
  [layer renderInContext:UIGraphicsGetCurrentContext()];

  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [v3 setScreenshotImage:v8];
  textView = [(LUILogContentViewController *)self textView];
  v10 = [(LUILogContentViewController *)self _visibleRangeOfTextView:textView];
  [v3 setVisibleRange:{v10, v11}];

  v12 = objc_opt_new();
  [v3 setScreenshotDate:v12];

  return v3;
}

- (_NSRange)_visibleRangeOfTextView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [viewCopy characterRangeAtPoint:?];
  start = [v12 start];

  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  MaxX = CGRectGetMaxX(v23);
  v24.origin.x = v5;
  v24.origin.y = v7;
  v24.size.width = v9;
  v24.size.height = v11;
  v15 = [viewCopy characterRangeAtPoint:{MaxX, CGRectGetMaxY(v24) + -10.0}];
  v16 = [v15 end];

  beginningOfDocument = [viewCopy beginningOfDocument];
  v18 = [viewCopy offsetFromPosition:beginningOfDocument toPosition:start];
  v19 = [viewCopy offsetFromPosition:start toPosition:v16];

  v20 = v18;
  v21 = v19;
  result.length = v21;
  result.location = v20;
  return result;
}

- (void)_applyScreenShotAnimation
{
  textViewHolderView = [(LUILogContentViewController *)self textViewHolderView];
  CGAffineTransformMakeScale(&v8, 1.2, 1.2);
  v7 = v8;
  [textViewHolderView setTransform:&v7];
  v3 = MEMORY[0x277D75D18];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__LUILogContentViewController__applyScreenShotAnimation__block_invoke;
  v5[3] = &unk_2798284C0;
  v6 = textViewHolderView;
  v4 = textViewHolderView;
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

- (void)logOptionButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  logOptionsView = [(LUILogContentViewController *)self logOptionsView];
  tenMinutesLogButton = [logOptionsView tenMinutesLogButton];

  if (tenMinutesLogButton == tappedCopy)
  {
    v13 = 600.0;
  }

  else
  {
    logOptionsView2 = [(LUILogContentViewController *)self logOptionsView];
    halfHourButton = [logOptionsView2 halfHourButton];

    if (halfHourButton == tappedCopy)
    {
      v13 = 1800.0;
    }

    else
    {
      logOptionsView3 = [(LUILogContentViewController *)self logOptionsView];
      hourButton = [logOptionsView3 hourButton];

      if (hourButton == tappedCopy)
      {
        v13 = 3600.0;
      }

      else
      {
        logOptionsView4 = [(LUILogContentViewController *)self logOptionsView];
        lastDayButton = [logOptionsView4 lastDayButton];

        if (lastDayButton == tappedCopy)
        {
          v13 = 86400.0;
        }

        else
        {
          logOptionsView5 = [(LUILogContentViewController *)self logOptionsView];
          [logOptionsView5 streamButton];

          v13 = 0.0;
        }
      }
    }
  }

  delegate = [(LUILogContentViewController *)self delegate];
  [delegate logContentViewController:self didSelectLogOptionWithTimeInterval:v13];
}

- (void)screenshotButtonTapped:(id)tapped
{
  _generateScreenshotItem = [(LUILogContentViewController *)self _generateScreenshotItem];
  screenshotItems = [(LUILogContentViewController *)self screenshotItems];
  v5 = [screenshotItems arrayByAddingObject:_generateScreenshotItem];
  [(LUILogContentViewController *)self setScreenshotItems:v5];

  [(LUILogContentViewController *)self _applyScreenShotAnimation];
}

- (void)upArrowButtonTapped:(id)tapped
{
  textView = [(LUILogContentViewController *)self textView];
  [textView scrollRangeToVisible:{0, 0}];
}

- (void)downArrowButtonTapped:(id)tapped
{
  textView = [(LUILogContentViewController *)self textView];
  textView2 = [(LUILogContentViewController *)self textView];
  text = [textView2 text];
  [textView scrollRangeToVisible:{objc_msgSend(text, "lengthOfBytesUsingEncoding:", 4) - 1, 0}];
}

- (void)handlePan:(id)pan
{
  panCopy = pan;
  textViewHolderView = [(LUILogContentViewController *)self textViewHolderView];
  [panCopy locationInView:textViewHolderView];
  v7 = v6;
  v9 = v8;

  textViewHolderView2 = [(LUILogContentViewController *)self textViewHolderView];
  [textViewHolderView2 frame];
  v11 = CGRectGetWidth(v38) + -50.0;
  textViewHolderView3 = [(LUILogContentViewController *)self textViewHolderView];
  [textViewHolderView3 frame];
  Height = CGRectGetHeight(v39);

  textViewHolderView4 = [(LUILogContentViewController *)self textViewHolderView];
  [textViewHolderView4 frame];
  v15 = (v9 + -12.0) / (CGRectGetHeight(v40) + -24.0);

  v16 = 0.0;
  if (v15 >= 0.0)
  {
    v16 = v15;
  }

  v17 = fmin(v16, 1.0);
  state = [panCopy state];

  if ((state - 3) >= 3)
  {
    if (state != 2)
    {
      if (state != 1)
      {
        return;
      }

      textViewHolderView5 = [(LUILogContentViewController *)self textViewHolderView];
      scrollIndicatorView = [(LUILogContentViewController *)self scrollIndicatorView];
      [textViewHolderView5 addSubview:scrollIndicatorView];

      textViewHolderView6 = [(LUILogContentViewController *)self textViewHolderView];
      scrollIndicatorView2 = [(LUILogContentViewController *)self scrollIndicatorView];
      [textViewHolderView6 bringSubviewToFront:scrollIndicatorView2];
    }

    v42.size.width = 50.0;
    v42.origin.y = 0.0;
    v42.origin.x = v11;
    v42.size.height = Height;
    v37.x = v7;
    v37.y = v9;
    v25 = CGRectContainsPoint(v42, v37);
    scrollIndicatorView3 = [(LUILogContentViewController *)self scrollIndicatorView];
    delegate = scrollIndicatorView3;
    if (!v25)
    {
      [scrollIndicatorView3 setAlpha:0.0];
      goto LABEL_14;
    }

    [scrollIndicatorView3 setAlpha:1.0];

    delegate = [(LUILogContentViewController *)self _dateWithPercentage:v17];
    v20 = secondStringWithDate(delegate);
    scrollIndicatorView4 = [(LUILogContentViewController *)self scrollIndicatorView];
    [scrollIndicatorView4 setText:v20];

    scrollIndicatorView5 = [(LUILogContentViewController *)self scrollIndicatorView];
    [scrollIndicatorView5 sizeToFit];

    textViewHolderView7 = [(LUILogContentViewController *)self textViewHolderView];
    [textViewHolderView7 frame];
    v30 = CGRectGetWidth(v43) + -50.0;
    scrollIndicatorView6 = [(LUILogContentViewController *)self scrollIndicatorView];
    [scrollIndicatorView6 frame];
    v32 = v30 + CGRectGetWidth(v44) * -0.5;
    scrollIndicatorView7 = [(LUILogContentViewController *)self scrollIndicatorView];
    [scrollIndicatorView7 setCenter:{v32, v9}];
  }

  else
  {
    scrollIndicatorView8 = [(LUILogContentViewController *)self scrollIndicatorView];
    [scrollIndicatorView8 removeFromSuperview];

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

    delegate = [(LUILogContentViewController *)self delegate];
    v20 = [(LUILogContentViewController *)self _dateWithPercentage:v17];
    [delegate logContentViewController:self didSelectDateForLog:v20];
  }

LABEL_14:
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  textViewHolderView = [(LUILogContentViewController *)self textViewHolderView];
  [beginCopy locationInView:textViewHolderView];
  v7 = v6;

  textViewHolderView2 = [(LUILogContentViewController *)self textViewHolderView];
  [textViewHolderView2 frame];
  v9 = CGRectGetWidth(v19) - v7;

  textViewHolderView3 = [(LUILogContentViewController *)self textViewHolderView];
  [beginCopy velocityInView:textViewHolderView3];
  v12 = v11;
  v14 = v13;

  if (v9 >= 50.0 || fabs(v14) <= fabs(v12))
  {
    return 0;
  }

  textView = [(LUILogContentViewController *)self textView];
  text = [textView text];
  v17 = text != 0;

  return v17;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  [(LUILogContentViewController *)self screenshotItems];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s", "self.screenshotItems"];
  v9 = [pathCopy isEqualToString:v8];

  if (v9)
  {
    logLocatorView = [(LUILogContentViewController *)self logLocatorView];
    screenshotCollectionView = [logLocatorView screenshotCollectionView];
    [screenshotCollectionView reloadData];
  }
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v4 = [(LUILogContentViewController *)self screenshotItems:view];
  v5 = [v4 count];

  return v5;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"screenshotCell" forIndexPath:pathCopy];
  if (collectionView_cellForItemAtIndexPath__onceToken != -1)
  {
    [LUILogContentViewController collectionView:cellForItemAtIndexPath:];
  }

  screenshotItems = [(LUILogContentViewController *)self screenshotItems];
  v10 = [screenshotItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  v11 = collectionView_cellForItemAtIndexPath__formatter;
  screenshotDate = [v10 screenshotDate];
  v13 = [v11 stringFromDate:screenshotDate];

  screenshotImage = [v10 screenshotImage];
  screenshotImageView = [v8 screenshotImageView];
  [screenshotImageView setImage:screenshotImage];

  screenshotDateLabel = [v8 screenshotDateLabel];
  [screenshotDateLabel setText:v13];

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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  screenshotItems = [(LUILogContentViewController *)self screenshotItems];
  v12 = [screenshotItems objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

  textView = [(LUILogContentViewController *)self textView];
  visibleRange = [v12 visibleRange];
  [textView scrollRangeToVisible:{visibleRange, v11}];

  [viewCopy deselectItemAtIndexPath:pathCopy animated:0];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  v5 = 130.0;
  v6 = 130.0;
  result.height = v6;
  result.width = v5;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
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