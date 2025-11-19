@interface MUPlaceActionBarTypeAdd
- (BOOL)added;
- (MUPlaceActionBarTypeAdd)init;
- (void)setAdded:(BOOL)a3;
@end

@implementation MUPlaceActionBarTypeAdd

- (BOOL)added
{
  v3 = OBJC_IVAR___MUPlaceActionBarTypeAdd_added;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setAdded:(BOOL)a3
{
  v5 = OBJC_IVAR___MUPlaceActionBarTypeAdd_added;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (MUPlaceActionBarTypeAdd)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end