@interface NTKWorldClockGraphicCircularView
+ (BOOL)_shouldUseDaytimeColoringForTransitInfo:(id)info atDate:(id)date;
+ (id)_createHandsViewForDevice:(id)device;
+ (void)initialize;
- ($513C300AF4A6862D8B434F9A964F3546)layoutConstants;
- (BOOL)_updateLabelAndDial;
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKWorldClockGraphicCircularView)initWithDevice:(id)device smallTickCount:(unint64_t)count;
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
- (void)applyConfiguration:(id)configuration animated:(BOOL)animated;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)dealloc;
- (void)layoutSubviews;
- (void)pauseLiveFullColorImageView;
- (void)resumeLiveFullColorImageView;
- (void)setDaytimeBackgroundColor:(id)color;
- (void)setDaytimeHandsColor:(id)color;
- (void)setDaytimeHandsLargeTickColor:(id)color;
- (void)setDaytimeHandsSmallTickColor:(id)color;
- (void)setDaytimeSecondHandColor:(id)color;
- (void)setFilterProvider:(id)provider;
- (void)setNighttimeBackgroundColor:(id)color;
- (void)setNighttimeHandsColor:(id)color;
- (void)setNighttimeHandsLargeTickColor:(id)color;
- (void)setNighttimeHandsSmallTickColor:(id)color;
- (void)setNighttimeSecondHandColor:(id)color;
- (void)setTintedFraction:(double)fraction;
- (void)setTintedPlatterColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
- (void)transitionToMonochromeWithFraction:(double)fraction;
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

- (void)applyConfiguration:(id)configuration animated:(BOOL)animated
{
  animatedCopy = animated;
  v31 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  transitInfo = [configurationCopy transitInfo];
  [(NTKWorldClockGraphicCircularView *)self setTransitInfo:?];
  labelText = [configurationCopy labelText];
  v6 = [labelText length];
  cityNameLabel = [(NTKWorldClockGraphicCircularView *)self cityNameLabel];
  text = [cityNameLabel text];
  v21 = [text length];
  [cityNameLabel setHidden:v6 == 0];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  hourLabels = [(NTKWorldClockGraphicCircularView *)self hourLabels];
  v9 = [hourLabels countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(hourLabels);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        if ((v6 != 0) != [v13 isHidden])
        {
          [v13 setHidden:v6 != 0];
        }
      }

      v10 = [hourLabels countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v10);
  }

  [cityNameLabel setText:labelText];
  if (v6 != v21)
  {
    [(NTKWorldClockGraphicCircularView *)self setNeedsLayout];
  }

  handsView = [(NTKWorldClockGraphicCircularView *)self handsView];
  secondHandView = [handsView secondHandView];
  isHidden = [secondHandView isHidden];
  inTritium = [configurationCopy inTritium];
  if (isHidden != inTritium)
  {
    [secondHandView setHidden:inTritium];
  }

  timeZone = [configurationCopy timeZone];
  [handsView setTimeZone:timeZone];
  overrideDate = [configurationCopy overrideDate];
  v20 = 0.300000012;
  if (!animatedCopy)
  {
    v20 = 0.0;
  }

  [handsView setOverrideDate:overrideDate duration:v20];
  [handsView setHidden:{objc_msgSend(configurationCopy, "isPrivacy")}];
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
  platter = [(NTKWorldClockGraphicCircularView *)self platter];
  handsView = [(NTKWorldClockGraphicCircularView *)self handsView];
  v62.origin.x = v4;
  v62.origin.y = v6;
  v62.size.width = v8;
  v62.size.height = v10;
  if (CGRectIsNull(v62) || (v63.origin.x = v4, v63.origin.y = v6, v63.size.width = v8, v63.size.height = v10, CGRectIsEmpty(v63)) || (v64.origin.x = v4, v64.origin.y = v6, v64.size.width = v8, v64.size.height = v10, CGRectIsInfinite(v64)))
  {
    layer = [(NTKWorldClockGraphicCircularView *)self layer];
    [layer setCornerRadius:0.0];

    v14 = *MEMORY[0x277CBF3A0];
    v15 = *(MEMORY[0x277CBF3A0] + 8);
    v16 = v4;
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
    [platter setBounds:{*MEMORY[0x277CBF3A0], v15, v17, v18}];
    v19 = v18;
    v4 = v16;
    [handsView setBounds:{v14, v15, v17, v19}];
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
    layer2 = [(NTKWorldClockGraphicCircularView *)self layer];
    [layer2 setCornerRadius:v55];

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
    [platter setBounds:{v4, v6, v8, v10}];
    [platter setCenter:{MidX, MidY}];
    [handsView setBounds:{v4, v6, v8, v10}];
    [handsView setCenter:{MidX, MidY}];
  }

  [(NTKWorldClockGraphicCircularView *)self layoutConstants];
  dialView = [(NTKWorldClockGraphicCircularView *)self dialView];
  device = [(NTKWorldClockGraphicCircularView *)self device];
  CLKSizeCenteredInRectForDevice();
  [dialView setFrame:?];

  positionLabelNorthSide = [(NTKWorldClockGraphicCircularView *)self positionLabelNorthSide];
  v23 = 16;
  if (positionLabelNorthSide)
  {
    v23 = 8;
  }

  v24 = *(&self->_layoutConstants.cityNameFontSize + v23);
  cityNameLabel = [(NTKWorldClockGraphicCircularView *)self cityNameLabel];
  text = [cityNameLabel text];
  v27 = [text length];
  isHidden = [cityNameLabel isHidden];
  v60 = handsView;
  if (v27)
  {
    if (isHidden)
    {
      [cityNameLabel setHidden:0];
    }

    v29 = platter;
    [cityNameLabel sizeToFit];
    [(UILabel *)self->_cityNameLabel frame];
    device2 = [(NTKWorldClockGraphicCircularView *)self device];
    CLKRectCenteredXInRectForDevice();
    v32 = v31;
    v34 = v33;
    v36 = v35;

    [cityNameLabel _lastLineBaseline];
    [cityNameLabel setFrame:{v32, v24 - v37, v34, v36}];
  }

  else
  {
    v29 = platter;
    if ((isHidden & 1) == 0)
    {
      [cityNameLabel setHidden:1];
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
  device3 = [(NTKWorldClockGraphicCircularView *)self device];
  northHourLabel = [(NTKWorldClockGraphicCircularView *)self northHourLabel];
  font = [northHourLabel font];

  [font ascender];
  [font capHeight];
  v42 = v10;
  v43 = v8;
  v44 = v6;
  v45 = v4;
  [font descender];
  northHourLabel2 = [(NTKWorldClockGraphicCircularView *)self northHourLabel];
  CLKRoundForDevice();
  [northHourLabel2 setCenter:{v38, 0.0 - v47}];
  eastHourLabel = [(NTKWorldClockGraphicCircularView *)self eastHourLabel];
  v67.origin.x = v4;
  v67.origin.y = v44;
  v67.size.width = v43;
  v67.size.height = v42;
  [eastHourLabel setCenter:{CGRectGetMaxY(v67) - 0.0, v59}];
  southHourLabel = [(NTKWorldClockGraphicCircularView *)self southHourLabel];
  v68.origin.x = v4;
  v68.origin.y = v44;
  v68.size.width = v43;
  v68.size.height = v42;
  v50 = CGRectGetMaxY(v68) - 0.0;
  CLKRoundForDevice();
  [southHourLabel setCenter:{v38, v50 - v51}];
  westHourLabel = [(NTKWorldClockGraphicCircularView *)self westHourLabel];
  v69.origin.x = v45;
  v69.origin.y = v44;
  v69.size.width = v43;
  v69.size.height = v42;
  [westHourLabel setCenter:{CGRectGetMinX(v69) + 0.0, v59}];
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

- (void)setDaytimeBackgroundColor:(id)color
{
  objc_storeStrong(&self->_daytimeBackgroundColor, color);
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
    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    v5 = self->_daytimeHandsColor;
    self->_daytimeHandsColor = systemOrangeColor;

    daytimeHandsColor = self->_daytimeHandsColor;
  }

  return daytimeHandsColor;
}

- (void)setDaytimeHandsColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_daytimeHandsColor, color);
  if ([(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {
    hourHandView = [(CLKUIAnalogHandsView *)self->_handsView hourHandView];
    [hourHandView setColor:colorCopy];

    minuteHandView = [(CLKUIAnalogHandsView *)self->_handsView minuteHandView];
    [minuteHandView setColor:colorCopy];
  }
}

- (UIColor)daytimeSecondHandColor
{
  daytimeSecondHandColor = self->_daytimeSecondHandColor;
  if (!daytimeSecondHandColor)
  {
    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    v5 = self->_daytimeSecondHandColor;
    self->_daytimeSecondHandColor = systemOrangeColor;

    daytimeSecondHandColor = self->_daytimeSecondHandColor;
  }

  return daytimeSecondHandColor;
}

- (void)setDaytimeSecondHandColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_daytimeSecondHandColor, color);
  if ([(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {
    secondHandView = [(CLKUIAnalogHandsView *)self->_handsView secondHandView];
    [secondHandView setColor:colorCopy];
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

- (void)setNighttimeBackgroundColor:(id)color
{
  objc_storeStrong(&self->_nighttimeBackgroundColor, color);
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
    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    v5 = self->_nighttimeHandsColor;
    self->_nighttimeHandsColor = systemOrangeColor;

    nighttimeHandsColor = self->_nighttimeHandsColor;
  }

  return nighttimeHandsColor;
}

- (void)setNighttimeHandsColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_nighttimeHandsColor, color);
  if (![(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {
    hourHandView = [(CLKUIAnalogHandsView *)self->_handsView hourHandView];
    [hourHandView setColor:colorCopy];

    minuteHandView = [(CLKUIAnalogHandsView *)self->_handsView minuteHandView];
    [minuteHandView setColor:colorCopy];
  }
}

- (UIColor)nighttimeSecondHandColor
{
  nighttimeSecondHandColor = self->_nighttimeSecondHandColor;
  if (!nighttimeSecondHandColor)
  {
    systemOrangeColor = [MEMORY[0x277D75348] systemOrangeColor];
    v5 = self->_nighttimeSecondHandColor;
    self->_nighttimeSecondHandColor = systemOrangeColor;

    nighttimeSecondHandColor = self->_nighttimeSecondHandColor;
  }

  return nighttimeSecondHandColor;
}

- (void)setNighttimeSecondHandColor:(id)color
{
  colorCopy = color;
  objc_storeStrong(&self->_nighttimeSecondHandColor, color);
  if (![(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {
    secondHandView = [(CLKUIAnalogHandsView *)self->_handsView secondHandView];
    [secondHandView setColor:colorCopy];
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

- (void)setDaytimeHandsLargeTickColor:(id)color
{
  objc_storeStrong(&self->_daytimeHandsLargeTickColor, color);
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

- (void)setDaytimeHandsSmallTickColor:(id)color
{
  objc_storeStrong(&self->_daytimeHandsSmallTickColor, color);
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

- (void)setNighttimeHandsLargeTickColor:(id)color
{
  objc_storeStrong(&self->_nighttimeHandsLargeTickColor, color);
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

- (void)setNighttimeHandsSmallTickColor:(id)color
{
  objc_storeStrong(&self->_nighttimeHandsSmallTickColor, color);
  if (![(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {

    [(NTKWorldClockGraphicCircularView *)self _updateTickColor];
  }
}

- (void)setTintedFraction:(double)fraction
{
  v4 = fmin(fmax(fraction, 0.0), 1.0);
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

- (void)setTintedPlatterColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_tintedPlatterColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_tintedPlatterColor, color);
    [(NTKWorldClockGraphicCircularView *)self _updatePlatterColor];
  }
}

- (NTKWorldClockGraphicCircularView)initWithDevice:(id)device smallTickCount:(unint64_t)count
{
  v69[4] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v68.receiver = self;
  v68.super_class = NTKWorldClockGraphicCircularView;
  v8 = [(NTKWorldClockGraphicCircularView *)&v68 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
    v9->_showGossamerUI = NTKShowGossamerUI(deviceCopy);
    v66 = 0;
    v67 = 0;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    v10 = objc_opt_class();
    if (v10)
    {
      [v10 _layoutConstantsForDevice:deviceCopy];
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

    v16 = [objc_opt_class() _createHandsViewForDevice:deviceCopy];
    daytimeHandsColor = [(NTKWorldClockGraphicCircularView *)v9 daytimeHandsColor];
    minuteHandView = [v16 minuteHandView];
    v57 = daytimeHandsColor;
    [minuteHandView setColor:daytimeHandsColor];

    hourHandView = [v16 hourHandView];
    [hourHandView setColor:daytimeHandsColor];

    objc_storeStrong(&v9->_handsView, v16);
    [(NTKWorldClockGraphicCircularView *)v9 addSubview:v9->_handsView];
    v20 = [[NTKRichComplicationDialView alloc] initWithLargeTickCount:12 smallTickCountPerLargeTick:count largeTickSize:v9->_layoutConstants.majorTickSize.width smallTickSize:v9->_layoutConstants.majorTickSize.height dialRange:v9->_layoutConstants.minorTickSize.width startAngle:v9->_layoutConstants.minorTickSize.height, 6.28318531, 0.0];
    dialView = v9->_dialView;
    v9->_dialView = v20;
    v56 = v20;

    [(NTKWorldClockGraphicCircularView *)v9 insertSubview:v9->_dialView belowSubview:v9->_handsView];
    v22 = objc_alloc_init(MEMORY[0x277D756B8]);
    v23 = *MEMORY[0x277D74420];
    v24 = MEMORY[0x277CBB6C0];
    v25 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v9->_layoutConstants.cityNameFontSize design:*MEMORY[0x277D74420]];
    cLKFontWithAlternativePunctuation = [v25 CLKFontWithAlternativePunctuation];
    [(UILabel *)v22 setFont:cLKFontWithAlternativePunctuation];

    cityNameLabel = v9->_cityNameLabel;
    v9->_cityNameLabel = v22;
    v55 = v22;

    [(NTKWorldClockGraphicCircularView *)v9 insertSubview:v9->_cityNameLabel belowSubview:v9->_handsView];
    v28 = [MEMORY[0x277CBBB08] systemFontOfSize:*v24 weight:v9->_layoutConstants.hourFontSize design:v23];
    cLKFontWithAlternativePunctuation2 = [v28 CLKFontWithAlternativePunctuation];

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __66__NTKWorldClockGraphicCircularView_initWithDevice_smallTickCount___block_invoke;
    aBlock[3] = &unk_278783A40;
    v60 = cLKFontWithAlternativePunctuation2;
    v30 = v9;
    v61 = v30;
    v62 = v16;
    v54 = v16;
    v53 = cLKFontWithAlternativePunctuation2;
    v31 = _Block_copy(aBlock);
    northLabelNumber = [objc_opt_class() northLabelNumber];
    v33 = v31[2](v31, northLabelNumber);
    v34 = v30[67];
    v30[67] = v33;

    layer = [v30[67] layer];
    [layer setAnchorPoint:{0.5, 0.0}];

    eastLabelNumber = [objc_opt_class() eastLabelNumber];
    v37 = v31[2](v31, eastLabelNumber);
    v38 = v30[68];
    v30[68] = v37;

    layer2 = [v30[68] layer];
    [layer2 setAnchorPoint:{1.0, 0.5}];

    southLabelNumber = [objc_opt_class() southLabelNumber];
    v41 = v31[2](v31, southLabelNumber);
    v42 = v30[70];
    v30[70] = v41;

    layer3 = [v30[70] layer];
    [layer3 setAnchorPoint:{0.5, 1.0}];

    westLabelNumber = [objc_opt_class() westLabelNumber];
    v45 = v31[2](v31, westLabelNumber);
    v46 = v30[69];
    v30[69] = v45;

    layer4 = [v30[69] layer];
    [layer4 setAnchorPoint:{0.0, 0.5}];

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

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = NTKWorldClockGraphicCircularView;
  [(NTKWorldClockGraphicCircularView *)&v4 traitCollectionDidChange:change];
  [(NTKWorldClockGraphicCircularView *)self setNeedsLayout];
}

- (void)pauseLiveFullColorImageView
{
  handsView = [(NTKWorldClockGraphicCircularView *)self handsView];
  [handsView setFrozen:1];
  [(NTKWorldClockGraphicCircularView *)self _stopClockUpdates];
}

- (void)resumeLiveFullColorImageView
{
  handsView = [(NTKWorldClockGraphicCircularView *)self handsView];
  [handsView setFrozen:0];
  [(NTKWorldClockGraphicCircularView *)self _startClockUpdates];
  [(NTKWorldClockGraphicCircularView *)self _updateUI];
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  metadata = [providerCopy metadata];
  v6 = [metadata objectForKey:@"NTKWorldClockGraphicCircularViewOverrideDateKey"];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      tritium_isTritiumInactiveFullColorImageProvider = [providerCopy tritium_isTritiumInactiveFullColorImageProvider];
      v8 = v6;
      v9 = v8;
LABEL_7:
      v11 = v8;
      goto LABEL_9;
    }
  }

  tritium_isTritiumInactiveFullColorImageProvider = [providerCopy tritium_isTritiumInactiveFullColorImageProvider];
  if (tritium_isTritiumInactiveFullColorImageProvider)
  {
    complicationDate = [MEMORY[0x277CBBAD8] complicationDate];
    if (complicationDate)
    {
      v8 = complicationDate;
      v9 = v8;
      tritium_isTritiumInactiveFullColorImageProvider = 1;
      goto LABEL_7;
    }
  }

  v9 = +[NTKDate faceDate];
  v11 = 0;
LABEL_9:
  v12 = +[NTKLocationManager sharedLocationManager];
  currentLocation = [v12 currentLocation];
  v14 = currentLocation;
  if (currentLocation)
  {
    [currentLocation coordinate];
    v16 = v15;
    [v14 coordinate];
  }

  else
  {
    v16 = -180.0;
  }

  v17 = [off_27877BED8 transitInfoForDate:v9 location:v16];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  v19 = [[NTKWorldClockGraphicCircularViewConfiguration alloc] initWithTimeZone:localTimeZone labelText:0 transitInfo:v17 inTritium:tritium_isTritiumInactiveFullColorImageProvider overrideDate:v11 isPrivacy:0];
  [(NTKWorldClockGraphicCircularView *)self applyConfiguration:v19 animated:NTKIsDaemonOrFaceSnapshotService() ^ 1];
}

- (void)setFilterProvider:(id)provider
{
  obj = provider;
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_filterProvider, obj);
    handsView = [(NTKWorldClockGraphicCircularView *)self handsView];
    [handsView setFilterProvider:obj];
  }
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  [(NTKWorldClockGraphicCircularView *)self setMonochromeFraction:fraction];
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

+ (id)_createHandsViewForDevice:(id)device
{
  deviceCopy = device;
  v4 = [(NTKWorldClockRichComplicationHandsBaseView *)[NTKWorldClockRichComplicationHandsView alloc] initForDevice:deviceCopy];

  return v4;
}

+ (BOOL)_shouldUseDaytimeColoringForTransitInfo:(id)info atDate:(id)date
{
  infoCopy = info;
  dateCopy = date;
  rise = [infoCopy rise];
  if (rise)
  {
  }

  else
  {
    v8 = [infoCopy set];

    if (!v8)
    {
      v16 = [infoCopy constantSun] == 2;
LABEL_14:
      v20 = v16;
      goto LABEL_17;
    }
  }

  rise2 = [infoCopy rise];
  if (rise2)
  {
    v10 = rise2;
    v11 = [infoCopy set];

    if (v11)
    {
      rise3 = [infoCopy rise];
      v13 = [dateCopy compare:rise3];

      v14 = [infoCopy set];
      v15 = [dateCopy compare:v14];

      v16 = v13 < 2 && v15 == -1;
      goto LABEL_14;
    }
  }

  rise4 = [infoCopy rise];

  if (rise4)
  {
    rise5 = [infoCopy rise];
    v19 = [dateCopy compare:rise5];

    v20 = v19 < 2;
    goto LABEL_17;
  }

  v21 = [infoCopy set];

  if (v21)
  {
    v22 = [infoCopy set];
    v23 = [dateCopy compare:v22];

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
  clockTimerToken = [(NTKWorldClockGraphicCircularView *)self clockTimerToken];
  if (!clockTimerToken)
  {
    objc_initWeak(&location, self);
    mEMORY[0x277CBB700] = [MEMORY[0x277CBB700] sharedInstance];
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __54__NTKWorldClockGraphicCircularView__startClockUpdates__block_invoke;
    v8 = &unk_27877ED48;
    objc_copyWeak(&v9, &location);
    clockTimerToken = [mEMORY[0x277CBB700] startUpdatesWithUpdateFrequency:0 withHandler:&v5 identificationLog:&__block_literal_global_80_0];

    [(NTKWorldClockGraphicCircularView *)self setClockTimerToken:clockTimerToken, v5, v6, v7, v8];
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
  clockTimerToken = [(NTKWorldClockGraphicCircularView *)self clockTimerToken];
  if (clockTimerToken)
  {
    v5 = clockTimerToken;
    mEMORY[0x277CBB700] = [MEMORY[0x277CBB700] sharedInstance];
    [mEMORY[0x277CBB700] stopUpdatesForToken:v5];

    [(NTKWorldClockGraphicCircularView *)self setClockTimerToken:0];
    clockTimerToken = v5;
  }
}

- (void)_updateDayTimeColoring
{
  hasPerformedColoringFirstPass = [(NTKWorldClockGraphicCircularView *)self hasPerformedColoringFirstPass];
  handsView = [(NTKWorldClockGraphicCircularView *)self handsView];
  overrideDate = [handsView overrideDate];
  v5 = overrideDate;
  if (overrideDate)
  {
    v6 = overrideDate;
  }

  else
  {
    v6 = +[NTKDate faceDate];
  }

  v7 = v6;
  transitInfo = [(NTKWorldClockGraphicCircularView *)self transitInfo];
  v9 = [objc_opt_class() _shouldUseDaytimeColoringForTransitInfo:transitInfo atDate:v7];
  if (!hasPerformedColoringFirstPass || v9 != [(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
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
  displayedHour = [(NTKWorldClockRichComplicationHandsBaseView *)self->_handsView displayedHour];
  cityNameLabel = [(NTKWorldClockGraphicCircularView *)self cityNameLabel];
  text = [cityNameLabel text];
  if (![text length])
  {
    goto LABEL_8;
  }

  isHidden = [(NTKWorldClockRichComplicationHandsBaseView *)self->_handsView isHidden];
  v7 = (displayedHour - 3) < 6 || (displayedHour - 15) < 6;
  if (isHidden)
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
  cityNameLabel = [(NTKWorldClockGraphicCircularView *)self cityNameLabel];
  if ([(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v3 = ;
  filterProvider = [(NTKWorldClockGraphicCircularView *)self filterProvider];
  v5 = [filterProvider colorForView:cityNameLabel accented:0];
  [(NTKWorldClockGraphicCircularView *)self tintedFraction];
  v6 = NTKInterpolateBetweenColors();
  [cityNameLabel setTextColor:v6];
}

- (void)_updateHandsColor
{
  handsView = [(NTKWorldClockGraphicCircularView *)self handsView];
  filterProvider = [(NTKWorldClockGraphicCircularView *)self filterProvider];
  if ([(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {
    [(NTKWorldClockGraphicCircularView *)self daytimeHandsColor];
  }

  else
  {
    [(NTKWorldClockGraphicCircularView *)self nighttimeHandsColor];
  }
  v5 = ;
  v6 = [filterProvider colorForView:handsView accented:1];
  [(NTKWorldClockGraphicCircularView *)self monochromeFraction];
  v7 = NTKInterpolateBetweenColors();

  if ([objc_opt_class() showsSecondHand])
  {
    v8 = [filterProvider colorForView:handsView accented:1];
    [(NTKWorldClockGraphicCircularView *)self tintedFraction];
    v9 = NTKInterpolateBetweenColors();
    secondHandView = [handsView secondHandView];
    [secondHandView setColor:v9];

    v11 = [filterProvider colorForView:handsView accented:0];
    hourHandView = [handsView hourHandView];
    [hourHandView setColor:v11];

    minuteHandView = [handsView minuteHandView];
    [minuteHandView setColor:v11];
  }

  else
  {
    v8 = [filterProvider colorForView:handsView accented:0];
    [(NTKWorldClockGraphicCircularView *)self tintedFraction];
    v11 = NTKInterpolateBetweenColors();
    hourHandView2 = [handsView hourHandView];
    [hourHandView2 setColor:v11];

    minuteHandView2 = [handsView minuteHandView];
    [minuteHandView2 setColor:v11];

    [handsView setPegDotColor:v8];
  }

  platter = [(NTKWorldClockGraphicCircularView *)self platter];
  backgroundColor = [platter backgroundColor];

  useDayTimeColoring = [(NTKWorldClockGraphicCircularView *)self useDayTimeColoring];
  v20 = 1;
  if (useDayTimeColoring)
  {
    if (backgroundColor)
    {
      v23 = 0.0;
      [backgroundColor getRed:0 green:0 blue:0 alpha:&v23];
      v19 = v23;
      if (v23 >= 0.7)
      {
        CLKContrastRatioForColors();
        v20 = v19 > 1.7;
      }
    }
  }

  hourHandView3 = [handsView hourHandView];
  [hourHandView3 setShadowsHidden:v20];

  minuteHandView3 = [handsView minuteHandView];
  [minuteHandView3 setShadowsHidden:v20];
}

- (void)_updateHourLabelColors
{
  v18 = *MEMORY[0x277D85DE8];
  dialView = [(NTKWorldClockGraphicCircularView *)self dialView];
  if ([(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {
    [(NTKWorldClockGraphicCircularView *)self daytimeHandsLargeTickColor];
  }

  else
  {
    [(NTKWorldClockGraphicCircularView *)self nighttimeHandsLargeTickColor];
  }
  v4 = ;
  filterProvider = [(NTKWorldClockGraphicCircularView *)self filterProvider];
  v6 = [filterProvider colorForView:dialView accented:0];
  [(NTKWorldClockGraphicCircularView *)self tintedFraction];
  v7 = NTKInterpolateBetweenColors();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  hourLabels = [(NTKWorldClockGraphicCircularView *)self hourLabels];
  v9 = [hourLabels countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(hourLabels);
        }

        [*(*(&v13 + 1) + 8 * v12++) setTextColor:v7];
      }

      while (v10 != v12);
      v10 = [hourLabels countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_updatePlatterColor
{
  if ([(NTKWorldClockGraphicCircularView *)self useDayTimeColoring])
  {
    daytimeBackgroundColor = [(NTKWorldClockGraphicCircularView *)self daytimeBackgroundColor];
    [(NTKWorldClockGraphicCircularView *)self tintedPlatterColor];
  }

  else
  {
    daytimeBackgroundColor = [(NTKWorldClockGraphicCircularView *)self nighttimeBackgroundColor];
    [MEMORY[0x277D75348] clearColor];
  }
  v3 = ;
  [(NTKWorldClockGraphicCircularView *)self tintedFraction];
  v4 = NTKInterpolateBetweenColors();
  platter = [(NTKWorldClockGraphicCircularView *)self platter];
  [platter setBackgroundColor:v4];
}

- (void)_updateTickColor
{
  dialView = [(NTKWorldClockGraphicCircularView *)self dialView];
  useDayTimeColoring = [(NTKWorldClockGraphicCircularView *)self useDayTimeColoring];
  filterProvider = [(NTKWorldClockGraphicCircularView *)self filterProvider];
  [(NTKWorldClockGraphicCircularView *)self tintedFraction];
  v5 = [filterProvider colorForView:dialView accented:0];
  if (useDayTimeColoring)
  {
    [(NTKWorldClockGraphicCircularView *)self daytimeHandsLargeTickColor];
  }

  else
  {
    [(NTKWorldClockGraphicCircularView *)self nighttimeHandsLargeTickColor];
  }
  v6 = ;
  v7 = NTKInterpolateBetweenColors();

  if (useDayTimeColoring)
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
  cGColor = [v7 CGColor];
  largeTickLayer = [dialView largeTickLayer];
  [largeTickLayer setBackgroundColor:cGColor];

  cGColor2 = [v10 CGColor];
  smallTickLayer = [dialView smallTickLayer];
  [smallTickLayer setBackgroundColor:cGColor2];

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