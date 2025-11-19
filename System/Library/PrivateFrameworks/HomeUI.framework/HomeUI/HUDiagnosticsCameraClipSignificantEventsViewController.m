@interface HUDiagnosticsCameraClipSignificantEventsViewController
- (HUDiagnosticsCameraClipSignificantEventsViewController)initWithCameraClip:(id)a3;
- (UITableView)eventTableView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation HUDiagnosticsCameraClipSignificantEventsViewController

- (HUDiagnosticsCameraClipSignificantEventsViewController)initWithCameraClip:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HUDiagnosticsCameraClipSignificantEventsViewController;
  v6 = [(HUDiagnosticsCameraClipSignificantEventsViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cameraClip, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HUDiagnosticsCameraClipSignificantEventsViewController;
  [(HUDiagnosticsCameraClipSignificantEventsViewController *)&v7 viewDidLoad];
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(HUDiagnosticsCameraClipSignificantEventsViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(HUDiagnosticsCameraClipSignificantEventsViewController *)self view];
  v6 = [(HUDiagnosticsCameraClipSignificantEventsViewController *)self eventTableView];
  [v5 addSubview:v6];
}

- (UITableView)eventTableView
{
  eventTableView = self->_eventTableView;
  if (!eventTableView)
  {
    v4 = objc_alloc(MEMORY[0x277D75B40]);
    v5 = [(HUDiagnosticsCameraClipSignificantEventsViewController *)self view];
    [v5 bounds];
    v6 = [v4 initWithFrame:?];

    [(UITableView *)v6 setDataSource:self];
    [(UITableView *)v6 setDelegate:self];
    [(UITableView *)v6 setSemanticContentAttribute:3];
    v7 = [MEMORY[0x277D75348] clearColor];
    [(UITableView *)v6 setBackgroundColor:v7];

    [(UITableView *)v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUCameraSignificantEventsBrowserCellIdentifier"];
    [(UITableView *)v6 setShowsHorizontalScrollIndicator:0];
    v8 = self->_eventTableView;
    self->_eventTableView = v6;

    eventTableView = self->_eventTableView;
  }

  return eventTableView;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(HUDiagnosticsCameraClipSignificantEventsViewController *)self cameraClip:a3];
  v5 = [v4 significantEvents];
  v6 = [v5 count];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"HUCameraSignificantEventsBrowserCellIdentifier" forIndexPath:v6];
  [v7 setHideIcon:1];
  v8 = [(HUDiagnosticsCameraClipSignificantEventsViewController *)self cameraClip];
  v9 = [v8 hf_sortedSignificantEvents];
  v10 = [v6 row];

  v11 = [v9 objectAtIndex:v10];

  v12 = [v11 description];
  [v7 setTitleText:v12];

  return v7;
}

@end