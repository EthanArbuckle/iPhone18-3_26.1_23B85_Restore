@interface BKUIIndicatorWindow
+ (id)instanceWithWindowScene:(id)a3;
- (BKUIIndicatorViewController)indicatorController;
@end

@implementation BKUIIndicatorWindow

+ (id)instanceWithWindowScene:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(BKUIIndicatorWindow);
  [(BKUIIndicatorWindow *)v4 setWindowLevel:*MEMORY[0x277D772A8]];
  [(BKUIIndicatorWindow *)v4 setWindowScene:v3];

  v5 = [MEMORY[0x277D75348] clearColor];
  [(BKUIIndicatorWindow *)v4 setBackgroundColor:v5];

  v6 = [(BKUIIndicatorWindow *)v4 indicatorController];
  [(BKUIIndicatorWindow *)v4 setRootViewController:v6];

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