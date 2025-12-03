@interface BRSetupControllerTracker
- (BRSetupControllerTracker)init;
- (id)lastPushedSetupController;
- (void)addSetupController:(id)controller action:(unint64_t)action;
@end

@implementation BRSetupControllerTracker

- (BRSetupControllerTracker)init
{
  v6.receiver = self;
  v6.super_class = BRSetupControllerTracker;
  v2 = [(BRSetupControllerTracker *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    setupControllers = v2->_setupControllers;
    v2->_setupControllers = v3;
  }

  return v2;
}

- (void)addSetupController:(id)controller action:(unint64_t)action
{
  controllerCopy = controller;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:CACurrentMediaTime()];
  v7 = objc_alloc_init(BRSetupControllerDetails);
  [(BRSetupControllerDetails *)v7 setTimeStamp:v9];
  [(BRSetupControllerDetails *)v7 setControllerName:controllerCopy];

  if (action)
  {
    [(BRSetupControllerTracker *)self setHoldControllerDetails:v7];
  }

  else
  {
    setupControllers = [(BRSetupControllerTracker *)self setupControllers];
    [setupControllers addObject:v7];

    [(BRSetupControllerTracker *)self clearControllerHold];
  }
}

- (id)lastPushedSetupController
{
  setupControllers = [(BRSetupControllerTracker *)self setupControllers];
  v4 = [setupControllers count];

  if (v4)
  {
    v5 = MEMORY[0x277CCABB0];
    setupControllers2 = [(BRSetupControllerTracker *)self setupControllers];
    v7 = [v5 numberWithLong:{objc_msgSend(setupControllers2, "count") + 1}];

    setupControllers3 = [(BRSetupControllerTracker *)self setupControllers];
    lastObject = [setupControllers3 lastObject];

    [lastObject setControllerOrder:v7];
  }

  else
  {
    lastObject = 0;
  }

  return lastObject;
}

@end