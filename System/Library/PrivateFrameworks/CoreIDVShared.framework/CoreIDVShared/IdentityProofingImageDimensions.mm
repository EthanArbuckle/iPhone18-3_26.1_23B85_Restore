@interface IdentityProofingImageDimensions
- (_TtC13CoreIDVShared31IdentityProofingImageDimensions)init;
- (_TtC13CoreIDVShared31IdentityProofingImageDimensions)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IdentityProofingImageDimensions

- (_TtC13CoreIDVShared31IdentityProofingImageDimensions)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  type metadata accessor for IdentityImageDimension();
  v6 = a3;
  *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_idFront) = sub_225CCEF14();
  *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_idBack) = sub_225CCEF14();
  *(&self->super.isa + OBJC_IVAR____TtC13CoreIDVShared31IdentityProofingImageDimensions_selfie) = sub_225CCEF14();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = [(IdentityProofingImageDimensions *)&v9 init];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  IdentityProofingImageDimensions.encode(with:)(v4);
}

- (_TtC13CoreIDVShared31IdentityProofingImageDimensions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end