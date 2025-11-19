@interface BlastDoorTranscriptBackgroundStandaloneCommand
- (BlastDoorTranscriptBackgroundCommand)command;
- (BlastDoorTranscriptBackgroundStandaloneCommand)init;
- (NSString)description;
@end

@implementation BlastDoorTranscriptBackgroundStandaloneCommand

- (NSString)description
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorTranscriptBackgroundStandaloneCommand_transcriptBackgroundStandaloneCommand, 0x131uLL);
  memcpy(v6, self + OBJC_IVAR___BlastDoorTranscriptBackgroundStandaloneCommand_transcriptBackgroundStandaloneCommand, sizeof(v6));
  sub_21459337C(__dst, v5);
  sub_2146D9608();
  v3 = sub_2146D9588();

  return v3;
}

- (BlastDoorTranscriptBackgroundCommand)command
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorTranscriptBackgroundStandaloneCommand_transcriptBackgroundStandaloneCommand, 0x131uLL);
  v2 = type metadata accessor for _ObjCTranscriptBackgroundCommandWrapper();
  v3 = objc_allocWithZone(v2);
  memcpy(&v3[OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand], __dst, 0x131uLL);
  sub_21459337C(__dst, v7);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = [(BlastDoorTranscriptBackgroundStandaloneCommand *)&v6 init];

  return v4;
}

- (BlastDoorTranscriptBackgroundStandaloneCommand)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end