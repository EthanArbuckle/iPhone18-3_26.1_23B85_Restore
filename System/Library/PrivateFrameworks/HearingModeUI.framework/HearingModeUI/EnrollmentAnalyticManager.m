@interface EnrollmentAnalyticManager
+ (_TtC13HearingModeUI25EnrollmentAnalyticManager)shared;
- (void)submitEvent;
- (void)updateKeyWithKey:(int64_t)a3 value:(int64_t)a4;
@end

@implementation EnrollmentAnalyticManager

+ (_TtC13HearingModeUI25EnrollmentAnalyticManager)shared
{
  if (qword_27F4CA2D8 != -1)
  {
    swift_once();
  }

  v3 = qword_27F4CA2E0;

  return v3;
}

- (void)updateKeyWithKey:(int64_t)a3 value:(int64_t)a4
{
  v6 = self;
  sub_25202F19C(a3, a4);
}

- (void)submitEvent
{
  v2 = self;
  sub_25202F570();
}

@end