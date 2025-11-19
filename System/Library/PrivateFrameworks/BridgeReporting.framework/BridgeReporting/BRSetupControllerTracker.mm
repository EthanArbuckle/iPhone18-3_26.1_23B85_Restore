@interface BRSetupControllerTracker
- (BRSetupControllerTracker)init;
- (id)lastPushedSetupController;
- (void)addSetupController:(id)a3 action:(unint64_t)a4;
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

- (void)addSetupController:(id)a3 action:(unint64_t)a4
{
  v6 = a3;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:CACurrentMediaTime()];
  v7 = objc_alloc_init(BRSetupControllerDetails);
  [(BRSetupControllerDetails *)v7 setTimeStamp:v9];
  [(BRSetupControllerDetails *)v7 setControllerName:v6];

  if (a4)
  {
    [(BRSetupControllerTracker *)self setHoldControllerDetails:v7];
  }

  else
  {
    v8 = [(BRSetupControllerTracker *)self setupControllers];
    [v8 addObject:v7];

    [(BRSetupControllerTracker *)self clearControllerHold];
  }
}

- (id)lastPushedSetupController
{
  v3 = [(BRSetupControllerTracker *)self setupControllers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [(BRSetupControllerTracker *)self setupControllers];
    v7 = [v5 numberWithLong:{objc_msgSend(v6, "count") + 1}];

    v8 = [(BRSetupControllerTracker *)self setupControllers];
    v9 = [v8 lastObject];

    [v9 setControllerOrder:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end