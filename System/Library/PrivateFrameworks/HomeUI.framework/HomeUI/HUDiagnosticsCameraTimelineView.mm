@interface HUDiagnosticsCameraTimelineView
- (HUDiagnosticsCameraTimelineView)initWithFrame:(CGRect)frame;
- (void)updateWithPlaybackEngine:(id)engine;
@end

@implementation HUDiagnosticsCameraTimelineView

- (HUDiagnosticsCameraTimelineView)initWithFrame:(CGRect)frame
{
  v22[5] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = HUDiagnosticsCameraTimelineView;
  v3 = [(HUDiagnosticsCameraTimelineView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    cameraStatusLabel = v3->_cameraStatusLabel;
    v3->_cameraStatusLabel = v4;

    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    currentPositionLabel = v3->_currentPositionLabel;
    v3->_currentPositionLabel = v6;

    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    currentEventLabel = v3->_currentEventLabel;
    v3->_currentEventLabel = v8;

    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    currentTimelineStateLabel = v3->_currentTimelineStateLabel;
    v3->_currentTimelineStateLabel = v10;

    v12 = [MEMORY[0x277D75220] buttonWithType:1];
    [(UIButton *)v12 setTitle:@"Event Details" forState:0];
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIButton *)v12 setTitleColor:systemWhiteColor forState:0];

    systemDarkGrayColor = [MEMORY[0x277D75348] systemDarkGrayColor];
    [(UIButton *)v12 setBackgroundColor:systemDarkGrayColor];

    moreButton = v3->_moreButton;
    v3->_moreButton = v12;
    v16 = v12;

    v17 = objc_alloc(MEMORY[0x277D75A68]);
    v22[0] = v3->_cameraStatusLabel;
    v22[1] = v3->_currentTimelineStateLabel;
    v22[2] = v3->_currentPositionLabel;
    v22[3] = v3->_currentEventLabel;
    v22[4] = v3->_moreButton;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:5];

    v19 = [v17 initWithArrangedSubviews:v18];
    [v19 setAxis:1];
    [v19 setDistribution:1];
    [(HUDiagnosticsCameraTimelineView *)v3 bounds];
    [v19 setFrame:?];
    [v19 setAutoresizingMask:18];
    [(HUDiagnosticsCameraTimelineView *)v3 addSubview:v19];
  }

  return v3;
}

- (void)updateWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  timeControlStatusDescription = [engineCopy timeControlStatusDescription];
  cameraStatusLabel = [(HUDiagnosticsCameraTimelineView *)self cameraStatusLabel];
  [cameraStatusLabel setText:timeControlStatusDescription];

  timelineStateDescription = [engineCopy timelineStateDescription];
  currentTimelineStateLabel = [(HUDiagnosticsCameraTimelineView *)self currentTimelineStateLabel];
  [currentTimelineStateLabel setText:timelineStateDescription];

  playbackPosition = [engineCopy playbackPosition];
  clipPlaybackDate = [playbackPosition clipPlaybackDate];
  v10 = [clipPlaybackDate description];
  currentPositionLabel = [(HUDiagnosticsCameraTimelineView *)self currentPositionLabel];
  [currentPositionLabel setText:v10];

  currentClip = [engineCopy currentClip];
  uniqueIdentifier = [currentClip uniqueIdentifier];
  v14 = [uniqueIdentifier description];
  currentEventLabel = [(HUDiagnosticsCameraTimelineView *)self currentEventLabel];
  [currentEventLabel setText:v14];

  -[HUDiagnosticsCameraTimelineView setHidden:](self, "setHidden:", [engineCopy engineMode] == 0);
  if ([engineCopy timelineState] == 2)
  {
    objc_opt_class();
    clipPlayer = [engineCopy clipPlayer];
    player = [clipPlayer player];
    currentItem = [player currentItem];
    asset = [currentItem asset];
    if (objc_opt_isKindOfClass())
    {
      v20 = asset;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    resourceLoader = [v21 resourceLoader];

    delegate = [resourceLoader delegate];

    if (delegate)
    {
      [MEMORY[0x277D75348] systemOrangeColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemGreenColor];
    }
    systemDarkGrayColor = ;
  }

  else
  {
    systemDarkGrayColor = [MEMORY[0x277D75348] systemDarkGrayColor];
  }

  v25 = systemDarkGrayColor;
  [(UIButton *)self->_moreButton setBackgroundColor:systemDarkGrayColor];
}

@end