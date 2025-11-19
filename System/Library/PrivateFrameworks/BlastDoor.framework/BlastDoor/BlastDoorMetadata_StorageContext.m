@interface BlastDoorMetadata_StorageContext
- (BlastDoorMetadata_StorageContext)init;
- (NSString)description;
@end

@implementation BlastDoorMetadata_StorageContext

- (NSString)description
{
  v4 = *(&self->super.isa + OBJC_IVAR___BlastDoorMetadata_StorageContext_metadata_StorageContext);
  v5 = *(&self->super.isa + OBJC_IVAR___BlastDoorMetadata_StorageContext_metadata_StorageContext + 1);
  sub_2146D9608();
  v2 = sub_2146D9588();

  return v2;
}

- (BlastDoorMetadata_StorageContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end