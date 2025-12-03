@interface MRZLayer
- (_TtC9CoreIDVUI8MRZLayer)init;
- (_TtC9CoreIDVUI8MRZLayer)initWithCoder:(id)coder;
- (_TtC9CoreIDVUI8MRZLayer)initWithLayer:(id)layer;
@end

@implementation MRZLayer

- (_TtC9CoreIDVUI8MRZLayer)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_245911354();
  swift_unknownObjectRelease();
  return sub_2457E46FC(v4);
}

- (_TtC9CoreIDVUI8MRZLayer)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC9CoreIDVUI8MRZLayer_mrzLineLayers) = MEMORY[0x277D84F90];
  result = sub_2459115D4();
  __break(1u);
  return result;
}

- (_TtC9CoreIDVUI8MRZLayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end