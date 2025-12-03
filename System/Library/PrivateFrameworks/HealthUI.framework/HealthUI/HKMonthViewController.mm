@interface HKMonthViewController
- (HKMonthViewController)initWithCoder:(id)coder;
- (HKMonthViewController)initWithDateCache:(id)cache date:(id)date;
- (HKMonthViewController)initWithNibName:(id)name bundle:(id)bundle;
- (HKMonthViewControllerDelegate)delegate;
- (id)_titleStringForDate:(id)date;
- (void)_didTapBackButton;
- (void)_setCurrentDate:(id)date;
- (void)_updateBackButton;
- (void)_updateCurrentMonthBarButtonItemWithDate:(id)date;
- (void)calendarScrollViewController:(id)controller didSelectDate:(id)date;
- (void)createCalendarScrollViewController;
- (void)createTitleLabel;
- (void)setCurrentDate:(id)date animateIfPossible:(BOOL)possible;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HKMonthViewController

- (HKMonthViewController)initWithDateCache:(id)cache date:(id)date
{
  cacheCopy = cache;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = HKMonthViewController;
  v9 = [(HKMonthViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dateCache, cache);
    objc_storeStrong(&v10->_currentDate, date);
    [(HKMonthViewController *)v10 _updateBackButton];
    [(HKMonthViewController *)v10 createCalendarScrollViewController];
    [(HKMonthViewController *)v10 setTitleAlignment:4];
  }

  return v10;
}

- (void)createCalendarScrollViewController
{
  v3 = [[HKCalendarScrollViewController alloc] initWithSelectedDate:self->_currentDate];
  [(HKMonthViewController *)self setCalendarScrollViewController:v3];

  calendarScrollViewController = [(HKMonthViewController *)self calendarScrollViewController];
  [calendarScrollViewController setDelegate:self];

  calendarScrollViewController2 = [(HKMonthViewController *)self calendarScrollViewController];
  [(HKMonthViewController *)self addChildViewController:calendarScrollViewController2];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HKMonthViewController;
  [(HKMonthViewController *)&v7 viewDidLoad];
  view = [(HKMonthViewController *)self view];
  calendarScrollViewController = [(HKMonthViewController *)self calendarScrollViewController];
  view2 = [calendarScrollViewController view];
  [view addSubview:view2];

  calendarScrollViewController2 = [(HKMonthViewController *)self calendarScrollViewController];
  [calendarScrollViewController2 didMoveToParentViewController:self];

  [(HKMonthViewController *)self createTitleLabel];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = HKMonthViewController;
  [(HKMonthViewController *)&v14 viewWillLayoutSubviews];
  view = [(HKMonthViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  calendarScrollViewController = [(HKMonthViewController *)self calendarScrollViewController];
  view2 = [calendarScrollViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

- (void)createTitleLabel
{
  if ([(HKMonthViewController *)self titleAlignment]== 1)
  {
    currentDate = [(HKMonthViewController *)self currentDate];
    v3 = HKLocalizedStringForDateAndTemplate(currentDate, 1);
    navigationItem = [(HKMonthViewController *)self navigationItem];
    [navigationItem setTitle:v3];
  }

  else
  {
    if ([(HKMonthViewController *)self titleAlignment]!= 4)
    {
      return;
    }

    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(HKMonthViewController *)self setTitleLabel:v5];

    currentDate2 = [(HKMonthViewController *)self currentDate];
    v7 = [(HKMonthViewController *)self _titleStringForDate:currentDate2];
    titleLabel = [(HKMonthViewController *)self titleLabel];
    [titleLabel setAttributedText:v7];

    titleLabel2 = [(HKMonthViewController *)self titleLabel];
    [titleLabel2 sizeToFit];

    v10 = objc_alloc(MEMORY[0x1E69DC708]);
    currentDate = [(HKMonthViewController *)self titleLabel];
    v3 = [v10 initWithCustomView:?];
    navigationItem = [(HKMonthViewController *)self navigationItem];
    [navigationItem setLeftBarButtonItem:v3];
  }
}

- (HKMonthViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HKMonthViewController)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = HKMonthViewController;
  return [(HKMonthViewController *)&v4 initWithCoder:coder];
}

- (void)setCurrentDate:(id)date animateIfPossible:(BOOL)possible
{
  possibleCopy = possible;
  dateCopy = date;
  [(HKMonthViewController *)self _setCurrentDate:dateCopy];
  calendarScrollViewController = [(HKMonthViewController *)self calendarScrollViewController];
  [calendarScrollViewController scrollToDate:dateCopy animateIfPossible:possibleCopy];
}

- (void)_setCurrentDate:(id)date
{
  objc_storeStrong(&self->_currentDate, date);

  [(HKMonthViewController *)self _updateBackButton];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = HKMonthViewController;
  [(HKMonthViewController *)&v10 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(HKMonthViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      delegate = [(HKMonthViewController *)self delegate];
      [delegate monthViewController:self didSelectDate:self->_currentDate];
    }
  }
}

- (void)calendarScrollViewController:(id)controller didSelectDate:(id)date
{
  dateCopy = date;
  [(HKMonthViewController *)self _setCurrentDate:dateCopy];
  delegate = [(HKMonthViewController *)self delegate];
  [delegate monthViewController:self didSelectDate:dateCopy];
}

- (void)_updateBackButton
{
  currentDate = [(HKMonthViewController *)self currentDate];
  dateCache = [(HKMonthViewController *)self dateCache];
  v7 = HKRelativeMonthYearText(currentDate, dateCache);

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v7 style:0 target:self action:sel__didTapBackButton];
  navigationItem = [(HKMonthViewController *)self navigationItem];
  [navigationItem setBackBarButtonItem:v5];
}

- (void)_updateCurrentMonthBarButtonItemWithDate:(id)date
{
  dateCopy = date;
  dateCache = [(HKMonthViewController *)self dateCache];
  calendar = [dateCache calendar];
  v6 = [calendar components:12 fromDate:dateCopy];

  if (([(NSDateComponents *)self->_cachedDateComponents isEqual:v6]& 1) == 0)
  {
    if ([(HKMonthViewController *)self titleAlignment]== 1)
    {
      titleLabel2 = HKLocalizedStringForDateAndTemplate(dateCopy, 1);
      navigationItem = [(HKMonthViewController *)self navigationItem];
      [navigationItem setTitle:titleLabel2];
    }

    else
    {
      if ([(HKMonthViewController *)self titleAlignment]!= 4)
      {
LABEL_7:
        objc_storeStrong(&self->_cachedDateComponents, v6);
        goto LABEL_8;
      }

      titleLabel = [(HKMonthViewController *)self titleLabel];
      v10 = [(HKMonthViewController *)self _titleStringForDate:dateCopy];
      [titleLabel setAttributedText:v10];

      titleLabel2 = [(HKMonthViewController *)self titleLabel];
      [titleLabel2 sizeToFit];
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (id)_titleStringForDate:(id)date
{
  v45[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v4 = HKLocalizedStringForDateAndTemplate(dateCopy, 6);
  v5 = HKLocalizedStringForDateAndTemplate(dateCopy, 5);
  v6 = HKLocalizedStringForDateAndTemplate(dateCopy, 1);

  v7 = [v4 rangeOfString:v5];
  v9 = v8;
  v10 = [v4 rangeOfString:v6];
  v12 = v11;
  v13 = objc_alloc(MEMORY[0x1E696AD40]);
  if (v7 == 0x7FFFFFFFFFFFFFFFLL || v10 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v38[0] = *MEMORY[0x1E69DB648];
    v26 = [MEMORY[0x1E69DB878] systemFontOfSize:17.0 weight:*MEMORY[0x1E69DB978]];
    v39[0] = v26;
    v38[1] = *MEMORY[0x1E69DB650];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v39[1] = labelColor;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v17 = [v13 initWithString:v4 attributes:v28];
  }

  else
  {
    v35 = v9;
    v36 = v12;
    v14 = *MEMORY[0x1E69DB650];
    v44 = *MEMORY[0x1E69DB650];
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    v45[0] = labelColor2;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v17 = [v13 initWithString:v4 attributes:v16];

    v18 = *MEMORY[0x1E69DDC30];
    IsLargerThanSizeCategory = HKUIApplicationContentSizeCategoryIsLargerThanSizeCategory(*MEMORY[0x1E69DDC30]);
    v20 = MEMORY[0x1E69DB878];
    v21 = *MEMORY[0x1E69DDCF8];
    v37 = v5;
    if (IsLargerThanSizeCategory)
    {
      v22 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:v18];
      v23 = [v20 preferredFontForTextStyle:v21 compatibleWithTraitCollection:v22];
      [v23 _scaledValueForValue:17.0];
      v25 = v24;
    }

    else
    {
      v22 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v21];
      [v22 _scaledValueForValue:17.0];
      v25 = v29;
    }

    v42[0] = *MEMORY[0x1E69DB648];
    v30 = v42[0];
    v31 = [MEMORY[0x1E69DB878] systemFontOfSize:v25 weight:*MEMORY[0x1E69DB970]];
    v42[1] = v14;
    v43[0] = v31;
    labelColor3 = [MEMORY[0x1E69DC888] labelColor];
    v43[1] = labelColor3;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
    [v17 setAttributes:v33 range:{v7, v35}];

    v40[0] = v30;
    v26 = [MEMORY[0x1E69DB878] systemFontOfSize:v25 weight:*MEMORY[0x1E69DB998]];
    v40[1] = v14;
    v41[0] = v26;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v41[1] = labelColor;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
    [v17 setAttributes:v28 range:{v10, v36}];
    v5 = v37;
  }

  return v17;
}

- (void)_didTapBackButton
{
  delegate = [(HKMonthViewController *)self delegate];
  [delegate didTapBackButtonForMonthViewController:self];
}

- (HKMonthViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end