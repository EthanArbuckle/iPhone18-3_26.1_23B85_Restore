@interface CKMaterialPlatterView
+ (_TtC7ChatKit21CKMaterialPlatterView)materialPlatterViewWithColor:(id)color;
+ (_TtC7ChatKit21CKMaterialPlatterView)materialPlatterViewWithGrayMaterial;
- (_TtC7ChatKit21CKMaterialPlatterView)initWithCoder:(id)coder;
- (_TtC7ChatKit21CKMaterialPlatterView)initWithFrame:(CGRect)frame;
- (void)configureMaterialForColor:(id)color;
- (void)configureWithGrayMaterial;
- (void)layoutSublayersOfLayer:(id)layer;
@end

@implementation CKMaterialPlatterView

- (_TtC7ChatKit21CKMaterialPlatterView)initWithCoder:(id)coder
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  sub_190A1A880(layerCopy);
}

- (_TtC7ChatKit21CKMaterialPlatterView)initWithFrame:(CGRect)frame
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

+ (_TtC7ChatKit21CKMaterialPlatterView)materialPlatterViewWithColor:(id)color
{
  colorCopy = color;
  v4 = objc_allocWithZone(type metadata accessor for CKMaterialPlatterView());
  colorCopy2 = color;
  v6 = CKMaterialPlatterView.init(materialConfiguration:)(&colorCopy);

  return v6;
}

- (void)configureWithGrayMaterial
{
  v3 = 2;
  selfCopy = self;
  sub_190A1A3FC(&v3);
}

- (void)configureMaterialForColor:(id)color
{
  colorCopy = color;
  colorCopy2 = color;
  selfCopy = self;
  sub_190A1A3FC(&colorCopy);
}

@end