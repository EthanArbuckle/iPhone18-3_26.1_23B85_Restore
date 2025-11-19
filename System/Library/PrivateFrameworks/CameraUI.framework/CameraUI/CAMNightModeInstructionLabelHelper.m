@interface CAMNightModeInstructionLabelHelper
+ (id)localizedTextWithSeconds:(int64_t)a3;
- (CAMNightModeInstructionLabelHelper)init;
@end

@implementation CAMNightModeInstructionLabelHelper

- (CAMNightModeInstructionLabelHelper)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CAMNightModeInstructionLabelHelper *)&v3 init];
}

+ (id)localizedTextWithSeconds:(int64_t)a3
{
  _s8CameraUI31NightModeInstructionLabelHelperC13localizedText7secondsSSSi_tFZ_0();
  v3 = sub_1A3A31810();

  return v3;
}

@end