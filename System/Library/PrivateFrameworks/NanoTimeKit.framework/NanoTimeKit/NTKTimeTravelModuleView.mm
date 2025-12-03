@interface NTKTimeTravelModuleView
+ (double)_actualCornerRadiusForDevice:(id)device;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NTKTimeTravelModuleView)initWithMaximumWidth:(double)width;
- (NTKTimeTravelModuleViewTapClient)tapDelegate;
- (id)_formatDateStringForIntervalBetweenReferenceDate:(id)date andOverrideDate:(id)overrideDate;
- (void)_layoutContentView;
- (void)_setupBorder;
- (void)layoutSubviews;
- (void)prepareToAppear;
- (void)scrubToDate:(id)date;
- (void)setTapDelegate:(id)delegate;
@end

@implementation NTKTimeTravelModuleView

- (NTKTimeTravelModuleView)initWithMaximumWidth:(double)width
{
  v55.receiver = self;
  v55.super_class = NTKTimeTravelModuleView;
  v4 = *MEMORY[0x277CBF3A0];
  v5 = *(MEMORY[0x277CBF3A0] + 8);
  v6 = *(MEMORY[0x277CBF3A0] + 16);
  v7 = *(MEMORY[0x277CBF3A0] + 24);
  v8 = [(NTKModuleView *)&v55 initWithFrame:*MEMORY[0x277CBF3A0], v5, v6, v7];
  v9 = v8;
  if (v8)
  {
    device = [(NTKModuleView *)v8 device];
    sizeClass = [device sizeClass];

    if (sizeClass)
    {
      v12 = 16.0;
    }

    else
    {
      v12 = 15.0;
    }

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v14 = [currentLocale objectForKey:*MEMORY[0x277CBE6C8]];
    v15 = [&unk_284189C28 objectForKey:v14];

    v16 = v12;
    if (v15)
    {
      v17 = [v15 objectAtIndex:sizeClass != 0];
      [v17 floatValue];
      v16 = v18;
    }

    v19 = objc_alloc_init(MEMORY[0x277D75D18]);
    backgroundView = v9->_backgroundView;
    v9->_backgroundView = v19;

    [(UIView *)v9->_backgroundView setUserInteractionEnabled:0];
    [(NTKTimeTravelModuleView *)v9 insertSubview:v9->_backgroundView atIndex:0];
    v21 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
    timeScrubDifferenceLabel = v9->_timeScrubDifferenceLabel;
    v9->_timeScrubDifferenceLabel = v21;

    v23 = v9->_timeScrubDifferenceLabel;
    v24 = *MEMORY[0x277D74410];
    v25 = [MEMORY[0x277CBBB08] systemFontOfSize:v12 weight:*MEMORY[0x277D74410]];
    cLKFontWithMonospacedNumbers = [v25 CLKFontWithMonospacedNumbers];
    cLKFontWithAlternativePunctuation = [cLKFontWithMonospacedNumbers CLKFontWithAlternativePunctuation];
    [(UILabel *)v23 setFont:cLKFontWithAlternativePunctuation];

    [(UILabel *)v9->_timeScrubDifferenceLabel setTextAlignment:1];
    v28 = v9->_timeScrubDifferenceLabel;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v28 setTextColor:blackColor];

    contentView = [(NTKModuleView *)v9 contentView];
    [contentView addSubview:v9->_timeScrubDifferenceLabel];

    v31 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v4, v5, v6, v7}];
    timeScrubNowLabel = v9->_timeScrubNowLabel;
    v9->_timeScrubNowLabel = v31;

    v33 = v9->_timeScrubNowLabel;
    v34 = [MEMORY[0x277CBBB08] systemFontOfSize:v16 weight:v24];
    [(UILabel *)v33 setFont:v34];

    [(UILabel *)v9->_timeScrubNowLabel setTextAlignment:1];
    v35 = v9->_timeScrubNowLabel;
    blackColor2 = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v35 setTextColor:blackColor2];

    contentView2 = [(NTKModuleView *)v9 contentView];
    [contentView2 addSubview:v9->_timeScrubNowLabel];

    v38 = v9->_timeScrubNowLabel;
    v39 = NTKClockFaceLocalizedString(@"TIME_TRAVEL_DATE_NOW", @"Text shown when Time Travel reaches the current time");
    [(UILabel *)v38 setText:v39];

    [(UILabel *)v9->_timeScrubNowLabel sizeToFit];
    v9->_shouldUseNowText = 1;
    if ((CLKFloatEqualsFloat() & 1) == 0)
    {
      v40 = objc_opt_class();
      device2 = [(NTKModuleView *)v9 device];
      [v40 _actualCornerRadiusForDevice:device2];
      v43 = width + v42 * -2.0;

      [(UILabel *)v9->_timeScrubNowLabel bounds];
      if (v44 > v43)
      {
        v9->_shouldUseNowText = 0;
      }
    }

    v9->_nowLabelCenterY = 0.0;
    timeTravelColor = [objc_opt_class() timeTravelColor];
    [(UIView *)v9->_backgroundView setBackgroundColor:timeTravelColor];
    v46 = objc_opt_class();
    device3 = [(NTKModuleView *)v9 device];
    [v46 _actualCornerRadiusForDevice:device3];
    v49 = v48;

    layer = [(UIView *)v9->_backgroundView layer];
    [layer setCornerRadius:v49];

    v51 = NTKColorByPremultiplyingAlpha(timeTravelColor, 0.82);
    [(NTKModuleView *)v9 setHighlightBackgroundColor:v51];

    v52 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    cal = v9->_cal;
    v9->_cal = v52;

    [(NTKTimeTravelModuleView *)v9 _setupBorder];
  }

  return v9;
}

- (void)prepareToAppear
{
  [(UILabel *)self->_timeScrubDifferenceLabel setHidden:1];
  timeScrubNowLabel = self->_timeScrubNowLabel;

  [(UILabel *)timeScrubNowLabel setHidden:0];
}

+ (double)_actualCornerRadiusForDevice:(id)device
{
  deviceCopy = device;
  [self _defaultHeightForDevice:deviceCopy];
  [self _defaultHeightForDevice:deviceCopy];
  CLKValueForDeviceMetrics();
  v6 = v5;

  return v6;
}

- (void)_setupBorder
{
  if (!self->_borderLayer)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    borderLayer = self->_borderLayer;
    self->_borderLayer = layer;

    v5 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    -[CALayer setBackgroundColor:](self->_borderLayer, "setBackgroundColor:", [v5 CGColor]);

    v6 = objc_opt_class();
    device = [(NTKModuleView *)self device];
    [v6 _actualCornerRadiusForDevice:device];
    [(CALayer *)self->_borderLayer setCornerRadius:v8 + 1.0];

    layer2 = [(NTKTimeTravelModuleView *)self layer];
    [layer2 insertSublayer:self->_borderLayer atIndex:0];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKTimeTravelModuleView;
  [(NTKModuleView *)&v4 layoutSubviews];
  backgroundView = self->_backgroundView;
  [(NTKTimeTravelModuleView *)self bounds];
  [(UIView *)backgroundView setFrame:?];
  [(NTKTimeTravelModuleView *)self bounds];
  v6 = CGRectInset(v5, -1.0, -1.0);
  [(CALayer *)self->_borderLayer setFrame:v6.origin.x, v6.origin.y, v6.size.width, v6.size.height];
}

- (void)_layoutContentView
{
  [(UILabel *)self->_timeScrubDifferenceLabel sizeToFit];
  [(NTKTimeTravelModuleView *)self bounds];
  device = [(NTKModuleView *)self device];
  sizeClass = [device sizeClass];

  [(UILabel *)self->_timeScrubDifferenceLabel bounds];
  device2 = [(NTKModuleView *)self device];
  CLKRectCenteredAboutPointForDevice();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(UILabel *)self->_timeScrubDifferenceLabel ntk_setBoundsAndPositionFromFrame:v7, v9, v11, v13];
  if (self->_nowLabelCenterY == 0.0)
  {
    v14 = 15.0;
    if (!sizeClass)
    {
      v14 = 14.0;
    }

    [(UILabel *)self->_timeScrubNowLabel _setFirstLineBaselineFrameOriginY:v14];
    [(UILabel *)self->_timeScrubNowLabel center];
    self->_nowLabelCenterY = v15;
  }

  [(UILabel *)self->_timeScrubNowLabel bounds];
  device3 = [(NTKModuleView *)self device];
  CLKRectCenteredAboutPointForDevice();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  timeScrubNowLabel = self->_timeScrubNowLabel;

  [(UILabel *)timeScrubNowLabel ntk_setBoundsAndPositionFromFrame:v18, v20, v22, v24];
}

- (void)scrubToDate:(id)date
{
  obj = NTKRoundDateDownToNearestMinute();
  if (([(NSDate *)self->_date isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_date, obj);
    v4 = +[NTKDate faceDate];
    v5 = NTKRoundDateDownToNearestMinute();

    v6 = [(NTKTimeTravelModuleView *)self _formatDateStringForIntervalBetweenReferenceDate:v5 andOverrideDate:obj];
    [(UILabel *)self->_timeScrubDifferenceLabel setText:v6];
    [(UILabel *)self->_timeScrubDifferenceLabel setHidden:v6 == 0];
    [(UILabel *)self->_timeScrubNowLabel setHidden:v6 != 0];
    [(NTKTimeTravelModuleView *)self sizeToFit];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (([(UILabel *)self->_timeScrubDifferenceLabel isHidden:fits.width]& 1) != 0)
  {
    [(UILabel *)self->_timeScrubNowLabel bounds];
  }

  else
  {
    [(UILabel *)self->_timeScrubDifferenceLabel sizeToFit];
    [(UILabel *)self->_timeScrubDifferenceLabel sizeThatFits:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
  }

  v4 = objc_opt_class();
  device = [(NTKModuleView *)self device];
  [v4 _actualCornerRadiusForDevice:device];

  device2 = [(NTKModuleView *)self device];
  CLKCeilForDevice();
  v8 = v7;

  device3 = [(NTKModuleView *)self device];
  [NTKTimeTravelModuleView _defaultHeightForDevice:device3];
  v11 = v10;

  v12 = v8;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(NTKTimeTravelModuleView *)self bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  WeakRetained = objc_loadWeakRetained(&self->_tapDelegate);
  [WeakRetained timeTravelModuleTouchInsets];
  v17 = v10 + v16;
  v20 = v12 - (v18 + v19);
  v25.size.height = v14 - (v16 + v21);
  v25.origin.x = v8 + v18;
  v25.origin.y = v17;
  v25.size.width = v20;
  v24.x = x;
  v24.y = y;
  v22 = CGRectContainsPoint(v25, v24);

  return v22;
}

- (id)_formatDateStringForIntervalBetweenReferenceDate:(id)date andOverrideDate:(id)overrideDate
{
  [overrideDate timeIntervalSinceDate:date];
  v6 = v5;
  v7 = fabs(v5);
  if (v7 < 60.0 && self->_shouldUseNowText)
  {
    v8 = 0;
  }

  else
  {
    offsetDateFormatter = self->_offsetDateFormatter;
    if (!offsetDateFormatter)
    {
      v10 = objc_alloc_init(MEMORY[0x277CCA958]);
      v11 = self->_offsetDateFormatter;
      self->_offsetDateFormatter = v10;

      [(NSDateComponentsFormatter *)self->_offsetDateFormatter setMaximumUnitCount:2];
      [(NSDateComponentsFormatter *)self->_offsetDateFormatter setFormattingContext:2];
      [(NSDateComponentsFormatter *)self->_offsetDateFormatter setAllowedUnits:96];
      [(NSDateComponentsFormatter *)self->_offsetDateFormatter setUnitsStyle:0];
      [(NSDateComponentsFormatter *)self->_offsetDateFormatter setZeroFormattingBehavior:0x10000];
      offsetDateFormatter = self->_offsetDateFormatter;
    }

    v12 = [(NSDateComponentsFormatter *)offsetDateFormatter stringFromTimeInterval:v7];
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v14 = [currentLocale objectForKey:*MEMORY[0x277CBE6C8]];
    if (CLKLocaleCurrentNumberSystem() == 1)
    {
      v15 = @"\u200F";
    }

    else
    {
      v15 = &stru_284110E98;
    }

    v16 = @"-";
    if (v6 >= 0.0)
    {
      v16 = @"+";
    }

    v17 = v16;
    if ([v14 isEqualToString:@"en"])
    {
      v18 = [v12 uppercaseStringWithLocale:currentLocale];

      v12 = v18;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v15, v17, v12];
  }

  return v8;
}

- (void)setTapDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_tapDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_loadWeakRetained(&self->_tapDelegate);

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_tapDelegate);
      [(NTKTimeTravelModuleView *)self removeTarget:v7 action:0 forControlEvents:0xFFFFFFFFLL];
    }

    v8 = objc_storeWeak(&self->_tapDelegate, obj);
    v9 = [obj conformsToProtocol:&unk_28A8ADED0];

    v5 = obj;
    if (v9)
    {
      v10 = objc_loadWeakRetained(&self->_tapDelegate);
      [(NTKTimeTravelModuleView *)self addTarget:v10 action:sel_performTimeTravelModuleTapAction forControlEvents:64];

      v5 = obj;
    }
  }
}

- (NTKTimeTravelModuleViewTapClient)tapDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_tapDelegate);

  return WeakRetained;
}

@end