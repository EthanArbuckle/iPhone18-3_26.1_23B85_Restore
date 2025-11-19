@interface BlastDoorErrorMessage
- (BlastDoorErrorMessage)init;
- (BlastDoorMetadata)metadata;
- (unsigned)type;
@end

@implementation BlastDoorErrorMessage

- (BlastDoorMetadata)metadata
{
  v3 = type metadata accessor for Metadata();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorErrorMessage_errorMessage, v6, type metadata accessor for Metadata);
  v7 = type metadata accessor for _ObjCMetadataWrapper(0);
  v8 = objc_allocWithZone(v7);
  sub_213FB568C(v6, v8 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = [(BlastDoorErrorMessage *)&v11 init];
  sub_213FB5844(v6, type metadata accessor for Metadata);

  return v9;
}

- (unsigned)type
{
  v2 = self + OBJC_IVAR___BlastDoorErrorMessage_errorMessage;
  v3 = type metadata accessor for ErrorMessage();
  v4 = sub_214592208(word_2147604C8[v2[*(v3 + 20)]]);
  if ((v4 & 0x10000) != 0)
  {
    __break(1u);
  }

  return v4;
}

- (BlastDoorErrorMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end