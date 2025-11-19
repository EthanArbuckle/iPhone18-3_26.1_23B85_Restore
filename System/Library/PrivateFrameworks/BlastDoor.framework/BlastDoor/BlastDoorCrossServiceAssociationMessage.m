@interface BlastDoorCrossServiceAssociationMessage
- (BlastDoorCrossServiceAssociationMessage)init;
- (BlastDoorMetadata)metadata;
- (NSUUID)replacementGUID;
@end

@implementation BlastDoorCrossServiceAssociationMessage

- (BlastDoorMetadata)metadata
{
  v3 = type metadata accessor for Metadata();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorCrossServiceAssociationMessage_crossServiceAssociationMessage, v6, type metadata accessor for Metadata);
  v7 = type metadata accessor for _ObjCMetadataWrapper(0);
  v8 = objc_allocWithZone(v7);
  sub_213FB568C(v6, v8 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = [(BlastDoorCrossServiceAssociationMessage *)&v11 init];
  sub_213FB5844(v6, type metadata accessor for Metadata);

  return v9;
}

- (NSUUID)replacementGUID
{
  v3 = sub_2146D8B88();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self + OBJC_IVAR___BlastDoorCrossServiceAssociationMessage_crossServiceAssociationMessage;
  v9 = type metadata accessor for CrossServiceAssociationMessage();
  (*(v4 + 16))(v7, &v8[*(v9 + 20)], v3);
  v10 = sub_2146D8B38();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (BlastDoorCrossServiceAssociationMessage)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end