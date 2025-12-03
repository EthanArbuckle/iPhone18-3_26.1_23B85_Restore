@interface AudioMessageRecordingWaveformView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation AudioMessageRecordingWaveformView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190832D04();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  v5 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensities;
  swift_beginAccess();
  v6 = (*(&self->super.super.super.isa + v5))[2] * 4.0;
  v7 = height;
  result.height = v7;
  result.width = v6;
  return result;
}

@end