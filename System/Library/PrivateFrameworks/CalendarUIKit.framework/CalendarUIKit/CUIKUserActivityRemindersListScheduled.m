@interface CUIKUserActivityRemindersListScheduled
- (CUIKUserActivityRemindersListScheduled)init;
@end

@implementation CUIKUserActivityRemindersListScheduled

- (CUIKUserActivityRemindersListScheduled)init
{
  v6.receiver = self;
  v6.super_class = CUIKUserActivityRemindersListScheduled;
  v2 = [(CUIKUserActivity *)&v6 initWithType:2];
  if (v2)
  {
    v3 = CUIKBundle();
    v4 = [v3 localizedStringForKey:@"Scheduled Reminders" value:&stru_1F4AA8958 table:0];
    [(CUIKUserActivity *)v2 setActivityTitle:v4];

    [(CUIKUserActivity *)v2 setActivitySubtitle:&stru_1F4AA8958];
  }

  return v2;
}

@end