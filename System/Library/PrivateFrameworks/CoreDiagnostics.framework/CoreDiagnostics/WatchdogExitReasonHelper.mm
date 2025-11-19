@interface WatchdogExitReasonHelper
+ (id)descriptionFromCode:(int)a3;
- (_TtC15CoreDiagnostics24WatchdogExitReasonHelper)init;
@end

@implementation WatchdogExitReasonHelper

+ (id)descriptionFromCode:(int)a3
{
  _s15CoreDiagnostics24WatchdogExitReasonHelperC19descriptionFromCodeySSSgs5Int32VFZ_0(a3);
  if (v3)
  {
    v4 = sub_1D9849DC4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (_TtC15CoreDiagnostics24WatchdogExitReasonHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WatchdogExitReasonHelper();
  return [(WatchdogExitReasonHelper *)&v3 init];
}

@end