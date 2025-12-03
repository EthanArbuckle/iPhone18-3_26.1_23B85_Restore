@interface ControlsGalleryManager
- (BOOL)addWidgetSheetConfigurationManager:(id)manager isDescriptorSupported:(id)supported;
- (BOOL)controlHostViewControllerShouldPerformPrimaryAction:(id)action;
- (_TtC23ControlCenterUIServices22ControlsGalleryManager)init;
- (id)addWidgetSheetConfigurationManager:(id)manager vendorNameForAppWithBundleIdentifier:(id)identifier;
- (id)addWidgetSheetViewController:(id)controller widgetIconForGalleryItem:(id)item;
- (id)customApplicationWidgetCollectionsForAddWidgetSheetConfigurationManager:(id)manager;
- (id)customImageViewControllerForIconView:(id)view;
- (id)gridSizeClassDomainForIconView:(id)view;
- (id)recycledViewsContainerProviderForViewMap:(id)map;
@end

@implementation ControlsGalleryManager

- (_TtC23ControlCenterUIServices22ControlsGalleryManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)recycledViewsContainerProviderForViewMap:(id)map
{
  mapCopy = map;
  selfCopy = self;
  sub_2442B3CF8();
  v7 = v6;

  return v7;
}

- (id)customImageViewControllerForIconView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_2442AF95C(viewCopy);

  return v6;
}

- (id)gridSizeClassDomainForIconView:(id)view
{
  controlCenterDomain = [objc_opt_self() controlCenterDomain];

  return controlCenterDomain;
}

- (BOOL)controlHostViewControllerShouldPerformPrimaryAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_2442B07CC(actionCopy);

  return 0;
}

- (id)addWidgetSheetConfigurationManager:(id)manager vendorNameForAppWithBundleIdentifier:(id)identifier
{
  v4 = sub_2442B4878();

  return v4;
}

- (id)customApplicationWidgetCollectionsForAddWidgetSheetConfigurationManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  v6 = sub_2442B3DA4();

  if (v6)
  {
    sub_2442A34F8(0, &qword_27EDDDAD0, 0x277D66130);
    v7 = sub_2442B4948();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)addWidgetSheetConfigurationManager:(id)manager isDescriptorSupported:(id)supported
{
  managerCopy = manager;
  supportedCopy = supported;
  selfCopy = self;
  sub_2442B3E60(supportedCopy);
  v10 = v9;

  return v10 & 1;
}

- (id)addWidgetSheetViewController:(id)controller widgetIconForGalleryItem:(id)item
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  v8 = sub_2442B4220(item);

  swift_unknownObjectRelease();

  return v8;
}

@end