@interface AudioMessageRecordingAppendButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
@end

@implementation AudioMessageRecordingAppendButton

- (void)layoutSubviews
{
  selfCopy = self;
  sub_190CCB59C();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_190CCB724();
  [*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_durationButton) sizeThatFits_];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end