@interface NTKWorldClockGraphicCircularView
+ (BOOL)_shouldUseDaytimeColoringForTransitInfo:(id)a3 atDate:(id)a4;
+ (id)_createHandsViewForDevice:(id)a3;
+ (void)initialize;
- ($513C300AF4A6862D8B434F9A964F3546)layoutConstants;
- (BOOL)_updateLabelAndDial;
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKWorldClockGraphicCircularView)initWithDevice:(id)a3 smallTickCount:(unint64_t)a4;
- (UIColor)daytimeBackgroundColor;
- (UIColor)daytimeHandsColor;
- (UIColor)daytimeHandsLargeTickColor;
- (UIColor)daytimeHandsSmallTickColor;
- (UIColor)daytimeSecondHandColor;
- (UIColor)nighttimeBackgroundColor;
- (UIColor)nighttimeHandsColor;
- (UIColor)nighttimeHandsLargeTickColor;
- (UIColor)nighttimeHandsSmallTickColor;
- (UIColor)nighttimeSecondHandColor;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)_updateCityAbbreviationColor;
- (void)_updateDayTimeColoring;
- (void)_updateHandsColor;
- (void)_updateHourLabelColors;
- (void)_updatePlatterColor;
- (void)_updateTickColor;
- (void)_updateUI;
- (void)applyConfiguration:(id)a3 animated:(BOOL)a4;
- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)pauseLiveFullColorImageView;
- (void)resumeLiveFullColorImageView;
- (void)setDaytimeBackgroundColor:(id)a3;
- (void)setDaytimeHandsColor:(id)a3;
- (void)setDaytimeHandsLargeTickColor:(id)a3;
- (void)setDaytimeHandsSmallTickColor:(id)a3;
- (void)setDaytimeSecondHandColor:(id)a3;
- (void)setFilterProvider:(id)a3;
- (void)setNighttimeBackgroundColor:(id)a3;
- (void)setNighttimeHandsColor:(id)a3;
- (void)setNighttimeHandsLargeTickColor:(id)a3;
- (void)setNighttimeHandsSmallTickColor:(id)a3;
- (void)setNighttimeSecondHandColor:(id)a3;
- (void)setTintedFraction:(double)a3;
- (void)setTintedPlatterColor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKWorldClockGraphicCircularView

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[NTKWorldClockGraphicCircularView initialize];
  }
}

void __46__NTKWorldClockGraphicCircularView_initialize__block_invoke()
{
  v0 = [MEMORY[0x277D75348] colorWithRed:0.898039222 green:0.898039222 blue:0.898039222 alpha:1.0];
  v1 = LegacyDefaultDaytimeBackgroundColor;
  LegacyDefaultDaytimeBackgroundColor = v0;

  v2 = [MEMORY[0x277D75348] colorWithWhite:0.100000001 alpha:1.0];
  v3 = LegacyDefaultNighttimeBackgroundColor;
  LegacyDefaultNighttimeBackgroundColor = v2;

  v4 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.75];
  v5 = LegacyDefaultDaytimeLargeTickColor;
  LegacyDefaultDaytimeLargeTickColor = v4;

  v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.75];
  v7 = LegacyDefaultDaytimeSmallTickColor;
  LegacyDefaultDaytimeSmallTickColor = v6;

  v8 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.75];
  v9 = LegacyDefaultNighttimeLargeTickColor;
  LegacyDefaultNighttimeLargeTickColor = v8;

  v10 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.75];
  v11 = LegacyDefaultNighttimeSmallTickColor;
  LegacyDefaultNighttimeSmallTickColor = v10;

  v12 = [MEMORY[0x277D75348] colorWithWhite:0.949019611 alpha:1.0];
  v13 = GossamerDefaultDaytimeBackgroundColor;
  GossamerDefaultDaytimeBackgroundColor = v12;

  v14 = [MEMORY[0x277D75348] colorWithWhite:0.100000001 alpha:1.0];
  v15 = GossamerDefaultNighttimeBackgroundColor;
  GossamerDefaultNighttimeBackgroundColor = v14;

  v16 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:1.0];
  v17 = GossamerDefaultDaytimeLargeTickColor;
  GossamerDefaultDaytimeLargeTickColor = v16;

  v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.75];
  v19 = GossamerDefaultDaytimeSmallTickColor;
  GossamerDefaultDaytimeSmallTickColor = v18;

  v20 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
  v21 = GossamerDefaultNighttimeLargeTickColor;
  GossamerDefaultNighttimeLargeTickColor = v20;

  v22 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.75];
  v23 = GossamerDefaultNighttimeSmallTickColor;
  GossamerDefaultNighttimeSmallTickColor = v22;
}

- (void)applyConfiguration:(id)a3 animated:(BOOL)a4
{
  v22 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v25 = [v5 transitInfo];
  [(NTKWorldClockGraphicCircularView *)self setTransitInfo:?];
  v24 = [v5 labelText];
  v6 = [v24 length];
  v7 = [(NTKWorldClockGraphicCircularView *)self cityNameLabel];
  v23 = [v7 text];
  v21 = [v23 length];
  [v7 setHidden:v6 == 0];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [(NTKWorldClockGraphicCircularView *)self hourLabels];
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        if ((v6 != 0) != [v13 isHidden])
        {
          [v13 setHidden:v6 != 0];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  [v7 setText:v24];
  if (v6 != v21)
  {
    [(NTKWorldClockGraphicCircularView *)self setNeedsLayout];
  }

  v14 = [(NTKWorldClockGraphicCircularView *)self handsView];
  v15 = [v14 secondHandView];
  v16 = [v15 isHidden];
  v17 = [v5 inTritium];
  if (v16 != v17)
  {
    [v15 setHidden:v17];
  }

  v18 = [v5 timeZone];
  [v14 setTimeZone:v18];
  v19 = [v5 overrideDate];
  v20 = 0.300000012;
  if (!v22)
  {
    v20 = 0.0;
  }

  [v14 setOverrideDate:v19 duration:v20];
  [v14 setHidden:{objc_msgSend(v5, "isPrivacy")}];
  [(NTKWorldClockGraphicCircularView *)self _updateUI];
}

- (void)dealloc
{
  [(NTKWorldClockGraphicCircularView *)self _stopClockUpdates];
  v3.receiver = self;
  v3.super_class = NTKWorldClockGraphicCircularView;
  [(NTKWorldClockGraphicCircularView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v61.receiver = self;
  v61.super_class = NTKWorldClockGraphicCircularView;
  [(NTKWorldClockGraphicCircularView *)&v61 layoutSubviews];
  [(NTKWorldClockGraphicCircularView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(NTKWorldClockGraphicCircularView *)self platter];
  v12 = [(NTKWorldClockGraphicCircularView *)self handsView];
  v62.origin.x = v4;
  v62.origin.y = v6;
  v62.size.width = v8;
  v62.size.height = v10;
  if (CGRectIsNull(v62) || (v63.origin.x = v4, v63.origin.y = v6, v63.size.width = v8, v63.size.height = v10, CGRectIsEmpty(v63)) || (v64.origin.x = v4, v64.origin.y = v6, v64.size.width = v8, v64.size.height = v10, CGRectIsInfinite(v64)))
  {
    v13 = [(NTKWorldClockGraphicCircularView *)self layer];
    [v13 setCornerRadius:0.0];

    v14 = *MEMORY[0x277CBF3A0];
    v15 = *(MEMORY[0x277CBF3A0] + 8);
    v16 = v4;
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
    [v11 setBounds:{*MEMORY[0x277CBF3A0], v15, v17, v18}];
    v19 = v18;
    v4 = v16;
    [v12 setBounds:{v14, v15, v17, v19}];
  }

  else
  {
    v70.origin.x = v4;
    v70.origin.y = v6;
    v70.size.width = v8;
    v70.size.height = v10;
    Width = CGRectGetWidth(v70);
    v71.origin.x = v4;
    v71.origin.y = v6;
    v71.size.width = v8;
    v71.size.height = v10;
    Height = CGRectGetHeight(v71);
    if (Width < Height)
    {
      Height = Width;
    }

    v55 = Height * 0.5;
    v56 = [(NTKWorldClockGraphicCircularView *)self layer];
    [v56 setCornerRadius:v55];

    v72.origin.x = v4;
    v72.origin.y = v6;
    v72.size.width = v8;
    v72.size.height = v10;
    MidX = CGRectGetMidX(v72);
    v73.origin.x = v4;
    v73.origin.y = v6;
    v73.size.width = v8;
    v73.size.height = v10;
    MidY = CGRectGetMidY(v73);
    [v11 setBounds:{v4, v6, v8, v10}];
    [v11 setCenter:{MidX, MidY}];
    [v12 setBounds:{v4, v6, v8, v10}];
    [v12 setCenter:{MidX, MidY}];
  }

  [(NTKWorldClockGraphicCircularView *)self layoutConstants];
  v20 = [(NTKWorldClockGraphicCircularView *)self dialView];
  v21 = [(NTKWorldClockGraphicCircularView *)self device];
  CLKSizeCenteredInRectForDevice();
  [v20 setFrame:?];

  v22 = [(NTKWorldClockGraphicCircularView *)self positionLabelNorthSide];
  v23 = 16;
  if (v22)
  {
    v23 = 8;
  }

  v24 = *(&self->_layoutConstants.cityNameFontSize + v23);
  v25 = [(NTKWorldClockGraphicCircularView *)self cityNameLabel];
  v26 = [v25 text];
  v27 = [v26 length];
  v28 = [v25 isHidden];
  v60 = v12;
  if (v27)
  {
    if (v28)
    {
      [v25 setHidden:0];
    }

    v29 = v11;
    [v25 sizeToFit];
    [(UILabel *)self->_cityNameLabel frame];
    v30 = [(NTKWorldClockGraphicCircularView *)self device];
    CLKRectCenteredXInRectForDevice();
    v32 = v31;
    v34 = v33;
    v36 = v35;

    [v25 _lastLineBaseline];
    [v25 setFrame:{v32, v24 - v37, v34, v36}];
  }

  else
  {
    v29 = v11;
    if ((v28 & 1) == 0)
    {
      [v25 setHidden:1];
    }
  }

  v65.origin.x = v4;
  v65.origin.y = v6;
  v65.size.width = v8;
  v65.size.height = v10;
  v38 = CGRectGetMidX(v65);
  v66.origin.x = v4;
  v66.origin.y = v6;
  v66.size.width = v8;
  v66.size.height = v10;
  v59 = CGRectGetMidY(v66);
  v39 = [(NTKWorldClockGraphicCircularView *)self device];
  v40 = [(NTKWorldClockGraphicCircularView *)self northHourLabel];
  v41 = [v40 font];

  [v41 ascender];
  [v41 capHeight];
  v42 = v10;
  v43 = v8;
  v44 = v6;
  v45 = v4;
  [v41 descender];
  v46 = [(NTKWorldClockGraphicCircularView *)self northHourLabel];
  CLKRoundForDevice();
  [v46 setCenter:{v38, 0.0 - v47}];
  v48 = [(NTKWorldClockGraphicCircularView *)self eastHourLabel];
  v67.origin.x = v4;
  v67.origin.y = v44;
  v67.size.width = v43;
  v67.size.height = v42;
  [v48 setCenter:{CGRectGetMaxY(v67) - 0.0, v59}];
  v49 = [(NTKWorldClockGraphicCircularView *)self southHourLabel];
  v68.origin.x = v4;
  v68.origin.y = v44;
  v68.size.width = v43;
  v68.size.height = v42;
  v50 = CGRectGetMaxY(v68) - 0.0;
  CLKRoundForDevice();
  [v49 setCenter:{v38, v50 - v51}];
  v52 = [(NTKWorldClockGraphicCircularView *)self westHourLabel];
  v69.origin.x = v45;
  v69.origin.y = v44;
  v69.size.width = v43;
  v69.size.height = v42;
  [v52 setCenter:{CGRectGetMinX(v69) + 0.0, v59}];
}

- (UIColor)daytimeBackgroundColor
{
  if (!self->_daytimeBackgroundColor)
  {
    if (self->_showGossamerUI)
    {
      v3 = &GossamerDefaultDaytimeBackgroundColor;
    }

    else
    {
      v3 = &LegacyDefaultDaytimeBackgroundColor;
    }

    objc_storeStrong(&self->_daytimeBackgroundColor, *v3);
  }

  daytimeBackgroundColor = self->_daytimeBackgroundColor;

  return daytimeBackgroundColor;
}

- (void)setDaytimeBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_daytimeBackgroundColor, a3);
  if ([(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {

    [(NTKWorldClockGraphicCircularView *)self _updatePlatterColor];
  }
}

- (UIColor)daytimeHandsColor
{
  daytimeHandsColor = self->_daytimeHandsColor;
  if (!daytimeHandsColor)
  {
    v4 = [MEMORY[0x277D75348] systemOrangeColor];
    v5 = self->_daytimeHandsColor;
    self->_daytimeHandsColor = v4;

    daytimeHandsColor = self->_daytimeHandsColor;
  }

  return daytimeHandsColor;
}

- (void)setDaytimeHandsColor:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_daytimeHandsColor, a3);
  if ([(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {
    v5 = [(CLKUIAnalogHandsView *)self->_handsView hourHandView];
    [v5 setColor:v7];

    v6 = [(CLKUIAnalogHandsView *)self->_handsView minuteHandView];
    [v6 setColor:v7];
  }
}

- (UIColor)daytimeSecondHandColor
{
  daytimeSecondHandColor = self->_daytimeSecondHandColor;
  if (!daytimeSecondHandColor)
  {
    v4 = [MEMORY[0x277D75348] systemOrangeColor];
    v5 = self->_daytimeSecondHandColor;
    self->_daytimeSecondHandColor = v4;

    daytimeSecondHandColor = self->_daytimeSecondHandColor;
  }

  return daytimeSecondHandColor;
}

- (void)setDaytimeSecondHandColor:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_daytimeSecondHandColor, a3);
  if ([(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {
    v5 = [(CLKUIAnalogHandsView *)self->_handsView secondHandView];
    [v5 setColor:v6];
  }
}

- (UIColor)nighttimeBackgroundColor
{
  if (!self->_nighttimeBackgroundColor)
  {
    if (self->_showGossamerUI)
    {
      v3 = &GossamerDefaultNighttimeBackgroundColor;
    }

    else
    {
      v3 = &LegacyDefaultNighttimeBackgroundColor;
    }

    objc_storeStrong(&self->_nighttimeBackgroundColor, *v3);
  }

  nighttimeBackgroundColor = self->_nighttimeBackgroundColor;

  return nighttimeBackgroundColor;
}

- (void)setNighttimeBackgroundColor:(id)a3
{
  objc_storeStrong(&self->_nighttimeBackgroundColor, a3);
  if (![(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {

    [(NTKWorldClockGraphicCircularView *)self _updatePlatterColor];
  }
}

- (UIColor)nighttimeHandsColor
{
  nighttimeHandsColor = self->_nighttimeHandsColor;
  if (!nighttimeHandsColor)
  {
    v4 = [MEMORY[0x277D75348] systemOrangeColor];
    v5 = self->_nighttimeHandsColor;
    self->_nighttimeHandsColor = v4;

    nighttimeHandsColor = self->_nighttimeHandsColor;
  }

  return nighttimeHandsColor;
}

- (void)setNighttimeHandsColor:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_nighttimeHandsColor, a3);
  if (![(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {
    v5 = [(CLKUIAnalogHandsView *)self->_handsView hourHandView];
    [v5 setColor:v7];

    v6 = [(CLKUIAnalogHandsView *)self->_handsView minuteHandView];
    [v6 setColor:v7];
  }
}

- (UIColor)nighttimeSecondHandColor
{
  nighttimeSecondHandColor = self->_nighttimeSecondHandColor;
  if (!nighttimeSecondHandColor)
  {
    v4 = [MEMORY[0x277D75348] systemOrangeColor];
    v5 = self->_nighttimeSecondHandColor;
    self->_nighttimeSecondHandColor = v4;

    nighttimeSecondHandColor = self->_nighttimeSecondHandColor;
  }

  return nighttimeSecondHandColor;
}

- (void)setNighttimeSecondHandColor:(id)a3
{
  v6 = a3;
  objc_storeStrong(&self->_nighttimeSecondHandColor, a3);
  if (![(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {
    v5 = [(CLKUIAnalogHandsView *)self->_handsView secondHandView];
    [v5 setColor:v6];
  }
}

- (UIColor)daytimeHandsLargeTickColor
{
  if (!self->_daytimeHandsLargeTickColor)
  {
    if (self->_showGossamerUI)
    {
      v3 = &GossamerDefaultDaytimeLargeTickColor;
    }

    else
    {
      v3 = &LegacyDefaultDaytimeLargeTickColor;
    }

    objc_storeStrong(&self->_daytimeHandsLargeTickColor, *v3);
  }

  daytimeHandsLargeTickColor = self->_daytimeHandsLargeTickColor;

  return daytimeHandsLargeTickColor;
}

- (void)setDaytimeHandsLargeTickColor:(id)a3
{
  objc_storeStrong(&self->_daytimeHandsLargeTickColor, a3);
  if ([(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {
    [(NTKWorldClockGraphicCircularView *)self _updateHourLabelColors];

    [(NTKWorldClockGraphicCircularView *)self _updateTickColor];
  }
}

- (UIColor)daytimeHandsSmallTickColor
{
  if (!self->_daytimeHandsSmallTickColor)
  {
    if (self->_showGossamerUI)
    {
      v3 = &GossamerDefaultDaytimeSmallTickColor;
    }

    else
    {
      v3 = &LegacyDefaultDaytimeSmallTickColor;
    }

    objc_storeStrong(&self->_daytimeHandsSmallTickColor, *v3);
  }

  daytimeHandsSmallTickColor = self->_daytimeHandsSmallTickColor;

  return daytimeHandsSmallTickColor;
}

- (void)setDaytimeHandsSmallTickColor:(id)a3
{
  objc_storeStrong(&self->_daytimeHandsSmallTickColor, a3);
  if ([(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {

    [(NTKWorldClockGraphicCircularView *)self _updateTickColor];
  }
}

- (UIColor)nighttimeHandsLargeTickColor
{
  if (!self->_nighttimeHandsLargeTickColor)
  {
    if (self->_showGossamerUI)
    {
      v3 = &GossamerDefaultNighttimeLargeTickColor;
    }

    else
    {
      v3 = &LegacyDefaultNighttimeLargeTickColor;
    }

    objc_storeStrong(&self->_nighttimeHandsLargeTickColor, *v3);
  }

  nighttimeHandsLargeTickColor = self->_nighttimeHandsLargeTickColor;

  return nighttimeHandsLargeTickColor;
}

- (void)setNighttimeHandsLargeTickColor:(id)a3
{
  objc_storeStrong(&self->_nighttimeHandsLargeTickColor, a3);
  if (![(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {
    [(NTKWorldClockGraphicCircularView *)self _updateHourLabelColors];

    [(NTKWorldClockGraphicCircularView *)self _updateTickColor];
  }
}

- (UIColor)nighttimeHandsSmallTickColor
{
  if (!self->_nighttimeHandsSmallTickColor)
  {
    if (self->_showGossamerUI)
    {
      v3 = &GossamerDefaultNighttimeSmallTickColor;
    }

    else
    {
      v3 = &LegacyDefaultNighttimeSmallTickColor;
    }

    objc_storeStrong(&self->_nighttimeHandsSmallTickColor, *v3);
  }

  nighttimeHandsSmallTickColor = self->_nighttimeHandsSmallTickColor;

  return nighttimeHandsSmallTickColor;
}

- (void)setNighttimeHandsSmallTickColor:(id)a3
{
  objc_storeStrong(&self->_nighttimeHandsSmallTickColor, a3);
  if (![(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {

    [(NTKWorldClockGraphicCircularView *)self _updateTickColor];
  }
}

- (void)setTintedFraction:(double)a3
{
  v4 = fmin(fmax(a3, 0.0), 1.0);
  if (self->_tintedFraction != v4)
  {
    self->_tintedFraction = v4;
    [(NTKWorldClockGraphicCircularView *)self _updatePlatterColor];
    [(NTKWorldClockGraphicCircularView *)self _updateCityAbbreviationColor];
    [(NTKWorldClockGraphicCircularView *)self _updateHourLabelColors];
    [(NTKWorldClockGraphicCircularView *)self _updateTickColor];

    [(NTKWorldClockGraphicCircularView *)self _updateHandsColor];
  }
}

- (void)setTintedPlatterColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_tintedPlatterColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_tintedPlatterColor, a3);
    [(NTKWorldClockGraphicCircularView *)self _updatePlatterColor];
  }
}

- (NTKWorldClockGraphicCircularView)initWithDevice:(id)a3 smallTickCount:(unint64_t)a4
{
  v69[4] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v68.receiver = self;
  v68.super_class = NTKWorldClockGraphicCircularView;
  v8 = [(NTKWorldClockGraphicCircularView *)&v68 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, a3);
    v9->_showGossamerUI = NTKShowGossamerUI(v7);
    v66 = 0;
    v67 = 0;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v10 = objc_opt_class();
    if (v10)
    {
      [v10 _layoutConstantsForDevice:v7];
    }

    else
    {
      v66 = 0;
      v67 = 0;
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
    }

    *&v9->_layoutConstants.cityNameFontSize = v63;
    v11 = v67;
    v13 = v64;
    v12 = v65;
    v9->_layoutConstants.majorTickSize = v66;
    v9->_layoutConstants.minorTickSize = v11;
    *&v9->_layoutConstants.cityNameBaselineOffsetSouthSide = v13;
    *&v9->_layoutConstants.hourInset = v12;
    [(NTKWorldClockGraphicCircularView *)v9 setClipsToBounds:1];
    v14 = objc_alloc_init(MEMORY[0x277D75D18]);
    [(UIView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NTKWorldClockGraphicCircularView *)v9 addSubview:v14];
    platter = v9->_platter;
    v9->_platter = v14;
    v58 = v14;

    v16 = [objc_opt_class() _createHandsViewForDevice:v7];
    v17 = [(NTKWorldClockGraphicCircularView *)v9 daytimeHandsColor];
    v18 = [v16 minuteHandView];
    v57 = v17;
    [v18 setColor:v17];

    v19 = [v16 hourHandView];
    [v19 setColor:v17];

    objc_storeStrong(&v9->_handsView, v16);
    [(NTKWorldClockGraphicCircularView *)v9 addSubview:v9->_handsView];
    v20 = [[NTKRichComplicationDialView alloc] initWithLargeTickCount:12 smallTickCountPerLargeTick:a4 largeTickSize:v9->_layoutConstants.majorTickSize.width smallTickSize:v9->_layoutConstants.majorTickSize.height dialRange:v9->_layoutConstants.minorTickSize.width startAngle:v9->_layoutConstants.minorTickSize.height, 6.28318531, 0.0];
    dialView = v9->_dialView;
    v9->_dialView = v20;
    v56 = v20;

    [(NTKWorldClockGraphicCircularView *)v9 insertSubview:v9->_dialView belowSubview:v9->_handsView];
    v22 = objc_alloc_init(MEMORY[0x277D756B8]);
    v23 = *MEMORY[0x277D74420];
    v24 = MEMORY[0x277CBB6C0];
    v25 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v9->_layoutConstants.cityNameFontSize design:*MEMORY[0x277D74420]];
    v26 = [v25 CLKFontWithAlternativePunctuation];
    [(UILabel *)v22 setFont:v26];

    cityNameLabel = v9->_cityNameLabel;
    v9->_cityNameLabel = v22;
    v55 = v22;

    [(NTKWorldClockGraphicCircularView *)v9 insertSubview:v9->_cityNameLabel belowSubview:v9->_handsView];
    v28 = [MEMORY[0x277CBBB08] systemFontOfSize:*v24 weight:v9->_layoutConstants.hourFontSize design:v23];
    v29 = [v28 CLKFontWithAlternativePunctuation];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__NTKWorldClockGraphicCircularView_initWithDevice_smallTickCount___block_invoke;
    aBlock[3] = &unk_278783A40;
    v60 = v29;
    v30 = v9;
    v61 = v30;
    v62 = v16;
    v54 = v16;
    v53 = v29;
    v31 = _Block_copy(aBlock);
    v32 = [objc_opt_class() northLabelNumber];
    v33 = v31[2](v31, v32);
    v34 = v30[67];
    v30[67] = v33;

    v35 = [v30[67] layer];
    [v35 setAnchorPoint:{0.5, 0.0}];

    v36 = [objc_opt_class() eastLabelNumber];
    v37 = v31[2](v31, v36);
    v38 = v30[68];
    v30[68] = v37;

    v39 = [v30[68] layer];
    [v39 setAnchorPoint:{1.0, 0.5}];

    v40 = [objc_opt_class() southLabelNumber];
    v41 = v31[2](v31, v40);
    v42 = v30[70];
    v30[70] = v41;

    v43 = [v30[70] layer];
    [v43 setAnchorPoint:{0.5, 1.0}];

    v44 = [objc_opt_class() westLabelNumber];
    v45 = v31[2](v31, v44);
    v46 = v30[69];
    v30[69] = v45;

    v47 = [v30[69] layer];
    [v47 setAnchorPoint:{0.0, 0.5}];

    v69[0] = v30[67];
    v69[1] = v30[68];
    v69[2] = v30[70];
    v69[3] = v30[69];
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:4];
    v49 = v30[63];
    v30[63] = v48;

    v50 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.25];
    v51 = v30[65];
    v30[65] = v50;

    [v30 _updateUI];
  }

  return v9;
}

id __66__NTKWorldClockGraphicCircularView_initWithDevice_smallTickCount___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCABB8] localizedStringFromNumber:a2 numberStyle:0];
  v4 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v4 setFont:*(a1 + 32)];
  [v4 setText:v3];
  [v4 sizeToFit];
  [v4 setHidden:1];
  [*(a1 + 40) insertSubview:v4 belowSubview:*(a1 + 48)];

  return v4;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKWorldClockGraphicCircularView;
  [(NTKWorldClockGraphicCircularView *)&v4 traitCollectionDidChange:a3];
  [(NTKWorldClockGraphicCircularView *)self setNeedsLayout];
}

- (void)pauseLiveFullColorImageView
{
  v3 = [(NTKWorldClockGraphicCircularView *)self handsView];
  [v3 setFrozen:1];
  [(NTKWorldClockGraphicCircularView *)self _stopClockUpdates];
}

- (void)resumeLiveFullColorImageView
{
  v3 = [(NTKWorldClockGraphicCircularView *)self handsView];
  [v3 setFrozen:0];
  [(NTKWorldClockGraphicCircularView *)self _startClockUpdates];
  [(NTKWorldClockGraphicCircularView *)self _updateUI];
}

- (void)configureWithImageProvider:(id)a3 reason:(int64_t)a4
{
  v20 = a3;
  v5 = [v20 metadata];
  v6 = [v5 objectForKey:@"NTKWorldClockGraphicCircularViewOverrideDateKey"];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v20 tritium_isTritiumInactiveFullColorImageProvider];
      v8 = v6;
      v9 = v8;
LABEL_7:
      v11 = v8;
      goto LABEL_9;
    }
  }

  v7 = [v20 tritium_isTritiumInactiveFullColorImageProvider];
  if (v7)
  {
    v10 = [MEMORY[0x277CBBAD8] complicationDate];
    if (v10)
    {
      v8 = v10;
      v9 = v8;
      v7 = 1;
      goto LABEL_7;
    }
  }

  v9 = +[NTKDate faceDate];
  v11 = 0;
LABEL_9:
  v12 = +[NTKLocationManager sharedLocationManager];
  v13 = [v12 currentLocation];
  v14 = v13;
  if (v13)
  {
    [v13 coordinate];
    v16 = v15;
    [v14 coordinate];
  }

  else
  {
    v16 = -180.0;
  }

  v17 = [off_27877BED8 transitInfoForDate:v9 location:v16];
  v18 = [MEMORY[0x277CBEBB0] localTimeZone];
  v19 = [[NTKWorldClockGraphicCircularViewConfiguration alloc] initWithTimeZone:v18 labelText:0 transitInfo:v17 inTritium:v7 overrideDate:v11 isPrivacy:0];
  [(NTKWorldClockGraphicCircularView *)self applyConfiguration:v19 animated:NTKIsDaemonOrFaceSnapshotService() ^ 1];
}

- (void)setFilterProvider:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_filterProvider, obj);
    v5 = [(NTKWorldClockGraphicCircularView *)self handsView];
    [v5 setFilterProvider:obj];
  }
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  [(NTKWorldClockGraphicCircularView *)self setMonochromeFraction:a3];
  [(NTKWorldClockGraphicCircularView *)self _updatePlatterColor];
  [(NTKWorldClockGraphicCircularView *)self _updateCityAbbreviationColor];
  [(NTKWorldClockGraphicCircularView *)self _updateHourLabelColors];
  [(NTKWorldClockGraphicCircularView *)self _updateTickColor];

  [(NTKWorldClockGraphicCircularView *)self _updateHandsColor];
}

- (void)updateMonochromeColor
{
  [(NTKWorldClockGraphicCircularView *)self setMonochromeFraction:1.0];
  [(NTKWorldClockGraphicCircularView *)self _updatePlatterColor];
  [(NTKWorldClockGraphicCircularView *)self _updateCityAbbreviationColor];
  [(NTKWorldClockGraphicCircularView *)self _updateHourLabelColors];
  [(NTKWorldClockGraphicCircularView *)self _updateTickColor];

  [(NTKWorldClockGraphicCircularView *)self _updateHandsColor];
}

+ (id)_createHandsViewForDevice:(id)a3
{
  v3 = a3;
  v4 = [(NTKWorldClockRichComplicationHandsBaseView *)[NTKWorldClockRichComplicationHandsView alloc] initForDevice:v3];

  return v4;
}

+ (BOOL)_shouldUseDaytimeColoringForTransitInfo:(id)a3 atDate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 rise];
  if (v7)
  {
  }

  else
  {
    v8 = [v5 set];

    if (!v8)
    {
      v16 = [v5 constantSun] == 2;
LABEL_14:
      v20 = v16;
      goto LABEL_17;
    }
  }

  v9 = [v5 rise];
  if (v9)
  {
    v10 = v9;
    v11 = [v5 set];

    if (v11)
    {
      v12 = [v5 rise];
      v13 = [v6 compare:v12];

      v14 = [v5 set];
      v15 = [v6 compare:v14];

      v16 = v13 < 2 && v15 == -1;
      goto LABEL_14;
    }
  }

  v17 = [v5 rise];

  if (v17)
  {
    v18 = [v5 rise];
    v19 = [v6 compare:v18];

    v20 = v19 < 2;
    goto LABEL_17;
  }

  v21 = [v5 set];

  if (v21)
  {
    v22 = [v5 set];
    v23 = [v6 compare:v22];

    v16 = v23 == -1;
    goto LABEL_14;
  }

  v25 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [NTKWorldClockGraphicCircularView _shouldUseDaytimeColoringForTransitInfo:v25 atDate:?];
  }

  v20 = 1;
LABEL_17:

  return v20;
}

- (void)_startClockUpdates
{
  v3 = [(NTKWorldClockGraphicCircularView *)self clockTimerToken];
  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = [MEMORY[0x277CBB700] sharedInstance];
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __54__NTKWorldClockGraphicCircularView__startClockUpdates__block_invoke;
    v8 = &unk_27877ED48;
    objc_copyWeak(&v9, &location);
    v3 = [v4 startUpdatesWithUpdateFrequency:0 withHandler:&v5 identificationLog:&__block_literal_global_80_0];

    [(NTKWorldClockGraphicCircularView *)self setClockTimerToken:v3, v5, v6, v7, v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __54__NTKWorldClockGraphicCircularView__startClockUpdates__block_invoke(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateUI];
}

- (void)_stopClockUpdates
{
  v3 = [(NTKWorldClockGraphicCircularView *)self clockTimerToken];
  if (v3)
  {
    v5 = v3;
    v4 = [MEMORY[0x277CBB700] sharedInstance];
    [v4 stopUpdatesForToken:v5];

    [(NTKWorldClockGraphicCircularView *)self setClockTimerToken:0];
    v3 = v5;
  }
}

- (void)_updateDayTimeColoring
{
  v3 = [(NTKWorldClockGraphicCircularView *)self hasPerformedColoringFirstPass];
  v10 = [(NTKWorldClockGraphicCircularView *)self handsView];
  v4 = [v10 overrideDate];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = +[NTKDate faceDate];
  }

  v7 = v6;
  v8 = [(NTKWorldClockGraphicCircularView *)self transitInfo];
  v9 = [objc_opt_class() _shouldUseDaytimeColoringForTransitInfo:v8 atDate:v7];
  if (!v3 || v9 != [(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {
    [(NTKWorldClockGraphicCircularView *)self setUseDayTimeColoring:v9];
    [(NTKWorldClockGraphicCircularView *)self _updatePlatterColor];
    [(NTKWorldClockGraphicCircularView *)self _updateCityAbbreviationColor];
    [(NTKWorldClockGraphicCircularView *)self _updateHourLabelColors];
    [(NTKWorldClockGraphicCircularView *)self _updateTickColor];
    [(NTKWorldClockGraphicCircularView *)self _updateHandsColor];
    [(NTKWorldClockGraphicCircularView *)self setColoringFirstPassPerformed:1];
  }
}

- (BOOL)_updateLabelAndDial
{
  v3 = [(NTKWorldClockRichComplicationHandsBaseView *)self->_handsView displayedHour];
  v4 = [(NTKWorldClockGraphicCircularView *)self cityNameLabel];
  v5 = [v4 text];
  if (![v5 length])
  {
    goto LABEL_8;
  }

  v6 = [(NTKWorldClockRichComplicationHandsBaseView *)self->_handsView isHidden];
  v7 = (v3 - 3) < 6 || (v3 - 15) < 6;
  if (v6)
  {
    v7 = 1;
  }

  if (self->_positionLabelNorthSide != v7)
  {
    self->_positionLabelNorthSide = v7;
    v8 = 1;
  }

  else
  {
LABEL_8:
    v8 = 0;
  }

  return v8;
}

- (void)_updateUI
{
  [(NTKWorldClockGraphicCircularView *)self _updateDayTimeColoring];
  if ([(NTKWorldClockGraphicCircularView *)self _updateLabelAndDial])
  {

    [(NTKWorldClockGraphicCircularView *)self setNeedsLayout];
  }
}

- (void)_updateCityAbbreviationColor
{
  v7 = [(NTKWorldClockGraphicCircularView *)self cityNameLabel];
  if ([(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v3 = ;
  v4 = [(NTKWorldClockGraphicCircularView *)self filterProvider];
  v5 = [v4 colorForView:v7 accented:0];
  [(NTKWorldClockGraphicCircularView *)self tintedFraction];
  v6 = NTKInterpolateBetweenColors();
  [v7 setTextColor:v6];
}

- (void)_updateHandsColor
{
  v3 = [(NTKWorldClockGraphicCircularView *)self handsView];
  v4 = [(NTKWorldClockGraphicCircularView *)self filterProvider];
  if ([(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {
    [(NTKWorldClockGraphicCircularView *)self daytimeHandsColor];
  }

  else
  {
    [(NTKWorldClockGraphicCircularView *)self nighttimeHandsColor];
  }
  v5 = ;
  v6 = [v4 colorForView:v3 accented:1];
  [(NTKWorldClockGraphicCircularView *)self monochromeFraction];
  v7 = NTKInterpolateBetweenColors();

  if ([objc_opt_class() showsSecondHand])
  {
    v8 = [v4 colorForView:v3 accented:1];
    [(NTKWorldClockGraphicCircularView *)self tintedFraction];
    v9 = NTKInterpolateBetweenColors();
    v10 = [v3 secondHandView];
    [v10 setColor:v9];

    v11 = [v4 colorForView:v3 accented:0];
    v12 = [v3 hourHandView];
    [v12 setColor:v11];

    v13 = [v3 minuteHandView];
    [v13 setColor:v11];
  }

  else
  {
    v8 = [v4 colorForView:v3 accented:0];
    [(NTKWorldClockGraphicCircularView *)self tintedFraction];
    v11 = NTKInterpolateBetweenColors();
    v14 = [v3 hourHandView];
    [v14 setColor:v11];

    v15 = [v3 minuteHandView];
    [v15 setColor:v11];

    [v3 setPegDotColor:v8];
  }

  v16 = [(NTKWorldClockGraphicCircularView *)self platter];
  v17 = [v16 backgroundColor];

  v18 = [(NTKWorldClockGraphicCircularView *)self useDayTimeColoring];
  v20 = 1;
  if (v18)
  {
    if (v17)
    {
      v23 = 0.0;
      [v17 getRed:0 green:0 blue:0 alpha:&v23];
      v19 = v23;
      if (v23 >= 0.7)
      {
        CLKContrastRatioForColors();
        v20 = v19 > 1.7;
      }
    }
  }

  v21 = [v3 hourHandView];
  [v21 setShadowsHidden:v20];

  v22 = [v3 minuteHandView];
  [v22 setShadowsHidden:v20];
}

- (void)_updateHourLabelColors
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(NTKWorldClockGraphicCircularView *)self dialView];
  if ([(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {
    [(NTKWorldClockGraphicCircularView *)self daytimeHandsLargeTickColor];
  }

  else
  {
    [(NTKWorldClockGraphicCircularView *)self nighttimeHandsLargeTickColor];
  }
  v4 = ;
  v5 = [(NTKWorldClockGraphicCircularView *)self filterProvider];
  v6 = [v5 colorForView:v3 accented:0];
  [(NTKWorldClockGraphicCircularView *)self tintedFraction];
  v7 = NTKInterpolateBetweenColors();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(NTKWorldClockGraphicCircularView *)self hourLabels];
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v13 + 1) + 8 * v12++) setTextColor:v7];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_updatePlatterColor
{
  if ([(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {
    v6 = [(NTKWorldClockGraphicCircularView *)self daytimeBackgroundColor];
    [(NTKWorldClockGraphicCircularView *)self tintedPlatterColor];
  }

  else
  {
    v6 = [(NTKWorldClockGraphicCircularView *)self nighttimeBackgroundColor];
    [MEMORY[0x277D75348] clearColor];
  }
  v3 = ;
  [(NTKWorldClockGraphicCircularView *)self tintedFraction];
  v4 = NTKInterpolateBetweenColors();
  v5 = [(NTKWorldClockGraphicCircularView *)self platter];
  [v5 setBackgroundColor:v4];
}

- (void)_updateTickColor
{
  v15 = [(NTKWorldClockGraphicCircularView *)self dialView];
  v3 = [(NTKWorldClockGraphicCircularView *)self useDayTimeColoring];
  v4 = [(NTKWorldClockGraphicCircularView *)self filterProvider];
  [(NTKWorldClockGraphicCircularView *)self tintedFraction];
  v5 = [v4 colorForView:v15 accented:0];
  if (v3)
  {
    [(NTKWorldClockGraphicCircularView *)self daytimeHandsLargeTickColor];
  }

  else
  {
    [(NTKWorldClockGraphicCircularView *)self nighttimeHandsLargeTickColor];
  }
  v6 = ;
  v7 = NTKInterpolateBetweenColors();

  if (v3)
  {
    [(NTKWorldClockGraphicCircularView *)self daytimeHandsSmallTickColor];
  }

  else
  {
    [(NTKWorldClockGraphicCircularView *)self nighttimeHandsSmallTickColor];
  }
  v8 = ;
  v9 = [v5 colorWithAlphaComponent:0.75];
  v10 = NTKInterpolateBetweenColors();

  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  v11 = [v7 CGColor];
  v12 = [v15 largeTickLayer];
  [v12 setBackgroundColor:v11];

  v13 = [v10 CGColor];
  v14 = [v15 smallTickLayer];
  [v14 setBackgroundColor:v13];

  [MEMORY[0x277CD9FF0] commit];
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

- ($513C300AF4A6862D8B434F9A964F3546)layoutConstants
{
  v3 = *&self[8].var4;
  *&retstr->var4 = *&self[8].var2;
  retstr->var6 = v3;
  retstr->var7 = self[8].var6;
  v4 = *&self[8].var0;
  *&retstr->var0 = self[7].var7;
  *&retstr->var2 = v4;
  return self;
}

@end