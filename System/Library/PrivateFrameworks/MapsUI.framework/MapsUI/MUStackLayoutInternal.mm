@interface MUStackLayoutInternal
- (BOOL)alignmentBoundsContent;
- (BOOL)alignmentBoundsContentForArrangedLayoutItem:(id)a3;
- (BOOL)distributionBoundsContent;
- (BOOL)hasAlignmentForArrangedLayoutItem:(id)a3;
- (MULayoutItem)container;
- (NSArray)arrangedLayoutItems;
- (NSDirectionalEdgeInsets)insets;
- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)a3;
- (UIOffset)offsetForArrangedLayoutItem:(id)a3;
- (double)spacing;
- (float)alignmentFittingSizePriority;
- (float)alignmentFittingSizePriorityForArrangedLayoutItem:(id)a3;
- (float)distributionFittingSizePriority;
- (int64_t)alignment;
- (int64_t)alignmentForArrangedLayoutItem:(id)a3;
- (int64_t)axis;
- (int64_t)distribution;
- (void)removeArrangedLayoutItem:(id)a3;
- (void)setAlignment:(int64_t)a3;
- (void)setAlignment:(int64_t)a3 forArrangedLayoutItem:(id)a4;
- (void)setAlignmentBoundsContent:(BOOL)a3;
- (void)setAlignmentBoundsContent:(BOOL)a3 forArrangedLayoutItem:(id)a4;
- (void)setAlignmentFittingSizePriority:(float)a3;
- (void)setAlignmentFittingSizePriority:(float)a3 forArrangedLayoutItem:(id)a4;
- (void)setArrangedLayoutItems:(id)a3;
- (void)setAxis:(int64_t)a3;
- (void)setContainer:(id)a3;
- (void)setDistribution:(int64_t)a3;
- (void)setDistributionBoundsContent:(BOOL)a3;
- (void)setDistributionFittingSizePriority:(float)a3;
- (void)setInsets:(NSDirectionalEdgeInsets)a3;
- (void)setOffset:(UIOffset)a3 forArrangedLayoutItem:(id)a4;
- (void)setPadding:(NSDirectionalEdgeInsets)a3 forArrangedLayoutItem:(id)a4;
- (void)setSpacing:(double)a3;
@end

@implementation MUStackLayoutInternal

- (MULayoutItem)container
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v6);
  Strong = swift_unknownObjectWeakLoadStrong();

  sub_1C5672E58(v6);

  return Strong;
}

- (void)setContainer:(id)a3
{
  v4 = OBJC_IVAR___MUStackLayoutInternal_builder;
  v5 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  swift_unknownObjectRetain();
  v6 = self;
  sub_1C5623A68(v10);
  swift_unknownObjectWeakAssign();
  v7 = *(&self->super.super.isa + v4);
  sub_1C5672E88(v10, v9);
  sub_1C5623B40(v9, v8);
  sub_1C5672E58(v10);
  sub_1C5672D28();
  swift_unknownObjectRelease();
}

- (int64_t)axis
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v6);

  v4 = v6[1];
  sub_1C5672E58(v6);
  return v4;
}

- (void)setAxis:(int64_t)a3
{
  v5 = OBJC_IVAR___MUStackLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  v7 = self;
  sub_1C5623A68(v11);
  v12 = a3;
  v8 = *(&self->super.super.isa + v5);
  sub_1C5672E88(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C5672E58(v11);
}

- (int64_t)distribution
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v6);
  v4 = sub_1C5724078();

  sub_1C5672E58(v6);
  return v4;
}

- (void)setDistribution:(int64_t)a3
{
  v5 = OBJC_IVAR___MUStackLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  v7 = self;
  sub_1C5623A68(v11);
  sub_1C57240E4(a3);
  v8 = *(&self->super.super.isa + v5);
  sub_1C5672E88(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C5672E58(v11);
}

- (BOOL)distributionBoundsContent
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v5);
  LOBYTE(v2) = sub_1C572470C();

  sub_1C5672E58(v5);
  return v2 & 1;
}

- (void)setDistributionBoundsContent:(BOOL)a3
{
  v5 = OBJC_IVAR___MUStackLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  v7 = self;
  sub_1C5623A68(v11);
  sub_1C5724738(a3);
  v8 = *(&self->super.super.isa + v5);
  sub_1C5672E88(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C5672E58(v11);
}

- (float)distributionFittingSizePriority
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v6);
  v4 = sub_1C57246C0();

  sub_1C5672E58(v6);
  return v4;
}

- (void)setDistributionFittingSizePriority:(float)a3
{
  v5 = OBJC_IVAR___MUStackLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  v7 = self;
  sub_1C5623A68(v11);
  sub_1C5724750(a3);
  v8 = *(&self->super.super.isa + v5);
  sub_1C5672E88(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C5672E58(v11);
}

- (int64_t)alignment
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v6);
  v4 = sub_1C57243F4();

  sub_1C5672E58(v6);
  return v4;
}

- (void)setAlignment:(int64_t)a3
{
  v5 = OBJC_IVAR___MUStackLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  v7 = self;
  sub_1C5623A68(v11);
  sub_1C572440C(a3);
  v8 = *(&self->super.super.isa + v5);
  sub_1C5672E88(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C5672E58(v11);
}

- (BOOL)alignmentBoundsContent
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v5);
  LOBYTE(v2) = sub_1C5724830();

  sub_1C5672E58(v5);
  return v2 & 1;
}

- (void)setAlignmentBoundsContent:(BOOL)a3
{
  v5 = OBJC_IVAR___MUStackLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  v7 = self;
  sub_1C5623A68(v11);
  sub_1C5724854(a3);
  v8 = *(&self->super.super.isa + v5);
  sub_1C5672E88(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C5672E58(v11);
}

- (float)alignmentFittingSizePriority
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v6);
  v4 = sub_1C5724800();

  sub_1C5672E58(v6);
  return v4;
}

- (void)setAlignmentFittingSizePriority:(float)a3
{
  v5 = OBJC_IVAR___MUStackLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  v7 = self;
  sub_1C5623A68(v11);
  sub_1C57248B8(a3);
  v8 = *(&self->super.super.isa + v5);
  sub_1C5672E88(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C5672E58(v11);
}

- (double)spacing
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v6);

  v4 = *&v6[5];
  sub_1C5672E58(v6);
  return v4;
}

- (void)setSpacing:(double)a3
{
  v5 = OBJC_IVAR___MUStackLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  v7 = self;
  sub_1C5623A68(v11);
  v12 = a3;
  v8 = *(&self->super.super.isa + v5);
  sub_1C5672E88(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C5672E58(v11);
}

- (NSDirectionalEdgeInsets)insets
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v12);

  v4 = *&v12[6];
  v5 = *&v12[7];
  v6 = *&v12[8];
  v7 = *&v12[9];
  sub_1C5672E58(v12);
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
  v8 = OBJC_IVAR___MUStackLayoutInternal_builder;
  v9 = *(&self->super.super.isa + OBJC_IVAR___MUStackLayoutInternal_builder);
  v10 = self;
  sub_1C5623A68(v14);
  v15 = top;
  v16 = leading;
  v17 = bottom;
  v18 = trailing;
  v11 = *(&self->super.super.isa + v8);
  sub_1C5672E88(v14, v13);
  sub_1C5623B40(v13, v12);
  sub_1C5672E58(v14);
}

- (NSArray)arrangedLayoutItems
{
  v2 = self;
  StackLayout.arrangedLayoutItems.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DC50, &qword_1C586A8F0);
  v3 = sub_1C584F750();

  return v3;
}

- (void)setArrangedLayoutItems:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DC50, &qword_1C586A8F0);
  v4 = sub_1C584F770();
  v5 = self;
  StackLayout.arrangedLayoutItems.setter(v4);
}

- (void)removeArrangedLayoutItem:(id)a3
{
  swift_unknownObjectRetain_n();
  v4 = self;
  sub_1C56236C4();
  v5 = (*((*MEMORY[0x1E69E7D40] & v4->super.super.isa) + 0xB0))(v10);
  v7 = v6;
  v8 = sub_1C5675D78(sub_1C5676CD0);
  v9 = *(*v7 + 16);
  if (v9 < v8)
  {
    __break(1u);
  }

  else
  {
    sub_1C5676238(v8, v9);
    v5(v10, 0);
    swift_unknownObjectRelease();

    sub_1C56260B4(v11);
  }
}

- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  v5 = StackLayout.padding(forArrangedLayoutItem:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  swift_unknownObjectRelease();

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.trailing = v15;
  result.bottom = v14;
  result.leading = v13;
  result.top = v12;
  return result;
}

- (void)setPadding:(NSDirectionalEdgeInsets)a3 forArrangedLayoutItem:(id)a4
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  swift_unknownObjectRetain();
  v9 = self;
  StackLayout.setPadding(_:forArrangedLayoutItem:)(top, leading, bottom, trailing);
  swift_unknownObjectRelease();
}

- (UIOffset)offsetForArrangedLayoutItem:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  v5 = StackLayout.offset(forArrangedLayoutItem:)();
  v7 = v6;
  swift_unknownObjectRelease();

  v8 = v5;
  v9 = v7;
  result.vertical = v9;
  result.horizontal = v8;
  return result;
}

- (void)setOffset:(UIOffset)a3 forArrangedLayoutItem:(id)a4
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  swift_unknownObjectRetain();
  v7 = self;
  StackLayout.setOffset(_:forArrangedLayoutItem:)(horizontal, vertical);
  swift_unknownObjectRelease();
}

- (BOOL)hasAlignmentForArrangedLayoutItem:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1C5674C30(&v6);
  swift_unknownObjectRelease();

  return (~v6 & 0xFFFFFFFE) != 0;
}

- (int64_t)alignmentForArrangedLayoutItem:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  v5 = sub_1C5674C30(&v9);
  v6 = v9;
  if ((~v9 & 0xFFFFFFFE) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & v4->super.super.isa) + 0x118))(&v10, v5);
    v6 = v10;
  }

  v10 = v6;
  v7 = sub_1C57243F4();
  swift_unknownObjectRelease();

  return v7;
}

- (void)setAlignment:(int64_t)a3 forArrangedLayoutItem:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  StackLayout.setAlignmentKind(_:forArrangedLayoutItem:)(a3);
  swift_unknownObjectRelease();
}

- (BOOL)alignmentBoundsContentForArrangedLayoutItem:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1C5674C30(&v7);
  if ((~v7 & 0xFFFFFFFE) != 0)
  {
    v5 = sub_1C5724830();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    v5 = 0;
  }

  return v5 & 1;
}

- (void)setAlignmentBoundsContent:(BOOL)a3 forArrangedLayoutItem:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  StackLayout.setAlignmentBoundsContent(_:forArrangedLayoutItem:)(a3);
  swift_unknownObjectRelease();
}

- (float)alignmentFittingSizePriorityForArrangedLayoutItem:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1C5674C30(&v7);
  if ((~v7 & 0xFFFFFFFE) != 0)
  {
    v6 = sub_1C5724800();
    swift_unknownObjectRelease();

    return v6;
  }

  else
  {
    swift_unknownObjectRelease();

    return 0.0;
  }
}

- (void)setAlignmentFittingSizePriority:(float)a3 forArrangedLayoutItem:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  StackLayout.setAlignmentFittingSizePriority(_:forArrangedLayoutItem:)(a3);
  swift_unknownObjectRelease();
}

@end