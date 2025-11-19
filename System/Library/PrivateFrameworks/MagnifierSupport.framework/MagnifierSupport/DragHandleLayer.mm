@interface DragHandleLayer
- (_TtC16MagnifierSupportP33_F38CBD44072C53D5EE09301D90112CC715DragHandleLayer)initWithCoder:(id)a3;
- (_TtC16MagnifierSupportP33_F38CBD44072C53D5EE09301D90112CC715DragHandleLayer)initWithLayer:(id)a3;
@end

@implementation DragHandleLayer

- (_TtC16MagnifierSupportP33_F38CBD44072C53D5EE09301D90112CC715DragHandleLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_257ED0160();
  swift_unknownObjectRelease();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupportP33_F38CBD44072C53D5EE09301D90112CC715DragHandleLayer__scale) = 0x3FF0000000000000;
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v4 = sub_257ED0630();
  v7.receiver = self;
  v7.super_class = type metadata accessor for DragHandleLayer();
  v5 = [(DragHandleLayer *)&v7 initWithLayer:v4];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

- (_TtC16MagnifierSupportP33_F38CBD44072C53D5EE09301D90112CC715DragHandleLayer)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupportP33_F38CBD44072C53D5EE09301D90112CC715DragHandleLayer__scale) = 0x3FF0000000000000;
  result = sub_257ED0410();
  __break(1u);
  return result;
}

@end