@interface _PlaceableAsJUPlaceable
- (JUMeasurements)measureToFit:(CGSize)fit withTraitCollection:(id)collection;
- (NSString)description;
- (_TtC5JetUI23_PlaceableAsJUPlaceable)init;
- (void)placeAtRect:(CGRect)rect withTraitCollection:(id)collection;
@end

@implementation _PlaceableAsJUPlaceable

- (JUMeasurements)measureToFit:(CGSize)fit withTraitCollection:(id)collection
{
  height = fit.height;
  width = fit.width;
  v8 = (&self->super.isa + OBJC_IVAR____TtC5JetUI23_PlaceableAsJUPlaceable_base);
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v11 = *(v10 + 8);
  collectionCopy = collection;
  selfCopy = self;
  v14 = v11(collectionCopy, v9, v10, width, height);
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = v14;
  v22 = v16;
  v23 = v18;
  v24 = v20;
  result.var3 = v24;
  result.var2 = v23;
  result.var1 = v22;
  result.var0 = v21;
  return result;
}

- (void)placeAtRect:(CGRect)rect withTraitCollection:(id)collection
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = (&self->super.isa + OBJC_IVAR____TtC5JetUI23_PlaceableAsJUPlaceable_base);
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v13 = *(v12 + 16);
  collectionCopy = collection;
  selfCopy = self;
  v13(collectionCopy, v11, v12, x, y, width, height);
}

- (NSString)description
{
  sub_1BAD14A3C(self + OBJC_IVAR____TtC5JetUI23_PlaceableAsJUPlaceable_base, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC2AE80);
  sub_1BAD9CFB8();
  v2 = sub_1BAD9CF38();

  return v2;
}

- (_TtC5JetUI23_PlaceableAsJUPlaceable)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end