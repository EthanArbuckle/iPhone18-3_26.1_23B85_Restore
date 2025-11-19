@interface ControlsGalleryManager
- (BOOL)addWidgetSheetConfigurationManager:(id)a3 isDescriptorSupported:(id)a4;
- (BOOL)controlHostViewControllerShouldPerformPrimaryAction:(id)a3;
- (_TtC23ControlCenterUIServices22ControlsGalleryManager)init;
- (id)addWidgetSheetConfigurationManager:(id)a3 vendorNameForAppWithBundleIdentifier:(id)a4;
- (id)addWidgetSheetViewController:(id)a3 widgetIconForGalleryItem:(id)a4;
- (id)customApplicationWidgetCollectionsForAddWidgetSheetConfigurationManager:(id)a3;
- (id)customImageViewControllerForIconView:(id)a3;
- (id)gridSizeClassDomainForIconView:(id)a3;
- (id)recycledViewsContainerProviderForViewMap:(id)a3;
@end

@implementation ControlsGalleryManager

- (_TtC23ControlCenterUIServices22ControlsGalleryManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)recycledViewsContainerProviderForViewMap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2442B3CF8();
  v7 = v6;

  return v7;
}

- (id)customImageViewControllerForIconView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_2442AF95C(v4);

  return v6;
}

- (id)gridSizeClassDomainForIconView:(id)a3
{
  v3 = [objc_opt_self() controlCenterDomain];

  return v3;
}

- (BOOL)controlHostViewControllerShouldPerformPrimaryAction:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2442B07CC(v4);

  return 0;
}

- (id)addWidgetSheetConfigurationManager:(id)a3 vendorNameForAppWithBundleIdentifier:(id)a4
{
  v4 = sub_2442B4878();

  return v4;
}

- (id)customApplicationWidgetCollectionsForAddWidgetSheetConfigurationManager:(id)a3
{
  v4 = a3;
  v5 = self;
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

- (BOOL)addWidgetSheetConfigurationManager:(id)a3 isDescriptorSupported:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2442B3E60(v7);
  v10 = v9;

  return v10 & 1;
}

- (id)addWidgetSheetViewController:(id)a3 widgetIconForGalleryItem:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_2442B4220(a4);

  swift_unknownObjectRelease();

  return v8;
}

@end