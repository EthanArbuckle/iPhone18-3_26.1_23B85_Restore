@interface MUCompositionalStackLayoutInternal
- (MUCompositionalStackLayoutGroupInternal)group;
- (MUCompositionalStackLayoutInternal)initWithContainer:(id)a3 group:(id)a4;
- (MULayoutItem)container;
- (void)setContainer:(id)a3;
- (void)setGroup:(id)a3;
@end

@implementation MUCompositionalStackLayoutInternal

- (MUCompositionalStackLayoutInternal)initWithContainer:(id)a3 group:(id)a4
{
  ObjectType = swift_getObjectType();
  v7 = *((*MEMORY[0x1E69E7D40] & *a4) + 0x58);
  swift_unknownObjectRetain();
  v8 = a4;
  v7(v11);
  v9 = (*(ObjectType + 104))(a3, v11);

  swift_deallocPartialClassInstance();
  return v9;
}

- (MULayoutItem)container
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUCompositionalStackLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v6);
  Strong = swift_unknownObjectWeakLoadStrong();

  sub_1C57796A8(v6);

  return Strong;
}

- (void)setContainer:(id)a3
{
  v4 = OBJC_IVAR___MUCompositionalStackLayoutInternal_builder;
  v5 = *(&self->super.super.isa + OBJC_IVAR___MUCompositionalStackLayoutInternal_builder);
  swift_unknownObjectRetain();
  v6 = self;
  sub_1C5623A68(v10);
  swift_unknownObjectWeakAssign();
  v7 = *(&self->super.super.isa + v4);
  sub_1C57796D8(v10, v9);
  sub_1C5623B40(v9, v8);
  sub_1C57796A8(v10);
  sub_1C5779578();
  swift_unknownObjectRelease();
}

- (MUCompositionalStackLayoutGroupInternal)group
{
  type metadata accessor for CompositionalStackLayout.GroupRef();
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.isa) + 0x88);
  v4 = self;
  v3(v7);
  v5 = sub_1C575D800(v7);

  return v5;
}

- (void)setGroup:(id)a3
{
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *a3) + 0x58);
  v6 = a3;
  v7 = self;
  v5(v8);
  (*((*v4 & v7->super.super.isa) + 0x90))(v8);
}

@end