@interface HTAudioRouteRequirementManager
- (_TtC11HearingTest30HTAudioRouteRequirementManager)init;
- (void)audioSessionRouteChangeHander:(id)hander;
@end

@implementation HTAudioRouteRequirementManager

- (void)audioSessionRouteChangeHander:(id)hander
{
  v4 = sub_25214171C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2521416FC();
  selfCopy = self;
  sub_25213C570(v8);

  (*(v5 + 8))(v8, v4);
}

- (_TtC11HearingTest30HTAudioRouteRequirementManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end