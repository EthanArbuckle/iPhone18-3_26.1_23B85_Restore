@interface CAMLensSmudgeDisplayState
+ (void)logModeChangedWithMode:(int64_t)mode;
- (BOOL)shouldDisplayLensIsSmudged;
- (CAMLensSmudgeDisplayState)init;
- (CAMLensSmudgeDisplayState)initWithDelegate:(id)delegate devicePosition:(int64_t)position displayDuration:(double)duration preferences:(id)preferences;
- (void)acknowledgeSmudgeDetection;
- (void)didEnterBackground;
- (void)setStatus:(int64_t)status;
@end

@implementation CAMLensSmudgeDisplayState

- (void)didEnterBackground
{
  selfCopy = self;
  sub_1A395FEE0();
}

- (CAMLensSmudgeDisplayState)initWithDelegate:(id)delegate devicePosition:(int64_t)position displayDuration:(double)duration preferences:(id)preferences
{
  swift_unknownObjectRetain();
  preferencesCopy = preferences;
  v11 = sub_1A3961900(duration, delegate, position, preferencesCopy);
  swift_unknownObjectRelease();

  return v11;
}

- (void)setStatus:(int64_t)status
{
  selfCopy = self;
  sub_1A395F17C(status);
}

- (BOOL)shouldDisplayLensIsSmudged
{
  if (*(&self->super.isa + OBJC_IVAR___CAMLensSmudgeDisplayState__status) == 2)
  {
    v2 = *(&self->super.isa + OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition);
    selfCopy = self;
    v4 = sub_1A395F7F8(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)acknowledgeSmudgeDetection
{
  selfCopy = self;
  sub_1A39601A0();
}

+ (void)logModeChangedWithMode:(int64_t)mode
{
  sub_1A3A31F20();
  MEMORY[0x1A58F7770](0x1000000000000018, 0x80000001A3AA5450);
  v4 = CAMCaptureMode.description.getter(mode);
  MEMORY[0x1A58F7770](v4);

  MEMORY[0x1A58F7770](0xD000000000000024, 0x80000001A3AA5470);
  sub_1A39613D0(0, 0xE000000000000000, 0, 0, &qword_1ED998210, &qword_1ED998218, MEMORY[0x1E69E9450]);
}

- (CAMLensSmudgeDisplayState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end