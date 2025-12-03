@interface ExclaveAudioFormat
- (_TtC22CoreAudioOrchestration18ExclaveAudioFormat)init;
- (id)initFormat:(id)format;
@end

@implementation ExclaveAudioFormat

- (id)initFormat:(id)format
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  return [(ExclaveAudioFormatBase *)&v5 initFormat:format];
}

- (_TtC22CoreAudioOrchestration18ExclaveAudioFormat)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end