@interface BFMRequestMetadata
- (BFMRequestMetadata)init;
- (BFMRequestMetadata)initWithFileID:(id)d line:(int)line;
- (NSString)fileID;
@end

@implementation BFMRequestMetadata

- (BFMRequestMetadata)initWithFileID:(id)d line:(int)line
{
  v6 = sub_241CF9038();
  v7 = self + OBJC_IVAR___BFMRequestMetadata_impl;
  *v7 = v6;
  *(v7 + 1) = v8;
  *(v7 + 4) = line;
  v10.receiver = self;
  v10.super_class = BFMRequestMetadata;
  return [(BFMRequestMetadata *)&v10 init];
}

- (NSString)fileID
{
  v2 = *(&self->super.isa + OBJC_IVAR___BFMRequestMetadata_impl);
  v3 = *&self->impl[OBJC_IVAR___BFMRequestMetadata_impl];

  v4 = sub_241CF9008();

  return v4;
}

- (BFMRequestMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end