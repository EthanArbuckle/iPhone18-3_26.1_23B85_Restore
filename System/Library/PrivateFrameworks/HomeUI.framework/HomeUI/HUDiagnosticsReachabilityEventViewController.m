@interface HUDiagnosticsReachabilityEventViewController
- (HUDiagnosticsReachabilityEventViewController)initWithReachabilityEvent:(id)a3 cameraProfile:(id)a4;
- (UITableView)eventTableView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation HUDiagnosticsReachabilityEventViewController

- (HUDiagnosticsReachabilityEventViewController)initWithReachabilityEvent:(id)a3 cameraProfile:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HUDiagnosticsReachabilityEventViewController;
  v9 = [(HUDiagnosticsReachabilityEventViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_container, a3);
    objc_storeStrong(&v10->_cameraProfile, a4);
  }

  return v10;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HUDiagnosticsReachabilityEventViewController;
  [(HUDiagnosticsReachabilityEventViewController *)&v7 viewDidLoad];
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(HUDiagnosticsReachabilityEventViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(HUDiagnosticsReachabilityEventViewController *)self view];
  v6 = [(HUDiagnosticsReachabilityEventViewController *)self eventTableView];
  [v5 addSubview:v6];
}

- (UITableView)eventTableView
{
  eventTableView = self->_eventTableView;
  if (!eventTableView)
  {
    v4 = objc_alloc(MEMORY[0x277D75B40]);
    v5 = [(HUDiagnosticsReachabilityEventViewController *)self view];
    [v5 bounds];
    v6 = [v4 initWithFrame:?];

    [(UITableView *)v6 setDataSource:self];
    [(UITableView *)v6 setDelegate:self];
    [(UITableView *)v6 setSemanticContentAttribute:3];
    v7 = [MEMORY[0x277D75348] clearColor];
    [(UITableView *)v6 setBackgroundColor:v7];

    [(UITableView *)v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUDiagnosticsReachabilityEventCellIdentifier"];
    [(UITableView *)v6 setShowsHorizontalScrollIndicator:0];
    v8 = self->_eventTableView;
    self->_eventTableView = v6;

    eventTableView = self->_eventTableView;
  }

  return eventTableView;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(HUDiagnosticsReachabilityEventViewController *)self container:a3];
  v5 = [v4 endEvent];
  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"HUDiagnosticsReachabilityEventCellIdentifier" forIndexPath:v6];
  [v7 setHideIcon:1];
  v8 = [v6 row];

  v9 = [(HUDiagnosticsReachabilityEventViewController *)self container];
  v10 = v9;
  if (v8)
  {
    [v9 endEvent];
  }

  else
  {
    [v9 startEvent];
  }
  v11 = ;
  v12 = [v11 description];
  [v7 setTitleText:v12];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  if ([a4 row] != 1)
  {
    return;
  }

  v5 = [(HUDiagnosticsReachabilityEventViewController *)self container];
  v6 = [v5 endEvent];
  v7 = [v6 containerType];

  if (v7 != 1)
  {
    return;
  }

  v8 = objc_opt_class();
  v9 = [(HUDiagnosticsReachabilityEventViewController *)self container];
  v10 = [v9 endEvent];
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v18 = v10;
    if (v11)
    {
      goto LABEL_10;
    }

    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v12 handleFailureInFunction:v13 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v8, objc_opt_class()}];
  }

  v18 = 0;
LABEL_10:

  v14 = [HUDiagnosticsCameraClipViewController alloc];
  v15 = [(HUDiagnosticsReachabilityEventViewController *)self cameraProfile];
  v16 = [(HUDiagnosticsCameraClipViewController *)v14 initWithRecordingEvent:v18 cameraProfile:v15];

  v17 = [(HUDiagnosticsReachabilityEventViewController *)self navigationController];
  [v17 pushViewController:v16 animated:1];
}

@end