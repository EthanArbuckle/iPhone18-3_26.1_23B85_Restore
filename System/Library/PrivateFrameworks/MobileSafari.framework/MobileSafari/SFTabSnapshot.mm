@interface SFTabSnapshot
- (SFTabSnapshot)init;
- (SFTabSnapshot)initWithImage:(id)image metadata:(id)metadata;
@end

@implementation SFTabSnapshot

- (SFTabSnapshot)initWithImage:(id)image metadata:(id)metadata
{
  *(&self->super.isa + OBJC_IVAR___SFTabSnapshot_image) = image;
  imageCopy = image;
  metadataCopy = metadata;
  [metadataCopy copyWithZone_];
  sub_18BC218B8();
  swift_unknownObjectRelease();
  type metadata accessor for SFTabSnapshotMetadata(0);
  swift_dynamicCast();
  *(&self->super.isa + OBJC_IVAR___SFTabSnapshot_metadata) = v11;
  v10.receiver = self;
  v10.super_class = SFTabSnapshot;
  v8 = [(SFTabSnapshot *)&v10 init];

  return v8;
}

- (SFTabSnapshot)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end