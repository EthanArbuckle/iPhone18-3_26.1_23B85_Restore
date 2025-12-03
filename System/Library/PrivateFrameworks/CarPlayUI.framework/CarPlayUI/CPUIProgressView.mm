@interface CPUIProgressView
- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshot;
- (CGSize)intrinsicContentSize;
- (CPUIProgressView)initWithFrame:(CGRect)frame progressBarHeight:(double)height labelHeight:(double)labelHeight labelStyle:(unint64_t)style;
- (void)_displayLinkTick:(id)tick;
- (void)_updateCompositingFilter;
- (void)_updateLabelsForElapsedTime:(double)time duration:(double)duration;
- (void)_updateProgressForElapsedTime:(double)time duration:(double)duration;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)pauseDisplayLinkIfNeeded;
- (void)runUntilNextDisplayLinkEvent;
- (void)setDurationSnapshot:(id *)snapshot;
- (void)setShowsProgressLabels:(BOOL)labels;
- (void)setupConstraints;
- (void)updateLocalizedDurationString:(id)string;
@end

@implementation CPUIProgressView

- (CPUIProgressView)initWithFrame:(CGRect)frame progressBarHeight:(double)height labelHeight:(double)labelHeight labelStyle:(unint64_t)style
{
  v33[1] = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = CPUIProgressView;
  v9 = [(CPUIProgressView *)&v32 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v10 = v9;
  if (v9)
  {
    v9->_labelStyle = style;
    v9->_progressBarViewHeight = height;
    v9->_progressLabelHeight = labelHeight;
    v11 = [CPUIProgressBarView alloc];
    v12 = *MEMORY[0x277CBF3A0];
    v13 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v15 = *(MEMORY[0x277CBF3A0] + 24);
    v16 = [(CPUIProgressBarView *)v11 initWithFrame:*MEMORY[0x277CBF3A0], v13, v14, v15];
    progressBarView = v10->_progressBarView;
    v10->_progressBarView = v16;

    [(CPUIProgressBarView *)v10->_progressBarView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CPUIProgressBarView *)v10->_progressBarView setHidden:1];
    [(CPUIProgressView *)v10 addSubview:v10->_progressBarView];
    v18 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v12, v13, v14, v15}];
    liveLabel = v10->_liveLabel;
    v10->_liveLabel = v18;

    [(UILabel *)v10->_liveLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = v10->_liveLabel;
    if (v10->_labelStyle == 1)
    {
      [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    }

    else
    {
      [MEMORY[0x277D74300] systemFontOfSize:12.0];
    }
    v21 = ;
    [(UILabel *)v20 setFont:v21];

    [(UILabel *)v10->_liveLabel setTextAlignment:1];
    v22 = v10->_liveLabel;
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UILabel *)v22 setTextColor:labelColor];

    [(UILabel *)v10->_liveLabel setHidden:1];
    [(UILabel *)v10->_liveLabel setAccessibilityIdentifier:@"CPNowPlayingProgressBarLive"];
    [(CPUIProgressView *)v10 addSubview:v10->_liveLabel];
    v24 = [[_CPUILiveTrackView alloc] initWithFrame:v12, v13, v14, v15];
    liveTrackView = v10->_liveTrackView;
    v10->_liveTrackView = v24;

    [(_CPUILiveTrackView *)v10->_liveTrackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_CPUILiveTrackView *)v10->_liveTrackView setHidden:1];
    [(_CPUILiveTrackView *)v10->_liveTrackView setAccessibilityIdentifier:@"CPNowPlayingProgressBarLiveTrackView"];
    [(CPUIProgressView *)v10 addSubview:v10->_liveTrackView];
    layer = [(CPUIProgressView *)v10 layer];
    [layer setCreatesCompositingGroup:1];

    layer2 = [(CPUIProgressView *)v10 layer];
    [layer2 setAllowsGroupBlending:1];

    [(CPUIProgressView *)v10 setShowsProgressLabels:1];
    v28 = objc_opt_self();
    v33[0] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    v30 = [(CPUIProgressView *)v10 registerForTraitChanges:v29 withAction:sel__updateCompositingFilter];

    [(CPUIProgressView *)v10 _updateCompositingFilter];
  }

  return v10;
}

- (void)_updateCompositingFilter
{
  traitCollection = [(CPUIProgressView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];
  v5 = MEMORY[0x277CDA5D8];
  if (userInterfaceStyle != 1)
  {
    v5 = MEMORY[0x277CDA5E8];
  }

  v6 = *v5;

  v8 = [MEMORY[0x277CD9EA0] filterWithType:v6];

  layer = [(CPUIProgressView *)self layer];
  [layer setCompositingFilter:v8];
}

- (void)setShowsProgressLabels:(BOOL)labels
{
  if (self->_showsProgressLabels != labels)
  {
    v29 = v10;
    v30 = v9;
    v31 = v8;
    v32 = v7;
    v33 = v6;
    v34 = v5;
    v35 = v4;
    v36 = v3;
    self->_showsProgressLabels = labels;
    if (labels)
    {
      labelStyle = self->_labelStyle;
      v15 = [MEMORY[0x277D74300] monospacedDigitSystemFontOfSize:self->_progressLabelHeight weight:*MEMORY[0x277D74418]];
      if (!self->_timeLabel)
      {
        v16 = objc_alloc(MEMORY[0x277D756B8]);
        [(CPUIProgressView *)self bounds];
        v17 = [v16 initWithFrame:?];
        timeLabel = self->_timeLabel;
        self->_timeLabel = v17;

        [(UILabel *)self->_timeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UILabel *)self->_timeLabel setFont:v15];
        v19 = self->_timeLabel;
        if (labelStyle == 1)
        {
          [MEMORY[0x277D75348] secondaryLabelColor];
        }

        else
        {
          [MEMORY[0x277D75348] labelColor];
        }
        v20 = ;
        [(UILabel *)v19 setTextColor:v20, v10, v30, v8, v7, v33, v34, v35, v36, v11];

        [(UILabel *)self->_timeLabel setTextAlignment:1];
        [(UILabel *)self->_timeLabel setAccessibilityIdentifier:@"CPNowPlayingProgressBarTime"];
      }

      if (!self->_timeRemainingLabel)
      {
        v21 = objc_alloc(MEMORY[0x277D756B8]);
        [(CPUIProgressView *)self bounds];
        v22 = [v21 initWithFrame:?];
        timeRemainingLabel = self->_timeRemainingLabel;
        self->_timeRemainingLabel = v22;

        [(UILabel *)self->_timeRemainingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
        [(UILabel *)self->_timeRemainingLabel setFont:v15];
        [(UILabel *)self->_timeRemainingLabel setTextAlignment:1];
        v24 = self->_timeRemainingLabel;
        if (labelStyle == 1)
        {
          [MEMORY[0x277D75348] secondaryLabelColor];
        }

        else
        {
          [MEMORY[0x277D75348] labelColor];
        }
        v25 = ;
        [(UILabel *)v24 setTextColor:v25, v29, v30, v31, v32, v33, v34, v35, v36];

        [(UILabel *)self->_timeRemainingLabel setAccessibilityIdentifier:@"CPNowPlayingProgressBarTimeRemaining"];
      }

      if (_os_feature_enabled_impl())
      {
        v26 = [MEMORY[0x277D75520] metricsForTextStyle:*MEMORY[0x277D76938]];
        v27 = [v26 scaledFontForFont:v15];

        [(UILabel *)self->_timeLabel setFont:v27];
        [(UILabel *)self->_timeLabel setAdjustsFontForContentSizeCategory:1];
        v28 = *MEMORY[0x277D76828];
        [(UILabel *)self->_timeLabel setMaximumContentSizeCategory:*MEMORY[0x277D76828]];
        [(UILabel *)self->_timeRemainingLabel setFont:v27];
        [(UILabel *)self->_timeRemainingLabel setAdjustsFontForContentSizeCategory:1];
        [(UILabel *)self->_timeRemainingLabel setMaximumContentSizeCategory:v28];
        v15 = v27;
      }

      [(CPUIProgressView *)self addSubview:self->_timeLabel, v29, v30, v31, v32, v33, v34, v35, v36];
      [(CPUIProgressView *)self addSubview:self->_timeRemainingLabel];
    }

    else
    {
      [(UILabel *)self->_timeLabel removeFromSuperview];
      [(UILabel *)self->_timeRemainingLabel removeFromSuperview];
    }

    [(CPUIProgressView *)self setupConstraints];
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = *MEMORY[0x277D77260];
  progressBarViewHeight = self->_progressBarViewHeight;
  result.height = progressBarViewHeight;
  result.width = v2;
  return result;
}

- (void)didMoveToWindow
{
  v11.receiver = self;
  v11.super_class = CPUIProgressView;
  [(CPUIProgressView *)&v11 didMoveToWindow];
  window = [(CPUIProgressView *)self window];

  if (window)
  {
    window2 = [(CPUIProgressView *)self window];
    screen = [window2 screen];
    v6 = [screen displayLinkWithTarget:self selector:sel__displayLinkTick_];
    displayLink = self->_displayLink;
    self->_displayLink = v6;

    v8 = self->_displayLink;
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [(CADisplayLink *)v8 addToRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE738]];

    [(CADisplayLink *)self->_displayLink setPreferredFramesPerSecond:15];
  }

  else
  {
    [(CADisplayLink *)self->_displayLink invalidate];
    v10 = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (void)setupConstraints
{
  v83[6] = *MEMORY[0x277D85DE8];
  if (self->_constraints)
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:?];
  }

  v3 = MEMORY[0x277CBEB18];
  heightAnchor = [(CPUIProgressBarView *)self->_progressBarView heightAnchor];
  v5 = [heightAnchor constraintEqualToConstant:self->_progressBarViewHeight];
  v74 = [v3 arrayWithObject:v5];

  leadingAnchor = [(_CPUILiveTrackView *)self->_liveTrackView leadingAnchor];
  leadingAnchor2 = [(CPUIProgressView *)self leadingAnchor];
  v66 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v83[0] = v66;
  trailingAnchor = [(_CPUILiveTrackView *)self->_liveTrackView trailingAnchor];
  trailingAnchor2 = [(CPUIProgressView *)self trailingAnchor];
  v57 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v83[1] = v57;
  centerYAnchor = [(_CPUILiveTrackView *)self->_liveTrackView centerYAnchor];
  centerYAnchor2 = [(CPUIProgressView *)self centerYAnchor];
  v50 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v83[2] = v50;
  heightAnchor2 = [(_CPUILiveTrackView *)self->_liveTrackView heightAnchor];
  v7 = heightAnchor2;
  v8 = 6.0;
  if (self->_labelStyle == 1)
  {
    v8 = 11.0;
  }

  v9 = [heightAnchor2 constraintEqualToConstant:v8];
  v83[3] = v9;
  centerYAnchor3 = [(UILabel *)self->_liveLabel centerYAnchor];
  centerYAnchor4 = [(CPUIProgressView *)self centerYAnchor];
  v12 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v83[4] = v12;
  centerXAnchor = [(UILabel *)self->_liveLabel centerXAnchor];
  centerXAnchor2 = [(CPUIProgressView *)self centerXAnchor];
  v15 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v83[5] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:6];
  [v74 addObjectsFromArray:v16];

  if ([(CPUIProgressView *)self showsProgressLabels])
  {
    leftAnchor = [(UILabel *)self->_timeLabel leftAnchor];
    leftAnchor2 = [(CPUIProgressView *)self leftAnchor];
    v19 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v82[0] = v19;
    rightAnchor = [(UILabel *)self->_timeRemainingLabel rightAnchor];
    rightAnchor2 = [(CPUIProgressView *)self rightAnchor];
    v22 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v82[1] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v82 count:2];
    [v74 addObjectsFromArray:v23];

    timeLabel = self->_timeLabel;
    if (self->_labelStyle)
    {
      topAnchor = [(UILabel *)timeLabel topAnchor];
      bottomAnchor = [(CPUIProgressBarView *)self->_progressBarView bottomAnchor];
      v64 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:6.0];
      v76[0] = v64;
      leftAnchor3 = [(UILabel *)self->_timeLabel leftAnchor];
      leftAnchor4 = [(CPUIProgressView *)self leftAnchor];
      v55 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
      v76[1] = v55;
      topAnchor2 = [(UILabel *)self->_timeRemainingLabel topAnchor];
      bottomAnchor2 = [(CPUIProgressBarView *)self->_progressBarView bottomAnchor];
      v25 = [topAnchor2 constraintEqualToAnchor:6.0 constant:?];
      v76[2] = v25;
      topAnchor3 = [(CPUIProgressBarView *)self->_progressBarView topAnchor];
      topAnchor4 = [(CPUIProgressView *)self topAnchor];
      v51 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v76[3] = v51;
      leftAnchor5 = [(CPUIProgressBarView *)self->_progressBarView leftAnchor];
      leftAnchor6 = [(CPUIProgressView *)self leftAnchor];
      v29 = [leftAnchor5 constraintEqualToAnchor:leftAnchor6];
      v76[4] = v29;
      rightAnchor3 = [(CPUIProgressBarView *)self->_progressBarView rightAnchor];
      rightAnchor4 = [(CPUIProgressView *)self rightAnchor];
      v32 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
      v76[5] = v32;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:6];
      [v74 addObjectsFromArray:v33];

      centerYAnchor10 = topAnchor2;
      v35 = v55;

      v36 = v64;
      centerYAnchor5 = topAnchor;

      leadingAnchor3 = bottomAnchor;
      trailingAnchor4 = leftAnchor4;

      trailingAnchor3 = leftAnchor3;
      v41 = topAnchor4;
    }

    else
    {
      centerYAnchor5 = [(UILabel *)timeLabel centerYAnchor];
      centerYAnchor6 = [(CPUIProgressView *)self centerYAnchor];
      v65 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
      v77 = v65;
      centerYAnchor7 = [(UILabel *)self->_timeRemainingLabel centerYAnchor];
      centerYAnchor8 = [(UILabel *)self->_timeLabel centerYAnchor];
      v78 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
      centerYAnchor9 = [(CPUIProgressBarView *)self->_progressBarView centerYAnchor];
      bottomAnchor2 = [(UILabel *)self->_timeLabel centerYAnchor];
      v25 = [centerYAnchor9 constraintEqualToAnchor:0.5 constant:?];
      v79 = v25;
      topAnchor3 = [(CPUIProgressBarView *)self->_progressBarView leftAnchor];
      centerYAnchor10 = centerYAnchor9;
      rightAnchor5 = [(UILabel *)self->_timeLabel rightAnchor];
      v56 = [topAnchor3 constraintEqualToAnchor:rightAnchor5 constant:4.0];
      v80 = v56;
      rightAnchor6 = [(CPUIProgressBarView *)self->_progressBarView rightAnchor];
      v35 = v78;
      leftAnchor7 = [(UILabel *)self->_timeRemainingLabel leftAnchor];
      v45 = [rightAnchor6 constraintEqualToAnchor:leftAnchor7 constant:-4.0];
      v81 = v45;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:5];
      [v74 addObjectsFromArray:v46];

      v36 = v65;
      leadingAnchor3 = centerYAnchor6;

      trailingAnchor4 = centerYAnchor8;
      trailingAnchor3 = centerYAnchor7;

      v41 = rightAnchor5;
    }
  }

  else
  {
    centerYAnchor5 = [(CPUIProgressBarView *)self->_progressBarView leadingAnchor];
    leadingAnchor3 = [(CPUIProgressView *)self leadingAnchor];
    v36 = [centerYAnchor5 constraintEqualToAnchor:leadingAnchor3];
    v75[0] = v36;
    trailingAnchor3 = [(CPUIProgressBarView *)self->_progressBarView trailingAnchor];
    trailingAnchor4 = [(CPUIProgressView *)self trailingAnchor];
    v35 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v75[1] = v35;
    centerYAnchor10 = [(CPUIProgressBarView *)self->_progressBarView centerYAnchor];
    bottomAnchor2 = [(CPUIProgressView *)self centerYAnchor];
    v25 = [centerYAnchor10 constraintEqualToAnchor:?];
    v75[2] = v25;
    topAnchor3 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:3];
    [v74 addObjectsFromArray:topAnchor3];
  }

  v47 = [MEMORY[0x277CBEA60] arrayWithArray:v74];
  constraints = self->_constraints;
  self->_constraints = v47;

  [MEMORY[0x277CCAAD0] activateConstraints:v74];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CPUIProgressView;
  [(CPUIProgressView *)&v7 layoutSubviews];
  [(UILabel *)self->_timeLabel invalidateIntrinsicContentSize];
  [(UILabel *)self->_timeRemainingLabel invalidateIntrinsicContentSize];
  [(UILabel *)self->_liveLabel invalidateIntrinsicContentSize];
  [(_CPUILiveTrackView *)self->_liveTrackView bounds];
  v3 = CGRectGetHeight(v8) * 0.5;
  layer = [(_CPUILiveTrackView *)self->_liveTrackView layer];
  [layer setCornerRadius:v3];

  [(UILabel *)self->_liveLabel bounds];
  v5 = CGRectGetWidth(v9) + 8.0;
  [(_CPUILiveTrackView *)self->_liveTrackView bounds];
  Width = CGRectGetWidth(v10);
  if (Width < 1.0)
  {
    Width = 1.0;
  }

  [(_CPUILiveTrackView *)self->_liveTrackView setErasedPercentage:v5 / Width];
}

- (void)updateLocalizedDurationString:(id)string
{
  stringCopy = string;
  v9 = stringCopy;
  if (stringCopy)
  {
    v5 = stringCopy;
  }

  else
  {
    v5 = CPUILocalizedStringForKey(@"LIVE_STREAMING");
  }

  v6 = v5;
  liveLabel = self->_liveLabel;
  localizedUppercaseString = [v5 localizedUppercaseString];
  [(UILabel *)liveLabel setText:localizedUppercaseString];
}

- (void)setDurationSnapshot:(id *)snapshot
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = CarPlayUIGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    var3 = snapshot->var3;
    var4 = snapshot->var4;
    v17 = 134218240;
    v18 = var3;
    v19 = 2048;
    v20 = var4;
    _os_log_impl(&dword_243134000, v5, OS_LOG_TYPE_DEFAULT, "Progress view set duration: %f, with elapsed duration: %f", &v17, 0x16u);
  }

  v9 = *&snapshot->var2;
  v8 = *&snapshot->var4;
  v10 = *&snapshot->var0;
  *&self->_durationSnapshot.isLiveContent = *&snapshot->var7;
  *&self->_durationSnapshot.endTime = v9;
  *&self->_durationSnapshot.elapsedDuration = v8;
  *&self->_durationSnapshot.snapshotTime = v10;
  var7 = snapshot->var7;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  duration = self->_durationSnapshot.elapsedDuration + (v12 - self->_durationSnapshot.snapshotTime) * self->_durationSnapshot.rate;
  if (duration >= self->_durationSnapshot.duration)
  {
    duration = self->_durationSnapshot.duration;
  }

  v14 = fmax(duration, 0.0);
  if ([(CPUIProgressView *)self showsProgressLabels])
  {
    [(CPUIProgressView *)self _updateLabelsForElapsedTime:v14 duration:self->_durationSnapshot.duration];
  }

  [(CPUIProgressView *)self _updateProgressForElapsedTime:v14 duration:self->_durationSnapshot.duration];
  showsProgressLabels = [(CPUIProgressView *)self showsProgressLabels];
  v16 = var7 | ~showsProgressLabels;
  [(UILabel *)self->_timeLabel setHidden:var7 || (showsProgressLabels & 1) == 0];
  [(UILabel *)self->_timeRemainingLabel setHidden:v16];
  [(CPUIProgressBarView *)self->_progressBarView setHidden:var7];
  [(UILabel *)self->_liveLabel setHidden:var7 ^ 1];
  [(_CPUILiveTrackView *)self->_liveTrackView setHidden:var7 ^ 1];
  [(CPUIProgressView *)self setNeedsDisplay];
  [(CPUIProgressView *)self runUntilNextDisplayLinkEvent];
}

- (void)_displayLinkTick:(id)tick
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v5 = v4;
  duration = self->_durationSnapshot.elapsedDuration + (v4 - self->_durationSnapshot.snapshotTime) * self->_durationSnapshot.rate;
  if (duration >= self->_durationSnapshot.duration)
  {
    duration = self->_durationSnapshot.duration;
  }

  v7 = fmax(duration, 0.0);
  if ([(CPUIProgressView *)self showsProgressLabels])
  {
    v8 = v5 - self->_lastTargetTimestamp;
    if (v8 < 0.0)
    {
      v8 = -v8;
    }

    rate = self->_durationSnapshot.rate;
    if (rate < 0.0)
    {
      rate = -rate;
    }

    if (v8 >= 1.0 / fmax(rate, 1.0))
    {
      self->_lastTargetTimestamp = v5;
      [(CPUIProgressView *)self _updateLabelsForElapsedTime:v7 duration:self->_durationSnapshot.duration];
    }
  }

  [(CPUIProgressView *)self _updateProgressForElapsedTime:v7 duration:self->_durationSnapshot.duration];
  [(CPUIProgressView *)self setNeedsLayout];

  [(CPUIProgressView *)self pauseDisplayLinkIfNeeded];
}

- (void)_updateLabelsForElapsedTime:(double)time duration:(double)duration
{
  if (duration <= 1.17549435e-38)
  {
    v6 = &stru_2855CA368;
    v14 = &stru_2855CA368;
    [(UILabel *)self->_timeLabel setText:&stru_2855CA368];
  }

  else
  {
    timeCopy = time;
    v14 = CPUITimeDurationForSeconds(timeCopy);
    if (duration - time >= 0.0)
    {
      v9 = duration - time;
    }

    else
    {
      v9 = 0.0;
    }

    v10 = MEMORY[0x277CCACA8];
    v11 = CPUILocalizedStringForKey(@"PROGRESS_TIME_WITH_NEGATIVE_PREFIX_%@");
    v12 = v9;
    v13 = CPUITimeDurationForSeconds(v12);
    v6 = [v10 localizedStringWithFormat:v11, v13];

    [(UILabel *)self->_timeLabel setText:v14];
  }

  [(UILabel *)self->_timeRemainingLabel setText:v6];
}

- (void)_updateProgressForElapsedTime:(double)time duration:(double)duration
{
  if (fabs(duration) <= 0.00000011920929)
  {
    progressBarView = self->_progressBarView;
    v6 = 0.0;
  }

  else
  {
    v4 = time / duration;
    progressBarView = self->_progressBarView;
    if (v4 < 0.0)
    {
      v4 = 0.0;
    }

    v6 = fmin(v4, 1.0);
  }

  [(CPUIProgressBarView *)progressBarView setProgress:v6];
}

- (void)runUntilNextDisplayLinkEvent
{
  if ([(CADisplayLink *)self->_displayLink isPaused])
  {
    v3 = CarPlayUIGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_243134000, v3, OS_LOG_TYPE_DEFAULT, "Progress view animation resumed", v4, 2u);
    }

    [(CADisplayLink *)self->_displayLink setPaused:0];
  }
}

- (void)pauseDisplayLinkIfNeeded
{
  p_durationSnapshot = &self->_durationSnapshot;
  if ((fabsf(self->_durationSnapshot.rate) <= 0.00000011921 || self->_durationSnapshot.isLiveContent) && ![(CADisplayLink *)self->_displayLink isPaused])
  {
    v4 = CarPlayUIGeneralLogging();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_243134000, v4, OS_LOG_TYPE_DEFAULT, "Progress view animation paused", v6, 2u);
    }

    v5 = fabsf(p_durationSnapshot->rate) <= 0.00000011921 || p_durationSnapshot->isLiveContent;
    [(CADisplayLink *)self->_displayLink setPaused:v5 & 1];
  }
}

- ($04B05C73ED6AEEF31C5815932084562D)durationSnapshot
{
  v3 = *&self[9].var2;
  *&retstr->var0 = *&self[9].var0;
  *&retstr->var2 = v3;
  *&retstr->var4 = *&self[9].var4;
  *&retstr->var7 = *&self[9].var7;
  return self;
}

@end