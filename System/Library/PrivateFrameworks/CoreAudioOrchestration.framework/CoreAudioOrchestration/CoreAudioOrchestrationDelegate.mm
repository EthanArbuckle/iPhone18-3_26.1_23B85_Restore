@interface CoreAudioOrchestrationDelegate
- (_TtC22CoreAudioOrchestration30CoreAudioOrchestrationDelegate)init;
- (id)registerWithEventCallback:(id)a3;
- (id)subscribeToEventWithDescription:(id)a3;
@end

@implementation CoreAudioOrchestrationDelegate

- (_TtC22CoreAudioOrchestration30CoreAudioOrchestrationDelegate)init
{
  type metadata accessor for Orchestrator();
  swift_allocObject();
  *(&self->super.isa + OBJC_IVAR____TtC22CoreAudioOrchestration30CoreAudioOrchestrationDelegate_orchestrator) = sub_2450C64A8();
  v4.receiver = self;
  v4.super_class = type metadata accessor for CoreAudioOrchestrationDelegate();
  return [(CoreAudioOrchestrationDelegate *)&v4 init];
}

- (id)registerWithEventCallback:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_2450BF434(a3);
  swift_unknownObjectRelease();

  v6 = sub_2450E5798();

  return v6;
}

- (id)subscribeToEventWithDescription:(id)a3
{
  if (a3)
  {
    v4 = sub_2450E57A8();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_2450BF608(v4);

  v6 = sub_2450E5798();

  return v6;
}

@end