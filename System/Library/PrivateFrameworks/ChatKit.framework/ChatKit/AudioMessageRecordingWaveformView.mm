@interface AudioMessageRecordingWaveformView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation AudioMessageRecordingWaveformView

- (void)layoutSubviews
{
  v2 = self;
  sub_190832D04();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  v5 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensities;
  swift_beginAccess();
  v6 = (*(&self->super.super.super.isa + v5))[2] * 4.0;
  v7 = height;
  result.height = v7;
  result.width = v6;
  return result;
}

@end