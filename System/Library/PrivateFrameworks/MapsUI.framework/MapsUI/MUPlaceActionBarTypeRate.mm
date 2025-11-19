@interface MUPlaceActionBarTypeRate
- (BOOL)rated;
- (MUPlaceActionBarTypeRate)init;
- (void)setRated:(BOOL)a3;
@end

@implementation MUPlaceActionBarTypeRate

- (BOOL)rated
{
  v3 = OBJC_IVAR___MUPlaceActionBarTypeRate_rated;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setRated:(BOOL)a3
{
  v5 = OBJC_IVAR___MUPlaceActionBarTypeRate_rated;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (MUPlaceActionBarTypeRate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end