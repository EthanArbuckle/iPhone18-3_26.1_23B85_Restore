@interface MUCompositionalStackLayoutGroupInternal
- (BOOL)alignmentBoundsContent;
- (BOOL)distributionBoundsContent;
- (MUCompositionalStackLayoutGroupInternal)init;
- (NSArray)arrangedLayoutItems;
- (NSDirectionalEdgeInsets)insets;
- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)a3;
- (NSString)identifier;
- (UIOffset)offsetForArrangedLayoutItem:(id)a3;
- (double)spacing;
- (float)alignmentFittingSizePriority;
- (float)alignmentFittingSizePriorityForArrangedLayoutItem:(id)a3;
- (float)distributionFittingSizePriority;
- (id)copyWithZone:(void *)a3;
- (int64_t)alignment;
- (int64_t)alignmentForArrangedLayoutItem:(id)a3;
- (int64_t)axis;
- (int64_t)distribution;
- (void)setAlignment:(int64_t)a3;
- (void)setAlignment:(int64_t)a3 forArrangedLayoutItem:(id)a4;
- (void)setAlignmentBoundsContent:(BOOL)a3;
- (void)setAlignmentBoundsContent:(BOOL)a3 forArrangedLayoutItem:(id)a4;
- (void)setAlignmentFittingSizePriority:(float)a3;
- (void)setAlignmentFittingSizePriority:(float)a3 forArrangedLayoutItem:(id)a4;
- (void)setArrangedLayoutItems:(id)a3;
- (void)setAxis:(int64_t)a3;
- (void)setDistribution:(int64_t)a3;
- (void)setDistributionBoundsContent:(BOOL)a3;
- (void)setDistributionFittingSizePriority:(float)a3;
- (void)setIdentifier:(id)a3;
- (void)setInsets:(NSDirectionalEdgeInsets)a3;
- (void)setOffset:(UIOffset)a3 forArrangedLayoutItem:(id)a4;
- (void)setPadding:(NSDirectionalEdgeInsets)a3 forArrangedLayoutItem:(id)a4;
- (void)setSpacing:(double)a3;
@end

@implementation MUCompositionalStackLayoutGroupInternal

- (id)copyWithZone:(void *)a3
{
  ObjectType = swift_getObjectType();
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  v6 = self;
  v5(v10);
  v7 = (*(ObjectType + 112))(v10);

  v10[0] = v7;
  v8 = sub_1C584FDB0();

  return v8;
}

- (NSString)identifier
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  v3 = self;
  v2(&v6);

  sub_1C5763FE4(&v6);
  v4 = sub_1C584F630();

  return v4;
}

- (void)setIdentifier:(id)a3
{
  v4 = sub_1C584F660();
  v6 = v5;
  v7 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  v8 = self;
  v9 = v7(v12);
  v11 = v10[1];
  *v10 = v4;
  v10[1] = v6;

  v9(v12, 0);
}

- (int64_t)axis
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  v3 = self;
  v2(v5);

  sub_1C5763FE4(v5);
  return v5[2];
}

- (void)setAxis:(int64_t)a3
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  v5 = self;
  v6 = v4(v8);
  *(v7 + 16) = a3;
  v6(v8, 0);
}

- (int64_t)distribution
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  v3 = self;
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

- (void)setDistribution:(int64_t)a3
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  v5 = self;
  v6 = v4(v7);
  sub_1C57240E4(a3);
  v6(v7, 0);
}

- (BOOL)distributionBoundsContent
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  v3 = self;
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

- (void)setDistributionBoundsContent:(BOOL)a3
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  v5 = self;
  v6 = v4(v7);
  sub_1C5724738(a3);
  v6(v7, 0);
}

- (float)distributionFittingSizePriority
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  v3 = self;
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

- (void)setDistributionFittingSizePriority:(float)a3
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  v5 = self;
  v6 = v4(v7);
  sub_1C5724750(a3);
  v6(v7, 0);
}

- (int64_t)alignment
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  v3 = self;
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

- (void)setAlignment:(int64_t)a3
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  v5 = self;
  v6 = v4(v7);
  sub_1C572440C(a3);
  v6(v7, 0);
}

- (BOOL)alignmentBoundsContent
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  v3 = self;
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

- (void)setAlignmentBoundsContent:(BOOL)a3
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  v5 = self;
  v6 = v4(v7);
  sub_1C5724854(a3);
  v6(v7, 0);
}

- (float)alignmentFittingSizePriority
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  v3 = self;
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

- (void)setAlignmentFittingSizePriority:(float)a3
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  v5 = self;
  v6 = v4(v7);
  sub_1C57248B8(a3);
  v6(v7, 0);
}

- (double)spacing
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  v3 = self;
  v2(v5);

  sub_1C5763FE4(v5);
  return *&v5[6];
}

- (void)setSpacing:(double)a3
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  v5 = self;
  v6 = v4(v8);
  *(v7 + 48) = a3;
  v6(v8, 0);
}

- (NSDirectionalEdgeInsets)insets
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x58);
  v3 = self;
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

- (void)setInsets:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  v7 = *((*MEMORY[0x1E69E7D40] & self->super.isa) + 0x68);
  v8 = self;
  v9 = v7(v11);
  v10[7] = top;
  v10[8] = leading;
  v10[9] = bottom;
  v10[10] = trailing;
  v9(v11, 0);
}

- (NSArray)arrangedLayoutItems
{
  v2 = self;
  sub_1C5760DE4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F68, &qword_1C58791B0);
  v3 = sub_1C584F750();

  return v3;
}

- (void)setArrangedLayoutItems:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170F68, &qword_1C58791B0);
  v4 = sub_1C584F770();
  v5 = self;
  sub_1C5761028(v4);
}

- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C5761E84(a3, &v14);
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

- (void)setPadding:(NSDirectionalEdgeInsets)a3 forArrangedLayoutItem:(id)a4
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  swift_unknownObjectRetain();
  v10 = self;
  v12 = sub_1C576269C(v13, a4);
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

- (UIOffset)offsetForArrangedLayoutItem:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1C5761E84(a3, &v10);
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

- (void)setOffset:(UIOffset)a3 forArrangedLayoutItem:(id)a4
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  swift_unknownObjectRetain();
  v8 = self;
  v10 = sub_1C576269C(v11, a4);
  if (*(v9 + 3))
  {
    v9[9] = horizontal;
    v9[10] = vertical;
  }

  v10(v11, 0);

  swift_unknownObjectRelease();
}

- (int64_t)alignmentForArrangedLayoutItem:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_1C5762E58(a3);
  swift_unknownObjectRelease();

  return v6;
}

- (void)setAlignment:(int64_t)a3 forArrangedLayoutItem:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_1C5763018(a3, a4);
  swift_unknownObjectRelease();
}

- (void)setAlignmentBoundsContent:(BOOL)a3 forArrangedLayoutItem:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_1C57633B0(a3, a4);
  swift_unknownObjectRelease();
}

- (float)alignmentFittingSizePriorityForArrangedLayoutItem:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_1C5763570(a3);
  v7 = *&v6;
  swift_unknownObjectRelease();

  return v7;
}

- (void)setAlignmentFittingSizePriority:(float)a3 forArrangedLayoutItem:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_1C57636B0(a4, a3);
  swift_unknownObjectRelease();
}

- (MUCompositionalStackLayoutGroupInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end