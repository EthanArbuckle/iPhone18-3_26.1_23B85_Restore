@interface VerificationCell
- (_TtC28HealthExposureNotificationUI16VerificationCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation VerificationCell

- (_TtC28HealthExposureNotificationUI16VerificationCell)initWithCoder:(id)a3
{
  result = sub_251703584();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for VerificationCell();
  v2 = v5.receiver;
  [(VerificationCell *)&v5 layoutSubviews];
  [v2 layoutMargins];
  v4 = v3;
  [v2 layoutMargins];
  [v2 setSeparatorInset_];
}

@end