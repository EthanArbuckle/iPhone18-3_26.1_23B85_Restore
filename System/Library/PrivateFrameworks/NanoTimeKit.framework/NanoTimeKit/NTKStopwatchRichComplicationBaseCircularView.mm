@interface NTKStopwatchRichComplicationBaseCircularView
- (NTKStopwatchRichComplicationBaseCircularView)initWithFamily:(int64_t)a3;
- (int64_t)_backgroundFilterStyle;
- (int64_t)_foregroundFilterStyle;
- (void)_applyPausedUpdate;
- (void)_handleTemplate:(id)a3 reason:(int64_t)a4;
- (void)_updateDialProgress;
- (void)dealloc;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKStopwatchRichComplicationBaseCircularView

- (NTKStopwatchRichComplicationBaseCircularView)initWithFamily:(int64_t)a3
{
  v49.receiver = self;
  v49.super_class = NTKStopwatchRichComplicationBaseCircularView;
  v3 = [(NTKRichComplicationCircularBaseView *)&v49 initWithFamily:a3];
  v4 = v3;
  if (v3)
  {
    p_stopwatchImageConfigPointSize = &v3->_layoutConstants.stopwatchImageConfigPointSize;
    v6 = [(CDRichComplicationView *)v3 device];
    v7 = [(CDRichComplicationView *)v4 family];
    memset(location, 0, 144);
    v8 = location;
    ___LayoutConstants_block_invoke_37(v6, location);
    if (v7 != 10)
    {
      if (v7 == 12)
      {
        v8 = &location[4] + 8;
      }

      else
      {
        v9 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          _LayoutConstants_cold_1(v7, v9);
        }

        v8 = location;
      }
    }

    v10 = *(v8 + 2);
    v11 = *(v8 + 3);
    v13 = *v8;
    v45 = *(v8 + 1);
    v12 = v45;
    v46 = v10;
    v47 = v11;
    v48 = *(v8 + 8);
    v14 = v48;
    v44 = v13;
    *&v4->_layoutConstants.dialDiameter = v10;
    *&v4->_layoutConstants.largeTickSize.height = v11;
    v4->_layoutConstants.smallTickSize.height = v14;
    *p_stopwatchImageConfigPointSize = v13;
    *&v4->_layoutConstants.timeLabelMaxWidth = v12;

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__NTKStopwatchRichComplicationBaseCircularView_initWithFamily___block_invoke;
    aBlock[3] = &unk_278783258;
    v15 = v4;
    v43 = v15;
    v16 = _Block_copy(aBlock);
    v17 = [MEMORY[0x277D75348] systemOrangeColor];
    v18 = [v17 colorWithAlphaComponent:0.4];
    v19 = v16[2](v16, v18);
    v20 = v15[76];
    v15[76] = v19;

    v21 = [MEMORY[0x277D75348] systemOrangeColor];
    v22 = v16[2](v16, v21);
    v23 = v15[75];
    v15[75] = v22;

    v24 = objc_alloc_init(off_27877BEF8);
    v25 = v15[74];
    v15[74] = v24;

    objc_initWeak(location, v15);
    v26 = v15[74];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __63__NTKStopwatchRichComplicationBaseCircularView_initWithFamily___block_invoke_2;
    v40[3] = &unk_27877DC30;
    objc_copyWeak(&v41, location);
    [v26 setNowProvider:v40];
    [v15[74] setInTimeTravel:0];
    v27 = v15[74];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __63__NTKStopwatchRichComplicationBaseCircularView_initWithFamily___block_invoke_3;
    v38[3] = &unk_27877DC58;
    objc_copyWeak(&v39, location);
    [v27 setNeedsResizeHandler:v38];
    [v15[74] setMaxWidth:v4->_layoutConstants.timeLabelMaxWidth];
    v28 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v4->_layoutConstants.timeLabelFontSize design:*MEMORY[0x277D74420]];
    v29 = [v28 CLKFontWithAlternativePunctuation];

    [v15[74] setFont:v29];
    [v15[74] setHidden:1];
    v30 = [v15 contentView];
    [v30 addSubview:v15[74]];

    v31 = [MEMORY[0x277D755D0] configurationWithPointSize:*p_stopwatchImageConfigPointSize];
    v32 = [MEMORY[0x277D755B8] systemImageNamed:@"stopwatch" withConfiguration:v31];
    v33 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v32];
    v34 = v15[73];
    v15[73] = v33;

    v35 = [MEMORY[0x277D75348] systemOrangeColor];
    [v15[73] setTintColor:v35];

    v36 = [v15 contentView];
    [v36 addSubview:v15[73]];

    objc_destroyWeak(&v39);
    objc_destroyWeak(&v41);
    objc_destroyWeak(location);
  }

  return v4;
}

NTKRichComplicationDialView *__63__NTKStopwatchRichComplicationBaseCircularView_initWithFamily___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NTKRichComplicationDialView alloc] initWithLargeTickCount:12 smallTickCountPerLargeTick:5 largeTickSize:*(*(a1 + 32) + 664) smallTickSize:*(*(a1 + 32) + 672) dialRange:*(*(a1 + 32) + 680) startAngle:*(*(a1 + 32) + 688), 6.28318531, 0.0];
  v5 = [v3 CGColor];
  v6 = [(NTKRichComplicationDialView *)v4 largeTickLayer];
  [v6 setBackgroundColor:v5];

  v7 = [v3 CGColor];
  v8 = [(NTKRichComplicationDialView *)v4 smallTickLayer];
  [v8 setBackgroundColor:v7];

  [(NTKRichComplicationDialView *)v4 setHidden:1];
  v9 = [*(a1 + 32) contentView];
  [v9 addSubview:v4];

  return v4;
}

id __63__NTKStopwatchRichComplicationBaseCircularView_initWithFamily___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
    WeakRetained = MEMORY[0x277CBBAD8];
  }

  v3 = [WeakRetained complicationDate];

  return v3;
}

void __63__NTKStopwatchRichComplicationBaseCircularView_initWithFamily___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

- (void)dealloc
{
  if (self->_updateToken)
  {
    v3 = [(CLKUIColoringLabel *)self->_timeLabel textProvider];
    [v3 stopUpdatesForToken:self->_updateToken];

    updateToken = self->_updateToken;
    self->_updateToken = 0;
  }

  v5.receiver = self;
  v5.super_class = NTKStopwatchRichComplicationBaseCircularView;
  [(NTKStopwatchRichComplicationBaseCircularView *)&v5 dealloc];
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = NTKStopwatchRichComplicationBaseCircularView;
  [(NTKRichComplicationCircularBaseView *)&v27 layoutSubviews];
  v3 = [(NTKRichComplicationCircularBaseView *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = [(CDRichComplicationView *)self device];
  CLKSizeCenteredInRectForDevice();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(NTKRichComplicationDialView *)self->_backDial setFrame:v10, v12, v14, v16];
  [(NTKRichComplicationDialView *)self->_frontDial setFrame:v10, v12, v14, v16];
  [(CLKUIColoringLabel *)self->_timeLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_timeLabel frame];
  v19 = v18;
  timeLabelBottom = self->_layoutConstants.timeLabelBottom;
  if (v17 >= self->_layoutConstants.timeLabelMaxWidth)
  {
    timeLabelMaxWidth = self->_layoutConstants.timeLabelMaxWidth;
  }

  else
  {
    timeLabelMaxWidth = v17;
  }

  v22 = [(CLKUIColoringLabel *)self->_timeLabel font];
  [v22 ascender];
  *&v23 = timeLabelBottom - v23;
  v24 = ceilf(*&v23);

  [(CLKUIColoringLabel *)self->_timeLabel setFrame:(v5 - timeLabelMaxWidth) * 0.5, v24, timeLabelMaxWidth, v19];
  [(UIImageView *)self->_stopwatchImageView sizeToFit];
  [(UIImageView *)self->_stopwatchImageView frame];
  [(UIImageView *)self->_stopwatchImageView setFrame:(v5 - v25) * 0.5, (v7 - v26) * 0.5 + v7 * -0.02];
}

- (void)_handleTemplate:(id)a3 reason:(int64_t)a4
{
  v5 = a3;
  if (self->_updateToken)
  {
    v6 = [(CLKUIColoringLabel *)self->_timeLabel textProvider];
    [v6 stopUpdatesForToken:self->_updateToken];

    updateToken = self->_updateToken;
    self->_updateToken = 0;
  }

  v8 = [v5 metadata];
  v9 = [v8 objectForKeyedSubscript:@"NTKStopwatchComplicationMetadataStateKey"];

  if ([v9 isEqualToString:@"NTKStopwatchComplicationMetadataStateValue_Running"])
  {
    self->_showPlatter = 0;
    [(NTKRichComplicationDialView *)self->_backDial setHidden:0];
    [(NTKRichComplicationDialView *)self->_frontDial setHidden:0];
    v10 = [MEMORY[0x277D75348] whiteColor];
LABEL_7:
    v11 = v10;
    [(CLKUIColoringLabel *)self->_timeLabel setTextColor:v10];

    v12 = 0;
    v13 = 1;
    goto LABEL_9;
  }

  if ([v9 isEqualToString:@"NTKStopwatchComplicationMetadataStateValue_Paused"])
  {
    self->_showPlatter = 0;
    [(NTKRichComplicationDialView *)self->_backDial setHidden:0];
    [(NTKRichComplicationDialView *)self->_frontDial setHidden:0];
    v10 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
    goto LABEL_7;
  }

  v12 = 1;
  self->_showPlatter = 1;
  [(NTKRichComplicationDialView *)self->_backDial setHidden:1];
  [(NTKRichComplicationDialView *)self->_frontDial setHidden:1];
  v13 = 0;
LABEL_9:
  [(CLKUIColoringLabel *)self->_timeLabel setHidden:v12];
  [(UIImageView *)self->_stopwatchImageView setHidden:v13];
  [(NTKRichComplicationCircularBaseView *)self _updatePlatterColor];
  if (([(CLKUIColoringLabel *)self->_timeLabel isHidden]& 1) == 0)
  {
    v14 = [v5 metadata];
    v15 = [v14 objectForKeyedSubscript:@"NTKStopwatchComplicationMetadataTimeTextProviderKey"];

    v16 = [MEMORY[0x277D75348] systemOrangeColor];
    [v15 setTintColor:v16];

    [v15 setPaused:0];
    [(CLKUIColoringLabel *)self->_timeLabel setTextProvider:v15];
  }

  objc_initWeak(&location, self);
  v17 = [(CLKUIColoringLabel *)self->_timeLabel textProvider];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __71__NTKStopwatchRichComplicationBaseCircularView__handleTemplate_reason___block_invoke;
  v20[3] = &unk_27877DC58;
  objc_copyWeak(&v21, &location);
  v18 = [v17 startUpdatesWithHandler:v20];
  v19 = self->_updateToken;
  self->_updateToken = v18;

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __71__NTKStopwatchRichComplicationBaseCircularView__handleTemplate_reason___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateDialProgress];
}

- (void)_applyPausedUpdate
{
  v5.receiver = self;
  v5.super_class = NTKStopwatchRichComplicationBaseCircularView;
  [(CDRichComplicationView *)&v5 _applyPausedUpdate];
  v3 = [(CDRichComplicationView *)self paused];
  v4 = [(UIImageView *)self->_stopwatchImageView layer];
  [v4 setShouldRasterize:v3];
}

- (void)_updateDialProgress
{
  [(NTKStopwatchRichComplicationBaseCircularView *)self _stopwatchCurrentTime];
  v4 = v3;
  v5 = fmodf(v4, 120.0);
  *&v6 = fmodf(v4, 60.0);
  frontDial = self->_frontDial;
  v8 = *&v6 / 60.0;
  if (v5 >= 60.0)
  {
    LODWORD(v6) = -1.0;
    [(NTKRichComplicationDialView *)frontDial setProgressDirection:v6];
    v8 = 1.0 - v8;
  }

  else
  {
    LODWORD(v6) = 1.0;
    [(NTKRichComplicationDialView *)frontDial setProgressDirection:v6];
  }

  v10 = self->_frontDial;
  *&v9 = v8;

  [(NTKRichComplicationDialView *)v10 setProgress:v9];
}

- (int64_t)_backgroundFilterStyle
{
  v2 = [(CDRichComplicationView *)self device];
  v3 = NTKShowGossamerUI(v2);

  if (v3)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (int64_t)_foregroundFilterStyle
{
  v2 = [(CDRichComplicationView *)self device];
  v3 = NTKShowGossamerUI(v2);

  if (v3)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  v13.receiver = self;
  v13.super_class = NTKStopwatchRichComplicationBaseCircularView;
  [(NTKRichComplicationCircularBaseView *)&v13 transitionToMonochromeWithFraction:?];
  v5 = [(CDRichComplicationView *)self filterProvider];
  v6 = [v5 filtersForView:self style:-[NTKStopwatchRichComplicationBaseCircularView _backgroundFilterStyle](self fraction:{"_backgroundFilterStyle"), a3}];

  if (v6)
  {
    v7 = [(UIImageView *)self->_stopwatchImageView layer];
    [v7 setFilters:v6];

    v8 = [(NTKRichComplicationDialView *)self->_backDial layer];
    [v8 setFilters:v6];

    v9 = [(NTKRichComplicationDialView *)self->_frontDial layer];
    [v9 setFilters:v6];
  }

  v10 = [(CDRichComplicationView *)self filterProvider];
  v11 = [v10 filtersForView:self style:-[NTKStopwatchRichComplicationBaseCircularView _foregroundFilterStyle](self fraction:{"_foregroundFilterStyle"), a3}];

  if (v11)
  {
    v12 = [(CLKUIColoringLabel *)self->_timeLabel layer];
    [v12 setFilters:v11];
  }
}

- (void)updateMonochromeColor
{
  v11.receiver = self;
  v11.super_class = NTKStopwatchRichComplicationBaseCircularView;
  [(NTKRichComplicationCircularBaseView *)&v11 updateMonochromeColor];
  v3 = [(CDRichComplicationView *)self filterProvider];
  v4 = [v3 filtersForView:self style:{-[NTKStopwatchRichComplicationBaseCircularView _backgroundFilterStyle](self, "_backgroundFilterStyle")}];

  if (v4)
  {
    v5 = [(UIImageView *)self->_stopwatchImageView layer];
    [v5 setFilters:v4];

    v6 = [(NTKRichComplicationDialView *)self->_backDial layer];
    [v6 setFilters:v4];

    v7 = [(NTKRichComplicationDialView *)self->_frontDial layer];
    [v7 setFilters:v4];
  }

  v8 = [(CDRichComplicationView *)self filterProvider];
  v9 = [v8 filtersForView:self style:{-[NTKStopwatchRichComplicationBaseCircularView _foregroundFilterStyle](self, "_foregroundFilterStyle")}];

  if (v9)
  {
    v10 = [(CLKUIColoringLabel *)self->_timeLabel layer];
    [v10 setFilters:v9];
  }
}

@end