@interface BlastDoorEditMessageCommand
- (BlastDoorEditMessageCommand)init;
- (BlastDoorMessageContent)editedMessagePartBody;
- (BlastDoorMessageContent)editedMessagePartTranslation;
- (BlastDoorMessageContent)messageContent;
- (BlastDoorMetadata)metadata;
- (int64_t)editType;
- (int64_t)editedMessagePartIndex;
@end

@implementation BlastDoorEditMessageCommand

- (BlastDoorMetadata)metadata
{
  v3 = type metadata accessor for Metadata();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorEditMessageCommand_editMessageCommand, v6, type metadata accessor for Metadata);
  v7 = type metadata accessor for _ObjCMetadataWrapper(0);
  v8 = objc_allocWithZone(v7);
  sub_213FB568C(v6, v8 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = [(BlastDoorEditMessageCommand *)&v11 init];
  sub_213FB5844(v6, type metadata accessor for Metadata);

  return v9;
}

- (int64_t)editType
{
  v2 = self + OBJC_IVAR___BlastDoorEditMessageCommand_editMessageCommand;
  result = v2[*(type metadata accessor for EditMessageCommand() + 24)];
  if (result > 2)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)editedMessagePartIndex
{
  v2 = self + OBJC_IVAR___BlastDoorEditMessageCommand_editMessageCommand;
  v3 = &v2[*(type metadata accessor for EditMessageCommand() + 28)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (BlastDoorMessageContent)editedMessagePartBody
{
  v2 = self + OBJC_IVAR___BlastDoorEditMessageCommand_editMessageCommand;
  v3 = type metadata accessor for EditMessageCommand();
  v4 = 0;
  v5 = &v2[*(v3 + 32)];
  v6 = *(v5 + 1);
  if (v6 != 1)
  {
    v8 = *(v5 + 5);
    v7 = *(v5 + 6);
    v10 = *(v5 + 3);
    v9 = *(v5 + 4);
    v11 = *(v5 + 2);
    v12 = *v5;
    v13 = type metadata accessor for _ObjCMessageContentWrapper();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR___BlastDoorMessageContent_messageContent];
    *v15 = v12;
    *(v15 + 1) = v6;
    *(v15 + 2) = v11;
    *(v15 + 3) = v10;
    *(v15 + 4) = v9;
    *(v15 + 5) = v8;
    *(v15 + 6) = v7;

    sub_214031CA0(v9);
    v17.receiver = v14;
    v17.super_class = v13;
    v4 = [(BlastDoorEditMessageCommand *)&v17 init];
  }

  return v4;
}

- (BlastDoorMessageContent)editedMessagePartTranslation
{
  v2 = self + OBJC_IVAR___BlastDoorEditMessageCommand_editMessageCommand;
  v3 = type metadata accessor for EditMessageCommand();
  v4 = 0;
  v5 = &v2[*(v3 + 40)];
  v6 = *(v5 + 1);
  if (v6 != 1)
  {
    v8 = *(v5 + 5);
    v7 = *(v5 + 6);
    v10 = *(v5 + 3);
    v9 = *(v5 + 4);
    v11 = *(v5 + 2);
    v12 = *v5;
    v13 = type metadata accessor for _ObjCMessageContentWrapper();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR___BlastDoorMessageContent_messageContent];
    *v15 = v12;
    *(v15 + 1) = v6;
    *(v15 + 2) = v11;
    *(v15 + 3) = v10;
    *(v15 + 4) = v9;
    *(v15 + 5) = v8;
    *(v15 + 6) = v7;

    sub_214031CA0(v9);
    v17.receiver = v14;
    v17.super_class = v13;
    v4 = [(BlastDoorEditMessageCommand *)&v17 init];
  }

  return v4;
}

- (BlastDoorMessageContent)messageContent
{
  v2 = self + OBJC_IVAR___BlastDoorEditMessageCommand_editMessageCommand;
  v3 = &v2[*(type metadata accessor for EditMessageCommand() + 44)];
  v5 = *v3;
  v4 = *(v3 + 1);
  v7 = *(v3 + 2);
  v6 = *(v3 + 3);
  v8 = *(v3 + 4);
  v9 = *(v3 + 5);
  v10 = *(v3 + 6);
  v11 = type metadata accessor for _ObjCMessageContentWrapper();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR___BlastDoorMessageContent_messageContent];
  *v13 = v5;
  *(v13 + 1) = v4;
  *(v13 + 2) = v7;
  *(v13 + 3) = v6;
  *(v13 + 4) = v8;
  *(v13 + 5) = v9;
  *(v13 + 6) = v10;

  sub_214031CA0(v8);
  v16.receiver = v12;
  v16.super_class = v11;
  v14 = [(BlastDoorEditMessageCommand *)&v16 init];

  return v14;
}

- (BlastDoorEditMessageCommand)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end