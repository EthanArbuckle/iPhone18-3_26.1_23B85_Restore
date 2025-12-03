@interface MUPlaceViewControllerSectionController
- (MUPlaceViewControllerSectionController)initWithMapItem:(id)item viewController:(id)controller;
@end

@implementation MUPlaceViewControllerSectionController

- (MUPlaceViewControllerSectionController)initWithMapItem:(id)item viewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy)
  {
    v13.receiver = self;
    v13.super_class = MUPlaceViewControllerSectionController;
    v8 = [(MUPlaceSectionController *)&v13 initWithMapItem:item];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_viewController, controller);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v11 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C5620000, v11, OS_LOG_TYPE_INFO, "MUPlaceViewControllerSectionController: Attempting to initializer with a nil view controller", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

@end