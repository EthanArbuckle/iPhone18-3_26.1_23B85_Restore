@interface MUPlaceViewControllerSectionController
- (MUPlaceViewControllerSectionController)initWithMapItem:(id)a3 viewController:(id)a4;
@end

@implementation MUPlaceViewControllerSectionController

- (MUPlaceViewControllerSectionController)initWithMapItem:(id)a3 viewController:(id)a4
{
  v7 = a4;
  if (v7)
  {
    v13.receiver = self;
    v13.super_class = MUPlaceViewControllerSectionController;
    v8 = [(MUPlaceSectionController *)&v13 initWithMapItem:a3];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_viewController, a4);
    }

    self = v9;
    v10 = self;
  }

  else
  {
    v11 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v11, OS_LOG_TYPE_INFO, "MUPlaceViewControllerSectionController: Attempting to initializer with a nil view controller", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

@end