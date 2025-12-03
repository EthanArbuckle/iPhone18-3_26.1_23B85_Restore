@interface MediaControlsTimeControl
- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshot;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)result;
- (MediaControlsTimeControl)initWithFrame:(CGRect)frame;
- (void)_updateDisplayLinkPause;
- (void)_updateLabels:(double)labels withRemainingDuration:(double)duration;
- (void)_updateLabels:(id *)labels withTargetTimestamp:(double)timestamp;
- (void)_updateSliderPosition;
- (void)_updateStyle;
- (void)_updateTimeControl;
- (void)cancelTrackingWithEvent:(id)event;
- (void)createDisplayLinkIfNeeded;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)invalidateDisplayLinkIfNeeded;
- (void)layoutSubviews;
- (void)providedStylesDidChangeForProvider:(id)provider;
- (void)setDurationSnapshot:(id *)snapshot;
- (void)setEmpty:(BOOL)empty;
- (void)setEnabled:(BOOL)enabled;
- (void)setResponse:(id)response;
- (void)setResponseItem:(id)item;
- (void)setSliderValue:(double)value;
- (void)setStyle:(int64_t)style;
- (void)setTimeControlOnScreen:(BOOL)screen;
- (void)setTransitioning:(BOOL)transitioning;
- (void)setVisualStylingProvider:(id)provider;
- (void)tintColorDidChange;
- (void)updateBackgroundMask;
- (void)updateLabelAvoidance;
- (void)updateSliderConstraint;
- (void)viewDidMoveToSuperview;
@end

@implementation MediaControlsTimeControl

- (MediaControlsTimeControl)initWithFrame:(CGRect)frame
{
  v180[2] = *MEMORY[0x1E69E9840];
  v176.receiver = self;
  v176.super_class = MediaControlsTimeControl;
  v3 = [(MediaControlsTimeControl *)&v176 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    elapsedTrack = v3->_elapsedTrack;
    v3->_elapsedTrack = v4;

    [(UIView *)v3->_elapsedTrack setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_elapsedTrack setUserInteractionEnabled:0];
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    remainingTrack = v3->_remainingTrack;
    v3->_remainingTrack = v6;

    [(UIView *)v3->_remainingTrack setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_remainingTrack setUserInteractionEnabled:0];
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    knobView = v3->_knobView;
    v3->_knobView = v8;

    [(UIView *)v3->_knobView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_knobView setUserInteractionEnabled:0];
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    elapsedTimeLabel = v3->_elapsedTimeLabel;
    v3->_elapsedTimeLabel = v10;

    [(UILabel *)v3->_elapsedTimeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    remainingTimeLabel = v3->_remainingTimeLabel;
    v3->_remainingTimeLabel = v12;

    [(UILabel *)v3->_remainingTimeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    liveLabel = v3->_liveLabel;
    v3->_liveLabel = v14;

    [(UILabel *)v3->_liveLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    mediaControlsBundle = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    v17 = [mediaControlsBundle localizedStringForKey:@"SCRUBBER_LIVE" value:&stru_1F1445548 table:@"MediaControls"];
    [(UILabel *)v3->_liveLabel setText:v17];

    v18 = objc_alloc_init(MEMORY[0x1E69DD250]);
    liveBackground = v3->_liveBackground;
    v3->_liveBackground = v18;

    [(UIView *)v3->_liveBackground setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = objc_alloc_init(MEMORY[0x1E6979380]);
    liveBackgroundMask = v3->_liveBackgroundMask;
    v3->_liveBackgroundMask = v20;

    v22 = objc_alloc_init(MEMORY[0x1E69DCC20]);
    trackLayoutGuide = v3->_trackLayoutGuide;
    v3->_trackLayoutGuide = v22;

    v24 = objc_alloc_init(MEMORY[0x1E6988158]);
    elapsedTimeFormatter = v3->_elapsedTimeFormatter;
    v3->_elapsedTimeFormatter = v24;

    v26 = objc_alloc_init(MEMORY[0x1E6988158]);
    remainingTimeFormatter = v3->_remainingTimeFormatter;
    v3->_remainingTimeFormatter = v26;

    [(AVTimeFormatter *)v3->_elapsedTimeFormatter setStyle:1];
    [(AVTimeFormatter *)v3->_remainingTimeFormatter setStyle:2];
    [(MediaControlsTimeControl *)v3 setSemanticContentAttribute:1];
    elapsedTrack = [(MediaControlsTimeControl *)v3 elapsedTrack];
    [(MediaControlsTimeControl *)v3 addSubview:elapsedTrack];

    remainingTrack = [(MediaControlsTimeControl *)v3 remainingTrack];
    [(MediaControlsTimeControl *)v3 addSubview:remainingTrack];

    knobView = [(MediaControlsTimeControl *)v3 knobView];
    [(MediaControlsTimeControl *)v3 addSubview:knobView];

    elapsedTimeLabel = [(MediaControlsTimeControl *)v3 elapsedTimeLabel];
    [(MediaControlsTimeControl *)v3 addSubview:elapsedTimeLabel];

    remainingTimeLabel = [(MediaControlsTimeControl *)v3 remainingTimeLabel];
    [(MediaControlsTimeControl *)v3 addSubview:remainingTimeLabel];

    liveLabel = [(MediaControlsTimeControl *)v3 liveLabel];
    [(MediaControlsTimeControl *)v3 addSubview:liveLabel];

    liveBackground = [(MediaControlsTimeControl *)v3 liveBackground];
    [(MediaControlsTimeControl *)v3 addSubview:liveBackground];

    knobView2 = [(MediaControlsTimeControl *)v3 knobView];
    widthAnchor = [knobView2 widthAnchor];
    v37 = [widthAnchor constraintEqualToConstant:7.0];

    v175 = v37;
    LODWORD(v38) = 1148829696;
    [v37 setPriority:v38];
    v180[0] = v37;
    knobView3 = [(MediaControlsTimeControl *)v3 knobView];
    heightAnchor = [knobView3 heightAnchor];
    v41 = [heightAnchor constraintEqualToConstant:7.0];
    v180[1] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v180 count:2];
    defaultConstraints = v3->_defaultConstraints;
    v3->_defaultConstraints = v42;

    knobView4 = [(MediaControlsTimeControl *)v3 knobView];
    widthAnchor2 = [knobView4 widthAnchor];
    v46 = [widthAnchor2 constraintEqualToConstant:28.0];

    v174 = v46;
    LODWORD(v47) = 1148829696;
    [v46 setPriority:v47];
    v179[0] = v46;
    knobView5 = [(MediaControlsTimeControl *)v3 knobView];
    heightAnchor2 = [knobView5 heightAnchor];
    v50 = [heightAnchor2 constraintEqualToConstant:28.0];
    v179[1] = v50;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v179 count:2];
    trackingConstraints = v3->_trackingConstraints;
    v3->_trackingConstraints = v51;

    knobView6 = [(MediaControlsTimeControl *)v3 knobView];
    centerXAnchor = [knobView6 centerXAnchor];
    leadingAnchor = [(MediaControlsTimeControl *)v3 leadingAnchor];
    v56 = [centerXAnchor constraintEqualToAnchor:leadingAnchor];
    knobViewXConstraint = v3->_knobViewXConstraint;
    v3->_knobViewXConstraint = v56;

    LODWORD(v58) = 1144750080;
    [(NSLayoutConstraint *)v3->_knobViewXConstraint setPriority:v58];
    liveLabel2 = [(MediaControlsTimeControl *)v3 liveLabel];
    leadingAnchor2 = [liveLabel2 leadingAnchor];
    leadingAnchor3 = [(MediaControlsTimeControl *)v3 leadingAnchor];
    v62 = [leadingAnchor2 constraintGreaterThanOrEqualToAnchor:leadingAnchor3 constant:20.0];

    v173 = v62;
    LODWORD(v63) = 1148829696;
    [v62 setPriority:v63];
    v135 = MEMORY[0x1E696ACD8];
    liveLabel3 = [(MediaControlsTimeControl *)v3 liveLabel];
    centerYAnchor = [liveLabel3 centerYAnchor];
    centerYAnchor2 = [(MediaControlsTimeControl *)v3 centerYAnchor];
    v169 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v178[0] = v169;
    liveLabel4 = [(MediaControlsTimeControl *)v3 liveLabel];
    centerXAnchor2 = [liveLabel4 centerXAnchor];
    centerXAnchor3 = [(MediaControlsTimeControl *)v3 centerXAnchor];
    v165 = [centerXAnchor2 constraintEqualToAnchor:centerXAnchor3];
    v178[1] = v165;
    v178[2] = v62;
    liveLabel5 = [(MediaControlsTimeControl *)v3 liveLabel];
    trailingAnchor = [liveLabel5 trailingAnchor];
    trailingAnchor2 = [(MediaControlsTimeControl *)v3 trailingAnchor];
    v161 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2 constant:20.0];
    v178[3] = v161;
    liveBackground2 = [(MediaControlsTimeControl *)v3 liveBackground];
    centerYAnchor3 = [liveBackground2 centerYAnchor];
    centerYAnchor4 = [(MediaControlsTimeControl *)v3 centerYAnchor];
    v157 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v178[4] = v157;
    liveBackground3 = [(MediaControlsTimeControl *)v3 liveBackground];
    leadingAnchor4 = [liveBackground3 leadingAnchor];
    leadingAnchor5 = [(MediaControlsTimeControl *)v3 leadingAnchor];
    v153 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v178[5] = v153;
    liveBackground4 = [(MediaControlsTimeControl *)v3 liveBackground];
    trailingAnchor3 = [liveBackground4 trailingAnchor];
    trailingAnchor4 = [(MediaControlsTimeControl *)v3 trailingAnchor];
    v149 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v178[6] = v149;
    liveBackground5 = [(MediaControlsTimeControl *)v3 liveBackground];
    heightAnchor3 = [liveBackground5 heightAnchor];
    v146 = [heightAnchor3 constraintEqualToConstant:3.0];
    v178[7] = v146;
    elapsedTrack2 = [(MediaControlsTimeControl *)v3 elapsedTrack];
    leadingAnchor6 = [elapsedTrack2 leadingAnchor];
    leadingAnchor7 = [(MediaControlsTimeControl *)v3 leadingAnchor];
    v142 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
    v178[8] = v142;
    elapsedTrack3 = [(MediaControlsTimeControl *)v3 elapsedTrack];
    trailingAnchor5 = [elapsedTrack3 trailingAnchor];
    knobView7 = [(MediaControlsTimeControl *)v3 knobView];
    centerXAnchor4 = [knobView7 centerXAnchor];
    v137 = [trailingAnchor5 constraintEqualToAnchor:centerXAnchor4];
    v178[9] = v137;
    elapsedTrack4 = [(MediaControlsTimeControl *)v3 elapsedTrack];
    centerYAnchor5 = [elapsedTrack4 centerYAnchor];
    centerYAnchor6 = [(MediaControlsTimeControl *)v3 centerYAnchor];
    v132 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v178[10] = v132;
    elapsedTrack5 = [(MediaControlsTimeControl *)v3 elapsedTrack];
    heightAnchor4 = [elapsedTrack5 heightAnchor];
    v129 = [heightAnchor4 constraintEqualToConstant:3.0];
    v178[11] = v129;
    remainingTrack2 = [(MediaControlsTimeControl *)v3 remainingTrack];
    leadingAnchor8 = [remainingTrack2 leadingAnchor];
    knobView8 = [(MediaControlsTimeControl *)v3 knobView];
    centerXAnchor5 = [knobView8 centerXAnchor];
    v124 = [leadingAnchor8 constraintEqualToAnchor:centerXAnchor5];
    v178[12] = v124;
    remainingTrack3 = [(MediaControlsTimeControl *)v3 remainingTrack];
    trailingAnchor6 = [remainingTrack3 trailingAnchor];
    trailingAnchor7 = [(MediaControlsTimeControl *)v3 trailingAnchor];
    v120 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v178[13] = v120;
    remainingTrack4 = [(MediaControlsTimeControl *)v3 remainingTrack];
    centerYAnchor7 = [remainingTrack4 centerYAnchor];
    centerYAnchor8 = [(MediaControlsTimeControl *)v3 centerYAnchor];
    v116 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
    v178[14] = v116;
    remainingTrack5 = [(MediaControlsTimeControl *)v3 remainingTrack];
    heightAnchor5 = [remainingTrack5 heightAnchor];
    v113 = [heightAnchor5 constraintEqualToConstant:3.0];
    v178[15] = v113;
    v178[16] = v3->_knobViewXConstraint;
    knobView9 = [(MediaControlsTimeControl *)v3 knobView];
    centerYAnchor9 = [knobView9 centerYAnchor];
    centerYAnchor10 = [(MediaControlsTimeControl *)v3 centerYAnchor];
    v109 = [centerYAnchor9 constraintEqualToAnchor:centerYAnchor10];
    v178[17] = v109;
    knobView10 = [(MediaControlsTimeControl *)v3 knobView];
    leadingAnchor9 = [knobView10 leadingAnchor];
    elapsedTrack6 = [(MediaControlsTimeControl *)v3 elapsedTrack];
    leadingAnchor10 = [elapsedTrack6 leadingAnchor];
    v104 = [leadingAnchor9 constraintGreaterThanOrEqualToAnchor:leadingAnchor10];
    v178[18] = v104;
    knobView11 = [(MediaControlsTimeControl *)v3 knobView];
    trailingAnchor8 = [knobView11 trailingAnchor];
    remainingTrack6 = [(MediaControlsTimeControl *)v3 remainingTrack];
    trailingAnchor9 = [remainingTrack6 trailingAnchor];
    v99 = [trailingAnchor8 constraintLessThanOrEqualToAnchor:trailingAnchor9];
    v178[19] = v99;
    elapsedTimeLabel2 = [(MediaControlsTimeControl *)v3 elapsedTimeLabel];
    leadingAnchor11 = [elapsedTimeLabel2 leadingAnchor];
    leadingAnchor12 = [(MediaControlsTimeControl *)v3 leadingAnchor];
    v95 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    v178[20] = v95;
    elapsedTimeLabel3 = [(MediaControlsTimeControl *)v3 elapsedTimeLabel];
    bottomAnchor = [elapsedTimeLabel3 bottomAnchor];
    bottomAnchor2 = [(MediaControlsTimeControl *)v3 bottomAnchor];
    v91 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-3.5];
    v178[21] = v91;
    remainingTimeLabel2 = [(MediaControlsTimeControl *)v3 remainingTimeLabel];
    trailingAnchor10 = [remainingTimeLabel2 trailingAnchor];
    trailingAnchor11 = [(MediaControlsTimeControl *)v3 trailingAnchor];
    v66 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11];
    v178[22] = v66;
    remainingTimeLabel3 = [(MediaControlsTimeControl *)v3 remainingTimeLabel];
    bottomAnchor3 = [remainingTimeLabel3 bottomAnchor];
    bottomAnchor4 = [(MediaControlsTimeControl *)v3 bottomAnchor];
    v70 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-3.5];
    v178[23] = v70;
    v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v178 count:24];
    v72 = [v71 arrayByAddingObjectsFromArray:v3->_defaultConstraints];
    [v135 activateConstraints:v72];

    v73 = [MEMORY[0x1E69DB878] monospacedDigitSystemFontOfSize:13.0 weight:*MEMORY[0x1E69DB970]];
    liveLabel6 = [(MediaControlsTimeControl *)v3 liveLabel];
    [liveLabel6 setFont:v73];

    elapsedTimeLabel4 = [(MediaControlsTimeControl *)v3 elapsedTimeLabel];
    [elapsedTimeLabel4 setFont:v73];

    remainingTimeLabel4 = [(MediaControlsTimeControl *)v3 remainingTimeLabel];
    [remainingTimeLabel4 setFont:v73];

    elapsedTrack7 = [(MediaControlsTimeControl *)v3 elapsedTrack];
    layer = [elapsedTrack7 layer];
    [layer setMaskedCorners:5];

    remainingTrack7 = [(MediaControlsTimeControl *)v3 remainingTrack];
    layer2 = [remainingTrack7 layer];
    [layer2 setMaskedCorners:10];

    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v177[0] = [blackColor CGColor];
    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    v177[1] = [blackColor2 CGColor];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v177[2] = [clearColor CGColor];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    v177[3] = [clearColor2 CGColor];
    blackColor3 = [MEMORY[0x1E69DC888] blackColor];
    v177[4] = [blackColor3 CGColor];
    blackColor4 = [MEMORY[0x1E69DC888] blackColor];
    v177[5] = [blackColor4 CGColor];
    v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:v177 count:6];
    liveBackgroundMask = [(MediaControlsTimeControl *)v3 liveBackgroundMask];
    [liveBackgroundMask setColors:v87];

    v3->_currentlyTracking = 0;
    v3->_currentTimeInTrack = 0.0;
    [(MediaControlsTimeControl *)v3 setEnabled:0];
    [(MediaControlsTimeControl *)v3 setEmpty:1];
    [(MediaControlsTimeControl *)v3 _updateStyle];
  }

  return v3;
}

- (void)viewDidMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = MediaControlsTimeControl;
  [(MediaControlsTimeControl *)&v3 viewDidMoveToSuperview];
  [(MediaControlsTimeControl *)self _updateTimeControl];
}

- (void)layoutSubviews
{
  v24.receiver = self;
  v24.super_class = MediaControlsTimeControl;
  [(MediaControlsTimeControl *)&v24 layoutSubviews];
  knobView = [(MediaControlsTimeControl *)self knobView];
  [knobView bounds];
  v5 = v4 * 0.5;
  knobView2 = [(MediaControlsTimeControl *)self knobView];
  layer = [knobView2 layer];
  [layer setCornerRadius:v5];

  elapsedTrack = [(MediaControlsTimeControl *)self elapsedTrack];
  [elapsedTrack bounds];
  v10 = v9 * 0.5;
  elapsedTrack2 = [(MediaControlsTimeControl *)self elapsedTrack];
  layer2 = [elapsedTrack2 layer];
  [layer2 setCornerRadius:v10];

  remainingTrack = [(MediaControlsTimeControl *)self remainingTrack];
  [remainingTrack bounds];
  v15 = v14 * 0.5;
  remainingTrack2 = [(MediaControlsTimeControl *)self remainingTrack];
  layer3 = [remainingTrack2 layer];
  [layer3 setCornerRadius:v15];

  liveBackground = [(MediaControlsTimeControl *)self liveBackground];
  [liveBackground bounds];
  v20 = v19 * 0.5;
  liveBackground2 = [(MediaControlsTimeControl *)self liveBackground];
  layer4 = [liveBackground2 layer];
  [layer4 setCornerRadius:v20];

  [(MediaControlsTimeControl *)self updateSliderConstraint];
  [(MediaControlsTimeControl *)self durationSnapshot];
  if (v23 == 1)
  {
    [(MediaControlsTimeControl *)self updateBackgroundMask];
  }
}

- (void)tintColorDidChange
{
  v19.receiver = self;
  v19.super_class = MediaControlsTimeControl;
  [(MediaControlsTimeControl *)&v19 tintColorDidChange];
  if (!self->_visualStylingProvider)
  {
    tintColor = [(MediaControlsTimeControl *)self tintColor];
    knobView = [(MediaControlsTimeControl *)self knobView];
    [knobView setBackgroundColor:tintColor];

    tintColor2 = [(MediaControlsTimeControl *)self tintColor];
    elapsedTrack = [(MediaControlsTimeControl *)self elapsedTrack];
    [elapsedTrack setBackgroundColor:tintColor2];

    tintColor3 = [(MediaControlsTimeControl *)self tintColor];
    liveLabel = [(MediaControlsTimeControl *)self liveLabel];
    [liveLabel setTextColor:tintColor3];

    tintColor4 = [(MediaControlsTimeControl *)self tintColor];
    traitCollection = [(MediaControlsTimeControl *)self traitCollection];
    v11 = [tintColor4 secondaryColorForInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

    elapsedTimeLabel = [(MediaControlsTimeControl *)self elapsedTimeLabel];
    [elapsedTimeLabel setTextColor:v11];

    remainingTimeLabel = [(MediaControlsTimeControl *)self remainingTimeLabel];
    [remainingTimeLabel setTextColor:v11];

    tintColor5 = [(MediaControlsTimeControl *)self tintColor];
    traitCollection2 = [(MediaControlsTimeControl *)self traitCollection];
    v16 = [tintColor5 tertiaryColorForInterfaceStyle:{objc_msgSend(traitCollection2, "userInterfaceStyle")}];

    remainingTrack = [(MediaControlsTimeControl *)self remainingTrack];
    [remainingTrack setBackgroundColor:v16];

    liveBackground = [(MediaControlsTimeControl *)self liveBackground];
    [liveBackground setBackgroundColor:v16];
  }
}

- (void)setVisualStylingProvider:(id)provider
{
  providerCopy = provider;
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider != providerCopy)
  {
    v31 = providerCopy;
    [(MTVisualStylingProvider *)visualStylingProvider _removeObserver:self];
    v7 = self->_visualStylingProvider;
    elapsedTrack = [(MediaControlsTimeControl *)self elapsedTrack];
    [(MTVisualStylingProvider *)v7 stopAutomaticallyUpdatingView:elapsedTrack];

    v9 = self->_visualStylingProvider;
    remainingTrack = [(MediaControlsTimeControl *)self remainingTrack];
    [(MTVisualStylingProvider *)v9 stopAutomaticallyUpdatingView:remainingTrack];

    v11 = self->_visualStylingProvider;
    elapsedTimeLabel = [(MediaControlsTimeControl *)self elapsedTimeLabel];
    [(MTVisualStylingProvider *)v11 stopAutomaticallyUpdatingView:elapsedTimeLabel];

    v13 = self->_visualStylingProvider;
    remainingTimeLabel = [(MediaControlsTimeControl *)self remainingTimeLabel];
    [(MTVisualStylingProvider *)v13 stopAutomaticallyUpdatingView:remainingTimeLabel];

    v15 = self->_visualStylingProvider;
    liveLabel = [(MediaControlsTimeControl *)self liveLabel];
    [(MTVisualStylingProvider *)v15 stopAutomaticallyUpdatingView:liveLabel];

    v17 = self->_visualStylingProvider;
    liveBackground = [(MediaControlsTimeControl *)self liveBackground];
    [(MTVisualStylingProvider *)v17 stopAutomaticallyUpdatingView:liveBackground];

    objc_storeStrong(&self->_visualStylingProvider, provider);
    [(MTVisualStylingProvider *)self->_visualStylingProvider _addObserver:self];
    v19 = self->_visualStylingProvider;
    elapsedTrack2 = [(MediaControlsTimeControl *)self elapsedTrack];
    [(MTVisualStylingProvider *)v19 automaticallyUpdateView:elapsedTrack2 withStyle:0];

    v21 = self->_visualStylingProvider;
    remainingTrack2 = [(MediaControlsTimeControl *)self remainingTrack];
    [(MTVisualStylingProvider *)v21 automaticallyUpdateView:remainingTrack2 withStyle:1];

    v23 = self->_visualStylingProvider;
    elapsedTimeLabel2 = [(MediaControlsTimeControl *)self elapsedTimeLabel];
    [(MTVisualStylingProvider *)v23 automaticallyUpdateView:elapsedTimeLabel2 withStyle:1];

    v25 = self->_visualStylingProvider;
    remainingTimeLabel2 = [(MediaControlsTimeControl *)self remainingTimeLabel];
    [(MTVisualStylingProvider *)v25 automaticallyUpdateView:remainingTimeLabel2 withStyle:1];

    v27 = self->_visualStylingProvider;
    liveLabel2 = [(MediaControlsTimeControl *)self liveLabel];
    [(MTVisualStylingProvider *)v27 automaticallyUpdateView:liveLabel2 withStyle:0];

    v29 = self->_visualStylingProvider;
    liveBackground2 = [(MediaControlsTimeControl *)self liveBackground];
    [(MTVisualStylingProvider *)v29 automaticallyUpdateView:liveBackground2 withStyle:1];

    visualStylingProvider = [(MediaControlsTimeControl *)self providedStylesDidChangeForProvider:self->_visualStylingProvider];
    providerCopy = v31;
  }

  MEMORY[0x1EEE66BB8](visualStylingProvider, providerCopy);
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 54.0;
  result.height = v3;
  return result;
}

- (void)setDurationSnapshot:(id *)snapshot
{
  p_durationSnapshot = &self->_durationSnapshot;
  v6 = *&snapshot->var2;
  v5 = *&snapshot->var4;
  v7 = *&snapshot->var0;
  *&self->_durationSnapshot.isLiveContent = *&snapshot->var7;
  *&self->_durationSnapshot.endTime = v6;
  *&self->_durationSnapshot.elapsedDuration = v5;
  *&self->_durationSnapshot.snapshotTime = v7;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  duration = p_durationSnapshot->elapsedDuration + (v8 - p_durationSnapshot->snapshotTime) * p_durationSnapshot->rate;
  if (duration >= p_durationSnapshot->duration)
  {
    duration = p_durationSnapshot->duration;
  }

  self->_currentTimeInTrack = fmax(duration, 0.0);
  [(MediaControlsTimeControl *)self _updateSliderPosition];
  [(MediaControlsTimeControl *)self _updateStyle];
  [(MediaControlsTimeControl *)self _updateLabels:self->_currentTimeInTrack withRemainingDuration:p_durationSnapshot->duration - self->_currentTimeInTrack];
  [(MediaControlsTimeControl *)self _updateDisplayLinkPause];
  self->_lastRecordedTime = self->_currentTimeInTrack;

  [(MediaControlsTimeControl *)self setNeedsLayout];
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  [touch locationInView:{self, event}];
  v6 = v5;
  v8 = v7;
  knobView = [(MediaControlsTimeControl *)self knobView];
  [knobView frame];
  v19 = CGRectInset(v18, -30.0, -30.0);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;

  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v17.x = v6;
  v17.y = v8;
  v14 = CGRectContainsPoint(v20, v17);
  if (v14)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __61__MediaControlsTimeControl_beginTrackingWithTouch_withEvent___block_invoke;
    v16[3] = &unk_1E7663898;
    v16[4] = self;
    [MEMORY[0x1E69DD250] _animateUsingSpringWithDuration:0 delay:v16 options:0 mass:1.0 stiffness:0.0 damping:1.0 initialVelocity:300.0 animations:24.0 completion:0.0];
    self->_currentlyTracking = 1;
    [(MediaControlsTimeControl *)self _updateDisplayLinkPause];
  }

  return v14;
}

uint64_t __61__MediaControlsTimeControl_beginTrackingWithTouch_withEvent___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E696ACD8] deactivateConstraints:*(*(a1 + 32) + 456)];
  [MEMORY[0x1E696ACD8] activateConstraints:*(*(a1 + 32) + 464)];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  self->_currentlyTracking = 0;
  [(MediaControlsTimeControl *)self _updateDisplayLinkPause:touch];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __59__MediaControlsTimeControl_endTrackingWithTouch_withEvent___block_invoke;
  v25[3] = &unk_1E7663898;
  v25[4] = self;
  [MEMORY[0x1E69DD250] _animateUsingSpringWithDuration:0 delay:v25 options:0 mass:1.0 stiffness:0.0 damping:1.0 initialVelocity:300.0 animations:24.0 completion:0.0];
  response = [(MediaControlsTimeControl *)self response];
  tracklist = [response tracklist];
  playingItemIndexPath = [tracklist playingItemIndexPath];

  if (playingItemIndexPath)
  {
    response2 = [(MediaControlsTimeControl *)self response];
    tracklist2 = [response2 tracklist];
    items = [tracklist2 items];
    v11 = [items itemAtIndexPath:playingItemIndexPath];
  }

  else
  {
    v11 = 0;
  }

  [(MediaControlsTimeControl *)self durationSnapshot];
  [(MediaControlsTimeControl *)self sliderValue];
  v13 = fmax(v24 * v12, 0.0);
  [(MediaControlsTimeControl *)self durationSnapshot];
  if (v13 >= v23)
  {
    v13 = v23;
  }

  seekCommand = [v11 seekCommand];
  v15 = [seekCommand changePositionToElapsedInterval:v13];

  [MEMORY[0x1E69B0848] performRequest:v15 completion:0];
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  [(MediaControlsTimeControl *)self durationSnapshot];
  *&v21 = v13;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  *&v19 = v16;
  v17[0] = v19;
  v17[1] = v20;
  v17[2] = v21;
  v18 = v22;
  [(MediaControlsTimeControl *)self setDurationSnapshot:v17];
}

uint64_t __59__MediaControlsTimeControl_endTrackingWithTouch_withEvent___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E696ACD8] deactivateConstraints:*(*(a1 + 32) + 464)];
  [MEMORY[0x1E696ACD8] activateConstraints:*(*(a1 + 32) + 456)];
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(a1 + 32);

  return [v2 updateLabelAvoidance];
}

- (void)cancelTrackingWithEvent:(id)event
{
  self->_currentlyTracking = 0;
  [(MediaControlsTimeControl *)self _updateDisplayLinkPause];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__MediaControlsTimeControl_cancelTrackingWithEvent___block_invoke;
  v4[3] = &unk_1E7663898;
  v4[4] = self;
  [MEMORY[0x1E69DD250] _animateUsingSpringWithDuration:0 delay:v4 options:0 mass:1.0 stiffness:0.0 damping:1.0 initialVelocity:300.0 animations:24.0 completion:0.0];
}

uint64_t __52__MediaControlsTimeControl_cancelTrackingWithEvent___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E696ACD8] deactivateConstraints:*(*(a1 + 32) + 464)];
  [MEMORY[0x1E696ACD8] activateConstraints:*(*(a1 + 32) + 456)];
  [*(a1 + 32) layoutIfNeeded];
  v2 = *(a1 + 32);

  return [v2 updateLabelAvoidance];
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  [touch locationInView:{self, event}];
  v6 = v5;
  [(MediaControlsTimeControl *)self bounds];
  [(MediaControlsTimeControl *)self setSliderValue:v6 / v7];
  [(MediaControlsTimeControl *)self durationSnapshot];
  [(MediaControlsTimeControl *)self sliderValue];
  v9 = v12 * v8;
  self->_currentTimeInTrack = v12 * v8;
  [(MediaControlsTimeControl *)self durationSnapshot];
  [(MediaControlsTimeControl *)self _updateLabels:v9 withRemainingDuration:v11 - self->_currentTimeInTrack];
  [(MediaControlsTimeControl *)self updateLabelAvoidance];
  return 1;
}

- (void)_updateSliderPosition
{
  v3 = 0.0;
  if (self->_currentTimeInTrack > 0.0)
  {
    [(MediaControlsTimeControl *)self durationSnapshot];
    if (v6 > 0.0)
    {
      currentTimeInTrack = self->_currentTimeInTrack;
      [(MediaControlsTimeControl *)self durationSnapshot];
      v3 = currentTimeInTrack / v5;
    }
  }

  [(MediaControlsTimeControl *)self setSliderValue:v3];
}

- (void)setSliderValue:(double)value
{
  if (self->_sliderValue != value)
  {
    self->_sliderValue = value;
    [(MediaControlsTimeControl *)self updateSliderConstraint];
  }
}

- (void)updateSliderConstraint
{
  v3 = fmin(self->_sliderValue, 1.0);
  [(MediaControlsTimeControl *)self bounds];
  v5 = fmax(v3 * v4, 0.0);
  knobViewXConstraint = self->_knobViewXConstraint;

  [(NSLayoutConstraint *)knobViewXConstraint setConstant:v5];
}

- (void)_updateLabels:(id *)labels withTargetTimestamp:(double)timestamp
{
  var3 = labels->var3;
  v5 = labels->var4 + (timestamp - labels->var0) * labels->var5;
  if (v5 >= var3)
  {
    v5 = labels->var3;
  }

  v6 = fmax(v5, 0.0);
  [(MediaControlsTimeControl *)self _updateLabels:v6 withRemainingDuration:var3 - v6];
}

- (void)_updateLabels:(double)labels withRemainingDuration:(double)duration
{
  if (labels > 0.0 || duration > 0.0)
  {
    elapsedTimeFormatter = self->_elapsedTimeFormatter;
    if (labels >= 0.0)
    {
      labelsCopy = labels;
    }

    else
    {
      labelsCopy = 0.0;
    }

    [(MediaControlsTimeControl *)self durationSnapshot];
    v9 = v18;
    if (labelsCopy < v18)
    {
      v9 = labelsCopy;
    }

    v10 = [(AVTimeFormatter *)elapsedTimeFormatter stringFromSeconds:v9];
    elapsedTimeLabel = [(MediaControlsTimeControl *)self elapsedTimeLabel];
    [elapsedTimeLabel setText:v10];

    remainingTimeFormatter = self->_remainingTimeFormatter;
    [(MediaControlsTimeControl *)self durationSnapshot];
    durationCopy = v17;
    if (v17 > duration)
    {
      durationCopy = duration;
    }

    if (durationCopy < 0.0)
    {
      durationCopy = 0.0;
    }

    v14 = [(AVTimeFormatter *)remainingTimeFormatter stringFromSeconds:durationCopy];
    remainingTimeLabel = [(MediaControlsTimeControl *)self remainingTimeLabel];
    [remainingTimeLabel setText:v14];
  }

  else
  {
    elapsedTimeLabel2 = [(MediaControlsTimeControl *)self elapsedTimeLabel];
    [elapsedTimeLabel2 setText:0];

    remainingTimeLabel2 = [(MediaControlsTimeControl *)self remainingTimeLabel];
    [remainingTimeLabel2 setText:0];
  }
}

- (void)updateLabelAvoidance
{
  knobView = [(MediaControlsTimeControl *)self knobView];
  [knobView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  knobView2 = [(MediaControlsTimeControl *)self knobView];
  [(MediaControlsTimeControl *)self convertRect:knobView2 fromView:v5, v7, v9, v11];
  v55 = v14;
  v56 = v13;
  v53 = v16;
  v54 = v15;

  elapsedTimeLabel = [(MediaControlsTimeControl *)self elapsedTimeLabel];
  [elapsedTimeLabel bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  elapsedTimeLabel2 = [(MediaControlsTimeControl *)self elapsedTimeLabel];
  [(MediaControlsTimeControl *)self convertRect:elapsedTimeLabel2 fromView:v19, v21, v23, v25];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  remainingTimeLabel = [(MediaControlsTimeControl *)self remainingTimeLabel];
  [remainingTimeLabel bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  remainingTimeLabel2 = [(MediaControlsTimeControl *)self remainingTimeLabel];
  [(MediaControlsTimeControl *)self convertRect:remainingTimeLabel2 fromView:v37, v39, v41, v43];
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;

  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __48__MediaControlsTimeControl_updateLabelAvoidance__block_invoke;
  v57[3] = &unk_1E7664248;
  v57[5] = v56;
  v57[6] = v55;
  v57[7] = v54;
  v57[8] = v53;
  v57[9] = v28;
  v57[10] = v30;
  v57[11] = v32;
  v57[12] = v34;
  v57[4] = self;
  v57[13] = v46;
  v57[14] = v48;
  v57[15] = v50;
  v57[16] = v52;
  [MEMORY[0x1E69DD250] _animateUsingSpringWithDuration:0 delay:v57 options:0 mass:0.5 stiffness:0.0 damping:1.0 initialVelocity:500.0 animations:30.0 completion:0.0];
}

void __48__MediaControlsTimeControl_updateLabelAvoidance__block_invoke(uint64_t a1)
{
  MinX = CGRectGetMinX(*(a1 + 40));
  MaxX = CGRectGetMaxX(*(a1 + 72));
  v4 = MEMORY[0x1E695EFD0];
  if (MinX <= MaxX && [*(a1 + 32) isCurrentlyTracking])
  {
    CGAffineTransformMakeTranslation(&v18, 0.0, 10.0);
    v5 = [*(a1 + 32) elapsedTimeLabel];
    v6 = v5;
    v15 = *&v18.a;
    v16 = *&v18.c;
    v7 = *&v18.tx;
  }

  else
  {
    v5 = [*(a1 + 32) elapsedTimeLabel];
    v6 = v5;
    v8 = v4[1];
    v15 = *v4;
    v16 = v8;
    v7 = v4[2];
  }

  v17 = v7;
  [v5 setTransform:&v15];

  v9 = CGRectGetMaxX(*(a1 + 40));
  if (v9 >= CGRectGetMinX(*(a1 + 104)) && [*(a1 + 32) isCurrentlyTracking])
  {
    CGAffineTransformMakeTranslation(&v14, 0.0, 10.0);
    v10 = [*(a1 + 32) remainingTimeLabel];
    v11 = v10;
    v15 = *&v14.a;
    v16 = *&v14.c;
    v12 = *&v14.tx;
  }

  else
  {
    v10 = [*(a1 + 32) remainingTimeLabel];
    v11 = v10;
    v13 = v4[1];
    v15 = *v4;
    v16 = v13;
    v12 = v4[2];
  }

  v17 = v12;
  [v10 setTransform:&v15];
}

- (void)setEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = MediaControlsTimeControl;
  [(MediaControlsTimeControl *)&v4 setEnabled:enabled];
  [(MediaControlsTimeControl *)self _updateStyle];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  knobView = [(MediaControlsTimeControl *)self knobView];
  [knobView frame];
  v18 = CGRectInset(v17, -30.0, -30.0);
  v9 = v18.origin.x;
  v10 = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;

  v19.origin.x = v9;
  v19.origin.y = v10;
  v19.size.width = width;
  v19.size.height = height;
  v16.x = x;
  v16.y = y;
  if (CGRectContainsPoint(v19, v16))
  {
    v13 = 1;
  }

  else
  {
    v15.receiver = self;
    v15.super_class = MediaControlsTimeControl;
    v13 = [(MediaControlsTimeControl *)&v15 pointInside:eventCopy withEvent:x, y];
  }

  return v13;
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(MediaControlsTimeControl *)self _updateStyle];

    [(MediaControlsTimeControl *)self setNeedsLayout];
  }
}

- (void)_updateStyle
{
  [(MediaControlsTimeControl *)self durationSnapshot];
  if (v21)
  {
    [(MediaControlsTimeControl *)self updateBackgroundMask];
    isEmpty = 1;
  }

  else
  {
    isEmpty = [(MediaControlsTimeControl *)self isEmpty];
  }

  responseItem = [(MediaControlsTimeControl *)self responseItem];
  localizedDurationString = [responseItem localizedDurationString];
  v7 = localizedDurationString;
  if (!localizedDurationString)
  {
    mediaControlsBundle = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    v7 = [mediaControlsBundle localizedStringForKey:@"SCRUBBER_LIVE" value:&stru_1F1445548 table:@"MediaControls"];
  }

  liveLabel = [(MediaControlsTimeControl *)self liveLabel];
  [liveLabel setText:v7];

  if (!localizedDurationString)
  {
  }

  liveLabel2 = [(MediaControlsTimeControl *)self liveLabel];
  [liveLabel2 setHidden:v21 ^ 1u];

  liveBackground = [(MediaControlsTimeControl *)self liveBackground];
  [liveBackground setHidden:v21 ^ 1u];

  elapsedTimeLabel = [(MediaControlsTimeControl *)self elapsedTimeLabel];
  [elapsedTimeLabel setHidden:isEmpty];

  remainingTimeLabel = [(MediaControlsTimeControl *)self remainingTimeLabel];
  [remainingTimeLabel setHidden:isEmpty];

  elapsedTrack = [(MediaControlsTimeControl *)self elapsedTrack];
  [elapsedTrack setHidden:isEmpty];

  remainingTrack = [(MediaControlsTimeControl *)self remainingTrack];
  [remainingTrack setHidden:v21];

  if ([(MediaControlsTimeControl *)self isEmpty])
  {
    v15 = 15;
  }

  else
  {
    v15 = 10;
  }

  remainingTrack2 = [(MediaControlsTimeControl *)self remainingTrack];
  layer = [remainingTrack2 layer];
  [layer setMaskedCorners:v15];

  v18 = 0.0;
  if (!isEmpty)
  {
    if ([(MediaControlsTimeControl *)self isEnabled])
    {
      v18 = 1.0;
    }

    else
    {
      v18 = 0.0;
    }
  }

  knobView = [(MediaControlsTimeControl *)self knobView];
  [knobView setAlpha:v18];

  knobView2 = [(MediaControlsTimeControl *)self knobView];
  [knobView2 setHidden:isEmpty];
}

- (void)setTransitioning:(BOOL)transitioning
{
  if (self->_transitioning != transitioning)
  {
    self->_transitioning = transitioning;
  }
}

- (void)setResponse:(id)response
{
  responseCopy = response;
  if (self->_response != responseCopy)
  {
    v13 = responseCopy;
    objc_storeStrong(&self->_response, response);
    tracklist = [(MPCPlayerResponse *)v13 tracklist];
    playingItemIndexPath = [tracklist playingItemIndexPath];

    if (playingItemIndexPath)
    {
      tracklist2 = [(MPCPlayerResponse *)v13 tracklist];
      items = [tracklist2 items];
      v10 = [items itemAtIndexPath:playingItemIndexPath];

      [(MediaControlsTimeControl *)self setEmpty:0];
      [(MediaControlsTimeControl *)self setResponseItem:v10];
    }

    else
    {
      [(MediaControlsTimeControl *)self setEmpty:1];
      v10 = 0;
    }

    [(MediaControlsTimeControl *)self _updateDisplayLinkPause];
    [(MediaControlsTimeControl *)self _updateStyle];
    seekCommand = [v10 seekCommand];
    v12 = [seekCommand changePositionToElapsedInterval:0.0];

    [(MediaControlsTimeControl *)self setEnabled:v12 != 0];
    responseCopy = v13;
  }
}

- (void)setResponseItem:(id)item
{
  itemCopy = item;
  objc_storeStrong(&self->_responseItem, item);
  if (itemCopy)
  {
    [itemCopy duration];
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
  }

  v6[0] = v8;
  v6[1] = v9;
  v6[2] = v10;
  v7 = v11;
  [(MediaControlsTimeControl *)self setDurationSnapshot:v6];
}

- (void)setEmpty:(BOOL)empty
{
  if (self->_empty != empty)
  {
    v9 = v4;
    v10 = v3;
    emptyCopy = empty;
    self->_empty = empty;
    if (empty)
    {
      [(MediaControlsTimeControl *)self setSliderValue:0.0];
    }

    [(MediaControlsTimeControl *)self setEnabled:emptyCopy, v9, v10, v5];
    [(MediaControlsTimeControl *)self _updateDisplayLinkPause];
    [(MediaControlsTimeControl *)self _updateStyle];

    [(MediaControlsTimeControl *)self setNeedsLayout];
  }
}

- (void)_updateTimeControl
{
  [(MediaControlsTimeControl *)self durationSnapshot];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v4 = v14 + (v3 - v12) * v15;
  if (v4 >= v13)
  {
    v4 = v13;
  }

  self->_currentTimeInTrack = fmax(v4, 0.0);
  [(MediaControlsTimeControl *)self _updateSliderPosition];
  v5 = self->_currentTimeInTrack - self->_lastRecordedTime;
  if (v5 >= 0.0)
  {
    v6 = self->_currentTimeInTrack - self->_lastRecordedTime;
  }

  else
  {
    v6 = -v5;
  }

  [(MediaControlsTimeControl *)self durationSnapshot];
  v7 = v11;
  if (v11 < 0.0)
  {
    v7 = -v11;
  }

  v8 = v7;
  if (v8 < 1.0)
  {
    v8 = 1.0;
  }

  if (v6 >= 1.0 / v8)
  {
    currentTimeInTrack = self->_currentTimeInTrack;
    [(MediaControlsTimeControl *)self durationSnapshot];
    [(MediaControlsTimeControl *)self _updateLabels:currentTimeInTrack withRemainingDuration:v10 - self->_currentTimeInTrack];
    self->_lastRecordedTime = self->_currentTimeInTrack;
  }
}

- (void)_updateDisplayLinkPause
{
  v21 = *MEMORY[0x1E69E9840];
  isEmpty = [(MediaControlsTimeControl *)self isCurrentlyTracking]|| ([(MediaControlsTimeControl *)self durationSnapshot], *&v3 = v12, v12 == 0.0) || ([(MediaControlsTimeControl *)self durationSnapshot], (v11 & 1) != 0) || [(MediaControlsTimeControl *)self isEmpty];
  if ([(MediaControlsTimeControl *)self style]== 3 && self->_debugPreviousDisplayLinkPaused != isEmpty)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = isEmpty;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "MediaControlsCoverSheet _updateDisplayLinkPaused paused: %{BOOL}u", buf, 8u);
    }

    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      isCurrentlyTracking = [(MediaControlsTimeControl *)self isCurrentlyTracking];
      [(MediaControlsTimeControl *)self durationSnapshot];
      [(MediaControlsTimeControl *)self durationSnapshot];
      isEmpty2 = [(MediaControlsTimeControl *)self isEmpty];
      *buf = 67109888;
      v14 = isCurrentlyTracking;
      v15 = 2048;
      v16 = v10;
      v17 = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = isEmpty2;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "MediaControlsCoverSheet _updateDisplayLinkPaused self.isCurrentlyTracking: %{BOOL}u self.durationSnapshot.rate: %0.2f self.durationSnapshot.isLiveContent: %{BOOL}u self.isEmpty: %{BOOL}u", buf, 0x1Eu);
    }

    self->_debugPreviousDisplayLinkPaused = isEmpty;
  }

  [(CADisplayLink *)self->_displayLink setPaused:isEmpty];
}

- (void)setTimeControlOnScreen:(BOOL)screen
{
  if (self->_timeControlOnScreen != screen)
  {
    self->_timeControlOnScreen = screen;
    if (screen)
    {
      [(MediaControlsTimeControl *)self createDisplayLinkIfNeeded];
    }

    else
    {
      [(MediaControlsTimeControl *)self invalidateDisplayLinkIfNeeded];
    }
  }
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  [touch locationInView:self];
  v6 = v5;
  v8 = v7;
  knobView = [(MediaControlsTimeControl *)self knobView];
  [knobView frame];
  v23 = CGRectInset(v22, -30.0, -30.0);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;

  v14 = x;
  v15 = y;
  v16 = width;
  v17 = height;
  v18 = v6;
  v19 = v8;

  return CGRectContainsPoint(*&v14, *&v18);
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  objc_opt_class();
  v8 = 1;
  if ((objc_opt_isKindOfClass() & 1) != 0 && [beginCopy minimumNumberOfTouches] <= 1)
  {
    view = [beginCopy view];

    if (view != self)
    {
      [beginCopy translationInView:self];
      if (fabs(v6) > fabs(v7))
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

- (void)createDisplayLinkIfNeeded
{
  if (!self->_displayLink)
  {
    v3 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel__displayLinkTick_];
    displayLink = self->_displayLink;
    self->_displayLink = v3;

    v5 = self->_displayLink;
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

    [(CADisplayLink *)self->_displayLink setPreferredFramesPerSecond:30];

    [(MediaControlsTimeControl *)self _updateDisplayLinkPause];
  }
}

- (void)invalidateDisplayLinkIfNeeded
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)displayLink removeFromRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

    [(CADisplayLink *)self->_displayLink invalidate];
    v5 = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (void)updateBackgroundMask
{
  v34[5] = *MEMORY[0x1E69E9840];
  liveBackgroundMask = [(MediaControlsTimeControl *)self liveBackgroundMask];
  liveBackground = [(MediaControlsTimeControl *)self liveBackground];
  layer = [liveBackground layer];
  [layer setMask:liveBackgroundMask];

  liveBackground2 = [(MediaControlsTimeControl *)self liveBackground];
  [liveBackground2 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  liveBackgroundMask2 = [(MediaControlsTimeControl *)self liveBackgroundMask];
  [liveBackgroundMask2 setFrame:{v8, v10, v12, v14}];

  liveBackground3 = [(MediaControlsTimeControl *)self liveBackground];
  [liveBackground3 frame];
  v17 = 20.0 / CGRectGetWidth(v35);

  liveLabel = [(MediaControlsTimeControl *)self liveLabel];
  [liveLabel frame];
  MinX = CGRectGetMinX(v36);
  liveBackground4 = [(MediaControlsTimeControl *)self liveBackground];
  [liveBackground4 frame];
  v21 = MinX / CGRectGetWidth(v37);

  liveLabel2 = [(MediaControlsTimeControl *)self liveLabel];
  [liveLabel2 frame];
  MaxX = CGRectGetMaxX(v38);
  liveBackground5 = [(MediaControlsTimeControl *)self liveBackground];
  [liveBackground5 frame];
  v25 = MaxX / CGRectGetWidth(v39);

  v26 = [MEMORY[0x1E696AD98] numberWithDouble:{v21 - v17, &unk_1F148B118}];
  v34[1] = v26;
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
  v34[2] = v27;
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
  v34[3] = v28;
  v29 = [MEMORY[0x1E696AD98] numberWithDouble:v17 + v25];
  v34[4] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:5];
  liveBackgroundMask3 = [(MediaControlsTimeControl *)self liveBackgroundMask];
  [liveBackgroundMask3 setLocations:v30];

  liveBackgroundMask4 = [(MediaControlsTimeControl *)self liveBackgroundMask];
  [liveBackgroundMask4 setStartPoint:{0.0, 0.0}];

  liveBackgroundMask5 = [(MediaControlsTimeControl *)self liveBackgroundMask];
  [liveBackgroundMask5 setEndPoint:{1.0, 0.0}];
}

- (void)providedStylesDidChangeForProvider:(id)provider
{
  v7 = [provider _visualStylingForStyle:0];
  color = [v7 color];
  v5 = [color colorWithAlphaComponent:1.0];
  knobView = [(MediaControlsTimeControl *)self knobView];
  [knobView setBackgroundColor:v5];
}

- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshot
{
  v3 = *&self[12].var1;
  *&retstr->var0 = *&self[11].var7;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self[12].var3;
  *&retstr->var7 = *&self[12].var5;
  return self;
}

@end