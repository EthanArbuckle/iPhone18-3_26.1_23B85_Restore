@interface MUCompositionalStackLayoutGroupInternal
- (BOOL)alignmentBoundsContent;
- (BOOL)distributionBoundsContent;
- (MUCompositionalStackLayoutGroupInternal)init;
- (NSArray)arrangedLayoutItems;
- (NSDirectionalEdgeInsets)insets;
- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)item;
- (NSString)identifier;
- (UIOffset)offsetForArrangedLayoutItem:(id)item;
- (double)spacing;
- (float)alignmentFittingSizePriority;
- (float)alignmentFittingSizePriorityForArrangedLayoutItem:(id)item;
- (float)distributionFittingSizePriority;
- (id)copyWithZone:(void *)zone;
- (int64_t)alignment;
- (int64_t)alignmentForArrangedLayoutItem:(id)item;
- (int64_t)axis;
- (int64_t)distribution;
- (void)setAlignment:(int64_t)alignment;
- (void)setAlignment:(int64_t)alignment forArrangedLayoutItem:(id)item;
- (void)setAlignmentBoundsContent:(BOOL)content;
- (void)setAlignmentBoundsContent:(BOOL)content forArrangedLayoutItem:(id)item;
- (void)setAlignmentFittingSizePriority:(float)priority;
- (void)setAlignmentFittingSizePriority:(float)priority forArrangedLayoutItem:(id)item;
- (void)setArrangedLayoutItems:(id)items;
- (void)setAxis:(int64_t)axis;
- (void)setDistribution:(int64_t)distribution;
- (void)setDistributionBoundsContent:(BOOL)content;
- (void)setDistributionFittingSizePriority:(float)priority;
- (void)setIdentifier:(id)identifier;
- (void)setInsets:(NSDirectionalEdgeInsets)insets;
- (void)setOffset:(UIOffset)offset forArrangedLayoutItem:(id)item;
- (void)setPadding:(NSDirectionalEdgeInsets)padding forArrangedLayoutItem:(id)item;
- (void)setSpacing:(double)spacing;
@end

@implementation MUCompositionalStackLayoutGroupInternal

- (id)copyWithZone:(void *)zone
{
  ObjectType = swift_getObjectType();
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  selfCopy = self;
  v5(v10);
  v7 = (*(ObjectType + 112))(v10);

  v10[0] = v7;
  v8 = sub_1C584FDB0();

  return v8;
}

- (NSString)identifier
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  selfCopy = self;
  v2(&v6);

  sub_1C5763FE4(&v6);
  v4 = sub_1C584F630();

  return v4;
}

- (void)setIdentifier:(id)identifier
{
  v4 = sub_1C584F660();
  v6 = v5;
  v7 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  selfCopy = self;
  v9 = v7(v12);
  v11 = v10[1];
  *v10 = v4;
  v10[1] = v6;

  v9(v12, 0);
}

- (int64_t)axis
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  selfCopy = self;
  v2(v5);

  sub_1C5763FE4(v5);
  return v5[2];
}

- (void)setAxis:(int64_t)axis
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  selfCopy = self;
  v6 = v4(v8);
  *(v7 + 16) = axis;
  v6(v8, 0);
}

- (int64_t)distribution
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  selfCopy = self;
  v2(v6);
  v4 = sub_1C5724078();

  v8[3] = v6[3];
  v8[4] = v6[4];
  v9 = v7;
  v8[0] = v6[0];
  v8[1] = v6[1];
  v8[2] = v6[2];
  sub_1C5763FE4(v8);
  return v4;
}

- (void)setDistribution:(int64_t)distribution
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  selfCopy = self;
  v6 = v4(v7);
  sub_1C57240E4(distribution);
  v6(v7, 0);
}

- (BOOL)distributionBoundsContent
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  selfCopy = self;
  v2(v6);
  v4 = sub_1C572470C();

  v8[3] = v6[3];
  v8[4] = v6[4];
  v9 = v7;
  v8[0] = v6[0];
  v8[1] = v6[1];
  v8[2] = v6[2];
  sub_1C5763FE4(v8);
  return v4 & 1;
}

- (void)setDistributionBoundsContent:(BOOL)content
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  selfCopy = self;
  v6 = v4(v7);
  sub_1C5724738(content);
  v6(v7, 0);
}

- (float)distributionFittingSizePriority
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  selfCopy = self;
  v2(v6);
  v4 = sub_1C57246C0();

  v8[3] = v6[3];
  v8[4] = v6[4];
  v9 = v7;
  v8[0] = v6[0];
  v8[1] = v6[1];
  v8[2] = v6[2];
  sub_1C5763FE4(v8);
  return v4;
}

- (void)setDistributionFittingSizePriority:(float)priority
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  selfCopy = self;
  v6 = v4(v7);
  sub_1C5724750(priority);
  v6(v7, 0);
}

- (int64_t)alignment
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  selfCopy = self;
  v2(v6);
  v4 = sub_1C57243F4();

  v8[3] = v6[3];
  v8[4] = v6[4];
  v9 = v7;
  v8[0] = v6[0];
  v8[1] = v6[1];
  v8[2] = v6[2];
  sub_1C5763FE4(v8);
  return v4;
}

- (void)setAlignment:(int64_t)alignment
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  selfCopy = self;
  v6 = v4(v7);
  sub_1C572440C(alignment);
  v6(v7, 0);
}

- (BOOL)alignmentBoundsContent
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  selfCopy = self;
  v2(v6);
  v4 = sub_1C5724830();

  v8[3] = v6[3];
  v8[4] = v6[4];
  v9 = v7;
  v8[0] = v6[0];
  v8[1] = v6[1];
  v8[2] = v6[2];
  sub_1C5763FE4(v8);
  return v4 & 1;
}

- (void)setAlignmentBoundsContent:(BOOL)content
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  selfCopy = self;
  v6 = v4(v7);
  sub_1C5724854(content);
  v6(v7, 0);
}

- (float)alignmentFittingSizePriority
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  selfCopy = self;
  v2(v6);
  v4 = sub_1C5724800();

  v8[3] = v6[3];
  v8[4] = v6[4];
  v9 = v7;
  v8[0] = v6[0];
  v8[1] = v6[1];
  v8[2] = v6[2];
  sub_1C5763FE4(v8);
  return v4;
}

- (void)setAlignmentFittingSizePriority:(float)priority
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  selfCopy = self;
  v6 = v4(v7);
  sub_1C57248B8(priority);
  v6(v7, 0);
}

- (double)spacing
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  selfCopy = self;
  v2(v5);

  sub_1C5763FE4(v5);
  return *&v5[6];
}

- (void)setSpacing:(double)spacing
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  selfCopy = self;
  v6 = v4(v8);
  *(v7 + 48) = spacing;
  v6(v8, 0);
}

- (NSDirectionalEdgeInsets)insets
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  selfCopy = self;
  v2(v8);

  sub_1C5763FE4(v8);
  v4 = *&v8[7];
  v5 = *&v8[8];
  v6 = *&v8[9];
  v7 = *&v8[10];
  result.trailing = v7;
  result.bottom = v6;
  result.leading = v5;
  result.top = v4;
  return result;
}

- (void)setInsets:(NSDirectionalEdgeInsets)insets
{
  trailing = insets.trailing;
  bottom = insets.bottom;
  leading = insets.leading;
  top = insets.top;
  v7 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  selfCopy = self;
  v9 = v7(v11);
  v10[7] = top;
  v10[8] = leading;
  v10[9] = bottom;
  v10[10] = trailing;
  v9(v11, 0);
}

- (NSArray)arrangedLayoutItems
{
  selfCopy = self;
  sub_1C5760DE4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F68, &qword_1C58791B0);
  v3 = sub_1C584F750();

  return v3;
}

- (void)setArrangedLayoutItems:(id)items
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F68, &qword_1C58791B0);
  v4 = sub_1C584F770();
  selfCopy = self;
  sub_1C5761028(v4);
}

- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5761E84(item, &v14);
  if (v15)
  {
    swift_unknownObjectRelease();

    v6 = v16;
    v7 = v17;
    v8 = v18;
    v9 = v19;
  }

  else
  {
    v6 = *MEMORY[0x1E69DC5C0];
    v7 = *(MEMORY[0x1E69DC5C0] + 8);
    v8 = *(MEMORY[0x1E69DC5C0] + 16);
    v9 = *(MEMORY[0x1E69DC5C0] + 24);
    swift_unknownObjectRelease();
  }

  sub_1C5625230(&v14, &qword_1EC170F50, &qword_1C5879198);
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  result.trailing = v13;
  result.bottom = v12;
  result.leading = v11;
  result.top = v10;
  return result;
}

- (void)setPadding:(NSDirectionalEdgeInsets)padding forArrangedLayoutItem:(id)item
{
  trailing = padding.trailing;
  bottom = padding.bottom;
  leading = padding.leading;
  top = padding.top;
  swift_unknownObjectRetain();
  selfCopy = self;
  v12 = sub_1C576269C(v13, item);
  if (*(v11 + 3))
  {
    v11[5] = top;
    v11[6] = leading;
    v11[7] = bottom;
    v11[8] = trailing;
  }

  v12(v13, 0);

  swift_unknownObjectRelease();
}

- (UIOffset)offsetForArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5761E84(item, &v10);
  if (v11)
  {
    swift_unknownObjectRelease();

    v6 = v12;
    v7 = v13;
  }

  else
  {
    v6 = *MEMORY[0x1E69DE258];
    v7 = *(MEMORY[0x1E69DE258] + 8);
    swift_unknownObjectRelease();
  }

  sub_1C5625230(&v10, &qword_1EC170F50, &qword_1C5879198);
  v8 = v6;
  v9 = v7;
  result.vertical = v9;
  result.horizontal = v8;
  return result;
}

- (void)setOffset:(UIOffset)offset forArrangedLayoutItem:(id)item
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  swift_unknownObjectRetain();
  selfCopy = self;
  v10 = sub_1C576269C(v11, item);
  if (*(v9 + 3))
  {
    v9[9] = horizontal;
    v9[10] = vertical;
  }

  v10(v11, 0);

  swift_unknownObjectRelease();
}

- (int64_t)alignmentForArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_1C5762E58(item);
  swift_unknownObjectRelease();

  return v6;
}

- (void)setAlignment:(int64_t)alignment forArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5763018(alignment, item);
  swift_unknownObjectRelease();
}

- (void)setAlignmentBoundsContent:(BOOL)content forArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C57633B0(content, item);
  swift_unknownObjectRelease();
}

- (float)alignmentFittingSizePriorityForArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_1C5763570(item);
  v7 = *&v6;
  swift_unknownObjectRelease();

  return v7;
}

- (void)setAlignmentFittingSizePriority:(float)priority forArrangedLayoutItem:(id)item
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C57636B0(item, priority);
  swift_unknownObjectRelease();
}

- (MUCompositionalStackLayoutGroupInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end