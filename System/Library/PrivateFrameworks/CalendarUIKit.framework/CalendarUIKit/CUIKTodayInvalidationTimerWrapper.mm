@interface CUIKTodayInvalidationTimerWrapper
- (BOOL)todayChangedAfterInvalidation;
- (CUIKTodayInvalidationTimerWrapper)initWithCalendar:(id)calendar;
- (void)_killTimeZoneTimer;
- (void)_setupTimeZoneTimerWithCalendar:(id)calendar;
- (void)dealloc;
- (void)invalidateTodayAndNotifyIfChanged;
@end

@implementation CUIKTodayInvalidationTimerWrapper

- (void)_killTimeZoneTimer
{
  tzSupportDayRolloverTimer = self->_tzSupportDayRolloverTimer;
  if (tzSupportDayRolloverTimer)
  {
    [(NSTimer *)tzSupportDayRolloverTimer invalidate];
    v4 = self->_tzSupportDayRolloverTimer;
    self->_tzSupportDayRolloverTimer = 0;
  }
}

- (CUIKTodayInvalidationTimerWrapper)initWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  v8.receiver = self;
  v8.super_class = CUIKTodayInvalidationTimerWrapper;
  v5 = [(CUIKTodayInvalidationTimerWrapper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(CUIKTodayInvalidationTimerWrapper *)v5 _setupTimeZoneTimerWithCalendar:calendarCopy];
  }

  return v6;
}

- (void)dealloc
{
  [(CUIKTodayInvalidationTimerWrapper *)self _killTimeZoneTimer];
  v3.receiver = self;
  v3.super_class = CUIKTodayInvalidationTimerWrapper;
  [(CUIKTodayInvalidationTimerWrapper *)&v3 dealloc];
}

- (void)_setupTimeZoneTimerWithCalendar:(id)calendar
{
  calendarCopy = calendar;
  calendarTimeZone = [MEMORY[0x1E695DFE8] calendarTimeZone];
  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  v7 = [calendarTimeZone isEquivalentTo:systemTimeZone];

  if (v7)
  {
    [(CUIKTodayInvalidationTimerWrapper *)self _killTimeZoneTimer];
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v8 setDay:1];
    date = [MEMORY[0x1E695DF00] date];
    v10 = [calendarCopy dateByAddingComponents:v8 toDate:date options:0];

    v11 = [calendarCopy components:30 fromDate:v10];
    v12 = [calendarCopy dateFromComponents:v11];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __69__CUIKTodayInvalidationTimerWrapper__setupTimeZoneTimerWithCalendar___block_invoke;
    v14[3] = &unk_1E8399B60;
    v14[4] = self;
    v15 = v12;
    v13 = v12;
    dispatch_async(MEMORY[0x1E69E96A0], v14);
  }
}

void __69__CUIKTodayInvalidationTimerWrapper__setupTimeZoneTimerWithCalendar___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _killTimeZoneTimer];
  v2 = MEMORY[0x1E695DFF0];
  v3 = *(a1 + 40);
  v7 = [MEMORY[0x1E695DF00] date];
  [v3 timeIntervalSinceDate:v7];
  v4 = [v2 scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_invalidateTodayAndNotifyIfChanged selector:0 userInfo:0 repeats:?];
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;
}

- (BOOL)todayChangedAfterInvalidation
{
  v3 = CUIKTodayDate();
  CUIKInvalidateToday();
  v4 = CUIKCalendar();
  [(CUIKTodayInvalidationTimerWrapper *)self _setupTimeZoneTimerWithCalendar:v4];
  if (v3)
  {
    v5 = CUIKTodayDate();
    v6 = [v3 isEqualToDate:v5] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)invalidateTodayAndNotifyIfChanged
{
  if ([(CUIKTodayInvalidationTimerWrapper *)self todayChangedAfterInvalidation])
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"CalTodayChangedNotification" object:0];
  }
}

@end