@interface WidgetGalleryManager
- (SBIconListLayoutProvider)listLayoutProvider;
- (_TtC14CarPlayAssetUI20WidgetGalleryManager)init;
- (id)addWidgetSheetConfigurationManager:(id)a3 vendorNameForAppWithBundleIdentifier:(id)a4;
- (id)addWidgetSheetViewControllerForAddWidgetSheetConfigurationManager:(id)a3;
- (id)customImageViewControllerForIconView:(id)a3;
- (id)recycledViewsContainerProviderForViewMap:(id)a3;
- (id)widgetIconForDescriptor:(id)a3 sizeClass:(int64_t)a4;
- (id)widgetIconForDescriptors:(id)a3 sizeClass:(int64_t)a4;
- (id)widgetIconForGalleryItem:(id)a3 sizeClass:(int64_t)a4;
- (void)addWidgetSheetViewController:(id)a3 didSelectWidgetIconView:(id)a4;
- (void)addWidgetSheetViewControllerDidCancel:(id)a3;
@end

@implementation WidgetGalleryManager

- (SBIconListLayoutProvider)listLayoutProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (_TtC14CarPlayAssetUI20WidgetGalleryManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)recycledViewsContainerProviderForViewMap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_242E345C0();
  v7 = v6;

  return v7;
}

- (id)customImageViewControllerForIconView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_242E33998(v4);

  return v6;
}

- (id)addWidgetSheetConfigurationManager:(id)a3 vendorNameForAppWithBundleIdentifier:(id)a4
{
  v4 = sub_242F04F00();

  return v4;
}

- (id)addWidgetSheetViewControllerForAddWidgetSheetConfigurationManager:(id)a3
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)addWidgetSheetViewController:(id)a3 didSelectWidgetIconView:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_242E3466C(v7);
}

- (void)addWidgetSheetViewControllerDidCancel:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_dismiss);
  v5 = self;

  v3(v4);
}

- (id)widgetIconForGalleryItem:(id)a3 sizeClass:(int64_t)a4
{
  objc_opt_self();
  v6 = [(WidgetGalleryManager *)self widgetIconForDescriptor:swift_dynamicCastObjCClassUnconditional() sizeClass:a4];

  return v6;
}

- (id)widgetIconForDescriptor:(id)a3 sizeClass:(int64_t)a4
{
  v5 = objc_allocWithZone(MEMORY[0x277D66450]);
  v6 = a3;
  v7 = [v5 initWithCHSWidgetDescriptor_];
  result = SBHIconGridSizeClassForCHSWidgetFamily();
  if (result)
  {
    v9 = result;
    [v7 setGridSizeClass_];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)widgetIconForDescriptors:(id)a3 sizeClass:(int64_t)a4
{
  v4 = [objc_allocWithZone(MEMORY[0x277D66450]) initWithCHSWidgetDescriptors_];
  result = SBHIconGridSizeClassForCHSWidgetFamily();
  if (result)
  {
    v6 = result;
    [v4 setGridSizeClass_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end