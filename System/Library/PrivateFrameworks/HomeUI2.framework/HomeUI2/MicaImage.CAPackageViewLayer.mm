@interface MicaImage.CAPackageViewLayer
- (_TtCV7HomeUI29MicaImageP33_268EDE8465BB49740E8AD9859354D22018CAPackageViewLayer)init;
- (_TtCV7HomeUI29MicaImageP33_268EDE8465BB49740E8AD9859354D22018CAPackageViewLayer)initWithCoder:(id)a3;
- (_TtCV7HomeUI29MicaImageP33_268EDE8465BB49740E8AD9859354D22018CAPackageViewLayer)initWithLayer:(id)a3;
- (void)layoutSublayers;
@end

@implementation MicaImage.CAPackageViewLayer

- (void)layoutSublayers
{
  v2 = self;
  sub_2544DE5A8();
}

- (_TtCV7HomeUI29MicaImageP33_268EDE8465BB49740E8AD9859354D22018CAPackageViewLayer)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR____TtCV7HomeUI29MicaImageP33_268EDE8465BB49740E8AD9859354D22018CAPackageViewLayer_packageLayer) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(MicaImage.CAPackageViewLayer *)&v5 init];
}

- (_TtCV7HomeUI29MicaImageP33_268EDE8465BB49740E8AD9859354D22018CAPackageViewLayer)initWithLayer:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_25454C0A4();
  swift_unknownObjectRelease();
  *(&self->super.super.isa + OBJC_IVAR____TtCV7HomeUI29MicaImageP33_268EDE8465BB49740E8AD9859354D22018CAPackageViewLayer_packageLayer) = 0;
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = sub_25454C324();
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(MicaImage.CAPackageViewLayer *)&v8 initWithLayer:v5];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

- (_TtCV7HomeUI29MicaImageP33_268EDE8465BB49740E8AD9859354D22018CAPackageViewLayer)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR____TtCV7HomeUI29MicaImageP33_268EDE8465BB49740E8AD9859354D22018CAPackageViewLayer_packageLayer) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(MicaImage.CAPackageViewLayer *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end