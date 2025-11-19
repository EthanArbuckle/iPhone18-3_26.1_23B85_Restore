@interface HUDiagnosticsCameraClipViewController
- (HUDiagnosticsCameraClipViewController)initWithRecordingEvent:(id)a3 cameraProfile:(id)a4;
- (UITableView)eventTableView;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation HUDiagnosticsCameraClipViewController

- (HUDiagnosticsCameraClipViewController)initWithRecordingEvent:(id)a3 cameraProfile:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HUDiagnosticsCameraClipViewController;
  v9 = [(HUDiagnosticsCameraClipViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cameraClip, a3);
    objc_storeStrong(&v10->_cameraProfile, a4);
  }

  return v10;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = HUDiagnosticsCameraClipViewController;
  [(HUDiagnosticsCameraClipViewController *)&v7 viewDidLoad];
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(HUDiagnosticsCameraClipViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(HUDiagnosticsCameraClipViewController *)self view];
  v6 = [(HUDiagnosticsCameraClipViewController *)self eventTableView];
  [v5 addSubview:v6];
}

- (UITableView)eventTableView
{
  eventTableView = self->_eventTableView;
  if (!eventTableView)
  {
    v4 = objc_alloc(MEMORY[0x277D75B40]);
    v5 = [(HUDiagnosticsCameraClipViewController *)self view];
    [v5 bounds];
    v6 = [v4 initWithFrame:?];

    [(UITableView *)v6 setDataSource:self];
    [(UITableView *)v6 setDelegate:self];
    [(UITableView *)v6 setSemanticContentAttribute:3];
    v7 = [MEMORY[0x277D75348] clearColor];
    [(UITableView *)v6 setBackgroundColor:v7];

    [(UITableView *)v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"HUDiagnosticsRecordingCellEventIdentifier"];
    [(UITableView *)v6 setShowsHorizontalScrollIndicator:0];
    v8 = self->_eventTableView;
    self->_eventTableView = v6;

    eventTableView = self->_eventTableView;
  }

  return eventTableView;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"HUDiagnosticsRecordingCellEventIdentifier" forIndexPath:v6];
  [v7 setHideIcon:1];
  v8 = [v6 row];

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
        v10 = [(HUDiagnosticsCameraClipViewController *)self cameraClip];
        [v10 duration];
        [v12 stringWithFormat:@"Duration: %.2f", v13];
        goto LABEL_18;
      }

      v23 = MEMORY[0x277CCACA8];
      v10 = [(HUDiagnosticsCameraClipViewController *)self cameraClip];
      v18 = [v10 dateOfOccurrence];
      [v23 stringWithFormat:@"Start Date: %@", v18];
    }

    else
    {
      v17 = MEMORY[0x277CCACA8];
      v10 = [(HUDiagnosticsCameraClipViewController *)self cameraClip];
      v18 = [v10 uniqueIdentifier];
      [v17 stringWithFormat:@"UUID: %@", v18];
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
      v10 = [(HUDiagnosticsCameraClipViewController *)self cameraClip];
      v15 = [v10 canAskForUserFeedback];
      v16 = @"NO";
      if (v15)
      {
        v16 = @"YES";
      }

      [v14 stringWithFormat:@"Can ask for feedback: %@", v16];
      goto LABEL_18;
    }

    v22 = MEMORY[0x277CCACA8];
    v10 = [(HUDiagnosticsCameraClipViewController *)self cameraClip];
    v18 = [v10 significantEvents];
    [v22 stringWithFormat:@"Significant Events: %lu", objc_msgSend(v18, "count")];
    goto LABEL_21;
  }

  if (v8 == 3)
  {
    v19 = MEMORY[0x277CCACA8];
    v10 = [(HUDiagnosticsCameraClipViewController *)self cameraClip];
    v20 = [v10 isComplete];
    v21 = @"NO";
    if (v20)
    {
      v21 = @"YES";
    }

    [v19 stringWithFormat:@"Complete: %@", v21];
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [(HUDiagnosticsCameraClipViewController *)self cameraClip];
    [v10 targetFragmentDuration];
    [v9 stringWithFormat:@"Target Fragment Duration: %.2f", v11];
  }

  v18 = LABEL_18:;
  [v7 setTitleText:v18];
LABEL_22:

LABEL_23:

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  if ([a4 row] == 5)
  {
    v5 = [HUDiagnosticsCameraClipSignificantEventsViewController alloc];
    v6 = [(HUDiagnosticsCameraClipViewController *)self cameraClip];
    v8 = [(HUDiagnosticsCameraClipSignificantEventsViewController *)v5 initWithCameraClip:v6];

    v7 = [(HUDiagnosticsCameraClipViewController *)self navigationController];
    [v7 pushViewController:v8 animated:1];
  }
}

@end