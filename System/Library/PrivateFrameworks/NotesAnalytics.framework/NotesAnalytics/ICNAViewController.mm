@interface ICNAViewController
- (ICNAEventReporter)eventReporter;
- (void)dealloc;
- (void)eventReporterLostSession:(id)session;
@end

@implementation ICNAViewController

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

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
      viewForEventReporterIfLoaded = [(ICNAViewController *)self viewForEventReporterIfLoaded];

      if (viewForEventReporterIfLoaded)
      {
        v4 = [ICNAEventReporter alloc];
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        ic_viewControllerManager = [(ICNAViewController *)self ic_viewControllerManager];
        window = [ic_viewControllerManager window];
        windowScene = [window windowScene];
        v10 = [(ICNAEventReporter *)v4 initWithSubTrackerName:v6 windowScene:windowScene];
        eventReporter = self->_eventReporter;
        self->_eventReporter = v10;

        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter addObserver:self selector:sel_eventReporterLostSession_ name:@"ICNAEventReporterLostSessionNotification" object:self->_eventReporter];
      }
    }
  }

  v13 = self->_eventReporter;

  return v13;
}

- (void)eventReporterLostSession:(id)session
{
  eventReporter = self->_eventReporter;
  self->_eventReporter = 0;
  sessionCopy = session;

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  object = [sessionCopy object];

  [defaultCenter removeObserver:self name:@"ICNAEventReporterLostSessionNotification" object:object];
}

@end