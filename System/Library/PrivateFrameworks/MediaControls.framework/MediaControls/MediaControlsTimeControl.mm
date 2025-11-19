@interface MediaControlsTimeControl
- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshot;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)sizeThatFits:(CGSize)result;
- (MediaControlsTimeControl)initWithFrame:(CGRect)a3;
- (void)_updateDisplayLinkPause;
- (void)_updateLabels:(double)a3 withRemainingDuration:(double)a4;
- (void)_updateLabels:(id *)a3 withTargetTimestamp:(double)a4;
- (void)_updateSliderPosition;
- (void)_updateStyle;
- (void)_updateTimeControl;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)createDisplayLinkIfNeeded;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)invalidateDisplayLinkIfNeeded;
- (void)layoutSubviews;
- (void)providedStylesDidChangeForProvider:(id)a3;
- (void)setDurationSnapshot:(id *)a3;
- (void)setEmpty:(BOOL)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setResponse:(id)a3;
- (void)setResponseItem:(id)a3;
- (void)setSliderValue:(double)a3;
- (void)setStyle:(int64_t)a3;
- (void)setTimeControlOnScreen:(BOOL)a3;
- (void)setTransitioning:(BOOL)a3;
- (void)setVisualStylingProvider:(id)a3;
- (void)tintColorDidChange;
- (void)updateBackgroundMask;
- (void)updateLabelAvoidance;
- (void)updateSliderConstraint;
- (void)viewDidMoveToSuperview;
@end

@implementation MediaControlsTimeControl

- (MediaControlsTimeControl)initWithFrame:(CGRect)a3
{
  v180[2] = *MEMORY[0x1E69E9840];
  v176.receiver = self;
  v176.super_class = MediaControlsTimeControl;
  v3 = [(MediaControlsTimeControl *)&v176 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v16 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    v17 = [v16 localizedStringForKey:@"SCRUBBER_LIVE" value:&stru_1F1445548 table:@"MediaControls"];
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
    v28 = [(MediaControlsTimeControl *)v3 elapsedTrack];
    [(MediaControlsTimeControl *)v3 addSubview:v28];

    v29 = [(MediaControlsTimeControl *)v3 remainingTrack];
    [(MediaControlsTimeControl *)v3 addSubview:v29];

    v30 = [(MediaControlsTimeControl *)v3 knobView];
    [(MediaControlsTimeControl *)v3 addSubview:v30];

    v31 = [(MediaControlsTimeControl *)v3 elapsedTimeLabel];
    [(MediaControlsTimeControl *)v3 addSubview:v31];

    v32 = [(MediaControlsTimeControl *)v3 remainingTimeLabel];
    [(MediaControlsTimeControl *)v3 addSubview:v32];

    v33 = [(MediaControlsTimeControl *)v3 liveLabel];
    [(MediaControlsTimeControl *)v3 addSubview:v33];

    v34 = [(MediaControlsTimeControl *)v3 liveBackground];
    [(MediaControlsTimeControl *)v3 addSubview:v34];

    v35 = [(MediaControlsTimeControl *)v3 knobView];
    v36 = [v35 widthAnchor];
    v37 = [v36 constraintEqualToConstant:7.0];

    v175 = v37;
    LODWORD(v38) = 1148829696;
    [v37 setPriority:v38];
    v180[0] = v37;
    v39 = [(MediaControlsTimeControl *)v3 knobView];
    v40 = [v39 heightAnchor];
    v41 = [v40 constraintEqualToConstant:7.0];
    v180[1] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v180 count:2];
    defaultConstraints = v3->_defaultConstraints;
    v3->_defaultConstraints = v42;

    v44 = [(MediaControlsTimeControl *)v3 knobView];
    v45 = [v44 widthAnchor];
    v46 = [v45 constraintEqualToConstant:28.0];

    v174 = v46;
    LODWORD(v47) = 1148829696;
    [v46 setPriority:v47];
    v179[0] = v46;
    v48 = [(MediaControlsTimeControl *)v3 knobView];
    v49 = [v48 heightAnchor];
    v50 = [v49 constraintEqualToConstant:28.0];
    v179[1] = v50;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v179 count:2];
    trackingConstraints = v3->_trackingConstraints;
    v3->_trackingConstraints = v51;

    v53 = [(MediaControlsTimeControl *)v3 knobView];
    v54 = [v53 centerXAnchor];
    v55 = [(MediaControlsTimeControl *)v3 leadingAnchor];
    v56 = [v54 constraintEqualToAnchor:v55];
    knobViewXConstraint = v3->_knobViewXConstraint;
    v3->_knobViewXConstraint = v56;

    LODWORD(v58) = 1144750080;
    [(NSLayoutConstraint *)v3->_knobViewXConstraint setPriority:v58];
    v59 = [(MediaControlsTimeControl *)v3 liveLabel];
    v60 = [v59 leadingAnchor];
    v61 = [(MediaControlsTimeControl *)v3 leadingAnchor];
    v62 = [v60 constraintGreaterThanOrEqualToAnchor:v61 constant:20.0];

    v173 = v62;
    LODWORD(v63) = 1148829696;
    [v62 setPriority:v63];
    v135 = MEMORY[0x1E696ACD8];
    v172 = [(MediaControlsTimeControl *)v3 liveLabel];
    v171 = [v172 centerYAnchor];
    v170 = [(MediaControlsTimeControl *)v3 centerYAnchor];
    v169 = [v171 constraintEqualToAnchor:v170];
    v178[0] = v169;
    v168 = [(MediaControlsTimeControl *)v3 liveLabel];
    v167 = [v168 centerXAnchor];
    v166 = [(MediaControlsTimeControl *)v3 centerXAnchor];
    v165 = [v167 constraintEqualToAnchor:v166];
    v178[1] = v165;
    v178[2] = v62;
    v164 = [(MediaControlsTimeControl *)v3 liveLabel];
    v163 = [v164 trailingAnchor];
    v162 = [(MediaControlsTimeControl *)v3 trailingAnchor];
    v161 = [v163 constraintLessThanOrEqualToAnchor:v162 constant:20.0];
    v178[3] = v161;
    v160 = [(MediaControlsTimeControl *)v3 liveBackground];
    v159 = [v160 centerYAnchor];
    v158 = [(MediaControlsTimeControl *)v3 centerYAnchor];
    v157 = [v159 constraintEqualToAnchor:v158];
    v178[4] = v157;
    v156 = [(MediaControlsTimeControl *)v3 liveBackground];
    v155 = [v156 leadingAnchor];
    v154 = [(MediaControlsTimeControl *)v3 leadingAnchor];
    v153 = [v155 constraintEqualToAnchor:v154];
    v178[5] = v153;
    v152 = [(MediaControlsTimeControl *)v3 liveBackground];
    v151 = [v152 trailingAnchor];
    v150 = [(MediaControlsTimeControl *)v3 trailingAnchor];
    v149 = [v151 constraintEqualToAnchor:v150];
    v178[6] = v149;
    v148 = [(MediaControlsTimeControl *)v3 liveBackground];
    v147 = [v148 heightAnchor];
    v146 = [v147 constraintEqualToConstant:3.0];
    v178[7] = v146;
    v145 = [(MediaControlsTimeControl *)v3 elapsedTrack];
    v144 = [v145 leadingAnchor];
    v143 = [(MediaControlsTimeControl *)v3 leadingAnchor];
    v142 = [v144 constraintEqualToAnchor:v143];
    v178[8] = v142;
    v141 = [(MediaControlsTimeControl *)v3 elapsedTrack];
    v139 = [v141 trailingAnchor];
    v140 = [(MediaControlsTimeControl *)v3 knobView];
    v138 = [v140 centerXAnchor];
    v137 = [v139 constraintEqualToAnchor:v138];
    v178[9] = v137;
    v136 = [(MediaControlsTimeControl *)v3 elapsedTrack];
    v134 = [v136 centerYAnchor];
    v133 = [(MediaControlsTimeControl *)v3 centerYAnchor];
    v132 = [v134 constraintEqualToAnchor:v133];
    v178[10] = v132;
    v131 = [(MediaControlsTimeControl *)v3 elapsedTrack];
    v130 = [v131 heightAnchor];
    v129 = [v130 constraintEqualToConstant:3.0];
    v178[11] = v129;
    v128 = [(MediaControlsTimeControl *)v3 remainingTrack];
    v126 = [v128 leadingAnchor];
    v127 = [(MediaControlsTimeControl *)v3 knobView];
    v125 = [v127 centerXAnchor];
    v124 = [v126 constraintEqualToAnchor:v125];
    v178[12] = v124;
    v123 = [(MediaControlsTimeControl *)v3 remainingTrack];
    v122 = [v123 trailingAnchor];
    v121 = [(MediaControlsTimeControl *)v3 trailingAnchor];
    v120 = [v122 constraintEqualToAnchor:v121];
    v178[13] = v120;
    v119 = [(MediaControlsTimeControl *)v3 remainingTrack];
    v118 = [v119 centerYAnchor];
    v117 = [(MediaControlsTimeControl *)v3 centerYAnchor];
    v116 = [v118 constraintEqualToAnchor:v117];
    v178[14] = v116;
    v115 = [(MediaControlsTimeControl *)v3 remainingTrack];
    v114 = [v115 heightAnchor];
    v113 = [v114 constraintEqualToConstant:3.0];
    v178[15] = v113;
    v178[16] = v3->_knobViewXConstraint;
    v112 = [(MediaControlsTimeControl *)v3 knobView];
    v111 = [v112 centerYAnchor];
    v110 = [(MediaControlsTimeControl *)v3 centerYAnchor];
    v109 = [v111 constraintEqualToAnchor:v110];
    v178[17] = v109;
    v108 = [(MediaControlsTimeControl *)v3 knobView];
    v106 = [v108 leadingAnchor];
    v107 = [(MediaControlsTimeControl *)v3 elapsedTrack];
    v105 = [v107 leadingAnchor];
    v104 = [v106 constraintGreaterThanOrEqualToAnchor:v105];
    v178[18] = v104;
    v103 = [(MediaControlsTimeControl *)v3 knobView];
    v101 = [v103 trailingAnchor];
    v102 = [(MediaControlsTimeControl *)v3 remainingTrack];
    v100 = [v102 trailingAnchor];
    v99 = [v101 constraintLessThanOrEqualToAnchor:v100];
    v178[19] = v99;
    v98 = [(MediaControlsTimeControl *)v3 elapsedTimeLabel];
    v97 = [v98 leadingAnchor];
    v96 = [(MediaControlsTimeControl *)v3 leadingAnchor];
    v95 = [v97 constraintEqualToAnchor:v96];
    v178[20] = v95;
    v94 = [(MediaControlsTimeControl *)v3 elapsedTimeLabel];
    v93 = [v94 bottomAnchor];
    v92 = [(MediaControlsTimeControl *)v3 bottomAnchor];
    v91 = [v93 constraintEqualToAnchor:v92 constant:-3.5];
    v178[21] = v91;
    v90 = [(MediaControlsTimeControl *)v3 remainingTimeLabel];
    v64 = [v90 trailingAnchor];
    v65 = [(MediaControlsTimeControl *)v3 trailingAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];
    v178[22] = v66;
    v67 = [(MediaControlsTimeControl *)v3 remainingTimeLabel];
    v68 = [v67 bottomAnchor];
    v69 = [(MediaControlsTimeControl *)v3 bottomAnchor];
    v70 = [v68 constraintEqualToAnchor:v69 constant:-3.5];
    v178[23] = v70;
    v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v178 count:24];
    v72 = [v71 arrayByAddingObjectsFromArray:v3->_defaultConstraints];
    [v135 activateConstraints:v72];

    v73 = [MEMORY[0x1E69DB878] monospacedDigitSystemFontOfSize:13.0 weight:*MEMORY[0x1E69DB970]];
    v74 = [(MediaControlsTimeControl *)v3 liveLabel];
    [v74 setFont:v73];

    v75 = [(MediaControlsTimeControl *)v3 elapsedTimeLabel];
    [v75 setFont:v73];

    v76 = [(MediaControlsTimeControl *)v3 remainingTimeLabel];
    [v76 setFont:v73];

    v77 = [(MediaControlsTimeControl *)v3 elapsedTrack];
    v78 = [v77 layer];
    [v78 setMaskedCorners:5];

    v79 = [(MediaControlsTimeControl *)v3 remainingTrack];
    v80 = [v79 layer];
    [v80 setMaskedCorners:10];

    v81 = [MEMORY[0x1E69DC888] blackColor];
    v177[0] = [v81 CGColor];
    v82 = [MEMORY[0x1E69DC888] blackColor];
    v177[1] = [v82 CGColor];
    v83 = [MEMORY[0x1E69DC888] clearColor];
    v177[2] = [v83 CGColor];
    v84 = [MEMORY[0x1E69DC888] clearColor];
    v177[3] = [v84 CGColor];
    v85 = [MEMORY[0x1E69DC888] blackColor];
    v177[4] = [v85 CGColor];
    v86 = [MEMORY[0x1E69DC888] blackColor];
    v177[5] = [v86 CGColor];
    v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:v177 count:6];
    v88 = [(MediaControlsTimeControl *)v3 liveBackgroundMask];
    [v88 setColors:v87];

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
  v3 = [(MediaControlsTimeControl *)self knobView];
  [v3 bounds];
  v5 = v4 * 0.5;
  v6 = [(MediaControlsTimeControl *)self knobView];
  v7 = [v6 layer];
  [v7 setCornerRadius:v5];

  v8 = [(MediaControlsTimeControl *)self elapsedTrack];
  [v8 bounds];
  v10 = v9 * 0.5;
  v11 = [(MediaControlsTimeControl *)self elapsedTrack];
  v12 = [v11 layer];
  [v12 setCornerRadius:v10];

  v13 = [(MediaControlsTimeControl *)self remainingTrack];
  [v13 bounds];
  v15 = v14 * 0.5;
  v16 = [(MediaControlsTimeControl *)self remainingTrack];
  v17 = [v16 layer];
  [v17 setCornerRadius:v15];

  v18 = [(MediaControlsTimeControl *)self liveBackground];
  [v18 bounds];
  v20 = v19 * 0.5;
  v21 = [(MediaControlsTimeControl *)self liveBackground];
  v22 = [v21 layer];
  [v22 setCornerRadius:v20];

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
    v3 = [(MediaControlsTimeControl *)self tintColor];
    v4 = [(MediaControlsTimeControl *)self knobView];
    [v4 setBackgroundColor:v3];

    v5 = [(MediaControlsTimeControl *)self tintColor];
    v6 = [(MediaControlsTimeControl *)self elapsedTrack];
    [v6 setBackgroundColor:v5];

    v7 = [(MediaControlsTimeControl *)self tintColor];
    v8 = [(MediaControlsTimeControl *)self liveLabel];
    [v8 setTextColor:v7];

    v9 = [(MediaControlsTimeControl *)self tintColor];
    v10 = [(MediaControlsTimeControl *)self traitCollection];
    v11 = [v9 secondaryColorForInterfaceStyle:{objc_msgSend(v10, "userInterfaceStyle")}];

    v12 = [(MediaControlsTimeControl *)self elapsedTimeLabel];
    [v12 setTextColor:v11];

    v13 = [(MediaControlsTimeControl *)self remainingTimeLabel];
    [v13 setTextColor:v11];

    v14 = [(MediaControlsTimeControl *)self tintColor];
    v15 = [(MediaControlsTimeControl *)self traitCollection];
    v16 = [v14 tertiaryColorForInterfaceStyle:{objc_msgSend(v15, "userInterfaceStyle")}];

    v17 = [(MediaControlsTimeControl *)self remainingTrack];
    [v17 setBackgroundColor:v16];

    v18 = [(MediaControlsTimeControl *)self liveBackground];
    [v18 setBackgroundColor:v16];
  }
}

- (void)setVisualStylingProvider:(id)a3
{
  v5 = a3;
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider != v5)
  {
    v31 = v5;
    [(MTVisualStylingProvider *)visualStylingProvider _removeObserver:self];
    v7 = self->_visualStylingProvider;
    v8 = [(MediaControlsTimeControl *)self elapsedTrack];
    [(MTVisualStylingProvider *)v7 stopAutomaticallyUpdatingView:v8];

    v9 = self->_visualStylingProvider;
    v10 = [(MediaControlsTimeControl *)self remainingTrack];
    [(MTVisualStylingProvider *)v9 stopAutomaticallyUpdatingView:v10];

    v11 = self->_visualStylingProvider;
    v12 = [(MediaControlsTimeControl *)self elapsedTimeLabel];
    [(MTVisualStylingProvider *)v11 stopAutomaticallyUpdatingView:v12];

    v13 = self->_visualStylingProvider;
    v14 = [(MediaControlsTimeControl *)self remainingTimeLabel];
    [(MTVisualStylingProvider *)v13 stopAutomaticallyUpdatingView:v14];

    v15 = self->_visualStylingProvider;
    v16 = [(MediaControlsTimeControl *)self liveLabel];
    [(MTVisualStylingProvider *)v15 stopAutomaticallyUpdatingView:v16];

    v17 = self->_visualStylingProvider;
    v18 = [(MediaControlsTimeControl *)self liveBackground];
    [(MTVisualStylingProvider *)v17 stopAutomaticallyUpdatingView:v18];

    objc_storeStrong(&self->_visualStylingProvider, a3);
    [(MTVisualStylingProvider *)self->_visualStylingProvider _addObserver:self];
    v19 = self->_visualStylingProvider;
    v20 = [(MediaControlsTimeControl *)self elapsedTrack];
    [(MTVisualStylingProvider *)v19 automaticallyUpdateView:v20 withStyle:0];

    v21 = self->_visualStylingProvider;
    v22 = [(MediaControlsTimeControl *)self remainingTrack];
    [(MTVisualStylingProvider *)v21 automaticallyUpdateView:v22 withStyle:1];

    v23 = self->_visualStylingProvider;
    v24 = [(MediaControlsTimeControl *)self elapsedTimeLabel];
    [(MTVisualStylingProvider *)v23 automaticallyUpdateView:v24 withStyle:1];

    v25 = self->_visualStylingProvider;
    v26 = [(MediaControlsTimeControl *)self remainingTimeLabel];
    [(MTVisualStylingProvider *)v25 automaticallyUpdateView:v26 withStyle:1];

    v27 = self->_visualStylingProvider;
    v28 = [(MediaControlsTimeControl *)self liveLabel];
    [(MTVisualStylingProvider *)v27 automaticallyUpdateView:v28 withStyle:0];

    v29 = self->_visualStylingProvider;
    v30 = [(MediaControlsTimeControl *)self liveBackground];
    [(MTVisualStylingProvider *)v29 automaticallyUpdateView:v30 withStyle:1];

    visualStylingProvider = [(MediaControlsTimeControl *)self providedStylesDidChangeForProvider:self->_visualStylingProvider];
    v5 = v31;
  }

  MEMORY[0x1EEE66BB8](visualStylingProvider, v5);
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 54.0;
  result.height = v3;
  return result;
}

- (void)setDurationSnapshot:(id *)a3
{
  p_durationSnapshot = &self->_durationSnapshot;
  v6 = *&a3->var2;
  v5 = *&a3->var4;
  v7 = *&a3->var0;
  *&self->_durationSnapshot.isLiveContent = *&a3->var7;
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

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  [a3 locationInView:{self, a4}];
  v6 = v5;
  v8 = v7;
  v9 = [(MediaControlsTimeControl *)self knobView];
  [v9 frame];
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

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  self->_currentlyTracking = 0;
  [(MediaControlsTimeControl *)self _updateDisplayLinkPause:a3];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __59__MediaControlsTimeControl_endTrackingWithTouch_withEvent___block_invoke;
  v25[3] = &unk_1E7663898;
  v25[4] = self;
  [MEMORY[0x1E69DD250] _animateUsingSpringWithDuration:0 delay:v25 options:0 mass:1.0 stiffness:0.0 damping:1.0 initialVelocity:300.0 animations:24.0 completion:0.0];
  v5 = [(MediaControlsTimeControl *)self response];
  v6 = [v5 tracklist];
  v7 = [v6 playingItemIndexPath];

  if (v7)
  {
    v8 = [(MediaControlsTimeControl *)self response];
    v9 = [v8 tracklist];
    v10 = [v9 items];
    v11 = [v10 itemAtIndexPath:v7];
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

  v14 = [v11 seekCommand];
  v15 = [v14 changePositionToElapsedInterval:v13];

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

- (void)cancelTrackingWithEvent:(id)a3
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

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  [a3 locationInView:{self, a4}];
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

- (void)setSliderValue:(double)a3
{
  if (self->_sliderValue != a3)
  {
    self->_sliderValue = a3;
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

- (void)_updateLabels:(id *)a3 withTargetTimestamp:(double)a4
{
  var3 = a3->var3;
  v5 = a3->var4 + (a4 - a3->var0) * a3->var5;
  if (v5 >= var3)
  {
    v5 = a3->var3;
  }

  v6 = fmax(v5, 0.0);
  [(MediaControlsTimeControl *)self _updateLabels:v6 withRemainingDuration:var3 - v6];
}

- (void)_updateLabels:(double)a3 withRemainingDuration:(double)a4
{
  if (a3 > 0.0 || a4 > 0.0)
  {
    elapsedTimeFormatter = self->_elapsedTimeFormatter;
    if (a3 >= 0.0)
    {
      v8 = a3;
    }

    else
    {
      v8 = 0.0;
    }

    [(MediaControlsTimeControl *)self durationSnapshot];
    v9 = v18;
    if (v8 < v18)
    {
      v9 = v8;
    }

    v10 = [(AVTimeFormatter *)elapsedTimeFormatter stringFromSeconds:v9];
    v11 = [(MediaControlsTimeControl *)self elapsedTimeLabel];
    [v11 setText:v10];

    remainingTimeFormatter = self->_remainingTimeFormatter;
    [(MediaControlsTimeControl *)self durationSnapshot];
    v13 = v17;
    if (v17 > a4)
    {
      v13 = a4;
    }

    if (v13 < 0.0)
    {
      v13 = 0.0;
    }

    v14 = [(AVTimeFormatter *)remainingTimeFormatter stringFromSeconds:v13];
    v15 = [(MediaControlsTimeControl *)self remainingTimeLabel];
    [v15 setText:v14];
  }

  else
  {
    v6 = [(MediaControlsTimeControl *)self elapsedTimeLabel];
    [v6 setText:0];

    v16 = [(MediaControlsTimeControl *)self remainingTimeLabel];
    [v16 setText:0];
  }
}

- (void)updateLabelAvoidance
{
  v3 = [(MediaControlsTimeControl *)self knobView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(MediaControlsTimeControl *)self knobView];
  [(MediaControlsTimeControl *)self convertRect:v12 fromView:v5, v7, v9, v11];
  v55 = v14;
  v56 = v13;
  v53 = v16;
  v54 = v15;

  v17 = [(MediaControlsTimeControl *)self elapsedTimeLabel];
  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [(MediaControlsTimeControl *)self elapsedTimeLabel];
  [(MediaControlsTimeControl *)self convertRect:v26 fromView:v19, v21, v23, v25];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = [(MediaControlsTimeControl *)self remainingTimeLabel];
  [v35 bounds];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = [(MediaControlsTimeControl *)self remainingTimeLabel];
  [(MediaControlsTimeControl *)self convertRect:v44 fromView:v37, v39, v41, v43];
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

- (void)setEnabled:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MediaControlsTimeControl;
  [(MediaControlsTimeControl *)&v4 setEnabled:a3];
  [(MediaControlsTimeControl *)self _updateStyle];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(MediaControlsTimeControl *)self knobView];
  [v8 frame];
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
    v13 = [(MediaControlsTimeControl *)&v15 pointInside:v7 withEvent:x, y];
  }

  return v13;
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
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
    v4 = 1;
  }

  else
  {
    v4 = [(MediaControlsTimeControl *)self isEmpty];
  }

  v5 = [(MediaControlsTimeControl *)self responseItem];
  v6 = [v5 localizedDurationString];
  v7 = v6;
  if (!v6)
  {
    v2 = [MEMORY[0x1E696AAE8] mediaControlsBundle];
    v7 = [v2 localizedStringForKey:@"SCRUBBER_LIVE" value:&stru_1F1445548 table:@"MediaControls"];
  }

  v8 = [(MediaControlsTimeControl *)self liveLabel];
  [v8 setText:v7];

  if (!v6)
  {
  }

  v9 = [(MediaControlsTimeControl *)self liveLabel];
  [v9 setHidden:v21 ^ 1u];

  v10 = [(MediaControlsTimeControl *)self liveBackground];
  [v10 setHidden:v21 ^ 1u];

  v11 = [(MediaControlsTimeControl *)self elapsedTimeLabel];
  [v11 setHidden:v4];

  v12 = [(MediaControlsTimeControl *)self remainingTimeLabel];
  [v12 setHidden:v4];

  v13 = [(MediaControlsTimeControl *)self elapsedTrack];
  [v13 setHidden:v4];

  v14 = [(MediaControlsTimeControl *)self remainingTrack];
  [v14 setHidden:v21];

  if ([(MediaControlsTimeControl *)self isEmpty])
  {
    v15 = 15;
  }

  else
  {
    v15 = 10;
  }

  v16 = [(MediaControlsTimeControl *)self remainingTrack];
  v17 = [v16 layer];
  [v17 setMaskedCorners:v15];

  v18 = 0.0;
  if (!v4)
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

  v19 = [(MediaControlsTimeControl *)self knobView];
  [v19 setAlpha:v18];

  v20 = [(MediaControlsTimeControl *)self knobView];
  [v20 setHidden:v4];
}

- (void)setTransitioning:(BOOL)a3
{
  if (self->_transitioning != a3)
  {
    self->_transitioning = a3;
  }
}

- (void)setResponse:(id)a3
{
  v5 = a3;
  if (self->_response != v5)
  {
    v13 = v5;
    objc_storeStrong(&self->_response, a3);
    v6 = [(MPCPlayerResponse *)v13 tracklist];
    v7 = [v6 playingItemIndexPath];

    if (v7)
    {
      v8 = [(MPCPlayerResponse *)v13 tracklist];
      v9 = [v8 items];
      v10 = [v9 itemAtIndexPath:v7];

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
    v11 = [v10 seekCommand];
    v12 = [v11 changePositionToElapsedInterval:0.0];

    [(MediaControlsTimeControl *)self setEnabled:v12 != 0];
    v5 = v13;
  }
}

- (void)setResponseItem:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_responseItem, a3);
  if (v5)
  {
    [v5 duration];
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

- (void)setEmpty:(BOOL)a3
{
  if (self->_empty != a3)
  {
    v9 = v4;
    v10 = v3;
    v7 = a3;
    self->_empty = a3;
    if (a3)
    {
      [(MediaControlsTimeControl *)self setSliderValue:0.0];
    }

    [(MediaControlsTimeControl *)self setEnabled:v7, v9, v10, v5];
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
  v4 = [(MediaControlsTimeControl *)self isCurrentlyTracking]|| ([(MediaControlsTimeControl *)self durationSnapshot], *&v3 = v12, v12 == 0.0) || ([(MediaControlsTimeControl *)self durationSnapshot], (v11 & 1) != 0) || [(MediaControlsTimeControl *)self isEmpty];
  if ([(MediaControlsTimeControl *)self style]== 3 && self->_debugPreviousDisplayLinkPaused != v4)
  {
    v5 = _MRLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v4;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "MediaControlsCoverSheet _updateDisplayLinkPaused paused: %{BOOL}u", buf, 8u);
    }

    v6 = _MRLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(MediaControlsTimeControl *)self isCurrentlyTracking];
      [(MediaControlsTimeControl *)self durationSnapshot];
      [(MediaControlsTimeControl *)self durationSnapshot];
      v8 = [(MediaControlsTimeControl *)self isEmpty];
      *buf = 67109888;
      v14 = v7;
      v15 = 2048;
      v16 = v10;
      v17 = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "MediaControlsCoverSheet _updateDisplayLinkPaused self.isCurrentlyTracking: %{BOOL}u self.durationSnapshot.rate: %0.2f self.durationSnapshot.isLiveContent: %{BOOL}u self.isEmpty: %{BOOL}u", buf, 0x1Eu);
    }

    self->_debugPreviousDisplayLinkPaused = v4;
  }

  [(CADisplayLink *)self->_displayLink setPaused:v4];
}

- (void)setTimeControlOnScreen:(BOOL)a3
{
  if (self->_timeControlOnScreen != a3)
  {
    self->_timeControlOnScreen = a3;
    if (a3)
    {
      [(MediaControlsTimeControl *)self createDisplayLinkIfNeeded];
    }

    else
    {
      [(MediaControlsTimeControl *)self invalidateDisplayLinkIfNeeded];
    }
  }
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  [a4 locationInView:self];
  v6 = v5;
  v8 = v7;
  v9 = [(MediaControlsTimeControl *)self knobView];
  [v9 frame];
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v8 = 1;
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 minimumNumberOfTouches] <= 1)
  {
    v5 = [v4 view];

    if (v5 != self)
    {
      [v4 translationInView:self];
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
    v6 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)v5 addToRunLoop:v6 forMode:*MEMORY[0x1E695DA28]];

    [(CADisplayLink *)self->_displayLink setPreferredFramesPerSecond:30];

    [(MediaControlsTimeControl *)self _updateDisplayLinkPause];
  }
}

- (void)invalidateDisplayLinkIfNeeded
{
  displayLink = self->_displayLink;
  if (displayLink)
  {
    v4 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)displayLink removeFromRunLoop:v4 forMode:*MEMORY[0x1E695DA28]];

    [(CADisplayLink *)self->_displayLink invalidate];
    v5 = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (void)updateBackgroundMask
{
  v34[5] = *MEMORY[0x1E69E9840];
  v3 = [(MediaControlsTimeControl *)self liveBackgroundMask];
  v4 = [(MediaControlsTimeControl *)self liveBackground];
  v5 = [v4 layer];
  [v5 setMask:v3];

  v6 = [(MediaControlsTimeControl *)self liveBackground];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(MediaControlsTimeControl *)self liveBackgroundMask];
  [v15 setFrame:{v8, v10, v12, v14}];

  v16 = [(MediaControlsTimeControl *)self liveBackground];
  [v16 frame];
  v17 = 20.0 / CGRectGetWidth(v35);

  v18 = [(MediaControlsTimeControl *)self liveLabel];
  [v18 frame];
  MinX = CGRectGetMinX(v36);
  v20 = [(MediaControlsTimeControl *)self liveBackground];
  [v20 frame];
  v21 = MinX / CGRectGetWidth(v37);

  v22 = [(MediaControlsTimeControl *)self liveLabel];
  [v22 frame];
  MaxX = CGRectGetMaxX(v38);
  v24 = [(MediaControlsTimeControl *)self liveBackground];
  [v24 frame];
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
  v31 = [(MediaControlsTimeControl *)self liveBackgroundMask];
  [v31 setLocations:v30];

  v32 = [(MediaControlsTimeControl *)self liveBackgroundMask];
  [v32 setStartPoint:{0.0, 0.0}];

  v33 = [(MediaControlsTimeControl *)self liveBackgroundMask];
  [v33 setEndPoint:{1.0, 0.0}];
}

- (void)providedStylesDidChangeForProvider:(id)a3
{
  v7 = [a3 _visualStylingForStyle:0];
  v4 = [v7 color];
  v5 = [v4 colorWithAlphaComponent:1.0];
  v6 = [(MediaControlsTimeControl *)self knobView];
  [v6 setBackgroundColor:v5];
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