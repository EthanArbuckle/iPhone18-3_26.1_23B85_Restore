@interface HUDiagnosticsReachabilityEventViewController
- (HUDiagnosticsReachabilityEventViewController)initWithReachabilityEvent:(id)event cameraProfile:(id)profile;
- (UITableView)eventTableView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation HUDiagnosticsReachabilityEventViewController

- (HUDiagnosticsReachabilityEventViewController)initWithReachabilityEvent:(id)event cameraProfile:(id)profile
{
  eventCopy = event;
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = HUDiagnosticsReachabilityEventViewController;
  v9 = [(HUDiagnosticsReachabilityEventViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_container, event);
    objc_storeStrong(&v10->_cameraProfile, profile);
  }

  return v10;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HUDiagnosticsReachabilityEventViewController;
  [(HUDiagnosticsReachabilityEventViewController *)&v7 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(HUDiagnosticsReachabilityEventViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  view2 = [(HUDiagnosticsReachabilityEventViewController *)self view];
  eventTableView = [(HUDiagnosticsReachabilityEventViewController *)self eventTableView];
  [view2 addSubview:eventTableView];
}

- (UITableView)eventTableView
{
  eventTableView = self->_eventTableView;
  if (!eventTableView)
  {
    v4 = objc_alloc(MEMORY[0x277D75B40]);
    view = [(HUDiagnosticsReachabilityEventViewController *)self view];
    [view bounds];
    v6 = [v4 initWithFrame:?];

    [(UITableView *)v6 setDataSource:self];
    [(UITableView *)v6 setDelegate:self];
    [(UITableView *)v6 setSemanticContentAttribute:3];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UITableView *)v6 setBackgroundColor:clearColor];

    [(UITableView *)v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUDiagnosticsReachabilityEventCellIdentifier"];
    [(UITableView *)v6 setShowsHorizontalScrollIndicator:0];
    v8 = self->_eventTableView;
    self->_eventTableView = v6;

    eventTableView = self->_eventTableView;
  }

  return eventTableView;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(HUDiagnosticsReachabilityEventViewController *)self container:view];
  endEvent = [v4 endEvent];
  if (endEvent)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"HUDiagnosticsReachabilityEventCellIdentifier" forIndexPath:pathCopy];
  [v7 setHideIcon:1];
  v8 = [pathCopy row];

  container = [(HUDiagnosticsReachabilityEventViewController *)self container];
  v10 = container;
  if (v8)
  {
    [container endEvent];
  }

  else
  {
    [container startEvent];
  }
  v11 = ;
  v12 = [v11 description];
  [v7 setTitleText:v12];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  if ([path row] != 1)
  {
    return;
  }

  container = [(HUDiagnosticsReachabilityEventViewController *)self container];
  endEvent = [container endEvent];
  containerType = [endEvent containerType];

  if (containerType != 1)
  {
    return;
  }

  v8 = objc_opt_class();
  container2 = [(HUDiagnosticsReachabilityEventViewController *)self container];
  endEvent2 = [container2 endEvent];
  if (endEvent2)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = endEvent2;
    }

    else
    {
      v11 = 0;
    }

    v18 = endEvent2;
    if (v11)
    {
      goto LABEL_10;
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [currentHandler handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
  }

  v18 = 0;
LABEL_10:

  v14 = [HUDiagnosticsCameraClipViewController alloc];
  cameraProfile = [(HUDiagnosticsReachabilityEventViewController *)self cameraProfile];
  v16 = [(HUDiagnosticsCameraClipViewController *)v14 initWithRecordingEvent:v18 cameraProfile:cameraProfile];

  navigationController = [(HUDiagnosticsReachabilityEventViewController *)self navigationController];
  [navigationController pushViewController:v16 animated:1];
}

@end