@interface CCUISControlsGalleryViewController.GalleryIconListView
- (Class)baseIconViewClass;
- (_TtCE23ControlCenterUIServicesCSo34CCUISControlsGalleryViewControllerP33_2BE9E5823A21546365E48A0305FB582219GalleryIconListView)initWithModel:(id)model layoutProvider:(id)provider iconLocation:(id)location orientation:(int64_t)orientation iconViewProvider:(id)viewProvider;
@end

@implementation CCUISControlsGalleryViewController.GalleryIconListView

- (Class)baseIconViewClass
{
  _s19GalleryIconListViewC15GalleryIconViewCMa();

  return swift_getObjCClassFromMetadata();
}

- (_TtCE23ControlCenterUIServicesCSo34CCUISControlsGalleryViewControllerP33_2BE9E5823A21546365E48A0305FB582219GalleryIconListView)initWithModel:(id)model layoutProvider:(id)provider iconLocation:(id)location orientation:(int64_t)orientation iconViewProvider:(id)viewProvider
{
  v13.receiver = self;
  v13.super_class = _s19GalleryIconListViewCMa();
  return [(SBIconListView *)&v13 initWithModel:model layoutProvider:provider iconLocation:location orientation:orientation iconViewProvider:viewProvider];
}

@end