@interface MAGARService
- (_TtC16MagnifierSupport12MAGARService)init;
- (void)replayConfigurationDidFinishReplaying:(id)a3;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)sessionInterruptionEnded:(id)a3;
- (void)sessionWasInterrupted:(id)a3;
@end

@implementation MAGARService

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_257D1C38C(v6, v7);
}

- (void)sessionWasInterrupted:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257D1D31C(v4);
}

- (void)sessionInterruptionEnded:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257D1D48C(v4);
}

- (_TtC16MagnifierSupport12MAGARService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)replayConfigurationDidFinishReplaying:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F8F5D70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  swift_beginAccess();
  if (byte_27F8F87B0 == 1)
  {
    byte_27F8F87B0 = 0;
  }

  else
  {
    v7 = sub_257ECF930();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = self;
    v9 = self;
    sub_257E81524(0, 0, v6, &unk_257EE3C60, v8);
  }
}

@end