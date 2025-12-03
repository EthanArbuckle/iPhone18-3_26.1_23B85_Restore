@interface CCUISControlsGalleryViewController.GalleryIconListView.GalleryIconView
+ (NSString)defaultGridSizeClass;
- (_TtCCE23ControlCenterUIServicesCSo34CCUISControlsGalleryViewControllerP33_2BE9E5823A21546365E48A0305FB582219GalleryIconListView15GalleryIconView)initWithConfigurationOptions:(unint64_t)options listLayoutProvider:(id)provider;
@end

@implementation CCUISControlsGalleryViewController.GalleryIconListView.GalleryIconView

+ (NSString)defaultGridSizeClass
{
  v2 = SBHIconGridSizeClassForCCUIGridSizeClass(0);

  return v2;
}

- (_TtCCE23ControlCenterUIServicesCSo34CCUISControlsGalleryViewControllerP33_2BE9E5823A21546365E48A0305FB582219GalleryIconListView15GalleryIconView)initWithConfigurationOptions:(unint64_t)options listLayoutProvider:(id)provider
{
  v7.receiver = self;
  v7.super_class = _s19GalleryIconListViewC15GalleryIconViewCMa();
  return [(CCUISControlsGalleryViewController.GalleryIconListView.GalleryIconView *)&v7 initWithConfigurationOptions:options listLayoutProvider:provider];
}

@end