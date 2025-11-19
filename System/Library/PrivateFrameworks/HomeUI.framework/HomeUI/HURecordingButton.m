@interface HURecordingButton
- (HURecordingButton)initWithCoder:(id)a3;
- (HURecordingButton)initWithFrame:(CGRect)a3;
- (HURecordingButton)initWithSize:(CGSize)a3 backgroundColor:(id)a4;
- (void)startRecording;
- (void)stopRecording;
@end

@implementation HURecordingButton

- (HURecordingButton)initWithSize:(CGSize)a3 backgroundColor:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = sub_20CF2D2D4(a4, width, height);

  return v8;
}

- (HURecordingButton)initWithCoder:(id)a3
{
  result = sub_20D568A58();
  __break(1u);
  return result;
}

- (void)startRecording
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___HURecordingButton_currentRecordingState);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___HURecordingButton_currentRecordingState) = 1;
  if ((v3 & 1) == 0)
  {
    v4 = self;
    sub_20CF2CED4();
  }
}

- (void)stopRecording
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___HURecordingButton_currentRecordingState);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___HURecordingButton_currentRecordingState) = 0;
  if (v3 == 1)
  {
    v4 = self;
    sub_20CF2CED4();
  }
}

- (HURecordingButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end