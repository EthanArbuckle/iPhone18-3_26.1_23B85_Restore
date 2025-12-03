@interface HUDiagnosticsCameraClipViewController
- (HUDiagnosticsCameraClipViewController)initWithRecordingEvent:(id)event cameraProfile:(id)profile;
- (UITableView)eventTableView;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation HUDiagnosticsCameraClipViewController

- (HUDiagnosticsCameraClipViewController)initWithRecordingEvent:(id)event cameraProfile:(id)profile
{
  eventCopy = event;
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = HUDiagnosticsCameraClipViewController;
  v9 = [(HUDiagnosticsCameraClipViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cameraClip, event);
    objc_storeStrong(&v10->_cameraProfile, profile);
  }

  return v10;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HUDiagnosticsCameraClipViewController;
  [(HUDiagnosticsCameraClipViewController *)&v7 viewDidLoad];
  systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
  view = [(HUDiagnosticsCameraClipViewController *)self view];
  [view setBackgroundColor:systemBackgroundColor];

  view2 = [(HUDiagnosticsCameraClipViewController *)self view];
  eventTableView = [(HUDiagnosticsCameraClipViewController *)self eventTableView];
  [view2 addSubview:eventTableView];
}

- (UITableView)eventTableView
{
  eventTableView = self->_eventTableView;
  if (!eventTableView)
  {
    v4 = objc_alloc(MEMORY[0x277D75B40]);
    view = [(HUDiagnosticsCameraClipViewController *)self view];
    [view bounds];
    v6 = [v4 initWithFrame:?];

    [(UITableView *)v6 setDataSource:self];
    [(UITableView *)v6 setDelegate:self];
    [(UITableView *)v6 setSemanticContentAttribute:3];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UITableView *)v6 setBackgroundColor:clearColor];

    [(UITableView *)v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUDiagnosticsRecordingCellEventIdentifier"];
    [(UITableView *)v6 setShowsHorizontalScrollIndicator:0];
    v8 = self->_eventTableView;
    self->_eventTableView = v6;

    eventTableView = self->_eventTableView;
  }

  return eventTableView;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"HUDiagnosticsRecordingCellEventIdentifier" forIndexPath:pathCopy];
  [v7 setHideIcon:1];
  v8 = [pathCopy row];

  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 != 1)
      {
        if (v8 != 2)
        {
          goto LABEL_23;
        }

        v12 = MEMORY[0x277CCACA8];
        cameraClip = [(HUDiagnosticsCameraClipViewController *)self cameraClip];
        [cameraClip duration];
        [v12 stringWithFormat:@"Duration: %.2f", v13];
        goto LABEL_18;
      }

      v23 = MEMORY[0x277CCACA8];
      cameraClip = [(HUDiagnosticsCameraClipViewController *)self cameraClip];
      dateOfOccurrence = [cameraClip dateOfOccurrence];
      [v23 stringWithFormat:@"Start Date: %@", dateOfOccurrence];
    }

    else
    {
      v17 = MEMORY[0x277CCACA8];
      cameraClip = [(HUDiagnosticsCameraClipViewController *)self cameraClip];
      dateOfOccurrence = [cameraClip uniqueIdentifier];
      [v17 stringWithFormat:@"UUID: %@", dateOfOccurrence];
    }

    v24 = LABEL_21:;
    [v7 setTitleText:v24];

    goto LABEL_22;
  }

  if (v8 > 4)
  {
    if (v8 != 5)
    {
      if (v8 != 6)
      {
        goto LABEL_23;
      }

      v14 = MEMORY[0x277CCACA8];
      cameraClip = [(HUDiagnosticsCameraClipViewController *)self cameraClip];
      canAskForUserFeedback = [cameraClip canAskForUserFeedback];
      v16 = @"NO";
      if (canAskForUserFeedback)
      {
        v16 = @"YES";
      }

      [v14 stringWithFormat:@"Can ask for feedback: %@", v16];
      goto LABEL_18;
    }

    v22 = MEMORY[0x277CCACA8];
    cameraClip = [(HUDiagnosticsCameraClipViewController *)self cameraClip];
    dateOfOccurrence = [cameraClip significantEvents];
    [v22 stringWithFormat:@"Significant Events: %lu", objc_msgSend(dateOfOccurrence, "count")];
    goto LABEL_21;
  }

  if (v8 == 3)
  {
    v19 = MEMORY[0x277CCACA8];
    cameraClip = [(HUDiagnosticsCameraClipViewController *)self cameraClip];
    isComplete = [cameraClip isComplete];
    v21 = @"NO";
    if (isComplete)
    {
      v21 = @"YES";
    }

    [v19 stringWithFormat:@"Complete: %@", v21];
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    cameraClip = [(HUDiagnosticsCameraClipViewController *)self cameraClip];
    [cameraClip targetFragmentDuration];
    [v9 stringWithFormat:@"Target Fragment Duration: %.2f", v11];
  }

  dateOfOccurrence = LABEL_18:;
  [v7 setTitleText:dateOfOccurrence];
LABEL_22:

LABEL_23:

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  if ([path row] == 5)
  {
    v5 = [HUDiagnosticsCameraClipSignificantEventsViewController alloc];
    cameraClip = [(HUDiagnosticsCameraClipViewController *)self cameraClip];
    v8 = [(HUDiagnosticsCameraClipSignificantEventsViewController *)v5 initWithCameraClip:cameraClip];

    navigationController = [(HUDiagnosticsCameraClipViewController *)self navigationController];
    [navigationController pushViewController:v8 animated:1];
  }
}

@end