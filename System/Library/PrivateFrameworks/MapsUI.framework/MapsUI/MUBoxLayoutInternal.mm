@interface MUBoxLayoutInternal
- (BOOL)horizontalAlignmentBoundsContent;
- (BOOL)verticalAlignmentBoundsContent;
- (MUBoxLayoutInternal)initWithContainer:(id)a3;
- (MULayoutItem)container;
- (NSArray)arrangedLayoutItems;
- (NSDirectionalEdgeInsets)insets;
- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)a3;
- (UIOffset)offsetForArrangedLayoutItem:(id)a3;
- (float)horizontalAlignmentFittingSizePriority;
- (float)verticalAlignmentFittingSizePriority;
- (int64_t)horizontalAlignment;
- (int64_t)horizontalAlignmentForArrangedLayoutItem:(id)a3;
- (int64_t)verticalAlignment;
- (int64_t)verticalAlignmentForArrangedLayoutItem:(id)a3;
- (void)removeArrangedLayoutItem:(id)a3;
- (void)setArrangedLayoutItems:(id)a3;
- (void)setContainer:(id)a3;
- (void)setHorizontalAlignment:(int64_t)a3;
- (void)setHorizontalAlignmentBoundsContent:(BOOL)a3;
- (void)setHorizontalAlignmentFittingSizePriority:(float)a3;
- (void)setInsets:(NSDirectionalEdgeInsets)a3;
- (void)setOffset:(UIOffset)a3 forArrangedLayoutItem:(id)a4;
- (void)setPadding:(NSDirectionalEdgeInsets)a3 forArrangedLayoutItem:(id)a4;
- (void)setVerticalAlignment:(int64_t)a3;
- (void)setVerticalAlignmentBoundsContent:(BOOL)a3;
- (void)setVerticalAlignmentFittingSizePriority:(float)a3;
@end

@implementation MUBoxLayoutInternal

- (MUBoxLayoutInternal)initWithContainer:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E940, &qword_1C586A750);
  swift_unknownObjectRetain_n();
  sub_1C56236C4();
  v9[1] = MEMORY[0x1E69E7CC0];
  v4 = *MEMORY[0x1E69DC5C0];
  v5 = *(MEMORY[0x1E69DC5C0] + 16);
  v10 = vdupq_n_s64(0xC0000000uLL);
  v11 = v4;
  v12 = v5;
  *(&self->super.super.isa + OBJC_IVAR___MUBoxLayoutInternal_builder) = sub_1C562370C(v9);

  v7 = sub_1C562389C(v6, &off_1F44C6BC0);
  swift_unknownObjectRelease();
  return v7;
}

- (MULayoutItem)container
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUBoxLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v6);
  Strong = swift_unknownObjectWeakLoadStrong();

  sub_1C567D244(v6);

  return Strong;
}

- (void)setContainer:(id)a3
{
  v4 = OBJC_IVAR___MUBoxLayoutInternal_builder;
  v5 = *(&self->super.super.isa + OBJC_IVAR___MUBoxLayoutInternal_builder);
  swift_unknownObjectRetain();
  v6 = self;
  sub_1C5623A68(v10);
  swift_unknownObjectWeakAssign();
  v7 = *(&self->super.super.isa + v4);
  sub_1C567D378(v10, v9);
  sub_1C5623B40(v9, v8);
  swift_unknownObjectRelease();
  sub_1C567D244(v10);
}

- (int64_t)verticalAlignment
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUBoxLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v6);
  v4 = sub_1C57243F4();

  sub_1C567D244(v6);
  return v4;
}

- (void)setVerticalAlignment:(int64_t)a3
{
  v5 = OBJC_IVAR___MUBoxLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUBoxLayoutInternal_builder);
  v7 = self;
  sub_1C5623A68(v11);
  sub_1C572440C(a3);
  v8 = *(&self->super.super.isa + v5);
  sub_1C567D378(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C567D244(v11);
}

- (BOOL)verticalAlignmentBoundsContent
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUBoxLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v5);
  LOBYTE(v2) = sub_1C5724830();

  sub_1C567D244(v5);
  return v2 & 1;
}

- (void)setVerticalAlignmentBoundsContent:(BOOL)a3
{
  v5 = OBJC_IVAR___MUBoxLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUBoxLayoutInternal_builder);
  v7 = self;
  sub_1C5623A68(v11);
  sub_1C5724854(a3);
  v8 = *(&self->super.super.isa + v5);
  sub_1C567D378(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C567D244(v11);
}

- (float)verticalAlignmentFittingSizePriority
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUBoxLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v6);
  v4 = sub_1C5724800();

  sub_1C567D244(v6);
  return v4;
}

- (void)setVerticalAlignmentFittingSizePriority:(float)a3
{
  v5 = OBJC_IVAR___MUBoxLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUBoxLayoutInternal_builder);
  v7 = self;
  sub_1C5623A68(v11);
  sub_1C57248B8(a3);
  v8 = *(&self->super.super.isa + v5);
  sub_1C567D378(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C567D244(v11);
}

- (int64_t)horizontalAlignment
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUBoxLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v6);
  v4 = sub_1C57243F4();

  sub_1C567D244(v6);
  return v4;
}

- (void)setHorizontalAlignment:(int64_t)a3
{
  v5 = OBJC_IVAR___MUBoxLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUBoxLayoutInternal_builder);
  v7 = self;
  sub_1C5623A68(v11);
  sub_1C572440C(a3);
  v8 = *(&self->super.super.isa + v5);
  sub_1C567D378(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C567D244(v11);
}

- (BOOL)horizontalAlignmentBoundsContent
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUBoxLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v5);
  LOBYTE(v2) = sub_1C5724830();

  sub_1C567D244(v5);
  return v2 & 1;
}

- (void)setHorizontalAlignmentBoundsContent:(BOOL)a3
{
  v5 = OBJC_IVAR___MUBoxLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUBoxLayoutInternal_builder);
  v7 = self;
  sub_1C5623A68(v11);
  sub_1C5724854(a3);
  v8 = *(&self->super.super.isa + v5);
  sub_1C567D378(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C567D244(v11);
}

- (float)horizontalAlignmentFittingSizePriority
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUBoxLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v6);
  v4 = sub_1C5724800();

  sub_1C567D244(v6);
  return v4;
}

- (void)setHorizontalAlignmentFittingSizePriority:(float)a3
{
  v5 = OBJC_IVAR___MUBoxLayoutInternal_builder;
  v6 = *(&self->super.super.isa + OBJC_IVAR___MUBoxLayoutInternal_builder);
  v7 = self;
  sub_1C5623A68(v11);
  sub_1C57248B8(a3);
  v8 = *(&self->super.super.isa + v5);
  sub_1C567D378(v11, v10);
  sub_1C5623B40(v10, v9);
  sub_1C567D244(v11);
}

- (NSDirectionalEdgeInsets)insets
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUBoxLayoutInternal_builder);
  v3 = self;
  sub_1C5623A68(v12);

  v4 = *&v12[4];
  v5 = *&v12[5];
  v6 = *&v12[6];
  v7 = *&v12[7];
  sub_1C567D244(v12);
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
  v8 = OBJC_IVAR___MUBoxLayoutInternal_builder;
  v9 = *(&self->super.super.isa + OBJC_IVAR___MUBoxLayoutInternal_builder);
  v10 = self;
  sub_1C5623A68(v14);
  v15 = top;
  v16 = leading;
  v17 = bottom;
  v18 = trailing;
  v11 = *(&self->super.super.isa + v8);
  sub_1C567D378(v14, v13);
  sub_1C5623B40(v13, v12);
  sub_1C567D244(v14);
}

- (NSArray)arrangedLayoutItems
{
  v2 = self;
  BoxLayout.arrangedLayoutItems.getter();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DC50, &qword_1C586A8F0);
  v3 = sub_1C584F750();

  return v3;
}

- (void)setArrangedLayoutItems:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DC50, &qword_1C586A8F0);
  v4 = sub_1C584F770();
  v5 = self;
  BoxLayout.arrangedLayoutItems.setter(v4);
}

- (void)removeArrangedLayoutItem:(id)a3
{
  swift_unknownObjectRetain_n();
  v4 = self;
  sub_1C56236C4();
  v5 = (*((*MEMORY[0x1E69E7D40] & v4->super.super.isa) + 0x98))(v10);
  v7 = v6;
  v8 = sub_1C56829E0(sub_1C5676CD0);
  v9 = *(*v7 + 16);
  if (v9 < v8)
  {
    __break(1u);
  }

  else
  {
    sub_1C56830B0(v8, v9);
    v5(v10, 0);
    swift_unknownObjectRelease();

    sub_1C56260B4(v11);
  }
}

- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  v5 = BoxLayout.padding(forArrangedLayoutItem:)();
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
  BoxLayout.setPadding(_:forArrangedLayoutItem:)(top, leading, bottom, trailing);
  swift_unknownObjectRelease();
}

- (UIOffset)offsetForArrangedLayoutItem:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  v5 = BoxLayout.offset(forArrangedLayoutItem:)();
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
  BoxLayout.setOffset(_:forArrangedLayoutItem:)(horizontal, vertical);
  swift_unknownObjectRelease();
}

- (int64_t)verticalAlignmentForArrangedLayoutItem:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  v5 = sub_1C5681100(&v9);
  v6 = v9;
  if ((~v9 & 0xFFFFFFFE) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & v4->super.super.isa) + 0xA0))(&v10, v5);
    v6 = v10;
  }

  v10 = v6;
  v7 = sub_1C57243F4();
  swift_unknownObjectRelease();

  return v7;
}

- (int64_t)horizontalAlignmentForArrangedLayoutItem:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  v5 = sub_1C5681B10(&v9);
  v6 = v9;
  if ((~v9 & 0xFFFFFFFE) == 0)
  {
    (*((*MEMORY[0x1E69E7D40] & v4->super.super.isa) + 0x100))(&v10, v5);
    v6 = v10;
  }

  v10 = v6;
  v7 = sub_1C57243F4();
  swift_unknownObjectRelease();

  return v7;
}

@end