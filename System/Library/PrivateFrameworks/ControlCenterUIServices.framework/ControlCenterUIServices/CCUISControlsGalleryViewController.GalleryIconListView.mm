@interface CCUISControlsGalleryViewController.GalleryIconListView
- (Class)baseIconViewClass;
- (_TtCE23ControlCenterUIServicesCSo34CCUISControlsGalleryViewControllerP33_2BE9E5823A21546365E48A0305FB582219GalleryIconListView)initWithModel:(id)a3 layoutProvider:(id)a4 iconLocation:(id)a5 orientation:(int64_t)a6 iconViewProvider:(id)a7;
@end

@implementation CCUISControlsGalleryViewController.GalleryIconListView

- (Class)baseIconViewClass
{
  _s19GalleryIconListViewC15GalleryIconViewCMa();

  return swift_getObjCClassFromMetadata();
}

- (_TtCE23ControlCenterUIServicesCSo34CCUISControlsGalleryViewControllerP33_2BE9E5823A21546365E48A0305FB582219GalleryIconListView)initWithModel:(id)a3 layoutProvider:(id)a4 iconLocation:(id)a5 orientation:(int64_t)a6 iconViewProvider:(id)a7
{
  v13.receiver = self;
  v13.super_class = _s19GalleryIconListViewCMa();
  return [(SBIconListView *)&v13 initWithModel:a3 layoutProvider:a4 iconLocation:a5 orientation:a6 iconViewProvider:a7];
}

@end