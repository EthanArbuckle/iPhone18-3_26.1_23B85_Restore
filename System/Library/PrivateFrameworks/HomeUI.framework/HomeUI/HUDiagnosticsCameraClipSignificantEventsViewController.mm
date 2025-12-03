@interface HUDiagnosticsCameraClipSignificantEventsViewController
- (HUDiagnosticsCameraClipSignificantEventsViewController)initWithCameraClip:(id)clip;
- (UITableView)eventTableView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation HUDiagnosticsCameraClipSignificantEventsViewController

- (HUDiagnosticsCameraClipSignificantEventsViewController)initWithCameraClip:(id)clip
{
  clipCopy = clip;
  v9.receiver = self;
  v9.super_class = HUDiagnosticsCameraClipSignificantEventsViewController;
  v6 = [(HUDiagnosticsCameraClipSignificantEventsViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cameraClip, clip);
  }

  return v7;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HUDiagnosticsCameraClipSignificantEventsViewController;
  [(HUDiagnosticsCameraClipSignificantEventsViewController *)&v7 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(HUDiagnosticsCameraClipSignificantEventsViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  view2 = [(HUDiagnosticsCameraClipSignificantEventsViewController *)self view];
  eventTableView = [(HUDiagnosticsCameraClipSignificantEventsViewController *)self eventTableView];
  [view2 addSubview:eventTableView];
}

- (UITableView)eventTableView
{
  eventTableView = self->_eventTableView;
  if (!eventTableView)
  {
    v4 = objc_alloc(MEMORY[0x277D75B40]);
    view = [(HUDiagnosticsCameraClipSignificantEventsViewController *)self view];
    [view bounds];
    v6 = [v4 initWithFrame:?];

    [(UITableView *)v6 setDataSource:self];
    [(UITableView *)v6 setDelegate:self];
    [(UITableView *)v6 setSemanticContentAttribute:3];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UITableView *)v6 setBackgroundColor:clearColor];

    [(UITableView *)v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUCameraSignificantEventsBrowserCellIdentifier"];
    [(UITableView *)v6 setShowsHorizontalScrollIndicator:0];
    v8 = self->_eventTableView;
    self->_eventTableView = v6;

    eventTableView = self->_eventTableView;
  }

  return eventTableView;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(HUDiagnosticsCameraClipSignificantEventsViewController *)self cameraClip:view];
  significantEvents = [v4 significantEvents];
  v6 = [significantEvents count];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"HUCameraSignificantEventsBrowserCellIdentifier" forIndexPath:pathCopy];
  [v7 setHideIcon:1];
  cameraClip = [(HUDiagnosticsCameraClipSignificantEventsViewController *)self cameraClip];
  hf_sortedSignificantEvents = [cameraClip hf_sortedSignificantEvents];
  v10 = [pathCopy row];

  v11 = [hf_sortedSignificantEvents objectAtIndex:v10];

  v12 = [v11 description];
  [v7 setTitleText:v12];

  return v7;
}

@end