@interface AudioMessageRecordingAppendButton
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation AudioMessageRecordingAppendButton

- (void)layoutSubviews
{
  v2 = self;
  sub_190CCB59C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_190CCB724();
  [*(&v5->super.super.super.isa + OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingAppendButton_durationButton) sizeThatFits_];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

@end