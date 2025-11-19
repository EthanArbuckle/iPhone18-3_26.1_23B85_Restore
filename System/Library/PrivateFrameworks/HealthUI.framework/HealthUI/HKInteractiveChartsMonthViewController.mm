@interface HKInteractiveChartsMonthViewController
- (HKInteractiveChartsMonthViewController)initWithHealthStore:(id)a3 dateCache:(id)a4 date:(id)a5;
- (void)calendarScrollViewController:(id)a3 accessoryViewForDate:(id)a4 accessoryViewCompletion:(id)a5;
- (void)didTapTodayButton;
- (void)dismissViewController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation HKInteractiveChartsMonthViewController

- (HKInteractiveChartsMonthViewController)initWithHealthStore:(id)a3 dateCache:(id)a4 date:(id)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = HKInteractiveChartsMonthViewController;
  v9 = [(HKMonthViewController *)&v12 initWithDateCache:a4 date:a5];
  v10 = v9;
  if (v9)
  {
    [(HKInteractiveChartsMonthViewController *)v9 setHealthStore:v8];
    [(HKMonthViewController *)v10 setTitleAlignment:1];
  }

  return v10;
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = HKInteractiveChartsMonthViewController;
  [(HKMonthViewController *)&v19 viewDidLoad];
  v3 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:self action:sel_dismissViewController_];
  v4 = [(HKInteractiveChartsMonthViewController *)self navigationItem];
  [v4 setLeftBarButtonItem:v3];

  v5 = objc_alloc(MEMORY[0x1E69DC708]);
  v6 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v7 = [v6 localizedStringForKey:@"TODAY" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v8 = [v5 initWithTitle:v7 style:0 target:self action:sel_didTapTodayButton];
  v9 = [(HKInteractiveChartsMonthViewController *)self navigationItem];
  [v9 setRightBarButtonItem:v8];

  v10 = [HKWeekdayHeaderPaletteView alloc];
  v11 = [(HKWeekdayHeaderPaletteView *)v10 initWithFrame:HKUICalendarLocaleIsRightToLeft() shouldSupportRTL:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(HKInteractiveChartsMonthViewController *)self setWeekdayHeaderPaletteView:v11];

  v12 = [(HKInteractiveChartsMonthViewController *)self navigationController];
  +[HKWeekdayHeaderPaletteView preferredHeight];
  v14 = [v12 paletteForEdge:2 size:{0.0, v13}];
  [(HKInteractiveChartsMonthViewController *)self setContainingPalette:v14];

  v15 = [(HKInteractiveChartsMonthViewController *)self containingPalette];
  v16 = [(HKInteractiveChartsMonthViewController *)self weekdayHeaderPaletteView];
  [v15 addSubview:v16];

  v17 = [(HKInteractiveChartsMonthViewController *)self navigationController];
  v18 = [(HKInteractiveChartsMonthViewController *)self containingPalette];
  [v17 attachPalette:v18 isPinned:1];
}

- (void)viewWillLayoutSubviews
{
  v8.receiver = self;
  v8.super_class = HKInteractiveChartsMonthViewController;
  [(HKMonthViewController *)&v8 viewWillLayoutSubviews];
  v3 = [(HKInteractiveChartsMonthViewController *)self containingPalette];
  [v3 bounds];
  Width = CGRectGetWidth(v9);
  +[HKWeekdayHeaderPaletteView preferredHeight];
  v6 = v5;
  v7 = [(HKInteractiveChartsMonthViewController *)self weekdayHeaderPaletteView];
  [v7 setFrame:{0.0, 0.0, Width, v6}];
}

- (void)dismissViewController:(id)a3
{
  v5 = [(HKMonthViewController *)self delegate];
  v4 = [(HKMonthViewController *)self currentDate];
  [v5 monthViewController:self didSelectDate:v4];
}

- (void)calendarScrollViewController:(id)a3 accessoryViewForDate:(id)a4 accessoryViewCompletion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(HKInteractiveChartsMonthViewController *)self sampleType];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DEE8] currentCalendar];
    v11 = [MEMORY[0x1E696C378] predicateForSamplesForDayFromDate:v7 calendar:v10 options:0];
    v12 = [(HKInteractiveChartsMonthViewController *)self additionalSamplePredicate];

    if (v12)
    {
      v13 = [(HKInteractiveChartsMonthViewController *)self additionalSamplePredicate];
      v14 = HKUIPredicateMatchingPredicates(v11, v13);

      v11 = v14;
    }

    v15 = objc_alloc(MEMORY[0x1E696C3C8]);
    v16 = [(HKInteractiveChartsMonthViewController *)self sampleType];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __116__HKInteractiveChartsMonthViewController_calendarScrollViewController_accessoryViewForDate_accessoryViewCompletion___block_invoke;
    v19[3] = &unk_1E81B5A88;
    v20 = v7;
    v21 = self;
    v22 = v8;
    v17 = [v15 initWithSampleType:v16 predicate:v11 limit:1 sortDescriptors:0 resultsHandler:v19];

    v18 = [(HKInteractiveChartsMonthViewController *)self healthStore];
    [v18 executeQuery:v17];
  }
}

void __116__HKInteractiveChartsMonthViewController_calendarScrollViewController_accessoryViewForDate_accessoryViewCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if ([a3 count])
  {
    v4 = [MEMORY[0x1E696ADC8] mainQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __116__HKInteractiveChartsMonthViewController_calendarScrollViewController_accessoryViewForDate_accessoryViewCompletion___block_invoke_2;
    v8[3] = &unk_1E81B5A60;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = v5;
    v10 = v6;
    v11 = v7;
    [v4 addOperationWithBlock:v8];
  }
}

void __116__HKInteractiveChartsMonthViewController_calendarScrollViewController_accessoryViewForDate_accessoryViewCompletion___block_invoke_2(uint64_t a1)
{
  v2 = [WDInteractiveChartsMonthViewControllerIndicatorView alloc];
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v20 = [(WDInteractiveChartsMonthViewControllerIndicatorView *)v2 initWithFrame:*MEMORY[0x1E695F058], v4, v5, v6];
  [(WDInteractiveChartsMonthViewControllerIndicatorView *)v20 setDate:*(a1 + 32)];
  v7 = [[WDInteractiveChartsMonthViewControllerIndicatorDotView alloc] initWithFrame:v3, v4, v5, v6];
  [(WDInteractiveChartsMonthViewControllerIndicatorDotView *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [*(a1 + 40) sampleColor];
  [(WDInteractiveChartsMonthViewControllerIndicatorDotView *)v7 setBackgroundColor:v8];

  v9 = [(WDInteractiveChartsMonthViewControllerIndicatorDotView *)v7 layer];
  [v9 setCornerRadius:5.0];

  [(WDInteractiveChartsMonthViewControllerIndicatorView *)v20 addSubview:v7];
  v10 = [(WDInteractiveChartsMonthViewControllerIndicatorDotView *)v7 heightAnchor];
  v11 = [v10 constraintEqualToConstant:10.0];
  [v11 setActive:1];

  v12 = [(WDInteractiveChartsMonthViewControllerIndicatorDotView *)v7 widthAnchor];
  v13 = [v12 constraintEqualToConstant:10.0];
  [v13 setActive:1];

  v14 = [(WDInteractiveChartsMonthViewControllerIndicatorDotView *)v7 centerXAnchor];
  v15 = [(WDInteractiveChartsMonthViewControllerIndicatorView *)v20 centerXAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v17 = [(WDInteractiveChartsMonthViewControllerIndicatorDotView *)v7 centerYAnchor];
  v18 = [(WDInteractiveChartsMonthViewControllerIndicatorView *)v20 centerYAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  [v19 setActive:1];

  (*(*(a1 + 48) + 16))();
}

- (void)didTapTodayButton
{
  v3 = [MEMORY[0x1E695DF00] date];
  [(HKMonthViewController *)self setCurrentDate:v3 animateIfPossible:1];
}

@end