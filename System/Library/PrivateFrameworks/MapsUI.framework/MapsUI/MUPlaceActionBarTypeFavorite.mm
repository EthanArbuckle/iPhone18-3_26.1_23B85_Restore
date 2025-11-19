@interface MUPlaceActionBarTypeFavorite
- (BOOL)favorited;
- (MUPlaceActionBarTypeFavorite)init;
- (void)setFavorited:(BOOL)a3;
@end

@implementation MUPlaceActionBarTypeFavorite

- (BOOL)favorited
{
  v3 = OBJC_IVAR___MUPlaceActionBarTypeFavorite_favorited;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFavorited:(BOOL)a3
{
  v5 = OBJC_IVAR___MUPlaceActionBarTypeFavorite_favorited;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = a3;
}

- (MUPlaceActionBarTypeFavorite)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end