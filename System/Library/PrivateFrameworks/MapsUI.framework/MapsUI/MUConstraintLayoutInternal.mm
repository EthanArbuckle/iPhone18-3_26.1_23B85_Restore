@interface MUConstraintLayoutInternal
- (MUConstraintLayoutInternal)init;
- (NSArray)layoutConstraints;
- (NSArray)layoutGuides;
- (UIView)viewForForwardingSetNeedsUpdateConstraints;
- (int64_t)mode;
- (void)setMode:(uint64_t)a3;
- (void)setViewForForwardingSetNeedsUpdateConstraints:(id)a3;
@end

@implementation MUConstraintLayoutInternal

- (void)setMode:(uint64_t)a3
{
  v5 = *&a1[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder];
  v6 = *&a1[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 32);
  v9 = a1;
  v8(a3, ObjectType, v6);
}

- (NSArray)layoutConstraints
{
  v3 = *(&self->super.isa + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  v4 = *&self->layoutBuilder[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 8);
  v7 = self;
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
  v7 = self;
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
  v7 = self;
  v8 = v6(ObjectType, v4);

  return v8;
}

- (UIView)viewForForwardingSetNeedsUpdateConstraints
{
  v3 = *(&self->super.isa + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  v4 = *&self->layoutBuilder[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 48);
  v7 = self;
  v8 = v6(ObjectType, v4);

  return v8;
}

- (void)setViewForForwardingSetNeedsUpdateConstraints:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder);
  v6 = *&self->layoutBuilder[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 56);
  v9 = a3;
  v10 = self;
  v8(a3, ObjectType, v6);
}

- (MUConstraintLayoutInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end