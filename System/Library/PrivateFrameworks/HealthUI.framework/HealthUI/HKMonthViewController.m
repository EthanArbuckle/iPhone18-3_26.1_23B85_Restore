@interface HKMonthViewController
- (HKMonthViewController)initWithCoder:(id)a3;
- (HKMonthViewController)initWithDateCache:(id)a3 date:(id)a4;
- (HKMonthViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (HKMonthViewControllerDelegate)delegate;
- (id)_titleStringForDate:(id)a3;
- (void)_didTapBackButton;
- (void)_setCurrentDate:(id)a3;
- (void)_updateBackButton;
- (void)_updateCurrentMonthBarButtonItemWithDate:(id)a3;
- (void)calendarScrollViewController:(id)a3 didSelectDate:(id)a4;
- (void)createCalendarScrollViewController;
- (void)createTitleLabel;
- (void)setCurrentDate:(id)a3 animateIfPossible:(BOOL)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HKMonthViewController

- (HKMonthViewController)initWithDateCache:(id)a3 date:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKMonthViewController;
  v9 = [(HKMonthViewController *)&v12 initWithNibName:0 bundle:0];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dateCache, a3);
    objc_storeStrong(&v10->_currentDate, a4);
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

  v4 = [(HKMonthViewController *)self calendarScrollViewController];
  [v4 setDelegate:self];

  v5 = [(HKMonthViewController *)self calendarScrollViewController];
  [(HKMonthViewController *)self addChildViewController:v5];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HKMonthViewController;
  [(HKMonthViewController *)&v7 viewDidLoad];
  v3 = [(HKMonthViewController *)self view];
  v4 = [(HKMonthViewController *)self calendarScrollViewController];
  v5 = [v4 view];
  [v3 addSubview:v5];

  v6 = [(HKMonthViewController *)self calendarScrollViewController];
  [v6 didMoveToParentViewController:self];

  [(HKMonthViewController *)self createTitleLabel];
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = HKMonthViewController;
  [(HKMonthViewController *)&v14 viewWillLayoutSubviews];
  v3 = [(HKMonthViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(HKMonthViewController *)self calendarScrollViewController];
  v13 = [v12 view];
  [v13 setFrame:{v5, v7, v9, v11}];
}

- (void)createTitleLabel
{
  if ([(HKMonthViewController *)self titleAlignment]== 1)
  {
    v11 = [(HKMonthViewController *)self currentDate];
    v3 = HKLocalizedStringForDateAndTemplate(v11, 1);
    v4 = [(HKMonthViewController *)self navigationItem];
    [v4 setTitle:v3];
  }

  else
  {
    if ([(HKMonthViewController *)self titleAlignment]!= 4)
    {
      return;
    }

    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    [(HKMonthViewController *)self setTitleLabel:v5];

    v6 = [(HKMonthViewController *)self currentDate];
    v7 = [(HKMonthViewController *)self _titleStringForDate:v6];
    v8 = [(HKMonthViewController *)self titleLabel];
    [v8 setAttributedText:v7];

    v9 = [(HKMonthViewController *)self titleLabel];
    [v9 sizeToFit];

    v10 = objc_alloc(MEMORY[0x1E69DC708]);
    v11 = [(HKMonthViewController *)self titleLabel];
    v3 = [v10 initWithCustomView:?];
    v4 = [(HKMonthViewController *)self navigationItem];
    [v4 setLeftBarButtonItem:v3];
  }
}

- (HKMonthViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D940];
  v7 = NSStringFromSelector(a2);
  [v5 raise:v6 format:{@"The -%@ method is not available on %@", v7, objc_opt_class()}];

  return 0;
}

- (HKMonthViewController)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = HKMonthViewController;
  return [(HKMonthViewController *)&v4 initWithCoder:a3];
}

- (void)setCurrentDate:(id)a3 animateIfPossible:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(HKMonthViewController *)self _setCurrentDate:v6];
  v7 = [(HKMonthViewController *)self calendarScrollViewController];
  [v7 scrollToDate:v6 animateIfPossible:v4];
}

- (void)_setCurrentDate:(id)a3
{
  objc_storeStrong(&self->_currentDate, a3);

  [(HKMonthViewController *)self _updateBackButton];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HKMonthViewController;
  [(HKMonthViewController *)&v10 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(HKMonthViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [(HKMonthViewController *)self delegate];
      [v9 monthViewController:self didSelectDate:self->_currentDate];
    }
  }
}

- (void)calendarScrollViewController:(id)a3 didSelectDate:(id)a4
{
  v5 = a4;
  [(HKMonthViewController *)self _setCurrentDate:v5];
  v6 = [(HKMonthViewController *)self delegate];
  [v6 monthViewController:self didSelectDate:v5];
}

- (void)_updateBackButton
{
  v3 = [(HKMonthViewController *)self currentDate];
  v4 = [(HKMonthViewController *)self dateCache];
  v7 = HKRelativeMonthYearText(v3, v4);

  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v7 style:0 target:self action:sel__didTapBackButton];
  v6 = [(HKMonthViewController *)self navigationItem];
  [v6 setBackBarButtonItem:v5];
}

- (void)_updateCurrentMonthBarButtonItemWithDate:(id)a3
{
  v11 = a3;
  v4 = [(HKMonthViewController *)self dateCache];
  v5 = [v4 calendar];
  v6 = [v5 components:12 fromDate:v11];

  if (([(NSDateComponents *)self->_cachedDateComponents isEqual:v6]& 1) == 0)
  {
    if ([(HKMonthViewController *)self titleAlignment]== 1)
    {
      v7 = HKLocalizedStringForDateAndTemplate(v11, 1);
      v8 = [(HKMonthViewController *)self navigationItem];
      [v8 setTitle:v7];
    }

    else
    {
      if ([(HKMonthViewController *)self titleAlignment]!= 4)
      {
LABEL_7:
        objc_storeStrong(&self->_cachedDateComponents, v6);
        goto LABEL_8;
      }

      v9 = [(HKMonthViewController *)self titleLabel];
      v10 = [(HKMonthViewController *)self _titleStringForDate:v11];
      [v9 setAttributedText:v10];

      v7 = [(HKMonthViewController *)self titleLabel];
      [v7 sizeToFit];
    }

    goto LABEL_7;
  }

LABEL_8:
}

- (id)_titleStringForDate:(id)a3
{
  v45[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = HKLocalizedStringForDateAndTemplate(v3, 6);
  v5 = HKLocalizedStringForDateAndTemplate(v3, 5);
  v6 = HKLocalizedStringForDateAndTemplate(v3, 1);

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
    v27 = [MEMORY[0x1E69DC888] labelColor];
    v39[1] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
    v17 = [v13 initWithString:v4 attributes:v28];
  }

  else
  {
    v35 = v9;
    v36 = v12;
    v14 = *MEMORY[0x1E69DB650];
    v44 = *MEMORY[0x1E69DB650];
    v15 = [MEMORY[0x1E69DC888] labelColor];
    v45[0] = v15;
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
    v32 = [MEMORY[0x1E69DC888] labelColor];
    v43[1] = v32;
    v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
    [v17 setAttributes:v33 range:{v7, v35}];

    v40[0] = v30;
    v26 = [MEMORY[0x1E69DB878] systemFontOfSize:v25 weight:*MEMORY[0x1E69DB998]];
    v40[1] = v14;
    v41[0] = v26;
    v27 = [MEMORY[0x1E69DC888] labelColor];
    v41[1] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
    [v17 setAttributes:v28 range:{v10, v36}];
    v5 = v37;
  }

  return v17;
}

- (void)_didTapBackButton
{
  v3 = [(HKMonthViewController *)self delegate];
  [v3 didTapBackButtonForMonthViewController:self];
}

- (HKMonthViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end