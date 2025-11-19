@interface CUIKIPendingReminderTracker
- (CUIKIPendingReminderTracker)initWithEventStore:(id)a3;
@end

@implementation CUIKIPendingReminderTracker

- (CUIKIPendingReminderTracker)initWithEventStore:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CUIKIPendingReminderTracker;
  v5 = [(CUIKIPendingReminderTracker *)&v9 init];
  if (v5)
  {
    v6 = [[_TtC21CalendarUIKitInternal22PendingReminderTracker alloc] initWithEventStore:v4];
    impl = v5->_impl;
    v5->_impl = v6;
  }

  return v5;
}

@end