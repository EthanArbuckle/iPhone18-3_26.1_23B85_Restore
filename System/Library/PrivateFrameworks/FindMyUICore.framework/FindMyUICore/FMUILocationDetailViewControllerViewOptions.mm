@interface FMUILocationDetailViewControllerViewOptions
- (BOOL)isEqual:(id)equal;
- (FMUILocationDetailViewControllerViewOptions)init;
- (FMUILocationDetailViewControllerViewOptions)initWithRawValue:(int64_t)value;
@end

@implementation FMUILocationDetailViewControllerViewOptions

- (FMUILocationDetailViewControllerViewOptions)initWithRawValue:(int64_t)value
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___FMUILocationDetailViewControllerViewOptions_rawValue) = value;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(FMUILocationDetailViewControllerViewOptions *)&v7 init];
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_24B2D5B14();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = LocationDetailViewController.ViewOptions.isEqual(_:)(v8);

  sub_24AFF8258(v8, &qword_27EFC85B0);
  return v6;
}

- (FMUILocationDetailViewControllerViewOptions)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end