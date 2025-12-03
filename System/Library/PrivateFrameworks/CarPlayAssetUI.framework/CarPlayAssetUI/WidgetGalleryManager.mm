@interface WidgetGalleryManager
- (SBIconListLayoutProvider)listLayoutProvider;
- (_TtC14CarPlayAssetUI20WidgetGalleryManager)init;
- (id)addWidgetSheetConfigurationManager:(id)manager vendorNameForAppWithBundleIdentifier:(id)identifier;
- (id)addWidgetSheetViewControllerForAddWidgetSheetConfigurationManager:(id)manager;
- (id)customImageViewControllerForIconView:(id)view;
- (id)recycledViewsContainerProviderForViewMap:(id)map;
- (id)widgetIconForDescriptor:(id)descriptor sizeClass:(int64_t)class;
- (id)widgetIconForDescriptors:(id)descriptors sizeClass:(int64_t)class;
- (id)widgetIconForGalleryItem:(id)item sizeClass:(int64_t)class;
- (void)addWidgetSheetViewController:(id)controller didSelectWidgetIconView:(id)view;
- (void)addWidgetSheetViewControllerDidCancel:(id)cancel;
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

- (id)recycledViewsContainerProviderForViewMap:(id)map
{
  mapCopy = map;
  selfCopy = self;
  sub_242E345C0();
  v7 = v6;

  return v7;
}

- (id)customImageViewControllerForIconView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_242E33998(viewCopy);

  return v6;
}

- (id)addWidgetSheetConfigurationManager:(id)manager vendorNameForAppWithBundleIdentifier:(id)identifier
{
  v4 = sub_242F04F00();

  return v4;
}

- (id)addWidgetSheetViewControllerForAddWidgetSheetConfigurationManager:(id)manager
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

- (void)addWidgetSheetViewController:(id)controller didSelectWidgetIconView:(id)view
{
  controllerCopy = controller;
  viewCopy = view;
  selfCopy = self;
  sub_242E3466C(viewCopy);
}

- (void)addWidgetSheetViewControllerDidCancel:(id)cancel
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC14CarPlayAssetUI20WidgetGalleryManager_dismiss);
  selfCopy = self;

  v3(v4);
}

- (id)widgetIconForGalleryItem:(id)item sizeClass:(int64_t)class
{
  objc_opt_self();
  v6 = [(WidgetGalleryManager *)self widgetIconForDescriptor:swift_dynamicCastObjCClassUnconditional() sizeClass:class];

  return v6;
}

- (id)widgetIconForDescriptor:(id)descriptor sizeClass:(int64_t)class
{
  v5 = objc_allocWithZone(MEMORY[0x277D66450]);
  descriptorCopy = descriptor;
  initWithCHSWidgetDescriptor_ = [v5 initWithCHSWidgetDescriptor_];
  result = SBHIconGridSizeClassForCHSWidgetFamily();
  if (result)
  {
    v9 = result;
    [initWithCHSWidgetDescriptor_ setGridSizeClass_];

    return initWithCHSWidgetDescriptor_;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)widgetIconForDescriptors:(id)descriptors sizeClass:(int64_t)class
{
  initWithCHSWidgetDescriptors_ = [objc_allocWithZone(MEMORY[0x277D66450]) initWithCHSWidgetDescriptors_];
  result = SBHIconGridSizeClassForCHSWidgetFamily();
  if (result)
  {
    v6 = result;
    [initWithCHSWidgetDescriptors_ setGridSizeClass_];

    return initWithCHSWidgetDescriptors_;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end