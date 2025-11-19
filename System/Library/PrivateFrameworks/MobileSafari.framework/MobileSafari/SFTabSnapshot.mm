@interface SFTabSnapshot
- (SFTabSnapshot)init;
- (SFTabSnapshot)initWithImage:(id)a3 metadata:(id)a4;
@end

@implementation SFTabSnapshot

- (SFTabSnapshot)initWithImage:(id)a3 metadata:(id)a4
{
  *(&self->super.isa + OBJC_IVAR___SFTabSnapshot_image) = a3;
  v6 = a3;
  v7 = a4;
  [v7 copyWithZone_];
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