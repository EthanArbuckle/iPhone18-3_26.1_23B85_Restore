@interface BlastDoorRepositionStickerCommand
- (BlastDoorMetadata)metadata;
- (BlastDoorRepositionStickerCommand)init;
- (BlastDoorStickerAttachmentInfo)stickerMetadata;
@end

@implementation BlastDoorRepositionStickerCommand

- (BlastDoorMetadata)metadata
{
  v3 = type metadata accessor for Metadata();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorRepositionStickerCommand_repositionStickerCommand, v6, type metadata accessor for Metadata);
  v7 = type metadata accessor for _ObjCMetadataWrapper(0);
  v8 = objc_allocWithZone(v7);
  sub_213FB568C(v6, v8 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = [(BlastDoorRepositionStickerCommand *)&v11 init];
  sub_213FB5844(v6, type metadata accessor for Metadata);

  return v9;
}

- (BlastDoorStickerAttachmentInfo)stickerMetadata
{
  v2 = self + OBJC_IVAR___BlastDoorRepositionStickerCommand_repositionStickerCommand;
  v3 = type metadata accessor for RepositionStickerCommand();
  memcpy(__dst, &v2[*(v3 + 20)], 0x139uLL);
  v4 = type metadata accessor for _ObjCStickerAttachmentInfoWrapper();
  v5 = objc_allocWithZone(v4);
  memcpy(&v5[OBJC_IVAR___BlastDoorStickerAttachmentInfo_stickerAttachmentInfo], __dst, 0x139uLL);
  sub_2142E371C(__dst, v9);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = [(BlastDoorRepositionStickerCommand *)&v8 init];

  return v6;
}

- (BlastDoorRepositionStickerCommand)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end