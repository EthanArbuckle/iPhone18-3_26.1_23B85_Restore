@interface TagFeedRecipeCatalogSearchCoordinator
- (_TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator)init;
- (void)cancelSearch;
@end

@implementation TagFeedRecipeCatalogSearchCoordinator

- (void)cancelSearch
{
  v3 = OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_isSearchPresented;
  *(&self->super.isa + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_isSearchPresented) = 0;
  v4 = OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_searchController;
  v5 = *(&self->super.isa + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_searchController);
  selfCopy = self;
  if ([v5 isActive] != *(&self->super.isa + v3))
  {
    [*(&self->super.isa + v4) setActive_];
  }
}

- (_TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end