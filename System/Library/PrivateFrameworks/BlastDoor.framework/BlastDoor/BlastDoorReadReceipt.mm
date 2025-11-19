@interface BlastDoorReadReceipt
- (BlastDoorMetadata)metadata;
- (BlastDoorReadReceipt)init;
@end

@implementation BlastDoorReadReceipt

- (BlastDoorMetadata)metadata
{
  v3 = type metadata accessor for Metadata();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorReadReceipt_readReceipt, v6, type metadata accessor for Metadata);
  v7 = type metadata accessor for _ObjCMetadataWrapper(0);
  v8 = objc_allocWithZone(v7);
  sub_213FB568C(v6, v8 + OBJC_IVAR___BlastDoorMetadata_metadata, type metadata accessor for Metadata);
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = [(BlastDoorReadReceipt *)&v11 init];
  sub_213FB5844(v6, type metadata accessor for Metadata);

  return v9;
}

- (BlastDoorReadReceipt)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end