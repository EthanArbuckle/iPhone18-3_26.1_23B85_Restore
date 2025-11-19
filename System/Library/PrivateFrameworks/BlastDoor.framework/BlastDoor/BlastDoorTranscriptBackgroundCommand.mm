@interface BlastDoorTranscriptBackgroundCommand
- (BlastDoorTranscriptBackgroundCommand)init;
- (BlastDoorTranscriptBackgroundCommandTypeWrapper)type;
- (NSString)description;
- (int64_t)replicationSourceID;
@end

@implementation BlastDoorTranscriptBackgroundCommand

- (NSString)description
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand, 0x131uLL);
  memcpy(v6, self + OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand, sizeof(v6));
  sub_21430890C(__dst, v5);
  sub_2146D9608();
  v3 = sub_2146D9588();

  return v3;
}

- (BlastDoorTranscriptBackgroundCommandTypeWrapper)type
{
  memcpy(__dst, self + OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand, 0x131uLL);
  v2 = type metadata accessor for _ObjCEnumTranscriptBackgroundCommandTypeWrapper();
  v3 = objc_allocWithZone(v2);
  memcpy(&v3[OBJC_IVAR___BlastDoorTranscriptBackgroundCommandTypeWrapper_transcriptBackgroundCommandType], __dst, 0x122uLL);
  sub_21430890C(__dst, v7);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = [(BlastDoorTranscriptBackgroundCommand *)&v6 init];

  return v4;
}

- (int64_t)replicationSourceID
{
  if (self->transcriptBackgroundCommand[OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand + 296])
  {
    return 0;
  }

  else
  {
    return *&self->transcriptBackgroundCommand[OBJC_IVAR___BlastDoorTranscriptBackgroundCommand_transcriptBackgroundCommand + 288];
  }
}

- (BlastDoorTranscriptBackgroundCommand)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end