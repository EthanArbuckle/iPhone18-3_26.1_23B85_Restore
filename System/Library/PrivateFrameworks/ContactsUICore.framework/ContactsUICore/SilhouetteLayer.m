@interface SilhouetteLayer
- (_TtC14ContactsUICore15SilhouetteLayer)init;
- (_TtC14ContactsUICore15SilhouetteLayer)initWithCoder:(id)a3;
- (_TtC14ContactsUICore15SilhouetteLayer)initWithLayer:(id)a3;
- (void)display;
@end

@implementation SilhouetteLayer

- (_TtC14ContactsUICore15SilhouetteLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_1A34CD920();
  swift_unknownObjectRelease();
  return sub_1A33F8B60(v4);
}

- (_TtC14ContactsUICore15SilhouetteLayer)init
{
  *(&self->super.super.isa + OBJC_IVAR____TtC14ContactsUICore15SilhouetteLayer_spec) = 2;
  *(&self->super.super.isa + OBJC_IVAR____TtC14ContactsUICore15SilhouetteLayer____lazy_storage___businessLayer) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC14ContactsUICore15SilhouetteLayer____lazy_storage___personLayer) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for SilhouetteLayer();
  v2 = [(SilhouetteLayer *)&v4 init];
  [(SilhouetteLayer *)v2 setNeedsDisplay];
  return v2;
}

- (_TtC14ContactsUICore15SilhouetteLayer)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC14ContactsUICore15SilhouetteLayer_spec) = 2;
  *(&self->super.super.isa + OBJC_IVAR____TtC14ContactsUICore15SilhouetteLayer____lazy_storage___businessLayer) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC14ContactsUICore15SilhouetteLayer____lazy_storage___personLayer) = 0;
  result = sub_1A34CDC10();
  __break(1u);
  return result;
}

- (void)display
{
  v2 = self;
  sub_1A33F8EE0();
}

@end