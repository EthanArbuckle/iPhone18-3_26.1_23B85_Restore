@interface MUPlaceActionBarTypeAdd
- (BOOL)added;
- (MUPlaceActionBarTypeAdd)init;
- (void)setAdded:(BOOL)added;
@end

@implementation MUPlaceActionBarTypeAdd

- (BOOL)added
{
  v3 = OBJC_IVAR___MUPlaceActionBarTypeAdd_added;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAdded:(BOOL)added
{
  v5 = OBJC_IVAR___MUPlaceActionBarTypeAdd_added;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = added;
}

- (MUPlaceActionBarTypeAdd)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end