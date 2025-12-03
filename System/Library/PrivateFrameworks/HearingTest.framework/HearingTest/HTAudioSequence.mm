@interface HTAudioSequence
- (BOOL)checkValidityAndReturnError:(id *)error;
- (_TtC11HearingTest15HTAudioSequence)init;
@end

@implementation HTAudioSequence

- (_TtC11HearingTest15HTAudioSequence)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)checkValidityAndReturnError:(id *)error
{
  if (*(&self->super.isa + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_requiresBluetoothOutput) != 1 || *(&self->super.isa + OBJC_IVAR____TtC11HearingTest15HTAudioSequence_outputMode) != 1)
  {
    return 1;
  }

  selfCopy = self;
  v5 = sub_2520DE3F0(0, 0, 7u);
  swift_willThrow();

  if (error)
  {
    v6 = sub_25214177C();

    v7 = v6;
    result = 0;
    *error = v6;
  }

  else
  {

    return 0;
  }

  return result;
}

@end