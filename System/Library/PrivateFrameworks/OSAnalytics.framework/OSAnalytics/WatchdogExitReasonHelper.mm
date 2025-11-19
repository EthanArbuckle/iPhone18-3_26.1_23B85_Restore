@interface WatchdogExitReasonHelper
+ (id)descriptionFromCode:(int)a3;
- (_TtC11OSAnalytics24WatchdogExitReasonHelper)init;
@end

@implementation WatchdogExitReasonHelper

+ (id)descriptionFromCode:(int)a3
{
  _s11OSAnalytics24WatchdogExitReasonHelperC19descriptionFromCodeySSSgs5Int32VFZ_0(a3);
  if (v3)
  {
    v4 = sub_1AE53FB44();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_TtC11OSAnalytics24WatchdogExitReasonHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WatchdogExitReasonHelper();
  return [(WatchdogExitReasonHelper *)&v3 init];
}

@end