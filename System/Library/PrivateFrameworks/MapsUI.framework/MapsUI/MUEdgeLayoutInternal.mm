@interface MUEdgeLayoutInternal
- (MUEdgeLayoutInternal)initWithItem:(id)item container:(id)container insets:(NSDirectionalEdgeInsets)insets edges:(unint64_t)edges priority:(float)priority;
- (MULayoutItem)container;
- (MULayoutItem)item;
- (NSDirectionalEdgeInsets)insets;
- (float)priority;
- (unint64_t)edges;
- (void)setContainer:(id)container;
- (void)setEdges:(unint64_t)edges;
- (void)setInsets:(NSDirectionalEdgeInsets)insets;
- (void)setItem:(id)item;
- (void)setPriority:(float)priority;
@end

@implementation MUEdgeLayoutInternal

- (MUEdgeLayoutInternal)initWithItem:(id)item container:(id)container insets:(NSDirectionalEdgeInsets)insets edges:(unint64_t)edges priority:(float)priority
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v15 = sub_1C56233C8(item, top, leading, bottom, trailing, priority, container, edges);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v15;
}

- (MULayoutItem)item
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  selfCopy = self;
  sub_1C5623A68(v6);
  Strong = swift_unknownObjectWeakLoadStrong();

  sub_1C5623F2C(v6);

  return Strong;
}

- (void)setItem:(id)item
{
  selfCopy = self;
  if (item)
  {
    [swift_unknownObjectRetain() _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  }

  v5 = *(&selfCopy->super.super.isa + OBJC_IVAR___MUEdgeLayoutInternal_builder);
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
  selfCopy = self;
  sub_1C5623A68(v6);
  Strong = swift_unknownObjectWeakLoadStrong();

  sub_1C5623F2C(v6);

  return Strong;
}

- (void)setContainer:(id)container
{
  v4 = OBJC_IVAR___MUEdgeLayoutInternal_builder;
  v5 = *(&self->super.super.isa + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  swift_unknownObjectRetain();
  selfCopy = self;
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
  selfCopy = self;
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

- (void)setInsets:(NSDirectionalEdgeInsets)insets
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  v8 = OBJC_IVAR___MUEdgeLayoutInternal_builder;
  v9 = *(&self->super.super.isa + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  selfCopy = self;
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
  selfCopy = self;
  sub_1C5623A68(v6);

  v4 = v6[6];
  sub_1C5623F2C(v6);
  return v4;
}

- (void)setEdges:(unint64_t)edges
{
  v5 = OBJC_IVAR___MUEdgeLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  selfCopy = self;
  sub_1C5623A68(v11);
  edgesCopy = edges;
  v8 = *(&self->super.super.isa + v5);
  sub_1C5623B08(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C5623F2C(v11);
}

- (float)priority
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  selfCopy = self;
  sub_1C5623A68(v6);

  v4 = *&v6[14];
  sub_1C5623F2C(v6);
  return v4;
}

- (void)setPriority:(float)priority
{
  v5 = OBJC_IVAR___MUEdgeLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUEdgeLayoutInternal_builder);
  selfCopy = self;
  sub_1C5623A68(v11);
  priorityCopy = priority;
  v8 = *(&self->super.super.isa + v5);
  sub_1C5623B08(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C5623F2C(v11);
}

@end