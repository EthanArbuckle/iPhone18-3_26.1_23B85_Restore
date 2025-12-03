@interface CSDNDBedtimeGreetingViewController
- (BOOL)handleEvent:(id)event;
- (CSDNDBedtimeGreetingDelegate)delegate;
- (CSDNDBedtimeGreetingViewController)initWithLegibilityPrimaryColor:(id)color;
- (id)_greetingString;
- (void)aggregateAppearance:(id)appearance;
- (void)dealloc;
- (void)handleSecondaryActionForView:(id)view;
- (void)loadView;
@end

@implementation CSDNDBedtimeGreetingViewController

- (CSDNDBedtimeGreetingViewController)initWithLegibilityPrimaryColor:(id)color
{
  colorCopy = color;
  v11.receiver = self;
  v11.super_class = CSDNDBedtimeGreetingViewController;
  v6 = [(CSDNDBedtimeGreetingViewController *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_legibilityPrimaryColor, color);
    v8 = [MEMORY[0x277CBFBF8] newAssertionForBundleIdentifier:@"com.apple.weather" withReason:@"DND bedtime greeting" level:0];
    weatherInUseAssertion = v7->_weatherInUseAssertion;
    v7->_weatherInUseAssertion = v8;
  }

  return v7;
}

- (void)dealloc
{
  [(CLInUseAssertion *)self->_weatherInUseAssertion invalidate];
  v3.receiver = self;
  v3.super_class = CSDNDBedtimeGreetingViewController;
  [(CSCoverSheetViewControllerBase *)&v3 dealloc];
}

- (void)loadView
{
  v3 = [CSModalView alloc];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v9 = [(CSModalView *)v3 initWithFrame:?];

  [(CSModalView *)v9 setShowsStatusText:0];
  [(CSModalView *)v9 setDelegate:self];
  [(CSModalView *)v9 setAutoresizingMask:18];
  [(CSModalView *)v9 setWantsEnhancedSecondaryActionButton:1];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"DND_BEDTIME_DISMISS" value:&stru_28302FDA0 table:@"CoverSheet"];
  [(CSModalView *)v9 setSecondaryActionButtonText:v6];

  [(CSModalView *)v9 setSecondaryActionButtonTextColor:self->_legibilityPrimaryColor];
  _greetingString = [(CSDNDBedtimeGreetingViewController *)self _greetingString];
  [(CSModalView *)v9 setTitleText:_greetingString];

  [(CSModalView *)v9 setTitleTextColor:self->_legibilityPrimaryColor];
  v8 = [objc_alloc(MEMORY[0x277D7A9A8]) initWithColor:self->_legibilityPrimaryColor];
  [(CSModalView *)v9 setDetailView:v8];
  [(CSDNDBedtimeGreetingViewController *)self setView:v9];
}

- (void)aggregateAppearance:(id)appearance
{
  v7.receiver = self;
  v7.super_class = CSDNDBedtimeGreetingViewController;
  appearanceCopy = appearance;
  [(CSModalViewControllerBase *)&v7 aggregateAppearance:appearanceCopy];
  v4 = [CSComponent footerCallToActionLabel:v7.receiver];
  v5 = [v4 priority:40];
  v6 = [v5 hidden:1];
  [appearanceCopy addComponent:v6];
}

- (void)handleSecondaryActionForView:(id)view
{
  delegate = [(CSDNDBedtimeGreetingViewController *)self delegate];
  [delegate dismissDNDBedtimeGreetingViewController:self animated:1];
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v8.receiver = self;
  v8.super_class = CSDNDBedtimeGreetingViewController;
  if (!-[CSCoverSheetViewControllerBase handleEvent:](&v8, sel_handleEvent_, eventCopy) || ([eventCopy isConsumable] & 1) == 0)
  {
    if ([eventCopy type] != 27)
    {
      isConsumable = 0;
      goto LABEL_7;
    }

    delegate = [(CSDNDBedtimeGreetingViewController *)self delegate];
    [delegate dismissDNDBedtimeGreetingViewController:self animated:1];
  }

  isConsumable = [eventCopy isConsumable];
LABEL_7:

  return isConsumable;
}

- (id)_greetingString
{
  v2 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  date = [MEMORY[0x277CBEAA8] date];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v5 = [v2 bs_dayPeriodForDate:date inLocale:currentLocale];

  if (v5 > 0xA)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_27838E068[v5];
  }

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  [currentCalendar setTimeZone:systemTimeZone];

  date2 = [MEMORY[0x277CBEAA8] date];
  v10 = [currentCalendar component:32 fromDate:date2];

  if ((v10 - 3) <= 6 && [(__CFString *)v6 isEqualToString:@"DND_BEDTIME_EVENING_GREETING"])
  {
    v6 = @"DND_BEDTIME_MORNING_GREETING";
  }

  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:v6 value:&stru_28302FDA0 table:@"CoverSheet"];

  return v12;
}

- (CSDNDBedtimeGreetingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end