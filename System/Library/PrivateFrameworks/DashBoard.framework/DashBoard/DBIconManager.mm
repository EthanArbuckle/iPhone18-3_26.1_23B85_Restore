@interface DBIconManager
- (SBIconListLayoutProvider)listLayoutProvider;
- (_TtC9DashBoard13DBIconManager)init;
- (id)imageViewForIconView:(id)view;
- (void)_configureRootFolderConfiguration:(id)configuration;
- (void)precacheImagesForRootIconsWithTraitCollection:(id)collection;
- (void)setListLayoutProvider:(id)provider;
@end

@implementation DBIconManager

- (SBIconListLayoutProvider)listLayoutProvider
{

  return v2;
}

- (void)setListLayoutProvider:(id)provider
{
  type metadata accessor for DBIconListLayoutProvider();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    *(&self->super.super.isa + OBJC_IVAR____TtC9DashBoard13DBIconManager__listLayoutProvider) = v4;
    swift_unknownObjectRetain();
  }
}

- (id)imageViewForIconView:(id)view
{
  type metadata accessor for DBIconImageView();
  v3 = DBIconImageView.__allocating_init()();

  return v3;
}

- (void)_configureRootFolderConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DBIconManager();
  configurationCopy = configuration;
  v5 = v6.receiver;
  [(SBHIconManager *)&v6 _configureRootFolderConfiguration:configurationCopy];
  [configurationCopy setAdditionalPartialPagesToKeepVisible_];
}

- (void)precacheImagesForRootIconsWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  DBIconManager.precacheImagesForRootIcons(with:)(collectionCopy);
}

- (_TtC9DashBoard13DBIconManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end