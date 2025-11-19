@interface VerificationCheckmarkCell
- (_TtC28HealthExposureNotificationUI25VerificationCheckmarkCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation VerificationCheckmarkCell

- (_TtC28HealthExposureNotificationUI25VerificationCheckmarkCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_label;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_accessoryImageView;
  *(&self->super.super.super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC28HealthExposureNotificationUI25VerificationCheckmarkCell_isChecked) = 0;
  result = sub_251703584();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_2516FEB2C();
}

@end