@interface AudioPowerSpectrumView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22FaceTimeNotificationUI22AudioPowerSpectrumView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation AudioPowerSpectrumView

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(AudioPowerSpectrumView *)&v6 layoutSubviews];
  v3 = sub_24AA66490();
  [v3 setFrame_];

  v4 = sub_24AA66570();
  [v4 setFrame_];

  v5 = sub_24AA666C0();
  [v5 setFrame_];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 90.0;
  v4 = 20.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC22FaceTimeNotificationUI22AudioPowerSpectrumView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end