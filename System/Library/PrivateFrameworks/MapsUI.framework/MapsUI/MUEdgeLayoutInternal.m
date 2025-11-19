@interface MUEdgeLayoutInternal
- (MUEdgeLayoutInternal)initWithItem:(id)a3 container:(id)a4 insets:(NSDirectionalEdgeInsets)a5 edges:(unint64_t)a6 priority:(float)a7;
- (MULayoutItem)container;
- (MULayoutItem)item;
- (NSDirectionalEdgeInsets)insets;
- (float)priority;
- (unint64_t)edges;
- (void)setContainer:(id)a3;
- (void)setEdges:(unint64_t)a3;
- (void)setInsets:(NSDirectionalEdgeInsets)a3;
- (void)setItem:(id)a3;
- (void)setPriority:(float)a3;
@end

@implementation MUEdgeLayoutInternal

- (MUEdgeLayoutInternal)initWithItem:(id)a3 container:(id)a4 insets:(NSDirectionalEdgeInsets)a5 edges:(unint64_t)a6 priority:(float)a7
{
  trailing = a5.trailing;
  bottom = a5.bottom;
  leading = a5.leading;
  top = a5.top;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v15 = sub_1C56233C8(a3, top, leading, bottom, trailing, a7, a4, a6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v15;
}

- (MULayoutItem)item
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v6);
  Strong = swift_unknownObjectWeakLoadStrong();

  sub_1C5623F2C(v6);

  return Strong;
}

- (void)setItem:(id)a3
{
  v4 = self;
  if (a3)
  {
    [swift_unknownObjectRetain() _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  }

  v5 = *(&v4->super.super.isa + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  sub_1C5623A68(v8);
  swift_unknownObjectWeakAssign();
  sub_1C5623B08(v8, v7);
  sub_1C5623B40(v7, v6);
  swift_unknownObjectRelease();
  sub_1C5623F2C(v8);
}

- (MULayoutItem)container
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v6);
  Strong = swift_unknownObjectWeakLoadStrong();

  sub_1C5623F2C(v6);

  return Strong;
}

- (void)setContainer:(id)a3
{
  v4 = OBJC_IVAR___MUEdgeLayoutInternal_builder;
  v5 = *(&self->super.super.isa + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  swift_unknownObjectRetain();
  v6 = self;
  sub_1C5623A68(v10);
  swift_unknownObjectWeakAssign();
  v7 = *(&self->super.super.isa + v4);
  sub_1C5623B08(v10, v9);
  sub_1C5623B40(v9, v8);
  swift_unknownObjectRelease();
  sub_1C5623F2C(v10);
}

- (NSDirectionalEdgeInsets)insets
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v12);

  v4 = *&v12[2];
  v5 = *&v12[3];
  v6 = *&v12[4];
  v7 = *&v12[5];
  sub_1C5623F2C(v12);
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  result.trailing = v11;
  result.bottom = v10;
  result.leading = v9;
  result.top = v8;
  return result;
}

- (void)setInsets:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  v8 = OBJC_IVAR___MUEdgeLayoutInternal_builder;
  v9 = *(&self->super.super.isa + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  v10 = self;
  sub_1C5623A68(v14);
  v15 = top;
  v16 = leading;
  v17 = bottom;
  v18 = trailing;
  v11 = *(&self->super.super.isa + v8);
  sub_1C5623B08(v14, v13);
  sub_1C5623B40(v13, v12);
  sub_1C5623F2C(v14);
}

- (unint64_t)edges
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v6);

  v4 = v6[6];
  sub_1C5623F2C(v6);
  return v4;
}

- (void)setEdges:(unint64_t)a3
{
  v5 = OBJC_IVAR___MUEdgeLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  v7 = self;
  sub_1C5623A68(v11);
  v12 = a3;
  v8 = *(&self->super.super.isa + v5);
  sub_1C5623B08(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C5623F2C(v11);
}

- (float)priority
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v6);

  v4 = *&v6[14];
  sub_1C5623F2C(v6);
  return v4;
}

- (void)setPriority:(float)a3
{
  v5 = OBJC_IVAR___MUEdgeLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  v7 = self;
  sub_1C5623A68(v11);
  v12 = a3;
  v8 = *(&self->super.super.isa + v5);
  sub_1C5623B08(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C5623F2C(v11);
}

@end