@interface MedicalIDCache
- (_TtC16HealthExperience14MedicalIDCache)init;
- (void)medicalIDDidChange;
@end

@implementation MedicalIDCache

- (_TtC16HealthExperience14MedicalIDCache)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)medicalIDDidChange
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0xF8);
  selfCopy = self;
  v2();
}

@end