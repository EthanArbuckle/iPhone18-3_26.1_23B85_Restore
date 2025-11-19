@interface _PlaceableAsJUPlaceable
- (JUMeasurements)measureToFit:(CGSize)a3 withTraitCollection:(id)a4;
- (NSString)description;
- (_TtC5JetUI23_PlaceableAsJUPlaceable)init;
- (void)placeAtRect:(CGRect)a3 withTraitCollection:(id)a4;
@end

@implementation _PlaceableAsJUPlaceable

- (JUMeasurements)measureToFit:(CGSize)a3 withTraitCollection:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8 = (&self->super.isa + OBJC_IVAR____TtC5JetUI23_PlaceableAsJUPlaceable_base);
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v11 = *(v10 + 8);
  v12 = a4;
  v13 = self;
  v14 = v11(v12, v9, v10, width, height);
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

- (void)placeAtRect:(CGRect)a3 withTraitCollection:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = (&self->super.isa + OBJC_IVAR____TtC5JetUI23_PlaceableAsJUPlaceable_base);
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v13 = *(v12 + 16);
  v14 = a4;
  v15 = self;
  v13(v14, v11, v12, x, y, width, height);
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