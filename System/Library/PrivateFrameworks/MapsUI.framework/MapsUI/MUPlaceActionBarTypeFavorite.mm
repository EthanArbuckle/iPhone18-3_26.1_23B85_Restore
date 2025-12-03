@interface MUPlaceActionBarTypeFavorite
- (BOOL)favorited;
- (MUPlaceActionBarTypeFavorite)init;
- (void)setFavorited:(BOOL)favorited;
@end

@implementation MUPlaceActionBarTypeFavorite

- (BOOL)favorited
{
  v3 = OBJC_IVAR___MUPlaceActionBarTypeFavorite_favorited;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setFavorited:(BOOL)favorited
{
  v5 = OBJC_IVAR___MUPlaceActionBarTypeFavorite_favorited;
  swift_beginAccess();
  *(&self->super.super.isa + v5) = favorited;
}

- (MUPlaceActionBarTypeFavorite)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end