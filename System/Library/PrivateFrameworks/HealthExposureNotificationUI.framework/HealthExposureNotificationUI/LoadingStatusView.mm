@interface LoadingStatusView
- (_TtC28HealthExposureNotificationUI17LoadingStatusView)initWithCoder:(id)coder;
- (_TtC28HealthExposureNotificationUI17LoadingStatusView)initWithFrame:(CGRect)frame;
@end

@implementation LoadingStatusView

- (_TtC28HealthExposureNotificationUI17LoadingStatusView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_spinnerView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI17LoadingStatusView_statusLabel;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  result = sub_251703584();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI17LoadingStatusView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end