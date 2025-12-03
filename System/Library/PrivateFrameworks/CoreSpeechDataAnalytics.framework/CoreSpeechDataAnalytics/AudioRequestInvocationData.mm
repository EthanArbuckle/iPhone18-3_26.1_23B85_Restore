@interface AudioRequestInvocationData
- (_TtC23CoreSpeechDataAnalytics26AudioRequestInvocationData)init;
- (_TtC23CoreSpeechDataAnalytics26AudioRequestInvocationData)initWithIsVoiceTrigger:(BOOL)trigger isButtonPress:(BOOL)press;
@end

@implementation AudioRequestInvocationData

- (_TtC23CoreSpeechDataAnalytics26AudioRequestInvocationData)initWithIsVoiceTrigger:(BOOL)trigger isButtonPress:(BOOL)press
{
  *(&self->super.isa + OBJC_IVAR____TtC23CoreSpeechDataAnalytics26AudioRequestInvocationData_isVoiceTrigger) = trigger;
  *(&self->super.isa + OBJC_IVAR____TtC23CoreSpeechDataAnalytics26AudioRequestInvocationData_isButtonPress) = press;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AudioRequestInvocationData();
  return [(AudioRequestInvocationData *)&v5 init];
}

- (_TtC23CoreSpeechDataAnalytics26AudioRequestInvocationData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end