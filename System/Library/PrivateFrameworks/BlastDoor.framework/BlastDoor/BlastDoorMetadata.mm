@interface BlastDoorMetadata
- (BlastDoorMetadata)init;
- (BlastDoorMetadata_StorageContext)storageContext;
- (NSUUID)messageGUID;
- (unint64_t)timestamp;
@end

@implementation BlastDoorMetadata

- (NSUUID)messageGUID
{
  v3 = type metadata accessor for Metadata();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D8B88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorMetadata_metadata, v6, type metadata accessor for Metadata);
  (*(v8 + 32))(v11, v6, v7);
  v12 = sub_2146D8B38();
  (*(v8 + 8))(v11, v7);

  return v12;
}

- (unint64_t)timestamp
{
  v2 = self + OBJC_IVAR___BlastDoorMetadata_metadata;
  v3 = &v2[*(type metadata accessor for Metadata() + 20)];
  if (v3[8])
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

- (BlastDoorMetadata_StorageContext)storageContext
{
  v2 = self + OBJC_IVAR___BlastDoorMetadata_metadata;
  v3 = &v2[*(type metadata accessor for Metadata() + 32)];
  v4 = *v3;
  v5 = v3[1];
  v6 = type metadata accessor for _ObjCMetadata_StorageContextWrapper();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___BlastDoorMetadata_StorageContext_metadata_StorageContext];
  *v8 = v4;
  v8[1] = v5;
  v11.receiver = v7;
  v11.super_class = v6;
  v9 = [(BlastDoorMetadata *)&v11 init];

  return v9;
}

- (BlastDoorMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end