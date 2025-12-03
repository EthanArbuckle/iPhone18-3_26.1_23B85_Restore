@interface DDFallbackController
- (DDFallbackController)initWithWindow:(id)window interactionDelegate:(id)delegate;
- (void)loadView;
@end

@implementation DDFallbackController

- (DDFallbackController)initWithWindow:(id)window interactionDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = DDFallbackController;
  windowCopy = window;
  v8 = [(DDFallbackController *)&v11 init];
  objc_storeWeak(&v8->_baseWindow, windowCopy);

  interactionDelegate = v8->_interactionDelegate;
  v8->_interactionDelegate = delegateCopy;

  return v8;
}

- (void)loadView
{
  v3 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v3 setOpaque:0];
  [v3 setBackgroundColor:0];
  [(DDFallbackController *)self setView:v3];
}

void __65__DDFallbackController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 removeFromSuperview];

  v6 = *(*(a1 + 32) + 1000);
  [v6 setHidden:1];
  [v6 endDisablingInterfaceAutorotation];
  v3 = *(a1 + 32);
  v4 = *(v3 + 1000);
  *(v3 + 1000) = 0;

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

@end