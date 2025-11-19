@interface DBIconManager
- (SBIconListLayoutProvider)listLayoutProvider;
- (_TtC9DashBoard13DBIconManager)init;
- (id)imageViewForIconView:(id)a3;
- (void)_configureRootFolderConfiguration:(id)a3;
- (void)precacheImagesForRootIconsWithTraitCollection:(id)a3;
- (void)setListLayoutProvider:(id)a3;
@end

@implementation DBIconManager

- (SBIconListLayoutProvider)listLayoutProvider
{

  return v2;
}

- (void)setListLayoutProvider:(id)a3
{
  type metadata accessor for DBIconListLayoutProvider();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    *(&self->super.super.isa + OBJC_IVAR____TtC9DashBoard13DBIconManager__listLayoutProvider) = v4;
    swift_unknownObjectRetain();
  }
}

- (id)imageViewForIconView:(id)a3
{
  type metadata accessor for DBIconImageView();
  v3 = DBIconImageView.__allocating_init()();

  return v3;
}

- (void)_configureRootFolderConfiguration:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DBIconManager();
  v4 = a3;
  v5 = v6.receiver;
  [(SBHIconManager *)&v6 _configureRootFolderConfiguration:v4];
  [v4 setAdditionalPartialPagesToKeepVisible_];
}

- (void)precacheImagesForRootIconsWithTraitCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  DBIconManager.precacheImagesForRootIcons(with:)(v4);
}

- (_TtC9DashBoard13DBIconManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end