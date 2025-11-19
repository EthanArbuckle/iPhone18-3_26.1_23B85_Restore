@interface ODINFHardwareMonitor
- (_TtC17CoreODIEssentials20ODINFHardwareMonitor)init;
- (void)hardwareStateDidChange;
@end

@implementation ODINFHardwareMonitor

- (void)hardwareStateDidChange
{

  sub_1DAFDFB50();
}

- (_TtC17CoreODIEssentials20ODINFHardwareMonitor)init
{
  swift_defaultActor_initialize();
  v3 = OBJC_IVAR____TtC17CoreODIEssentials20ODINFHardwareMonitor_continuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F0B0, &qword_1DB0A2820);
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for ODINFHardwareMonitor();
  return [(ODINFHardwareMonitor *)&v6 init];
}

@end