@interface NTKAlarmRichComplicationBaseCircularView
- (BOOL)_pairedDeviceSupportsComplicationSymbols;
- (NTKAlarmRichComplicationBaseCircularView)initWithFamily:(int64_t)family;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKAlarmRichComplicationBaseCircularView

- (NTKAlarmRichComplicationBaseCircularView)initWithFamily:(int64_t)family
{
  v77[2] = *MEMORY[0x277D85DE8];
  v66.receiver = self;
  v66.super_class = NTKAlarmRichComplicationBaseCircularView;
  v3 = [(NTKRichComplicationCircularBaseView *)&v66 initWithFamily:?];
  v4 = v3;
  if (!v3)
  {
    return v4;
  }

  v3->_layout = 0;
  device = [(CDRichComplicationView *)v3 device];
  v75 = 0u;
  memset(v76, 0, sizeof(v76));
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  *location = 0u;
  v68 = 0u;
  ___LayoutConstants_block_invoke_38(device, location);
  if (family == 10)
  {
    goto LABEL_8;
  }

  if (family != 12)
  {
    v7 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _LayoutConstants_cold_1(family, v7);
    }

LABEL_8:
    v6 = location;
    goto LABEL_9;
  }

  v6 = v76;
LABEL_9:
  v8 = *(v6 + 7);
  v63 = *(v6 + 6);
  v64 = v8;
  v65 = *(v6 + 8);
  v9 = *(v6 + 3);
  v59 = *(v6 + 2);
  v60 = v9;
  v10 = *(v6 + 5);
  v61 = *(v6 + 4);
  v62 = v10;
  v11 = *(v6 + 1);
  *from = *v6;
  v58 = v11;
  *&v4->_layoutConstants.designatorLabelFontSize = v10;
  *&v4->_layoutConstants.designatorLabel12HourTimeLeadingLayoutBottom = v63;
  *&v4->_layoutConstants.snoozeIconTop = v64;
  *&v4->_layoutConstants.alarmSymbolPointSize = v65;
  *&v4->_layoutConstants.timeLabel12HourTimeLeadingLayoutBottom = v11;
  *&v4->_layoutConstants.timeLabel24HourLayoutFontSize = v59;
  *&v4->_layoutConstants.timeLabel24HourLayoutBottom = v60;
  *&v4->_layoutConstants.timeLabelSnoozeLayoutMaxWidth = v61;
  *&v4->_layoutConstants.timeLabel12HourLayoutFontSize = *from;

  objc_initWeak(location, v4);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__NTKAlarmRichComplicationBaseCircularView_initWithFamily___block_invoke;
  aBlock[3] = &unk_27877DC58;
  objc_copyWeak(&v56, location);
  v51 = _Block_copy(aBlock);
  v12 = objc_alloc_init(off_27877BEF8);
  timeLabel = v4->_timeLabel;
  v4->_timeLabel = v12;

  [(CLKUIColoringLabel *)v4->_timeLabel setInTimeTravel:0];
  [(CLKUIColoringLabel *)v4->_timeLabel setNeedsResizeHandler:v51];
  [(CLKUIColoringLabel *)v4->_timeLabel setHidden:1];
  objc_initWeak(from, v4);
  v14 = v4->_timeLabel;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __59__NTKAlarmRichComplicationBaseCircularView_initWithFamily___block_invoke_2;
  v53[3] = &unk_27877DC30;
  objc_copyWeak(&v54, from);
  [(CLKUIColoringLabel *)v14 setNowProvider:v53];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(CLKUIColoringLabel *)v4->_timeLabel setTextColor:whiteColor];

  contentView = [(NTKRichComplicationCircularBaseView *)v4 contentView];
  [contentView addSubview:v4->_timeLabel];

  v17 = objc_alloc_init(off_27877BEF8);
  designatorLabel = v4->_designatorLabel;
  v4->_designatorLabel = v17;

  [(CLKUIColoringLabel *)v4->_designatorLabel setInTimeTravel:0];
  [(CLKUIColoringLabel *)v4->_designatorLabel setNeedsResizeHandler:v51];
  [(CLKUIColoringLabel *)v4->_designatorLabel setHidden:1];
  v19 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v4->_layoutConstants.designatorLabelFontSize design:*MEMORY[0x277D74420]];
  cLKFontWithAlternativePunctuation = [v19 CLKFontWithAlternativePunctuation];

  [(CLKUIColoringLabel *)v4->_designatorLabel setFont:cLKFontWithAlternativePunctuation];
  systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
  [(CLKUIColoringLabel *)v4->_designatorLabel setTextColor:systemOrangeColor];

  contentView2 = [(NTKRichComplicationCircularBaseView *)v4 contentView];
  [contentView2 addSubview:v4->_designatorLabel];

  if (![(NTKAlarmRichComplicationBaseCircularView *)v4 _pairedDeviceSupportsComplicationSymbols])
  {
    v38 = objc_alloc(MEMORY[0x277D755E8]);
    if (family == 12)
    {
      v39 = @"graphicExtraLargeAlarm";
    }

    else
    {
      v39 = @"graphicCircularAlarm";
    }

    NTKImageNamed(v39);
  }

  v22 = [MEMORY[0x277D755D0] configurationWithPointSize:v4->_layoutConstants.alarmSymbolPointSize];
  v23 = MEMORY[0x277D755D0];
  whiteColor2 = [MEMORY[0x277D75348] whiteColor];
  v77[0] = whiteColor2;
  systemOrangeColor2 = [MEMORY[0x277D75348] systemOrangeColor];
  v77[1] = systemOrangeColor2;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:2];
  v27 = [v23 configurationWithPaletteColors:v26];

  v28 = [v22 configurationByApplyingConfiguration:v27];
  v29 = [MEMORY[0x277D755B8] systemImageNamed:@"alarm" withConfiguration:v28];
  v30 = [MEMORY[0x277D755D0] configurationWithPointSize:v4->_layoutConstants.snoozeSymbolPointSize];
  v31 = [MEMORY[0x277D755B8] systemImageNamed:@"zzz" withConfiguration:v30];
  systemOrangeColor3 = [MEMORY[0x277D75348] systemOrangeColor];
  v33 = [v31 imageWithTintColor:systemOrangeColor3 renderingMode:1];

  v34 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v29];
  idleImageView = v4->_idleImageView;
  v4->_idleImageView = v34;

  v36 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v33];
  snoozeImageView = v4->_snoozeImageView;
  v4->_snoozeImageView = v36;

  [(UIImageView *)v4->_idleImageView setHidden:0];
  contentView3 = [(NTKRichComplicationCircularBaseView *)v4 contentView];
  [contentView3 addSubview:v4->_idleImageView];

  [(UIImageView *)v4->_snoozeImageView setHidden:1];
  systemOrangeColor4 = [MEMORY[0x277D75348] systemOrangeColor];
  [(UIImageView *)v4->_snoozeImageView setTintColor:systemOrangeColor4];

  contentView4 = [(NTKRichComplicationCircularBaseView *)v4 contentView];
  [contentView4 addSubview:v4->_snoozeImageView];

  v43 = [NTKRichComplicationRingProgressView alloc];
  snoozeRingStrokeWidth = v4->_layoutConstants.snoozeRingStrokeWidth;
  device2 = [(CDRichComplicationView *)v4 device];
  v46 = [(NTKRichComplicationRingProgressView *)v43 initWithFamily:family curveWidth:device2 padding:snoozeRingStrokeWidth forDevice:0.0];
  snoozeProgressView = v4->_snoozeProgressView;
  v4->_snoozeProgressView = v46;

  [(CDRichComplicationProgressView *)v4->_snoozeProgressView setFilterProvider:v4];
  [(CDRichComplicationProgressView *)v4->_snoozeProgressView setStyle:1];
  [(NTKRichComplicationRingProgressView *)v4->_snoozeProgressView setHidden:1];
  contentView5 = [(NTKRichComplicationCircularBaseView *)v4 contentView];
  [contentView5 addSubview:v4->_snoozeProgressView];

  objc_destroyWeak(&v54);
  objc_destroyWeak(from);

  objc_destroyWeak(&v56);
  objc_destroyWeak(location);
  return v4;
}

void __59__NTKAlarmRichComplicationBaseCircularView_initWithFamily___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

id __59__NTKAlarmRichComplicationBaseCircularView_initWithFamily___block_invoke_2(uint64_t a1)
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

- (BOOL)_pairedDeviceSupportsComplicationSymbols
{
  device = [(CDRichComplicationView *)self device];
  isRunningGloryGMOrLater = [device isRunningGloryGMOrLater];

  return isRunningGloryGMOrLater;
}

- (void)layoutSubviews
{
  v36.receiver = self;
  v36.super_class = NTKAlarmRichComplicationBaseCircularView;
  [(NTKRichComplicationCircularBaseView *)&v36 layoutSubviews];
  contentView = [(NTKRichComplicationCircularBaseView *)self contentView];
  [contentView bounds];
  v32 = v5;
  v34 = v4;
  v7 = v6;
  v9 = v8;

  layout = self->_layout;
  switch(layout)
  {
    case 2uLL:
      p_timeLabel12HourLayoutMaxWidth = &self->_layoutConstants.timeLabel12HourLayoutMaxWidth;
      p_timeLabel12HourDesignatorLeadingLayoutBottom = &self->_layoutConstants.timeLabel12HourDesignatorLeadingLayoutBottom;
      designatorLabel12HourDesignatorLeadingLayoutBottom = self->_layoutConstants.designatorLabel12HourDesignatorLeadingLayoutBottom;
      break;
    case 3uLL:
      p_timeLabel12HourLayoutMaxWidth = &self->_layoutConstants.timeLabel24HourLayoutMaxWidth;
      p_timeLabel12HourDesignatorLeadingLayoutBottom = &self->_layoutConstants.timeLabel24HourLayoutBottom;
      goto LABEL_6;
    case 4uLL:
      p_timeLabel12HourLayoutMaxWidth = &self->_layoutConstants.timeLabelSnoozeLayoutMaxWidth;
      p_timeLabel12HourDesignatorLeadingLayoutBottom = &self->_layoutConstants.timeLabelSnoozeLayoutBottom;
LABEL_6:
      designatorLabel12HourDesignatorLeadingLayoutBottom = 0.0;
      break;
    default:
      p_timeLabel12HourLayoutMaxWidth = &self->_layoutConstants.timeLabel12HourLayoutMaxWidth;
      p_timeLabel12HourDesignatorLeadingLayoutBottom = &self->_layoutConstants.timeLabel12HourTimeLeadingLayoutBottom;
      designatorLabel12HourDesignatorLeadingLayoutBottom = self->_layoutConstants.designatorLabel12HourTimeLeadingLayoutBottom;
      break;
  }

  v14 = *p_timeLabel12HourLayoutMaxWidth;
  v15 = *p_timeLabel12HourDesignatorLeadingLayoutBottom;
  [(CLKUIColoringLabel *)self->_timeLabel setMaxWidth:*p_timeLabel12HourLayoutMaxWidth, v32, v34];
  [(CLKUIColoringLabel *)self->_timeLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_timeLabel frame];
  v18 = v17;
  if (v16 < v14)
  {
    v14 = v16;
  }

  font = [(CLKUIColoringLabel *)self->_timeLabel font];
  [font ascender];
  *&v20 = v15 - v20;
  v21 = ceilf(*&v20);

  [(CLKUIColoringLabel *)self->_timeLabel setFrame:(v7 - v14) * 0.5, v21, v14, v18];
  [(CLKUIColoringLabel *)self->_designatorLabel sizeToFit];
  [(CLKUIColoringLabel *)self->_designatorLabel frame];
  v24 = v23;
  if (v22 >= self->_layoutConstants.designatorLabelMaxWidth)
  {
    designatorLabelMaxWidth = self->_layoutConstants.designatorLabelMaxWidth;
  }

  else
  {
    designatorLabelMaxWidth = v22;
  }

  font2 = [(CLKUIColoringLabel *)self->_designatorLabel font];
  [font2 ascender];
  *&v27 = designatorLabel12HourDesignatorLeadingLayoutBottom - v27;
  v28 = ceilf(*&v27);

  [(CLKUIColoringLabel *)self->_designatorLabel setFrame:(v7 - designatorLabelMaxWidth) * 0.5, v28, designatorLabelMaxWidth, v24];
  [(UIImageView *)self->_idleImageView sizeToFit];
  [(UIImageView *)self->_idleImageView frame];
  [(UIImageView *)self->_idleImageView setFrame:(v7 - v29) * 0.5, (v9 - v30) * 0.5];
  [(UIImageView *)self->_snoozeImageView sizeToFit];
  [(UIImageView *)self->_snoozeImageView frame];
  [(UIImageView *)self->_snoozeImageView setFrame:(v7 - v31) * 0.5, self->_layoutConstants.snoozeIconTop];
  [(NTKRichComplicationRingProgressView *)self->_snoozeProgressView setFrame:v35, v33, v7, v9];
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  templateCopy = template;
  metadata = [templateCopy metadata];
  v6 = [metadata objectForKeyedSubscript:@"NTKAlarmComplicationMetadataStateKey"];

  if ([v6 isEqualToString:@"NTKAlarmComplicationMetadataStateValue_Idle"])
  {
    self->_layout = 0;
    [(UIImageView *)self->_idleImageView setHidden:0];
    [(CLKUIColoringLabel *)self->_timeLabel setHidden:1];
    [(CLKUIColoringLabel *)self->_designatorLabel setHidden:1];
    [(UIImageView *)self->_snoozeImageView setHidden:1];
    [(NTKRichComplicationRingProgressView *)self->_snoozeProgressView setHidden:1];
    goto LABEL_17;
  }

  metadata2 = [templateCopy metadata];
  v8 = [metadata2 objectForKeyedSubscript:@"NTKAlarmComplicationMetadataTimeTextProviderKey"];

  if ([v6 isEqualToString:@"NTKAlarmComplicationMetadataStateValue_Set"])
  {
    metadata3 = [templateCopy metadata];
    v10 = [metadata3 objectForKeyedSubscript:@"NTKAlarmComplicationMetadataDesignatorTextProviderKey"];

    metadata4 = [templateCopy metadata];
    v12 = [metadata4 objectForKeyedSubscript:@"NTKAlarmComplicationMetadataDesignatorExistsKey"];
    bOOLValue = [v12 BOOLValue];

    if (v8 && v10 && bOOLValue)
    {
      [(UIImageView *)self->_idleImageView setHidden:1];
      metadata5 = [templateCopy metadata];
      v15 = [metadata5 objectForKeyedSubscript:@"NTKAlarmComplicationMetadataDesignatorLeadsKey"];
      bOOLValue2 = [v15 BOOLValue];

      if (bOOLValue2)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      self->_layout = v17;
      [(CLKUIColoringLabel *)self->_timeLabel setHidden:0];
      [(CLKUIColoringLabel *)self->_timeLabel setTextProvider:v8];
      v18 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:self->_layoutConstants.timeLabel12HourLayoutFontSize design:*MEMORY[0x277D74420]];
      cLKFontWithAlternativePunctuation = [v18 CLKFontWithAlternativePunctuation];
      [(CLKUIColoringLabel *)self->_timeLabel setFont:cLKFontWithAlternativePunctuation];

      [(CLKUIColoringLabel *)self->_designatorLabel setHidden:0];
      [(CLKUIColoringLabel *)self->_designatorLabel setTextProvider:v10];
    }

    else
    {
      self->_layout = 3;
      [(UIImageView *)self->_idleImageView setHidden:1];
      [(CLKUIColoringLabel *)self->_timeLabel setHidden:0];
      [(CLKUIColoringLabel *)self->_timeLabel setTextProvider:v8];
      v24 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:self->_layoutConstants.timeLabel24HourLayoutFontSize design:*MEMORY[0x277D74420]];
      cLKFontWithAlternativePunctuation2 = [v24 CLKFontWithAlternativePunctuation];
      [(CLKUIColoringLabel *)self->_timeLabel setFont:cLKFontWithAlternativePunctuation2];

      [(CLKUIColoringLabel *)self->_designatorLabel setHidden:1];
    }

    [(UIImageView *)self->_snoozeImageView setHidden:1];
    [(NTKRichComplicationRingProgressView *)self->_snoozeProgressView setHidden:1];
    goto LABEL_15;
  }

  if ([v6 isEqualToString:@"NTKAlarmComplicationMetadataStateValue_Snooze"])
  {
    self->_layout = 4;
    [(UIImageView *)self->_idleImageView setHidden:1];
    [(CLKUIColoringLabel *)self->_timeLabel setHidden:0];
    [(CLKUIColoringLabel *)self->_timeLabel setTextProvider:v8];
    textProvider = [(CLKUIColoringLabel *)self->_timeLabel textProvider];
    [textProvider setPaused:0];

    v21 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:self->_layoutConstants.timeLabelSnoozeLayoutFontSize design:*MEMORY[0x277D74420]];
    cLKFontWithAlternativePunctuation3 = [v21 CLKFontWithAlternativePunctuation];
    [(CLKUIColoringLabel *)self->_timeLabel setFont:cLKFontWithAlternativePunctuation3];

    [(CLKUIColoringLabel *)self->_designatorLabel setHidden:1];
    [(UIImageView *)self->_snoozeImageView setHidden:0];
    [(NTKRichComplicationRingProgressView *)self->_snoozeProgressView setHidden:0];
    metadata6 = [templateCopy metadata];
    v10 = [metadata6 objectForKeyedSubscript:@"NTKAlarmComplicationMetadataGaugeProviderKey"];

    [(CDRichComplicationProgressView *)self->_snoozeProgressView setGaugeProvider:v10];
LABEL_15:
  }

LABEL_17:
  [(NTKAlarmRichComplicationBaseCircularView *)self setNeedsLayout];
  [(NTKRichComplicationCircularBaseView *)self _updatePlatterColor];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v13.receiver = self;
  v13.super_class = NTKAlarmRichComplicationBaseCircularView;
  [(NTKRichComplicationCircularBaseView *)&v13 transitionToMonochromeWithFraction:?];
  filterProvider = [(CDRichComplicationView *)self filterProvider];
  v6 = [filterProvider filtersForView:self style:-[NTKAlarmRichComplicationBaseCircularView _backgroundFilterStyle](self fraction:{"_backgroundFilterStyle"), fraction}];

  if (v6)
  {
    layer = [(UIImageView *)self->_idleImageView layer];
    [layer setFilters:v6];

    layer2 = [(CLKUIColoringLabel *)self->_designatorLabel layer];
    [layer2 setFilters:v6];

    layer3 = [(UIImageView *)self->_snoozeImageView layer];
    [layer3 setFilters:v6];
  }

  filterProvider2 = [(CDRichComplicationView *)self filterProvider];
  v11 = [filterProvider2 filtersForView:self style:-[NTKAlarmRichComplicationBaseCircularView _foregroundFilterStyle](self fraction:{"_foregroundFilterStyle"), fraction}];

  if (v11)
  {
    layer4 = [(CLKUIColoringLabel *)self->_timeLabel layer];
    [layer4 setFilters:v11];
  }

  [(CDRichComplicationProgressView *)self->_snoozeProgressView transitionToMonochromeWithFraction:fraction];
}

- (void)updateMonochromeColor
{
  v11.receiver = self;
  v11.super_class = NTKAlarmRichComplicationBaseCircularView;
  [(NTKRichComplicationCircularBaseView *)&v11 updateMonochromeColor];
  filterProvider = [(CDRichComplicationView *)self filterProvider];
  v4 = [filterProvider filtersForView:self style:{-[NTKAlarmRichComplicationBaseCircularView _backgroundFilterStyle](self, "_backgroundFilterStyle")}];

  if (v4)
  {
    layer = [(UIImageView *)self->_idleImageView layer];
    [layer setFilters:v4];

    layer2 = [(CLKUIColoringLabel *)self->_designatorLabel layer];
    [layer2 setFilters:v4];

    layer3 = [(UIImageView *)self->_snoozeImageView layer];
    [layer3 setFilters:v4];
  }

  filterProvider2 = [(CDRichComplicationView *)self filterProvider];
  v9 = [filterProvider2 filtersForView:self style:{-[NTKAlarmRichComplicationBaseCircularView _foregroundFilterStyle](self, "_foregroundFilterStyle")}];

  if (v9)
  {
    layer4 = [(CLKUIColoringLabel *)self->_timeLabel layer];
    [layer4 setFilters:v9];
  }

  [(CDRichComplicationProgressView *)self->_snoozeProgressView updateMonochromeColor];
}

@end