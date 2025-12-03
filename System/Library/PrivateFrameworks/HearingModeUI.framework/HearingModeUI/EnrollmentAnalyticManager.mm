@interface EnrollmentAnalyticManager
+ (_TtC13HearingModeUI25EnrollmentAnalyticManager)shared;
- (void)submitEvent;
- (void)updateKeyWithKey:(int64_t)key value:(int64_t)value;
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

- (void)updateKeyWithKey:(int64_t)key value:(int64_t)value
{
  selfCopy = self;
  sub_25202F19C(key, value);
}

- (void)submitEvent
{
  selfCopy = self;
  sub_25202F570();
}

@end