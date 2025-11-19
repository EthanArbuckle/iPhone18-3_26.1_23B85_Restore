@interface CAMLensSmudgeDisplayState
+ (void)logModeChangedWithMode:(int64_t)a3;
- (BOOL)shouldDisplayLensIsSmudged;
- (CAMLensSmudgeDisplayState)init;
- (CAMLensSmudgeDisplayState)initWithDelegate:(id)a3 devicePosition:(int64_t)a4 displayDuration:(double)a5 preferences:(id)a6;
- (void)acknowledgeSmudgeDetection;
- (void)didEnterBackground;
- (void)setStatus:(int64_t)a3;
@end

@implementation CAMLensSmudgeDisplayState

- (void)didEnterBackground
{
  v1 = a1;
  sub_1A395FEE0();
}

- (CAMLensSmudgeDisplayState)initWithDelegate:(id)a3 devicePosition:(int64_t)a4 displayDuration:(double)a5 preferences:(id)a6
{
  swift_unknownObjectRetain();
  v10 = a6;
  v11 = sub_1A3961900(a5, a3, a4, v10);
  swift_unknownObjectRelease();

  return v11;
}

- (void)setStatus:(int64_t)a3
{
  v4 = self;
  sub_1A395F17C(a3);
}

- (BOOL)shouldDisplayLensIsSmudged
{
  if (*(&self->super.isa + OBJC_IVAR___CAMLensSmudgeDisplayState__status) == 2)
  {
    v2 = *(&self->super.isa + OBJC_IVAR___CAMLensSmudgeDisplayState_devicePosition);
    v3 = self;
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
  v2 = self;
  sub_1A39601A0();
}

+ (void)logModeChangedWithMode:(int64_t)a3
{
  sub_1A3A31F20();
  MEMORY[0x1A58F7770](0x1000000000000018, 0x80000001A3AA5450);
  v4 = CAMCaptureMode.description.getter(a3);
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