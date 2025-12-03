@interface HURecordingButton
- (HURecordingButton)initWithCoder:(id)coder;
- (HURecordingButton)initWithFrame:(CGRect)frame;
- (HURecordingButton)initWithSize:(CGSize)size backgroundColor:(id)color;
- (void)startRecording;
- (void)stopRecording;
@end

@implementation HURecordingButton

- (HURecordingButton)initWithSize:(CGSize)size backgroundColor:(id)color
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  v8 = sub_20CF2D2D4(color, width, height);

  return v8;
}

- (HURecordingButton)initWithCoder:(id)coder
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
    selfCopy = self;
    sub_20CF2CED4();
  }
}

- (void)stopRecording
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___HURecordingButton_currentRecordingState);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___HURecordingButton_currentRecordingState) = 0;
  if (v3 == 1)
  {
    selfCopy = self;
    sub_20CF2CED4();
  }
}

- (HURecordingButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end