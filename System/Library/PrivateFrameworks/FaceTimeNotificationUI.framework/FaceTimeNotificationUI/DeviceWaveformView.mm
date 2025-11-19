@interface DeviceWaveformView
- (_TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation DeviceWaveformView

- (_TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_barColor;
  *(&self->super.super.super.isa + v4) = [objc_opt_self() systemGreenColor];
  v5 = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_power) = MEMORY[0x277D84F90];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_bandViews) = v5;
  result = sub_24AAB53F4();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24AA67B98();
}

@end