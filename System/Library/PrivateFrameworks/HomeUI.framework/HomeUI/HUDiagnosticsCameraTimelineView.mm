@interface HUDiagnosticsCameraTimelineView
- (HUDiagnosticsCameraTimelineView)initWithFrame:(CGRect)a3;
- (void)updateWithPlaybackEngine:(id)a3;
@end

@implementation HUDiagnosticsCameraTimelineView

- (HUDiagnosticsCameraTimelineView)initWithFrame:(CGRect)a3
{
  v22[5] = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = HUDiagnosticsCameraTimelineView;
  v3 = [(HUDiagnosticsCameraTimelineView *)&v21 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v13 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIButton *)v12 setTitleColor:v13 forState:0];

    v14 = [MEMORY[0x277D75348] systemDarkGrayColor];
    [(UIButton *)v12 setBackgroundColor:v14];

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

- (void)updateWithPlaybackEngine:(id)a3
{
  v26 = a3;
  v4 = [v26 timeControlStatusDescription];
  v5 = [(HUDiagnosticsCameraTimelineView *)self cameraStatusLabel];
  [v5 setText:v4];

  v6 = [v26 timelineStateDescription];
  v7 = [(HUDiagnosticsCameraTimelineView *)self currentTimelineStateLabel];
  [v7 setText:v6];

  v8 = [v26 playbackPosition];
  v9 = [v8 clipPlaybackDate];
  v10 = [v9 description];
  v11 = [(HUDiagnosticsCameraTimelineView *)self currentPositionLabel];
  [v11 setText:v10];

  v12 = [v26 currentClip];
  v13 = [v12 uniqueIdentifier];
  v14 = [v13 description];
  v15 = [(HUDiagnosticsCameraTimelineView *)self currentEventLabel];
  [v15 setText:v14];

  -[HUDiagnosticsCameraTimelineView setHidden:](self, "setHidden:", [v26 engineMode] == 0);
  if ([v26 timelineState] == 2)
  {
    objc_opt_class();
    v16 = [v26 clipPlayer];
    v17 = [v16 player];
    v18 = [v17 currentItem];
    v19 = [v18 asset];
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;

    v22 = [v21 resourceLoader];

    v23 = [v22 delegate];

    if (v23)
    {
      [MEMORY[0x277D75348] systemOrangeColor];
    }

    else
    {
      [MEMORY[0x277D75348] systemGreenColor];
    }
    v24 = ;
  }

  else
  {
    v24 = [MEMORY[0x277D75348] systemDarkGrayColor];
  }

  v25 = v24;
  [(UIButton *)self->_moreButton setBackgroundColor:v24];
}

@end