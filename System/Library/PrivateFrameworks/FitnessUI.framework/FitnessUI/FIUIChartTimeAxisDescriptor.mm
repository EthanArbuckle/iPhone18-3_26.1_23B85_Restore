@interface FIUIChartTimeAxisDescriptor
+ (unint64_t)_spacingIntervalFromAxisSpacing:(id)spacing;
- (BOOL)_validateProperties;
- (FIUIChartTimeAxisDescriptor)init;
- (id)_hourMinuteFormatterWithTextStyle:(unint64_t)style;
- (id)_labelAtIndex:(unint64_t)index;
- (id)_labelsForSpacingInterval:(unint64_t)interval withSpacing:(id)spacing textStyle:(unint64_t)style;
- (id)_newSubLabelFromDate:(id)date withTimeInterval:(unint64_t)interval textStyle:(unint64_t)style;
- (id)_startDateFromTimeInterval:(unint64_t)interval;
- (id)_stringFromDate:(id)date withTimeInterval:(unint64_t)interval textStyle:(unint64_t)style forceAMPM:(BOOL)m;
- (id)_subLabelAtIndex:(unint64_t)index;
- (id)_subLabelsForSpacingInterval:(unint64_t)interval withSpacing:(id)spacing textStyle:(unint64_t)style;
- (id)axisLabels;
- (id)axisSubLabels;
- (id)dayFormatter:(unint64_t)formatter;
- (id)hourFormatter:(unint64_t)formatter;
- (id)monthFormatter:(unint64_t)formatter;
- (id)positionForLabelAtIndex:(unint64_t)index;
- (id)positionForSubLabelAtIndex:(unint64_t)index;
- (id)textForLabelAtIndex:(unint64_t)index;
- (id)textForSubLabelAtIndex:(unint64_t)index;
- (id)weekdayFormatter:(unint64_t)formatter;
- (id)yearFormatter:(unint64_t)formatter;
- (int64_t)_hourComponentFromDate:(id)date;
- (unint64_t)numLabels;
- (unint64_t)numSubLabels;
- (void)_clearCache;
- (void)_clearFormatters;
- (void)_generateAxisLabels;
- (void)_generateAxisSubLabels;
- (void)invalidateCaches;
- (void)selectLabel:(BOOL)label atIndex:(unint64_t)index;
- (void)setAxisSpacing:(id)spacing;
- (void)setMaxValue:(id)value;
- (void)setMinValue:(id)value;
- (void)setSubAxisSpacing:(id)spacing;
@end

@implementation FIUIChartTimeAxisDescriptor

- (FIUIChartTimeAxisDescriptor)init
{
  v15.receiver = self;
  v15.super_class = FIUIChartTimeAxisDescriptor;
  v2 = [(FIUIChartTimeAxisDescriptor *)&v15 init];
  v3 = v2;
  if (v2)
  {
    cachedAxisLabels = v2->_cachedAxisLabels;
    v2->_cachedAxisLabels = 0;

    cachedAxisSubLabels = v3->_cachedAxisSubLabels;
    v3->_cachedAxisSubLabels = 0;

    array = [MEMORY[0x1E695DF70] array];
    cachedAxisLabelColors = v3->_cachedAxisLabelColors;
    v3->_cachedAxisLabelColors = array;

    v3->_hideClippedLabels = 0;
    v8 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    labelFont = v3->_labelFont;
    v3->_labelFont = v8;

    v10 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    subLabelFont = v3->_subLabelFont;
    v3->_subLabelFont = v10;

    v12 = objc_alloc_init(FIUIChartDateAnchorRule);
    anchorRule = v3->_anchorRule;
    v3->_anchorRule = v12;

    [(FIUIChartDateAnchorRule *)v3->_anchorRule setRoundingValue:3];
    [(FIUIChartDateAnchorRule *)v3->_anchorRule setCalendarUnit:32];
    [(FIUIChartTimeAxisDescriptor *)v3 setTextStyle:4];
    [(FIUIChartTimeAxisDescriptor *)v3 setSubTextStyle:4];
    v3->_timeInterval = 6;
    v3->_subTimeInterval = 6;
  }

  return v3;
}

- (void)setAxisSpacing:(id)spacing
{
  objc_storeStrong(&self->_axisSpacing, spacing);
  spacingCopy = spacing;
  cachedAxisLabels = self->_cachedAxisLabels;
  self->_cachedAxisLabels = 0;

  [(NSMutableArray *)self->_cachedAxisLabelColors removeAllObjects];
}

- (void)setSubAxisSpacing:(id)spacing
{
  objc_storeStrong(&self->_subAxisSpacing, spacing);
  spacingCopy = spacing;
  cachedAxisSubLabels = self->_cachedAxisSubLabels;
  self->_cachedAxisSubLabels = 0;
}

- (id)_hourMinuteFormatterWithTextStyle:(unint64_t)style
{
  hourMinuteFormatters = self->_hourMinuteFormatters;
  if (!hourMinuteFormatters)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_hourMinuteFormatters;
    self->_hourMinuteFormatters = dictionary;

    hourMinuteFormatters = self->_hourMinuteFormatters;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:style];
  v9 = [(NSMutableDictionary *)hourMinuteFormatters objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v9 setDateStyle:0];
    if (style <= 2)
    {
      if (style >= 2)
      {
        if (style == 2)
        {
          [v9 setTimeStyle:1];
          if ((_FIUICPTimeFormatIs24HourMode() & 1) == 0)
          {
            currentLocale = [MEMORY[0x1E695DF58] currentLocale];
            v19[0] = 0;
            v19[1] = 0;
            v18[0] = 0;
            v18[1] = 0;
            v16 = GetFormatAndHourFieldRangesFor_ha(currentLocale, v19, v18);
            if (v19[0] >= v18[0])
            {
              v17 = @"ah:mm";
            }

            else
            {
              v17 = @"h:mma";
            }

            [v9 setDateFormat:v17];
          }
        }

        goto LABEL_12;
      }
    }

    else if (style - 3 >= 2)
    {
      if (style == 5)
      {
        v10 = v9;
        v11 = 2;
      }

      else
      {
        if (style != 6)
        {
LABEL_12:
          v12 = self->_hourMinuteFormatters;
          v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:style];
          [(NSMutableDictionary *)v12 setObject:v9 forKeyedSubscript:v13];

          goto LABEL_13;
        }

        v10 = v9;
        v11 = 3;
      }

LABEL_11:
      [v10 setTimeStyle:v11];
      goto LABEL_12;
    }

    v10 = v9;
    v11 = 1;
    goto LABEL_11;
  }

LABEL_13:

  return v9;
}

- (id)hourFormatter:(unint64_t)formatter
{
  hourFormatters = self->_hourFormatters;
  if (!hourFormatters)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_hourFormatters;
    self->_hourFormatters = dictionary;

    hourFormatters = self->_hourFormatters;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:formatter];
  v9 = [(NSMutableDictionary *)hourFormatters objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [v9 setLocale:currentLocale];

    v11 = objc_alloc_init(MEMORY[0x1E696AB78]);
    locale = [v9 locale];
    [v11 setLocale:locale];

    [v11 setTimeStyle:1];
    alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
    v14 = [alphanumericCharacterSet mutableCopy];

    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    [v14 formUnionWithCharacterSet:whitespaceCharacterSet];

    date = [MEMORY[0x1E695DF00] date];
    v17 = [v11 stringFromDate:date];
    v18 = [v17 stringByTrimmingCharactersInSet:v14];

    if ([v18 length])
    {
      v19 = [v18 substringToIndex:1];
    }

    else
    {
      v19 = &stru_1F5F88F90;
    }

    v20 = _FIUICPTimeFormatIs24HourMode();
    v21 = @"h";
    if (v20 && formatter <= 7)
    {
      v21 = off_1E878C9D8[formatter];
    }

    if (formatter != 1)
    {
      if (formatter)
      {
        if ((formatter & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
          v32[0] = 0;
          v32[1] = 0;
          v31[0] = 0;
          v31[1] = 0;
          v23 = GetFormatAndHourFieldRangesFor_ha(currentLocale2, v32, v31);
          v24 = @"ah";
          if (formatter == 3)
          {
            v24 = @"a h";
          }

          v25 = @"h a";
          if (formatter != 3)
          {
            v25 = @"ha";
          }

          if (v32[0] >= v31[0])
          {
            v26 = v24;
          }

          else
          {
            v26 = v25;
          }

          v27 = v9;
        }

        else
        {
          if (formatter == 6)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@mm a", v21, v19];
          }

          else
          {
            if (formatter != 5 && formatter != 4)
            {
              goto LABEL_30;
            }

            [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@mm", v21, v19];
          }
          currentLocale2 = ;
          v27 = v9;
          v26 = currentLocale2;
        }

        [v27 setDateFormat:v26];

LABEL_30:
        v28 = self->_hourFormatters;
        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:formatter];
        [(NSMutableDictionary *)v28 setObject:v9 forKeyedSubscript:v29];

        goto LABEL_31;
      }

      v21 = @"a";
    }

    [v9 setDateFormat:v21];
    goto LABEL_30;
  }

LABEL_31:

  return v9;
}

- (id)dayFormatter:(unint64_t)formatter
{
  dayFormatters = self->_dayFormatters;
  if (!dayFormatters)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_dayFormatters;
    self->_dayFormatters = dictionary;

    dayFormatters = self->_dayFormatters;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:formatter];
  v9 = [(NSMutableDictionary *)dayFormatters objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [v9 setLocale:currentLocale];

    if (formatter <= 6 && ((1 << formatter) & 0x73) != 0)
    {
      [v9 setDateFormat:@"d"];
    }

    v11 = self->_dayFormatters;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:formatter];
    [(NSMutableDictionary *)v11 setObject:v9 forKeyedSubscript:v12];
  }

  return v9;
}

- (id)weekdayFormatter:(unint64_t)formatter
{
  weekdayFormatters = self->_weekdayFormatters;
  if (!weekdayFormatters)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_weekdayFormatters;
    self->_weekdayFormatters = dictionary;

    weekdayFormatters = self->_weekdayFormatters;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:formatter];
  v9 = [(NSMutableDictionary *)weekdayFormatters objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [v9 setLocale:currentLocale];

    if (formatter <= 6 && ((0x73u >> formatter) & 1) != 0)
    {
      [v9 setDateFormat:off_1E878CA18[formatter]];
    }

    v11 = self->_weekdayFormatters;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:formatter];
    [(NSMutableDictionary *)v11 setObject:v9 forKeyedSubscript:v12];
  }

  return v9;
}

- (id)monthFormatter:(unint64_t)formatter
{
  monthFormatters = self->_monthFormatters;
  if (!monthFormatters)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_monthFormatters;
    self->_monthFormatters = dictionary;

    monthFormatters = self->_monthFormatters;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:formatter];
  v9 = [(NSMutableDictionary *)monthFormatters objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [v9 setLocale:currentLocale];

    if (formatter <= 6 && ((0x73u >> formatter) & 1) != 0)
    {
      [v9 setDateFormat:off_1E878CA50[formatter]];
    }

    v11 = self->_monthFormatters;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:formatter];
    [(NSMutableDictionary *)v11 setObject:v9 forKeyedSubscript:v12];
  }

  return v9;
}

- (id)yearFormatter:(unint64_t)formatter
{
  yearFormatters = self->_yearFormatters;
  if (!yearFormatters)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = self->_yearFormatters;
    self->_yearFormatters = dictionary;

    yearFormatters = self->_yearFormatters;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:formatter];
  v9 = [(NSMutableDictionary *)yearFormatters objectForKeyedSubscript:v8];

  if (!v9)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AB78]);
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [v9 setLocale:currentLocale];

    if (formatter <= 6 && ((1 << formatter) & 0x73) != 0)
    {
      [v9 setDateFormat:@"YYYY"];
    }

    v11 = self->_yearFormatters;
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:formatter];
    [(NSMutableDictionary *)v11 setObject:v9 forKeyedSubscript:v12];
  }

  return v9;
}

- (void)setMinValue:(id)value
{
  valueCopy = value;
  if ([self->_minValue compare:valueCopy])
  {
    [(FIUIChartTimeAxisDescriptor *)self _clearCache];
  }

  minValue = self->_minValue;
  self->_minValue = valueCopy;
}

- (void)setMaxValue:(id)value
{
  valueCopy = value;
  if ([self->_maxValue compare:valueCopy])
  {
    [(FIUIChartTimeAxisDescriptor *)self _clearCache];
  }

  maxValue = self->_maxValue;
  self->_maxValue = valueCopy;
}

- (void)invalidateCaches
{
  cachedAxisLabels = self->_cachedAxisLabels;
  self->_cachedAxisLabels = 0;

  cachedAxisSubLabels = self->_cachedAxisSubLabels;
  self->_cachedAxisSubLabels = 0;

  [(FIUIChartTimeAxisDescriptor *)self _clearFormatters];
}

- (void)_clearCache
{
  cachedAxisLabels = self->_cachedAxisLabels;
  self->_cachedAxisLabels = 0;

  cachedAxisSubLabels = self->_cachedAxisSubLabels;
  self->_cachedAxisSubLabels = 0;

  cachedAxisLabelColors = self->_cachedAxisLabelColors;

  [(NSMutableArray *)cachedAxisLabelColors removeAllObjects];
}

- (void)_clearFormatters
{
  hourFormatters = self->_hourFormatters;
  self->_hourFormatters = 0;

  dayFormatters = self->_dayFormatters;
  self->_dayFormatters = 0;

  weekdayFormatters = self->_weekdayFormatters;
  self->_weekdayFormatters = 0;

  monthFormatters = self->_monthFormatters;
  self->_monthFormatters = 0;

  yearFormatters = self->_yearFormatters;
  self->_yearFormatters = 0;
}

- (void)_generateAxisLabels
{
  if ([(FIUIChartTimeAxisDescriptor *)self _validateProperties])
  {
    timeInterval = self->_timeInterval;
    if (timeInterval == 6)
    {
      timeInterval = [objc_opt_class() _spacingIntervalFromAxisSpacing:self->_axisSpacing];
    }

    v4 = [(FIUIChartTimeAxisDescriptor *)self _labelsForSpacingInterval:timeInterval withSpacing:self->_axisSpacing textStyle:self->_textStyle];
  }

  else
  {
    v4 = 0;
  }

  self->_cachedAxisLabels = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)_generateAxisSubLabels
{
  if ([(FIUIChartTimeAxisDescriptor *)self _validateProperties])
  {
    subTimeInterval = self->_subTimeInterval;
    if (subTimeInterval == 6)
    {
      subTimeInterval = [objc_opt_class() _spacingIntervalFromAxisSpacing:self->_subAxisSpacing];
    }

    v4 = [(FIUIChartTimeAxisDescriptor *)self _subLabelsForSpacingInterval:subTimeInterval withSpacing:self->_subAxisSpacing textStyle:self->_subTextStyle];
  }

  else
  {
    v4 = 0;
  }

  self->_cachedAxisSubLabels = v4;

  MEMORY[0x1EEE66BB8]();
}

- (BOOL)_validateProperties
{
  minValue = [(FIUIChartTimeAxisDescriptor *)self minValue];
  maxValue = [(FIUIChartTimeAxisDescriptor *)self maxValue];
  v5 = [minValue compare:maxValue];

  if (v5 == 1)
  {
    goto LABEL_4;
  }

  axisSpacing = self->_axisSpacing;
  if (axisSpacing)
  {
    if (_ZeroDateComponents(axisSpacing))
    {
LABEL_4:
      LOBYTE(axisSpacing) = 0;
      return axisSpacing;
    }

    subAxisSpacing = self->_subAxisSpacing;
    if (subAxisSpacing)
    {
      LOBYTE(axisSpacing) = !_ZeroDateComponents(subAxisSpacing);
    }

    else
    {
      LOBYTE(axisSpacing) = 1;
    }
  }

  return axisSpacing;
}

- (id)_labelsForSpacingInterval:(unint64_t)interval withSpacing:(id)spacing textStyle:(unint64_t)style
{
  spacingCopy = spacing;
  intervalCopy = interval;
  v7 = [(FIUIChartTimeAxisDescriptor *)self _startDateFromTimeInterval:interval];
  maxValue = [(FIUIChartTimeAxisDescriptor *)self maxValue];
  v9 = maxValue;
  array = 0;
  if (v7 && maxValue)
  {
    array = [MEMORY[0x1E695DF70] array];
    date = [MEMORY[0x1E695DF00] date];
    v24 = v7;
    v10 = v7;
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    forceAMPMOnFirstLabel = self->_forceAMPMOnFirstLabel;
    v13 = [currentCalendar component:32 fromDate:v10];
    if (([v10 hk_isAfterDate:v9] & 1) == 0)
    {
      v14 = v13 < 12;
      do
      {
        v15 = v10;
        v10 = [currentCalendar dateByAddingComponents:spacingCopy toDate:v10 options:{0, v24}];
        v16 = [currentCalendar component:32 fromDate:v10] < 12;
        v17 = objc_alloc_init(FIUIChartAxisLabel);
        v18 = forceAMPMOnFirstLabel || self->_useMinMaxLabelPlacement;
        v19 = [(FIUIChartTimeAxisDescriptor *)self _stringFromDate:v15 withTimeInterval:intervalCopy textStyle:style forceAMPM:v18];
        [(FIUIChartAxisLabel *)v17 setText:v19];
        [(FIUIChartAxisLabel *)v17 setLocation:v15];
        [(FIUIChartAxisLabel *)v17 setLabelColor:self->_unhighlightedLabelColor];
        if (self->_useMinMaxLabelPlacement && [v10 hk_isAfterDate:v9])
        {
          [(FIUIChartAxisLabel *)v17 setUseReversePlacement:1];
        }

        v20 = [v10 hk_isAfterDate:date];
        p_unhighlightedLabelColor = &self->_unhighlightedLabelColor;
        if (v20)
        {
          v22 = [v15 hk_isBeforeDate:date];
          p_unhighlightedLabelColor = &self->_unhighlightedLabelColor;
          if (v22)
          {
            [(FIUIChartAxisLabel *)v17 setLabelColor:self->_highlightedLabelColor];
            p_unhighlightedLabelColor = &self->_highlightedLabelColor;
          }
        }

        [(NSMutableArray *)self->_cachedAxisLabelColors addObject:*p_unhighlightedLabelColor];
        [array addObject:v17];
        forceAMPMOnFirstLabel = v14 != v16 && self->_forceAMPMOnFirstLabel;

        v14 = v16;
      }

      while (![v10 hk_isAfterDate:v9]);
    }

    v7 = v24;
  }

  return array;
}

- (int64_t)_hourComponentFromDate:(id)date
{
  v3 = MEMORY[0x1E695DEE8];
  dateCopy = date;
  currentCalendar = [v3 currentCalendar];
  v6 = [currentCalendar components:32 fromDate:dateCopy];

  hour = [v6 hour];
  return hour;
}

- (id)_newSubLabelFromDate:(id)date withTimeInterval:(unint64_t)interval textStyle:(unint64_t)style
{
  dateCopy = date;
  v9 = objc_alloc_init(FIUIChartAxisLabel);
  v10 = [(FIUIChartTimeAxisDescriptor *)self _stringFromDate:dateCopy withTimeInterval:interval textStyle:style forceAMPM:0];
  v11 = v10;
  if (self->_subAxisCapitalize)
  {
    localizedUppercaseString = [v10 localizedUppercaseString];

    v11 = localizedUppercaseString;
  }

  [(FIUIChartAxisLabel *)v9 setText:v11];
  [(FIUIChartAxisLabel *)v9 setLocation:dateCopy];
  [(FIUIChartAxisLabel *)v9 setLabelColor:self->_unhighlightedSubLabelColor];

  return v9;
}

- (id)_subLabelsForSpacingInterval:(unint64_t)interval withSpacing:(id)spacing textStyle:(unint64_t)style
{
  spacingCopy = spacing;
  v8 = [(FIUIChartTimeAxisDescriptor *)self _startDateFromTimeInterval:interval];
  maxValue = [(FIUIChartTimeAxisDescriptor *)self maxValue];
  v10 = maxValue;
  array = 0;
  if (v8 && maxValue)
  {
    array = [MEMORY[0x1E695DF70] array];
    date = [MEMORY[0x1E695DF00] date];
    v19 = v8;
    v13 = v8;
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    if (([v13 hk_isAfterDate:v10] & 1) == 0)
    {
      while (1)
      {
        v15 = v13;
        v13 = [currentCalendar dateByAddingComponents:spacingCopy toDate:v13 options:{0, v19}];
        if (!self->_generateSubAxisDescriptorOnlyForNoonMidnight)
        {
          break;
        }

        v16 = [(FIUIChartTimeAxisDescriptor *)self _hourComponentFromDate:v15];
        if (v16 > 0x18 || ((1 << v16) & 0x1001001) == 0 || (_FIUICPTimeFormatIs24HourMode() & 1) != 0)
        {
          goto LABEL_15;
        }

        v17 = [(FIUIChartTimeAxisDescriptor *)self _newSubLabelFromDate:v15 withTimeInterval:interval textStyle:style];
        if ([v13 hk_isAfterDate:date] && (objc_msgSend(v15, "hk_isBeforeDate:", date) & 1) != 0)
        {
          goto LABEL_13;
        }

LABEL_14:
        [array addObject:v17];

LABEL_15:
        if ([v13 hk_isAfterDate:v10])
        {
          goto LABEL_16;
        }
      }

      v17 = [(FIUIChartTimeAxisDescriptor *)self _newSubLabelFromDate:v15 withTimeInterval:interval textStyle:style];
      if (![v13 hk_isAfterDate:date] || !objc_msgSend(v15, "hk_isBeforeDate:", date))
      {
        goto LABEL_14;
      }

LABEL_13:
      [v17 setLabelColor:self->_highlightedSubLabelColor];
      goto LABEL_14;
    }

LABEL_16:

    v8 = v19;
  }

  return array;
}

- (id)_startDateFromTimeInterval:(unint64_t)interval
{
  minValue = [(FIUIChartTimeAxisDescriptor *)self minValue];

  if (minValue)
  {
    anchorRule = self->_anchorRule;
    minValue2 = [(FIUIChartTimeAxisDescriptor *)self minValue];
    v7 = [(FIUIChartDateAnchorRule *)anchorRule generateAnchorFromDate:minValue2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_stringFromDate:(id)date withTimeInterval:(unint64_t)interval textStyle:(unint64_t)style forceAMPM:(BOOL)m
{
  dateCopy = date;
  v10 = 0;
  if (interval > 2)
  {
    switch(interval)
    {
      case 3uLL:
        v11 = [(FIUIChartTimeAxisDescriptor *)self dayFormatter:style];
        break;
      case 4uLL:
        v11 = [(FIUIChartTimeAxisDescriptor *)self monthFormatter:style];
        break;
      case 5uLL:
        v11 = [(FIUIChartTimeAxisDescriptor *)self yearFormatter:style];
        break;
      default:
        goto LABEL_24;
    }

    goto LABEL_22;
  }

  if (!interval)
  {
    v11 = [(FIUIChartTimeAxisDescriptor *)self _hourMinuteFormatterWithTextStyle:style];
LABEL_22:
    v14 = v11;
    v15 = [v11 stringFromDate:dateCopy];
    goto LABEL_23;
  }

  if (interval != 1)
  {
    if (interval != 2)
    {
      goto LABEL_24;
    }

    v11 = [(FIUIChartTimeAxisDescriptor *)self weekdayFormatter:style];
    goto LABEL_22;
  }

  if (style != 7)
  {
    [(FIUIChartTimeAxisDescriptor *)self _hourComponentFromDate:dateCopy];
    if (style & 0xFFFFFFFFFFFFFFFELL) == 2 && (_FIUICPTimeFormatIs24HourMode())
    {
      selfCopy3 = self;
      styleCopy = 1;
    }

    else
    {
      selfCopy3 = self;
      styleCopy = style;
    }

    goto LABEL_21;
  }

  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  v13 = [currentCalendar component:32 fromDate:dateCopy];

  if (v13 != 12)
  {
    selfCopy3 = self;
    styleCopy = 4;
LABEL_21:
    v11 = [(FIUIChartTimeAxisDescriptor *)selfCopy3 hourFormatter:styleCopy];
    goto LABEL_22;
  }

  v14 = FIUIBundle();
  v15 = [v14 localizedStringForKey:@"NOON" value:&stru_1F5F88F90 table:@"Localizable"];
LABEL_23:
  v10 = v15;

LABEL_24:

  return v10;
}

+ (unint64_t)_spacingIntervalFromAxisSpacing:(id)spacing
{
  spacingCopy = spacing;
  v4 = [spacingCopy day];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  weekOfYear = [spacingCopy weekOfYear];
  month = [spacingCopy month];
  if (month == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = month;
  }

  year = [spacingCopy year];

  if ((year - 1) <= 0x7FFFFFFFFFFFFFFDLL && !v8)
  {
    return 5;
  }

  v11 = (weekOfYear - 1) >= 0x7FFFFFFFFFFFFFFELL && v5 <= 0;
  v12 = 3;
  if (v11)
  {
    v12 = 1;
  }

  if ((v5 - 1) >= 6)
  {
    v13 = v12;
  }

  else
  {
    v13 = 2;
  }

  if (v8 <= 0)
  {
    return v13;
  }

  else
  {
    return 4;
  }
}

- (id)_labelAtIndex:(unint64_t)index
{
  axisLabels = [(FIUIChartTimeAxisDescriptor *)self axisLabels];
  v5 = [axisLabels objectAtIndex:index];

  return v5;
}

- (id)axisLabels
{
  cachedAxisLabels = self->_cachedAxisLabels;
  if (!cachedAxisLabels)
  {
    [(FIUIChartTimeAxisDescriptor *)self _generateAxisLabels];
    cachedAxisLabels = self->_cachedAxisLabels;
  }

  return cachedAxisLabels;
}

- (unint64_t)numLabels
{
  axisLabels = [(FIUIChartTimeAxisDescriptor *)self axisLabels];
  v3 = [axisLabels count];

  return v3;
}

- (id)positionForLabelAtIndex:(unint64_t)index
{
  v3 = [(FIUIChartTimeAxisDescriptor *)self _labelAtIndex:index];
  location = [v3 location];

  return location;
}

- (id)textForLabelAtIndex:(unint64_t)index
{
  v3 = [(FIUIChartTimeAxisDescriptor *)self _labelAtIndex:index];
  text = [v3 text];

  return text;
}

- (void)selectLabel:(BOOL)label atIndex:(unint64_t)index
{
  labelCopy = label;
  if ([(FIUIChartTimeAxisDescriptor *)self numLabels]<= index)
  {
    v7 = 0;
  }

  else
  {
    v7 = [(FIUIChartTimeAxisDescriptor *)self _labelAtIndex:index];
  }

  v10 = v7;
  if (labelCopy)
  {
    [v7 setLabelColor:self->_selectedLabelColor];
  }

  else
  {
    if ([(NSMutableArray *)self->_cachedAxisLabelColors count]<= index)
    {
      v8 = self->_unhighlightedLabelColor;
    }

    else
    {
      v8 = [(NSMutableArray *)self->_cachedAxisLabelColors objectAtIndexedSubscript:index];
    }

    v9 = v8;
    [v10 setLabelColor:v8];
  }
}

- (id)_subLabelAtIndex:(unint64_t)index
{
  if (self->_subAxisSpacing)
  {
    axisSubLabels = [(FIUIChartTimeAxisDescriptor *)self axisSubLabels];
    v5 = [axisSubLabels objectAtIndex:index];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)axisSubLabels
{
  if (self->_subAxisSpacing)
  {
    cachedAxisSubLabels = self->_cachedAxisSubLabels;
    if (!cachedAxisSubLabels)
    {
      [(FIUIChartTimeAxisDescriptor *)self _generateAxisSubLabels];
      cachedAxisSubLabels = self->_cachedAxisSubLabels;
    }

    v5 = cachedAxisSubLabels;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)numSubLabels
{
  if (!self->_subAxisSpacing)
  {
    return 0;
  }

  axisSubLabels = [(FIUIChartTimeAxisDescriptor *)self axisSubLabels];
  v3 = [axisSubLabels count];

  return v3;
}

- (id)positionForSubLabelAtIndex:(unint64_t)index
{
  if (self->_subAxisSpacing)
  {
    v3 = [(FIUIChartTimeAxisDescriptor *)self _subLabelAtIndex:index];
    location = [v3 location];
  }

  else
  {
    location = 0;
  }

  return location;
}

- (id)textForSubLabelAtIndex:(unint64_t)index
{
  if (self->_subAxisSpacing)
  {
    v3 = [(FIUIChartTimeAxisDescriptor *)self _subLabelAtIndex:index];
    text = [v3 text];
  }

  else
  {
    text = 0;
  }

  return text;
}

@end