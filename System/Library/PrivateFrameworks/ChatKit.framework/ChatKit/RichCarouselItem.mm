@interface RichCarouselItem
- (BOOL)isEqual:(id)a3;
- (_TtC7ChatKit16RichCarouselItem)init;
- (id)copyWithZone:(void *)a3;
@end

@implementation RichCarouselItem

- (id)copyWithZone:(void *)a3
{
  v4 = self;
  sub_1908CDC84(a3, v7);

  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = sub_190D58740();
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_1908CDE50(v8);

  sub_19021E7D8(v8);
  return v6 & 1;
}

- (_TtC7ChatKit16RichCarouselItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end