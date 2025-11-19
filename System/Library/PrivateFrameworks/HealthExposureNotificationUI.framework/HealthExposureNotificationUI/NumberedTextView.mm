@interface NumberedTextView
- (NSString)details;
- (NSString)title;
- (_TtC28HealthExposureNotificationUI16NumberedTextView)initWithCoder:(id)a3;
- (_TtC28HealthExposureNotificationUI16NumberedTextView)initWithFrame:(CGRect)a3;
@end

@implementation NumberedTextView

- (NSString)title
{
  if (*(self + OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_title + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_title);
    v3 = *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_title + 8);

    v4 = sub_251703134();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)details
{
  v2 = *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_details);
  v3 = *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI16NumberedTextView_details + 8);

  v4 = sub_251703134();

  return v4;
}

- (_TtC28HealthExposureNotificationUI16NumberedTextView)initWithCoder:(id)a3
{
  result = sub_251703584();
  __break(1u);
  return result;
}

- (_TtC28HealthExposureNotificationUI16NumberedTextView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end