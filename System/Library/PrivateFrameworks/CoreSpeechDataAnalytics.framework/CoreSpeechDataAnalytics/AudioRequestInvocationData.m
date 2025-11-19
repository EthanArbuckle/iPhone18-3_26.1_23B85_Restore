@interface AudioRequestInvocationData
- (_TtC23CoreSpeechDataAnalytics26AudioRequestInvocationData)init;
- (_TtC23CoreSpeechDataAnalytics26AudioRequestInvocationData)initWithIsVoiceTrigger:(BOOL)a3 isButtonPress:(BOOL)a4;
@end

@implementation AudioRequestInvocationData

- (_TtC23CoreSpeechDataAnalytics26AudioRequestInvocationData)initWithIsVoiceTrigger:(BOOL)a3 isButtonPress:(BOOL)a4
{
  *(&self->super.isa + OBJC_IVAR____TtC23CoreSpeechDataAnalytics26AudioRequestInvocationData_isVoiceTrigger) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC23CoreSpeechDataAnalytics26AudioRequestInvocationData_isButtonPress) = a4;
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