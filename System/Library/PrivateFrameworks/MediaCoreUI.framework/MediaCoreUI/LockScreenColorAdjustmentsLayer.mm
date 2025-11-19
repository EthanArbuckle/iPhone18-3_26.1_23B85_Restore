@interface LockScreenColorAdjustmentsLayer
- (_TtC11MediaCoreUI31LockScreenColorAdjustmentsLayer)init;
- (_TtC11MediaCoreUI31LockScreenColorAdjustmentsLayer)initWithCoder:(id)a3;
- (_TtC11MediaCoreUI31LockScreenColorAdjustmentsLayer)initWithLayer:(id)a3;
@end

@implementation LockScreenColorAdjustmentsLayer

- (_TtC11MediaCoreUI31LockScreenColorAdjustmentsLayer)init
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for LockScreenColorAdjustmentsLayer();
  v2 = [(LockScreenColorAdjustmentsLayer *)&v4 init];
  sub_1C5B74C80();

  return v2;
}

- (_TtC11MediaCoreUI31LockScreenColorAdjustmentsLayer)initWithLayer:(id)a3
{
  swift_unknownObjectRetain();
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v9, v9[3]);
  v4 = sub_1C5BCBDD4();
  v8.receiver = self;
  v8.super_class = type metadata accessor for LockScreenColorAdjustmentsLayer();
  v5 = [(LockScreenColorAdjustmentsLayer *)&v8 initWithLayer:v4];
  swift_unknownObjectRelease();
  v6 = v5;
  sub_1C5B74C80();

  __swift_destroy_boxed_opaque_existential_0(v9);
  return v6;
}

- (_TtC11MediaCoreUI31LockScreenColorAdjustmentsLayer)initWithCoder:(id)a3
{
  result = sub_1C5BCBBC4();
  __break(1u);
  return result;
}

@end