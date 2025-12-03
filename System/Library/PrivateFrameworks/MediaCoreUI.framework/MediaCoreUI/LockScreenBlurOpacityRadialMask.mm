@interface LockScreenBlurOpacityRadialMask
- (_TtC11MediaCoreUI31LockScreenBlurOpacityRadialMask)init;
- (_TtC11MediaCoreUI31LockScreenBlurOpacityRadialMask)initWithCoder:(id)coder;
- (_TtC11MediaCoreUI31LockScreenBlurOpacityRadialMask)initWithLayer:(id)layer;
@end

@implementation LockScreenBlurOpacityRadialMask

- (_TtC11MediaCoreUI31LockScreenBlurOpacityRadialMask)init
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for LockScreenBlurOpacityRadialMask();
  v2 = [(LockScreenBlurOpacityRadialMask *)&v6 init];
  v3 = *((*MEMORY[0x1E69E7D40] & v2->super.super.isa) + 0x50);
  v4 = v2;
  v3();

  return v4;
}

- (_TtC11MediaCoreUI31LockScreenBlurOpacityRadialMask)initWithLayer:(id)layer
{
  swift_unknownObjectRetain();
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v10, v10[3]);
  v4 = sub_1C5BCBDD4();
  v9.receiver = self;
  v9.super_class = type metadata accessor for LockScreenBlurOpacityRadialMask();
  v5 = [(LockScreenBlurOpacityRadialMask *)&v9 initWithLayer:v4];
  swift_unknownObjectRelease();
  v6 = *((*MEMORY[0x1E69E7D40] & v5->super.super.isa) + 0x50);
  v7 = v5;
  v6();

  __swift_destroy_boxed_opaque_existential_0(v10);
  return v7;
}

- (_TtC11MediaCoreUI31LockScreenBlurOpacityRadialMask)initWithCoder:(id)coder
{
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

@end