@interface ICNAViewController
- (ICNAEventReporter)eventReporter;
- (void)dealloc;
- (void)eventReporterLostSession:(id)a3;
@end

@implementation ICNAViewController

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICNAViewController;
  [(ICNAViewController *)&v4 dealloc];
}

- (ICNAEventReporter)eventReporter
{
  if (!self->_eventReporter)
  {
    if (+[(ICNAOptedInObject *)ICNAEventReporter])
    {
      v3 = [(ICNAViewController *)self viewForEventReporterIfLoaded];

      if (v3)
      {
        v4 = [ICNAEventReporter alloc];
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = [(ICNAViewController *)self ic_viewControllerManager];
        v8 = [v7 window];
        v9 = [v8 windowScene];
        v10 = [(ICNAEventReporter *)v4 initWithSubTrackerName:v6 windowScene:v9];
        eventReporter = self->_eventReporter;
        self->_eventReporter = v10;

        v12 = [MEMORY[0x277CCAB98] defaultCenter];
        [v12 addObserver:self selector:sel_eventReporterLostSession_ name:@"ICNAEventReporterLostSessionNotification" object:self->_eventReporter];
      }
    }
  }

  v13 = self->_eventReporter;

  return v13;
}

- (void)eventReporterLostSession:(id)a3
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  v5 = a3;

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = [v5 object];

  [v7 removeObserver:self name:@"ICNAEventReporterLostSessionNotification" object:v6];
}

@end