@interface MRUNowPlayingTimeControlsView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGRect)hitRect;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MRUNowPlayingTimeControlsView)initWithFrame:(CGRect)a3;
- (double)timeLabelsAlpha;
- (id)viewForLastBaselineLayout;
- (int64_t)labelStyle;
- (void)layoutSubviews;
- (void)layoutSubviewsLive;
- (void)layoutTimeLabels;
- (void)setContentScale:(double)a3;
- (void)setLayout:(int64_t)a3;
- (void)setLeftAlignLive:(BOOL)a3;
- (void)setOnScreen:(BOOL)a3;
- (void)setSliderExpansionFactor:(double)a3;
- (void)setSliderHeight:(double)a3;
- (void)setStylingProvider:(id)a3;
- (void)setTimeControls:(id)a3 forPresentationInterval:(id)a4;
- (void)sliderTouchCancel:(id)a3;
- (void)sliderValueChanged:(id)a3;
- (void)updateBackgroundMask;
- (void)updateBacklightLuminance;
- (void)updateContentSizeCategory;
- (void)updateDisplayLink;
- (void)updateDisplayLinkPaused;
- (void)updateElapsedTime;
- (void)updateElapsedTimeForDate:(id)a3;
- (void)updateElapsedTimeOnDisplayLinkTick:(id)a3;
- (void)updateElapsedTimeWithElapsedTime:(double)a3;
- (void)updateElapsedTimeWithThrottle;
- (void)updateVisibility;
- (void)updateVisualStyling;
@end

@implementation MRUNowPlayingTimeControlsView

- (MRUNowPlayingTimeControlsView)initWithFrame:(CGRect)a3
{
  v52[6] = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = MRUNowPlayingTimeControlsView;
  v3 = [(MRUNowPlayingTimeControlsView *)&v49 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_sliderHeight = 7.0;
    v5 = objc_alloc_init(MRUSlider);
    slider = v4->_slider;
    v4->_slider = v5;

    [(MRUSlider *)v4->_slider setHitRectInset:-24.0, -24.0, -24.0, -24.0];
    [(MRUSlider *)v4->_slider setExpansionFactor:1.71428571];
    [(MRUSlider *)v4->_slider setStretchLimit:8.0];
    [(MRUSlider *)v4->_slider setSemanticContentAttribute:3];
    objc_initWeak(&location, v4);
    v43 = MEMORY[0x1E69E9820];
    v44 = 3221225472;
    v45 = __47__MRUNowPlayingTimeControlsView_initWithFrame___block_invoke;
    v46 = &unk_1E7664140;
    objc_copyWeak(&v47, &location);
    [(MRUSlider *)v4->_slider setAnimations:&v43];
    [(MRUSlider *)v4->_slider addTarget:v4 action:sel_sliderTouchDown_ forControlEvents:1, v43, v44, v45, v46];
    [(MRUSlider *)v4->_slider addTarget:v4 action:sel_sliderValueChanged_ forControlEvents:4544];
    [(MRUSlider *)v4->_slider addTarget:v4 action:sel_sliderTouchCancel_ forControlEvents:256];
    [(MRUNowPlayingTimeControlsView *)v4 addSubview:v4->_slider];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    elapsedTimeLabel = v4->_elapsedTimeLabel;
    v4->_elapsedTimeLabel = v7;

    [(MRUNowPlayingTimeControlsView *)v4 addSubview:v4->_elapsedTimeLabel];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    remainingTimeLabel = v4->_remainingTimeLabel;
    v4->_remainingTimeLabel = v9;

    [(MRUNowPlayingTimeControlsView *)v4 addSubview:v4->_remainingTimeLabel];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    liveLabel = v4->_liveLabel;
    v4->_liveLabel = v11;

    [(MRUNowPlayingTimeControlsView *)v4 addSubview:v4->_liveLabel];
    v13 = objc_alloc_init(MEMORY[0x1E6979380]);
    liveBackgroundMask = v4->_liveBackgroundMask;
    v4->_liveBackgroundMask = v13;

    [(CAGradientLayer *)v4->_liveBackgroundMask setStartPoint:0.0, 0.0];
    [(CAGradientLayer *)v4->_liveBackgroundMask setEndPoint:1.0, 0.0];
    v15 = [MEMORY[0x1E69DC888] blackColor];
    v16 = v15;
    v52[0] = [v15 CGColor];
    v17 = [MEMORY[0x1E69DC888] blackColor];
    v18 = v17;
    v52[1] = [v17 CGColor];
    v19 = [MEMORY[0x1E69DC888] clearColor];
    v20 = v19;
    v52[2] = [v19 CGColor];
    v21 = [MEMORY[0x1E69DC888] clearColor];
    v22 = v21;
    v52[3] = [v21 CGColor];
    v23 = [MEMORY[0x1E69DC888] blackColor];
    v24 = v23;
    v52[4] = [v23 CGColor];
    v25 = [MEMORY[0x1E69DC888] blackColor];
    v26 = v25;
    v52[5] = [v25 CGColor];
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:6];
    [(CAGradientLayer *)v4->_liveBackgroundMask setColors:v27];

    v28 = objc_alloc_init(MEMORY[0x1E69DD250]);
    liveBackground = v4->_liveBackground;
    v4->_liveBackground = v28;

    v30 = v4->_liveBackgroundMask;
    v31 = [(UIView *)v4->_liveBackground layer];
    [v31 setMask:v30];

    [(MRUNowPlayingTimeControlsView *)v4 addSubview:v4->_liveBackground];
    v32 = objc_alloc_init(MEMORY[0x1E6988158]);
    elapsedTimeFormatter = v4->_elapsedTimeFormatter;
    v4->_elapsedTimeFormatter = v32;

    [(AVTimeFormatter *)v4->_elapsedTimeFormatter setStyle:1];
    v34 = objc_alloc_init(MEMORY[0x1E6988158]);
    remainingTimeFormatter = v4->_remainingTimeFormatter;
    v4->_remainingTimeFormatter = v34;

    [(AVTimeFormatter *)v4->_remainingTimeFormatter setStyle:2];
    v36 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\d" options:0 error:0];
    regexNumberDecimalDigit = v4->_regexNumberDecimalDigit;
    v4->_regexNumberDecimalDigit = v36;

    v4->_contentScale = 1.0;
    v51 = objc_opt_class();
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
    v39 = [(MRUNowPlayingTimeControlsView *)v4 registerForTraitChanges:v38 withAction:sel_updateContentSizeCategory];

    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
    v41 = [(MRUNowPlayingTimeControlsView *)v4 registerForTraitChanges:v40 withAction:sel_updateBacklightLuminance];

    [(MRUNowPlayingTimeControlsView *)v4 updateContentSizeCategory];
    [(MRUNowPlayingTimeControlsView *)v4 updateVisibility];
    [(MRUNowPlayingTimeControlsView *)v4 setAccessibilityIdentifier:@"UIA.MediaControls.NowPlaying.TimeControlsView"];
    objc_destroyWeak(&v47);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __47__MRUNowPlayingTimeControlsView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateVisualStyling];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 layoutTimeLabels];
}

- (void)layoutSubviews
{
  v91.receiver = self;
  v91.super_class = MRUNowPlayingTimeControlsView;
  [(MRUNowPlayingTimeControlsView *)&v91 layoutSubviews];
  if ([(MRUTimeControls *)self->_timeControls isLive])
  {
    [(MRUNowPlayingTimeControlsView *)self layoutSubviewsLive];
    return;
  }

  [(MRUNowPlayingTimeControlsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
  [v11 displayScale];

  layout = self->_layout;
  if (layout == 4)
  {
    v100.origin.x = v4;
    v100.origin.y = v6;
    v100.size.width = v8;
    v100.size.height = v10;
    MinX = CGRectGetMinX(v100);
    v101.origin.x = v4;
    v101.origin.y = v6;
    v101.size.width = v8;
    v101.size.height = v10;
    MinY = CGRectGetMinY(v101);
    v102.origin.x = v4;
    v102.origin.y = v6;
    v102.size.width = v8;
    v102.size.height = v10;
    Width = CGRectGetWidth(v102);
    sliderHeight = self->_sliderHeight;
    [(MRUSlider *)self->_slider setFrame:MinX, MinY, Width, sliderHeight];
    v103.origin.x = MinX;
    v103.origin.y = MinY;
    v103.size.width = Width;
    v103.size.height = sliderHeight;
    CGRectGetMaxY(v103);
    UIRectInset();
    v33 = v32;
    v86 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;
    [(UILabel *)self->_elapsedTimeLabel sizeThatFits:v36, v38];
    MRUSizeCeilToViewScale(self);
    v104.origin.x = v33;
    v104.origin.y = v35;
    v104.size.width = v37;
    v104.size.height = v39;
    CGRectGetMinY(v104);
    UIRectIntegralWithScale();
    [(UILabel *)self->_elapsedTimeLabel setFrame:?];
    [(UILabel *)self->_remainingTimeLabel sizeThatFits:v37, v39];
    MRUSizeCeilToViewScale(self);
    v105.origin.x = v86;
    v105.origin.y = v35;
    v105.size.width = v37;
    v105.size.height = v39;
    CGRectGetMaxX(v105);
    v106.origin.x = v86;
    v106.origin.y = v35;
    v106.size.width = v37;
    v106.size.height = v39;
    v13 = MinX;
    v16 = MinY;
    CGRectGetMinY(v106);
    goto LABEL_9;
  }

  if (layout == 3)
  {
    v94.origin.x = v4;
    v94.origin.y = v6;
    v94.size.width = v8;
    v94.size.height = v10;
    CGRectGetMinX(v94);
    v95.origin.x = v4;
    v95.origin.y = v6;
    v95.size.width = v8;
    v95.size.height = v10;
    CGRectGetWidth(v95);
    v17 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
    [v17 displayScale];
    v82 = v18;
    UIRectCenteredYInRectScale();
    v13 = v19;
    v21 = v20;
    v87 = v22;
    v89 = v20;
    v23 = v22;
    sliderHeight = v24;

    [(MRUSlider *)self->_slider setFrame:v13, v21, v23, sliderHeight, v82];
    v96.origin.x = v13;
    v96.origin.y = v21;
    v96.size.width = v23;
    v96.size.height = sliderHeight;
    CGRectGetMaxY(v96);
    UIRectInset();
    v26 = v25;
    v85 = v27;
    v29 = v28;
    v31 = v30;
    [(UILabel *)self->_elapsedTimeLabel sizeThatFits:v28, v30];
    MRUSizeCeilToViewScale(self);
    v97.origin.x = v26;
    v97.origin.y = v85;
    v97.size.width = v29;
    v97.size.height = v31;
    CGRectGetMinY(v97);
    UIRectIntegralWithScale();
    [(UILabel *)self->_elapsedTimeLabel setFrame:?];
    [(UILabel *)self->_remainingTimeLabel sizeThatFits:v29, v31];
    MRUSizeCeilToViewScale(self);
    v98.origin.x = v26;
    v98.origin.y = v85;
    v98.size.width = v29;
    v98.size.height = v31;
    CGRectGetMaxX(v98);
    v99.origin.x = v26;
    v99.origin.y = v85;
    v99.size.width = v29;
    v99.size.height = v31;
    v16 = v89;
    CGRectGetMinY(v99);
    Width = v87;
LABEL_9:
    UIRectIntegralWithScale();
    remainingTimeLabel = self->_remainingTimeLabel;
LABEL_15:
    [remainingTimeLabel setFrame:{v40, v41, v42, v43, v81}];
    goto LABEL_16;
  }

  if (layout != 2)
  {
    [(UILabel *)self->_elapsedTimeLabel sizeThatFits:v8, v10];
    MRUSizeCeilToViewScale(self);
    v45 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
    [v45 displayScale];
    v83 = v46;
    UIRectCenteredYInRectScale();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;

    [(UILabel *)self->_elapsedTimeLabel setFrame:v48, v50, v52, v54, v83];
    if (([(UILabel *)self->_elapsedTimeLabel isHidden]& 1) == 0)
    {
      v107.origin.x = v48;
      v107.origin.y = v50;
      v107.size.width = v52;
      v107.size.height = v54;
      CGRectGetWidth(v107);
      UIRectInset();
      v4 = v55;
      v6 = v56;
      v8 = v57;
      v10 = v58;
    }

    [(UILabel *)self->_remainingTimeLabel sizeThatFits:v8, v10];
    MRUSizeCeilToViewScale(self);
    v108.origin.x = v4;
    v108.origin.y = v6;
    v108.size.width = v8;
    v108.size.height = v10;
    CGRectGetMaxX(v108);
    v59 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
    [v59 displayScale];
    v84 = v60;
    UIRectCenteredYInRectScale();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;

    [(UILabel *)self->_remainingTimeLabel setFrame:v62, v64, v66, v68, v84];
    if (([(UILabel *)self->_remainingTimeLabel isHidden]& 1) == 0)
    {
      v109.origin.x = v62;
      v109.origin.y = v64;
      v109.size.width = v66;
      v109.size.height = v68;
      CGRectGetWidth(v109);
      UIRectInset();
      v4 = v69;
      v6 = v70;
      v8 = v71;
      v10 = v72;
    }

    v110.origin.x = v4;
    v110.origin.y = v6;
    v110.size.width = v8;
    v110.size.height = v10;
    CGRectGetMinX(v110);
    v111.origin.x = v4;
    v111.origin.y = v6;
    v111.size.width = v8;
    v111.size.height = v10;
    CGRectGetWidth(v111);
    v73 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
    [v73 displayScale];
    v81 = v74;
    UIRectCenteredYInRectScale();
    v13 = v75;
    v16 = v76;
    Width = v77;
    sliderHeight = v78;

    remainingTimeLabel = self->_slider;
    v40 = v13;
    v41 = v16;
    v42 = Width;
    v43 = sliderHeight;
    goto LABEL_15;
  }

  v92.origin.x = v4;
  v92.origin.y = v6;
  v92.size.width = v8;
  v92.size.height = v10;
  v13 = CGRectGetMinX(v92);
  v93.origin.x = v4;
  v93.origin.y = v6;
  v93.size.width = v8;
  v93.size.height = v10;
  Width = CGRectGetWidth(v93);
  sliderHeight = self->_sliderHeight;
  v16 = 0.0;
  [(MRUSlider *)self->_slider setFrame:v13, 0.0, Width, sliderHeight];
  [(MRUNowPlayingTimeControlsView *)self layoutTimeLabels];
LABEL_16:
  v112.origin.x = v13;
  v112.origin.y = v16;
  v112.size.width = Width;
  v112.size.height = sliderHeight;
  v79 = -CGRectGetMinX(v112);
  v113.origin.x = v13;
  v113.origin.y = v16;
  v113.size.width = Width;
  v113.size.height = sliderHeight;
  MaxX = CGRectGetMaxX(v113);
  [(MRUNowPlayingTimeControlsView *)self bounds];
  [(MRUSlider *)self->_slider setHitRectInset:-24.0, v79, -24.0, MaxX - CGRectGetWidth(v114)];
}

- (void)layoutSubviewsLive
{
  [(MRUNowPlayingTimeControlsView *)self bounds];
  y = v28.origin.y;
  x = v28.origin.x;
  width = v28.size.width;
  height = v28.size.height;
  v29 = CGRectInset(v28, 20.0, 0.0);
  [(UILabel *)self->_liveLabel sizeThatFits:v29.size.width, v29.size.height];
  UIRectGetCenter();
  v5 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
  [v5 displayScale];
  UIRectCenteredAboutPointScale();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(UILabel *)self->_liveLabel setFrame:v7, v9, v11, v13];
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  CGRectGetWidth(v30);
  v14 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
  [v14 displayScale];
  v24 = v15;
  UIRectCenteredYInRectScale();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [(UIView *)self->_liveBackground setFrame:v17, v19, v21, v23, v24];
  v31.origin.x = v17;
  v31.origin.y = v19;
  v31.size.width = v21;
  v31.size.height = v23;
  [(UIView *)self->_liveBackground _setContinuousCornerRadius:CGRectGetHeight(v31) * 0.5];

  [(MRUNowPlayingTimeControlsView *)self updateBackgroundMask];
}

- (void)layoutTimeLabels
{
  if (self->_layout == 2)
  {
    v3 = 0.0;
    if ([(MRUSlider *)self->_slider isTracking])
    {
      sliderHeight = self->_sliderHeight;
      [(MRUSlider *)self->_slider expansionFactor];
      v3 = -(self->_sliderHeight - sliderHeight * v5) * 0.5;
    }

    [(MRUNowPlayingTimeControlsView *)self bounds];
    [(MRUSlider *)self->_slider frame];
    UIRectInset();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(UILabel *)self->_elapsedTimeLabel sizeThatFits:v10, v12];
    v32 = MRUSizeCeilToViewScale(self);
    v33 = v14;
    v15 = v14;
    v37.origin.x = v7;
    v37.origin.y = v9;
    v37.size.width = v11;
    v37.size.height = v13;
    v16 = v3;
    v17 = v3 + CGRectGetMinY(v37);
    [(UILabel *)self->_elapsedTimeLabel bounds];
    v34 = v18;
    v35 = v19;
    [(UILabel *)self->_elapsedTimeLabel setFrame:0.0, v17, v32, v15];
    [(UILabel *)self->_remainingTimeLabel sizeThatFits:v11, v13];
    v20 = MRUSizeCeilToViewScale(self);
    v22 = v21;
    v38.origin.x = v7;
    v38.origin.y = v9;
    v38.size.width = v11;
    v38.size.height = v13;
    v23 = CGRectGetMaxX(v38) - v20;
    v39.origin.x = v7;
    v39.origin.y = v9;
    v39.size.width = v11;
    v39.size.height = v13;
    v24 = v16 + CGRectGetMinY(v39);
    [(UILabel *)self->_remainingTimeLabel bounds];
    v26 = v25;
    v28 = v27;
    [(UILabel *)self->_remainingTimeLabel setFrame:v23, v24, v20, v22];
    if (v34 != v32 || v35 != v33 || v26 != v20 || v28 != v22)
    {

      [(MRUNowPlayingTimeControlsView *)self invalidateIntrinsicContentSize];
    }
  }
}

- (CGSize)intrinsicContentSize
{
  if (self->_layout == 2)
  {
    [(UILabel *)self->_elapsedTimeLabel intrinsicContentSize];
    MRUSizeCeilToViewScale(self);
    v4 = v3 + self->_sliderHeight + 6.0;
    v5 = 0.0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MRUNowPlayingTimeControlsView;
    [(MRUNowPlayingTimeControlsView *)&v6 intrinsicContentSize];
  }

  result.height = v4;
  result.width = v5;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  layout = self->_layout;
  if (layout == 4)
  {
    contentScale = self->_contentScale;
    v7 = 28.0;
LABEL_9:
    v6 = contentScale * v7;
    goto LABEL_10;
  }

  if (layout != 2)
  {
    if (layout == 1)
    {
      contentScale = 24.0;
    }

    else
    {
      contentScale = 44.0;
    }

    v7 = self->_contentScale;
    goto LABEL_9;
  }

  [(MRUNowPlayingTimeControlsView *)self intrinsicContentSize:a3.width];
LABEL_10:
  v8 = width;
  result.height = v6;
  result.width = v8;
  return result;
}

- (id)viewForLastBaselineLayout
{
  if (self->_layout == 2)
  {
    v2 = self->_elapsedTimeLabel;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = MRUNowPlayingTimeControlsView;
    v2 = [(MRUNowPlayingTimeControlsView *)&v4 viewForLastBaselineLayout];
  }

  return v2;
}

- (void)setTimeControls:(id)a3 forPresentationInterval:(id)a4
{
  objc_storeStrong(&self->_timeControls, a3);
  v7 = a3;
  v8 = a4;
  [v7 startTime];
  *&v9 = v9;
  [(MRUSlider *)self->_slider setMinimumValue:v9];
  [v7 duration];
  *&v10 = v10;
  [(MRUSlider *)self->_slider setMaximumValue:v10];
  v11 = [v7 scrubbable];
  v12 = [(MRUNowPlayingTimeControlsView *)self slider];
  [v12 setEnabled:v11];

  v13 = [v7 isEnabled];
  v14 = [(MRUNowPlayingTimeControlsView *)self slider];
  [v14 setMinimumTrackVisible:v13];

  v15 = [v7 liveText];

  v16 = [(MRUNowPlayingTimeControlsView *)self liveLabel];
  [v16 setText:v15];

  v17 = [v8 startDate];

  [(MRUNowPlayingTimeControlsView *)self updateElapsedTimeForDate:v17];
  [(MRUNowPlayingTimeControlsView *)self updateDisplayLinkPaused];
  [(MRUNowPlayingTimeControlsView *)self updateVisibility];

  [(MRUNowPlayingTimeControlsView *)self setNeedsLayout];
}

- (void)setStylingProvider:(id)a3
{
  v5 = a3;
  if (self->_stylingProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_stylingProvider, a3);
    [(MRUSlider *)self->_slider setStylingProvider:v6];
    [(MRUNowPlayingTimeControlsView *)self updateVisualStyling];
    v5 = v6;
  }
}

- (void)setOnScreen:(BOOL)a3
{
  if (self->_onScreen != a3)
  {
    self->_onScreen = a3;
    [(MRUNowPlayingTimeControlsView *)self updateDisplayLink];
  }
}

- (void)setLayout:(int64_t)a3
{
  if (self->_layout != a3)
  {
    self->_layout = a3;
    [(MRUNowPlayingTimeControlsView *)self updateContentSizeCategory];
    [(MRUSlider *)self->_slider setStretchLimit:MRUNowPlayingTimeControlsStretchLimit(a3)];

    [(MRUNowPlayingTimeControlsView *)self setNeedsLayout];
  }
}

- (void)setLeftAlignLive:(BOOL)a3
{
  if (self->_leftAlignLive != a3)
  {
    self->_leftAlignLive = a3;
    [(MRUNowPlayingTimeControlsView *)self setNeedsLayout];
  }
}

- (void)setSliderHeight:(double)a3
{
  if (self->_sliderHeight != a3)
  {
    self->_sliderHeight = a3;
    [(MRUNowPlayingTimeControlsView *)self setNeedsLayout];
  }
}

- (void)setSliderExpansionFactor:(double)a3
{
  if (self->_sliderExpansionFactor != a3)
  {
    self->_sliderExpansionFactor = a3;
    [(MRUSlider *)self->_slider setExpansionFactor:?];

    [(MRUNowPlayingTimeControlsView *)self setNeedsLayout];
  }
}

- (void)setContentScale:(double)a3
{
  if (vabdd_f64(self->_contentScale, a3) > 2.22044605e-16)
  {
    self->_contentScale = a3;
    [(MRUNowPlayingTimeControlsView *)self updateContentSizeCategory];
  }
}

- (void)sliderValueChanged:(id)a3
{
  v5 = a3;
  [v5 value];
  [(MRUNowPlayingTimeControlsView *)self updateElapsedTimeWithElapsedTime:v4];
  if (self->_layout != 2)
  {
    [(MRUNowPlayingTimeControlsView *)self layoutIfNeeded];
  }

  if (([v5 isTracking] & 1) == 0)
  {
    [(MRUNowPlayingTimeControlsView *)self updateElapsedTimeWithThrottle];
  }
}

- (void)sliderTouchCancel:(id)a3
{
  [(MRUNowPlayingTimeControlsView *)self updateDisplayLinkPaused];

  [(MRUNowPlayingTimeControlsView *)self updateElapsedTime];
}

- (CGRect)hitRect
{
  if (self->_layout == 2)
  {
    v23.receiver = self;
    v23.super_class = MRUNowPlayingTimeControlsView;
    [(MRUNowPlayingTimeControlsView *)&v23 hitRect];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(MRUSlider *)self->_slider hitRectInset];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = v4 + v13;
    v18 = v6 + v12;
    v20 = v8 - (v14 + v19);
    v21 = v10 - (v12 + v16);
  }

  else
  {
    v22.receiver = self;
    v22.super_class = MRUNowPlayingTimeControlsView;
    [(MRUNowPlayingTimeControlsView *)&v22 hitRect];
  }

  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(MRUNowPlayingTimeControlsView *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (void)updateBacklightLuminance
{
  [(MRUNowPlayingTimeControlsView *)self updateElapsedTime];

  [(MRUNowPlayingTimeControlsView *)self updateVisualStyling];
}

- (void)updateVisualStyling
{
  v3 = [(MRUNowPlayingTimeControlsView *)self labelStyle];
  stylingProvider = self->_stylingProvider;
  elapsedTimeLabel = self->_elapsedTimeLabel;
  v6 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:v3 toView:elapsedTimeLabel traitCollection:v6];

  v7 = self->_stylingProvider;
  remainingTimeLabel = self->_remainingTimeLabel;
  v9 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
  [(MRUVisualStylingProvider *)v7 applyStyle:v3 toView:remainingTimeLabel traitCollection:v9];

  v10 = self->_stylingProvider;
  liveLabel = self->_liveLabel;
  v12 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
  [(MRUVisualStylingProvider *)v10 applyStyle:v3 toView:liveLabel traitCollection:v12];

  v13 = self->_stylingProvider;
  liveBackground = self->_liveBackground;
  v15 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
  [(MRUVisualStylingProvider *)v13 applyStyle:3 toView:liveBackground traitCollection:v15];
}

- (int64_t)labelStyle
{
  if (([(MRUSlider *)self->_slider isTracking]& 1) != 0)
  {
    return 0;
  }

  v4 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
  v5 = [v4 mr_shouldDim];

  if (v5)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (double)timeLabelsAlpha
{
  v3 = 1.0;
  if (([(MRUSlider *)self->_slider isTracking]& 1) == 0)
  {
    v4 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
    v5 = [v4 mr_shouldDim];

    if ((v5 & 1) == 0)
    {
      if (self->_layout == 2)
      {
        return 0.5;
      }

      else
      {
        return 1.0;
      }
    }
  }

  return v3;
}

- (void)updateDisplayLink
{
  displayLink = self->_displayLink;
  if (self->_onScreen)
  {
    if (!displayLink)
    {
      v4 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_updateElapsedTimeOnDisplayLinkTick_];
      v5 = self->_displayLink;
      self->_displayLink = v4;

      v11 = CAFrameRateRangeMake(1.0, 30.0, 5.0);
      [(CADisplayLink *)self->_displayLink setPreferredFrameRateRange:*&v11.minimum, *&v11.maximum, *&v11.preferred];
      v6 = self->_displayLink;
      v7 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(CADisplayLink *)v6 addToRunLoop:v7 forMode:*MEMORY[0x1E695DA28]];

      [(MRUNowPlayingTimeControlsView *)self updateDisplayLinkPaused];
    }
  }

  else if (displayLink)
  {
    v8 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)displayLink removeFromRunLoop:v8 forMode:*MEMORY[0x1E695DA28]];

    [(CADisplayLink *)self->_displayLink invalidate];
    v9 = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (void)updateDisplayLinkPaused
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = ([(MRUSlider *)self->_slider isTracking]& 1) != 0 || ([(MRUTimeControls *)self->_timeControls rate], v3 == 0.0) || ![(MRUTimeControls *)self->_timeControls isEnabled]|| self->_timeControls == 0;
  [(CADisplayLink *)self->_displayLink setPaused:v4];
  if (self->_debugPreviousDisplayLinkPaused != v4)
  {
    v5 = MCLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = [(MRUSlider *)self->_slider isTracking];
      timeControls = self->_timeControls;
      v9 = 138543874;
      v10 = v6;
      v11 = 1024;
      v12 = v7;
      v13 = 2114;
      v14 = timeControls;
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ updateDisplayLinkPaused tracking: %{BOOL}u | time controls: %{public}@", &v9, 0x1Cu);
    }

    self->_debugPreviousDisplayLinkPaused = v4;
  }
}

- (void)updateElapsedTimeOnDisplayLinkTick:(id)a3
{
  [(MRUNowPlayingTimeControlsView *)self updateElapsedTime];

  [(MRUNowPlayingTimeControlsView *)self layoutIfNeeded];
}

- (void)updateElapsedTime
{
  v3 = [MEMORY[0x1E695DF00] now];
  [(MRUNowPlayingTimeControlsView *)self updateElapsedTimeForDate:v3];
}

- (void)updateElapsedTimeForDate:(id)a3
{
  v6 = a3;
  if (([(MRUSlider *)self->_slider isTracking]& 1) == 0)
  {
    [(MRUTimeControls *)self->_timeControls elapsedTimeForDate:v6];
    v5 = v4;
    *&v4 = v4;
    [(MRUSlider *)self->_slider setValue:v4];
    [(MRUNowPlayingTimeControlsView *)self updateElapsedTimeWithElapsedTime:v5];
  }
}

- (void)updateElapsedTimeWithElapsedTime:(double)a3
{
  [(MRUTimeControls *)self->_timeControls duration];
  if (v5 <= a3)
  {
    a3 = v5;
  }

  v13 = [(AVTimeFormatter *)self->_elapsedTimeFormatter stringFromSeconds:a3];
  remainingTimeFormatter = self->_remainingTimeFormatter;
  [(MRUTimeControls *)self->_timeControls duration];
  v8 = [(AVTimeFormatter *)remainingTimeFormatter stringFromSeconds:v7 - a3];
  v9 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
  if ([v9 mr_shouldDim])
  {
  }

  else
  {
    v10 = [(MRUTimeControls *)self->_timeControls isEnabled];

    if (v10)
    {
      [(UILabel *)self->_elapsedTimeLabel setText:v13];
      [(UILabel *)self->_remainingTimeLabel setText:v8];
      goto LABEL_8;
    }
  }

  v11 = -[NSRegularExpression stringByReplacingMatchesInString:options:range:withTemplate:](self->_regexNumberDecimalDigit, "stringByReplacingMatchesInString:options:range:withTemplate:", v13, 0, 0, [v13 length], @"–");
  [(UILabel *)self->_elapsedTimeLabel setText:v11];

  v12 = -[NSRegularExpression stringByReplacingMatchesInString:options:range:withTemplate:](self->_regexNumberDecimalDigit, "stringByReplacingMatchesInString:options:range:withTemplate:", v8, 0, 0, [v8 length], @"–");
  [(UILabel *)self->_remainingTimeLabel setText:v12];

LABEL_8:
  [(MRUNowPlayingTimeControlsView *)self setNeedsLayout];
}

- (void)updateElapsedTimeWithThrottle
{
  [(MSVTimer *)self->_updateElapsedTimeThrottleTimer invalidate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__MRUNowPlayingTimeControlsView_updateElapsedTimeWithThrottle__block_invoke;
  v5[3] = &unk_1E7663898;
  v5[4] = self;
  v3 = [MEMORY[0x1E69B14D8] timerWithInterval:0 repeats:v5 block:0.05];
  updateElapsedTimeThrottleTimer = self->_updateElapsedTimeThrottleTimer;
  self->_updateElapsedTimeThrottleTimer = v3;
}

uint64_t __62__MRUNowPlayingTimeControlsView_updateElapsedTimeWithThrottle__block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateDisplayLinkPaused];
  v2 = [*(a1 + 32) slider];
  [v2 value];
  v4 = v3;
  v5 = [*(a1 + 32) timeControls];
  [v5 setElapsedTime:v4];

  v6 = *(a1 + 32);

  return [v6 setUpdateElapsedTimeThrottleTimer:0];
}

- (void)updateBackgroundMask
{
  v13[5] = *MEMORY[0x1E69E9840];
  [(UIView *)self->_liveBackground bounds];
  [(CAGradientLayer *)self->_liveBackgroundMask setFrame:?];
  [(UIView *)self->_liveBackground frame];
  v3 = 20.0 / CGRectGetWidth(v14);
  [(UILabel *)self->_liveLabel frame];
  MinX = CGRectGetMinX(v15);
  [(UIView *)self->_liveBackground frame];
  v5 = MinX / CGRectGetWidth(v16);
  [(UILabel *)self->_liveLabel frame];
  MaxX = CGRectGetMaxX(v17);
  [(UIView *)self->_liveBackground frame];
  v7 = MaxX / CGRectGetWidth(v18);
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:{v5 - v3, &unk_1F148B268}];
  v13[1] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v13[2] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v13[3] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v3 + v7];
  v13[4] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:5];
  [(CAGradientLayer *)self->_liveBackgroundMask setLocations:v12];
}

- (void)updateContentSizeCategory
{
  if (self->_layout == 2)
  {
    [MEMORY[0x1E69DB878] mru_ambientTimeFont];
  }

  else
  {
    [MEMORY[0x1E69DB878] mru_timeFontWithScale:self->_contentScale];
  }
  v3 = ;
  [(UILabel *)self->_elapsedTimeLabel setFont:v3];
  [(UILabel *)self->_remainingTimeLabel setFont:v3];
  [(UILabel *)self->_liveLabel setFont:v3];
}

- (void)updateVisibility
{
  v3 = [(MRUTimeControls *)self->_timeControls isLive];
  [(UILabel *)self->_elapsedTimeLabel setHidden:v3];
  [(UILabel *)self->_remainingTimeLabel setHidden:v3];
  [(MRUSlider *)self->_slider setHidden:v3];
  [(UILabel *)self->_liveLabel setHidden:v3 ^ 1];
  liveBackground = self->_liveBackground;

  [(UIView *)liveBackground setHidden:v3 ^ 1];
}

@end