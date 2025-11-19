@interface ContentRegistry
- (_TtC6LiftUI15ContentRegistry)init;
@end

@implementation ContentRegistry

- (_TtC6LiftUI15ContentRegistry)init
{
  v3 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_contentRegistry;
  v4 = MEMORY[0x277D84F90];
  *(&self->super.isa + v3) = sub_255DC524C(MEMORY[0x277D84F90]);
  v5 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_shapeRegistry;
  *(&self->super.isa + v5) = sub_255DC5238(v4);
  v6 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_modifierRegistry;
  *(&self->super.isa + v6) = sub_255DC5260(v4);
  v7 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_imageModifierRegistry;
  *(&self->super.isa + v7) = sub_255DC5288(v4);
  v8 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_actionRegistry;
  *(&self->super.isa + v8) = sub_255DC5274(v4);
  v10.receiver = self;
  v10.super_class = type metadata accessor for ContentRegistry();
  return [(ContentRegistry *)&v10 init];
}

@end