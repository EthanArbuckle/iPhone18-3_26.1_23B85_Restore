@interface CKMaterialPlatterView
+ (_TtC7ChatKit21CKMaterialPlatterView)materialPlatterViewWithColor:(id)a3;
+ (_TtC7ChatKit21CKMaterialPlatterView)materialPlatterViewWithGrayMaterial;
- (_TtC7ChatKit21CKMaterialPlatterView)initWithCoder:(id)a3;
- (_TtC7ChatKit21CKMaterialPlatterView)initWithFrame:(CGRect)a3;
- (void)configureMaterialForColor:(id)a3;
- (void)configureWithGrayMaterial;
- (void)layoutSublayersOfLayer:(id)a3;
@end

@implementation CKMaterialPlatterView

- (_TtC7ChatKit21CKMaterialPlatterView)initWithCoder:(id)a3
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190A1A880(v4);
}

- (_TtC7ChatKit21CKMaterialPlatterView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (_TtC7ChatKit21CKMaterialPlatterView)materialPlatterViewWithGrayMaterial
{
  v5 = 2;
  v2 = objc_allocWithZone(type metadata accessor for CKMaterialPlatterView());
  v3 = CKMaterialPlatterView.init(materialConfiguration:)(&v5);

  return v3;
}

+ (_TtC7ChatKit21CKMaterialPlatterView)materialPlatterViewWithColor:(id)a3
{
  v8 = a3;
  v4 = objc_allocWithZone(type metadata accessor for CKMaterialPlatterView());
  v5 = a3;
  v6 = CKMaterialPlatterView.init(materialConfiguration:)(&v8);

  return v6;
}

- (void)configureWithGrayMaterial
{
  v3 = 2;
  v2 = self;
  sub_190A1A3FC(&v3);
}

- (void)configureMaterialForColor:(id)a3
{
  v6 = a3;
  v4 = a3;
  v5 = self;
  sub_190A1A3FC(&v6);
}

@end