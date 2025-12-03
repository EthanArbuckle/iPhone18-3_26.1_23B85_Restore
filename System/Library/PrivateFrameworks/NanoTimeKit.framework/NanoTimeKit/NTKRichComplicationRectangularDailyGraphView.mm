@interface NTKRichComplicationRectangularDailyGraphView
+ (CGSize)graphSize;
- (CGRect)cachedBounds;
- (CGRect)drawableGraphRect;
- (CGRect)graphRect;
- (NTKRichComplicationRectangularDailyGraphView)init;
- (double)_calculateGraphXBasedOnRect:(CGRect)rect constants:(id *)constants;
- (double)timeMarkerPadding;
- (id)_datesForGraphInTimezone:(id)timezone;
- (void)_addConstraints;
- (void)_addSubviews;
- (void)_applyPausedUpdate;
- (void)_drawVerticalHourLines:(CGContext *)lines rect:(CGRect)rect bottomLabelPadding:(double)padding;
- (void)_handleTemplate:(id)template reason:(int64_t)reason;
- (void)_updateTimeMarkerLabelsForDates:(id)dates timezone:(id)timezone;
- (void)drawRect:(CGRect)rect;
- (void)resetToNoDataState:(id)state;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationRectangularDailyGraphView

+ (CGSize)graphSize
{
  if (graphSize_onceToken != -1)
  {
    +[NTKRichComplicationRectangularDailyGraphView graphSize];
  }

  v2 = *&graphSize_Size_0;
  v3 = *&graphSize_Size_1;
  result.height = v3;
  result.width = v2;
  return result;
}

double __57__NTKRichComplicationRectangularDailyGraphView_graphSize__block_invoke()
{
  v4 = 0;
  v3 = 0u;
  v0 = [MEMORY[0x277CBBAE8] currentDevice];
  ___LayoutConstants_block_invoke_3(v0, &v2);

  result = *(&v3 + 1);
  graphSize_Size_0 = *(&v3 + 1);
  graphSize_Size_1 = v4;
  return result;
}

- (NTKRichComplicationRectangularDailyGraphView)init
{
  v14.receiver = self;
  v14.super_class = NTKRichComplicationRectangularDailyGraphView;
  v2 = [(NTKRichComplicationRectangularBaseView *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_timeLabelAndGridAlpha = 0.25;
    v2->_noDataAlpha = 0.5;
    v4 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
    noDataTextColor = v3->_noDataTextColor;
    v3->_noDataTextColor = v4;

    v6 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:v3->_timeLabelAndGridAlpha];
    graphLabelAndGridColor = v3->_graphLabelAndGridColor;
    v3->_graphLabelAndGridColor = v6;

    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v3->_cachedBounds.origin = *MEMORY[0x277CBF3A0];
    v3->_cachedBounds.size = v8;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    accentColor = v3->_accentColor;
    v3->_accentColor = whiteColor;

    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    nonAccentColor = v3->_nonAccentColor;
    v3->_nonAccentColor = whiteColor2;

    [(NTKRichComplicationRectangularDailyGraphView *)v3 _addSubviews];
    [(NTKRichComplicationRectangularDailyGraphView *)v3 _addConstraints];
  }

  return v3;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  CGContextClearRect(CurrentContext, v19);
  CGContextSetAllowsAntialiasing(CurrentContext, 1);
  [(NTKRichComplicationRectangularDailyGraphView *)self graphRect];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(NTKRichComplicationRectangularDailyGraphView *)self timeMarkerPadding];
  [(NTKRichComplicationRectangularDailyGraphView *)self _drawVerticalHourLines:CurrentContext rect:v10 bottomLabelPadding:v12, v14, v16, v17];
  [(NTKRichComplicationRectangularDailyGraphView *)self drawableGraphRect];

  [(NTKRichComplicationRectangularDailyGraphView *)self drawGraph:CurrentContext rect:?];
}

- (void)resetToNoDataState:(id)state
{
  v4 = [MEMORY[0x277CBBB88] textProviderWithText:state];
  titleLabel = [(NTKRichComplicationRectangularDailyGraphView *)self titleLabel];
  [titleLabel setTextProvider:v4];

  noDataTextColor = [(NTKRichComplicationRectangularDailyGraphView *)self noDataTextColor];
  titleLabel2 = [(NTKRichComplicationRectangularDailyGraphView *)self titleLabel];
  [titleLabel2 setColor:noDataTextColor];

  v8 = +[NTKRichComplicationRectangularDailyGraphView dailyFormattedNoData];
  dailyHighLabel = [(NTKRichComplicationRectangularDailyGraphView *)self dailyHighLabel];
  [dailyHighLabel setText:v8];

  noDataTextColor2 = [(NTKRichComplicationRectangularDailyGraphView *)self noDataTextColor];
  dailyHighLabel2 = [(NTKRichComplicationRectangularDailyGraphView *)self dailyHighLabel];
  [dailyHighLabel2 setTextColor:noDataTextColor2];

  v12 = +[NTKRichComplicationRectangularDailyGraphView dailyFormattedNoData];
  dailyLowLabel = [(NTKRichComplicationRectangularDailyGraphView *)self dailyLowLabel];
  [dailyLowLabel setText:v12];

  noDataTextColor3 = [(NTKRichComplicationRectangularDailyGraphView *)self noDataTextColor];
  dailyLowLabel2 = [(NTKRichComplicationRectangularDailyGraphView *)self dailyLowLabel];
  [dailyLowLabel2 setTextColor:noDataTextColor3];
}

- (void)_addConstraints
{
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  device = [(CDRichComplicationView *)self device];
  ___LayoutConstants_block_invoke_3(device, &v48);

  titleLabel = [(NTKRichComplicationRectangularDailyGraphView *)self titleLabel];
  leadingAnchor = [titleLabel leadingAnchor];
  leadingAnchor2 = [(NTKRichComplicationRectangularDailyGraphView *)self leadingAnchor];
  [(NTKRichComplicationRectangularBaseView *)self contentMargin];
  v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];

  trailingAnchor = [(NTKRichComplicationRectangularDailyGraphView *)self trailingAnchor];
  titleLabel2 = [(NTKRichComplicationRectangularDailyGraphView *)self titleLabel];
  trailingAnchor2 = [titleLabel2 trailingAnchor];
  [(NTKRichComplicationRectangularBaseView *)self contentMargin];
  v10 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:?];

  LODWORD(v11) = 1148829696;
  [v10 setPriority:v11];
  titleLabel3 = [(NTKRichComplicationRectangularDailyGraphView *)self titleLabel];
  firstBaselineAnchor = [titleLabel3 firstBaselineAnchor];
  topAnchor = [(NTKRichComplicationRectangularDailyGraphView *)self topAnchor];
  v37 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:*(&v48 + 1)];

  dailyHighLabel = [(NTKRichComplicationRectangularDailyGraphView *)self dailyHighLabel];
  leadingAnchor3 = [dailyHighLabel leadingAnchor];
  leadingAnchor4 = [(NTKRichComplicationRectangularDailyGraphView *)self leadingAnchor];
  [(NTKRichComplicationRectangularBaseView *)self contentMargin];
  v18 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];

  dailyHighLabel2 = [(NTKRichComplicationRectangularDailyGraphView *)self dailyHighLabel];
  firstBaselineAnchor2 = [dailyHighLabel2 firstBaselineAnchor];
  topAnchor2 = [(NTKRichComplicationRectangularDailyGraphView *)self topAnchor];
  v22 = [firstBaselineAnchor2 constraintEqualToAnchor:topAnchor2 constant:*(&v49 + 1)];

  dailyLowLabel = [(NTKRichComplicationRectangularDailyGraphView *)self dailyLowLabel];
  leadingAnchor5 = [dailyLowLabel leadingAnchor];
  dailyHighLabel3 = [(NTKRichComplicationRectangularDailyGraphView *)self dailyHighLabel];
  leadingAnchor6 = [dailyHighLabel3 leadingAnchor];
  v27 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];

  dailyLowLabel2 = [(NTKRichComplicationRectangularDailyGraphView *)self dailyLowLabel];
  firstBaselineAnchor3 = [dailyLowLabel2 firstBaselineAnchor];
  dailyHighLabel4 = [(NTKRichComplicationRectangularDailyGraphView *)self dailyHighLabel];
  firstBaselineAnchor4 = [dailyHighLabel4 firstBaselineAnchor];
  v32 = [firstBaselineAnchor3 constraintEqualToAnchor:firstBaselineAnchor4 constant:*(&v50 + 1)];

  v33 = [MEMORY[0x277CBEB18] arrayWithObjects:{v38, v10, v37, v18, v22, v27, v32, 0}];
  v34 = *(&v52 + 1) * 0.25;
  timeMarkerLabels = [(NTKRichComplicationRectangularDailyGraphView *)self timeMarkerLabels];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __63__NTKRichComplicationRectangularDailyGraphView__addConstraints__block_invoke;
  v39[3] = &unk_27877ECD0;
  v41 = v34;
  v44 = v50;
  v45 = v51;
  v46 = v52;
  v47 = v53;
  v42 = v48;
  v43 = v49;
  v39[4] = self;
  v40 = v33;
  v36 = v33;
  [timeMarkerLabels enumerateObjectsUsingBlock:v39];

  [MEMORY[0x277CCAAD0] activateConstraints:v36];
}

void __63__NTKRichComplicationRectangularDailyGraphView__addConstraints__block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v24 = a2;
  v5 = 0.0;
  if (a3)
  {
    v5 = 1.0;
  }

  v6 = 2.0 - v5;
  v7 = 2.0 - v5 + a3 * *(a1 + 48);
  if (CLKLayoutIsRTL())
  {
    [*(a1 + 32) contentMargin];
    v9 = v7 + v8;
    v10 = *(a1 + 40);
    v11 = [v24 leftAnchor];
    v12 = *(a1 + 32);
  }

  else
  {
    v13 = *(a1 + 128);
    [*(a1 + 32) contentMargin];
    v9 = v13 + v14 - v7;
    v10 = *(a1 + 40);
    v11 = [*(a1 + 32) rightAnchor];
    v12 = v24;
  }

  v15 = [v12 leftAnchor];
  v16 = [v11 constraintEqualToAnchor:v15 constant:v9];
  [v10 addObject:v16];

  v17 = *(a1 + 40);
  v18 = [v24 widthAnchor];
  v19 = [v18 constraintEqualToConstant:*(a1 + 48) + v6 * -2.0];
  [v17 addObject:v19];

  v20 = *(a1 + 40);
  v21 = [*(a1 + 32) bottomAnchor];
  v22 = [v24 firstBaselineAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:*(a1 + 112)];
  [v20 addObject:v23];
}

- (void)_addSubviews
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  device = [(CDRichComplicationView *)self device];
  ___LayoutConstants_block_invoke_3(device, &v29);

  v4 = MEMORY[0x277CBB6C0];
  v5 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:*&v29 design:*MEMORY[0x277D74410]];
  cLKFontWithLocalizedSmallCaps = [v5 CLKFontWithLocalizedSmallCaps];

  v7 = objc_opt_new();
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [(CLKUIColoringLabel *)v7 setTextColor:whiteColor];

  [(CLKUIColoringLabel *)v7 setFont:cLKFontWithLocalizedSmallCaps];
  [(CLKUIColoringLabel *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CLKUIColoringLabel *)v7 setUsesTextProviderTintColoring:1];
  [(CLKUIColoringLabel *)v7 setTwoToneStyleInMonochrome:1];
  [(CLKUIColoringLabel *)v7 setFilterProvider:self];
  [(NTKRichComplicationRectangularDailyGraphView *)self addSubview:v7];

  titleLabel = self->_titleLabel;
  self->_titleLabel = v7;

  v10 = objc_opt_new();
  v11 = *MEMORY[0x277D74420];
  v12 = [MEMORY[0x277CBBB08] systemFontOfSize:*v4 weight:*&v30 design:*MEMORY[0x277D74420]];
  cLKFontWithAlternativePunctuation = [v12 CLKFontWithAlternativePunctuation];
  [(UILabel *)v10 setFont:cLKFontWithAlternativePunctuation];

  accentColor = [(NTKRichComplicationRectangularDailyGraphView *)self accentColor];
  [(UILabel *)v10 setTextColor:accentColor];

  [(UILabel *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(NTKRichComplicationRectangularDailyGraphView *)self addSubview:v10];
  dailyHighLabel = self->_dailyHighLabel;
  self->_dailyHighLabel = v10;

  v16 = objc_opt_new();
  v17 = [MEMORY[0x277CBBB08] systemFontOfSize:*v4 weight:*&v31 design:v11];
  cLKFontWithAlternativePunctuation2 = [v17 CLKFontWithAlternativePunctuation];
  [(UILabel *)v16 setFont:cLKFontWithAlternativePunctuation2];

  accentColor2 = [(NTKRichComplicationRectangularDailyGraphView *)self accentColor];
  [(UILabel *)v16 setTextColor:accentColor2];

  [(UILabel *)v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(NTKRichComplicationRectangularDailyGraphView *)self addSubview:v16];
  dailyLowLabel = self->_dailyLowLabel;
  self->_dailyLowLabel = v16;

  v21 = 4;
  v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
  v23 = *&v32;
  do
  {
    v24 = objc_opt_new();
    [v24 setAdjustsFontSizeToFitWidth:1];
    v25 = [MEMORY[0x277CBBB08] systemFontOfSize:*v4 weight:v23 design:v11];
    [v24 setFont:v25];

    [v24 setMinimumScaleFactor:0.85];
    graphLabelAndGridColor = [(NTKRichComplicationRectangularDailyGraphView *)self graphLabelAndGridColor];
    [v24 setTextColor:graphLabelAndGridColor];

    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v24 setTextAlignment:0];
    [(NTKRichComplicationRectangularDailyGraphView *)self addSubview:v24];
    [v22 addObject:v24];

    --v21;
  }

  while (v21);
  v27 = [v22 copy];

  timeMarkerLabels = self->_timeMarkerLabels;
  self->_timeMarkerLabels = v27;
}

- (double)_calculateGraphXBasedOnRect:(CGRect)rect constants:(id *)constants
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (CLKLayoutIsRTL())
  {

    [(NTKRichComplicationRectangularBaseView *)self contentMargin];
  }

  else
  {
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    v11 = CGRectGetWidth(v14);
    [(NTKRichComplicationRectangularBaseView *)self contentMargin];
    return v11 - (v12 + constants->var9);
  }

  return result;
}

- (id)_datesForGraphInTimezone:(id)timezone
{
  timezoneCopy = timezone;
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [currentCalendar componentsInTimeZone:timezoneCopy fromDate:date];
  v7 = [date dateByAddingTimeInterval:{objc_msgSend(v6, "minute") * -60.0 + objc_msgSend(v6, "hour") * -3600.0 - objc_msgSend(v6, "second") + -1.0}];
  v8 = [currentCalendar components:192 fromDate:v7];

  [v8 setSecond:0];
  [v8 setMinute:0];
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:24];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v20 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __73__NTKRichComplicationRectangularDailyGraphView__datesForGraphInTimezone___block_invoke;
  v16 = &unk_27877ECF8;
  v10 = v9;
  v17 = v10;
  v18 = v19;
  [currentCalendar enumerateDatesStartingAfterDate:v7 matchingComponents:v8 options:2 usingBlock:&v13];
  v11 = [v10 copy];

  _Block_object_dispose(v19, 8);

  return v11;
}

uint64_t __73__NTKRichComplicationRectangularDailyGraphView__datesForGraphInTimezone___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) addObject:a2];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 24);
  *(v7 + 24) = v8 + 1;
  if (v8 >= 23)
  {
    *a4 = 1;
  }

  return result;
}

- (void)_drawVerticalHourLines:(CGContext *)lines rect:(CGRect)rect bottomLabelPadding:(double)padding
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGContextSaveGState(lines);
  CGContextSetLineWidth(lines, 1.0);
  graphLabelAndGridColor = [(NTKRichComplicationRectangularDailyGraphView *)self graphLabelAndGridColor];
  CGContextSetStrokeColorWithColor(lines, [graphLabelAndGridColor CGColor]);

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v13 = 0;
  v14 = CGRectGetHeight(v21) - padding;
  do
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v15 = CGRectGetWidth(v22);
    HIDWORD(v16) = -1431655765 * v13;
    LODWORD(v16) = HIDWORD(v16);
    v17 = v14;
    if ((v16 >> 1) <= 0x2AAAAAAA)
    {
      v23.origin.x = x;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v17 = CGRectGetHeight(v23);
    }

    v18 = x + v13 / 24.0 * v15;
    v19 = y + v17;
    CGContextBeginPath(lines);
    CGContextMoveToPoint(lines, v18, y);
    CGContextAddLineToPoint(lines, v18, v19);
    CGContextStrokePath(lines);
    ++v13;
  }

  while (v13 != 25);

  CGContextRestoreGState(lines);
}

- (void)_updateTimeMarkerLabelsForDates:(id)dates timezone:(id)timezone
{
  datesCopy = dates;
  timezoneCopy = timezone;
  if (!_updateTimeMarkerLabelsForDates_timezone__TimeFormatter)
  {
    v7 = objc_opt_new();
    v8 = _updateTimeMarkerLabelsForDates_timezone__TimeFormatter;
    _updateTimeMarkerLabelsForDates_timezone__TimeFormatter = v7;
  }

  v9 = MEMORY[0x277CBEAF8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  preferredLocalizations = [mainBundle preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];
  v13 = [v9 localeWithLocaleIdentifier:firstObject];

  languageCode = [v13 languageCode];
  LODWORD(preferredLocalizations) = [@"zh" isEqualToString:languageCode];

  if (preferredLocalizations)
  {
    v15 = @"J";
  }

  else
  {
    v15 = @"j";
  }

  v16 = [MEMORY[0x277CCA968] dateFormatFromTemplate:v15 options:0 locale:v13];
  [_updateTimeMarkerLabelsForDates_timezone__TimeFormatter setDateFormat:v16];

  v34 = timezoneCopy;
  [_updateTimeMarkerLabelsForDates_timezone__TimeFormatter setTimeZone:timezoneCopy];
  v17 = [datesCopy count];
  timeMarkerLabels = [(NTKRichComplicationRectangularDailyGraphView *)self timeMarkerLabels];
  v19 = [timeMarkerLabels count];

  timeMarkerLabels2 = [(NTKRichComplicationRectangularDailyGraphView *)self timeMarkerLabels];
  v21 = [timeMarkerLabels2 count];

  if (v21)
  {
    v22 = 0;
    v23 = v17 / v19;
    do
    {
      v24 = [datesCopy objectAtIndexedSubscript:v22 * v23];
      v25 = [_updateTimeMarkerLabelsForDates_timezone__TimeFormatter stringFromDate:v24];
      v26 = [v25 uppercaseStringWithLocale:v13];

      languageCode2 = [v13 languageCode];
      v28 = [@"hi" isEqualToString:languageCode2];

      if ((v28 & 1) == 0)
      {
        v29 = [v26 stringByReplacingOccurrencesOfString:@" " withString:&stru_284110E98];

        v26 = v29;
      }

      timeMarkerLabels3 = [(NTKRichComplicationRectangularDailyGraphView *)self timeMarkerLabels];
      v31 = [timeMarkerLabels3 objectAtIndexedSubscript:v22];
      [v31 setText:v26];

      ++v22;
      timeMarkerLabels4 = [(NTKRichComplicationRectangularDailyGraphView *)self timeMarkerLabels];
      v33 = [timeMarkerLabels4 count];
    }

    while (v22 < v33);
  }
}

- (void)_applyPausedUpdate
{
  paused = [(CDRichComplicationView *)self paused];
  titleLabel = [(NTKRichComplicationRectangularDailyGraphView *)self titleLabel];
  textProvider = [titleLabel textProvider];
  [textProvider setPaused:paused];
}

- (void)_handleTemplate:(id)template reason:(int64_t)reason
{
  metadata = [template metadata];
  v5 = [metadata objectForKeyedSubscript:@"NTKDailyGraphRichComplicationMetadataKeyTimeZone"];
  v6 = v5;
  if (v5)
  {
    localTimeZone = v5;
  }

  else
  {
    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  }

  v8 = localTimeZone;

  v9 = [(NTKRichComplicationRectangularDailyGraphView *)self _datesForGraphInTimezone:v8];
  [(NTKRichComplicationRectangularDailyGraphView *)self _updateTimeMarkerLabelsForDates:v9 timezone:v8];

  [(NTKRichComplicationRectangularDailyGraphView *)self loadWithMetadata:metadata];
}

- (CGRect)drawableGraphRect
{
  [(NTKRichComplicationRectangularDailyGraphView *)self graphRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  IsRTL = CLKLayoutIsRTL();
  v12 = -0.5;
  if (IsRTL)
  {
    v12 = 0.5;
  }

  v13 = v4 + v12;
  [(NTKRichComplicationRectangularDailyGraphView *)self timeMarkerPadding];
  v15 = v10 - v14;
  v16 = v13;
  v17 = v6;
  v18 = v8;
  result.size.height = v15;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGRect)graphRect
{
  [(NTKRichComplicationRectangularDailyGraphView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(NTKRichComplicationRectangularDailyGraphView *)self cachedBounds];
  v41.origin.x = v11;
  v41.origin.y = v12;
  v41.size.width = v13;
  v41.size.height = v14;
  v38.origin.x = v4;
  v38.origin.y = v6;
  v38.size.width = v8;
  v38.size.height = v10;
  if (!CGRectEqualToRect(v38, v41))
  {
    [(NTKRichComplicationRectangularDailyGraphView *)self bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v37 = 0.0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    device = [(CDRichComplicationView *)self device];
    ___LayoutConstants_block_invoke_3(device, &v32);

    v30[2] = v34;
    v30[3] = v35;
    v30[4] = v36;
    v31 = v37;
    v30[0] = v32;
    v30[1] = v33;
    [(NTKRichComplicationRectangularDailyGraphView *)self _calculateGraphXBasedOnRect:v30 constants:v16, v18, v20, v22];
    v25 = v24;
    v39.origin.x = v16;
    v39.origin.y = v18;
    v39.size.width = v20;
    v39.size.height = v22;
    [(NTKRichComplicationRectangularDailyGraphView *)self setGraphRect:v25, CGRectGetHeight(v39) - (*(&v35 + 1) + v37), *(&v36 + 1)];
    [(NTKRichComplicationRectangularDailyGraphView *)self setCachedBounds:v16, v18, v20, v22];
  }

  x = self->_graphRect.origin.x;
  y = self->_graphRect.origin.y;
  width = self->_graphRect.size.width;
  height = self->_graphRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)timeMarkerPadding
{
  v10 = 0;
  v9 = 0u;
  v3 = [(CDRichComplicationView *)self device:0];
  ___LayoutConstants_block_invoke_3(v3, &v8);

  timeMarkerLabels = [(NTKRichComplicationRectangularDailyGraphView *)self timeMarkerLabels];
  firstObject = [timeMarkerLabels firstObject];
  [firstObject frame];
  v6 = CGRectGetHeight(v11) - *&v9;

  return v6;
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  [(CLKUIColoringLabel *)self->_titleLabel transitionToMonochromeWithFraction:2 style:fraction];
  filterProvider = [(CDRichComplicationView *)self filterProvider];
  v5 = [filterProvider colorForView:self accented:1];
  accentColor = self->_accentColor;
  self->_accentColor = v5;

  filterProvider2 = [(CDRichComplicationView *)self filterProvider];
  v8 = [filterProvider2 colorForView:self accented:0];
  nonAccentColor = self->_nonAccentColor;
  self->_nonAccentColor = v8;

  v10 = [(UIColor *)self->_nonAccentColor colorWithAlphaComponent:self->_noDataAlpha];
  noDataTextColor = self->_noDataTextColor;
  self->_noDataTextColor = v10;

  v12 = [(UIColor *)self->_nonAccentColor colorWithAlphaComponent:self->_timeLabelAndGridAlpha];
  graphLabelAndGridColor = self->_graphLabelAndGridColor;
  self->_graphLabelAndGridColor = v12;

  timeMarkerLabels = [(NTKRichComplicationRectangularDailyGraphView *)self timeMarkerLabels];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __83__NTKRichComplicationRectangularDailyGraphView_transitionToMonochromeWithFraction___block_invoke;
  v19[3] = &unk_27877ED20;
  v19[4] = self;
  [timeMarkerLabels enumerateObjectsUsingBlock:v19];

  v15 = self->_accentColor;
  dailyLowLabel = [(NTKRichComplicationRectangularDailyGraphView *)self dailyLowLabel];
  [dailyLowLabel setTextColor:v15];

  v17 = self->_accentColor;
  dailyHighLabel = [(NTKRichComplicationRectangularDailyGraphView *)self dailyHighLabel];
  [dailyHighLabel setTextColor:v17];

  [(NTKRichComplicationRectangularDailyGraphView *)self setNeedsDisplay];
}

void __83__NTKRichComplicationRectangularDailyGraphView_transitionToMonochromeWithFraction___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 graphLabelAndGridColor];
  [v3 setTextColor:v4];
}

- (void)updateMonochromeColor
{
  [(CLKUIColoringLabel *)self->_titleLabel updateMonochromeColorWithStyle:2];
  filterProvider = [(CDRichComplicationView *)self filterProvider];
  v4 = [filterProvider colorForView:self accented:1];
  accentColor = self->_accentColor;
  self->_accentColor = v4;

  filterProvider2 = [(CDRichComplicationView *)self filterProvider];
  v7 = [filterProvider2 colorForView:self accented:0];
  nonAccentColor = self->_nonAccentColor;
  self->_nonAccentColor = v7;

  v9 = [(UIColor *)self->_nonAccentColor colorWithAlphaComponent:self->_noDataAlpha];
  noDataTextColor = self->_noDataTextColor;
  self->_noDataTextColor = v9;

  v11 = [(UIColor *)self->_nonAccentColor colorWithAlphaComponent:self->_timeLabelAndGridAlpha];
  graphLabelAndGridColor = self->_graphLabelAndGridColor;
  self->_graphLabelAndGridColor = v11;

  timeMarkerLabels = [(NTKRichComplicationRectangularDailyGraphView *)self timeMarkerLabels];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__NTKRichComplicationRectangularDailyGraphView_updateMonochromeColor__block_invoke;
  v18[3] = &unk_27877ED20;
  v18[4] = self;
  [timeMarkerLabels enumerateObjectsUsingBlock:v18];

  v14 = self->_accentColor;
  dailyLowLabel = [(NTKRichComplicationRectangularDailyGraphView *)self dailyLowLabel];
  [dailyLowLabel setTextColor:v14];

  v16 = self->_accentColor;
  dailyHighLabel = [(NTKRichComplicationRectangularDailyGraphView *)self dailyHighLabel];
  [dailyHighLabel setTextColor:v16];

  [(NTKRichComplicationRectangularDailyGraphView *)self setNeedsDisplay];
}

void __69__NTKRichComplicationRectangularDailyGraphView_updateMonochromeColor__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 graphLabelAndGridColor];
  [v3 setTextColor:v4];
}

- (CGRect)cachedBounds
{
  x = self->_cachedBounds.origin.x;
  y = self->_cachedBounds.origin.y;
  width = self->_cachedBounds.size.width;
  height = self->_cachedBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end