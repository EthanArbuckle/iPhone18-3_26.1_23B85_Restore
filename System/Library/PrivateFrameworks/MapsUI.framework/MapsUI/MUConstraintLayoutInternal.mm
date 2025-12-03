@interface MUConstraintLayoutInternal
- (MUConstraintLayoutInternal)init;
- (NSArray)layoutConstraints;
- (NSArray)layoutGuides;
- (UIView)viewForForwardingSetNeedsUpdateConstraints;
- (int64_t)mode;
- (void)setMode:(uint64_t)mode;
- (void)setViewForForwardingSetNeedsUpdateConstraints:(id)constraints;
@end

@implementation MUConstraintLayoutInternal

- (void)setMode:(uint64_t)mode
{
  v5 = *&self[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder];
  v6 = *&self[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 32);
  selfCopy = self;
  v8(mode, ObjectType, v6);
}

- (NSArray)layoutConstraints
{
  v3 = *(&self->super.isa + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  v4 = *&self->layoutBuilder[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 8);
  selfCopy = self;
  v6(ObjectType, v4);

  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  v8 = sub_1C584F750();

  return v8;
}

- (NSArray)layoutGuides
{
  v3 = *(&self->super.isa + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  v4 = *&self->layoutBuilder[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 16);
  selfCopy = self;
  v6(ObjectType, v4);

  sub_1C5626E40(0, &unk_1ED77E840, 0x1E69DCC20);
  v8 = sub_1C584F750();

  return v8;
}

- (int64_t)mode
{
  v3 = *(&self->super.isa + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  v4 = *&self->layoutBuilder[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 24);
  selfCopy = self;
  v8 = v6(ObjectType, v4);

  return v8;
}

- (UIView)viewForForwardingSetNeedsUpdateConstraints
{
  v3 = *(&self->super.isa + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  v4 = *&self->layoutBuilder[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 48);
  selfCopy = self;
  v8 = v6(ObjectType, v4);

  return v8;
}

- (void)setViewForForwardingSetNeedsUpdateConstraints:(id)constraints
{
  v5 = *(&self->super.isa + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  v6 = *&self->layoutBuilder[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 56);
  constraintsCopy = constraints;
  selfCopy = self;
  v8(constraints, ObjectType, v6);
}

- (MUConstraintLayoutInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end