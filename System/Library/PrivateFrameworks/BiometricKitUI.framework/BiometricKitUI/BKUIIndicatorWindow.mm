@interface BKUIIndicatorWindow
+ (id)instanceWithWindowScene:(id)scene;
- (BKUIIndicatorViewController)indicatorController;
@end

@implementation BKUIIndicatorWindow

+ (id)instanceWithWindowScene:(id)scene
{
  sceneCopy = scene;
  v4 = objc_alloc_init(BKUIIndicatorWindow);
  [(BKUIIndicatorWindow *)v4 setWindowLevel:*MEMORY[0x277D772A8]];
  [(BKUIIndicatorWindow *)v4 setWindowScene:sceneCopy];

  clearColor = [MEMORY[0x277D75348] clearColor];
  [(BKUIIndicatorWindow *)v4 setBackgroundColor:clearColor];

  indicatorController = [(BKUIIndicatorWindow *)v4 indicatorController];
  [(BKUIIndicatorWindow *)v4 setRootViewController:indicatorController];

  [(BKUIIndicatorWindow *)v4 makeKeyAndVisible];
  [(BKUIIndicatorWindow *)v4 setUserInteractionEnabled:0];

  return v4;
}

- (BKUIIndicatorViewController)indicatorController
{
  indicatorController = self->_indicatorController;
  if (!indicatorController)
  {
    v4 = objc_alloc_init(BKUIIndicatorViewController);
    v5 = self->_indicatorController;
    self->_indicatorController = v4;

    indicatorController = self->_indicatorController;
  }

  return indicatorController;
}

@end